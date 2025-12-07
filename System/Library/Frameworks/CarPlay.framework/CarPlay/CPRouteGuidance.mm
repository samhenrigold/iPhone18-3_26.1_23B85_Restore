@interface CPRouteGuidance
+ (NSArray)accNavParameters;
+ (NSDictionary)accNavParameterKeysIndexed;
+ (NSDictionary)accNavParametersIndexed;
- (CPRouteGuidance)init;
- (CPRouteGuidance)initWithCoder:(id)coder;
- (CPRouteGuidance)routeGuidanceWithComponent:(id)component;
- (CPTravelEstimates)maneuverTravelEstimates;
- (CPTravelEstimates)tripTravelEstimates;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrentLaneGuidance:(id)guidance;
- (void)setCurrentLaneGuidanceIndex:(unsigned __int16)index;
- (void)setCurrentManeuverIndexes:(id)indexes;
- (void)setCurrentManeuvers:(id)maneuvers;
@end

@implementation CPRouteGuidance

- (CPRouteGuidance)init
{
  v4.receiver = self;
  v4.super_class = CPRouteGuidance;
  v2 = [(CPRouteGuidance *)&v4 init];
  if (v2)
  {
    [CPAccNavUpdate resetUpdate:v2];
  }

  return v2;
}

+ (NSArray)accNavParameters
{
  if (accNavParameters_onceToken_2 != -1)
  {
    +[CPRouteGuidance(CPAccNavUpdate) accNavParameters];
  }

  v3 = accNavParameters__accNavParameters_2;

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPRouteGuidance;
  v4 = [(CPRouteGuidance *)&v8 description];
  v5 = [CPAccNavUpdate description:self];
  v6 = [v3 stringWithFormat:@"%@ {\n%@\n}", v4, v5];

  return v6;
}

- (CPRouteGuidance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPRouteGuidance;
  v5 = [(CPRouteGuidance *)&v8 init];
  if (v5)
  {
    [CPAccNavUpdate decodeUpdate:v5 withCoder:coderCopy];
    [coderCopy decodeDoubleForKey:@"kCPRouteGuidanceTimeRemainingToNextManeuver"];
    v5->_timeRemainingToNextManeuver = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [CPAccNavUpdate encodeUpdate:self withCoder:coderCopy];
  [(CPRouteGuidance *)self timeRemainingToNextManeuver];
  [coderCopy encodeDouble:@"kCPRouteGuidanceTimeRemainingToNextManeuver" forKey:?];
}

- (void)setCurrentManeuvers:(id)maneuvers
{
  maneuversCopy = maneuvers;
  v5 = [(NSArray *)maneuversCopy valueForKey:@"index"];
  currentManeuverIndexes = self->_currentManeuverIndexes;
  self->_currentManeuverIndexes = v5;

  currentManeuvers = self->_currentManeuvers;
  self->_currentManeuvers = maneuversCopy;
}

- (void)setCurrentManeuverIndexes:(id)indexes
{
  objc_storeStrong(&self->_currentManeuverIndexes, indexes);
  indexesCopy = indexes;
  currentManeuvers = self->_currentManeuvers;
  self->_currentManeuvers = 0;
}

- (void)setCurrentLaneGuidance:(id)guidance
{
  guidanceCopy = guidance;
  self->_currentLaneGuidanceIndex = [(CPLaneGuidance *)guidanceCopy index];
  currentLaneGuidance = self->_currentLaneGuidance;
  self->_currentLaneGuidance = guidanceCopy;
}

- (void)setCurrentLaneGuidanceIndex:(unsigned __int16)index
{
  self->_currentLaneGuidanceIndex = index;
  currentLaneGuidance = self->_currentLaneGuidance;
  self->_currentLaneGuidance = 0;
  MEMORY[0x2821F96F8](self, currentLaneGuidance);
}

- (CPTravelEstimates)maneuverTravelEstimates
{
  v3 = [CPTravelEstimates alloc];
  distanceRemainingToNextManeuver = [(CPRouteGuidance *)self distanceRemainingToNextManeuver];
  distanceRemainingToNextManeuverDisplay = [(CPRouteGuidance *)self distanceRemainingToNextManeuverDisplay];
  [(CPRouteGuidance *)self timeRemainingToNextManeuver];
  v6 = [(CPTravelEstimates *)v3 initWithDistanceRemaining:distanceRemainingToNextManeuver distanceRemainingToDisplay:distanceRemainingToNextManeuverDisplay timeRemaining:?];

  return v6;
}

- (CPTravelEstimates)tripTravelEstimates
{
  v3 = [CPTravelEstimates alloc];
  distanceRemaining = [(CPRouteGuidance *)self distanceRemaining];
  distanceRemainingDisplay = [(CPRouteGuidance *)self distanceRemainingDisplay];
  [(CPRouteGuidance *)self timeRemaining];
  v6 = [(CPTravelEstimates *)v3 initWithDistanceRemaining:distanceRemaining distanceRemainingToDisplay:distanceRemainingDisplay timeRemaining:?];

  return v6;
}

void __51__CPRouteGuidance_CPAccNavUpdate__accNavParameters__block_invoke()
{
  v147[22] = *MEMORY[0x277D85DE8];
  v122 = NSStringFromSelector(sel_componentID);
  v124 = [CPAccNavParamKey paramKey:0];
  v123 = [v124 copySettingIsIntegerValue:1];
  v146 = v123;
  v121 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  v120 = [CPAccNavParam paramWithProperty:v122 keys:v121];
  v147[0] = v120;
  v117 = NSStringFromSelector(sel_guidanceState);
  v119 = [CPAccNavParamKey paramKey:1];
  v118 = [v119 copySettingEnumType:6];
  v145 = v118;
  v116 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
  v115 = [CPAccNavParam paramWithProperty:v117 keys:v116];
  v147[1] = v115;
  v112 = NSStringFromSelector(sel_maneuverState);
  v114 = [CPAccNavParamKey paramKey:2];
  v113 = [v114 copySettingEnumType:7];
  v144 = v113;
  v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
  v110 = [CPAccNavParam paramWithProperty:v112 keys:v111];
  v147[2] = v110;
  v107 = NSStringFromSelector(sel_currentRoadNameVariants);
  v109 = [CPAccNavParamKey paramKey:3];
  v108 = [v109 copySettingHasVariants:1];
  v143 = v108;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
  v105 = [CPAccNavParam paramWithProperty:v107 keys:v106];
  v104 = [v105 copySettingCollectionGeneric:objc_opt_class()];
  v147[3] = v104;
  v101 = NSStringFromSelector(sel_destinationNameVariants);
  v103 = [CPAccNavParamKey paramKey:4];
  v102 = [v103 copySettingHasVariants:1];
  v142 = v102;
  v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
  v99 = [CPAccNavParam paramWithProperty:v101 keys:v100];
  v98 = [v99 copySettingCollectionGeneric:objc_opt_class()];
  v147[4] = v98;
  v96 = NSStringFromSelector(sel_estimatedTimeOfArrival);
  v97 = [CPAccNavParamKey paramKey:5];
  v141 = v97;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
  v94 = [CPAccNavParam paramWithProperty:v96 keys:v95];
  v147[5] = v94;
  v91 = NSStringFromSelector(sel_timeRemaining);
  v93 = [CPAccNavParamKey paramKey:6];
  v92 = [v93 copySettingIsTimeIntervalValue:1];
  v140 = v92;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
  v89 = [CPAccNavParam paramWithProperty:v91 keys:v90];
  v147[6] = v89;
  v85 = NSStringFromSelector(sel_distanceRemaining);
  v88 = [CPAccNavParamKey paramKey:7];
  v87 = [MEMORY[0x277CCAE20] meters];
  v86 = [v88 copySettingDimension:v87];
  v139 = v86;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
  v83 = [CPAccNavParam paramWithProperty:v85 keys:v84];
  v147[7] = v83;
  v79 = NSStringFromSelector(sel_distanceRemainingDisplay);
  v82 = [CPAccNavParamKey paramKey:8];
  v138[0] = v82;
  v81 = [CPAccNavParamKey paramKey:9];
  v80 = [v81 copySettingEnumType:5];
  v138[1] = v80;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:2];
  v77 = [CPAccNavParam paramWithProperty:v79 keys:v78];
  v147[8] = v77;
  v73 = NSStringFromSelector(sel_distanceRemainingToNextManeuver);
  v76 = [CPAccNavParamKey paramKey:10];
  v75 = [MEMORY[0x277CCAE20] meters];
  v74 = [v76 copySettingDimension:v75];
  v137 = v74;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
  v71 = [CPAccNavParam paramWithProperty:v73 keys:v72];
  v147[9] = v71;
  v67 = NSStringFromSelector(sel_distanceRemainingToNextManeuverDisplay);
  v70 = [CPAccNavParamKey paramKey:11];
  v136[0] = v70;
  v69 = [CPAccNavParamKey paramKey:12];
  v68 = [v69 copySettingEnumType:5];
  v136[1] = v68;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:2];
  v65 = [CPAccNavParam paramWithProperty:v67 keys:v66];
  v147[10] = v65;
  v62 = NSStringFromSelector(sel_currentManeuverIndexes);
  v64 = [CPAccNavParamKey paramKey:13];
  v63 = [v64 copySettingAccNavType:9];
  v135 = v63;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
  v60 = [CPAccNavParam paramWithProperty:v62 keys:v61];
  v59 = [v60 copySettingCollectionGeneric:objc_opt_class()];
  v147[11] = v59;
  v56 = NSStringFromSelector(sel_totalManeuverCount);
  v58 = [CPAccNavParamKey paramKey:14];
  v57 = [v58 copySettingIsIntegerValue:1];
  v134 = v57;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
  v54 = [CPAccNavParam paramWithProperty:v56 keys:v55];
  v147[12] = v54;
  v51 = NSStringFromSelector(sel_beingShownInApp);
  v53 = [CPAccNavParamKey paramKey:15];
  v52 = [v53 copySettingIsBoolValue:1];
  v133 = v52;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
  v49 = [CPAccNavParam paramWithProperty:v51 keys:v50];
  v147[13] = v49;
  v46 = NSStringFromSelector(sel_currentLaneGuidanceIndex);
  v48 = [CPAccNavParamKey paramKey:16];
  v47 = [v48 copySettingIsIntegerValue:1];
  v132 = v47;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
  v44 = [CPAccNavParam paramWithProperty:v46 keys:v45];
  v147[14] = v44;
  v41 = NSStringFromSelector(sel_totalLaneGuidanceCount);
  v43 = [CPAccNavParamKey paramKey:17];
  v42 = [v43 copySettingIsIntegerValue:1];
  v131 = v42;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
  v39 = [CPAccNavParam paramWithProperty:v41 keys:v40];
  v147[15] = v39;
  v36 = NSStringFromSelector(sel_laneGuidanceShowing);
  v38 = [CPAccNavParamKey paramKey:18];
  v37 = [v38 copySettingIsBoolValue:1];
  v130 = v37;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
  v34 = [CPAccNavParam paramWithProperty:v36 keys:v35];
  v147[16] = v34;
  v32 = NSStringFromSelector(sel_sourceName);
  v33 = [CPAccNavParamKey paramKey:19];
  v129 = v33;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
  v30 = [CPAccNavParam paramWithProperty:v32 keys:v31];
  v147[17] = v30;
  v27 = NSStringFromSelector(sel_sourceSupportsRouteGuidance);
  v29 = [CPAccNavParamKey paramKey:20];
  v28 = [v29 copySettingIsBoolValue:1];
  v128 = v28;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
  v25 = [CPAccNavParam paramWithProperty:v27 keys:v26];
  v147[18] = v25;
  v22 = NSStringFromSelector(sel_destinationTimeZoneOffsetMinutes);
  v24 = [CPAccNavParamKey paramKey:21];
  v23 = [v24 copySettingIsIntegerValue:1];
  v127 = v23;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
  v20 = [CPAccNavParam paramWithProperty:v22 keys:v21];
  v147[19] = v20;
  v17 = NSStringFromSelector(sel_stopType);
  v19 = [CPAccNavParamKey paramKey:22];
  v18 = [v19 copySettingEnumType:8];
  v126 = v18;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
  v15 = [CPAccNavParam paramWithProperty:v17 keys:v16];
  v147[20] = v15;
  v11 = NSStringFromSelector(sel_electricVehicleDestination);
  v14 = [CPAccNavParamKey paramKey:23];
  v125[0] = v14;
  v13 = [CPAccNavParamKey paramKey:24];
  v12 = [MEMORY[0x277CCADF8] wattHours];
  v0 = [v13 copySettingDimension:v12];
  v125[1] = v0;
  v1 = [CPAccNavParamKey paramKey:25];
  v2 = [MEMORY[0x277CCADF8] wattHours];
  v3 = [v1 copySettingDimension:v2];
  v125[2] = v3;
  v4 = [CPAccNavParamKey paramKey:26];
  v5 = [MEMORY[0x277CCADF8] wattHours];
  v6 = [v4 copySettingDimension:v5];
  v125[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:4];
  v8 = [CPAccNavParam paramWithProperty:v11 keys:v7];
  v147[21] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:22];
  v10 = accNavParameters__accNavParameters_2;
  accNavParameters__accNavParameters_2 = v9;
}

+ (NSDictionary)accNavParametersIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CPRouteGuidance_CPAccNavUpdate__accNavParametersIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParametersIndexed_onceToken_2 != -1)
  {
    dispatch_once(&accNavParametersIndexed_onceToken_2, block);
  }

  v2 = accNavParametersIndexed__accNavParametersIndexed_2;

  return v2;
}

uint64_t __58__CPRouteGuidance_CPAccNavUpdate__accNavParametersIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParametersIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParametersIndexed__accNavParametersIndexed_2;
  accNavParametersIndexed__accNavParametersIndexed_2 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSDictionary)accNavParameterKeysIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CPRouteGuidance_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParameterKeysIndexed_onceToken_2 != -1)
  {
    dispatch_once(&accNavParameterKeysIndexed_onceToken_2, block);
  }

  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_2;

  return v2;
}

uint64_t __61__CPRouteGuidance_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParameterKeysIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_2;
  accNavParameterKeysIndexed__accNavParameterKeysIndexed_2 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (CPRouteGuidance)routeGuidanceWithComponent:(id)component
{
  v4 = MEMORY[0x277CE82F8];
  componentCopy = component;
  v6 = [v4 alloc];
  component = [componentCopy component];
  v8 = [v6 initWithRouteGuidance:self component:component];

  v9 = [objc_alloc(MEMORY[0x277CF8AA0]) initWithComponent:componentCopy accNavInfo:v8];

  return v9;
}

@end