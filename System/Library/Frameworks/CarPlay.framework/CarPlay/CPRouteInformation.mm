@interface CPRouteInformation
- (CPRouteInformation)initWithManeuvers:(id)maneuvers laneGuidances:(id)guidances currentManeuvers:(id)currentManeuvers currentLaneGuidance:(id)guidance tripTravelEstimates:(id)estimates maneuverTravelEstimates:(id)travelEstimates;
- (id)routeInfoWithAccNavSupported:(BOOL)supported roadNameVariants:(id)variants destinationNameVariants:(id)nameVariants timeZoneOffset:(signed __int16)offset;
@end

@implementation CPRouteInformation

- (CPRouteInformation)initWithManeuvers:(id)maneuvers laneGuidances:(id)guidances currentManeuvers:(id)currentManeuvers currentLaneGuidance:(id)guidance tripTravelEstimates:(id)estimates maneuverTravelEstimates:(id)travelEstimates
{
  maneuversCopy = maneuvers;
  guidancesCopy = guidances;
  currentManeuversCopy = currentManeuvers;
  guidanceCopy = guidance;
  estimatesCopy = estimates;
  travelEstimatesCopy = travelEstimates;
  v24.receiver = self;
  v24.super_class = CPRouteInformation;
  v18 = [(CPRouteInformation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_maneuvers, maneuvers);
    objc_storeStrong(&v19->_laneGuidances, guidances);
    objc_storeStrong(&v19->_currentManeuvers, currentManeuvers);
    objc_storeStrong(&v19->_currentLaneGuidance, guidance);
    objc_storeStrong(&v19->_tripTravelEstimates, estimates);
    objc_storeStrong(&v19->_maneuverTravelEstimates, travelEstimates);
  }

  return v19;
}

- (id)routeInfoWithAccNavSupported:(BOOL)supported roadNameVariants:(id)variants destinationNameVariants:(id)nameVariants timeZoneOffset:(signed __int16)offset
{
  offsetCopy = offset;
  supportedCopy = supported;
  variantsCopy = variants;
  nameVariantsCopy = nameVariants;
  v12 = objc_opt_new();
  currentManeuvers = [(CPRouteInformation *)self currentManeuvers];
  [v12 setCurrentManeuvers:currentManeuvers];

  currentLaneGuidance = [(CPRouteInformation *)self currentLaneGuidance];
  [v12 setCurrentLaneGuidance:currentLaneGuidance];

  if (supportedCopy)
  {
    [v12 setGuidanceState:1];
    tripTravelEstimates = [(CPRouteInformation *)self tripTravelEstimates];
    distanceRemaining = [tripTravelEstimates distanceRemaining];
    [v12 setDistanceRemaining:distanceRemaining];

    tripTravelEstimates2 = [(CPRouteInformation *)self tripTravelEstimates];
    distanceRemainingToDisplay = [tripTravelEstimates2 distanceRemainingToDisplay];
    [v12 setDistanceRemainingDisplay:distanceRemainingToDisplay];

    tripTravelEstimates3 = [(CPRouteInformation *)self tripTravelEstimates];
    [tripTravelEstimates3 timeRemaining];
    [v12 setTimeRemaining:?];

    v20 = MEMORY[0x277CBEAA8];
    tripTravelEstimates4 = [(CPRouteInformation *)self tripTravelEstimates];
    [tripTravelEstimates4 timeRemaining];
    v22 = [v20 dateWithTimeIntervalSinceNow:?];
    [v12 setEstimatedTimeOfArrival:v22];

    maneuverTravelEstimates = [(CPRouteInformation *)self maneuverTravelEstimates];
    distanceRemaining2 = [maneuverTravelEstimates distanceRemaining];
    [v12 setDistanceRemainingToNextManeuver:distanceRemaining2];

    maneuverTravelEstimates2 = [(CPRouteInformation *)self maneuverTravelEstimates];
    distanceRemainingToDisplay2 = [maneuverTravelEstimates2 distanceRemainingToDisplay];
    [v12 setDistanceRemainingToNextManeuverDisplay:distanceRemainingToDisplay2];

    [v12 setCurrentRoadNameVariants:variantsCopy];
    [v12 setDestinationNameVariants:nameVariantsCopy];
    [v12 setSourceSupportsRouteGuidance:1];
    [v12 setDestinationTimeZoneOffsetMinutes:offsetCopy];
    currentLaneGuidance2 = [(CPRouteInformation *)self currentLaneGuidance];
    [v12 setLaneGuidanceShowing:currentLaneGuidance2 != 0];
  }

  v28 = [CPRouteInfo alloc];
  maneuvers = [(CPRouteInformation *)self maneuvers];
  laneGuidances = [(CPRouteInformation *)self laneGuidances];
  v31 = [(CPRouteInfo *)v28 initWithRouteGuidance:v12 maneuvers:maneuvers laneGuidances:laneGuidances];

  return v31;
}

@end