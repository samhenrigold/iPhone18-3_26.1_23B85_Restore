@interface CLTripSegmentProcessorOptions
- (CLTripSegmentProcessorOptions)init;
- (CLTripSegmentProcessorOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentProcessorOptions

- (CLTripSegmentProcessorOptions)init
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentProcessorOptions;
  result = [(CLTripSegmentProcessorOptions *)&v3 init];
  if (result)
  {
    result->_shouldRecordDataInFileForReplay = 1;
    *&result->_runLinearInterpolator = 16843009;
    result->_timeBetweenReconstructedPointsSeconds = 1.0;
    result->_tripSegmentRecorderLoggingDirectory = @"/var/mobile/Library/Caches/com.apple.routined/tripSegments/";
    *&result->_maxProcessingTimeInMilliSec = xmmword_19BA8CF00;
    *&result->_createSparseDataFromOneHzData = 0x101010000;
    result->_windowSizeForLocationOutlierRejector = 0;
    result->_stepSizeForLocationOutlierRejector = 0;
    *&result->_minDistanceBetweenODVisitsToGenerateTripSegmentMeters = xmmword_19BA8CF10;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  v16 = objc_msgSend_runLinearInterpolator(self, v13, v14, v15);
  objc_msgSend_setRunLinearInterpolator_(v12, v17, v16, v18);
  v22 = objc_msgSend_runInertialIntegrator(self, v19, v20, v21);
  objc_msgSend_setRunInertialIntegrator_(v12, v23, v22, v24);
  v28 = objc_msgSend_runMapIntegrator(self, v25, v26, v27);
  objc_msgSend_setRunMapIntegrator_(v12, v29, v28, v30);
  v34 = objc_msgSend_useXPCServiceForMapQuery(self, v31, v32, v33);
  objc_msgSend_setUseXPCService_(v12, v35, v34, v36);
  shouldRecordDataInFileForReplay = objc_msgSend_shouldRecordDataInFileForReplay(self, v37, v38, v39);
  objc_msgSend_setshouldRecordDataInFileForReplay_(v12, v41, shouldRecordDataInFileForReplay, v42);
  SparseDataFromOneHzData = objc_msgSend_createSparseDataFromOneHzData(self, v43, v44, v45);
  objc_msgSend_setCreateSparseDataFromOneHzData_(v12, v47, SparseDataFromOneHzData, v48);
  isSimulatedSparseProcessing = objc_msgSend_isSimulatedSparseProcessing(self, v49, v50, v51);
  objc_msgSend_setSimulatedSparseProcessing_(v12, v53, isSimulatedSparseProcessing, v54);
  isNetworkAccessAllowed = objc_msgSend_isNetworkAccessAllowed(self, v55, v56, v57);
  objc_msgSend_setNetworkAccessAllowed_(v12, v59, isNetworkAccessAllowed, v60);
  objc_msgSend_timeBetweenReconstructedPointsSeconds(self, v61, v62, v63);
  objc_msgSend_setTimeBetweenReconstructedPointsSeconds_(v12, v64, v65, v66);
  v70 = objc_msgSend_useParticleMapMatcherForSnappingInMapIntegrator(self, v67, v68, v69);
  objc_msgSend_setUseParticleMapMatcherForSnappingInMapIntegrator_(v12, v71, v70, v72);
  v76 = objc_msgSend_tripSegmentRecorderLoggingDirectory(self, v73, v74, v75);
  objc_msgSend_setTripSegmentRecorderLoggingDirectory_(v12, v77, v76, v78);
  v82 = objc_msgSend_useNonGNSSFixesForRouteReconstruction(self, v79, v80, v81);
  objc_msgSend_setUseNonGNSSFixesForRouteReconstruction_(v12, v83, v82, v84);
  objc_msgSend_maxProcessingTimeInMilliSec(self, v85, v86, v87);
  objc_msgSend_setMaxProcessingTimeInMilliSec_(v12, v88, v89, v90);
  objc_msgSend_useXPCServiceForVehicularAStarSearch(self, v91, v92, v93);
  objc_msgSend_setUseXPCServiceForVehicularAStarSearch_(v12, v95, v94 != 0.0, v96);
  v100 = objc_msgSend_runLocationOutlierRejector(self, v97, v98, v99);
  objc_msgSend_setRunLocationOutlierRejector_(v12, v101, v100, v102);
  v106 = objc_msgSend_windowSizeForLocationOutlierRejector(self, v103, v104, v105);
  objc_msgSend_setWindowSizeForLocationOutlierRejector_(v12, v107, v106, v108);
  v112 = objc_msgSend_stepSizeForLocationOutlierRejector(self, v109, v110, v111);
  objc_msgSend_setStepSizeForLocationOutlierRejector_(v12, v113, v112, v114);
  isWatch = objc_msgSend_isWatch(self, v115, v116, v117);
  objc_msgSend_setIsWatch_(v12, v119, isWatch, v120);
  v124 = objc_msgSend_enableUseWifiInPTS(self, v121, v122, v123);
  objc_msgSend_setEnableUseWifiInPTS_(v12, v125, v124, v126);
  objc_msgSend_minDistanceBetweenODVisitsToGenerateTripSegmentMeters(self, v127, v128, v129);
  objc_msgSend_setMinDistanceBetweenODVisitsToGenerateTripSegmentMeters_(v12, v130, v131, v132);
  objc_msgSend_maxTripSegmentDurationSeconds(self, v133, v134, v135);
  objc_msgSend_setMaxTripSegmentDurationSeconds_(v12, v136, v137, v138);
  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLTripSegmentProcessorOptions;
  [(CLTripSegmentProcessorOptions *)&v2 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  return objc_msgSend_stringWithFormat_(v2, v5, @"%@", v6, v4);
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_runLinearInterpolator(self, a2, coder, v3);
  objc_msgSend_encodeBool_forKey_(coder, v7, v6, @"runLinearInterpolator");
  v11 = objc_msgSend_runInertialIntegrator(self, v8, v9, v10);
  objc_msgSend_encodeBool_forKey_(coder, v12, v11, @"runInertialIntegrator");
  v16 = objc_msgSend_runMapIntegrator(self, v13, v14, v15);
  objc_msgSend_encodeBool_forKey_(coder, v17, v16, @"runMapIntegrator");
  v21 = objc_msgSend_useXPCServiceForMapQuery(self, v18, v19, v20);
  objc_msgSend_encodeBool_forKey_(coder, v22, v21, @"useXPCServiceForMapQuery");
  shouldRecordDataInFileForReplay = objc_msgSend_shouldRecordDataInFileForReplay(self, v23, v24, v25);
  objc_msgSend_encodeBool_forKey_(coder, v27, shouldRecordDataInFileForReplay, @"shouldRecordDataInFileForReplay");
  SparseDataFromOneHzData = objc_msgSend_createSparseDataFromOneHzData(self, v28, v29, v30);
  objc_msgSend_encodeBool_forKey_(coder, v32, SparseDataFromOneHzData, @"createSparseDataFromOneHzData");
  isSimulatedSparseProcessing = objc_msgSend_isSimulatedSparseProcessing(self, v33, v34, v35);
  objc_msgSend_encodeBool_forKey_(coder, v37, isSimulatedSparseProcessing, @"isSimulatedSparseProcessing");
  isNetworkAccessAllowed = objc_msgSend_isNetworkAccessAllowed(self, v38, v39, v40);
  objc_msgSend_encodeBool_forKey_(coder, v42, isNetworkAccessAllowed, @"isNetworkAccessAllowed");
  objc_msgSend_timeBetweenReconstructedPointsSeconds(self, v43, v44, v45);
  objc_msgSend_encodeDouble_forKey_(coder, v46, @"timeBetweenReconstructedPointsSeconds", v47);
  v51 = objc_msgSend_useParticleMapMatcherForSnappingInMapIntegrator(self, v48, v49, v50);
  objc_msgSend_encodeBool_forKey_(coder, v52, v51, @"useParticleMapMatcherForSnappingInMapIntegrator");
  v56 = objc_msgSend_tripSegmentRecorderLoggingDirectory(self, v53, v54, v55);
  objc_msgSend_encodeObject_forKey_(coder, v57, v56, @"tripSegmentRecorderLoggingDirectory");
  v61 = objc_msgSend_useNonGNSSFixesForRouteReconstruction(self, v58, v59, v60);
  objc_msgSend_encodeBool_forKey_(coder, v62, v61, @"useNonGNSSFixesForRouteReconstruction");
  objc_msgSend_maxProcessingTimeInMilliSec(self, v63, v64, v65);
  objc_msgSend_encodeDouble_forKey_(coder, v66, @"maxProcessingTimeMilliSec", v67);
  objc_msgSend_useXPCServiceForVehicularAStarSearch(self, v68, v69, v70);
  objc_msgSend_encodeBool_forKey_(coder, v72, v71 != 0.0, @"useXPCServiceForVehicularAStarSearch");
  v76 = objc_msgSend_runLocationOutlierRejector(self, v73, v74, v75);
  objc_msgSend_encodeBool_forKey_(coder, v77, v76, @"runLocationOutlierRejector");
  v81 = objc_msgSend_windowSizeForLocationOutlierRejector(self, v78, v79, v80);
  objc_msgSend_encodeInteger_forKey_(coder, v82, v81, @"windowSizeForLocationOutlierRejector");
  v86 = objc_msgSend_stepSizeForLocationOutlierRejector(self, v83, v84, v85);
  objc_msgSend_encodeInteger_forKey_(coder, v87, v86, @"stepSizeForLocationOutlierRejector");
  isWatch = objc_msgSend_isWatch(self, v88, v89, v90);
  objc_msgSend_encodeBool_forKey_(coder, v92, isWatch, @"isWatch");
  v96 = objc_msgSend_enableUseWifiInPTS(self, v93, v94, v95);
  objc_msgSend_encodeBool_forKey_(coder, v97, v96, @"enableUseWifiInPTS");
  objc_msgSend_minDistanceBetweenODVisitsToGenerateTripSegmentMeters(self, v98, v99, v100);
  objc_msgSend_encodeDouble_forKey_(coder, v101, @"minDistanceBetweenODVisitsToGenerateTripSegmentMeters", v102);
  objc_msgSend_maxTripSegmentDurationSeconds(self, v103, v104, v105);

  objc_msgSend_encodeDouble_forKey_(coder, v106, @"maxTripSegmentDurationSeconds", v107);
}

- (CLTripSegmentProcessorOptions)initWithCoder:(id)coder
{
  v4 = objc_alloc_init(CLTripSegmentProcessorOptions);
  v7 = objc_msgSend_decodeBoolForKey_(coder, v5, @"runLinearInterpolator", v6);
  objc_msgSend_setRunLinearInterpolator_(v4, v8, v7, v9);
  v12 = objc_msgSend_decodeBoolForKey_(coder, v10, @"runInertialIntegrator", v11);
  objc_msgSend_setRunInertialIntegrator_(v4, v13, v12, v14);
  v17 = objc_msgSend_decodeBoolForKey_(coder, v15, @"runMapIntegrator", v16);
  objc_msgSend_setRunMapIntegrator_(v4, v18, v17, v19);
  v22 = objc_msgSend_decodeBoolForKey_(coder, v20, @"useXPCServiceForMapQuery", v21);
  objc_msgSend_setUseXPCService_(v4, v23, v22, v24);
  v27 = objc_msgSend_decodeBoolForKey_(coder, v25, @"shouldRecordDataInFileForReplay", v26);
  objc_msgSend_setshouldRecordDataInFileForReplay_(v4, v28, v27, v29);
  v32 = objc_msgSend_decodeBoolForKey_(coder, v30, @"createSparseDataFromOneHzData", v31);
  objc_msgSend_setCreateSparseDataFromOneHzData_(v4, v33, v32, v34);
  v37 = objc_msgSend_decodeBoolForKey_(coder, v35, @"isSimulatedSparseProcessing", v36);
  objc_msgSend_setSimulatedSparseProcessing_(v4, v38, v37, v39);
  v42 = objc_msgSend_decodeBoolForKey_(coder, v40, @"isNetworkAccessAllowed", v41);
  objc_msgSend_setNetworkAccessAllowed_(v4, v43, v42, v44);
  objc_msgSend_decodeDoubleForKey_(coder, v45, @"timeBetweenReconstructedPointsSeconds", v46);
  objc_msgSend_setTimeBetweenReconstructedPointsSeconds_(v4, v47, v48, v49);
  v52 = objc_msgSend_decodeBoolForKey_(coder, v50, @"useParticleMapMatcherForSnappingInMapIntegrator", v51);
  objc_msgSend_setUseParticleMapMatcherForSnappingInMapIntegrator_(v4, v53, v52, v54);
  v55 = objc_opt_class();
  v57 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v56, v55, @"tripSegmentRecorderLoggingDirectory");
  objc_msgSend_setTripSegmentRecorderLoggingDirectory_(v4, v58, v57, v59);
  v62 = objc_msgSend_decodeBoolForKey_(coder, v60, @"useNonGNSSFixesForRouteReconstruction", v61);
  objc_msgSend_setUseNonGNSSFixesForRouteReconstruction_(v4, v63, v62, v64);
  objc_msgSend_decodeDoubleForKey_(coder, v65, @"maxProcessingTimeMilliSec", v66);
  objc_msgSend_setMaxProcessingTimeInMilliSec_(v4, v67, v68, v69);
  v72 = objc_msgSend_decodeBoolForKey_(coder, v70, @"useXPCServiceForVehicularAStarSearch", v71);
  objc_msgSend_setUseXPCServiceForVehicularAStarSearch_(v4, v73, v72, v74);
  v77 = objc_msgSend_decodeBoolForKey_(coder, v75, @"runLocationOutlierRejector", v76);
  objc_msgSend_setRunLocationOutlierRejector_(v4, v78, v77, v79);
  v82 = objc_msgSend_decodeIntegerForKey_(coder, v80, @"windowSizeForLocationOutlierRejector", v81);
  objc_msgSend_setWindowSizeForLocationOutlierRejector_(v4, v83, v82, v84);
  v87 = objc_msgSend_decodeIntegerForKey_(coder, v85, @"stepSizeForLocationOutlierRejector", v86);
  objc_msgSend_setStepSizeForLocationOutlierRejector_(v4, v88, v87, v89);
  v92 = objc_msgSend_decodeBoolForKey_(coder, v90, @"isWatch", v91);
  objc_msgSend_setIsWatch_(v4, v93, v92, v94);
  v97 = objc_msgSend_decodeBoolForKey_(coder, v95, @"enableUseWifiInPTS", v96);
  objc_msgSend_setEnableUseWifiInPTS_(v4, v98, v97, v99);
  objc_msgSend_decodeDoubleForKey_(coder, v100, @"minDistanceBetweenODVisitsToGenerateTripSegmentMeters", v101);
  objc_msgSend_setMinDistanceBetweenODVisitsToGenerateTripSegmentMeters_(v4, v102, v103, v104);
  objc_msgSend_decodeDoubleForKey_(coder, v105, @"maxTripSegmentDurationSeconds", v106);
  objc_msgSend_setMaxTripSegmentDurationSeconds_(v4, v107, v108, v109);
  return v4;
}

@end