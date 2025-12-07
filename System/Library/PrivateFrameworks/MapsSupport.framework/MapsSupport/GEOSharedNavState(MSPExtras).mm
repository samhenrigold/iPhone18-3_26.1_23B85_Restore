@interface GEOSharedNavState(MSPExtras)
- (char)numberOfIntermediateStopsRemaining;
- (char)stripForSendingArrival;
- (id)composedRoute;
- (id)destinationName;
- (id)destinationWaypointInfo;
- (id)destinationWaypointMapItem;
- (id)equalityTest;
- (id)etaInfo;
- (id)finalETAInfo;
- (id)mspDescription;
- (id)nextWaypointInfo;
- (id)senderName;
- (id)senderNameOrHandle;
- (uint64_t)stripForSendingResuming;
- (uint64_t)stripForSendingStoppedSharing;
- (uint64_t)stripForSendingUpdatedETA;
- (uint64_t)stripForSendingUpdatedRoute;
- (uint64_t)stripForSendingUpdatedTraffic;
- (uint64_t)stripForSendingUpdatedWaypoints;
- (uint64_t)updateFromTraffic:()MSPExtras;
- (uint64_t)updateWaypointsFromComposedRoute:()MSPExtras;
- (unint64_t)_polylineCoordinateForRoute:()MSPExtras;
- (void)_createPlaceholderETAInfosForWaypoints:()MSPExtras;
- (void)_msp_logWithCategory:()MSPExtras type:object:prefix:;
- (void)isNavigatingToIntermediateStop;
- (void)merge:()MSPExtras;
- (void)setComposedRouteFromState:()MSPExtras;
- (void)stripArrivedOrClosedTrip;
- (void)truncatePointDataForPrivacy;
- (void)updateElevationModelToLegacyEGM96;
- (void)updateRouteInfoFromComposedRoute:()MSPExtras;
@end

@implementation GEOSharedNavState(MSPExtras)

- (id)destinationName
{
  destinationWaypointInfo = [self destinationWaypointInfo];
  name = [destinationWaypointInfo name];

  return name;
}

- (id)destinationWaypointInfo
{
  if ([self waypointInfosCount])
  {
    waypointInfos = [self waypointInfos];
    lastObject = [waypointInfos lastObject];

    mapItemStorage = [lastObject mapItemStorage];
    if (mapItemStorage)
    {
      destinationInfo = mapItemStorage;
      goto LABEL_8;
    }

    chargingStationInfo = [lastObject chargingStationInfo];

    if (chargingStationInfo)
    {
      goto LABEL_9;
    }
  }

  lastObject = [self destinationInfo];

  if (!lastObject)
  {
    goto LABEL_9;
  }

  lastObject = objc_alloc_init(MEMORY[0x277D0ED38]);
  destinationInfo = [self destinationInfo];
  [lastObject setMapItemStorage:destinationInfo];
LABEL_8:

LABEL_9:

  return lastObject;
}

- (id)destinationWaypointMapItem
{
  destinationWaypointInfo = [self destinationWaypointInfo];
  mapItemStorage = [destinationWaypointInfo mapItemStorage];

  return mapItemStorage;
}

- (id)senderName
{
  senderInfo = [self senderInfo];
  if ([senderInfo hasLocalContactIdentifier])
  {

LABEL_4:
    senderInfo2 = [self senderInfo];
    localName = [senderInfo2 localName];

    goto LABEL_6;
  }

  senderInfo3 = [self senderInfo];
  hasFromDisplayName = [senderInfo3 hasFromDisplayName];

  if (hasFromDisplayName)
  {
    goto LABEL_4;
  }

  localName = 0;
LABEL_6:

  return localName;
}

- (id)senderNameOrHandle
{
  senderInfo = [self senderInfo];
  localName = [senderInfo localName];

  return localName;
}

- (void)merge:()MSPExtras
{
  v4 = a3;
  hasDestinationInfo = [v4 hasDestinationInfo];
  if (hasDestinationInfo)
  {
    v6 = MSPGetSharedTripLog(hasDestinationInfo);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "Migrating legacy destinationInfo to modern waypointInfos", buf, 2u);
    }

    [self clearWaypointInfos];
    v7 = objc_alloc_init(MEMORY[0x277D0ED38]);
    destinationInfo = [v4 destinationInfo];
    [v7 setMapItemStorage:destinationInfo];

    [self addWaypointInfo:v7];
    [self setDestinationInfo:0];
  }

  if (([v4 hasLastLocation] & 1) == 0 && objc_msgSend(v4, "etaInfosCount") == 1)
  {
    v9 = MSPGetSharedTripLog(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "Migrating legacy location in etaInfo to modern lastLocation", v44, 2u);
    }

    etaInfos = [v4 etaInfos];
    lastObject = [etaInfos lastObject];

    if ([lastObject hasLatitude] && objc_msgSend(lastObject, "hasLongitude"))
    {
      v12 = objc_alloc_init(MEMORY[0x277D0ED18]);
      v13 = objc_alloc_init(MEMORY[0x277D0EB58]);
      [lastObject latitude];
      [v13 setLat:?];
      [lastObject longitude];
      [v13 setLng:?];
      [v12 setCoordinate:v13];
      [v4 setLastLocation:v12];
      [lastObject setHasLatitude:0];
      [lastObject setHasLongitude:0];
    }
  }

  composedRouteIfExists = [self composedRouteIfExists];

  if (composedRouteIfExists)
  {
    hasRouteInfo = [v4 hasRouteInfo];
    if (hasRouteInfo)
    {
      v16 = MSPGetSharedTripLog(hasRouteInfo);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 0;
        v17 = "Clearing generated composedRoute because incoming state has routeInfo";
        v18 = &v43;
LABEL_21:
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if ([v4 waypointInfosCount])
    {
      waypointInfosCount = [v4 waypointInfosCount];
      waypointInfosCount2 = [self waypointInfosCount];
      if (waypointInfosCount != waypointInfosCount2)
      {
        v16 = MSPGetSharedTripLog(waypointInfosCount2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42) = 0;
          v17 = "Clearing generated composedRoute because incoming waypoint count differs from ours";
          v18 = &v42;
          goto LABEL_21;
        }

LABEL_22:

        [self setComposedRoute:0];
      }
    }
  }

  if (![v4 hasRouteInfo])
  {
    goto LABEL_31;
  }

  hasRouteInfo2 = [self hasRouteInfo];
  routeInfo = [v4 routeInfo];
  routeInfo6 = routeInfo;
  if (hasRouteInfo2)
  {
    if ([routeInfo coordinatesCount])
    {
    }

    else
    {
      routeInfo2 = [v4 routeInfo];
      routingPathLegsCount = [routeInfo2 routingPathLegsCount];

      if (!routingPathLegsCount)
      {
        routeInfo3 = [self routeInfo];
        routeInfo4 = [v4 routeInfo];
        trafficColors = [routeInfo4 trafficColors];
        routeInfo5 = [v4 routeInfo];
        [routeInfo3 setTrafficColors:trafficColors count:{objc_msgSend(routeInfo5, "trafficColorsCount")}];

        routeInfo6 = [self routeInfo];
        routeInfo7 = [v4 routeInfo];
        trafficColorOffsets = [routeInfo7 trafficColorOffsets];
        routeInfo8 = [v4 routeInfo];
        [routeInfo6 setTrafficColorOffsets:trafficColorOffsets count:{objc_msgSend(routeInfo8, "trafficColorOffsetsCount")}];

        goto LABEL_30;
      }
    }

    routeInfo6 = [v4 routeInfo];
  }

  [self setRouteInfo:routeInfo6];
LABEL_30:

LABEL_31:
  if ([v4 etaInfosCount])
  {
    etaInfos2 = [v4 etaInfos];
    v27 = [etaInfos2 mutableCopy];
    [self setEtaInfos:v27];
  }

  if ([v4 hasSenderInfo])
  {
    senderInfo = [self senderInfo];

    if (senderInfo)
    {
      senderInfo2 = [self senderInfo];
      senderInfo3 = [v4 senderInfo];
      [senderInfo2 merge:senderInfo3];
    }

    else
    {
      senderInfo2 = [v4 senderInfo];
      [self setSenderInfo:senderInfo2];
    }
  }

  if ([v4 hasArrived])
  {
    [self setArrived:{objc_msgSend(v4, "arrived")}];
  }

  if ([v4 hasArrivedTimestamp])
  {
    [v4 arrivedTimestamp];
    [self setArrivedTimestamp:?];
  }

  if ([v4 hasClosed])
  {
    [self setClosed:{objc_msgSend(v4, "closed")}];
  }

  if ([v4 hasClosedTimestamp])
  {
    [v4 closedTimestamp];
    [self setClosedTimestamp:?];
  }

  if ([v4 hasGroupIdentifier])
  {
    groupIdentifier = [v4 groupIdentifier];
    [self setGroupIdentifier:groupIdentifier];
  }

  if ([v4 hasReferenceFrame])
  {
    [self setReferenceFrame:{objc_msgSend(v4, "referenceFrame")}];
  }

  if ([v4 hasMuted])
  {
    [self setMuted:{objc_msgSend(v4, "muted")}];
  }

  if ([v4 hasUpdatedTimestamp])
  {
    [v4 updatedTimestamp];
    [self setUpdatedTimestamp:?];
  }

  if ([v4 hasTransportType])
  {
    [self setTransportType:{objc_msgSend(v4, "transportType")}];
  }

  if ([v4 waypointInfosCount])
  {
    waypointInfos = [v4 waypointInfos];
    v33 = [waypointInfos mutableCopy];
    [self setWaypointInfos:v33];
  }

  if ([v4 hasLastLocation])
  {
    lastLocation = [v4 lastLocation];
    [self setLastLocation:lastLocation];
  }

  if ([v4 hasCurrentWaypointIndex])
  {
    [self setCurrentWaypointIndex:{objc_msgSend(v4, "currentWaypointIndex")}];
  }

  if ([v4 hasResumed])
  {
    [self setResumed:{objc_msgSend(v4, "resumed")}];
  }

  if ([v4 hasClosureReason])
  {
    [self setClosureReason:{objc_msgSend(v4, "closureReason")}];
  }
}

- (id)mspDescription
{
  v30 = MEMORY[0x277CCACA8];
  groupIdentifier = [self groupIdentifier];
  v2 = MEMORY[0x277CBEAA8];
  [self updatedTimestamp];
  v28 = [v2 dateWithTimeIntervalSinceReferenceDate:?];
  v3 = MEMORY[0x277CBEAA8];
  [self localUpdatedTimestamp];
  v34 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  if ([self closed])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v33 = v4;
  closureReason = [self closureReason];
  senderInfo = [self senderInfo];
  localName = [senderInfo localName];
  destinationName = [self destinationName];
  waypointInfosCount = [self waypointInfosCount];
  currentWaypointIndex = [self currentWaypointIndex];
  if ([self arrived])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v21 = v5;
  lastLocation = [self lastLocation];
  etaInfos = [self etaInfos];
  v7 = [etaInfos valueForKeyPath:@"mspDescription"];
  v8 = MEMORY[0x277CCABB0];
  routeInfo = [self routeInfo];
  v9 = [v8 numberWithUnsignedInteger:{objc_msgSend(routeInfo, "coordinatesCount")}];
  v10 = MEMORY[0x277CCABB0];
  routeInfo2 = [self routeInfo];
  v11 = [v10 numberWithUnsignedInteger:{objc_msgSend(routeInfo2, "routingPathLegsCount")}];
  v12 = MEMORY[0x277CCABB0];
  routeInfo3 = [self routeInfo];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(routeInfo3, "trafficColorsCount")}];
  if ([self muted])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = v15;
  if ([self resumed])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [v30 stringWithFormat:@"<%p groupID %@, last updated %@, local updated %@, closed %@ (reason: %lu), localName %@, destination %@ (%lu waypoints), current waypoint: %lu, reached %@, location %@, eta %@, (coords %@pt, routingPathLegs %@), traffic colors %@, muted %@, resumed %@", self, groupIdentifier, v28, v34, v33, closureReason, localName, destinationName, waypointInfosCount, currentWaypointIndex, v21, lastLocation, v7, v9, v11, v14, v16, v17];

  return v18;
}

- (void)_msp_logWithCategory:()MSPExtras type:object:prefix:
{
  v171 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v10)
  {
    v10 = MSPGetSharedTripLog(v12);
  }

  v14 = v10;
  if (os_log_type_enabled(v14, a4))
  {
    v15 = v11;
    type = a4;
    if (v15)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
    }

    else
    {
      v16 = @"<nil>";
    }

    v17 = v16;
    v18 = &stru_286950698;
    if (v13)
    {
      v18 = v13;
    }

    v68 = v18;
    groupIdentifier = [self groupIdentifier];
    hasTransportType = [self hasTransportType];
    v86 = v13;
    if (hasTransportType)
    {
      transportType = [self transportType];
      if (transportType >= 7)
      {
        v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", transportType];
        goto LABEL_15;
      }

      v20 = off_279866210[transportType];
    }

    else
    {
      v20 = @"n/a";
    }

    v95 = v20;
LABEL_15:
    hasUpdatedTimestamp = [self hasUpdatedTimestamp];
    if (hasUpdatedTimestamp)
    {
      v21 = MEMORY[0x277CBEAA8];
      [self updatedTimestamp];
      v94 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v94 = @"n/a";
    }

    v22 = @"n/a";
    hasLocalUpdatedTimestamp = [self hasLocalUpdatedTimestamp];
    v87 = v11;
    if (hasLocalUpdatedTimestamp)
    {
      v23 = MEMORY[0x277CBEAA8];
      [self localUpdatedTimestamp];
      v93 = [v23 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v93 = @"n/a";
    }

    if ([self hasSenderInfo])
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v102 = v24;
    senderInfo = [self senderInfo];
    if ([senderInfo hasFromDisplayName])
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v101 = v25;
    senderInfo2 = [self senderInfo];
    fromDisplayName = [senderInfo2 fromDisplayName];
    v78 = fromDisplayName;
    if (fromDisplayName)
    {
      v27 = fromDisplayName;
    }

    else
    {
      v27 = @"n/a";
    }

    v63 = v27;
    senderInfo3 = [self senderInfo];
    if ([senderInfo3 hasFromIdentifier])
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v100 = v28;
    senderInfo4 = [self senderInfo];
    fromIdentifier = [senderInfo4 fromIdentifier];
    v75 = fromIdentifier;
    if (fromIdentifier)
    {
      v30 = fromIdentifier;
    }

    else
    {
      v30 = @"n/a";
    }

    v62 = v30;
    senderInfo5 = [self senderInfo];
    if ([senderInfo5 hasLocalName])
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v99 = v31;
    senderInfo6 = [self senderInfo];
    localName = [senderInfo6 localName];
    v72 = localName;
    if (localName)
    {
      v33 = localName;
    }

    else
    {
      v33 = @"n/a";
    }

    v60 = v33;
    senderInfo7 = [self senderInfo];
    if ([senderInfo7 hasLocalContactIdentifier])
    {
      v34 = @"YES";
    }

    else
    {
      v34 = @"NO";
    }

    v108 = v34;
    senderInfo8 = [self senderInfo];
    localContactIdentifier = [senderInfo8 localContactIdentifier];
    v69 = localContactIdentifier;
    if (localContactIdentifier)
    {
      v36 = localContactIdentifier;
    }

    else
    {
      v36 = @"n/a";
    }

    v59 = v36;
    hasArrived = [self hasArrived];
    if (hasArrived)
    {
      if ([self arrived])
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v22 = v37;
    }

    hasArrivedTimestamp = [self hasArrivedTimestamp];
    if (hasArrivedTimestamp)
    {
      v38 = MEMORY[0x277CBEAA8];
      [self arrivedTimestamp];
      v91 = [v38 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v91 = @"n/a";
    }

    hasClosed = [self hasClosed];
    if (hasClosed)
    {
      if ([self closed])
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v90 = v39;
    }

    else
    {
      v90 = @"n/a";
    }

    hasClosedTimestamp = [self hasClosedTimestamp];
    if (hasClosedTimestamp)
    {
      v40 = MEMORY[0x277CBEAA8];
      [self closedTimestamp];
      v89 = [v40 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v89 = @"n/a";
    }

    hasClosureReason = [self hasClosureReason];
    v85 = v17;
    v92 = v22;
    if (hasClosureReason)
    {
      v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "closureReason")}];
    }

    else
    {
      v88 = @"n/a";
    }

    v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "etaInfosCount")}];
    etaInfos = [self etaInfos];
    v107 = [etaInfos valueForKey:@"mspDescription"];
    v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "waypointInfosCount")}];
    waypointInfos = [self waypointInfos];
    v106 = [waypointInfos valueForKey:@"name"];
    if ([self hasLastLocation])
    {
      v41 = @"YES";
    }

    else
    {
      v41 = @"NO";
    }

    v105 = v41;
    lastLocation = [self lastLocation];
    mspDescription = [lastLocation mspDescription];
    v42 = MEMORY[0x277CCABB0];
    routeInfo = [self routeInfo];
    v96 = [v42 numberWithUnsignedInteger:{objc_msgSend(routeInfo, "routingPathLegsCount")}];
    v43 = MEMORY[0x277CCABB0];
    routeInfo2 = [self routeInfo];
    v45 = [v43 numberWithUnsignedInteger:{objc_msgSend(routeInfo2, "coordinatesCount")}];
    v46 = MEMORY[0x277CCABB0];
    routeInfo3 = [self routeInfo];
    v48 = [v46 numberWithUnsignedInteger:{objc_msgSend(routeInfo3, "trafficColorsCount")}];
    v49 = MEMORY[0x277CCABB0];
    routeInfo4 = [self routeInfo];
    v51 = [v49 numberWithUnsignedInteger:{objc_msgSend(routeInfo4, "trafficColorOffsetsCount")}];
    hasReferenceFrame = [self hasReferenceFrame];
    if (hasReferenceFrame)
    {
      referenceFrame = [self referenceFrame];
      if (referenceFrame >= 3)
      {
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", referenceFrame];
      }

      else
      {
        v54 = off_279866248[referenceFrame];
      }
    }

    else
    {
      v54 = @"n/a";
    }

    v112 = v68;
    v126 = v63;
    v130 = v62;
    v134 = v60;
    v138 = v59;
    v125 = 2113;
    v129 = 2113;
    v133 = 2113;
    v137 = 2113;
    v151 = 2113;
    v155 = 2113;
    v159 = 2113;
    v136 = v108;
    v140 = v92;
    v142 = v91;
    v144 = v90;
    v148 = v88;
    v150 = v98;
    v152 = v107;
    v156 = v106;
    v158 = v105;
    v160 = mspDescription;
    v164 = v45;
    v166 = v48;
    v168 = v51;
    v111 = 2114;
    v113 = 2114;
    v115 = 2114;
    v117 = 2114;
    v119 = 2114;
    v121 = 2114;
    v123 = 2114;
    v127 = 2114;
    v131 = 2114;
    v135 = 2114;
    v139 = 2114;
    v141 = 2114;
    v143 = 2114;
    v145 = 2114;
    v147 = 2114;
    v149 = 2114;
    v153 = 2114;
    v157 = 2114;
    v161 = 2114;
    v163 = 2114;
    v165 = 2114;
    v167 = 2114;
    v169 = 2114;
    *buf = 138551043;
    v110 = v85;
    v114 = groupIdentifier;
    v116 = v95;
    v118 = v94;
    v120 = v93;
    v122 = v102;
    v124 = v101;
    v128 = v100;
    v132 = v99;
    v146 = v89;
    v154 = v97;
    v162 = v96;
    v170 = v54;
    _os_log_impl(&dword_25813A000, v14, type, "[%{public}@] %{public}@\n== Trip %{public}@ ====\n\ttransportType: %{public}@, lastUpdated: %{public}@, locallyUpdated: %{public}@\n\tsenderInfo: %{public}@, fromDisplayName: %{public}@ [ %{private}@ ], fromIdentifier: %{public}@ [ %{private}@ ], localName: %{public}@ [ %{private}@ ], localContactIdentifier: %{public}@ [ %{private}@ ]\n\tarrived: %{public}@, arrivedTimestamp: %{public}@, closed: %{public}@, closedTimestamp: %{public}@, closureReason: %{public}@\n\tETAs: %{public}@ %{private}@\n\twaypoints: %{public}@ %{private}@\n\tlocation: %{public}@ %{private}@ \n\troute: routingPathLegs: %{public}@, coordinates: %{public}@, trafficColors: %{public}@, trafficOffsets: %{public}@, referenceFrame: %{public}@\n================", buf, 0x138u);
    if (hasReferenceFrame)
    {
    }

    if (hasClosureReason)
    {
    }

    v13 = v86;
    v11 = v87;
    if (hasClosedTimestamp)
    {
    }

    if (hasClosed)
    {
    }

    if (hasArrivedTimestamp)
    {
    }

    if (hasArrived)
    {
    }

    if (hasLocalUpdatedTimestamp)
    {
    }

    if (hasUpdatedTimestamp)
    {
    }

    if (hasTransportType)
    {
    }
  }
}

- (void)truncatePointDataForPrivacy
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = MSPGetSharedTripLog(self);
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "truncatePointDataForPrivacy", &unk_2581CCE6D, buf, 2u);
  }

  composedRoute = [self composedRoute];
  if (composedRoute)
  {
    v8 = [self _polylineCoordinateForRoute:composedRoute];
    IsInvalid = GEOPolylineCoordinateIsInvalid();
    if (IsInvalid)
    {
      v10 = MSPGetSharedTripLog(IsInvalid);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "truncatePointDataForPrivacy early exit: closestPointOnRoute returned GEOPolylineCoordinateInvalid", buf, 2u);
      }

      v11 = v5;
      v12 = v11;
      if (v6 > 0xFFFFFFFFFFFFFFFDLL)
      {

        routeInfo = v12;
        goto LABEL_51;
      }

      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v12, OS_SIGNPOST_EVENT, v3, "truncatePointDataForPrivacy_EarlyExit_GEOPolylineCoordinateInvalid", &unk_2581CCE6D, buf, 2u);
      }

      routeInfo = v12;
      if (os_signpost_enabled(routeInfo))
      {
        *buf = 0;
LABEL_18:
        _os_signpost_emit_with_name_impl(&dword_25813A000, routeInfo, OS_SIGNPOST_INTERVAL_END, v3, "truncatePointDataForPrivacy", &unk_2581CCE6D, buf, 2u);
        goto LABEL_51;
      }

      goto LABEL_51;
    }

    routeInfo = [self routeInfo];
    if (!routeInfo)
    {
      v16 = MSPGetSharedTripLog(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_ERROR, "truncatePointDataForPrivacy: missing routeInfo, creating on-demand", buf, 2u);
      }

      routeInfo = objc_alloc_init(MEMORY[0x277D0ED20]);
      [self setRouteInfo:routeInfo];
    }

    spid = v3;
    usesRoutingPathPoints = [composedRoute usesRoutingPathPoints];
    if (usesRoutingPathPoints)
    {
      v18 = MSPGetSharedTripLog(usesRoutingPathPoints);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEBUG, "truncatePointDataForPrivacy truncating routingPathLeg from closest coordinate", buf, 2u);
      }

      v19 = [composedRoute routingPathDataFromStart:v8];
      v20 = [v19 mutableCopy];
      [routeInfo setRoutingPathLegs:v20];
    }

    [routeInfo clearCoordinates];
    pointCount = [composedRoute pointCount];
    if (pointCount)
    {
      v22 = pointCount;
      pointCount2 = [composedRoute pointCount];
      v24 = pointCount2;
      v25 = MSPGetSharedTripLog(pointCount2);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v57 = v22;
        v58 = 2048;
        v59 = (2 * v24);
        _os_log_impl(&dword_25813A000, v25, OS_LOG_TYPE_DEBUG, "truncatePointDataForPrivacy composed route coordinates count %lu (%lu)", buf, 0x16u);
      }

      v27 = MSPGetSharedTripLog(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v57) = v8;
        _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_DEBUG, "index for current location %u", buf, 8u);
      }

      v29 = v22 - v8;
      if (v22 <= v8)
      {
        v47 = MSPGetSharedTripLog(v28);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_25813A000, v47, OS_LOG_TYPE_ERROR, "truncatePointDataForPrivacy early exit: index > number of coordinates", buf, 2u);
        }

        v48 = v5;
        v49 = v48;
        if (v6 > 0xFFFFFFFFFFFFFFFDLL)
        {

          v37 = v49;
        }

        else
        {
          if (os_signpost_enabled(v48))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25813A000, v49, OS_SIGNPOST_EVENT, spid, "truncatePointDataForPrivacy_EarlyExit_NumberOfCoordinates", &unk_2581CCE6D, buf, 2u);
          }

          v37 = v49;
          if (os_signpost_enabled(v37))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25813A000, v37, OS_SIGNPOST_INTERVAL_END, spid, "truncatePointDataForPrivacy", &unk_2581CCE6D, buf, 2u);
          }
        }

        goto LABEL_49;
      }

      v30 = v8;
      do
      {
        [composedRoute pointAt:v30];
        v32 = v31;
        [routeInfo addCoordinates:?];
        v33 = [routeInfo addCoordinates:v32];
        ++v30;
        --v29;
      }

      while (v29);
      v34 = MSPGetSharedTripLog(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = vcvts_n_f32_u64([routeInfo coordinatesCount], 1uLL);
        coordinatesCount = [routeInfo coordinatesCount];
        *buf = 134218240;
        v57 = v35;
        v58 = 2048;
        v59 = coordinatesCount;
        _os_log_impl(&dword_25813A000, v34, OS_LOG_TYPE_DEBUG, "truncatePointDataForPrivacy route info coordinates after truncation count %lu (%lu)", buf, 0x16u);
      }
    }

    [routeInfo clearTrafficColors];
    [routeInfo clearTrafficColorOffsets];
    v37 = [composedRoute truncatedTrafficFromRouteCoordinate:v8];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    routeTrafficColors = [v37 routeTrafficColors];
    v39 = [routeTrafficColors countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v52;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v52 != v41)
          {
            objc_enumerationMutation(routeTrafficColors);
          }

          v43 = *(*(&v51 + 1) + 8 * i);
          -[NSObject addTrafficColor:](routeInfo, "addTrafficColor:", [v43 color]);
          [v43 offsetMeters];
          [routeInfo addTrafficColorOffset:v44];
        }

        v40 = [routeTrafficColors countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v40);
    }

    v45 = v5;
    v46 = v45;
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v46, OS_SIGNPOST_INTERVAL_END, spid, "truncatePointDataForPrivacy", &unk_2581CCE6D, buf, 2u);
    }

LABEL_49:
    goto LABEL_51;
  }

  v14 = MSPGetSharedTripLog(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_ERROR, "truncatePointDataForPrivacy early exit: no composed route to truncate", buf, 2u);
  }

  v15 = v5;
  routeInfo = v15;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    goto LABEL_18;
  }

LABEL_51:
}

- (unint64_t)_polylineCoordinateForRoute:()MSPExtras
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  lastLocation = [self lastLocation];
  coordinate = [lastLocation coordinate];
  v7 = coordinate;
  if (!lastLocation)
  {
    etaInfo = [self etaInfo];
    v16 = etaInfo;
    if (etaInfo && [etaInfo hasLatitude] && objc_msgSend(v16, "hasLongitude"))
    {
      lastLocation = objc_alloc_init(MEMORY[0x277D0ED18]);
      v17 = objc_alloc_init(MEMORY[0x277D0EB58]);

      [lastLocation setCoordinate:v17];
      [v16 latitude];
      [v17 setLat:?];
      [v16 longitude];
      [v17 setLng:?];
      v7 = v17;
    }

    else
    {
      lastLocation = 0;
    }

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    v12 = *MEMORY[0x277D0E9F8];
    v13 = *(MEMORY[0x277D0E9F8] + 4);
    goto LABEL_13;
  }

  if (!coordinate)
  {
    goto LABEL_12;
  }

LABEL_3:
  [v7 lat];
  v9 = v8;
  [v7 lng];
  v11 = [v4 closestPointOnRoute:{v9, v10}];
  v12 = v11;
  v13 = HIDWORD(v11);
  v14 = MSPGetSharedTripLog(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v24 = 134217984;
    v25 = v12;
    _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "polylineCoordinateForRoute closest index %lu, sourced from route + latlng", &v24, 0xCu);
  }

LABEL_13:
  IsInvalid = GEOPolylineCoordinateIsInvalid();
  if (IsInvalid)
  {
    v19 = MSPGetSharedTripLog(IsInvalid);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      hasMatchedCoordinate = [lastLocation hasMatchedCoordinate];
      v21 = @"NO";
      if (hasMatchedCoordinate)
      {
        v21 = @"YES";
      }

      v22 = v21;
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEBUG, "polylineCoordinateForRoute no valid closest index, will use whole route (sender provided: %@)", &v24, 0xCu);
    }

    v13 = 0;
    v12 = 0;
  }

  return v12 | (v13 << 32);
}

- (void)updateElevationModelToLegacyEGM96
{
  composedRoute = [self composedRoute];
  if (composedRoute)
  {
    v3 = [self _polylineCoordinateForRoute:composedRoute];
    IsInvalid = GEOPolylineCoordinateIsInvalid();
    if (!IsInvalid)
    {
      endRouteCoordinate = [composedRoute endRouteCoordinate];
      v9 = [objc_alloc(MEMORY[0x277D0ECB0]) initWithRoute:composedRoute range:v3 desiredElevationModel:{endRouteCoordinate, 0}];
      rawData = [v9 rawData];
      v11 = [rawData mutableCopy];
      routeInfo = [self routeInfo];
      [routeInfo setRoutingPathLegs:v11];

      goto LABEL_10;
    }

    v5 = MSPGetSharedTripLog(IsInvalid);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v6 = "updateElevationModelToLegacyEGM96 early exit: closestPointOnRoute returned GEOPolylineCoordinateInvalid";
      v7 = &v13;
LABEL_7:
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    }
  }

  else
  {
    v5 = MSPGetSharedTripLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "updateElevationModelToLegacyEGM96 early exit: no composed route";
      v7 = buf;
      goto LABEL_7;
    }
  }

LABEL_10:
}

- (uint64_t)updateWaypointsFromComposedRoute:()MSPExtras
{
  v49 = *MEMORY[0x277D85DE8];
  legs = [a3 legs];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(legs, "count")}];
  v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(legs, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = legs;
  v6 = v4;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v44 objects:v48 count:16];
  v43 = v4;
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x277D0ED38]);
        [v6 addObject:v12];
        destination = [v11 destination];
        uniqueWaypointID = [destination uniqueWaypointID];

        if (uniqueWaypointID)
        {
          destination2 = [v11 destination];
          uniqueWaypointID2 = [destination2 uniqueWaypointID];

          v17 = [MEMORY[0x277CCAD78] _geo_uuidForData:uniqueWaypointID2];
          uUIDString = [v17 UUIDString];
        }

        else
        {
          uniqueWaypointID2 = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uniqueWaypointID2 UUIDString];
        }

        [v12 setUniqueIdentifier:uUIDString];
        destination3 = [v11 destination];
        destination4 = [v11 destination];
        chargingInfo = [destination4 chargingInfo];

        if (chargingInfo)
        {
          v22 = objc_alloc_init(MEMORY[0x277D0ED08]);
          [v22 setMuid:{objc_msgSend(chargingInfo, "muid")}];
          name = [chargingInfo name];
          v24 = [name copy];
          [v22 setName:v24];

          [chargingInfo chargingTime];
          [v22 setChargingTime:?];
          [v12 setChargingStationInfo:v22];
          [v42 addObject:v22];
        }

        else
        {
          geoMapItem = [destination3 geoMapItem];

          if (!geoMapItem)
          {
            goto LABEL_14;
          }

          v26 = MEMORY[0x277D0EBC0];
          geoMapItem2 = [destination3 geoMapItem];
          v22 = [v26 mapItemStorageForGEOMapItem:geoMapItem2 forUseType:2];

          [v12 setMapItemStorage:v22];
        }

        v6 = v43;
LABEL_14:
      }

      v8 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v8);
  }

  v28 = [v6 count];
  if (v28 == [self waypointInfosCount] && ((objc_msgSend(self, "waypointInfos"), v29 = objc_claimAutoreleasedReturnValue(), v30 = v6, v31 = v29, !(v30 | v31)) || (v32 = v31, v33 = objc_msgSend(v30, "isEqual:", v31), v32, v30, v32, (v33 & 1) != 0)))
  {
    v34 = 0;
  }

  else
  {
    [self setWaypointInfos:v6];
    [self setCurrentWaypointIndex:0];
    [self _createPlaceholderETAInfosForWaypoints:v6];
    waypointInfos = [self waypointInfos];
    lastObject = [waypointInfos lastObject];
    mapItemStorage = [lastObject mapItemStorage];
    [self setDestinationInfo:mapItemStorage];

    v6 = v43;
    routeInfo = [self routeInfo];
    [routeInfo setChargingStations:v42];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [self setUpdatedTimestamp:?];
    v34 = 1;
  }

  return v34;
}

- (void)_createPlaceholderETAInfosForWaypoints:()MSPExtras
{
  v4 = a3;
  [self clearEtaInfos];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__GEOSharedNavState_MSPExtras___createPlaceholderETAInfosForWaypoints___block_invoke;
  v5[3] = &unk_2798661A8;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)updateRouteInfoFromComposedRoute:()MSPExtras
{
  v4 = a3;
  [self setComposedRoute:v4];
  v6 = objc_alloc_init(MEMORY[0x277D0ED20]);
  elevationModel = [v4 elevationModel];

  [v6 setElevationModel:elevationModel];
  [self setRouteInfo:v6];
  [self truncatePointDataForPrivacy];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [self setUpdatedTimestamp:?];
}

- (uint64_t)updateFromTraffic:()MSPExtras
{
  v4 = a3;
  composedRoute = [self composedRoute];
  mutableData = [composedRoute mutableData];
  traffic = [mutableData traffic];
  v8 = traffic;
  if (v4 | traffic)
  {
    v9 = [traffic isEqual:v4];
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    composedRoute2 = [self composedRoute];
    mutableData2 = [composedRoute2 mutableData];
    [mutableData2 setTraffic:v4];

    [self truncatePointDataForPrivacy];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    [self setUpdatedTimestamp:?];
  }

  return v9 ^ 1u;
}

- (id)composedRoute
{
  v69 = *MEMORY[0x277D85DE8];
  composedRouteIfExists = [self composedRouteIfExists];
  if (!composedRouteIfExists)
  {
    routeInfo = [self routeInfo];
    routingPathLegs = [routeInfo routingPathLegs];
    v5 = [routingPathLegs count];

    if (!v5)
    {
      coordinatesCount = [routeInfo coordinatesCount];
      if (!coordinatesCount)
      {
LABEL_40:
        composedRouteIfExists = 0;
LABEL_48:

        goto LABEL_49;
      }

      v16 = MSPGetSharedTripLog(coordinatesCount);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v64 = [routeInfo coordinatesCount];
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEFAULT, "Building composedRoute from routeInfo (%lu coordinates)", buf, 0xCu);
      }

      v17 = [routeInfo coordinatesCount] >> 1;
      v18 = objc_alloc_init(MEMORY[0x277D0ECD8]);
      v19 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(routeInfo length:{"coordinates"), 16 * v17}];
      [v18 setUnpackedLatLngVertices:v19];

      [v18 setTrafficColors:objc_msgSend(routeInfo count:{"trafficColors"), objc_msgSend(routeInfo, "trafficColorsCount")}];
      [v18 setTrafficColorOffsets:objc_msgSend(routeInfo count:{"trafficColorOffsets"), objc_msgSend(routeInfo, "trafficColorOffsetsCount")}];
      v20 = objc_alloc_init(MEMORY[0x277D0ED78]);
      [v20 setManeuverStartZilchIndex:0];
      v21 = (v17 - 1);
      [v20 setManeuverEndBasicIndex:v21];
      [v20 setManeuverEndZilchIndex:v21];
      [v18 addStep:v20];
      if ([v18 hasUnpackedLatLngVertices])
      {
        [v18 coordinateAt:0];
        v24 = [objc_alloc(MEMORY[0x277D0EB80]) initWithLatitude:v22 longitude:v23];
        v25 = [objc_alloc(MEMORY[0x277D0EAF0]) initWithLocation:v24 isCurrentLocation:1];
        v26 = objc_alloc(MEMORY[0x277D0EAF0]);
        destinationWaypointMapItem = [self destinationWaypointMapItem];
        v28 = [v26 initWithMapItem:destinationWaypointMapItem];

        v62[0] = v25;
        v62[1] = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
        v30 = [objc_alloc(MEMORY[0x277D0ECF0]) initWithWaypoints:v29 routeAttributes:0 directionsResponse:0];
      }

      else
      {
        v30 = 0;
      }

      v56 = objc_alloc_init(MEMORY[0x277D0EE38]);
      [v56 addRouteLeg:v18];
      composedRouteIfExists = [objc_alloc(MEMORY[0x277D0EAE8]) initWithGeoWaypointRoute:v56 initializerData:v30];

LABEL_47:
      [self setComposedRoute:composedRouteIfExists];
      goto LABEL_48;
    }

    v7 = MSPGetSharedTripLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v64 = [routeInfo routingPathLegsCount];
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "Building composedRoute from routeInfo (%lu routingPathLegs)", buf, 0xCu);
    }

    trafficColorsCount = [routeInfo trafficColorsCount];
    trafficColorOffsetsCount = [routeInfo trafficColorOffsetsCount];
    if (trafficColorsCount != trafficColorOffsetsCount)
    {
      v10 = MSPGetSharedTripLog(trafficColorOffsetsCount);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        trafficColorsCount2 = [routeInfo trafficColorsCount];
        trafficColorOffsetsCount2 = [routeInfo trafficColorOffsetsCount];
        *buf = 67109376;
        *v64 = trafficColorsCount2;
        *&v64[4] = 1024;
        *&v64[6] = trafficColorOffsetsCount2;
        _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "SharedNavRouteInfo traffic colors count (%d) is not equal to traffic color offsets count (%d). Attempting to continue anyway", buf, 0xEu);
      }
    }

    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    if ([self waypointInfosCount])
    {
      waypointInfosCount = [self waypointInfosCount];
    }

    else
    {
      waypointInfosCount = 1;
    }

    v18 = [v13 initWithCapacity:waypointInfosCount];
    if ([self waypointInfosCount])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      waypointInfos = [self waypointInfos];
      destinationWaypointMapItem2 = [waypointInfos copy];

      v33 = [destinationWaypointMapItem2 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v59;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v59 != v35)
            {
              objc_enumerationMutation(destinationWaypointMapItem2);
            }

            v37 = *(*(&v58 + 1) + 8 * i);
            v38 = objc_alloc(MEMORY[0x277D0EAF0]);
            mapItemStorage = [v37 mapItemStorage];
            v40 = [v38 initWithMapItem:mapItemStorage];

            [v18 addObject:v40];
          }

          v34 = [destinationWaypointMapItem2 countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v34);
      }
    }

    else
    {
      if (![self hasDestinationInfo])
      {
        goto LABEL_29;
      }

      v41 = objc_alloc(MEMORY[0x277D0EAF0]);
      destinationWaypointMapItem2 = [self destinationWaypointMapItem];
      v42 = [v41 initWithMapItem:destinationWaypointMapItem2];
      [v18 addObject:v42];
    }

LABEL_29:
    routingPathLegsCount = [routeInfo routingPathLegsCount];
    if (routingPathLegsCount != [v18 count] && objc_msgSend(v18, "count") > routingPathLegsCount)
    {
      v44 = [v18 count];
      v45 = v44 - routingPathLegsCount;
      v46 = MSPGetSharedTripLog(v44);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [v18 count];
        *buf = 134218496;
        *v64 = routingPathLegsCount;
        *&v64[8] = 2048;
        v65 = v47;
        v66 = 2048;
        v67 = v45;
        _os_log_impl(&dword_25813A000, v46, OS_LOG_TYPE_DEFAULT, "Found %lu routingPathLegs for %lu waypoints, dropping %lu leading waypoints", buf, 0x20u);
      }

      [v18 removeObjectsInRange:{0, v45}];
    }

    v48 = [v18 count];
    if (!v48 || !routingPathLegsCount || (v48 = [v18 count], routingPathLegsCount > v48))
    {
      v49 = MSPGetSharedTripLog(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = [v18 count];
        *buf = 134218240;
        *v64 = routingPathLegsCount;
        *&v64[8] = 2048;
        v65 = v50;
        _os_log_impl(&dword_25813A000, v49, OS_LOG_TYPE_ERROR, "Cannot create composedRoute from %lu routingPathLegs and %lu waypoints", buf, 0x16u);
      }

      goto LABEL_40;
    }

    v20 = objc_opt_new();
    [v20 setTransportType:{objc_msgSend(self, "transportType")}];
    v51 = objc_alloc(MEMORY[0x277D0ECB0]);
    routingPathLegs2 = [routeInfo routingPathLegs];
    v53 = [v51 initWithRawData:routingPathLegs2 elevationModel:{objc_msgSend(routeInfo, "elevationModel")}];
    [v20 setRawRouteGeometry:v53];

    [v20 setDestinations:v18];
    [v20 setIsOriginCurrentLocation:1];
    [v20 setSource:4];
    trafficColorsCount3 = [routeInfo trafficColorsCount];
    if (trafficColorsCount3 >= [routeInfo trafficColorOffsetsCount])
    {
      trafficColorOffsetsCount3 = [routeInfo trafficColorOffsetsCount];
    }

    else
    {
      trafficColorOffsetsCount3 = [routeInfo trafficColorsCount];
    }

    [v20 setTrafficColors:objc_msgSend(routeInfo offsets:"trafficColors") count:{objc_msgSend(routeInfo, "trafficColorOffsets"), trafficColorOffsetsCount3}];
    composedRouteIfExists = [v20 buildRoute];
    goto LABEL_47;
  }

LABEL_49:

  return composedRouteIfExists;
}

- (void)setComposedRouteFromState:()MSPExtras
{
  composedRouteIfExists = [a3 composedRouteIfExists];
  [self setComposedRoute:composedRouteIfExists];
}

- (id)equalityTest
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__GEOSharedNavState_MSPExtras__equalityTest__block_invoke;
  v3[3] = &unk_2798661D0;
  v3[4] = self;
  v1 = MEMORY[0x259C7AD60](v3);

  return v1;
}

- (void)stripArrivedOrClosedTrip
{
  v11 = *MEMORY[0x277D85DE8];
  if (![self arrived] || objc_msgSend(self, "hasClosed") && (objc_msgSend(self, "closed") & 1) != 0 || (result = objc_msgSend(self, "isNavigatingToIntermediateStop"), (result & 1) == 0))
  {
    closed = [self closed];
    if (closed)
    {
      v4 = MSPGetSharedTripLog(closed);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        groupIdentifier = [self groupIdentifier];
        v9 = 138412290;
        v10 = groupIdentifier;
        _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "Stripping route and ETAs from trip %@ (closed)", &v9, 0xCu);
      }

      waypointInfos = [self waypointInfos];
      [self _createPlaceholderETAInfosForWaypoints:waypointInfos];
    }

    else
    {
      arrived = [self arrived];
      if (!arrived)
      {
        goto LABEL_13;
      }

      waypointInfos = MSPGetSharedTripLog(arrived);
      if (os_log_type_enabled(waypointInfos, OS_LOG_TYPE_DEFAULT))
      {
        groupIdentifier2 = [self groupIdentifier];
        v9 = 138412290;
        v10 = groupIdentifier2;
        _os_log_impl(&dword_25813A000, waypointInfos, OS_LOG_TYPE_DEFAULT, "Stripping route from trip %@ (arrived)", &v9, 0xCu);
      }
    }

LABEL_13:
    [self setRouteInfo:0];
    return [self setComposedRoute:0];
  }

  return result;
}

- (id)etaInfo
{
  if ([self hasCurrentWaypointIndex] && (v2 = objc_msgSend(self, "currentWaypointIndex"), objc_msgSend(self, "etaInfosCount") > v2))
  {
    etaInfos = [self etaInfos];
    firstObject = [etaInfos objectAtIndexedSubscript:{objc_msgSend(self, "currentWaypointIndex")}];
  }

  else
  {
    etaInfos = [self etaInfos];
    firstObject = [etaInfos firstObject];
  }

  v5 = firstObject;

  return v5;
}

- (id)finalETAInfo
{
  etaInfos = [self etaInfos];
  lastObject = [etaInfos lastObject];

  return lastObject;
}

- (char)numberOfIntermediateStopsRemaining
{
  if ([self waypointInfosCount])
  {
    waypointInfosCount = [self waypointInfosCount];
    if ([self hasCurrentWaypointIndex])
    {
      v3 = ~[self currentWaypointIndex];
    }

    else
    {
      v3 = -1;
    }

    return (v3 + waypointInfosCount);
  }

  else
  {
    routeInfo = [self routeInfo];
    chargingStationsCount = [routeInfo chargingStationsCount];

    return chargingStationsCount;
  }
}

- (void)isNavigatingToIntermediateStop
{
  result = [self waypointInfosCount];
  if (result)
  {
    result = [self hasCurrentWaypointIndex];
    if (result)
    {
      currentWaypointIndex = [self currentWaypointIndex];
      return ([self waypointInfosCount] - 1 > currentWaypointIndex);
    }
  }

  return result;
}

- (id)nextWaypointInfo
{
  if ([self hasCurrentWaypointIndex] && (v2 = objc_msgSend(self, "currentWaypointIndex"), objc_msgSend(self, "waypointInfosCount") > v2))
  {
    waypointInfos = [self waypointInfos];
    destinationWaypointInfo = [waypointInfos objectAtIndexedSubscript:{objc_msgSend(self, "currentWaypointIndex")}];
  }

  else
  {
    destinationWaypointInfo = [self destinationWaypointInfo];
  }

  return destinationWaypointInfo;
}

- (uint64_t)stripForSendingUpdatedWaypoints
{
  if ([self hasCurrentWaypointIndex])
  {
    waypointInfosCount = [self waypointInfosCount];
    if (waypointInfosCount > [self currentWaypointIndex])
    {
      currentWaypointIndex = [self currentWaypointIndex];
      v4 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, currentWaypointIndex}];
      waypointInfos = [self waypointInfos];
      [waypointInfos enumerateObjectsAtIndexes:v4 options:0 usingBlock:&__block_literal_global_3];
    }
  }

  [self setLastLocation:0];

  return [self setRouteInfo:0];
}

- (uint64_t)stripForSendingUpdatedRoute
{
  [self setSenderInfo:0];
  [self setDestinationInfo:0];
  [self setLastLocation:0];
  [self truncatePointDataForPrivacy];

  return [self clearWaypointInfos];
}

- (uint64_t)stripForSendingUpdatedETA
{
  [self setSenderInfo:0];
  [self setRouteInfo:0];
  [self setDestinationInfo:0];

  return [self clearWaypointInfos];
}

- (uint64_t)stripForSendingUpdatedTraffic
{
  routeInfo = [self routeInfo];
  [routeInfo clearCoordinates];

  routeInfo2 = [self routeInfo];
  [routeInfo2 clearRoutingPathLegs];

  [self setLastLocation:0];
  [self setSenderInfo:0];
  [self setDestinationInfo:0];

  return [self clearWaypointInfos];
}

- (char)stripForSendingArrival
{
  [self setSenderInfo:0];
  [self setRouteInfo:0];
  result = [self waypointInfosCount];
  if (result)
  {
    result = [self waypointInfosCount];
    if (result != 1)
    {
      v3 = 0;
      do
      {
        result = [self currentWaypointIndex];
        if (v3 == result)
        {
          break;
        }

        waypointInfos = [self waypointInfos];
        v5 = [waypointInfos objectAtIndex:v3];

        [v5 setMapItemStorage:0];
        [v5 setChargingStationInfo:0];

        ++v3;
        result = [self waypointInfosCount];
      }

      while (v3 < (result - 1));
    }
  }

  return result;
}

- (uint64_t)stripForSendingResuming
{
  [self setSenderInfo:0];

  return [self setRouteInfo:0];
}

- (uint64_t)stripForSendingStoppedSharing
{
  [self setRouteInfo:0];
  [self setDestinationInfo:0];
  [self setLastLocation:0];
  [self clearWaypointInfos];

  return [self clearEtaInfos];
}

@end