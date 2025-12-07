@interface MNTraceNavigationEventRecorder
- (MNTraceNavigationEventRecorder)initWithTraceRecorder:(id)recorder;
- (id)_descriptionForARInfo:(id)info;
- (id)_descriptionForWaypoint:(id)waypoint;
- (id)_stringForSignDescription:(id)description;
- (void)_didUpdateArrivalInfo:(id)info;
- (void)_recordDebugSettings;
- (void)_recordEvent:(int64_t)event description:(id)description;
- (void)_userGotOnRoute;
- (void)_userWentOffRoute;
- (void)dealloc;
- (void)navigationSession:(id)session didInsertWaypoint:(id)waypoint;
- (void)navigationSession:(id)session didReceiveTransitAlert:(id)alert;
- (void)navigationSession:(id)session didRemoveWaypoint:(id)waypoint;
- (void)navigationSession:(id)session didReroute:(id)reroute withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason;
- (void)navigationSession:(id)session didRerouteWithWaypoints:(id)waypoints;
- (void)navigationSession:(id)session didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationSession:(id)session didSendNavigationServiceCallback:(id)callback;
- (void)navigationSession:(id)session didStartWithRoute:(id)route navigationType:(int64_t)type isResumingMultipointRoute:(BOOL)multipointRoute isReconnecting:(BOOL)reconnecting;
- (void)navigationSession:(id)session didSuppressReroute:(id)reroute;
- (void)navigationSession:(id)session didSwitchToNewTransportType:(int)type newRoute:(id)route rerouteReason:(unint64_t)reason;
- (void)navigationSession:(id)session didUpdateAlternateRoutes:(id)routes;
- (void)navigationSession:(id)session didUpdateDestination:(id)destination;
- (void)navigationSession:(id)session didUpdateTargetLegIndex:(unint64_t)index;
- (void)navigationSession:(id)session matchedToStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationSession:(id)session showJunctionView:(id)view;
- (void)navigationSession:(id)session showLaneDirections:(id)directions;
- (void)navigationSession:(id)session updateSignsWithARInfo:(id)info;
- (void)navigationSession:(id)session updateSignsWithInfo:(id)info;
- (void)setLastMatchedLocation:(id)location;
@end

@implementation MNTraceNavigationEventRecorder

- (void)navigationSession:(id)session didSendNavigationServiceCallback:(id)callback
{
  callbackCopy = callback;
  type = [callbackCopy type];
  switch(type)
  {
    case 4:
      arrivalInfo = [callbackCopy arrivalInfo];
      [(MNTraceNavigationEventRecorder *)self _didUpdateArrivalInfo:arrivalInfo];
      break;
    case 12:
      arrivalInfo = callbackCopy;
      updateType = [arrivalInfo updateType];
      if (updateType <= 3 && updateType != 1)
      {
        trafficIncidentAlert = [arrivalInfo trafficIncidentAlert];
        v11 = MEMORY[0x1E696AEC0];
        updateTypeString = [arrivalInfo updateTypeString];
        alertType = [trafficIncidentAlert alertType];
        if ((alertType - 1) > 6)
        {
          v14 = @"None";
        }

        else
        {
          v14 = off_1E84304E8[alertType - 1];
        }

        v16 = v14;
        v17 = MEMORY[0x1E696AFB0];
        alertID = [trafficIncidentAlert alertID];
        v19 = [v17 _geo_uuidForData:alertID];
        v20 = [v11 stringWithFormat:@"[%@] %@ (%@)", updateTypeString, v16, v19];

        [(MNTraceNavigationEventRecorder *)self _recordEvent:10 description:v20];
      }

      break;
    case 17:
      v6 = [callbackCopy reason] - 1;
      if (v6 > 9)
      {
        v7 = @"Unknown";
      }

      else
      {
        v7 = off_1E842F948[v6];
      }

      [(MNTraceNavigationEventRecorder *)self _recordEvent:3 description:v7];
      traceRecorder = self->_traceRecorder;
      arrivalInfo = [MEMORY[0x1E695DF00] now];
      [(MNTraceRecorder *)traceRecorder setNavigationEndDate:arrivalInfo];
      break;
    default:
      goto LABEL_16;
  }

LABEL_16:
}

- (void)navigationSession:(id)session didReceiveTransitAlert:(id)alert
{
  v5 = [alert description];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:20 description:v5];
}

- (void)navigationSession:(id)session showJunctionView:(id)view
{
  viewCopy = view;
  uniqueID = [viewCopy uniqueID];
  junctionViewID = self->_junctionViewID;
  v7 = uniqueID;
  v8 = junctionViewID;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = [viewCopy description];
      [(MNTraceNavigationEventRecorder *)self _recordEvent:27 description:v11];

      uniqueID2 = [viewCopy uniqueID];
      v13 = self->_junctionViewID;
      self->_junctionViewID = uniqueID2;
    }
  }
}

- (void)navigationSession:(id)session showLaneDirections:(id)directions
{
  directionsCopy = directions;
  uniqueID = [directionsCopy uniqueID];
  laneGuidanceID = self->_laneGuidanceID;
  v7 = uniqueID;
  v8 = laneGuidanceID;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = [directionsCopy description];
      [(MNTraceNavigationEventRecorder *)self _recordEvent:25 description:v11];

      uniqueID2 = [directionsCopy uniqueID];
      v13 = self->_laneGuidanceID;
      self->_laneGuidanceID = uniqueID2;
    }
  }
}

- (void)navigationSession:(id)session updateSignsWithARInfo:(id)info
{
  infoCopy = info;
  v7 = [infoCopy count];
  if (v7 == [(NSArray *)self->_lastARInfos count])
  {
    if ([infoCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSArray *)self->_lastARInfos objectAtIndexedSubscript:v8];
        guidanceEventID = [v9 guidanceEventID];
        v11 = [infoCopy objectAtIndexedSubscript:v8];
        guidanceEventID2 = [v11 guidanceEventID];
        v13 = guidanceEventID;
        v14 = guidanceEventID2;
        if (v13 | v14)
        {
          v15 = v14;
          v16 = [v13 isEqual:v14];

          if ((v16 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        ++v8;
      }

      while (v8 < [infoCopy count]);
    }
  }

  else
  {
LABEL_9:
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__MNTraceNavigationEventRecorder_navigationSession_updateSignsWithARInfo___block_invoke;
    v19[3] = &unk_1E842F7E8;
    v19[4] = self;
    v17 = [infoCopy _geo_map:v19];
    v18 = [v17 componentsJoinedByString:@" /// "];
    [(MNTraceNavigationEventRecorder *)self _recordEvent:29 description:v18];
    objc_storeStrong(&self->_lastARInfos, info);
  }
}

- (void)navigationSession:(id)session updateSignsWithInfo:(id)info
{
  infoCopy = info;
  primarySign = [infoCopy primarySign];
  uniqueID = [primarySign uniqueID];
  currentPrimarySignID = self->_currentPrimarySignID;
  v8 = uniqueID;
  v9 = currentPrimarySignID;
  if (v8 | v9)
  {
    v10 = v9;
    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      primarySign2 = [infoCopy primarySign];
      v13 = [(MNTraceNavigationEventRecorder *)self _stringForSignDescription:primarySign2];

      [(MNTraceNavigationEventRecorder *)self _recordEvent:22 description:v13];
      uniqueID2 = [primarySign uniqueID];
      v15 = self->_currentPrimarySignID;
      self->_currentPrimarySignID = uniqueID2;
    }
  }

  secondarySign = [infoCopy secondarySign];
  uniqueID3 = [secondarySign uniqueID];
  currentSecondarySignID = self->_currentSecondarySignID;
  v19 = uniqueID3;
  v20 = currentSecondarySignID;
  if (v19 | v20)
  {
    v21 = v20;
    v22 = [v19 isEqual:v20];

    if ((v22 & 1) == 0)
    {
      if (secondarySign)
      {
        secondarySign2 = [infoCopy secondarySign];
        v24 = [(MNTraceNavigationEventRecorder *)self _stringForSignDescription:secondarySign2];

        [(MNTraceNavigationEventRecorder *)self _recordEvent:23 description:v24];
      }

      else
      {
        [(MNTraceNavigationEventRecorder *)self _recordEvent:24 description:0];
      }

      uniqueID4 = [secondarySign uniqueID];
      v26 = self->_currentSecondarySignID;
      self->_currentSecondarySignID = uniqueID4;
    }
  }
}

- (void)navigationSession:(id)session didRemoveWaypoint:(id)waypoint
{
  v5 = [(MNTraceNavigationEventRecorder *)self _descriptionForWaypoint:waypoint];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:17 description:v5];
}

- (void)navigationSession:(id)session didInsertWaypoint:(id)waypoint
{
  v5 = [(MNTraceNavigationEventRecorder *)self _descriptionForWaypoint:waypoint];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:16 description:v5];
}

- (void)navigationSession:(id)session didRerouteWithWaypoints:(id)waypoints
{
  v19 = *MEMORY[0x1E69E9840];
  waypointsCopy = waypoints;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(waypointsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = waypointsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(MNTraceNavigationEventRecorder *)self _descriptionForWaypoint:*(*(&v14 + 1) + 8 * v11), v14];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = [v6 componentsJoinedByString:{@", "}];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:15 description:v13];
}

- (void)navigationSession:(id)session didUpdateDestination:(id)destination
{
  v5 = [(MNTraceNavigationEventRecorder *)self _descriptionForWaypoint:destination];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:14 description:v5];
}

- (void)navigationSession:(id)session didUpdateAlternateRoutes:(id)routes
{
  v27 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if ([routesCopy count])
  {
    selfCopy = self;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(routesCopy, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = routesCopy;
    obj = routesCopy;
    v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = MEMORY[0x1E696AEC0];
          route = [v11 route];
          name = [route name];
          route2 = [v11 route];
          uniqueRouteID = [route2 uniqueRouteID];
          v17 = [v12 stringWithFormat:@"%@ (%@)", name, uniqueRouteID];

          [v6 addObject:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    self = selfCopy;
    routesCopy = v20;
  }

  else
  {
    v6 = 0;
  }

  v18 = [v6 componentsJoinedByString:{@", "}];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:13 description:v18];
}

- (void)navigationSession:(id)session didSwitchToNewTransportType:(int)type newRoute:(id)route rerouteReason:(unint64_t)reason
{
  v7 = *&type;
  v20 = MEMORY[0x1E696AEC0];
  routeCopy = route;
  route = [routeCopy route];
  name = [route name];
  if (v7 >= 7)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
  }

  else
  {
    v12 = off_1E842F890[v7];
  }

  capitalizedString = [(__CFString *)v12 capitalizedString];
  if (reason - 1 > 0xF)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_1E842F8C8[reason - 1];
  }

  route2 = [routeCopy route];
  serverRouteID = [route2 serverRouteID];
  route3 = [routeCopy route];

  uniqueRouteID = [route3 uniqueRouteID];
  v21 = [v20 stringWithFormat:@"%@ | ChangedTransportType: %@ | %@ | %@ | %@", name, capitalizedString, v14, serverRouteID, uniqueRouteID];

  [(MNTraceNavigationEventRecorder *)self _recordEvent:12 description:v21];
  previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
  self->_previousSuppressedRerouteError = 0;
}

- (void)navigationSession:(id)session didReroute:(id)reroute withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason
{
  v9 = MEMORY[0x1E696AEC0];
  rerouteCopy = reroute;
  route = [rerouteCopy route];
  name = [route name];
  if (reason - 1 > 0xF)
  {
    v13 = @"Unknown";
  }

  else
  {
    v13 = off_1E842F8C8[reason - 1];
  }

  route2 = [rerouteCopy route];
  serverRouteID = [route2 serverRouteID];
  route3 = [rerouteCopy route];

  uniqueRouteID = [route3 uniqueRouteID];
  v19 = [v9 stringWithFormat:@"%@ | %@ | %@ | %@", name, v13, serverRouteID, uniqueRouteID];

  [(MNTraceNavigationEventRecorder *)self _recordEvent:12 description:v19];
  previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
  self->_previousSuppressedRerouteError = 0;
}

- (void)navigationSession:(id)session didSuppressReroute:(id)reroute
{
  sessionCopy = session;
  rerouteCopy = reroute;
  if (rerouteCopy)
  {
    previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
    if (!previousSuppressedRerouteError || (v8 = -[NSError code](previousSuppressedRerouteError, "code"), v8 != [rerouteCopy code]))
    {
      userInfo = [rerouteCopy userInfo];
      v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A278]];
      [(MNTraceNavigationEventRecorder *)self _recordEvent:11 description:v10];

      objc_storeStrong(&self->_previousSuppressedRerouteError, reroute);
    }
  }
}

- (void)navigationSession:(id)session didUpdateTargetLegIndex:(unint64_t)index
{
  index = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", index];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:8 description:index];
}

- (void)navigationSession:(id)session didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  if (reason - 1 > 5)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E842F860[reason - 1];
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"From waypoint: %d reason: %@", waypoint, index, v7];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:19 description:v8];
}

- (void)navigationSession:(id)session matchedToStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  if (index == -1)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = (index + 1);
  }

  segmentIndex = [MEMORY[0x1E696AEC0] stringWithFormat:@"Step #%d (step index: %d, segment index: %d)", v6, index, segmentIndex];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:7 description:segmentIndex];
}

- (void)navigationSession:(id)session didStartWithRoute:(id)route navigationType:(int64_t)type isResumingMultipointRoute:(BOOL)multipointRoute isReconnecting:(BOOL)reconnecting
{
  reconnectingCopy = reconnecting;
  multipointRouteCopy = multipointRoute;
  route = [route route];
  v23 = route;
  if (reconnectingCopy)
  {
    [(MNTraceNavigationEventRecorder *)self _recordEvent:2 description:0];
  }

  else
  {
    destination = [route destination];
    v13 = MEMORY[0x1E696AD60];
    transportType = [v23 transportType];
    if (transportType >= 7)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType];
    }

    else
    {
      v15 = off_1E842F890[transportType];
    }

    capitalizedString = [(__CFString *)v15 capitalizedString];
    if ((type - 1) > 3)
    {
      v17 = @"None";
    }

    else
    {
      v17 = off_1E842F840[type - 1];
    }

    humanDescriptionWithAddressAndLatLng = [destination humanDescriptionWithAddressAndLatLng];
    name = [v23 name];
    v20 = [v13 stringWithFormat:@"%@ %@ to [%@] via %@", capitalizedString, v17, humanDescriptionWithAddressAndLatLng, name];

    if (multipointRouteCopy)
    {
      [v20 appendFormat:@", isResumingMultipointRoute: %d", 1];
    }

    [(MNTraceNavigationEventRecorder *)self _recordEvent:1 description:v20];
    [(MNTraceNavigationEventRecorder *)self _recordDebugSettings];
    traceRecorder = self->_traceRecorder;
    v22 = [MEMORY[0x1E695DF00] now];
    [(MNTraceRecorder *)traceRecorder setNavigationStartDate:v22];
  }
}

- (void)_didUpdateArrivalInfo:(id)info
{
  infoCopy = info;
  vehicleParkingInfo = [infoCopy vehicleParkingInfo];

  if (vehicleParkingInfo)
  {
    vehicleParkingInfo2 = [infoCopy vehicleParkingInfo];
    walkingRouteDisplayETAInfo = [vehicleParkingInfo2 walkingRouteDisplayETAInfo];

    if (walkingRouteDisplayETAInfo)
    {
      vehicleParkingInfo3 = [infoCopy vehicleParkingInfo];
      walkingRouteDisplayETAInfo2 = [vehicleParkingInfo3 walkingRouteDisplayETAInfo];
      [walkingRouteDisplayETAInfo2 remainingMinutesToEndOfRoute];

      v9 = GEOStringForDuration();
    }

    else
    {
      v9 = @"(none)";
    }

    v13 = MEMORY[0x1E696AEC0];
    arrivalState = [infoCopy arrivalState];
    if (arrivalState > 6)
    {
      v15 = @"MNArrivalState_Unknown";
    }

    else
    {
      v15 = off_1E842F808[arrivalState];
    }

    v16 = [v13 stringWithFormat:@"%@, leg: %d, walking duration: %@", v15, objc_msgSend(infoCopy, "legIndex"), v9];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    arrivalState2 = [infoCopy arrivalState];
    if (arrivalState2 > 6)
    {
      v12 = @"MNArrivalState_Unknown";
    }

    else
    {
      v12 = off_1E842F808[arrivalState2];
    }

    v16 = [v10 stringWithFormat:@"%@, leg: %d", v12, objc_msgSend(infoCopy, "legIndex")];
  }

  [(MNTraceNavigationEventRecorder *)self _recordEvent:18 description:v16];
}

- (id)_descriptionForARInfo:(id)info
{
  infoCopy = info;
  v4 = MEMORY[0x1E696AD60];
  arrowLabel = [infoCopy arrowLabel];
  maneuverType = [infoCopy maneuverType];
  v7 = @"NO_TURN";
  switch(maneuverType)
  {
    case 0:
      break;
    case 1:
      v7 = @"LEFT_TURN";
      break;
    case 2:
      v7 = @"RIGHT_TURN";
      break;
    case 3:
      v7 = @"STRAIGHT_AHEAD";
      break;
    case 4:
      v7 = @"U_TURN";
      break;
    case 5:
      v7 = @"FOLLOW_ROAD";
      break;
    case 6:
      v7 = @"ENTER_ROUNDABOUT";
      break;
    case 7:
      v7 = @"EXIT_ROUNDABOUT";
      break;
    case 11:
      v7 = @"OFF_RAMP";
      break;
    case 12:
      v7 = @"ON_RAMP";
      break;
    case 16:
      v7 = @"ARRIVE_END_OF_NAVIGATION";
      break;
    case 17:
      v7 = @"START_ROUTE";
      break;
    case 18:
      v7 = @"ARRIVE_AT_DESTINATION";
      break;
    case 20:
      v7 = @"KEEP_LEFT";
      break;
    case 21:
      v7 = @"KEEP_RIGHT";
      break;
    case 22:
      v7 = @"ENTER_FERRY";
      break;
    case 23:
      v7 = @"EXIT_FERRY";
      break;
    case 24:
      v7 = @"CHANGE_FERRY";
      break;
    case 25:
      v7 = @"START_ROUTE_WITH_U_TURN";
      break;
    case 26:
      v7 = @"U_TURN_AT_ROUNDABOUT";
      break;
    case 27:
      v7 = @"LEFT_TURN_AT_END";
      break;
    case 28:
      v7 = @"RIGHT_TURN_AT_END";
      break;
    case 29:
      v7 = @"HIGHWAY_OFF_RAMP_LEFT";
      break;
    case 30:
      v7 = @"HIGHWAY_OFF_RAMP_RIGHT";
      break;
    case 33:
      v7 = @"ARRIVE_AT_DESTINATION_LEFT";
      break;
    case 34:
      v7 = @"ARRIVE_AT_DESTINATION_RIGHT";
      break;
    case 35:
      v7 = @"U_TURN_WHEN_POSSIBLE";
      break;
    case 39:
      v7 = @"ARRIVE_END_OF_DIRECTIONS";
      break;
    case 41:
      v7 = @"ROUNDABOUT_EXIT_1";
      break;
    case 42:
      v7 = @"ROUNDABOUT_EXIT_2";
      break;
    case 43:
      v7 = @"ROUNDABOUT_EXIT_3";
      break;
    case 44:
      v7 = @"ROUNDABOUT_EXIT_4";
      break;
    case 45:
      v7 = @"ROUNDABOUT_EXIT_5";
      break;
    case 46:
      v7 = @"ROUNDABOUT_EXIT_6";
      break;
    case 47:
      v7 = @"ROUNDABOUT_EXIT_7";
      break;
    case 48:
      v7 = @"ROUNDABOUT_EXIT_8";
      break;
    case 49:
      v7 = @"ROUNDABOUT_EXIT_9";
      break;
    case 50:
      v7 = @"ROUNDABOUT_EXIT_10";
      break;
    case 51:
      v7 = @"ROUNDABOUT_EXIT_11";
      break;
    case 52:
      v7 = @"ROUNDABOUT_EXIT_12";
      break;
    case 53:
      v7 = @"ROUNDABOUT_EXIT_13";
      break;
    case 54:
      v7 = @"ROUNDABOUT_EXIT_14";
      break;
    case 55:
      v7 = @"ROUNDABOUT_EXIT_15";
      break;
    case 56:
      v7 = @"ROUNDABOUT_EXIT_16";
      break;
    case 57:
      v7 = @"ROUNDABOUT_EXIT_17";
      break;
    case 58:
      v7 = @"ROUNDABOUT_EXIT_18";
      break;
    case 59:
      v7 = @"ROUNDABOUT_EXIT_19";
      break;
    case 60:
      v7 = @"SHARP_LEFT_TURN";
      break;
    case 61:
      v7 = @"SHARP_RIGHT_TURN";
      break;
    case 62:
      v7 = @"SLIGHT_LEFT_TURN";
      break;
    case 63:
      v7 = @"SLIGHT_RIGHT_TURN";
      break;
    case 64:
      v7 = @"CHANGE_HIGHWAY";
      break;
    case 65:
      v7 = @"CHANGE_HIGHWAY_LEFT";
      break;
    case 66:
      v7 = @"CHANGE_HIGHWAY_RIGHT";
      break;
    case 80:
      v7 = @"TOLL_STATION";
      break;
    case 81:
      v7 = @"ENTER_TUNNEL";
      break;
    case 82:
      v7 = @"WAYPOINT_STOP";
      break;
    case 83:
      v7 = @"WAYPOINT_STOP_LEFT";
      break;
    case 84:
      v7 = @"WAYPOINT_STOP_RIGHT";
      break;
    case 85:
      v7 = @"RESUME_ROUTE";
      break;
    case 86:
      v7 = @"RESUME_ROUTE_WITH_U_TURN";
      break;
    case 87:
      v7 = @"CUSTOM";
      break;
    case 88:
      v7 = @"TURN_AROUND";
      break;
    default:
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", maneuverType];
      break;
  }

  v8 = [v4 stringWithFormat:@"[%@ | %@]", arrowLabel, v7];

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  [infoCopy locationCoordinate];
  if (fabs(v11) <= 180.0 && v10 >= -90.0 && v10 <= 90.0)
  {
    v12 = MEMORY[0x1E696AEC0];
    [infoCopy locationCoordinate];
    v14 = v13;
    [infoCopy locationCoordinate];
    v16 = v15;
    [infoCopy locationCoordinate];
    v18 = [v12 stringWithFormat:@"%f, %f | %dm", v14, v16, v17];
    [v9 addObject:v18];
  }

  [infoCopy heading];
  if (v19 >= 0.0)
  {
    v20 = MEMORY[0x1E696AEC0];
    [infoCopy heading];
    LODWORD(v22) = llround(v21);
    v23 = [v20 stringWithFormat:@"%d°", v22];
    [v9 addObject:v23];
  }

  if ([v9 count])
  {
    v24 = [v9 componentsJoinedByString:@" | "];
    [v8 appendFormat:@" (%@)", v24];
  }

  return v8;
}

- (id)_stringForSignDescription:(id)description
{
  descriptionCopy = description;
  string = [MEMORY[0x1E696AD60] string];
  junction = [descriptionCopy junction];

  if (junction)
  {
    junction2 = [descriptionCopy junction];
    maneuverType = [junction2 maneuverType];
    v8 = @"NO_TURN";
    switch(maneuverType)
    {
      case 0:
        break;
      case 1:
        v8 = @"LEFT_TURN";
        break;
      case 2:
        v8 = @"RIGHT_TURN";
        break;
      case 3:
        v8 = @"STRAIGHT_AHEAD";
        break;
      case 4:
        v8 = @"U_TURN";
        break;
      case 5:
        v8 = @"FOLLOW_ROAD";
        break;
      case 6:
        v8 = @"ENTER_ROUNDABOUT";
        break;
      case 7:
        v8 = @"EXIT_ROUNDABOUT";
        break;
      case 11:
        v8 = @"OFF_RAMP";
        break;
      case 12:
        v8 = @"ON_RAMP";
        break;
      case 16:
        v8 = @"ARRIVE_END_OF_NAVIGATION";
        break;
      case 17:
        v8 = @"START_ROUTE";
        break;
      case 18:
        v8 = @"ARRIVE_AT_DESTINATION";
        break;
      case 20:
        v8 = @"KEEP_LEFT";
        break;
      case 21:
        v8 = @"KEEP_RIGHT";
        break;
      case 22:
        v8 = @"ENTER_FERRY";
        break;
      case 23:
        v8 = @"EXIT_FERRY";
        break;
      case 24:
        v8 = @"CHANGE_FERRY";
        break;
      case 25:
        v8 = @"START_ROUTE_WITH_U_TURN";
        break;
      case 26:
        v8 = @"U_TURN_AT_ROUNDABOUT";
        break;
      case 27:
        v8 = @"LEFT_TURN_AT_END";
        break;
      case 28:
        v8 = @"RIGHT_TURN_AT_END";
        break;
      case 29:
        v8 = @"HIGHWAY_OFF_RAMP_LEFT";
        break;
      case 30:
        v8 = @"HIGHWAY_OFF_RAMP_RIGHT";
        break;
      case 33:
        v8 = @"ARRIVE_AT_DESTINATION_LEFT";
        break;
      case 34:
        v8 = @"ARRIVE_AT_DESTINATION_RIGHT";
        break;
      case 35:
        v8 = @"U_TURN_WHEN_POSSIBLE";
        break;
      case 39:
        v8 = @"ARRIVE_END_OF_DIRECTIONS";
        break;
      case 41:
        v8 = @"ROUNDABOUT_EXIT_1";
        break;
      case 42:
        v8 = @"ROUNDABOUT_EXIT_2";
        break;
      case 43:
        v8 = @"ROUNDABOUT_EXIT_3";
        break;
      case 44:
        v8 = @"ROUNDABOUT_EXIT_4";
        break;
      case 45:
        v8 = @"ROUNDABOUT_EXIT_5";
        break;
      case 46:
        v8 = @"ROUNDABOUT_EXIT_6";
        break;
      case 47:
        v8 = @"ROUNDABOUT_EXIT_7";
        break;
      case 48:
        v8 = @"ROUNDABOUT_EXIT_8";
        break;
      case 49:
        v8 = @"ROUNDABOUT_EXIT_9";
        break;
      case 50:
        v8 = @"ROUNDABOUT_EXIT_10";
        break;
      case 51:
        v8 = @"ROUNDABOUT_EXIT_11";
        break;
      case 52:
        v8 = @"ROUNDABOUT_EXIT_12";
        break;
      case 53:
        v8 = @"ROUNDABOUT_EXIT_13";
        break;
      case 54:
        v8 = @"ROUNDABOUT_EXIT_14";
        break;
      case 55:
        v8 = @"ROUNDABOUT_EXIT_15";
        break;
      case 56:
        v8 = @"ROUNDABOUT_EXIT_16";
        break;
      case 57:
        v8 = @"ROUNDABOUT_EXIT_17";
        break;
      case 58:
        v8 = @"ROUNDABOUT_EXIT_18";
        break;
      case 59:
        v8 = @"ROUNDABOUT_EXIT_19";
        break;
      case 60:
        v8 = @"SHARP_LEFT_TURN";
        break;
      case 61:
        v8 = @"SHARP_RIGHT_TURN";
        break;
      case 62:
        v8 = @"SLIGHT_LEFT_TURN";
        break;
      case 63:
        v8 = @"SLIGHT_RIGHT_TURN";
        break;
      case 64:
        v8 = @"CHANGE_HIGHWAY";
        break;
      case 65:
        v8 = @"CHANGE_HIGHWAY_LEFT";
        break;
      case 66:
        v8 = @"CHANGE_HIGHWAY_RIGHT";
        break;
      case 80:
        v8 = @"TOLL_STATION";
        break;
      case 81:
        v8 = @"ENTER_TUNNEL";
        break;
      case 82:
        v8 = @"WAYPOINT_STOP";
        break;
      case 83:
        v8 = @"WAYPOINT_STOP_LEFT";
        break;
      case 84:
        v8 = @"WAYPOINT_STOP_RIGHT";
        break;
      case 85:
        v8 = @"RESUME_ROUTE";
        break;
      case 86:
        v8 = @"RESUME_ROUTE_WITH_U_TURN";
        break;
      case 87:
        v8 = @"CUSTOM";
        break;
      case 88:
        v8 = @"TURN_AROUND";
        break;
      default:
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", maneuverType];
        break;
    }

    capitalizedString = [(__CFString *)v8 capitalizedString];
    v10 = [capitalizedString stringByReplacingOccurrencesOfString:@"_" withString:&stru_1F4EB6B70];

    [string appendFormat:@"(%@)", v10];
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  primaryStrings = [descriptionCopy primaryStrings];
  firstObject = [primaryStrings firstObject];

  v14 = [firstObject optionsWithArgumentHandler:&__block_literal_global_13742];
  v15 = [firstObject stringWithOptions:v14];
  if (v15)
  {
    [v11 addObject:v15];
  }

  secondaryStrings = [descriptionCopy secondaryStrings];
  firstObject2 = [secondaryStrings firstObject];

  v18 = [firstObject2 optionsWithArgumentHandler:&__block_literal_global_49_13743];
  [v18 setCreateAttributedString:1];
  v19 = [firstObject2 stringWithOptions:v18];
  if (v19)
  {
    [v11 addObject:v19];
  }

  v20 = [v11 componentsJoinedByString:@" | "];
  [string appendFormat:@" %@", v20];

  return string;
}

void __60__MNTraceNavigationEventRecorder__stringForSignDescription___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 artworkFormat];
  [v3 setAttributedStringHandler:&__block_literal_global_52_13748];

  v4 = [v2 distanceFormat];

  [v4 setFormatOptions:1];
}

id __60__MNTraceNavigationEventRecorder__stringForSignDescription___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", a4];
  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];

  return v5;
}

void __60__MNTraceNavigationEventRecorder__stringForSignDescription___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 distanceFormat];
  [v2 setFormatOptions:1];
}

- (id)_descriptionForWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  geoMapItem = [waypointCopy geoMapItem];
  if (geoMapItem && (v5 = geoMapItem, [waypointCopy geoMapItem], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "contactAddressType"), v6, v5, v7))
  {
    v8 = MEMORY[0x1E696AEC0];
    navDisplayName = [waypointCopy navDisplayNameWithSpecialContacts:0];
    navDisplayAddress2 = [waypointCopy navDisplayNameWithSpecialContacts:1];
    navDisplayAddress = [waypointCopy navDisplayAddress];
    v12 = [v8 stringWithFormat:@"%@ (%@) | %@", navDisplayName, navDisplayAddress2, navDisplayAddress];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    navDisplayName = [waypointCopy navDisplayName];
    navDisplayAddress2 = [waypointCopy navDisplayAddress];
    v12 = [v13 stringWithFormat:@"%@ | %@", navDisplayName, navDisplayAddress2];
  }

  return v12;
}

- (void)_userWentOffRoute
{
  state = [(MNLocation *)self->_lastMatchedLocation state];
  if (state == 2)
  {
    v4 = @"on road";
  }

  else
  {
    if (state)
    {
      return;
    }

    v4 = @"off road";
  }

  [(MNTraceNavigationEventRecorder *)self _recordEvent:6 description:v4];
}

- (void)_userGotOnRoute
{
  [(MNTraceNavigationEventRecorder *)self _recordEvent:5 description:0];
  previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
  self->_previousSuppressedRerouteError = 0;
}

- (void)_recordEvent:(int64_t)event description:(id)description
{
  v17 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (event > 0x1F)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_1E842B208[event];
    }

    v9 = v8;
    v10 = v9;
    if (descriptionCopy)
    {
      v11 = descriptionCopy;
    }

    else
    {
      v11 = &stru_1F4EB6B70;
    }

    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "Recording event [%@] %@", &v13, 0x16u);
  }

  if (descriptionCopy)
  {
    v12 = descriptionCopy;
  }

  else
  {
    v12 = &stru_1F4EB6B70;
  }

  [(MNTraceRecorder *)self->_traceRecorder recordNavigationEvent:event description:v12];
}

- (void)_recordDebugSettings
{
  v88 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (_GEOConfigHasValue())
  {
    v82 = MEMORY[0x1E69E9820];
    v83 = 3221225472;
    v84 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke;
    v85 = &unk_1E842F6F0;
    v86 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v77 = MEMORY[0x1E69E9820];
    v78 = 3221225472;
    v79 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_2;
    v80 = &unk_1E842F6F0;
    v81 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v72 = MEMORY[0x1E69E9820];
    v73 = 3221225472;
    v74 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_3;
    v75 = &unk_1E842F6F0;
    v76 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v67 = MEMORY[0x1E69E9820];
    v68 = 3221225472;
    v69 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_4;
    v70 = &unk_1E842F6F0;
    v71 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v62 = MEMORY[0x1E69E9820];
    v63 = 3221225472;
    v64 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_5;
    v65 = &unk_1E842F6F0;
    v66 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_6;
    v60 = &unk_1E842F6F0;
    v61 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v52 = MEMORY[0x1E69E9820];
    v53 = 3221225472;
    v54 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_7;
    v55 = &unk_1E842F6F0;
    v56 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_8;
    v50 = &unk_1E842F6F0;
    v51 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_9;
    v45 = &unk_1E842F6F0;
    v46 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_10;
    v40 = &unk_1E842F6F0;
    v41 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_11;
    v35 = &unk_1E842F6F0;
    v36 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_12;
    v30 = &unk_1E842F6F0;
    v31 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_13;
    v25 = &unk_1E842F6F0;
    v26 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_14;
    v20 = &unk_1E842F6F0;
    v21 = dictionary;
    GEOConfigGetPropertiesForKey();
  }

  allKeys = [dictionary allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v87 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [dictionary objectForKeyedSubscript:{v11, v13}];
        [(MNTraceRecorder *)self->_traceRecorder recordDebugSetting:v11 settingValue:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v87 count:16];
    }

    while (v8);
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_9(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_11(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_12(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_13(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

- (void)setLastMatchedLocation:(id)location
{
  locationCopy = location;
  lastMatchedLocation = self->_lastMatchedLocation;
  v11 = locationCopy;
  if (lastMatchedLocation)
  {
    state = [(MNLocation *)lastMatchedLocation state];
    locationCopy = v11;
    v8 = state == 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [locationCopy state] == 1;
  objc_storeStrong(&self->_lastMatchedLocation, location);
  v10 = v11;
  if (v8 != v9)
  {
    if ([v11 state] == 1)
    {
      [(MNTraceNavigationEventRecorder *)self _userGotOnRoute];
    }

    else
    {
      [(MNTraceNavigationEventRecorder *)self _userWentOffRoute];
    }

    v10 = v11;
  }
}

- (void)dealloc
{
  notify_cancel(self->_sysdiagnoseStartedToken);
  v3.receiver = self;
  v3.super_class = MNTraceNavigationEventRecorder;
  [(MNTraceNavigationEventRecorder *)&v3 dealloc];
}

- (MNTraceNavigationEventRecorder)initWithTraceRecorder:(id)recorder
{
  recorderCopy = recorder;
  if (recorderCopy && (v13.receiver = self, v13.super_class = MNTraceNavigationEventRecorder, v6 = [(MNTraceNavigationEventRecorder *)&v13 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_traceRecorder, recorder);
    objc_initWeak(&location, self);
    v7 = dispatch_get_global_queue(21, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__MNTraceNavigationEventRecorder_initWithTraceRecorder___block_invoke;
    v10[3] = &unk_1E8430E58;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.sysdiagnose.sysdiagnoseStarted", &self->_sysdiagnoseStartedToken, v7, v10);

    self = self;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __56__MNTraceNavigationEventRecorder_initWithTraceRecorder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _recordEvent:30 description:0];
}

@end