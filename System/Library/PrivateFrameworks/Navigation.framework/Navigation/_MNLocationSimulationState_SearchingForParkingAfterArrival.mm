@interface _MNLocationSimulationState_SearchingForParkingAfterArrival
- (double)_scoreForRoad:(id)road coordinate:(id)coordinate;
- (void)_handleReachedParkingLocation;
@end

@implementation _MNLocationSimulationState_SearchingForParkingAfterArrival

- (void)_handleReachedParkingLocation
{
  if (GEOConfigGetInteger() == 3)
  {
    v6 = objc_alloc_init(_MNLocationSimulationState_ReturnToDestination);
  }

  else
  {
    v3 = [_MNLocationSimulationState_WaitingAtWaypoint alloc];
    data = [(_MNLocationSimulationState *)self data];
    [data currentTime];
    v6 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v3 waitDuration:"initWithStartTime:waitDuration:"];
  }

  delegate = [(_MNLocationSimulationState *)self delegate];
  [delegate changeState:v6];
}

- (double)_scoreForRoad:(id)road coordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  roadCopy = road;
  internalRoadName = [roadCopy internalRoadName];

  v8 = 0.0;
  if (internalRoadName)
  {
    if ([roadCopy roadClass] != 9)
    {
      coordinates3d = [roadCopy coordinates3d];
      coordinateCount = [roadCopy coordinateCount];
      v11 = coordinates3d + 24 * coordinateCount;
      v17.var2 = *(v11 - 24);
      v19.var0 = *(v11 - 16);
      v17.var0 = var0;
      v17.var1 = var1;
      v13 = GEOCalculateDistance(coordinateCount, v12, v17, v19);
      if (v13 <= 300.0)
      {
        if ([roadCopy travelDirection] != 1 || (v14 = objc_msgSend(roadCopy, "coordinates3d"), *&v18.var2 = v14->super.isa, v20.var0 = v14->_toleranceMeters, v18.var0 = var0, v18.var1 = var1, GEOCalculateDistance(v14, v15, v18, v20) < v13))
        {
          v8 = v13;
        }
      }
    }
  }

  return v8;
}

@end