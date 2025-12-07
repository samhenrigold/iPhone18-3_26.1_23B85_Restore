@interface CLRacingRouteVariables
- (CLRacingRouteVariables)initWithCoder:(id)coder;
- (CLRacingRouteVariables)initWithRaceStartPointDetected:(BOOL)detected raceEndPointDetected:(BOOL)pointDetected userIsOffRoute:(BOOL)route projectedOnNearestPoint:(BOOL)point raceSessionExpired:(BOOL)expired rollingBufferReachedEndOfReferenceRoute:(BOOL)referenceRoute routeConfigurationSuccessful:(BOOL)successful racingRouteAnalyticsSent:(BOOL)self0 prematureRaceEndDetected:(BOOL)self1 referenceRouteTotalLengthDetermined:(BOOL)self2 locationPointIsOutsideOfAcceptedRange:(BOOL)self3 locationPointNotMatched:(BOOL)self4 routePointsBufferSize:(int)self5 numberOfRoutePointsToAdd:(int)self6 offRouteGraceDuration:(int)self7 matchedPointCounter:(int)self8 referenceRouteDataPointCounter:(int)self9 currentRouteDataPointCounter:(int)dataPointCounter offRouteDataPointCounter:(int)routeDataPointCounter inutileDataPointCounter:(int)inutileDataPointCounter rollingBufferUpdateCounter:(int)updateCounter lastMatchedPointIndex:(int)index lastMatchedPointIndexOnReferenceRoute:(int)onReferenceRoute rollingBufferStartIndexOnReferenceRoute:(int)indexOnReferenceRoute matrixCellIndexForLastMatchedPoint:(int)matchedPoint referenceRouteTotalLength:(double)length timestampOfLastMatchedPointOnReferenceRoute:(double)pointOnReferenceRoute registeredTimeAtThresholdDistance:(double)detected0 endOfRaceTimeThreshold:(double)detected1 nearestNeighborMaximumAcceptedDistance:(double)detected2;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRacingRouteVariables

- (CLRacingRouteVariables)initWithRaceStartPointDetected:(BOOL)detected raceEndPointDetected:(BOOL)pointDetected userIsOffRoute:(BOOL)route projectedOnNearestPoint:(BOOL)point raceSessionExpired:(BOOL)expired rollingBufferReachedEndOfReferenceRoute:(BOOL)referenceRoute routeConfigurationSuccessful:(BOOL)successful racingRouteAnalyticsSent:(BOOL)self0 prematureRaceEndDetected:(BOOL)self1 referenceRouteTotalLengthDetermined:(BOOL)self2 locationPointIsOutsideOfAcceptedRange:(BOOL)self3 locationPointNotMatched:(BOOL)self4 routePointsBufferSize:(int)self5 numberOfRoutePointsToAdd:(int)self6 offRouteGraceDuration:(int)self7 matchedPointCounter:(int)self8 referenceRouteDataPointCounter:(int)self9 currentRouteDataPointCounter:(int)dataPointCounter offRouteDataPointCounter:(int)routeDataPointCounter inutileDataPointCounter:(int)inutileDataPointCounter rollingBufferUpdateCounter:(int)updateCounter lastMatchedPointIndex:(int)index lastMatchedPointIndexOnReferenceRoute:(int)onReferenceRoute rollingBufferStartIndexOnReferenceRoute:(int)indexOnReferenceRoute matrixCellIndexForLastMatchedPoint:(int)matchedPoint referenceRouteTotalLength:(double)length timestampOfLastMatchedPointOnReferenceRoute:(double)pointOnReferenceRoute registeredTimeAtThresholdDistance:(double)detected0 endOfRaceTimeThreshold:(double)detected1 nearestNeighborMaximumAcceptedDistance:(double)detected2
{
  v44.receiver = self;
  v44.super_class = CLRacingRouteVariables;
  result = [(CLRacingRouteVariables *)&v44 init];
  if (result)
  {
    result->_raceStartPointDetected = detected;
    result->_raceEndPointDetected = pointDetected;
    result->_userIsOffRoute = route;
    result->_projectedOnNearestPoint = point;
    result->_raceSessionExpired = expired;
    result->_rollingBufferReachedEndOfReferenceRoute = referenceRoute;
    result->_routeConfigurationSuccessful = successful;
    result->_racingRouteAnalyticsSent = sent;
    result->_prematureRaceEndDetected = endDetected;
    result->_referenceRouteTotalLengthDetermined = determined;
    result->_locationPointIsOutsideOfAcceptedRange = range;
    result->_locationPointNotMatched = matched;
    result->_routePointsBufferSize = size;
    result->_numberOfRoutePointsToAdd = add;
    result->_offRouteGraceDuration = duration;
    result->_matchedPointCounter = counter;
    result->_referenceRouteDataPointCounter = pointCounter;
    result->_currentRouteDataPointCounter = dataPointCounter;
    result->_offRouteDataPointCounter = routeDataPointCounter;
    result->_inutileDataPointCounter = inutileDataPointCounter;
    result->_rollingBufferUpdateCounter = updateCounter;
    result->_lastMatchedPointIndex = index;
    result->_lastMatchedPointIndexOnReferenceRoute = onReferenceRoute;
    result->_rollingBufferStartIndexOnReferenceRoute = indexOnReferenceRoute;
    result->_matrixCellIndexForLastMatchedPoint = matchedPoint;
    result->_referenceRouteTotalLength = length;
    result->_timestampOfLastMatchedPointOnReferenceRoute = pointOnReferenceRoute;
    result->_registeredTimeAtThresholdDistance = distance;
    result->_endOfRaceTimeThreshold = threshold;
    result->_nearestNeighborMaximumAcceptedDistance = acceptedDistance;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CLRacingRouteVariables alloc];
  matrixCellIndexForLastMatchedPoint = self->_matrixCellIndexForLastMatchedPoint;
  WORD2(v7) = *&self->_locationPointIsOutsideOfAcceptedRange;
  LODWORD(v7) = *&self->_routeConfigurationSuccessful;
  return objc_msgSend_initWithRaceStartPointDetected_raceEndPointDetected_userIsOffRoute_projectedOnNearestPoint_raceSessionExpired_rollingBufferReachedEndOfReferenceRoute_routeConfigurationSuccessful_racingRouteAnalyticsSent_prematureRaceEndDetected_referenceRouteTotalLengthDetermined_locationPointIsOutsideOfAcceptedRange_locationPointNotMatched_routePointsBufferSize_numberOfRoutePointsToAdd_offRouteGraceDuration_matchedPointCounter_referenceRouteDataPointCounter_currentRouteDataPointCounter_offRouteDataPointCounter_inutileDataPointCounter_rollingBufferUpdateCounter_lastMatchedPointIndex_lastMatchedPointIndexOnReferenceRoute_rollingBufferStartIndexOnReferenceRoute_matrixCellIndexForLastMatchedPoint_referenceRouteTotalLength_timestampOfLastMatchedPointOnReferenceRoute_registeredTimeAtThresholdDistance_endOfRaceTimeThreshold_nearestNeighborMaximumAcceptedDistance_(v4, v5, self->_raceStartPointDetected, self->_raceEndPointDetected, self->_userIsOffRoute, self->_projectedOnNearestPoint, self->_raceSessionExpired, self->_rollingBufferReachedEndOfReferenceRoute, self->_referenceRouteTotalLength, self->_timestampOfLastMatchedPointOnReferenceRoute, self->_registeredTimeAtThresholdDistance, self->_endOfRaceTimeThreshold, self->_nearestNeighborMaximumAcceptedDistance, v7, *&self->_routePointsBufferSize, *&self->_offRouteGraceDuration, *&self->_referenceRouteDataPointCounter, *&self->_offRouteDataPointCounter, *&self->_rollingBufferUpdateCounter, *&self->_lastMatchedPointIndexOnReferenceRoute, matrixCellIndexForLastMatchedPoint);
}

- (void)encodeWithCoder:(id)coder
{
  started = objc_msgSend_raceStartPointDetected(self, a2, coder, v3);
  objc_msgSend_encodeBool_forKey_(coder, v7, started, @"raceStartPointDetected");
  v11 = objc_msgSend_raceEndPointDetected(self, v8, v9, v10);
  objc_msgSend_encodeBool_forKey_(coder, v12, v11, @"raceEndPointDetected");
  IsOffRoute = objc_msgSend_userIsOffRoute(self, v13, v14, v15);
  objc_msgSend_encodeBool_forKey_(coder, v17, IsOffRoute, @"userIsOffRoute");
  v21 = objc_msgSend_projectedOnNearestPoint(self, v18, v19, v20);
  objc_msgSend_encodeBool_forKey_(coder, v22, v21, @"projectedOnNearestPoint");
  v26 = objc_msgSend_raceSessionExpired(self, v23, v24, v25);
  objc_msgSend_encodeBool_forKey_(coder, v27, v26, @"raceSessionExpired");
  v31 = objc_msgSend_rollingBufferReachedEndOfReferenceRoute(self, v28, v29, v30);
  objc_msgSend_encodeBool_forKey_(coder, v32, v31, @"rollingBufferReachedEndOfReferenceRoute");
  v36 = objc_msgSend_routeConfigurationSuccessful(self, v33, v34, v35);
  objc_msgSend_encodeBool_forKey_(coder, v37, v36, @"routeConfigurationSuccessful");
  v41 = objc_msgSend_racingRouteAnalyticsSent(self, v38, v39, v40);
  objc_msgSend_encodeBool_forKey_(coder, v42, v41, @"racingRouteAnalyticsSent");
  v46 = objc_msgSend_prematureRaceEndDetected(self, v43, v44, v45);
  objc_msgSend_encodeBool_forKey_(coder, v47, v46, @"prematureRaceEndDetected");
  v51 = objc_msgSend_referenceRouteTotalLengthDetermined(self, v48, v49, v50);
  objc_msgSend_encodeBool_forKey_(coder, v52, v51, @"referenceRouteTotalLengthDetermined");
  IsOutsideOfAcceptedRange = objc_msgSend_locationPointIsOutsideOfAcceptedRange(self, v53, v54, v55);
  objc_msgSend_encodeBool_forKey_(coder, v57, IsOutsideOfAcceptedRange, @"locationPointIsOutsideOfAcceptedRange");
  v61 = objc_msgSend_locationPointNotMatched(self, v58, v59, v60);
  objc_msgSend_encodeBool_forKey_(coder, v62, v61, @"locationPointNotMatched");
  v66 = objc_msgSend_routePointsBufferSize(self, v63, v64, v65);
  objc_msgSend_encodeInt_forKey_(coder, v67, v66, @"routePointsBufferSize");
  v71 = objc_msgSend_numberOfRoutePointsToAdd(self, v68, v69, v70);
  objc_msgSend_encodeInt_forKey_(coder, v72, v71, @"numberOfRoutePointsToAdd");
  v76 = objc_msgSend_offRouteGraceDuration(self, v73, v74, v75);
  objc_msgSend_encodeInt_forKey_(coder, v77, v76, @"offRouteGraceDuration");
  v81 = objc_msgSend_matchedPointCounter(self, v78, v79, v80);
  objc_msgSend_encodeInt_forKey_(coder, v82, v81, @"matchedPointCounter");
  v86 = objc_msgSend_referenceRouteDataPointCounter(self, v83, v84, v85);
  objc_msgSend_encodeInt_forKey_(coder, v87, v86, @"referenceRouteDataPointCounter");
  v91 = objc_msgSend_currentRouteDataPointCounter(self, v88, v89, v90);
  objc_msgSend_encodeInt_forKey_(coder, v92, v91, @"currentRouteDataPointCounter");
  v96 = objc_msgSend_offRouteDataPointCounter(self, v93, v94, v95);
  objc_msgSend_encodeInt_forKey_(coder, v97, v96, @"offRouteDataPointCounter");
  v101 = objc_msgSend_inutileDataPointCounter(self, v98, v99, v100);
  objc_msgSend_encodeInt_forKey_(coder, v102, v101, @"inutileDataPointCounter");
  updated = objc_msgSend_rollingBufferUpdateCounter(self, v103, v104, v105);
  objc_msgSend_encodeInt_forKey_(coder, v107, updated, @"rollingBufferUpdateCounter");
  MatchedPointIndex = objc_msgSend_lastMatchedPointIndex(self, v108, v109, v110);
  objc_msgSend_encodeInt_forKey_(coder, v112, MatchedPointIndex, @"lastMatchedPointIndex");
  MatchedPointIndexOnReferenceRoute = objc_msgSend_lastMatchedPointIndexOnReferenceRoute(self, v113, v114, v115);
  objc_msgSend_encodeInt_forKey_(coder, v117, MatchedPointIndexOnReferenceRoute, @"lastMatchedPointIndexOnReferenceRoute");
  v121 = objc_msgSend_rollingBufferStartIndexOnReferenceRoute(self, v118, v119, v120);
  objc_msgSend_encodeInt_forKey_(coder, v122, v121, @"rollingBufferStartIndexOnReferenceRoute");
  MatchedPoint = objc_msgSend_matrixCellIndexForLastMatchedPoint(self, v123, v124, v125);
  objc_msgSend_encodeInt_forKey_(coder, v127, MatchedPoint, @"matrixCellIndexForLastMatchedPoint");
  objc_msgSend_referenceRouteTotalLength(self, v128, v129, v130);
  objc_msgSend_encodeDouble_forKey_(coder, v131, @"referenceRouteTotalLength", v132);
  objc_msgSend_timestampOfLastMatchedPointOnReferenceRoute(self, v133, v134, v135);
  objc_msgSend_encodeDouble_forKey_(coder, v136, @"timestampOfLastMatchedPointOnReferenceRoute", v137);
  objc_msgSend_registeredTimeAtThresholdDistance(self, v138, v139, v140);
  objc_msgSend_encodeDouble_forKey_(coder, v141, @"registeredTimeAtThresholdDistance", v142);
  objc_msgSend_endOfRaceTimeThreshold(self, v143, v144, v145);
  objc_msgSend_encodeDouble_forKey_(coder, v146, @"endOfRaceTimeThreshold", v147);
  objc_msgSend_nearestNeighborMaximumAcceptedDistance(self, v148, v149, v150);

  objc_msgSend_encodeDouble_forKey_(coder, v151, @"nearestNeighborMaximumAcceptedDistance", v152);
}

- (CLRacingRouteVariables)initWithCoder:(id)coder
{
  v102 = [CLRacingRouteVariables alloc];
  v100 = objc_msgSend_decodeBoolForKey_(coder, v4, @"raceStartPointDetected", v5);
  v101 = objc_msgSend_decodeBoolForKey_(coder, v6, @"raceEndPointDetected", v7);
  v99 = objc_msgSend_decodeBoolForKey_(coder, v8, @"userIsOffRoute", v9);
  v98 = objc_msgSend_decodeBoolForKey_(coder, v10, @"projectedOnNearestPoint", v11);
  v97 = objc_msgSend_decodeBoolForKey_(coder, v12, @"raceSessionExpired", v13);
  v96 = objc_msgSend_decodeBoolForKey_(coder, v14, @"rollingBufferReachedEndOfReferenceRoute", v15);
  v95 = objc_msgSend_decodeBoolForKey_(coder, v16, @"routeConfigurationSuccessful", v17);
  v94 = objc_msgSend_decodeBoolForKey_(coder, v18, @"racingRouteAnalyticsSent", v19);
  v93 = objc_msgSend_decodeBoolForKey_(coder, v20, @"prematureRaceEndDetected", v21);
  v92 = objc_msgSend_decodeBoolForKey_(coder, v22, @"referenceRouteTotalLengthDetermined", v23);
  v91 = objc_msgSend_decodeBoolForKey_(coder, v24, @"locationPointIsOutsideOfAcceptedRange", v25);
  v90 = objc_msgSend_decodeBoolForKey_(coder, v26, @"locationPointNotMatched", v27);
  v89 = objc_msgSend_decodeIntForKey_(coder, v28, @"routePointsBufferSize", v29);
  v88 = objc_msgSend_decodeIntForKey_(coder, v30, @"numberOfRoutePointsToAdd", v31);
  v87 = objc_msgSend_decodeIntForKey_(coder, v32, @"offRouteGraceDuration", v33);
  v86 = objc_msgSend_decodeIntForKey_(coder, v34, @"matchedPointCounter", v35);
  v38 = objc_msgSend_decodeIntForKey_(coder, v36, @"referenceRouteDataPointCounter", v37);
  v41 = objc_msgSend_decodeIntForKey_(coder, v39, @"currentRouteDataPointCounter", v40);
  v44 = objc_msgSend_decodeIntForKey_(coder, v42, @"offRouteDataPointCounter", v43);
  v47 = objc_msgSend_decodeIntForKey_(coder, v45, @"inutileDataPointCounter", v46);
  v50 = objc_msgSend_decodeIntForKey_(coder, v48, @"rollingBufferUpdateCounter", v49);
  v53 = objc_msgSend_decodeIntForKey_(coder, v51, @"lastMatchedPointIndex", v52);
  v56 = objc_msgSend_decodeIntForKey_(coder, v54, @"lastMatchedPointIndexOnReferenceRoute", v55);
  v59 = objc_msgSend_decodeIntForKey_(coder, v57, @"rollingBufferStartIndexOnReferenceRoute", v58);
  v62 = objc_msgSend_decodeIntForKey_(coder, v60, @"matrixCellIndexForLastMatchedPoint", v61);
  objc_msgSend_decodeDoubleForKey_(coder, v63, @"referenceRouteTotalLength", v64);
  v66 = v65;
  objc_msgSend_decodeDoubleForKey_(coder, v67, @"timestampOfLastMatchedPointOnReferenceRoute", v68);
  v70 = v69;
  objc_msgSend_decodeDoubleForKey_(coder, v71, @"registeredTimeAtThresholdDistance", v72);
  v74 = v73;
  objc_msgSend_decodeDoubleForKey_(coder, v75, @"endOfRaceTimeThreshold", v76);
  v78 = v77;
  objc_msgSend_decodeDoubleForKey_(coder, v79, @"nearestNeighborMaximumAcceptedDistance", v80);
  v85 = v62;
  BYTE5(v84) = v90;
  BYTE4(v84) = v91;
  BYTE3(v84) = v92;
  BYTE2(v84) = v93;
  BYTE1(v84) = v94;
  LOBYTE(v84) = v95;
  return objc_msgSend_initWithRaceStartPointDetected_raceEndPointDetected_userIsOffRoute_projectedOnNearestPoint_raceSessionExpired_rollingBufferReachedEndOfReferenceRoute_routeConfigurationSuccessful_racingRouteAnalyticsSent_prematureRaceEndDetected_referenceRouteTotalLengthDetermined_locationPointIsOutsideOfAcceptedRange_locationPointNotMatched_routePointsBufferSize_numberOfRoutePointsToAdd_offRouteGraceDuration_matchedPointCounter_referenceRouteDataPointCounter_currentRouteDataPointCounter_offRouteDataPointCounter_inutileDataPointCounter_rollingBufferUpdateCounter_lastMatchedPointIndex_lastMatchedPointIndexOnReferenceRoute_rollingBufferStartIndexOnReferenceRoute_matrixCellIndexForLastMatchedPoint_referenceRouteTotalLength_timestampOfLastMatchedPointOnReferenceRoute_registeredTimeAtThresholdDistance_endOfRaceTimeThreshold_nearestNeighborMaximumAcceptedDistance_(v102, v81, v100, v101, v99, v98, v97, v96, v66, v70, v74, v78, v82, v84, __PAIR64__(v88, v89), __PAIR64__(v86, v87), __PAIR64__(v41, v38), __PAIR64__(v47, v44), __PAIR64__(v53, v50), __PAIR64__(v59, v56), v85);
}

@end