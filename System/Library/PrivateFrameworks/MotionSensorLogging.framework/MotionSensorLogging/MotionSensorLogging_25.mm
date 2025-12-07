CMMsl *CMMsl::Item::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::Item::Item(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::Item::~Item(v5);
  }

  return a1;
}

uint64_t CMMsl::Item::formatText(CMMsl::Item *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "aFDeviceMotionConfig");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "aFHeartRate");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "aPSleep");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "aPWake");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "accel");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "accel800");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "accelBatch");
  }

  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "accelBiasEstimate");
  }

  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "accelGesture");
  }

  v14 = *(this + 10);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "accelGps");
  }

  v15 = *(this + 11);
  if (v15)
  {
    (*(*v15 + 32))(v15, a2, "accelOscarEmu");
  }

  v16 = *(this + 12);
  if (v16)
  {
    (*(*v16 + 32))(v16, a2, "accelTNBFrame");
  }

  v17 = *(this + 13);
  if (v17)
  {
    (*(*v17 + 32))(v17, a2, "accelerometerPace");
  }

  v18 = *(this + 14);
  if (v18)
  {
    (*(*v18 + 32))(v18, a2, "accessoryAccel");
  }

  v19 = *(this + 15);
  if (v19)
  {
    (*(*v19 + 32))(v19, a2, "accessoryAccelConfig");
  }

  v20 = *(this + 16);
  if (v20)
  {
    (*(*v20 + 32))(v20, a2, "accessoryActivityAsleepConfidenceEpoch");
  }

  v21 = *(this + 17);
  if (v21)
  {
    (*(*v21 + 32))(v21, a2, "accessoryActivityStateUpdate");
  }

  v22 = *(this + 18);
  if (v22)
  {
    (*(*v22 + 32))(v22, a2, "accessoryBatchedPPG");
  }

  v23 = *(this + 19);
  if (v23)
  {
    (*(*v23 + 32))(v23, a2, "accessoryConfig");
  }

  v24 = *(this + 20);
  if (v24)
  {
    (*(*v24 + 32))(v24, a2, "accessoryDeviceMotion");
  }

  v25 = *(this + 21);
  if (v25)
  {
    (*(*v25 + 32))(v25, a2, "accessoryDeviceMotionConfig");
  }

  v26 = *(this + 22);
  if (v26)
  {
    (*(*v26 + 32))(v26, a2, "accessoryGyro");
  }

  v27 = *(this + 23);
  if (v27)
  {
    (*(*v27 + 32))(v27, a2, "accessoryGyroCachedBias");
  }

  v28 = *(this + 24);
  if (v28)
  {
    (*(*v28 + 32))(v28, a2, "accessoryGyroConfig");
  }

  v29 = *(this + 25);
  if (v29)
  {
    (*(*v29 + 32))(v29, a2, "accessoryGyroGYTT");
  }

  v30 = *(this + 26);
  if (v30)
  {
    (*(*v30 + 32))(v30, a2, "accessoryHeartRate");
  }

  v31 = *(this + 27);
  if (v31)
  {
    (*(*v31 + 32))(v31, a2, "accessoryInEarDetection");
  }

  v32 = *(this + 28);
  if (v32)
  {
    (*(*v32 + 32))(v32, a2, "accessoryInEarStatus");
  }

  v33 = *(this + 29);
  if (v33)
  {
    (*(*v33 + 32))(v33, a2, "accessoryMagnetometer");
  }

  v34 = *(this + 30);
  if (v34)
  {
    (*(*v34 + 32))(v34, a2, "accessoryMagnetometerConfig");
  }

  v35 = *(this + 31);
  if (v35)
  {
    (*(*v35 + 32))(v35, a2, "accessoryPPG");
  }

  v36 = *(this + 32);
  if (v36)
  {
    (*(*v36 + 32))(v36, a2, "accessoryProx");
  }

  v37 = *(this + 33);
  if (v37)
  {
    (*(*v37 + 32))(v37, a2, "accessoryProxSensorDrop");
  }

  v38 = *(this + 34);
  if (v38)
  {
    (*(*v38 + 32))(v38, a2, "accessoryProxTempComp");
  }

  v39 = *(this + 35);
  if (v39)
  {
    (*(*v39 + 32))(v39, a2, "accessoryProximityConfig");
  }

  v40 = *(this + 36);
  if (v40)
  {
    (*(*v40 + 32))(v40, a2, "accessorySleepStateConfidenceEpoch");
  }

  v41 = *(this + 37);
  if (v41)
  {
    (*(*v41 + 32))(v41, a2, "accessorySleepStateUpdate");
  }

  v42 = *(this + 38);
  if (v42)
  {
    (*(*v42 + 32))(v42, a2, "accessoryStepDetectorDebug");
  }

  v43 = *(this + 39);
  if (v43)
  {
    (*(*v43 + 32))(v43, a2, "accessoryWake");
  }

  v44 = *(this + 40);
  if (v44)
  {
    (*(*v44 + 32))(v44, a2, "accessoryWakeDebug");
  }

  v45 = *(this + 41);
  if (v45)
  {
    (*(*v45 + 32))(v45, a2, "airpodEvent");
  }

  v46 = *(this + 42);
  if (v46)
  {
    (*(*v46 + 32))(v46, a2, "alsData");
  }

  v47 = *(this + 43);
  if (v47)
  {
    (*(*v47 + 32))(v47, a2, "alsPhone");
  }

  v48 = *(this + 44);
  if (v48)
  {
    (*(*v48 + 32))(v48, a2, "altimeter");
  }

  v49 = *(this + 45);
  if (v49)
  {
    (*(*v49 + 32))(v49, a2, "altimeterKF");
  }

  v50 = *(this + 46);
  if (v50)
  {
    (*(*v50 + 32))(v50, a2, "anchorCorrection");
  }

  v51 = *(this + 47);
  if (v51)
  {
    (*(*v51 + 32))(v51, a2, "anchorMotionCorrespondence");
  }

  v52 = *(this + 48);
  if (v52)
  {
    (*(*v52 + 32))(v52, a2, "appleCV3DSLAMState");
  }

  v53 = *(this + 49);
  if (v53)
  {
    (*(*v53 + 32))(v53, a2, "arSessionState");
  }

  v54 = *(this + 50);
  if (v54)
  {
    (*(*v54 + 32))(v54, a2, "arkitWorldPose");
  }

  v55 = *(this + 51);
  if (v55)
  {
    (*(*v55 + 32))(v55, a2, "audioAFDeviceMotion");
  }

  v56 = *(this + 52);
  if (v56)
  {
    (*(*v56 + 32))(v56, a2, "audioAccessoryDeviceMotion");
  }

  v57 = *(this + 53);
  if (v57)
  {
    (*(*v57 + 32))(v57, a2, "auxiliaryDeviceMotion");
  }

  v58 = *(this + 54);
  if (v58)
  {
    (*(*v58 + 32))(v58, a2, "averagedALSData");
  }

  v59 = *(this + 55);
  if (v59)
  {
    (*(*v59 + 32))(v59, a2, "bTConnection");
  }

  v60 = *(this + 56);
  if (v60)
  {
    (*(*v60 + 32))(v60, a2, "backlightState");
  }

  v61 = *(this + 57);
  if (v61)
  {
    (*(*v61 + 32))(v61, a2, "basebandCompassCoex");
  }

  v62 = *(this + 58);
  if (v62)
  {
    (*(*v62 + 32))(v62, a2, "basebandCompassCoexConstraints");
  }

  v63 = *(this + 59);
  if (v63)
  {
    (*(*v63 + 32))(v63, a2, "basebandSpeed");
  }

  v64 = *(this + 60);
  if (v64)
  {
    (*(*v64 + 32))(v64, a2, "baselineResetCheck");
  }

  v65 = *(this + 61);
  if (v65)
  {
    (*(*v65 + 32))(v65, a2, "batchedLocationFromOdometer");
  }

  v66 = *(this + 62);
  if (v66)
  {
    (*(*v66 + 32))(v66, a2, "batchedPPGData");
  }

  v67 = *(this + 63);
  if (v67)
  {
    (*(*v67 + 32))(v67, a2, "batterySaverModeStatus");
  }

  v68 = *(this + 64);
  if (v68)
  {
    (*(*v68 + 32))(v68, a2, "batteryStatus");
  }

  v69 = *(this + 65);
  if (v69)
  {
    (*(*v69 + 32))(v69, a2, "bioMotionAnchorPose");
  }

  v70 = *(this + 66);
  if (v70)
  {
    (*(*v70 + 32))(v70, a2, "bioMotionClassification");
  }

  v71 = *(this + 67);
  if (v71)
  {
    (*(*v71 + 32))(v71, a2, "bioMotionLinkLengthFitParameters");
  }

  v72 = *(this + 68);
  if (v72)
  {
    (*(*v72 + 32))(v72, a2, "bioMotionOnlineLinkLengthUpdate");
  }

  v73 = *(this + 69);
  if (v73)
  {
    (*(*v73 + 32))(v73, a2, "bioMotionPose");
  }

  v74 = *(this + 70);
  if (v74)
  {
    (*(*v74 + 32))(v74, a2, "bioMotionPredictedPose");
  }

  v75 = *(this + 71);
  if (v75)
  {
    (*(*v75 + 32))(v75, a2, "bioMotionPropagatedAnchor");
  }

  v76 = *(this + 72);
  if (v76)
  {
    (*(*v76 + 32))(v76, a2, "bleedToZeroCorrection");
  }

  v77 = *(this + 73);
  if (v77)
  {
    (*(*v77 + 32))(v77, a2, "bodyMetrics");
  }

  v78 = *(this + 74);
  if (v78)
  {
    (*(*v78 + 32))(v78, a2, "braveHeartAccel");
  }

  v79 = *(this + 75);
  if (v79)
  {
    (*(*v79 + 32))(v79, a2, "braveHeartDeviceMotion");
  }

  v80 = *(this + 76);
  if (v80)
  {
    (*(*v80 + 32))(v80, a2, "braveHeartNatalieData");
  }

  v81 = *(this + 77);
  if (v81)
  {
    (*(*v81 + 32))(v81, a2, "braveHeartVO2MaxInput");
  }

  v82 = *(this + 78);
  if (v82)
  {
    (*(*v82 + 32))(v82, a2, "braveHeartWorkoutEvent");
  }

  v83 = *(this + 79);
  if (v83)
  {
    (*(*v83 + 32))(v83, a2, "bumpToWakeState");
  }

  v84 = *(this + 80);
  if (v84)
  {
    (*(*v84 + 32))(v84, a2, "cMPedEntry");
  }

  v85 = *(this + 81);
  if (v85)
  {
    (*(*v85 + 32))(v85, a2, "cMPedometerStep");
  }

  v86 = *(this + 82);
  if (v86)
  {
    (*(*v86 + 32))(v86, a2, "cV3DPredictedPose");
  }

  v87 = *(this + 83);
  if (v87)
  {
    (*(*v87 + 32))(v87, a2, "cVIMUMeasurement");
  }

  v88 = *(this + 84);
  if (v88)
  {
    (*(*v88 + 32))(v88, a2, "calorimetryMETsConsumed");
  }

  v89 = *(this + 85);
  if (v89)
  {
    (*(*v89 + 32))(v89, a2, "calorimetryPauseEvent");
  }

  v90 = *(this + 86);
  if (v90)
  {
    (*(*v90 + 32))(v90, a2, "catherineHealthKitData");
  }

  if (*(this + 3928))
  {
    PB::TextFormatter::format(a2, "cftime", *(this + 87));
  }

  v91 = *(this + 88);
  if (v91)
  {
    (*(*v91 + 32))(v91, a2, "clefCalibration");
  }

  v92 = *(this + 89);
  if (v92)
  {
    (*(*v92 + 32))(v92, a2, "coarseElevationChange");
  }

  v93 = *(this + 90);
  if (v93)
  {
    (*(*v93 + 32))(v93, a2, "companionStepCountElevation");
  }

  v94 = *(this + 91);
  if (v94)
  {
    (*(*v94 + 32))(v94, a2, "compass");
  }

  v95 = *(this + 92);
  if (v95)
  {
    (*(*v95 + 32))(v95, a2, "compassAlignment");
  }

  v96 = *(this + 93);
  if (v96)
  {
    (*(*v96 + 32))(v96, a2, "compassCalibration");
  }

  v97 = *(this + 94);
  if (v97)
  {
    (*(*v97 + 32))(v97, a2, "compassCalibrationAttempt");
  }

  v98 = *(this + 95);
  if (v98)
  {
    (*(*v98 + 32))(v98, a2, "compassConstraints");
  }

  v99 = *(this + 96);
  if (v99)
  {
    (*(*v99 + 32))(v99, a2, "compassCorrection");
  }

  v100 = *(this + 97);
  if (v100)
  {
    (*(*v100 + 32))(v100, a2, "complexHandMotion");
  }

  v101 = *(this + 98);
  if (v101)
  {
    (*(*v101 + 32))(v101, a2, "constrainedIntegratorModelPredictedPose");
  }

  v102 = *(this + 99);
  if (v102)
  {
    (*(*v102 + 32))(v102, a2, "constrainedIntegratorPose");
  }

  v103 = *(this + 100);
  if (v103)
  {
    (*(*v103 + 32))(v103, a2, "coprocessorReplyGaitMetrics");
  }

  v104 = *(this + 101);
  if (v104)
  {
    (*(*v104 + 32))(v104, a2, "courseConstraints");
  }

  v105 = *(this + 102);
  if (v105)
  {
    (*(*v105 + 32))(v105, a2, "courseCorrection");
  }

  v106 = *(this + 103);
  if (v106)
  {
    (*(*v106 + 32))(v106, a2, "courseFusion");
  }

  v107 = *(this + 104);
  if (v107)
  {
    (*(*v107 + 32))(v107, a2, "cvWatchCalories");
  }

  v108 = *(this + 105);
  if (v108)
  {
    (*(*v108 + 32))(v108, a2, "deviceMotion");
  }

  v109 = *(this + 106);
  if (v109)
  {
    (*(*v109 + 32))(v109, a2, "deviceMotionAlwaysOn");
  }

  v110 = *(this + 107);
  if (v110)
  {
    (*(*v110 + 32))(v110, a2, "deviceMotionCovariance");
  }

  v111 = *(this + 108);
  if (v111)
  {
    (*(*v111 + 32))(v111, a2, "directionOfTravelMetrics");
  }

  v112 = *(this + 109);
  if (v112)
  {
    (*(*v112 + 32))(v112, a2, "displacingState");
  }

  v113 = *(this + 110);
  if (v113)
  {
    (*(*v113 + 32))(v113, a2, "displayPoseState");
  }

  v114 = *(this + 111);
  if (v114)
  {
    (*(*v114 + 32))(v114, a2, "displayStatus");
  }

  v115 = *(this + 112);
  if (v115)
  {
    (*(*v115 + 32))(v115, a2, "dopplerDebugRecord");
  }

  v116 = *(this + 113);
  if (v116)
  {
    (*(*v116 + 32))(v116, a2, "dopplerProximityEvent");
  }

  v117 = *(this + 114);
  if (v117)
  {
    (*(*v117 + 32))(v117, a2, "dopplerRawDataInput");
  }

  v118 = *(this + 115);
  if (v118)
  {
    (*(*v118 + 32))(v118, a2, "dopplerSample");
  }

  v119 = *(this + 116);
  if (v119)
  {
    (*(*v119 + 32))(v119, a2, "dotEstimatorHandSwing");
  }

  v120 = *(this + 117);
  if (v120)
  {
    (*(*v120 + 32))(v120, a2, "dotEstimatorWithTNB");
  }

  v121 = *(this + 118);
  if (v121)
  {
    (*(*v121 + 32))(v121, a2, "doubleTap");
  }

  v122 = *(this + 119);
  if (v122)
  {
    (*(*v122 + 32))(v122, a2, "elevationBatchProcessingTimestamps");
  }

  v123 = *(this + 120);
  if (v123)
  {
    (*(*v123 + 32))(v123, a2, "elevationChange");
  }

  v124 = *(this + 121);
  if (v124)
  {
    (*(*v124 + 32))(v124, a2, "elevationGradeEstimator");
  }

  v125 = *(this + 122);
  if (v125)
  {
    (*(*v125 + 32))(v125, a2, "elevationThreshold");
  }

  v126 = *(this + 123);
  if (v126)
  {
    (*(*v126 + 32))(v126, a2, "emergencyState");
  }

  v127 = *(this + 124);
  if (v127)
  {
    (*(*v127 + 32))(v127, a2, "enhancedDeviceMotion");
  }

  v128 = *(this + 125);
  if (v128)
  {
    (*(*v128 + 32))(v128, a2, "faceBlendShapeCoefficientsSample");
  }

  v129 = *(this + 126);
  if (v129)
  {
    (*(*v129 + 32))(v129, a2, "faceCovered");
  }

  v130 = *(this + 127);
  if (v130)
  {
    (*(*v130 + 32))(v130, a2, "faceDownDetection");
  }

  v131 = *(this + 128);
  if (v131)
  {
    (*(*v131 + 32))(v131, a2, "facePose");
  }

  v132 = *(this + 129);
  if (v132)
  {
    (*(*v132 + 32))(v132, a2, "facePoseSynchronized");
  }

  v133 = *(this + 130);
  if (v133)
  {
    (*(*v133 + 32))(v133, a2, "fallDetectionActivityClassifierReplay");
  }

  v134 = *(this + 131);
  if (v134)
  {
    (*(*v134 + 32))(v134, a2, "fallDetectionDetector");
  }

  v135 = *(this + 132);
  if (v135)
  {
    (*(*v135 + 32))(v135, a2, "fallDetectionGyroControllerReplay");
  }

  v136 = *(this + 133);
  if (v136)
  {
    (*(*v136 + 32))(v136, a2, "fallDetectionReferee");
  }

  v137 = *(this + 134);
  if (v137)
  {
    (*(*v137 + 32))(v137, a2, "fallDetectionReplay");
  }

  v138 = *(this + 135);
  if (v138)
  {
    (*(*v138 + 32))(v138, a2, "fallDetectionStateMachine");
  }

  v139 = *(this + 136);
  if (v139)
  {
    (*(*v139 + 32))(v139, a2, "fallDetectionWristStateReplay");
  }

  v140 = *(this + 137);
  if (v140)
  {
    (*(*v140 + 32))(v140, a2, "fallDistanceReplay");
  }

  v141 = *(this + 138);
  if (v141)
  {
    (*(*v141 + 32))(v141, a2, "fallFalsePositiveSuppressionFeatures");
  }

  v142 = *(this + 139);
  if (v142)
  {
    (*(*v142 + 32))(v142, a2, "fallSnippet");
  }

  v143 = *(this + 140);
  if (v143)
  {
    (*(*v143 + 32))(v143, a2, "fallStats");
  }

  v144 = *(this + 141);
  if (v144)
  {
    (*(*v144 + 32))(v144, a2, "firstStepFeatures");
  }

  v145 = *(this + 142);
  if (v145)
  {
    (*(*v145 + 32))(v145, a2, "fitnessMachineData");
  }

  v146 = *(this + 143);
  if (v146)
  {
    (*(*v146 + 32))(v146, a2, "fitnessMachineSample");
  }

  v147 = *(this + 144);
  if (v147)
  {
    (*(*v147 + 32))(v147, a2, "flickControlParameters");
  }

  v148 = *(this + 145);
  if (v148)
  {
    (*(*v148 + 32))(v148, a2, "flickFPDetectorFeatures");
  }

  v149 = *(this + 146);
  if (v149)
  {
    (*(*v149 + 32))(v149, a2, "flickFeatures");
  }

  v150 = *(this + 147);
  if (v150)
  {
    (*(*v150 + 32))(v150, a2, "flickGesture");
  }

  v151 = *(this + 148);
  if (v151)
  {
    (*(*v151 + 32))(v151, a2, "flickGyroMaxima");
  }

  v152 = *(this + 149);
  if (v152)
  {
    (*(*v152 + 32))(v152, a2, "flickLPFDM6Data");
  }

  v153 = *(this + 150);
  if (v153)
  {
    (*(*v153 + 32))(v153, a2, "flickMaxima");
  }

  v154 = *(this + 151);
  if (v154)
  {
    (*(*v154 + 32))(v154, a2, "focusModes");
  }

  v155 = *(this + 152);
  if (v155)
  {
    (*(*v155 + 32))(v155, a2, "frequencyResponse");
  }

  v156 = *(this + 153);
  if (v156)
  {
    (*(*v156 + 32))(v156, a2, "fusedBioMotionClassification");
  }

  v157 = *(this + 154);
  if (v157)
  {
    (*(*v157 + 32))(v157, a2, "gPSCalibrationBin");
  }

  v158 = *(this + 155);
  if (v158)
  {
    (*(*v158 + 32))(v158, a2, "gaitCycleSegment");
  }

  v159 = *(this + 156);
  if (v159)
  {
    (*(*v159 + 32))(v159, a2, "gaitCycleSegmentationState");
  }

  v160 = *(this + 157);
  if (v160)
  {
    (*(*v160 + 32))(v160, a2, "gaitEventsHKResult");
  }

  v161 = *(this + 158);
  if (v161)
  {
    (*(*v161 + 32))(v161, a2, "gaitEventsModelOutput");
  }

  v162 = *(this + 159);
  if (v162)
  {
    (*(*v162 + 32))(v162, a2, "gaitEventsStrideAggregation");
  }

  v163 = *(this + 160);
  if (v163)
  {
    (*(*v163 + 32))(v163, a2, "geomagneticData");
  }

  v164 = *(this + 161);
  if (v164)
  {
    (*(*v164 + 32))(v164, a2, "gestureLogSource");
  }

  v165 = *(this + 162);
  if (v165)
  {
    (*(*v165 + 32))(v165, a2, "gestureQuaternion");
  }

  v166 = *(this + 163);
  if (v166)
  {
    (*(*v166 + 32))(v166, a2, "gnssAvailabilityPredictorData");
  }

  v167 = *(this + 164);
  if (v167)
  {
    (*(*v167 + 32))(v167, a2, "gnssLeechLocationData");
  }

  v168 = *(this + 165);
  if (v168)
  {
    (*(*v168 + 32))(v168, a2, "gravityConstraints");
  }

  v169 = *(this + 166);
  if (v169)
  {
    (*(*v169 + 32))(v169, a2, "gravityCorrection");
  }

  v170 = *(this + 167);
  if (v170)
  {
    (*(*v170 + 32))(v170, a2, "gyro");
  }

  v171 = *(this + 168);
  if (v171)
  {
    (*(*v171 + 32))(v171, a2, "gyroBiasAndVariance");
  }

  v172 = *(this + 169);
  if (v172)
  {
    (*(*v172 + 32))(v172, a2, "gyroBiasConstraints");
  }

  v173 = *(this + 170);
  if (v173)
  {
    (*(*v173 + 32))(v173, a2, "gyroBiasCorrection");
  }

  v174 = *(this + 171);
  if (v174)
  {
    (*(*v174 + 32))(v174, a2, "gyroBiasEstimate");
  }

  v175 = *(this + 172);
  if (v175)
  {
    (*(*v175 + 32))(v175, a2, "gyroBiasEstimateError");
  }

  v176 = *(this + 173);
  if (v176)
  {
    (*(*v176 + 32))(v176, a2, "gyroBiasFit");
  }

  v177 = *(this + 174);
  if (v177)
  {
    (*(*v177 + 32))(v177, a2, "gyroCalibrationDataFactory");
  }

  v178 = *(this + 175);
  if (v178)
  {
    (*(*v178 + 32))(v178, a2, "gyroCalibrationDataNonlinearNonFactory");
  }

  v179 = *(this + 176);
  if (v179)
  {
    (*(*v179 + 32))(v179, a2, "gyroCalibrationSample");
  }

  v180 = *(this + 177);
  if (v180)
  {
    (*(*v180 + 32))(v180, a2, "gyroCalibrationSampleNonlinear");
  }

  v181 = *(this + 178);
  if (v181)
  {
    (*(*v181 + 32))(v181, a2, "gyroCompass");
  }

  v182 = *(this + 179);
  if (v182)
  {
    (*(*v182 + 32))(v182, a2, "gyroController");
  }

  v183 = *(this + 180);
  if (v183)
  {
    (*(*v183 + 32))(v183, a2, "gyroDt");
  }

  v184 = *(this + 181);
  if (v184)
  {
    (*(*v184 + 32))(v184, a2, "gyroFactoryCalibrationData");
  }

  v185 = *(this + 182);
  if (v185)
  {
    (*(*v185 + 32))(v185, a2, "gyroGps");
  }

  v186 = *(this + 183);
  if (v186)
  {
    (*(*v186 + 32))(v186, a2, "gyroOscarEmu");
  }

  v187 = *(this + 184);
  if (v187)
  {
    (*(*v187 + 32))(v187, a2, "gyroScaleEstimate");
  }

  v188 = *(this + 185);
  if (v188)
  {
    (*(*v188 + 32))(v188, a2, "gyroTemperature");
  }

  v189 = *(this + 186);
  if (v189)
  {
    (*(*v189 + 32))(v189, a2, "hapticModuleState");
  }

  v190 = *(this + 187);
  if (v190)
  {
    (*(*v190 + 32))(v190, a2, "harmonicMetrics");
  }

  v191 = *(this + 188);
  if (v191)
  {
    (*(*v191 + 32))(v191, a2, "headToHeadsetAttitudeEstimatorMeasurementUpdate");
  }

  v192 = *(this + 189);
  if (v192)
  {
    (*(*v192 + 32))(v192, a2, "headToHeadsetTransformationEstimate");
  }

  v193 = *(this + 190);
  if (v193)
  {
    (*(*v193 + 32))(v193, a2, "headTrackingBehaviorUpdate");
  }

  v194 = *(this + 191);
  if (v194)
  {
    (*(*v194 + 32))(v194, a2, "headTrackingClientModeUpdate");
  }

  v195 = *(this + 192);
  if (v195)
  {
    (*(*v195 + 32))(v195, a2, "heartRateReference");
  }

  v196 = *(this + 193);
  if (v196)
  {
    (*(*v196 + 32))(v196, a2, "heartRateSourceDevice");
  }

  v197 = *(this + 194);
  if (v197)
  {
    (*(*v197 + 32))(v197, a2, "hgAccel");
  }

  v198 = *(this + 195);
  if (v198)
  {
    (*(*v198 + 32))(v198, a2, "hidShower");
  }

  v199 = *(this + 196);
  if (v199)
  {
    (*(*v199 + 32))(v199, a2, "imuComboPacket");
  }

  v200 = *(this + 197);
  if (v200)
  {
    (*(*v200 + 32))(v200, a2, "inEarAdditionalState");
  }

  v201 = *(this + 198);
  if (v201)
  {
    (*(*v201 + 32))(v201, a2, "inEarBaseline");
  }

  v202 = *(this + 199);
  if (v202)
  {
    (*(*v202 + 32))(v202, a2, "inEarBaselining");
  }

  v203 = *(this + 200);
  if (v203)
  {
    (*(*v203 + 32))(v203, a2, "inEarConstraints");
  }

  v204 = *(this + 201);
  if (v204)
  {
    (*(*v204 + 32))(v204, a2, "inEarOpenLid");
  }

  v205 = *(this + 202);
  if (v205)
  {
    (*(*v205 + 32))(v205, a2, "inEarOptical");
  }

  v206 = *(this + 203);
  if (v206)
  {
    (*(*v206 + 32))(v206, a2, "inEarSession");
  }

  v207 = *(this + 204);
  if (v207)
  {
    (*(*v207 + 32))(v207, a2, "inEarTransition");
  }

  v208 = *(this + 205);
  if (v208)
  {
    (*(*v208 + 32))(v208, a2, "inEarTransitionEntry");
  }

  v209 = *(this + 206);
  if (v209)
  {
    (*(*v209 + 32))(v209, a2, "inertialOdometry");
  }

  v210 = *(this + 207);
  if (v210)
  {
    (*(*v210 + 32))(v210, a2, "initialHistoricalMeanSeaLevelPressure");
  }

  v211 = *(this + 208);
  if (v211)
  {
    (*(*v211 + 32))(v211, a2, "interpolatedAccessoryAccel");
  }

  v212 = *(this + 209);
  if (v212)
  {
    (*(*v212 + 32))(v212, a2, "intersiloNSCodingData");
  }

  v213 = *(this + 210);
  if (v213)
  {
    (*(*v213 + 32))(v213, a2, "ispPacket");
  }

  v214 = *(this + 211);
  if (v214)
  {
    (*(*v214 + 32))(v214, a2, "jitterBufferLevel");
  }

  v215 = *(this + 212);
  if (v215)
  {
    (*(*v215 + 32))(v215, a2, "jointLinkModelPose");
  }

  v216 = *(this + 213);
  if (v216)
  {
    (*(*v216 + 32))(v216, a2, "jointLinkModelPredictedPose");
  }

  v217 = *(this + 214);
  if (v217)
  {
    (*(*v217 + 32))(v217, a2, "kappaActivityPhone");
  }

  v218 = *(this + 215);
  if (v218)
  {
    (*(*v218 + 32))(v218, a2, "kappaActivityWatch");
  }

  v219 = *(this + 216);
  if (v219)
  {
    (*(*v219 + 32))(v219, a2, "kappaAirbagResult");
  }

  v220 = *(this + 217);
  if (v220)
  {
    (*(*v220 + 32))(v220, a2, "kappaAudioResult");
  }

  v221 = *(this + 218);
  if (v221)
  {
    (*(*v221 + 32))(v221, a2, "kappaBaroResult");
  }

  v222 = *(this + 219);
  if (v222)
  {
    (*(*v222 + 32))(v222, a2, "kappaCrashResult");
  }

  v223 = *(this + 220);
  if (v223)
  {
    (*(*v223 + 32))(v223, a2, "kappaDirectionOfTravel");
  }

  v224 = *(this + 221);
  if (v224)
  {
    (*(*v224 + 32))(v224, a2, "kappaGpsResult");
  }

  v225 = *(this + 222);
  if (v225)
  {
    (*(*v225 + 32))(v225, a2, "kappaGravityAutocorrelationResult");
  }

  v226 = *(this + 223);
  if (v226)
  {
    (*(*v226 + 32))(v226, a2, "kappaHighSpeedCrashResult");
  }

  v227 = *(this + 224);
  if (v227)
  {
    (*(*v227 + 32))(v227, a2, "kappaLackOfMotionResult");
  }

  v228 = *(this + 225);
  if (v228)
  {
    (*(*v228 + 32))(v228, a2, "kappaLocalAudioResult");
  }

  v229 = *(this + 226);
  if (v229)
  {
    (*(*v229 + 32))(v229, a2, "kappaMildImpactResult");
  }

  v230 = *(this + 227);
  if (v230)
  {
    (*(*v230 + 32))(v230, a2, "kappaPeakDetectorMapMagTimestamps");
  }

  v231 = *(this + 228);
  if (v231)
  {
    (*(*v231 + 32))(v231, a2, "kappaPeakDetectorMapResult");
  }

  v232 = *(this + 229);
  if (v232)
  {
    (*(*v232 + 32))(v232, a2, "kappaPulseDeltaV");
  }

  v233 = *(this + 230);
  if (v233)
  {
    (*(*v233 + 32))(v233, a2, "kappaPulseInertialAccel");
  }

  v234 = *(this + 231);
  if (v234)
  {
    (*(*v234 + 32))(v234, a2, "kappaPulseInertialHgAccel");
  }

  v235 = *(this + 232);
  if (v235)
  {
    (*(*v235 + 32))(v235, a2, "kappaPulseResult");
  }

  v236 = *(this + 233);
  if (v236)
  {
    (*(*v236 + 32))(v236, a2, "kappaQuiescenceResult");
  }

  v237 = *(this + 234);
  if (v237)
  {
    (*(*v237 + 32))(v237, a2, "kappaRecoveryResult");
  }

  v238 = *(this + 235);
  if (v238)
  {
    (*(*v238 + 32))(v238, a2, "kappaRemoteAudioResult");
  }

  v239 = *(this + 236);
  if (v239)
  {
    (*(*v239 + 32))(v239, a2, "kappaRoads");
  }

  v240 = *(this + 237);
  if (v240)
  {
    (*(*v240 + 32))(v240, a2, "kappaRoadsResult");
  }

  v241 = *(this + 238);
  if (v241)
  {
    (*(*v241 + 32))(v241, a2, "kappaRolloverCrashResult");
  }

  v242 = *(this + 239);
  if (v242)
  {
    (*(*v242 + 32))(v242, a2, "kappaSevereCrashResult");
  }

  v243 = *(this + 240);
  if (v243)
  {
    (*(*v243 + 32))(v243, a2, "kappaSpinResult");
  }

  v244 = *(this + 241);
  if (v244)
  {
    (*(*v244 + 32))(v244, a2, "kappaSteps");
  }

  v245 = *(this + 242);
  if (v245)
  {
    (*(*v245 + 32))(v245, a2, "kappaStepsResult");
  }

  v246 = *(this + 243);
  if (v246)
  {
    (*(*v246 + 32))(v246, a2, "kappaTrigger");
  }

  v247 = *(this + 244);
  if (v247)
  {
    (*(*v247 + 32))(v247, a2, "kappaTriggerClustersResult");
  }

  v248 = *(this + 245);
  if (v248)
  {
    (*(*v248 + 32))(v248, a2, "kappaTriggerDebug");
  }

  v249 = *(this + 246);
  if (v249)
  {
    (*(*v249 + 32))(v249, a2, "kappaZgDetected");
  }

  v250 = *(this + 247);
  if (v250)
  {
    (*(*v250 + 32))(v250, a2, "kappaZgResult");
  }

  v251 = *(this + 248);
  if (v251)
  {
    (*(*v251 + 32))(v251, a2, "keyboardAttached");
  }

  v252 = *(this + 249);
  if (v252)
  {
    (*(*v252 + 32))(v252, a2, "keyboardKeyPress");
  }

  v253 = *(this + 250);
  if (v253)
  {
    (*(*v253 + 32))(v253, a2, "keyboardMotionFeatures");
  }

  v254 = *(this + 251);
  if (v254)
  {
    (*(*v254 + 32))(v254, a2, "keyboardMotionState");
  }

  v255 = *(this + 252);
  if (v255)
  {
    (*(*v255 + 32))(v255, a2, "keyboardMotionTrackpad");
  }

  v256 = *(this + 253);
  if (v256)
  {
    (*(*v256 + 32))(v256, a2, "kmVelocityEstimatorState");
  }

  v257 = *(this + 254);
  if (v257)
  {
    (*(*v257 + 32))(v257, a2, "legacyALS5CHInput");
  }

  v258 = *(this + 255);
  if (v258)
  {
    (*(*v258 + 32))(v258, a2, "liftToWakeFeaturesNeo");
  }

  v259 = *(this + 256);
  if (v259)
  {
    (*(*v259 + 32))(v259, a2, "liftToWakeOnHeadStatus");
  }

  v260 = *(this + 257);
  if (v260)
  {
    (*(*v260 + 32))(v260, a2, "liftToWakeState");
  }

  v261 = *(this + 258);
  if (v261)
  {
    (*(*v261 + 32))(v261, a2, "liftToWakeStatusNeo");
  }

  v262 = *(this + 259);
  if (v262)
  {
    (*(*v262 + 32))(v262, a2, "locationOscarEmu");
  }

  v263 = *(this + 260);
  if (v263)
  {
    (*(*v263 + 32))(v263, a2, "lockScreenStatus");
  }

  v264 = *(this + 261);
  if (v264)
  {
    (*(*v264 + 32))(v264, a2, "lslHeadingEstimation");
  }

  v265 = *(this + 262);
  if (v265)
  {
    (*(*v265 + 32))(v265, a2, "mLBasedBioMotionClassification");
  }

  v266 = *(this + 263);
  if (v266)
  {
    (*(*v266 + 32))(v266, a2, "magicMountState");
  }

  v267 = *(this + 264);
  if (v267)
  {
    (*(*v267 + 32))(v267, a2, "magneticAccessoryType1");
  }

  v268 = *(this + 265);
  if (v268)
  {
    (*(*v268 + 32))(v268, a2, "magneticAccessoryType2");
  }

  v269 = *(this + 266);
  if (v269)
  {
    (*(*v269 + 32))(v269, a2, "magnetometer");
  }

  v270 = *(this + 267);
  if (v270)
  {
    (*(*v270 + 32))(v270, a2, "magnetometerCalibratorFilterParameters");
  }

  v271 = *(this + 268);
  if (v271)
  {
    (*(*v271 + 32))(v271, a2, "magnetometerReset");
  }

  v272 = *(this + 269);
  if (v272)
  {
    (*(*v272 + 32))(v272, a2, "mapsRouteHintData");
  }

  v273 = *(this + 270);
  if (v273)
  {
    (*(*v273 + 32))(v273, a2, "metsInfo");
  }

  v274 = *(this + 271);
  if (v274)
  {
    (*(*v274 + 32))(v274, a2, "mobilityBoutMetrics");
  }

  v275 = *(this + 272);
  if (v275)
  {
    (*(*v275 + 32))(v275, a2, "mobilityCalibrationMessage");
  }

  v276 = *(this + 273);
  if (v276)
  {
    (*(*v276 + 32))(v276, a2, "mobilitySmoothedGaitMetrics");
  }

  v277 = *(this + 274);
  if (v277)
  {
    (*(*v277 + 32))(v277, a2, "modelBasedBioMotionClassification");
  }

  v278 = *(this + 275);
  if (v278)
  {
    (*(*v278 + 32))(v278, a2, "motionActivity");
  }

  v279 = *(this + 276);
  if (v279)
  {
    (*(*v279 + 32))(v279, a2, "motionActivityReplay");
  }

  v280 = *(this + 277);
  if (v280)
  {
    (*(*v280 + 32))(v280, a2, "motionContextActivity");
  }

  v281 = *(this + 278);
  if (v281)
  {
    (*(*v281 + 32))(v281, a2, "motionGPSLocation");
  }

  v282 = *(this + 279);
  if (v282)
  {
    (*(*v282 + 32))(v282, a2, "motionHint");
  }

  v283 = *(this + 280);
  if (v283)
  {
    (*(*v283 + 32))(v283, a2, "motionLocation");
  }

  v284 = *(this + 281);
  if (v284)
  {
    (*(*v284 + 32))(v284, a2, "motionLoiAltitudeData");
  }

  v285 = *(this + 282);
  if (v285)
  {
    (*(*v285 + 32))(v285, a2, "motionLoiData");
  }

  v286 = *(this + 283);
  if (v286)
  {
    (*(*v286 + 32))(v286, a2, "motionStateUpdate");
  }

  v287 = *(this + 284);
  if (v287)
  {
    (*(*v287 + 32))(v287, a2, "motionWifiAssociation");
  }

  v288 = *(this + 285);
  if (v288)
  {
    (*(*v288 + 32))(v288, a2, "motionWifiLocation");
  }

  v289 = *(this + 286);
  if (v289)
  {
    (*(*v289 + 32))(v289, a2, "movementStats");
  }

  v290 = *(this + 287);
  if (v290)
  {
    (*(*v290 + 32))(v290, a2, "movementStatsGravityProjection");
  }

  v291 = *(this + 288);
  if (v291)
  {
    (*(*v291 + 32))(v291, a2, "movementStatsSignal");
  }

  v292 = *(this + 289);
  if (v292)
  {
    (*(*v292 + 32))(v292, a2, "natalieData");
  }

  v293 = *(this + 290);
  if (v293)
  {
    (*(*v293 + 32))(v293, a2, "nonlinearBiasFit");
  }

  v294 = *(this + 291);
  if (v294)
  {
    (*(*v294 + 32))(v294, a2, "normalGammaCalibrationBin");
  }

  v295 = *(this + 292);
  if (v295)
  {
    (*(*v295 + 32))(v295, a2, "odometer");
  }

  v296 = *(this + 293);
  if (v296)
  {
    (*(*v296 + 32))(v296, a2, "odometerWithAltitude");
  }

  v297 = *(this + 294);
  if (v297)
  {
    (*(*v297 + 32))(v297, a2, "odtPose");
  }

  v298 = *(this + 295);
  if (v298)
  {
    (*(*v298 + 32))(v298, a2, "onsetHeartRateData");
  }

  v299 = *(this + 296);
  if (v299)
  {
    (*(*v299 + 32))(v299, a2, "orientation");
  }

  v300 = *(this + 297);
  if (v300)
  {
    (*(*v300 + 32))(v300, a2, "pdrAlgType");
  }

  v301 = *(this + 298);
  if (v301)
  {
    (*(*v301 + 32))(v301, a2, "pdrDOTEstimatorState");
  }

  v302 = *(this + 299);
  if (v302)
  {
    (*(*v302 + 32))(v302, a2, "pdrDOTEstimatorStateArmSwing");
  }

  v303 = *(this + 300);
  if (v303)
  {
    (*(*v303 + 32))(v303, a2, "pdrDOTEstimatorStateBody");
  }

  v304 = *(this + 301);
  if (v304)
  {
    (*(*v304 + 32))(v304, a2, "pdrDOTEstimatorStateBodyDebug");
  }

  v305 = *(this + 302);
  if (v305)
  {
    (*(*v305 + 32))(v305, a2, "pdrDOTEstimatorStateDebug");
  }

  v306 = *(this + 303);
  if (v306)
  {
    (*(*v306 + 32))(v306, a2, "pdrDOTEstimatorStateHeading");
  }

  v307 = *(this + 304);
  if (v307)
  {
    (*(*v307 + 32))(v307, a2, "pdrDOTEstimatorStateSwingDebug");
  }

  v308 = *(this + 305);
  if (v308)
  {
    (*(*v308 + 32))(v308, a2, "pdrDOTEstimatorStateTNBDebug");
  }

  v309 = *(this + 306);
  if (v309)
  {
    (*(*v309 + 32))(v309, a2, "pdrDOTEstimatorUncertaintyModelOnBody");
  }

  v310 = *(this + 307);
  if (v310)
  {
    (*(*v310 + 32))(v310, a2, "pdrDOTMeasurementSelectorState");
  }

  v311 = *(this + 308);
  if (v311)
  {
    (*(*v311 + 32))(v311, a2, "pdrFeatures");
  }

  v312 = *(this + 309);
  if (v312)
  {
    (*(*v312 + 32))(v312, a2, "pdrFenceReference");
  }

  v313 = *(this + 310);
  if (v313)
  {
    (*(*v313 + 32))(v313, a2, "pdrFenceState");
  }

  v314 = *(this + 311);
  if (v314)
  {
    (*(*v314 + 32))(v314, a2, "pdrImpulse");
  }

  v315 = *(this + 312);
  if (v315)
  {
    (*(*v315 + 32))(v315, a2, "pdrMLModelOutput");
  }

  v316 = *(this + 313);
  if (v316)
  {
    (*(*v316 + 32))(v316, a2, "pdrPedestrianClassifierState");
  }

  v317 = *(this + 314);
  if (v317)
  {
    (*(*v317 + 32))(v317, a2, "pdrPlacementClassifierState");
  }

  v318 = *(this + 315);
  if (v318)
  {
    (*(*v318 + 32))(v318, a2, "pdrSpeedEstimatorState");
  }

  v319 = *(this + 316);
  if (v319)
  {
    (*(*v319 + 32))(v319, a2, "pdrSpeedEstimatorStateDebug");
  }

  v320 = *(this + 317);
  if (v320)
  {
    (*(*v320 + 32))(v320, a2, "pdrVelocityEstimatorState");
  }

  v321 = *(this + 318);
  if (v321)
  {
    (*(*v321 + 32))(v321, a2, "pearlAttitude");
  }

  v322 = *(this + 319);
  if (v322)
  {
    (*(*v322 + 32))(v322, a2, "pedOdomFusionExtendedModeSegment");
  }

  v323 = *(this + 320);
  if (v323)
  {
    (*(*v323 + 32))(v323, a2, "pedestrianCalorieModelDebugging");
  }

  v324 = *(this + 321);
  if (v324)
  {
    (*(*v324 + 32))(v324, a2, "pedestrianFenceExit");
  }

  v325 = *(this + 322);
  if (v325)
  {
    (*(*v325 + 32))(v325, a2, "pedometerPathStraightness");
  }

  v326 = *(this + 323);
  if (v326)
  {
    (*(*v326 + 32))(v326, a2, "peerState");
  }

  v327 = *(this + 324);
  if (v327)
  {
    (*(*v327 + 32))(v327, a2, "pencilDeviceMotion");
  }

  v328 = *(this + 325);
  if (v328)
  {
    (*(*v328 + 32))(v328, a2, "pencilFusionDMYawAlignmentUpdate");
  }

  v329 = *(this + 326);
  if (v329)
  {
    (*(*v329 + 32))(v329, a2, "pencilFusionReplayResult");
  }

  v330 = *(this + 327);
  if (v330)
  {
    (*(*v330 + 32))(v330, a2, "pencilFusionResult");
  }

  v331 = *(this + 328);
  if (v331)
  {
    (*(*v331 + 32))(v331, a2, "pencilFusionRingSensorTrustModelUpdate");
  }

  v332 = *(this + 329);
  if (v332)
  {
    (*(*v332 + 32))(v332, a2, "pencilTipForce");
  }

  v333 = *(this + 330);
  if (v333)
  {
    (*(*v333 + 32))(v333, a2, "pencilTouch");
  }

  v334 = *(this + 331);
  if (v334)
  {
    (*(*v334 + 32))(v334, a2, "physicalEffortInput");
  }

  v335 = *(this + 332);
  if (v335)
  {
    (*(*v335 + 32))(v335, a2, "physicalEffortSample");
  }

  v336 = *(this + 333);
  if (v336)
  {
    (*(*v336 + 32))(v336, a2, "pocketDetectionPacket");
  }

  v337 = *(this + 334);
  if (v337)
  {
    (*(*v337 + 32))(v337, a2, "pose");
  }

  v338 = *(this + 335);
  if (v338)
  {
    (*(*v338 + 32))(v338, a2, "poseState");
  }

  v339 = *(this + 336);
  if (v339)
  {
    (*(*v339 + 32))(v339, a2, "postureJoint");
  }

  v340 = *(this + 337);
  if (v340)
  {
    (*(*v340 + 32))(v340, a2, "postureSkeleton");
  }

  v341 = *(this + 338);
  if (v341)
  {
    (*(*v341 + 32))(v341, a2, "powerManagementUserActivity");
  }

  v342 = *(this + 339);
  if (v342)
  {
    (*(*v342 + 32))(v342, a2, "precisionFindingDOTEstimate");
  }

  v343 = *(this + 340);
  if (v343)
  {
    (*(*v343 + 32))(v343, a2, "precisionFindingRangeFilter");
  }

  v344 = *(this + 341);
  if (v344)
  {
    (*(*v344 + 32))(v344, a2, "precisionFindingSessionStartStop");
  }

  v345 = *(this + 342);
  if (v345)
  {
    (*(*v345 + 32))(v345, a2, "precisionFindingState");
  }

  v346 = *(this + 343);
  if (v346)
  {
    (*(*v346 + 32))(v346, a2, "precisionFindingVelocityEstimate");
  }

  v347 = *(this + 344);
  if (v347)
  {
    (*(*v347 + 32))(v347, a2, "precisionFindingVerticalState");
  }

  v348 = *(this + 345);
  if (v348)
  {
    (*(*v348 + 32))(v348, a2, "predictedRelativeDeviceMotion");
  }

  v349 = *(this + 346);
  if (v349)
  {
    (*(*v349 + 32))(v349, a2, "pressure");
  }

  v350 = *(this + 347);
  if (v350)
  {
    (*(*v350 + 32))(v350, a2, "pressureCalibration");
  }

  v351 = *(this + 348);
  if (v351)
  {
    (*(*v351 + 32))(v351, a2, "pressureCompensated");
  }

  v352 = *(this + 349);
  if (v352)
  {
    (*(*v352 + 32))(v352, a2, "pressureFiltered");
  }

  v353 = *(this + 350);
  if (v353)
  {
    (*(*v353 + 32))(v353, a2, "pressureFiltered1HzLowPass");
  }

  v354 = *(this + 351);
  if (v354)
  {
    (*(*v354 + 32))(v354, a2, "pressureFilteredNoTemperature");
  }

  v355 = *(this + 352);
  if (v355)
  {
    (*(*v355 + 32))(v355, a2, "pressureGps");
  }

  v356 = *(this + 353);
  if (v356)
  {
    (*(*v356 + 32))(v356, a2, "pressureOscarEmu");
  }

  v357 = *(this + 354);
  if (v357)
  {
    (*(*v357 + 32))(v357, a2, "prox");
  }

  v358 = *(this + 355);
  if (v358)
  {
    (*(*v358 + 32))(v358, a2, "proxBaselineEstimatorState");
  }

  v359 = *(this + 356);
  if (v359)
  {
    (*(*v359 + 32))(v359, a2, "proxCalibration");
  }

  v360 = *(this + 357);
  if (v360)
  {
    (*(*v360 + 32))(v360, a2, "proxPDP");
  }

  v361 = *(this + 358);
  if (v361)
  {
    (*(*v361 + 32))(v361, a2, "ptsConsumedGNSS");
  }

  v362 = *(this + 359);
  if (v362)
  {
    (*(*v362 + 32))(v362, a2, "ptsForwardPropagation");
  }

  v363 = *(this + 360);
  if (v363)
  {
    (*(*v363 + 32))(v363, a2, "ptsMapMatchedRoute");
  }

  v364 = *(this + 361);
  if (v364)
  {
    (*(*v364 + 32))(v364, a2, "ptsReconstructedRoute");
  }

  v365 = *(this + 362);
  if (v365)
  {
    (*(*v365 + 32))(v365, a2, "ptsSmoothedRoute");
  }

  v366 = *(this + 363);
  if (v366)
  {
    (*(*v366 + 32))(v366, a2, "rawAudio");
  }

  v367 = *(this + 364);
  if (v367)
  {
    (*(*v367 + 32))(v367, a2, "relDMInSystemConfig");
  }

  v368 = *(this + 365);
  if (v368)
  {
    (*(*v368 + 32))(v368, a2, "relativeDeviceMotionComplexTransition");
  }

  v369 = *(this + 366);
  if (v369)
  {
    (*(*v369 + 32))(v369, a2, "relativeDeviceMotionCorrelatedMotion");
  }

  v370 = *(this + 367);
  if (v370)
  {
    (*(*v370 + 32))(v370, a2, "relativeDeviceMotionInternal");
  }

  v371 = *(this + 368);
  if (v371)
  {
    (*(*v371 + 32))(v371, a2, "relativeGravityConstraints");
  }

  v372 = *(this + 369);
  if (v372)
  {
    (*(*v372 + 32))(v372, a2, "relativeGravityCorrection");
  }

  v373 = *(this + 370);
  if (v373)
  {
    (*(*v373 + 32))(v373, a2, "rhythmicGnssOperatorStatus");
  }

  v374 = *(this + 371);
  if (v374)
  {
    (*(*v374 + 32))(v374, a2, "rotationRate");
  }

  v375 = *(this + 372);
  if (v375)
  {
    (*(*v375 + 32))(v375, a2, "runningArmSwingSignals");
  }

  v376 = *(this + 373);
  if (v376)
  {
    (*(*v376 + 32))(v376, a2, "runningCentripetalAccelSignals");
  }

  v377 = *(this + 374);
  if (v377)
  {
    (*(*v377 + 32))(v377, a2, "runningFormMetrics");
  }

  v378 = *(this + 375);
  if (v378)
  {
    (*(*v378 + 32))(v378, a2, "runningPower");
  }

  v379 = *(this + 376);
  if (v379)
  {
    (*(*v379 + 32))(v379, a2, "runningRotationAxis");
  }

  v380 = *(this + 377);
  if (v380)
  {
    (*(*v380 + 32))(v380, a2, "runningSpeedKFResult");
  }

  v381 = *(this + 378);
  if (v381)
  {
    (*(*v381 + 32))(v381, a2, "runningStrideLength");
  }

  v382 = *(this + 379);
  if (v382)
  {
    (*(*v382 + 32))(v382, a2, "runningVerticalOscillation");
  }

  v383 = *(this + 380);
  if (v383)
  {
    (*(*v383 + 32))(v383, a2, "runningVerticalOscillationGradientBoostedSignals");
  }

  v384 = *(this + 381);
  if (v384)
  {
    (*(*v384 + 32))(v384, a2, "runningVerticalOscillationSignals");
  }

  v385 = *(this + 382);
  if (v385)
  {
    (*(*v385 + 32))(v385, a2, "safetyCompanionStatus");
  }

  v386 = *(this + 383);
  if (v386)
  {
    (*(*v386 + 32))(v386, a2, "safetyHertzSample");
  }

  v387 = *(this + 384);
  if (v387)
  {
    (*(*v387 + 32))(v387, a2, "safetyRemoteSample");
  }

  v388 = *(this + 385);
  if (v388)
  {
    (*(*v388 + 32))(v388, a2, "safetyTrustedAudioResult");
  }

  v389 = *(this + 386);
  if (v389)
  {
    (*(*v389 + 32))(v389, a2, "sessionOverride");
  }

  v390 = *(this + 387);
  if (v390)
  {
    (*(*v390 + 32))(v390, a2, "signalEnvironment");
  }

  v391 = *(this + 388);
  if (v391)
  {
    (*(*v391 + 32))(v391, a2, "simActivityEvent");
  }

  v392 = *(this + 389);
  if (v392)
  {
    (*(*v392 + 32))(v392, a2, "sitStandDetectorFeatures");
  }

  v393 = *(this + 390);
  if (v393)
  {
    (*(*v393 + 32))(v393, a2, "sitStandDetectorPosteriorBufferStatsForSitToStand");
  }

  v394 = *(this + 391);
  if (v394)
  {
    (*(*v394 + 32))(v394, a2, "sitStandDetectorPosteriorBufferStatsForStandToSit");
  }

  v395 = *(this + 392);
  if (v395)
  {
    (*(*v395 + 32))(v395, a2, "sitStandDetectorTransitions");
  }

  v396 = *(this + 393);
  if (v396)
  {
    (*(*v396 + 32))(v396, a2, "skeleton2D");
  }

  v397 = *(this + 394);
  if (v397)
  {
    (*(*v397 + 32))(v397, a2, "skeleton3D");
  }

  v398 = *(this + 395);
  if (v398)
  {
    (*(*v398 + 32))(v398, a2, "skeleton3DLifted");
  }

  v399 = *(this + 396);
  if (v399)
  {
    (*(*v399 + 32))(v399, a2, "skeleton3DRetargeted");
  }

  v400 = *(this + 397);
  if (v400)
  {
    (*(*v400 + 32))(v400, a2, "spatialEvent");
  }

  v401 = *(this + 398);
  if (v401)
  {
    (*(*v401 + 32))(v401, a2, "spl");
  }

  v402 = *(this + 399);
  if (v402)
  {
    (*(*v402 + 32))(v402, a2, "spuPlaybackExampleDeviceMotion");
  }

  v403 = *(this + 400);
  if (v403)
  {
    (*(*v403 + 32))(v403, a2, "spuPlaybackExampleMotionStateUpdate");
  }

  v404 = *(this + 401);
  if (v404)
  {
    (*(*v404 + 32))(v404, a2, "steadinessEvent");
  }

  v405 = *(this + 402);
  if (v405)
  {
    (*(*v405 + 32))(v405, a2, "steadinessModelBalanceFeatures");
  }

  v406 = *(this + 403);
  if (v406)
  {
    (*(*v406 + 32))(v406, a2, "steadinessModelContinuousWalkingFeatures");
  }

  v407 = *(this + 404);
  if (v407)
  {
    (*(*v407 + 32))(v407, a2, "steadinessModelGaitBaselineFeatures");
  }

  v408 = *(this + 405);
  if (v408)
  {
    (*(*v408 + 32))(v408, a2, "steadinessModelHarmonicFeatures");
  }

  v409 = *(this + 406);
  if (v409)
  {
    (*(*v409 + 32))(v409, a2, "steadinessModelResult");
  }

  v410 = *(this + 407);
  if (v410)
  {
    (*(*v410 + 32))(v410, a2, "steadinessModelTemporalDispersionFeatures");
  }

  v411 = *(this + 408);
  if (v411)
  {
    (*(*v411 + 32))(v411, a2, "steadinessModelTemporalEntropyFeatures");
  }

  v412 = *(this + 409);
  if (v412)
  {
    (*(*v412 + 32))(v412, a2, "stepCadenceToStrideLengthBin");
  }

  v413 = *(this + 410);
  if (v413)
  {
    (*(*v413 + 32))(v413, a2, "stepCountEntry");
  }

  v414 = *(this + 411);
  if (v414)
  {
    (*(*v414 + 32))(v414, a2, "stepCountEntryAddition");
  }

  v415 = *(this + 412);
  if (v415)
  {
    (*(*v415 + 32))(v415, a2, "stepDistanceFusionResult");
  }

  v416 = *(this + 413);
  if (v416)
  {
    (*(*v416 + 32))(v416, a2, "stepLikelihoodFeatures");
  }

  v417 = *(this + 414);
  if (v417)
  {
    (*(*v417 + 32))(v417, a2, "streamingHeartRateData");
  }

  v418 = *(this + 415);
  if (v418)
  {
    (*(*v418 + 32))(v418, a2, "streamingHeartRateDataWatch");
  }

  v419 = *(this + 416);
  if (v419)
  {
    (*(*v419 + 32))(v419, a2, "streamingHighFrequencyHeartRateData");
  }

  v420 = *(this + 417);
  if (v420)
  {
    (*(*v420 + 32))(v420, a2, "streamingHighFrequencyHeartRateDataWatch");
  }

  v421 = *(this + 418);
  if (v421)
  {
    (*(*v421 + 32))(v421, a2, "strideCalBin");
  }

  v422 = *(this + 419);
  if (v422)
  {
    (*(*v422 + 32))(v422, a2, "strideCalEntry");
  }

  v423 = *(this + 420);
  if (v423)
  {
    (*(*v423 + 32))(v423, a2, "subStats");
  }

  v424 = *(this + 421);
  if (v424)
  {
    (*(*v424 + 32))(v424, a2, "swingDoTCandidate");
  }

  v425 = *(this + 422);
  if (v425)
  {
    (*(*v425 + 32))(v425, a2, "tapAccept");
  }

  v426 = *(this + 423);
  if (v426)
  {
    (*(*v426 + 32))(v426, a2, "tapDetect");
  }

  v427 = *(this + 424);
  if (v427)
  {
    (*(*v427 + 32))(v427, a2, "tempestPoCAuxiliaryDeviceMotion");
  }

  v428 = *(this + 425);
  if (v428)
  {
    (*(*v428 + 32))(v428, a2, "tempestPoCListenerOrientation");
  }

  v429 = *(this + 426);
  if (v429)
  {
    (*(*v429 + 32))(v429, a2, "timestamp");
  }

  v430 = *(this + 427);
  if (v430)
  {
    (*(*v430 + 32))(v430, a2, "tnb");
  }

  v431 = *(this + 428);
  if (v431)
  {
    (*(*v431 + 32))(v431, a2, "touchOscarEmu");
  }

  v432 = *(this + 429);
  if (v432)
  {
    (*(*v432 + 32))(v432, a2, "trackRunData");
  }

  v433 = *(this + 430);
  if (v433)
  {
    (*(*v433 + 32))(v433, a2, "ultraFastAccel");
  }

  v434 = *(this + 431);
  if (v434)
  {
    (*(*v434 + 32))(v434, a2, "userInteraction");
  }

  v435 = *(this + 432);
  if (v435)
  {
    (*(*v435 + 32))(v435, a2, "userStudyEvent");
  }

  v436 = *(this + 433);
  if (v436)
  {
    (*(*v436 + 32))(v436, a2, "uwbRange");
  }

  v437 = *(this + 434);
  if (v437)
  {
    (*(*v437 + 32))(v437, a2, "vO2MaxModelInput");
  }

  v438 = *(this + 435);
  if (v438)
  {
    (*(*v438 + 32))(v438, a2, "velocityEstimatorFusionState");
  }

  v439 = *(this + 436);
  if (v439)
  {
    (*(*v439 + 32))(v439, a2, "vibrationEvent");
  }

  v440 = *(this + 437);
  if (v440)
  {
    (*(*v440 + 32))(v440, a2, "viewObstructedMachineLearningDecision");
  }

  v441 = *(this + 438);
  if (v441)
  {
    (*(*v441 + 32))(v441, a2, "viewObstructedMachineLearningFeatures");
  }

  v442 = *(this + 439);
  if (v442)
  {
    (*(*v442 + 32))(v442, a2, "viewObstructedMachineLearningProbabilities");
  }

  v443 = *(this + 440);
  if (v443)
  {
    (*(*v443 + 32))(v443, a2, "viewObstructedState");
  }

  v444 = *(this + 441);
  if (v444)
  {
    (*(*v444 + 32))(v444, a2, "vioEstimation");
  }

  v445 = *(this + 442);
  if (v445)
  {
    (*(*v445 + 32))(v445, a2, "vioPose");
  }

  v446 = *(this + 443);
  if (v446)
  {
    (*(*v446 + 32))(v446, a2, "vioReplayPose");
  }

  v447 = *(this + 444);
  if (v447)
  {
    (*(*v447 + 32))(v447, a2, "visionCompassBias");
  }

  v448 = *(this + 445);
  if (v448)
  {
    (*(*v448 + 32))(v448, a2, "visualLocalization");
  }

  v449 = *(this + 446);
  if (v449)
  {
    (*(*v449 + 32))(v449, a2, "visualLocalizationAttitudeConstraints");
  }

  v450 = *(this + 447);
  if (v450)
  {
    (*(*v450 + 32))(v450, a2, "visualLocalizationAttitudeCorrection");
  }

  v451 = *(this + 448);
  if (v451)
  {
    (*(*v451 + 32))(v451, a2, "visualStateMeasurement");
  }

  v452 = *(this + 449);
  if (v452)
  {
    (*(*v452 + 32))(v452, a2, "vo2MaxInput");
  }

  v453 = *(this + 450);
  if (v453)
  {
    (*(*v453 + 32))(v453, a2, "vo2MaxOutput");
  }

  v454 = *(this + 451);
  if (v454)
  {
    (*(*v454 + 32))(v454, a2, "wakeGestureNotification");
  }

  v455 = *(this + 452);
  if (v455)
  {
    (*(*v455 + 32))(v455, a2, "wakeGestureSample");
  }

  v456 = *(this + 453);
  if (v456)
  {
    (*(*v456 + 32))(v456, a2, "walkingDetectionResult");
  }

  v457 = *(this + 454);
  if (v457)
  {
    (*(*v457 + 32))(v457, a2, "walkingSteadinessClassification");
  }

  v458 = *(this + 455);
  if (v458)
  {
    (*(*v458 + 32))(v458, a2, "watchActiveCalories");
  }

  v459 = *(this + 456);
  if (v459)
  {
    (*(*v459 + 32))(v459, a2, "watchBasalCalories");
  }

  v460 = *(this + 457);
  if (v460)
  {
    (*(*v460 + 32))(v460, a2, "watchEnclosureMaterial");
  }

  v461 = *(this + 458);
  if (v461)
  {
    (*(*v461 + 32))(v461, a2, "watchHeartRateData");
  }

  v462 = *(this + 459);
  if (v462)
  {
    (*(*v462 + 32))(v462, a2, "watchOnWristState");
  }

  v463 = *(this + 460);
  if (v463)
  {
    (*(*v463 + 32))(v463, a2, "watchOrientationSettings");
  }

  v464 = *(this + 461);
  if (v464)
  {
    (*(*v464 + 32))(v464, a2, "wifiScanResults");
  }

  v465 = *(this + 462);
  if (v465)
  {
    (*(*v465 + 32))(v465, a2, "workoutActivity");
  }

  v466 = *(this + 463);
  if (v466)
  {
    (*(*v466 + 32))(v466, a2, "workoutEvent");
  }

  v467 = *(this + 464);
  if (v467)
  {
    (*(*v467 + 32))(v467, a2, "workoutRecorderALSData");
  }

  v468 = *(this + 465);
  if (v468)
  {
    (*(*v468 + 32))(v468, a2, "workoutRecorderAccel");
  }

  v469 = *(this + 466);
  if (v469)
  {
    (*(*v469 + 32))(v469, a2, "workoutRecorderAccel800");
  }

  v470 = *(this + 467);
  if (v470)
  {
    (*(*v470 + 32))(v470, a2, "workoutRecorderAccessoryDeviceMotionConfig");
  }

  v471 = *(this + 468);
  if (v471)
  {
    (*(*v471 + 32))(v471, a2, "workoutRecorderAudioAccessoryDeviceMotion");
  }

  v472 = *(this + 469);
  if (v472)
  {
    (*(*v472 + 32))(v472, a2, "workoutRecorderAveragedALSData");
  }

  v473 = *(this + 470);
  if (v473)
  {
    (*(*v473 + 32))(v473, a2, "workoutRecorderBodyMetrics");
  }

  v474 = *(this + 471);
  if (v474)
  {
    (*(*v474 + 32))(v474, a2, "workoutRecorderCompassCalibration");
  }

  v475 = *(this + 472);
  if (v475)
  {
    (*(*v475 + 32))(v475, a2, "workoutRecorderElevation");
  }

  v476 = *(this + 473);
  if (v476)
  {
    (*(*v476 + 32))(v476, a2, "workoutRecorderFaceCovered");
  }

  v477 = *(this + 474);
  if (v477)
  {
    (*(*v477 + 32))(v477, a2, "workoutRecorderFitnessMachineData");
  }

  v478 = *(this + 475);
  if (v478)
  {
    (*(*v478 + 32))(v478, a2, "workoutRecorderHealthKitInfo");
  }

  v479 = *(this + 476);
  if (v479)
  {
    (*(*v479 + 32))(v479, a2, "workoutRecorderHeartRate");
  }

  v480 = *(this + 477);
  if (v480)
  {
    (*(*v480 + 32))(v480, a2, "workoutRecorderHeartRateAccessory");
  }

  v481 = *(this + 478);
  if (v481)
  {
    (*(*v481 + 32))(v481, a2, "workoutRecorderHeartRateSourceDevice");
  }

  v482 = *(this + 479);
  if (v482)
  {
    (*(*v482 + 32))(v482, a2, "workoutRecorderHighFrequencyHeartRateWatch");
  }

  v483 = *(this + 480);
  if (v483)
  {
    (*(*v483 + 32))(v483, a2, "workoutRecorderMagnetometer");
  }

  v484 = *(this + 481);
  if (v484)
  {
    (*(*v484 + 32))(v484, a2, "workoutRecorderOdometer");
  }

  v485 = *(this + 482);
  if (v485)
  {
    (*(*v485 + 32))(v485, a2, "workoutRecorderPressure");
  }

  v486 = *(this + 483);
  if (v486)
  {
    (*(*v486 + 32))(v486, a2, "workoutRecorderRotationRate");
  }

  v487 = *(this + 484);
  if (v487)
  {
    (*(*v487 + 32))(v487, a2, "workoutRecorderWatchOnWristStatus");
  }

  v488 = *(this + 485);
  if (v488)
  {
    (*(*v488 + 32))(v488, a2, "workoutRecorderWatchOrientationSettings");
  }

  v489 = *(this + 486);
  if (v489)
  {
    (*(*v489 + 32))(v489, a2, "workoutRecorderWifiScanResults");
  }

  v490 = *(this + 487);
  if (v490)
  {
    (*(*v490 + 32))(v490, a2, "workoutRecorderWorkoutEvent");
  }

  v491 = *(this + 488);
  if (v491)
  {
    (*(*v491 + 32))(v491, a2, "workoutRecorderWorkoutSessionPriors");
  }

  v492 = *(this + 489);
  if (v492)
  {
    (*(*v492 + 32))(v492, a2, "workoutSessionPriors");
  }

  v493 = *(this + 490);
  if (v493)
  {
    (*(*v493 + 32))(v493, a2, "zeroVelocityCorrection");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Item::readFrom(CMMsl::Item *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (1)
      {
        if (!v19)
        {
          v10 = 0;
          *(a2 + 24) = 1;
          goto LABEL_21;
        }

        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
LABEL_17:
          v10 = 0;
          goto LABEL_21;
        }
      }

      if (*(a2 + 24))
      {
        v10 = 0;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_21:
    v4 = *(a2 + 24);
    if ((v4 & 1) != 0 || (v10 & 7) == 4)
    {
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2047)
    {
      switch(v22)
      {
        case 1:
          *(this + 3928) |= 1u;
          v23 = *(a2 + 1);
          if (v23 <= 0xFFFFFFFFFFFFFFF7 && v23 + 8 <= *(a2 + 2))
          {
            *(this + 87) = *(*a2 + v23);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_525;
        case 2:
          operator new();
        case 3:
          operator new();
        case 4:
          operator new();
        case 5:
          operator new();
        case 6:
          operator new();
        case 7:
          operator new();
        case 8:
          operator new();
        case 9:
          operator new();
        case 10:
          operator new();
        case 11:
          operator new();
        case 12:
        case 13:
        case 14:
        case 15:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 93:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 137:
        case 138:
        case 146:
        case 147:
        case 149:
        case 211:
        case 283:
        case 284:
        case 285:
        case 286:
        case 287:
        case 288:
        case 289:
        case 290:
        case 291:
        case 292:
        case 293:
        case 294:
        case 295:
        case 296:
        case 297:
        case 298:
        case 299:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
        case 305:
        case 306:
        case 307:
        case 308:
        case 309:
        case 310:
        case 311:
        case 312:
        case 313:
        case 314:
        case 315:
        case 316:
        case 317:
        case 318:
        case 319:
        case 320:
        case 321:
        case 322:
        case 323:
        case 324:
        case 325:
        case 326:
        case 327:
        case 328:
        case 329:
        case 330:
        case 331:
        case 332:
        case 333:
        case 334:
        case 335:
        case 336:
        case 337:
        case 338:
        case 339:
        case 340:
        case 341:
        case 342:
        case 343:
        case 344:
        case 345:
        case 346:
        case 347:
        case 348:
        case 349:
        case 350:
        case 351:
        case 352:
        case 353:
        case 354:
        case 355:
        case 356:
        case 357:
        case 358:
        case 359:
        case 360:
        case 361:
        case 362:
        case 363:
        case 364:
        case 365:
        case 366:
        case 367:
        case 368:
        case 369:
        case 370:
        case 371:
        case 372:
        case 373:
        case 374:
        case 375:
        case 376:
        case 377:
        case 378:
        case 379:
        case 380:
        case 381:
        case 382:
        case 383:
        case 384:
        case 385:
        case 386:
        case 387:
        case 388:
        case 389:
        case 390:
        case 391:
        case 392:
        case 393:
        case 394:
        case 395:
        case 396:
        case 397:
        case 398:
        case 399:
        case 400:
        case 401:
        case 402:
        case 403:
        case 404:
        case 405:
        case 406:
        case 407:
        case 408:
        case 409:
        case 410:
        case 411:
        case 412:
        case 413:
        case 414:
        case 415:
        case 416:
        case 417:
        case 418:
        case 419:
        case 420:
        case 421:
        case 422:
        case 423:
        case 424:
        case 425:
        case 426:
        case 427:
        case 428:
        case 429:
        case 430:
        case 431:
        case 432:
        case 433:
        case 434:
        case 435:
        case 436:
        case 437:
        case 438:
        case 439:
        case 440:
        case 441:
        case 442:
        case 443:
        case 444:
        case 445:
        case 446:
        case 447:
        case 448:
        case 449:
        case 450:
        case 451:
        case 452:
        case 453:
        case 454:
        case 455:
        case 456:
        case 457:
        case 458:
        case 459:
        case 460:
        case 461:
        case 462:
        case 463:
        case 464:
        case 465:
        case 466:
        case 467:
        case 468:
        case 469:
        case 470:
        case 471:
        case 472:
        case 473:
        case 474:
        case 475:
        case 476:
        case 477:
        case 478:
        case 479:
        case 480:
        case 481:
        case 482:
        case 483:
        case 484:
        case 485:
        case 486:
        case 487:
        case 488:
        case 489:
        case 490:
        case 491:
        case 492:
        case 493:
        case 494:
        case 495:
        case 496:
        case 497:
        case 498:
        case 499:
        case 500:
        case 501:
        case 502:
        case 503:
        case 504:
        case 505:
        case 506:
        case 507:
        case 508:
        case 509:
        case 510:
        case 511:
          goto LABEL_230;
        case 16:
          operator new();
        case 17:
          operator new();
        case 18:
          operator new();
        case 19:
          operator new();
        case 20:
          operator new();
        case 21:
          operator new();
        case 22:
          operator new();
        case 23:
          operator new();
        case 24:
          operator new();
        case 25:
          operator new();
        case 26:
          operator new();
        case 27:
          operator new();
        case 28:
          operator new();
        case 29:
          operator new();
        case 30:
          operator new();
        case 31:
          operator new();
        case 32:
          operator new();
        case 33:
          operator new();
        case 34:
          operator new();
        case 35:
          operator new();
        case 36:
          operator new();
        case 37:
          operator new();
        case 38:
          operator new();
        case 39:
          operator new();
        case 40:
          operator new();
        case 41:
          operator new();
        case 42:
          operator new();
        case 43:
          operator new();
        case 44:
          operator new();
        case 45:
          operator new();
        case 46:
          operator new();
        case 47:
          operator new();
        case 48:
          operator new();
        case 49:
          operator new();
        case 50:
          operator new();
        case 51:
          operator new();
        case 52:
          operator new();
        case 53:
          operator new();
        case 54:
          operator new();
        case 55:
          operator new();
        case 56:
          operator new();
        case 57:
          operator new();
        case 58:
          operator new();
        case 59:
          operator new();
        case 60:
          operator new();
        case 61:
          operator new();
        case 62:
          operator new();
        case 63:
          operator new();
        case 64:
          operator new();
        case 65:
          operator new();
        case 66:
          operator new();
        case 67:
          operator new();
        case 68:
          operator new();
        case 100:
          operator new();
        case 101:
          operator new();
        case 102:
          operator new();
        case 103:
          operator new();
        case 104:
          operator new();
        case 105:
          operator new();
        case 106:
          operator new();
        case 107:
          operator new();
        case 108:
          operator new();
        case 109:
          operator new();
        case 110:
          operator new();
        case 111:
          operator new();
        case 112:
          operator new();
        case 113:
          operator new();
        case 114:
          operator new();
        case 115:
          operator new();
        case 116:
          operator new();
        case 117:
          operator new();
        case 118:
          operator new();
        case 119:
          operator new();
        case 120:
          operator new();
        case 121:
          operator new();
        case 122:
          operator new();
        case 123:
          operator new();
        case 124:
          operator new();
        case 125:
          operator new();
        case 126:
          operator new();
        case 127:
          operator new();
        case 128:
          operator new();
        case 129:
          operator new();
        case 130:
          operator new();
        case 131:
          operator new();
        case 132:
          operator new();
        case 133:
          operator new();
        case 134:
          operator new();
        case 135:
          operator new();
        case 136:
          operator new();
        case 139:
          operator new();
        case 140:
          operator new();
        case 141:
          operator new();
        case 142:
          operator new();
        case 143:
          operator new();
        case 144:
          operator new();
        case 145:
          operator new();
        case 148:
          operator new();
        case 150:
          operator new();
        case 151:
          operator new();
        case 152:
          operator new();
        case 153:
          operator new();
        case 154:
          operator new();
        case 155:
          operator new();
        case 156:
          operator new();
        case 157:
          operator new();
        case 158:
          operator new();
        case 159:
          operator new();
        case 160:
          operator new();
        case 161:
          operator new();
        case 162:
          operator new();
        case 163:
          operator new();
        case 164:
          operator new();
        case 165:
          operator new();
        case 166:
          operator new();
        case 167:
          operator new();
        case 168:
          operator new();
        case 169:
          operator new();
        case 170:
          operator new();
        case 171:
          operator new();
        case 172:
          operator new();
        case 173:
          operator new();
        case 174:
          operator new();
        case 175:
          operator new();
        case 176:
          operator new();
        case 177:
          operator new();
        case 178:
          operator new();
        case 179:
          operator new();
        case 180:
          operator new();
        case 181:
          operator new();
        case 182:
          operator new();
        case 183:
          operator new();
        case 184:
          operator new();
        case 185:
          operator new();
        case 186:
          operator new();
        case 187:
          operator new();
        case 188:
          operator new();
        case 189:
          operator new();
        case 190:
          operator new();
        case 191:
          operator new();
        case 192:
          operator new();
        case 193:
          operator new();
        case 194:
          operator new();
        case 195:
          operator new();
        case 196:
          operator new();
        case 197:
          operator new();
        case 198:
          operator new();
        case 199:
          operator new();
        case 200:
          operator new();
        case 201:
          operator new();
        case 202:
          operator new();
        case 203:
          operator new();
        case 204:
          operator new();
        case 205:
          operator new();
        case 206:
          operator new();
        case 207:
          operator new();
        case 208:
          operator new();
        case 209:
          operator new();
        case 210:
          operator new();
        case 212:
          operator new();
        case 213:
          operator new();
        case 214:
          operator new();
        case 215:
          operator new();
        case 216:
          operator new();
        case 217:
          operator new();
        case 218:
          operator new();
        case 219:
          operator new();
        case 220:
          operator new();
        case 221:
          operator new();
        case 222:
          operator new();
        case 223:
          operator new();
        case 224:
          operator new();
        case 225:
          operator new();
        case 226:
          operator new();
        case 227:
          operator new();
        case 228:
          operator new();
        case 229:
          operator new();
        case 230:
          operator new();
        case 231:
          operator new();
        case 232:
          operator new();
        case 233:
          operator new();
        case 234:
          operator new();
        case 235:
          operator new();
        case 236:
          operator new();
        case 237:
          operator new();
        case 238:
          operator new();
        case 239:
          operator new();
        case 240:
          operator new();
        case 241:
          operator new();
        case 242:
          operator new();
        case 243:
          operator new();
        case 244:
          operator new();
        case 245:
          operator new();
        case 246:
          operator new();
        case 247:
          operator new();
        case 248:
          operator new();
        case 249:
          operator new();
        case 250:
          operator new();
        case 251:
          operator new();
        case 252:
          operator new();
        case 253:
          operator new();
        case 254:
          operator new();
        case 255:
          operator new();
        case 256:
          operator new();
        case 257:
          operator new();
        case 258:
          operator new();
        case 259:
          operator new();
        case 260:
          operator new();
        case 261:
          operator new();
        case 262:
          operator new();
        case 263:
          operator new();
        case 264:
          operator new();
        case 265:
          operator new();
        case 266:
          operator new();
        case 267:
          operator new();
        case 268:
          operator new();
        case 269:
          operator new();
        case 270:
          operator new();
        case 271:
          operator new();
        case 272:
          operator new();
        case 273:
          operator new();
        case 274:
          operator new();
        case 275:
          operator new();
        case 276:
          operator new();
        case 277:
          operator new();
        case 278:
          operator new();
        case 279:
          operator new();
        case 280:
          operator new();
        case 281:
          operator new();
        case 282:
          operator new();
        case 512:
          operator new();
        default:
          switch(v22)
          {
            case 1001:
              operator new();
            case 1002:
              operator new();
            case 1003:
              operator new();
            case 1004:
              operator new();
            case 1005:
              operator new();
            case 1006:
              operator new();
            case 1007:
              operator new();
            case 1008:
              operator new();
            case 1009:
              operator new();
            case 1010:
              operator new();
            case 1011:
              operator new();
            case 1012:
              operator new();
            case 1013:
              operator new();
            case 1014:
              operator new();
            case 1015:
              operator new();
            case 1016:
              operator new();
            case 1017:
              operator new();
            case 1018:
              operator new();
            case 1019:
              operator new();
            case 1020:
              operator new();
            case 1021:
              operator new();
            case 1022:
              operator new();
            case 1023:
              operator new();
            case 1024:
              operator new();
            case 1025:
              operator new();
            case 1026:
              operator new();
            case 1027:
              operator new();
            case 1028:
              operator new();
            case 1029:
              operator new();
            case 1030:
              operator new();
            case 1031:
              operator new();
            case 1032:
              operator new();
            case 1033:
              operator new();
            case 1034:
              operator new();
            case 1035:
              operator new();
            case 1036:
              operator new();
            case 1037:
              operator new();
            case 1038:
              operator new();
            case 1039:
              operator new();
            case 1040:
              operator new();
            case 1041:
              operator new();
            case 1042:
              operator new();
            case 1043:
              operator new();
            case 1044:
              operator new();
            case 1045:
              operator new();
            case 1046:
              operator new();
            case 1047:
              operator new();
            case 1048:
              operator new();
            case 1049:
              operator new();
            case 1050:
              operator new();
            case 1051:
              operator new();
            case 1052:
              operator new();
            case 1053:
              operator new();
            default:
              goto LABEL_230;
          }

          goto LABEL_230;
      }
    }

    if (v22 > 29999)
    {
      switch(v22)
      {
        case 0x7530:
          operator new();
        case 0x7531:
          operator new();
        case 0x7532:
          operator new();
      }
    }

    else
    {
      switch(v22)
      {
        case 2048:
          operator new();
        case 2049:
          operator new();
        case 2050:
          operator new();
        case 2051:
          operator new();
        case 2052:
          operator new();
        case 2053:
          operator new();
        case 2054:
          operator new();
        case 2055:
          operator new();
        case 2056:
          operator new();
        case 2057:
          operator new();
        case 2058:
          operator new();
        case 2059:
          operator new();
        case 2060:
          operator new();
        case 2061:
          operator new();
        case 2062:
          operator new();
        case 2063:
          operator new();
        case 2064:
          operator new();
        case 2065:
          operator new();
        case 2066:
          operator new();
        case 2067:
          operator new();
        case 2068:
          operator new();
        case 2069:
          operator new();
        case 2070:
          operator new();
        case 2071:
          operator new();
        case 2072:
          operator new();
        case 2073:
          operator new();
        case 2074:
          operator new();
        case 2075:
          operator new();
        case 2076:
          operator new();
        case 2080:
          operator new();
        case 2089:
          operator new();
        case 2090:
          operator new();
        case 2091:
          operator new();
        case 2098:
          operator new();
        case 2099:
          operator new();
        case 2100:
          operator new();
        case 2101:
          operator new();
        case 2102:
          operator new();
        case 2103:
          operator new();
        case 2104:
          operator new();
        case 2105:
          operator new();
        case 2106:
          operator new();
        case 2107:
          operator new();
        case 2108:
          operator new();
        case 2109:
          operator new();
        case 2110:
          operator new();
        case 2111:
          operator new();
        case 2112:
          operator new();
        case 2113:
          operator new();
        case 2114:
          operator new();
        case 2115:
          operator new();
        case 2116:
          operator new();
        case 2117:
          operator new();
        case 2118:
          operator new();
        case 2119:
          operator new();
        case 2120:
          operator new();
        case 2121:
          operator new();
        case 2122:
          operator new();
        case 2123:
          operator new();
        case 2124:
          operator new();
        case 2125:
          operator new();
        case 2126:
          operator new();
        case 2127:
          operator new();
        case 2128:
          operator new();
        case 2129:
          operator new();
        case 2130:
          operator new();
        case 2131:
          operator new();
        case 2132:
          operator new();
        case 2133:
          operator new();
        case 2134:
          operator new();
        case 2135:
          operator new();
        case 2136:
          operator new();
        case 2137:
          operator new();
        case 2138:
          operator new();
        case 2139:
          operator new();
        case 2140:
          operator new();
        case 2141:
          operator new();
        case 2142:
          operator new();
        case 2143:
          operator new();
        case 2144:
          operator new();
        case 2145:
          operator new();
        case 2146:
          operator new();
        case 2147:
          operator new();
        case 2148:
          operator new();
        case 2149:
          operator new();
        case 2150:
          operator new();
        case 2151:
          operator new();
        case 2152:
          operator new();
        case 2153:
          operator new();
        case 2154:
          operator new();
        case 2155:
          operator new();
        case 2156:
          operator new();
        case 2157:
          operator new();
        case 2158:
          operator new();
        case 2159:
          operator new();
        case 2160:
          operator new();
        case 2161:
          operator new();
        case 2162:
          operator new();
        case 2163:
          operator new();
        case 2164:
          operator new();
        case 2165:
          operator new();
        case 2166:
          operator new();
        case 2167:
          operator new();
        case 2168:
          operator new();
        case 2169:
          operator new();
        case 2170:
          operator new();
        case 2171:
          operator new();
        case 2172:
          operator new();
        case 2173:
          operator new();
        case 2174:
          operator new();
        case 2175:
          operator new();
        case 2176:
          operator new();
        case 2177:
          operator new();
        case 2178:
          operator new();
        case 2179:
          operator new();
        case 2180:
          operator new();
        case 2181:
          operator new();
        case 2182:
          operator new();
        case 2183:
          operator new();
        case 2184:
          operator new();
        case 2185:
          operator new();
        case 2186:
          operator new();
        case 2187:
          operator new();
        case 2188:
          operator new();
        case 2189:
          operator new();
        case 2190:
          operator new();
        case 2191:
          operator new();
        case 2192:
          operator new();
        case 2193:
          operator new();
        case 2194:
          operator new();
        case 2195:
          operator new();
        case 2196:
          operator new();
        case 2197:
          operator new();
        case 2198:
          operator new();
        case 2199:
          operator new();
        case 2200:
          operator new();
        case 2201:
          operator new();
        case 2202:
          operator new();
        case 2203:
          operator new();
        case 2204:
          operator new();
        case 2205:
          operator new();
        case 2206:
          operator new();
        case 2207:
          operator new();
        case 2208:
          operator new();
        case 2209:
          operator new();
        case 2210:
          operator new();
        case 2211:
          operator new();
        case 2212:
          operator new();
        case 2213:
          operator new();
        case 2214:
          operator new();
        case 2215:
          operator new();
        case 2216:
          operator new();
        case 2217:
          operator new();
        case 2218:
          operator new();
        case 2219:
          operator new();
        case 2220:
          operator new();
        case 2221:
          operator new();
        case 2222:
          operator new();
        case 2223:
          operator new();
        case 2224:
          operator new();
        case 2225:
          operator new();
        case 2226:
          operator new();
        case 2227:
          operator new();
        case 2228:
          operator new();
        case 2229:
          operator new();
        case 2230:
          operator new();
        case 2231:
          operator new();
        case 2232:
          operator new();
        case 2233:
          operator new();
        case 2234:
          operator new();
        case 2235:
          operator new();
        case 2236:
          operator new();
        case 2237:
          operator new();
        case 2238:
          operator new();
        case 2239:
          operator new();
        case 2240:
          operator new();
        case 2241:
          operator new();
        case 2242:
          operator new();
        case 2243:
          operator new();
        case 2244:
          operator new();
        case 2245:
          operator new();
        case 2246:
          operator new();
        case 2247:
          operator new();
        case 2248:
          operator new();
        case 2249:
          operator new();
        case 2250:
          operator new();
        case 2251:
          operator new();
        case 2252:
          operator new();
        case 2253:
          operator new();
        case 2254:
          operator new();
        case 2257:
          operator new();
        case 2258:
          operator new();
        default:
          break;
      }
    }

LABEL_230:
    if (!PB::Reader::skip(a2))
    {
      v24 = 0;
      return v24 & 1;
    }

LABEL_525:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v24 = v4 ^ 1;
  return v24 & 1;
}

void *CMMsl::WorkoutRecorderAccel::WorkoutRecorderAccel(void *this)
{
  *this = &unk_286C24948;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24948;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderBodyMetrics::WorkoutRecorderBodyMetrics(void *this)
{
  *this = &unk_286C24A60;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24A60;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderElevation::WorkoutRecorderElevation(void *this)
{
  *this = &unk_286C24AD0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24AD0;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderHeartRate::WorkoutRecorderHeartRate(void *this)
{
  *this = &unk_286C24BB0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24BB0;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderRotationRate::WorkoutRecorderRotationRate(void *this)
{
  *this = &unk_286C24D38;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24D38;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderOdometer::WorkoutRecorderOdometer(void *this)
{
  *this = &unk_286C24CC8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24CC8;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderWorkoutEvent::WorkoutRecorderWorkoutEvent(void *this)
{
  *this = &unk_286C24E18;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24E18;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::VO2MaxInput::VO2MaxInput(uint64_t this)
{
  *this = &unk_286C24280;
  *(this + 88) = 0;
  return this;
}

{
  *this = &unk_286C24280;
  *(this + 88) = 0;
  return this;
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::WorkoutRecorderHealthKitInfo(uint64_t this)
{
  *this = &unk_286C24B78;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C24B78;
  *(this + 28) = 0;
  return this;
}

double CMMsl::PearlAttitude::PearlAttitude(CMMsl::PearlAttitude *this)
{
  *this = &unk_286C22760;
  *(this + 31) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_286C22760;
  *(this + 31) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

uint64_t CMMsl::RotationRate::RotationRate(uint64_t this)
{
  *this = &unk_286C23218;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C23218;
  *(this + 28) = 0;
  return this;
}

void *CMMsl::WorkoutRecorderWatchOrientationSettings::WorkoutRecorderWatchOrientationSettings(void *this)
{
  *this = &unk_286C24DA8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24DA8;
  this[1] = 0;
  return this;
}

void *CMMsl::WifiScanResults::WifiScanResults(void *this)
{
  *this = &unk_286C24830;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C24830;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderWifiScanResults::WorkoutRecorderWifiScanResults(void *this)
{
  *this = &unk_286C24DE0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24DE0;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderPressure::WorkoutRecorderPressure(void *this)
{
  *this = &unk_286C24D00;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24D00;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::VisionCompassBias::VisionCompassBias(uint64_t this)
{
  *this = &unk_286C244B0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 76) = 0;
  return this;
}

{
  *this = &unk_286C244B0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 76) = 0;
  return this;
}

double CMMsl::VIOEstimation::VIOEstimation(CMMsl::VIOEstimation *this)
{
  *this = &unk_286C241D8;
  *(this + 42) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  return result;
}

{
  *this = &unk_286C241D8;
  *(this + 42) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  return result;
}

double CMMsl::LSLHeadingEstimation::LSLHeadingEstimation(CMMsl::LSLHeadingEstimation *this)
{
  *this = &unk_286C21848;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *&result = 0xFFFFFFFFLL;
  *(this + 23) = 0xFFFFFFFFLL;
  *(this + 48) = 0;
  return result;
}

{
  *this = &unk_286C21848;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *&result = 0xFFFFFFFFLL;
  *(this + 23) = 0xFFFFFFFFLL;
  *(this + 48) = 0;
  return result;
}

uint64_t CMMsl::MovementStats::MovementStats(uint64_t this)
{
  *this = &unk_286C21F48;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C21F48;
  *(this + 12) = 0;
  return this;
}

uint64_t CMMsl::StepCountEntry::StepCountEntry(uint64_t this)
{
  *this = &unk_286C23CD0;
  *(this + 8) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 152) = 0;
  return this;
}

{
  *this = &unk_286C23CD0;
  *(this + 8) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 152) = 0;
  return this;
}

void *CMMsl::MobilityBoutMetrics::MobilityBoutMetrics(void *this)
{
  *this = &unk_286C21C00;
  this[23] = 0;
  return this;
}

{
  *this = &unk_286C21C00;
  this[23] = 0;
  return this;
}

uint64_t CMMsl::VIOPose::VIOPose(uint64_t this)
{
  *this = &unk_286C24210;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 112) = 0;
  return this;
}

{
  *this = &unk_286C24210;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 112) = 0;
  return this;
}

void *CMMsl::SignalEnvironment::SignalEnvironment(void *this)
{
  *this = &unk_286C23720;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C23720;
  this[1] = 0;
  return this;
}

double CMMsl::VIOReplayPose::VIOReplayPose(CMMsl::VIOReplayPose *this)
{
  *this = &unk_286C24248;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C24248;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CMMsl::VisualStateMeasurement::VisualStateMeasurement(CMMsl::VisualStateMeasurement *this)
{
  *this = &unk_286C24590;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_286C24590;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

double CMMsl::KappaTriggerDebug::KappaTriggerDebug(CMMsl::KappaTriggerDebug *this)
{
  *this = &unk_286C21688;
  *(this + 30) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_286C21688;
  *(this + 30) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

double CMMsl::KappaDirectionOfTravel::KappaDirectionOfTravel(CMMsl::KappaDirectionOfTravel *this)
{
  *this = &unk_286C21110;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C21110;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t CMMsl::KappaSteps::KappaSteps(uint64_t this)
{
  *this = &unk_286C215A8;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C215A8;
  *(this + 32) = 0;
  return this;
}

void *CMMsl::SignificantUserInteraction::SignificantUserInteraction(void *this)
{
  *this = &unk_286C23758;
  this[2] = 0;
  return this;
}

{
  *this = &unk_286C23758;
  this[2] = 0;
  return this;
}

uint64_t CMMsl::KappaRoads::KappaRoads(uint64_t this)
{
  *this = &unk_286C21490;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C21490;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::UserStudyEvent::UserStudyEvent(uint64_t this)
{
  *this = &unk_286C241A0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C241A0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t CMMsl::TempestPoCAuxiliaryDeviceMotion::TempestPoCAuxiliaryDeviceMotion(uint64_t this)
{
  *this = &unk_286C24018;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 80) = 0;
  *(this + 104) = 0;
  return this;
}

{
  *this = &unk_286C24018;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 80) = 0;
  *(this + 104) = 0;
  return this;
}

double CMMsl::TempestPoCListenerOrientation::TempestPoCListenerOrientation(CMMsl::TempestPoCListenerOrientation *this)
{
  *this = &unk_286C24050;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C24050;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void *CMMsl::WorkoutRecorderAccel800::WorkoutRecorderAccel800(void *this)
{
  *this = &unk_286C24980;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24980;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderALSData::WorkoutRecorderALSData(void *this)
{
  *this = &unk_286C24910;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24910;
  this[1] = 0;
  return this;
}

double CMMsl::VisualLocalization::VisualLocalization(CMMsl::VisualLocalization *this)
{
  *this = &unk_286C244E8;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C244E8;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t CMMsl::SoundPressureLevel::SoundPressureLevel(uint64_t this)
{
  *this = &unk_286C23A68;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C23A68;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::MotionLocation::MotionLocation(uint64_t this)
{
  *this = &unk_286C21DF8;
  *(this + 220) = 0;
  return this;
}

{
  *this = &unk_286C21DF8;
  *(this + 220) = 0;
  return this;
}

uint64_t CMMsl::MotionActivity::MotionActivity(uint64_t this)
{
  *this = &unk_286C21CE0;
  *(this + 116) = 0;
  return this;
}

{
  *this = &unk_286C21CE0;
  *(this + 116) = 0;
  return this;
}

double CMMsl::KappaTrigger::KappaTrigger(CMMsl::KappaTrigger *this)
{
  *this = &unk_286C21618;
  *(this + 53) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_286C21618;
  *(this + 53) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

uint64_t CMMsl::RelDMInSystemConfig::RelDMInSystemConfig(uint64_t this)
{
  *this = &unk_286C23090;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C23090;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

void *CMMsl::JointLinkModelPose::JointLinkModelPose(void *this)
{
  *this = &unk_286C20F18;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C20F18;
  this[1] = 0;
  return this;
}

void *CMMsl::ModelBasedBioMotionClassification::ModelBasedBioMotionClassification(void *this)
{
  *this = &unk_286C21CA8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C21CA8;
  this[1] = 0;
  return this;
}

void *CMMsl::MLBasedBioMotionClassification::MLBasedBioMotionClassification(void *this)
{
  *this = &unk_286C21A08;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C21A08;
  this[1] = 0;
  return this;
}

void *CMMsl::JointLinkModelPredictedPose::JointLinkModelPredictedPose(void *this)
{
  *this = &unk_286C20F50;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C20F50;
  this[1] = 0;
  return this;
}

void *CMMsl::PressureCompensated::PressureCompensated(void *this)
{
  *this = &unk_286C22DF0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C22DF0;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::VO2MaxOutput::VO2MaxOutput(uint64_t this)
{
  *this = &unk_286C242F0;
  *(this + 72) = 0;
  return this;
}

{
  *this = &unk_286C242F0;
  *(this + 72) = 0;
  return this;
}

uint64_t CMMsl::MagneticAccessoryType1::MagneticAccessoryType1(uint64_t this)
{
  *this = &unk_286C21A78;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C21A78;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t CMMsl::MagneticAccessoryType2::MagneticAccessoryType2(uint64_t this)
{
  *this = &unk_286C21AB0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C21AB0;
  *(this + 12) = 0;
  return this;
}

uint64_t CMMsl::PressureCalibration::PressureCalibration(uint64_t this)
{
  *this = &unk_286C22DB8;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C22DB8;
  *(this + 32) = 0;
  return this;
}

void *CMMsl::WorkoutRecorderMagnetometer::WorkoutRecorderMagnetometer(void *this)
{
  *this = &unk_286C24C90;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24C90;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderCompassCalibration::WorkoutRecorderCompassCalibration(void *this)
{
  *this = &unk_286C24A98;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24A98;
  this[1] = 0;
  return this;
}

void *CMMsl::RawAudio::RawAudio(void *this)
{
  *this = &unk_286C23058;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C23058;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CMMsl::ODTPose::ODTPose(uint64_t this)
{
  *this = &unk_286C22098;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C22098;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::PencilTipForce::PencilTipForce(uint64_t this)
{
  *this = &unk_286C229C8;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C229C8;
  *(this + 24) = 0;
  return this;
}

uint64_t CMMsl::PencilTouch::PencilTouch(uint64_t this)
{
  *this = &unk_286C22A00;
  *(this + 88) = 0;
  return this;
}

{
  *this = &unk_286C22A00;
  *(this + 88) = 0;
  return this;
}

void *CMMsl::Timestamp::Timestamp(void *this)
{
  *this = &unk_286C24088;
  this[2] = 0;
  return this;
}

{
  *this = &unk_286C24088;
  this[2] = 0;
  return this;
}

double CMMsl::WalkingSteadinessClassification::WalkingSteadinessClassification(CMMsl::WalkingSteadinessClassification *this)
{
  *this = &unk_286C24670;
  *(this + 8) = 0;
  *(this + 61) = 0;
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  return result;
}

{
  *this = &unk_286C24670;
  *(this + 8) = 0;
  *(this + 61) = 0;
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  return result;
}

uint64_t CMMsl::SteadinessModelResult::SteadinessModelResult(uint64_t this)
{
  *this = &unk_286C23BF0;
  *(this + 52) = 0;
  return this;
}

{
  *this = &unk_286C23BF0;
  *(this + 52) = 0;
  return this;
}

uint64_t CMMsl::SteadinessEvent::SteadinessEvent(uint64_t this)
{
  *this = &unk_286C23AD8;
  *(this + 60) = 0;
  return this;
}

{
  *this = &unk_286C23AD8;
  *(this + 60) = 0;
  return this;
}

uint64_t CMMsl::SteadinessModelGaitBaselineFeatures::SteadinessModelGaitBaselineFeatures(uint64_t this)
{
  *this = &unk_286C23B80;
  *(this + 88) = 0;
  return this;
}

{
  *this = &unk_286C23B80;
  *(this + 88) = 0;
  return this;
}

uint64_t CMMsl::SteadinessModelContinuousWalkingFeatures::SteadinessModelContinuousWalkingFeatures(uint64_t this)
{
  *this = &unk_286C23B48;
  *(this + 176) = 0;
  return this;
}

{
  *this = &unk_286C23B48;
  *(this + 176) = 0;
  return this;
}

uint64_t CMMsl::SteadinessModelTemporalDispersionFeatures::SteadinessModelTemporalDispersionFeatures(uint64_t this)
{
  *this = &unk_286C23C28;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C23C28;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::SteadinessModelTemporalEntropyFeatures::SteadinessModelTemporalEntropyFeatures(uint64_t this)
{
  *this = &unk_286C23C60;
  *(this + 216) = 0;
  return this;
}

{
  *this = &unk_286C23C60;
  *(this + 216) = 0;
  return this;
}

uint64_t CMMsl::SteadinessModelBalanceFeatures::SteadinessModelBalanceFeatures(uint64_t this)
{
  *this = &unk_286C23B10;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C23B10;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::MagnetometerReset::MagnetometerReset(uint64_t this)
{
  *this = &unk_286C21B58;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C21B58;
  *(this + 44) = 0;
  return this;
}

void *CMMsl::WorkoutRecorderWatchOnWristStatus::WorkoutRecorderWatchOnWristStatus(void *this)
{
  *this = &unk_286C24D70;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24D70;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::LiftToWakeOnHeadStatus::LiftToWakeOnHeadStatus(uint64_t this)
{
  *this = &unk_286C218F0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C218F0;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::StepCountEntryAddition::StepCountEntryAddition(uint64_t this)
{
  *this = &unk_286C23D08;
  *(this + 72) = 0;
  return this;
}

{
  *this = &unk_286C23D08;
  *(this + 72) = 0;
  return this;
}

uint64_t CMMsl::StepDistanceFusionResult::StepDistanceFusionResult(uint64_t this)
{
  *(this + 100) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286C23D40;
  return this;
}

{
  *(this + 100) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286C23D40;
  return this;
}

void *CMMsl::Skeleton3D::Skeleton3D(void *this)
{
  *this = &unk_286C23950;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C23950;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CMMsl::LockScreenStatus::LockScreenStatus(uint64_t this)
{
  *this = &unk_286C219D0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C219D0;
  *(this + 12) = 0;
  return this;
}

uint64_t CMMsl::PowerManagementUserActivity::PowerManagementUserActivity(uint64_t this)
{
  *this = &unk_286C22BC0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_286C22BC0;
  *(this + 16) = 0;
  return this;
}

uint64_t CMMsl::LiftToWakeState::LiftToWakeState(uint64_t this)
{
  *this = &unk_286C21928;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C21928;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::ViewObstructedState::ViewObstructedState(uint64_t this)
{
  *this = &unk_286C24478;
  *(this + 84) = 0;
  return this;
}

{
  *this = &unk_286C24478;
  *(this + 84) = 0;
  return this;
}

void *CMMsl::RunningFormMetrics::RunningFormMetrics(void *this)
{
  *this = &unk_286C232C0;
  this[28] = 0;
  return this;
}

{
  *this = &unk_286C232C0;
  this[28] = 0;
  return this;
}

void *CMMsl::WorkoutSessionPriors::WorkoutSessionPriors(void *this)
{
  *this = &unk_286C24E88;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C24E88;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderWorkoutSessionPriors::WorkoutRecorderWorkoutSessionPriors(void *this)
{
  *this = &unk_286C24E50;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24E50;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::PDRImpulse::PDRImpulse(uint64_t this)
{
  *this = &unk_286C224C0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C224C0;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::PocketDetectionPacket::PocketDetectionPacket(uint64_t this)
{
  *this = &unk_286C22AA8;
  *(this + 84) = 0;
  return this;
}

{
  *this = &unk_286C22AA8;
  *(this + 84) = 0;
  return this;
}

uint64_t CMMsl::LiftToWakeFeaturesNeo::LiftToWakeFeaturesNeo(uint64_t this)
{
  *this = &unk_286C218B8;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C218B8;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::LiftToWakeStatusNeo::LiftToWakeStatusNeo(uint64_t this)
{
  *this = &unk_286C21960;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C21960;
  *(this + 64) = 0;
  return this;
}

uint64_t CMMsl::RunningPower::RunningPower(uint64_t this)
{
  *this = &unk_286C232F8;
  *(this + 128) = 0;
  return this;
}

{
  *this = &unk_286C232F8;
  *(this + 128) = 0;
  return this;
}

void *CMMsl::MotionContextActivity::MotionContextActivity(void *this)
{
  *this = &unk_286C21D50;
  this[1] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C21D50;
  this[1] = 0;
  this[3] = 0;
  return this;
}

void *CMMsl::PDRAlgType::PDRAlgType(void *this)
{
  *this = &unk_286C221B0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C221B0;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::PdrMLModelOutput::PdrMLModelOutput(uint64_t this)
{
  *this = &unk_286C22728;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C22728;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  return this;
}

void *CMMsl::WorkoutRecorderAveragedALSData::WorkoutRecorderAveragedALSData(void *this)
{
  *this = &unk_286C24A28;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24A28;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::StrideCalEntry::StrideCalEntry(uint64_t this)
{
  *this = &unk_286C23EC8;
  *(this + 92) = 0;
  return this;
}

{
  *this = &unk_286C23EC8;
  *(this + 92) = 0;
  return this;
}

uint64_t CMMsl::RunningSpeedKFResult::RunningSpeedKFResult(uint64_t this)
{
  *this = &unk_286C23368;
  *(this + 188) = 0;
  return this;
}

{
  *this = &unk_286C23368;
  *(this + 188) = 0;
  return this;
}

uint64_t CMMsl::ProxPDP::ProxPDP(uint64_t this)
{
  *this = &unk_286C23020;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C23020;
  *(this + 48) = 0;
  return this;
}

uint64_t CMMsl::KeyboardMotionFeatures::KeyboardMotionFeatures(uint64_t this)
{
  *this = &unk_286C217A0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C217A0;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::KeyboardMotionState::KeyboardMotionState(uint64_t this)
{
  *this = &unk_286C217D8;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C217D8;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::KeyboardKeyPress::KeyboardKeyPress(uint64_t this)
{
  *this = &unk_286C21768;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C21768;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::WakeGestureNotification::WakeGestureNotification(uint64_t this)
{
  *this = &unk_286C245C8;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C245C8;
  *(this + 44) = 0;
  return this;
}

uint64_t CMMsl::ProxBaselineEstimatorState::ProxBaselineEstimatorState(uint64_t this)
{
  *this = &unk_286C22FB0;
  *(this + 88) = 0;
  return this;
}

{
  *this = &unk_286C22FB0;
  *(this + 88) = 0;
  return this;
}

uint64_t CMMsl::RhythmicGnssOperatorStatus::RhythmicGnssOperatorStatus(uint64_t this)
{
  *this = &unk_286C231E0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C231E0;
  *(this + 24) = 0;
  return this;
}

uint64_t CMMsl::KeyboardMotionTrackpad::KeyboardMotionTrackpad(uint64_t this)
{
  *this = &unk_286C21810;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C21810;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::KeyboardAttached::KeyboardAttached(uint64_t this)
{
  *this = &unk_286C21730;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C21730;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::Skeleton2D::Skeleton2D(uint64_t this)
{
  *this = &unk_286C238E0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C238E0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t CMMsl::Skeleton3DRetargeted::Skeleton3DRetargeted(uint64_t this)
{
  *this = &unk_286C239F8;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C239F8;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t CMMsl::Skeleton3DLifted::Skeleton3DLifted(uint64_t this)
{
  *this = &unk_286C23988;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C23988;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t CMMsl::WatchHeartRateData::WatchHeartRateData(uint64_t this)
{
  *this = &unk_286C24750;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C24750;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::WatchActiveCalories::WatchActiveCalories(uint64_t this)
{
  *this = &unk_286C246A8;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C246A8;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::WatchBasalCalories::WatchBasalCalories(uint64_t this)
{
  *this = &unk_286C246E0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C246E0;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::TrackRunData::TrackRunData(uint64_t this)
{
  *this = &unk_286C240F8;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C240F8;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::MapsRouteHintData::MapsRouteHintData(uint64_t this)
{
  *this = &unk_286C21B90;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C21B90;
  *(this + 20) = 0;
  return this;
}

void *CMMsl::WorkoutRecorderFitnessMachineData::WorkoutRecorderFitnessMachineData(void *this)
{
  *this = &unk_286C24B40;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24B40;
  this[1] = 0;
  return this;
}

double CMMsl::PedestrianFenceExit::PedestrianFenceExit(CMMsl::PedestrianFenceExit *this)
{
  *this = &unk_286C22808;
  *&result = 0xFFFFFFFFLL;
  *(this + 28) = 0xFFFFFFFFLL;
  return result;
}

{
  *this = &unk_286C22808;
  *&result = 0xFFFFFFFFLL;
  *(this + 28) = 0xFFFFFFFFLL;
  return result;
}

uint64_t CMMsl::PhysicalEffortInput::PhysicalEffortInput(uint64_t this)
{
  *this = &unk_286C22A38;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C22A38;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::PhysicalEffortSample::PhysicalEffortSample(uint64_t this)
{
  *this = &unk_286C22A70;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C22A70;
  *(this + 44) = 0;
  return this;
}

uint64_t CMMsl::PedestrianCalorieModelDebugging::PedestrianCalorieModelDebugging(uint64_t this)
{
  *this = &unk_286C227D0;
  *(this + 116) = 0;
  return this;
}

{
  *this = &unk_286C227D0;
  *(this + 116) = 0;
  return this;
}

uint64_t CMMsl::WorkoutActivity::WorkoutActivity(uint64_t this)
{
  *this = &unk_286C24868;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_286C24868;
  *(this + 16) = 0;
  return this;
}

double CMMsl::PencilDeviceMotion::PencilDeviceMotion(CMMsl::PencilDeviceMotion *this)
{
  *this = &unk_286C228B0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_286C228B0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CMMsl::PencilFusionResult::PencilFusionResult(uint64_t this)
{
  *this = &unk_286C22958;
  *(this + 76) = 0;
  return this;
}

{
  *this = &unk_286C22958;
  *(this + 76) = 0;
  return this;
}

uint64_t CMMsl::SteadinessModelHarmonicFeatures::SteadinessModelHarmonicFeatures(uint64_t this)
{
  *this = &unk_286C23BB8;
  *(this + 248) = 0;
  return this;
}

{
  *this = &unk_286C23BB8;
  *(this + 248) = 0;
  return this;
}

uint64_t CMMsl::PencilFusionReplayResult::PencilFusionReplayResult(uint64_t this)
{
  *this = &unk_286C22920;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C22920;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  return this;
}

uint64_t CMMsl::MobilitySmoothedGaitMetrics::MobilitySmoothedGaitMetrics(uint64_t this)
{
  *this = &unk_286C21C70;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C21C70;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::WatchEnclosureMaterial::WatchEnclosureMaterial(uint64_t this)
{
  *this = &unk_286C24718;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C24718;
  *(this + 24) = 0;
  return this;
}

double CMMsl::MotionLoiAltitudeData::MotionLoiAltitudeData(CMMsl::MotionLoiAltitudeData *this)
{
  *this = &unk_286C21E30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C21E30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CMMsl::PostureJoint::PostureJoint(CMMsl::PostureJoint *this)
{
  *this = &unk_286C22B50;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_286C22B50;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

void *CMMsl::PostureSkeleton::PostureSkeleton(void *this)
{
  *this = &unk_286C22B88;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C22B88;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderFaceCovered::WorkoutRecorderFaceCovered(void *this)
{
  *this = &unk_286C24B08;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24B08;
  this[1] = 0;
  return this;
}

void *CMMsl::StreamingHighFrequencyHeartRateData::StreamingHighFrequencyHeartRateData(void *this)
{
  *this = &unk_286C23E20;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C23E20;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::NormalGammaCalibrationBin::NormalGammaCalibrationBin(uint64_t this)
{
  *this = &unk_286C22060;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C22060;
  *(this + 68) = 0;
  return this;
}

uint64_t CMMsl::MobilityCalibrationMessage::MobilityCalibrationMessage(uint64_t this)
{
  *this = &unk_286C21C38;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C21C38;
  *(this + 24) = 0;
  return this;
}

void *CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::WorkoutRecorderAudioAccessoryDeviceMotion(void *this)
{
  *this = &unk_286C249F0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C249F0;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::WorkoutRecorderAccessoryDeviceMotionConfig(void *this)
{
  *this = &unk_286C249B8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C249B8;
  this[1] = 0;
  return this;
}

void *CMMsl::StreamingHeartRateDataWatch::StreamingHeartRateDataWatch(void *this)
{
  *this = &unk_286C23DE8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C23DE8;
  this[1] = 0;
  return this;
}

void *CMMsl::StreamingHighFrequencyHeartRateDataWatch::StreamingHighFrequencyHeartRateDataWatch(void *this)
{
  *this = &unk_286C23E58;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C23E58;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderHeartRateSourceDevice::WorkoutRecorderHeartRateSourceDevice(void *this)
{
  *this = &unk_286C24C20;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24C20;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::WorkoutRecorderHighFrequencyHeartRateWatch(void *this)
{
  *this = &unk_286C24C58;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24C58;
  this[1] = 0;
  return this;
}

void *CMMsl::WorkoutRecorderHeartRateAccessory::WorkoutRecorderHeartRateAccessory(void *this)
{
  *this = &unk_286C24BE8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24BE8;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::UltraFastAccel::UltraFastAccel(uint64_t this)
{
  *this = &unk_286C24168;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C24168;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void *CMMsl::PressureOscarEmu::PressureOscarEmu(void *this)
{
  *this = &unk_286C22F08;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C22F08;
  this[1] = 0;
  return this;
}

void *CMMsl::PressureGps::PressureGps(void *this)
{
  *this = &unk_286C22ED0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C22ED0;
  this[1] = 0;
  return this;
}

void *CMMsl::PressureFiltered::PressureFiltered(void *this)
{
  *this = &unk_286C22E28;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C22E28;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::Prox::Prox(uint64_t this)
{
  *this = &unk_286C22F78;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C22F78;
  *(this + 20) = 0;
  return this;
}

void *CMMsl::MotionStateUpdate::MotionStateUpdate(void *this)
{
  *this = &unk_286C21EA0;
  this[4] = 0;
  this[24] = 0;
  return this;
}

{
  *this = &unk_286C21EA0;
  this[4] = 0;
  this[24] = 0;
  return this;
}

uint64_t CMMsl::TouchOscarEmu::TouchOscarEmu(uint64_t this)
{
  *this = &unk_286C240C0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C240C0;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::SessionOverride::SessionOverride(uint64_t this)
{
  *this = &unk_286C236E8;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C236E8;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::MotionHint::MotionHint(uint64_t this)
{
  *this = &unk_286C21DC0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C21DC0;
  *(this + 24) = 0;
  return this;
}

uint64_t CMMsl::LocationOscarEmu::LocationOscarEmu(uint64_t this)
{
  *this = &unk_286C21998;
  *(this + 100) = 0;
  return this;
}

{
  *this = &unk_286C21998;
  *(this + 100) = 0;
  return this;
}

double CMMsl::NonlinearBiasFit::NonlinearBiasFit(CMMsl::NonlinearBiasFit *this)
{
  *this = &unk_286C22028;
  *(this + 45) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  return result;
}

{
  *this = &unk_286C22028;
  *(this + 45) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  return result;
}

uint64_t CMMsl::NatalieData::NatalieData(uint64_t this)
{
  *this = &unk_286C21FF0;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C21FF0;
  *(this + 68) = 0;
  return this;
}

uint64_t CMMsl::WorkoutEvent::WorkoutEvent(uint64_t this)
{
  *this = &unk_286C248A0;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C248A0;
  *(this + 64) = 0;
  return this;
}

uint64_t CMMsl::OnsetHeartRateData::OnsetHeartRateData(uint64_t this)
{
  *this = &unk_286C22140;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C22140;
  *(this + 68) = 0;
  return this;
}

void *CMMsl::MotionWifiLocation::MotionWifiLocation(void *this)
{
  *this = &unk_286C21F10;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C21F10;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::StrideCalBin::StrideCalBin(uint64_t this)
{
  *this = &unk_286C23E90;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C23E90;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::Odometer::Odometer(uint64_t this)
{
  *this = &unk_286C220D0;
  *(this + 100) = 0;
  return this;
}

{
  *this = &unk_286C220D0;
  *(this + 100) = 0;
  return this;
}

uint64_t CMMsl::MetsInfo::MetsInfo(uint64_t this)
{
  *this = &unk_286C21BC8;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C21BC8;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::VibrationEvent::VibrationEvent(uint64_t this)
{
  *this = &unk_286C24398;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C24398;
  *(this + 12) = 0;
  return this;
}

uint64_t CMMsl::StepCadenceToStrideLengthBin::StepCadenceToStrideLengthBin(uint64_t this)
{
  *this = &unk_286C23C98;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C23C98;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::WatchOrientationSettings::WatchOrientationSettings(uint64_t this)
{
  *this = &unk_286C247C0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_286C247C0;
  *(this + 16) = 0;
  return this;
}

uint64_t CMMsl::MotionWifiAssociation::MotionWifiAssociation(uint64_t this)
{
  *this = &unk_286C21ED8;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C21ED8;
  *(this + 12) = 0;
  return this;
}

uint64_t CMMsl::MotionLoiData::MotionLoiData(uint64_t this)
{
  *this = &unk_286C21E68;
  *(this + 84) = -1;
  *(this + 92) = 0;
  return this;
}

{
  *this = &unk_286C21E68;
  *(this + 84) = -1;
  *(this + 92) = 0;
  return this;
}

uint64_t CMMsl::PressureFilteredNoTemperature::PressureFilteredNoTemperature(uint64_t this)
{
  *this = &unk_286C22E98;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C22E98;
  *(this + 20) = 0;
  return this;
}

double CMMsl::TapDetect::TapDetect(CMMsl::TapDetect *this)
{
  *this = &unk_286C23FE0;
  *(this + 7) = -2;
  result = NAN;
  *(this + 52) = xmmword_25AD37E90;
  return result;
}

{
  *this = &unk_286C23FE0;
  *(this + 7) = -2;
  result = NAN;
  *(this + 52) = xmmword_25AD37E90;
  return result;
}

uint64_t CMMsl::TapAccept::TapAccept(uint64_t this)
{
  *this = &unk_286C23FA8;
  *(this + 36) = -1;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C23FA8;
  *(this + 36) = -1;
  *(this + 44) = 0;
  return this;
}

double CMMsl::RelativeDeviceMotionInternal::RelativeDeviceMotionInternal(CMMsl::RelativeDeviceMotionInternal *this)
{
  *this = &unk_286C23138;
  *(this + 41) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C23138;
  *(this + 41) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t CMMsl::RelativeGravityCorrection::RelativeGravityCorrection(uint64_t this)
{
  *this = &unk_286C231A8;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C231A8;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::RelativeGravityConstraints::RelativeGravityConstraints(uint64_t this)
{
  *this = &unk_286C23170;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C23170;
  *(this + 48) = 0;
  return this;
}

void *CMMsl::ZeroVelocityCorrection::ZeroVelocityCorrection(void *this)
{
  *this = &unk_286C24EC0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24EC0;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::PredictedRelativeDeviceMotion::PredictedRelativeDeviceMotion(uint64_t this)
{
  *this = &unk_286C22D48;
  *(this + 80) = 0;
  return this;
}

{
  *this = &unk_286C22D48;
  *(this + 80) = 0;
  return this;
}

uint64_t CMMsl::MovementStatsSignal::MovementStatsSignal(uint64_t this)
{
  *this = &unk_286C21FB8;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C21FB8;
  *(this + 40) = 0;
  return this;
}

double CMMsl::MovementStatsGravityProjection::MovementStatsGravityProjection(CMMsl::MovementStatsGravityProjection *this)
{
  *this = &unk_286C21F80;
  *(this + 19) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C21F80;
  *(this + 19) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void *CMMsl::VisualLocalizationAttitudeCorrection::VisualLocalizationAttitudeCorrection(void *this)
{
  *this = &unk_286C24558;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C24558;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::VisualLocalizationAttitudeConstraints::VisualLocalizationAttitudeConstraints(uint64_t this)
{
  *this = &unk_286C24520;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 60) = 0;
  return this;
}

{
  *this = &unk_286C24520;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 60) = 0;
  return this;
}

uint64_t CMMsl::RelativeDeviceMotionCorrelatedMotion::RelativeDeviceMotionCorrelatedMotion(uint64_t this)
{
  *this = &unk_286C23100;
  *(this + 128) = 0;
  return this;
}

{
  *this = &unk_286C23100;
  *(this + 128) = 0;
  return this;
}

void *CMMsl::RelativeDeviceMotionComplexTransition::RelativeDeviceMotionComplexTransition(void *this)
{
  *this = &unk_286C230C8;
  *(this + 188) = 0;
  return this;
}

{
  *this = &unk_286C230C8;
  *(this + 188) = 0;
  return this;
}

uint64_t CMMsl::WalkingDetectionResult::WalkingDetectionResult(uint64_t this)
{
  *this = &unk_286C24638;
  *(this + 60) = 0;
  return this;
}

{
  *this = &unk_286C24638;
  *(this + 60) = 0;
  return this;
}

uint64_t CMMsl::SitStandDetectorFeatures::SitStandDetectorFeatures(uint64_t this)
{
  *this = &unk_286C23800;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C23800;
  *(this + 44) = 0;
  return this;
}

void *CMMsl::SitStandDetectorTransition::SitStandDetectorTransition(void *this)
{
  *this = &unk_286C238A8;
  this[2] = 0;
  return this;
}

{
  *this = &unk_286C238A8;
  this[2] = 0;
  return this;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::SitStandDetectorPosteriorBufferStatsForSitToStand(uint64_t this)
{
  *this = &unk_286C23838;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C23838;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::SitStandDetectorPosteriorBufferStatsForStandToSit(uint64_t this)
{
  *this = &unk_286C23870;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C23870;
  *(this + 28) = 0;
  return this;
}

void *CMMsl::SpatialEvent::SpatialEvent(void *this)
{
  *this = &unk_286C23AA0;
  this[2] = 0;
  return this;
}

{
  *this = &unk_286C23AA0;
  this[2] = 0;
  return this;
}

uint64_t CMMsl::JitterBufferLevel::JitterBufferLevel(uint64_t this)
{
  *this = &unk_286C20EE0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C20EE0;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::PressureFiltered1HzLowPass(uint64_t this)
{
  *this = &unk_286C22E60;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C22E60;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t CMMsl::MotionActivityReplay::MotionActivityReplay(uint64_t this)
{
  *this = &unk_286C21D18;
  *(this + 36) = 0;
  return this;
}

{
  *this = &unk_286C21D18;
  *(this + 36) = 0;
  return this;
}

uint64_t CMMsl::LegacyALS5CHInput::LegacyALS5CHInput(uint64_t this)
{
  *this = &unk_286C21880;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C21880;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::Orientation::Orientation(uint64_t this)
{
  *this = &unk_286C22178;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C22178;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::KappaAudioResult::KappaAudioResult(uint64_t this)
{
  *this = &unk_286C21068;
  *(this + 108) = 0;
  return this;
}

{
  *this = &unk_286C21068;
  *(this + 108) = 0;
  return this;
}

uint64_t CMMsl::KappaBaroResult::KappaBaroResult(uint64_t this)
{
  *this = &unk_286C210A0;
  *(this + 152) = 0;
  return this;
}

{
  *this = &unk_286C210A0;
  *(this + 152) = 0;
  return this;
}

uint64_t CMMsl::KappaGpsResult::KappaGpsResult(uint64_t this)
{
  *this = &unk_286C21148;
  *(this + 132) = 0;
  return this;
}

{
  *this = &unk_286C21148;
  *(this + 132) = 0;
  return this;
}

uint64_t CMMsl::KappaPulseResult::KappaPulseResult(uint64_t this)
{
  *this = &unk_286C213B0;
  *(this + 324) = 0;
  *(this + 316) = 0;
  return this;
}

{
  *this = &unk_286C213B0;
  *(this + 324) = 0;
  *(this + 316) = 0;
  return this;
}

void *CMMsl::KappaZgResult::KappaZgResult(void *this)
{
  *this = &unk_286C216F8;
  *(this + 164) = 0;
  return this;
}

{
  *this = &unk_286C216F8;
  *(this + 164) = 0;
  return this;
}

uint64_t CMMsl::KappaZgDetected::KappaZgDetected(uint64_t this)
{
  *this = &unk_286C216C0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_286C216C0;
  *(this + 16) = 0;
  return this;
}

uint64_t CMMsl::KappaPulseInertialAccel::KappaPulseInertialAccel(uint64_t this)
{
  *this = &unk_286C21340;
  *(this + 80) = 0;
  return this;
}

{
  *this = &unk_286C21340;
  *(this + 80) = 0;
  return this;
}

uint64_t CMMsl::KappaAirbagResult::KappaAirbagResult(uint64_t this)
{
  *this = &unk_286C21030;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C21030;
  *(this + 68) = 0;
  return this;
}

uint64_t CMMsl::KappaCrashResult::KappaCrashResult(uint64_t this)
{
  *this = &unk_286C210D8;
  *(this + 300) = 0;
  *(this + 292) = 0;
  return this;
}

{
  *this = &unk_286C210D8;
  *(this + 300) = 0;
  *(this + 292) = 0;
  return this;
}

uint64_t CMMsl::KappaQuiescenceResult::KappaQuiescenceResult(uint64_t this)
{
  *this = &unk_286C213E8;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C213E8;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::KappaRecoveryResult::KappaRecoveryResult(uint64_t this)
{
  *this = &unk_286C21420;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C21420;
  *(this + 28) = 0;
  return this;
}

void *CMMsl::KappaRolloverCrashResult::KappaRolloverCrashResult(void *this)
{
  *this = &unk_286C21500;
  *(this + 380) = 0;
  *(this + 372) = 0;
  return this;
}

{
  *this = &unk_286C21500;
  *(this + 380) = 0;
  *(this + 372) = 0;
  return this;
}

uint64_t CMMsl::KappaMildImpactResult::KappaMildImpactResult(uint64_t this)
{
  *this = &unk_286C21260;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C21260;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::KappaLackOfMotionResult::KappaLackOfMotionResult(uint64_t this)
{
  *this = &unk_286C211F0;
  *(this + 92) = 0;
  return this;
}

{
  *this = &unk_286C211F0;
  *(this + 92) = 0;
  return this;
}

void *CMMsl::KappaSevereCrashResult::KappaSevereCrashResult(void *this)
{
  *this = &unk_286C21538;
  this[45] = 0;
  this[46] = 0;
  return this;
}

{
  *this = &unk_286C21538;
  this[45] = 0;
  this[46] = 0;
  return this;
}

void *CMMsl::KappaLocalAudioResult::KappaLocalAudioResult(void *this)
{
  *this = &unk_286C21228;
  *(this + 172) = 0;
  return this;
}

{
  *this = &unk_286C21228;
  *(this + 172) = 0;
  return this;
}

uint64_t CMMsl::KappaRemoteAudioResult::KappaRemoteAudioResult(uint64_t this)
{
  *this = &unk_286C21458;
  *(this + 204) = 0;
  *(this + 212) = 0;
  return this;
}

{
  *this = &unk_286C21458;
  *(this + 204) = 0;
  *(this + 212) = 0;
  return this;
}

uint64_t CMMsl::ViewObstructedMachineLearningDecision::ViewObstructedMachineLearningDecision(uint64_t this)
{
  *this = &unk_286C243D0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C243D0;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::ViewObstructedMachineLearningFeatures::ViewObstructedMachineLearningFeatures(uint64_t this)
{
  *this = &unk_286C24408;
  *(this + 116) = 0;
  return this;
}

{
  *this = &unk_286C24408;
  *(this + 116) = 0;
  return this;
}

uint64_t CMMsl::ViewObstructedMachineLearningProbabilities::ViewObstructedMachineLearningProbabilities(uint64_t this)
{
  *this = &unk_286C24440;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C24440;
  *(this + 64) = 0;
  return this;
}

uint64_t CMMsl::RunningArmSwingSignals::RunningArmSwingSignals(uint64_t this)
{
  *this = &unk_286C23250;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C23250;
  *(this + 64) = 0;
  return this;
}

uint64_t CMMsl::RunningCentripetalAccelSignals::RunningCentripetalAccelSignals(uint64_t this)
{
  *this = &unk_286C23288;
  *(this + 120) = 0;
  return this;
}

{
  *this = &unk_286C23288;
  *(this + 120) = 0;
  return this;
}

uint64_t CMMsl::RunningRotationAxis::RunningRotationAxis(uint64_t this)
{
  *this = &unk_286C23330;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C23330;
  *(this + 48) = 0;
  return this;
}

uint64_t CMMsl::RunningVerticalOscillationSignals::RunningVerticalOscillationSignals(uint64_t this)
{
  *this = &unk_286C23448;
  *(this + 208) = 0;
  return this;
}

{
  *this = &unk_286C23448;
  *(this + 208) = 0;
  return this;
}

uint64_t CMMsl::RunningVerticalOscillation::RunningVerticalOscillation(uint64_t this)
{
  *this = &unk_286C233D8;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C233D8;
  *(this + 40) = 0;
  return this;
}

double CMMsl::KappaSpinResult::KappaSpinResult(CMMsl::KappaSpinResult *this)
{
  *this = &unk_286C21570;
  *(this + 51) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  return result;
}

{
  *this = &unk_286C21570;
  *(this + 51) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  return result;
}

uint64_t CMMsl::KappaPulseDeltaV::KappaPulseDeltaV(uint64_t this)
{
  *this = &unk_286C21308;
  *(this + 72) = 0;
  *(this + 112) = 0;
  return this;
}

{
  *this = &unk_286C21308;
  *(this + 72) = 0;
  *(this + 112) = 0;
  return this;
}

uint64_t CMMsl::RunningStrideLength::RunningStrideLength(uint64_t this)
{
  *this = &unk_286C233A0;
  *(this + 136) = 0;
  return this;
}

{
  *this = &unk_286C233A0;
  *(this + 136) = 0;
  return this;
}

uint64_t CMMsl::KappaHighSpeedCrashResult::KappaHighSpeedCrashResult(uint64_t this)
{
  *this = &unk_286C211B8;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C211B8;
  *(this + 68) = 0;
  return this;
}

uint64_t CMMsl::KappaPulseInertialHgAccel::KappaPulseInertialHgAccel(uint64_t this)
{
  *this = &unk_286C21378;
  *(this + 104) = 0;
  return this;
}

{
  *this = &unk_286C21378;
  *(this + 104) = 0;
  return this;
}

uint64_t CMMsl::PedometerPathStraightness::PedometerPathStraightness(uint64_t this)
{
  *this = &unk_286C22840;
  *(this + 56) = 0;
  return this;
}

{
  *this = &unk_286C22840;
  *(this + 56) = 0;
  return this;
}

uint64_t CMMsl::VO2MaxModelInput::VO2MaxModelInput(uint64_t this)
{
  *this = &unk_286C242B8;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C242B8;
  *(this + 40) = 0;
  return this;
}

double CMMsl::ProxCalibration::ProxCalibration(CMMsl::ProxCalibration *this)
{
  *this = &unk_286C22FE8;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C22FE8;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t CMMsl::KappaStepsResult::KappaStepsResult(uint64_t this)
{
  *this = &unk_286C215E0;
  *(this + 60) = 0;
  return this;
}

{
  *this = &unk_286C215E0;
  *(this + 60) = 0;
  return this;
}

uint64_t CMMsl::WakeGestureSample::WakeGestureSample(uint64_t this)
{
  *this = &unk_286C24600;
  *(this + 84) = 0;
  return this;
}

{
  *this = &unk_286C24600;
  *(this + 84) = 0;
  return this;
}

uint64_t CMMsl::KappaGravityAutocorrelationResult::KappaGravityAutocorrelationResult(uint64_t this)
{
  *this = &unk_286C21180;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C21180;
  *(this + 64) = 0;
  return this;
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::RunningVerticalOscillationGradientBoostedSignals(uint64_t this)
{
  *this = &unk_286C23410;
  *(this + 212) = 0;
  return this;
}

{
  *this = &unk_286C23410;
  *(this + 212) = 0;
  return this;
}

uint64_t CMMsl::SubStats::SubStats(uint64_t this)
{
  *this = &unk_286C23F00;
  *(this + 56) = 0;
  return this;
}

{
  *this = &unk_286C23F00;
  *(this + 56) = 0;
  return this;
}

uint64_t CMMsl::PedOdomFusionExtendedModeSegment::PedOdomFusionExtendedModeSegment(uint64_t this)
{
  *this = &unk_286C22798;
  *(this + 56) = 0;
  return this;
}

{
  *this = &unk_286C22798;
  *(this + 56) = 0;
  return this;
}

uint64_t CMMsl::MagicMountState::MagicMountState(uint64_t this)
{
  *this = &unk_286C21A40;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C21A40;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::PDRPedestrianClassifierState::PDRPedestrianClassifierState(uint64_t this)
{
  *this = &unk_286C224F8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 56) = 0;
  return this;
}

{
  *this = &unk_286C224F8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 56) = 0;
  return this;
}

uint64_t CMMsl::PDRPlacementClassifierState::PDRPlacementClassifierState(uint64_t this)
{
  *this = &unk_286C22530;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 52) = 0;
  return this;
}

{
  *this = &unk_286C22530;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 52) = 0;
  return this;
}

uint64_t CMMsl::PDRSpeedEstimatorState::PDRSpeedEstimatorState(uint64_t this)
{
  *this = &unk_286C22568;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C22568;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTEstimatorState::PDRDOTEstimatorState(uint64_t this)
{
  *this = &unk_286C221E8;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C221E8;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::PDRVelocityEstimatorState::PDRVelocityEstimatorState(uint64_t this)
{
  *this = &unk_286C225D8;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C225D8;
  *(this + 48) = 0;
  return this;
}

uint64_t CMMsl::KMVelocityEstimatorState::KMVelocityEstimatorState(uint64_t this)
{
  *this = &unk_286C20F88;
  *(this + 52) = 0;
  return this;
}

{
  *this = &unk_286C20F88;
  *(this + 52) = 0;
  return this;
}

uint64_t CMMsl::VelocityEstimatorFusionState::VelocityEstimatorFusionState(uint64_t this)
{
  *this = &unk_286C24360;
  *(this + 60) = 0;
  return this;
}

{
  *this = &unk_286C24360;
  *(this + 60) = 0;
  return this;
}

uint64_t CMMsl::PDRFenceReference::PDRFenceReference(uint64_t this)
{
  *this = &unk_286C22450;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C22450;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::PDRFenceState::PDRFenceState(uint64_t this)
{
  *this = &unk_286C22488;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C22488;
  *(this + 68) = 0;
  return this;
}

uint64_t CMMsl::UWBRange::UWBRange(uint64_t this)
{
  *this = &unk_286C24130;
  *(this + 56) = 0;
  return this;
}

{
  *this = &unk_286C24130;
  *(this + 56) = 0;
  return this;
}

uint64_t CMMsl::KappaTriggerClustersResult::KappaTriggerClustersResult(uint64_t this)
{
  *this = &unk_286C21650;
  *(this + 96) = 0;
  return this;
}

{
  *this = &unk_286C21650;
  *(this + 96) = 0;
  return this;
}

uint64_t CMMsl::SimActivityEvent::SimActivityEvent(uint64_t this)
{
  *this = &unk_286C23790;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C23790;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t CMMsl::PDRFeatures::PDRFeatures(uint64_t this)
{
  *this = &unk_286C22418;
  *(this + 108) = 0;
  return this;
}

{
  *this = &unk_286C22418;
  *(this + 108) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTEstimatorStateBody::PDRDOTEstimatorStateBody(uint64_t this)
{
  *this = &unk_286C22258;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C22258;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::PDRDOTEstimatorStateArmSwing(uint64_t this)
{
  *this = &unk_286C22220;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C22220;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTEstimatorStateHeading::PDRDOTEstimatorStateHeading(uint64_t this)
{
  *this = &unk_286C22300;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C22300;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::PDRSpeedEstimatorStateDebug::PDRSpeedEstimatorStateDebug(uint64_t this)
{
  *this = &unk_286C225A0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C225A0;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::PrecisionFindingDOTEstimate::PrecisionFindingDOTEstimate(uint64_t this)
{
  *this = &unk_286C22BF8;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C22BF8;
  *(this + 24) = 0;
  return this;
}

uint64_t CMMsl::PrecisionFindingState::PrecisionFindingState(uint64_t this)
{
  *this = &unk_286C22CA0;
  *(this + 92) = 0;
  return this;
}

{
  *this = &unk_286C22CA0;
  *(this + 92) = 0;
  return this;
}

uint64_t CMMsl::KappaRoadsResult::KappaRoadsResult(uint64_t this)
{
  *this = &unk_286C214C8;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C214C8;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::PrecisionFindingVelocityEstimate::PrecisionFindingVelocityEstimate(uint64_t this)
{
  *this = &unk_286C22CD8;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C22CD8;
  *(this + 44) = 0;
  return this;
}

uint64_t CMMsl::PrecisionFindingRangeFilter::PrecisionFindingRangeFilter(uint64_t this)
{
  *this = &unk_286C22C30;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C22C30;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTMeasurementSelectorState::PDRDOTMeasurementSelectorState(uint64_t this)
{
  *this = &unk_286C223E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 52) = 0;
  return this;
}

{
  *this = &unk_286C223E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 52) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::PDRDOTEstimatorUncertaintyModelOnBody(uint64_t this)
{
  *this = &unk_286C223A8;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C223A8;
  *(this + 40) = 0;
  return this;
}

uint64_t CMMsl::PeerState::PeerState(uint64_t this)
{
  *this = &unk_286C22878;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C22878;
  *(this + 20) = 0;
  return this;
}

double CMMsl::MagnetometerCalibratorFilterParameters::MagnetometerCalibratorFilterParameters(CMMsl::MagnetometerCalibratorFilterParameters *this)
{
  *this = &unk_286C21B20;
  *(this + 34) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  return result;
}

{
  *this = &unk_286C21B20;
  *(this + 34) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  return result;
}

double CMMsl::KappaActivityPhone::KappaActivityPhone(CMMsl::KappaActivityPhone *this)
{
  *this = &unk_286C20FC0;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = &unk_286C20FC0;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

double CMMsl::KappaActivityWatch::KappaActivityWatch(CMMsl::KappaActivityWatch *this)
{
  *this = &unk_286C20FF8;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C20FF8;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t CMMsl::PrecisionFindingSessionStartStop::PrecisionFindingSessionStartStop(uint64_t this)
{
  *this = &unk_286C22C68;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C22C68;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTEstimatorStateDebug::PDRDOTEstimatorStateDebug(uint64_t this)
{
  *this = &unk_286C222C8;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C222C8;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::PDRDOTEstimatorStateBodyDebug(uint64_t this)
{
  *this = &unk_286C22290;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C22290;
  *(this + 40) = 0;
  return this;
}

double CMMsl::KappaPeakDetectorMapResult::KappaPeakDetectorMapResult(CMMsl::KappaPeakDetectorMapResult *this)
{
  *this = &unk_286C212D0;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C212D0;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t CMMsl::KappaPeakDetectorMapMagTimestamps::KappaPeakDetectorMapMagTimestamps(uint64_t this)
{
  *this = &unk_286C21298;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C21298;
  *(this + 44) = 0;
  return this;
}

uint64_t CMMsl::PrecisionFindingVerticalState::PrecisionFindingVerticalState(uint64_t this)
{
  *this = &unk_286C22D10;
  *(this + 60) = 0;
  return this;
}

{
  *this = &unk_286C22D10;
  *(this + 60) = 0;
  return this;
}

uint64_t CMMsl::PencilFusionDMYawAlignmentUpdate::PencilFusionDMYawAlignmentUpdate(uint64_t this)
{
  *this = &unk_286C228E8;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C228E8;
  *(this + 64) = 0;
  return this;
}

uint64_t CMMsl::PencilFusionRingSensorTrustModelUpdate::PencilFusionRingSensorTrustModelUpdate(uint64_t this)
{
  *this = &unk_286C22990;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C22990;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::SafetyHertzSample::SafetyHertzSample(uint64_t this)
{
  *this = &unk_286C23608;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C23608;
  *(this + 28) = 0;
  return this;
}

uint64_t CMMsl::SafetyCompanionStatus::SafetyCompanionStatus(uint64_t this)
{
  *this = &unk_286C235D0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C235D0;
  *(this + 20) = 0;
  return this;
}

void *CMMsl::PTSConsumedGNSS::PTSConsumedGNSS(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_286C22610;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_286C22610;
  return this;
}

uint64_t CMMsl::PTSForwardPropagation::PTSForwardPropagation(uint64_t this)
{
  *this = &unk_286C22648;
  *(this + 48) = 0;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C22648;
  *(this + 48) = 0;
  *(this + 64) = 0;
  return this;
}

void *CMMsl::PTSReconstructedRoute::PTSReconstructedRoute(void *this)
{
  *this = &unk_286C226B8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C226B8;
  this[1] = 0;
  return this;
}

void *CMMsl::PTSMapMatchedRoute::PTSMapMatchedRoute(void *this)
{
  *this = &unk_286C22680;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C22680;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::SafetyRemoteSample::SafetyRemoteSample(uint64_t this)
{
  *this = &unk_286C23640;
  *(this + 52) = 0;
  return this;
}

{
  *this = &unk_286C23640;
  *(this + 52) = 0;
  return this;
}

void *CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(void *this)
{
  *this = &unk_286C23678;
  *(this + 212) = 0;
  return this;
}

{
  *this = &unk_286C23678;
  *(this + 212) = 0;
  return this;
}

uint64_t CMMsl::TNB::TNB(uint64_t this)
{
  *this = &unk_286C23F70;
  *(this + 92) = 0;
  return this;
}

{
  *this = &unk_286C23F70;
  *(this + 92) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTEstimatorStateTNBDebug::PDRDOTEstimatorStateTNBDebug(uint64_t this)
{
  *this = &unk_286C22370;
  *(this + 16) = 0;
  *(this + 80) = 0;
  return this;
}

{
  *this = &unk_286C22370;
  *(this + 16) = 0;
  *(this + 80) = 0;
  return this;
}

uint64_t CMMsl::PDRDOTEstimatorStateSwingDebug::PDRDOTEstimatorStateSwingDebug(uint64_t this)
{
  *this = &unk_286C22338;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C22338;
  *(this + 40) = 0;
  return this;
}

void *CMMsl::PTSSmoothedRoute::PTSSmoothedRoute(void *this)
{
  *this = &unk_286C226F0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C226F0;
  this[1] = 0;
  return this;
}

void *CMMsl::SPUPlaybackExampleDeviceMotion::SPUPlaybackExampleDeviceMotion(void *this)
{
  *this = &unk_286C23560;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C23560;
  this[1] = 0;
  return this;
}

void *CMMsl::SPUPlaybackExampleMotionStateUpdate::SPUPlaybackExampleMotionStateUpdate(void *this)
{
  *this = &unk_286C23598;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C23598;
  this[1] = 0;
  return this;
}

uint64_t CMMsl::Item::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 3928))
  {
    this = PB::Writer::write(a2, *(this + 696));
  }

  v4 = v3[170];
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[169];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[166];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[165];
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[96];
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = v3[95];
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = v3[102];
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[101];
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = v3[209];
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = v3[107];
  if (v13)
  {
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = v3[14];
  if (v14)
  {
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  v15 = v3[22];
  if (v15)
  {
    this = PB::Writer::writeSubmessage(a2, v15);
  }

  v16 = v3[32];
  if (v16)
  {
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  v17 = v3[465];
  if (v17)
  {
    this = PB::Writer::writeSubmessage(a2, v17);
  }

  v18 = v3[470];
  if (v18)
  {
    this = PB::Writer::writeSubmessage(a2, v18);
  }

  v19 = v3[472];
  if (v19)
  {
    this = PB::Writer::writeSubmessage(a2, v19);
  }

  v20 = v3[476];
  if (v20)
  {
    this = PB::Writer::writeSubmessage(a2, v20);
  }

  v21 = v3[483];
  if (v21)
  {
    this = PB::Writer::writeSubmessage(a2, v21);
  }

  v22 = v3[481];
  if (v22)
  {
    this = PB::Writer::writeSubmessage(a2, v22);
  }

  v23 = v3[487];
  if (v23)
  {
    this = PB::Writer::writeSubmessage(a2, v23);
  }

  v24 = v3[449];
  if (v24)
  {
    this = PB::Writer::writeSubmessage(a2, v24);
  }

  v25 = v3[75];
  if (v25)
  {
    this = PB::Writer::writeSubmessage(a2, v25);
  }

  v26 = v3[76];
  if (v26)
  {
    this = PB::Writer::writeSubmessage(a2, v26);
  }

  v27 = v3[77];
  if (v27)
  {
    this = PB::Writer::writeSubmessage(a2, v27);
  }

  v28 = v3[74];
  if (v28)
  {
    this = PB::Writer::writeSubmessage(a2, v28);
  }

  v29 = v3[78];
  if (v29)
  {
    this = PB::Writer::writeSubmessage(a2, v29);
  }

  v30 = v3[475];
  if (v30)
  {
    this = PB::Writer::writeSubmessage(a2, v30);
  }

  v31 = v3[318];
  if (v31)
  {
    this = PB::Writer::writeSubmessage(a2, v31);
  }

  v32 = v3[371];
  if (v32)
  {
    this = PB::Writer::writeSubmessage(a2, v32);
  }

  v33 = v3[485];
  if (v33)
  {
    this = PB::Writer::writeSubmessage(a2, v33);
  }

  v34 = v3[459];
  if (v34)
  {
    this = PB::Writer::writeSubmessage(a2, v34);
  }

  v35 = v3[86];
  if (v35)
  {
    this = PB::Writer::writeSubmessage(a2, v35);
  }

  v36 = v3[461];
  if (v36)
  {
    this = PB::Writer::writeSubmessage(a2, v36);
  }

  v37 = v3[205];
  if (v37)
  {
    this = PB::Writer::writeSubmessage(a2, v37);
  }

  v38 = v3[203];
  if (v38)
  {
    this = PB::Writer::writeSubmessage(a2, v38);
  }

  v39 = v3[198];
  if (v39)
  {
    this = PB::Writer::writeSubmessage(a2, v39);
  }

  v40 = v3[33];
  if (v40)
  {
    this = PB::Writer::writeSubmessage(a2, v40);
  }

  v41 = v3[34];
  if (v41)
  {
    this = PB::Writer::writeSubmessage(a2, v41);
  }

  v42 = v3[39];
  if (v42)
  {
    this = PB::Writer::writeSubmessage(a2, v42);
  }

  v43 = v3[128];
  if (v43)
  {
    this = PB::Writer::writeSubmessage(a2, v43);
  }

  v44 = v3[486];
  if (v44)
  {
    this = PB::Writer::writeSubmessage(a2, v44);
  }

  v45 = v3[482];
  if (v45)
  {
    this = PB::Writer::writeSubmessage(a2, v45);
  }

  v46 = v3[197];
  if (v46)
  {
    this = PB::Writer::writeSubmessage(a2, v46);
  }

  v47 = v3[444];
  if (v47)
  {
    this = PB::Writer::writeSubmessage(a2, v47);
  }

  v48 = v3[49];
  if (v48)
  {
    this = PB::Writer::writeSubmessage(a2, v48);
  }

  v49 = v3[441];
  if (v49)
  {
    this = PB::Writer::writeSubmessage(a2, v49);
  }

  v50 = v3[261];
  if (v50)
  {
    this = PB::Writer::writeSubmessage(a2, v50);
  }

  v51 = v3[139];
  if (v51)
  {
    this = PB::Writer::writeSubmessage(a2, v51);
  }

  v52 = v3[13];
  if (v52)
  {
    this = PB::Writer::writeSubmessage(a2, v52);
  }

  v53 = v3[286];
  if (v53)
  {
    this = PB::Writer::writeSubmessage(a2, v53);
  }

  v54 = v3[410];
  if (v54)
  {
    this = PB::Writer::writeSubmessage(a2, v54);
  }

  v55 = v3[271];
  if (v55)
  {
    this = PB::Writer::writeSubmessage(a2, v55);
  }

  v56 = v3[100];
  if (v56)
  {
    this = PB::Writer::writeSubmessage(a2, v56);
  }

  v57 = v3[442];
  if (v57)
  {
    this = PB::Writer::writeSubmessage(a2, v57);
  }

  v58 = v3[387];
  if (v58)
  {
    this = PB::Writer::writeSubmessage(a2, v58);
  }

  v59 = v3[443];
  if (v59)
  {
    this = PB::Writer::writeSubmessage(a2, v59);
  }

  v60 = v3[448];
  if (v60)
  {
    this = PB::Writer::writeSubmessage(a2, v60);
  }

  v61 = v3[245];
  if (v61)
  {
    this = PB::Writer::writeSubmessage(a2, v61);
  }

  v62 = v3[220];
  if (v62)
  {
    this = PB::Writer::writeSubmessage(a2, v62);
  }

  v63 = v3[194];
  if (v63)
  {
    this = PB::Writer::writeSubmessage(a2, v63);
  }

  v64 = v3[241];
  if (v64)
  {
    this = PB::Writer::writeSubmessage(a2, v64);
  }

  v65 = v3[431];
  if (v65)
  {
    this = PB::Writer::writeSubmessage(a2, v65);
  }

  v66 = v3[236];
  if (v66)
  {
    this = PB::Writer::writeSubmessage(a2, v66);
  }

  v67 = v3[20];
  if (v67)
  {
    this = PB::Writer::writeSubmessage(a2, v67);
  }

  v68 = v3[432];
  if (v68)
  {
    this = PB::Writer::writeSubmessage(a2, v68);
  }

  v69 = v3[53];
  if (v69)
  {
    this = PB::Writer::writeSubmessage(a2, v69);
  }

  v70 = v3[424];
  if (v70)
  {
    this = PB::Writer::writeSubmessage(a2, v70);
  }

  v71 = v3[52];
  if (v71)
  {
    this = PB::Writer::writeSubmessage(a2, v71);
  }

  v72 = v3[425];
  if (v72)
  {
    this = PB::Writer::writeSubmessage(a2, v72);
  }

  v73 = v3[466];
  if (v73)
  {
    this = PB::Writer::writeSubmessage(a2, v73);
  }

  v74 = v3[42];
  if (v74)
  {
    this = PB::Writer::writeSubmessage(a2, v74);
  }

  v75 = v3[464];
  if (v75)
  {
    this = PB::Writer::writeSubmessage(a2, v75);
  }

  v76 = v3[445];
  if (v76)
  {
    this = PB::Writer::writeSubmessage(a2, v76);
  }

  v77 = v3[181];
  if (v77)
  {
    this = PB::Writer::writeSubmessage(a2, v77);
  }

  v78 = v3[398];
  if (v78)
  {
    this = PB::Writer::writeSubmessage(a2, v78);
  }

  v79 = v3[152];
  if (v79)
  {
    this = PB::Writer::writeSubmessage(a2, v79);
  }

  v80 = v3[123];
  if (v80)
  {
    this = PB::Writer::writeSubmessage(a2, v80);
  }

  v81 = v3[6];
  if (v81)
  {
    this = PB::Writer::writeSubmessage(a2, v81);
  }

  v82 = v3[280];
  if (v82)
  {
    this = PB::Writer::writeSubmessage(a2, v82);
  }

  v83 = v3[275];
  if (v83)
  {
    this = PB::Writer::writeSubmessage(a2, v83);
  }

  v84 = v3[69];
  if (v84)
  {
    this = PB::Writer::writeSubmessage(a2, v84);
  }

  v85 = v3[243];
  if (v85)
  {
    this = PB::Writer::writeSubmessage(a2, v85);
  }

  v86 = v3[364];
  if (v86)
  {
    this = PB::Writer::writeSubmessage(a2, v86);
  }

  v87 = v3[212];
  if (v87)
  {
    this = PB::Writer::writeSubmessage(a2, v87);
  }

  v88 = v3[99];
  if (v88)
  {
    this = PB::Writer::writeSubmessage(a2, v88);
  }

  v89 = v3[176];
  if (v89)
  {
    this = PB::Writer::writeSubmessage(a2, v89);
  }

  v90 = v3[177];
  if (v90)
  {
    this = PB::Writer::writeSubmessage(a2, v90);
  }

  v91 = v3[175];
  if (v91)
  {
    this = PB::Writer::writeSubmessage(a2, v91);
  }

  v92 = v3[174];
  if (v92)
  {
    this = PB::Writer::writeSubmessage(a2, v92);
  }

  v93 = v3[66];
  if (v93)
  {
    this = PB::Writer::writeSubmessage(a2, v93);
  }

  v94 = v3[153];
  if (v94)
  {
    this = PB::Writer::writeSubmessage(a2, v94);
  }

  v95 = v3[274];
  if (v95)
  {
    this = PB::Writer::writeSubmessage(a2, v95);
  }

  v96 = v3[262];
  if (v96)
  {
    this = PB::Writer::writeSubmessage(a2, v96);
  }

  v97 = v3[334];
  if (v97)
  {
    this = PB::Writer::writeSubmessage(a2, v97);
  }

  v98 = v3[335];
  if (v98)
  {
    this = PB::Writer::writeSubmessage(a2, v98);
  }

  v99 = v3[70];
  if (v99)
  {
    this = PB::Writer::writeSubmessage(a2, v99);
  }

  v100 = v3[213];
  if (v100)
  {
    this = PB::Writer::writeSubmessage(a2, v100);
  }

  v101 = v3[98];
  if (v101)
  {
    this = PB::Writer::writeSubmessage(a2, v101);
  }

  v102 = v3[348];
  if (v102)
  {
    this = PB::Writer::writeSubmessage(a2, v102);
  }

  v103 = v3[450];
  if (v103)
  {
    this = PB::Writer::writeSubmessage(a2, v103);
  }

  v104 = v3[264];
  if (v104)
  {
    this = PB::Writer::writeSubmessage(a2, v104);
  }

  v105 = v3[265];
  if (v105)
  {
    this = PB::Writer::writeSubmessage(a2, v105);
  }

  v106 = v3[347];
  if (v106)
  {
    this = PB::Writer::writeSubmessage(a2, v106);
  }

  v107 = v3[480];
  if (v107)
  {
    this = PB::Writer::writeSubmessage(a2, v107);
  }

  v108 = v3[471];
  if (v108)
  {
    this = PB::Writer::writeSubmessage(a2, v108);
  }

  v109 = v3[363];
  if (v109)
  {
    this = PB::Writer::writeSubmessage(a2, v109);
  }

  v110 = v3[82];
  if (v110)
  {
    this = PB::Writer::writeSubmessage(a2, v110);
  }

  v111 = v3[67];
  if (v111)
  {
    this = PB::Writer::writeSubmessage(a2, v111);
  }

  v112 = v3[68];
  if (v112)
  {
    this = PB::Writer::writeSubmessage(a2, v112);
  }

  v113 = v3[294];
  if (v113)
  {
    this = PB::Writer::writeSubmessage(a2, v113);
  }

  v114 = v3[329];
  if (v114)
  {
    this = PB::Writer::writeSubmessage(a2, v114);
  }

  v115 = v3[330];
  if (v115)
  {
    this = PB::Writer::writeSubmessage(a2, v115);
  }

  v116 = v3[54];
  if (v116)
  {
    this = PB::Writer::writeSubmessage(a2, v116);
  }

  v117 = v3[426];
  if (v117)
  {
    this = PB::Writer::writeSubmessage(a2, v117);
  }

  v118 = v3[48];
  if (v118)
  {
    this = PB::Writer::writeSubmessage(a2, v118);
  }

  v119 = v3[65];
  if (v119)
  {
    this = PB::Writer::writeSubmessage(a2, v119);
  }

  v120 = v3[71];
  if (v120)
  {
    this = PB::Writer::writeSubmessage(a2, v120);
  }

  v121 = v3[454];
  if (v121)
  {
    this = PB::Writer::writeSubmessage(a2, v121);
  }

  v122 = v3[406];
  if (v122)
  {
    this = PB::Writer::writeSubmessage(a2, v122);
  }

  v123 = v3[401];
  if (v123)
  {
    this = PB::Writer::writeSubmessage(a2, v123);
  }

  v124 = v3[404];
  if (v124)
  {
    this = PB::Writer::writeSubmessage(a2, v124);
  }

  v125 = v3[403];
  if (v125)
  {
    this = PB::Writer::writeSubmessage(a2, v125);
  }

  v126 = v3[407];
  if (v126)
  {
    this = PB::Writer::writeSubmessage(a2, v126);
  }

  v127 = v3[408];
  if (v127)
  {
    this = PB::Writer::writeSubmessage(a2, v127);
  }

  v128 = v3[402];
  if (v128)
  {
    this = PB::Writer::writeSubmessage(a2, v128);
  }

  v129 = v3[268];
  if (v129)
  {
    this = PB::Writer::writeSubmessage(a2, v129);
  }

  v130 = v3[484];
  if (v130)
  {
    this = PB::Writer::writeSubmessage(a2, v130);
  }

  v131 = v3[256];
  if (v131)
  {
    this = PB::Writer::writeSubmessage(a2, v131);
  }

  v132 = v3[29];
  if (v132)
  {
    this = PB::Writer::writeSubmessage(a2, v132);
  }

  v133 = v3[411];
  if (v133)
  {
    this = PB::Writer::writeSubmessage(a2, v133);
  }

  v134 = v3[412];
  if (v134)
  {
    this = PB::Writer::writeSubmessage(a2, v134);
  }

  v135 = v3[394];
  if (v135)
  {
    this = PB::Writer::writeSubmessage(a2, v135);
  }

  v136 = v3[104];
  if (v136)
  {
    this = PB::Writer::writeSubmessage(a2, v136);
  }

  v137 = v3[125];
  if (v137)
  {
    this = PB::Writer::writeSubmessage(a2, v137);
  }

  v138 = v3[64];
  if (v138)
  {
    this = PB::Writer::writeSubmessage(a2, v138);
  }

  v139 = v3[260];
  if (v139)
  {
    this = PB::Writer::writeSubmessage(a2, v139);
  }

  v140 = v3[63];
  if (v140)
  {
    this = PB::Writer::writeSubmessage(a2, v140);
  }

  v141 = v3[338];
  if (v141)
  {
    this = PB::Writer::writeSubmessage(a2, v141);
  }

  v142 = v3[151];
  if (v142)
  {
    this = PB::Writer::writeSubmessage(a2, v142);
  }

  v143 = v3[111];
  if (v143)
  {
    this = PB::Writer::writeSubmessage(a2, v143);
  }

  v144 = v3[3];
  if (v144)
  {
    this = PB::Writer::writeSubmessage(a2, v144);
  }

  v145 = v3[4];
  if (v145)
  {
    this = PB::Writer::writeSubmessage(a2, v145);
  }

  v146 = v3[45];
  if (v146)
  {
    this = PB::Writer::writeSubmessage(a2, v146);
  }

  v147 = v3[257];
  if (v147)
  {
    this = PB::Writer::writeSubmessage(a2, v147);
  }

  v148 = v3[440];
  if (v148)
  {
    this = PB::Writer::writeSubmessage(a2, v148);
  }

  v149 = v3[374];
  if (v149)
  {
    this = PB::Writer::writeSubmessage(a2, v149);
  }

  v150 = v3[489];
  if (v150)
  {
    this = PB::Writer::writeSubmessage(a2, v150);
  }

  v151 = v3[488];
  if (v151)
  {
    this = PB::Writer::writeSubmessage(a2, v151);
  }

  v152 = v3[50];
  if (v152)
  {
    this = PB::Writer::writeSubmessage(a2, v152);
  }

  v153 = v3[311];
  if (v153)
  {
    this = PB::Writer::writeSubmessage(a2, v153);
  }

  v154 = v3[333];
  if (v154)
  {
    this = PB::Writer::writeSubmessage(a2, v154);
  }

  v155 = v3[255];
  if (v155)
  {
    this = PB::Writer::writeSubmessage(a2, v155);
  }

  v156 = v3[258];
  if (v156)
  {
    this = PB::Writer::writeSubmessage(a2, v156);
  }

  v157 = v3[375];
  if (v157)
  {
    this = PB::Writer::writeSubmessage(a2, v157);
  }

  v158 = v3[57];
  if (v158)
  {
    this = PB::Writer::writeSubmessage(a2, v158);
  }

  v159 = v3[58];
  if (v159)
  {
    this = PB::Writer::writeSubmessage(a2, v159);
  }

  v160 = v3[277];
  if (v160)
  {
    this = PB::Writer::writeSubmessage(a2, v160);
  }

  v161 = v3[297];
  if (v161)
  {
    this = PB::Writer::writeSubmessage(a2, v161);
  }

  v162 = v3[12];
  if (v162)
  {
    this = PB::Writer::writeSubmessage(a2, v162);
  }

  v163 = v3[117];
  if (v163)
  {
    this = PB::Writer::writeSubmessage(a2, v163);
  }

  v164 = v3[312];
  if (v164)
  {
    this = PB::Writer::writeSubmessage(a2, v164);
  }

  v165 = v3[158];
  if (v165)
  {
    this = PB::Writer::writeSubmessage(a2, v165);
  }

  v166 = v3[159];
  if (v166)
  {
    this = PB::Writer::writeSubmessage(a2, v166);
  }

  v167 = v3[157];
  if (v167)
  {
    this = PB::Writer::writeSubmessage(a2, v167);
  }

  v168 = v3[126];
  if (v168)
  {
    this = PB::Writer::writeSubmessage(a2, v168);
  }

  v169 = v3[469];
  if (v169)
  {
    this = PB::Writer::writeSubmessage(a2, v169);
  }

  v170 = v3[419];
  if (v170)
  {
    this = PB::Writer::writeSubmessage(a2, v170);
  }

  v171 = v3[377];
  if (v171)
  {
    this = PB::Writer::writeSubmessage(a2, v171);
  }

  v172 = v3[357];
  if (v172)
  {
    this = PB::Writer::writeSubmessage(a2, v172);
  }

  v173 = v3[250];
  if (v173)
  {
    this = PB::Writer::writeSubmessage(a2, v173);
  }

  v174 = v3[251];
  if (v174)
  {
    this = PB::Writer::writeSubmessage(a2, v174);
  }

  v175 = v3[43];
  if (v175)
  {
    this = PB::Writer::writeSubmessage(a2, v175);
  }

  v176 = v3[249];
  if (v176)
  {
    this = PB::Writer::writeSubmessage(a2, v176);
  }

  v177 = v3[451];
  if (v177)
  {
    this = PB::Writer::writeSubmessage(a2, v177);
  }

  v178 = v3[355];
  if (v178)
  {
    this = PB::Writer::writeSubmessage(a2, v178);
  }

  v179 = v3[60];
  if (v179)
  {
    this = PB::Writer::writeSubmessage(a2, v179);
  }

  v180 = v3[370];
  if (v180)
  {
    this = PB::Writer::writeSubmessage(a2, v180);
  }

  v181 = v3[252];
  if (v181)
  {
    this = PB::Writer::writeSubmessage(a2, v181);
  }

  v182 = v3[248];
  if (v182)
  {
    this = PB::Writer::writeSubmessage(a2, v182);
  }

  v183 = v3[56];
  if (v183)
  {
    this = PB::Writer::writeSubmessage(a2, v183);
  }

  v184 = v3[61];
  if (v184)
  {
    this = PB::Writer::writeSubmessage(a2, v184);
  }

  v185 = v3[192];
  if (v185)
  {
    this = PB::Writer::writeSubmessage(a2, v185);
  }

  v186 = v3[393];
  if (v186)
  {
    this = PB::Writer::writeSubmessage(a2, v186);
  }

  v187 = v3[396];
  if (v187)
  {
    this = PB::Writer::writeSubmessage(a2, v187);
  }

  v188 = v3[395];
  if (v188)
  {
    this = PB::Writer::writeSubmessage(a2, v188);
  }

  v189 = v3[143];
  if (v189)
  {
    this = PB::Writer::writeSubmessage(a2, v189);
  }

  v190 = v3[458];
  if (v190)
  {
    this = PB::Writer::writeSubmessage(a2, v190);
  }

  v191 = v3[129];
  if (v191)
  {
    this = PB::Writer::writeSubmessage(a2, v191);
  }

  v192 = v3[455];
  if (v192)
  {
    this = PB::Writer::writeSubmessage(a2, v192);
  }

  v193 = v3[456];
  if (v193)
  {
    this = PB::Writer::writeSubmessage(a2, v193);
  }

  v194 = v3[429];
  if (v194)
  {
    this = PB::Writer::writeSubmessage(a2, v194);
  }

  v195 = v3[163];
  if (v195)
  {
    this = PB::Writer::writeSubmessage(a2, v195);
  }

  v196 = v3[164];
  if (v196)
  {
    this = PB::Writer::writeSubmessage(a2, v196);
  }

  v197 = v3[269];
  if (v197)
  {
    this = PB::Writer::writeSubmessage(a2, v197);
  }

  v198 = v3[142];
  if (v198)
  {
    this = PB::Writer::writeSubmessage(a2, v198);
  }

  v199 = v3[474];
  if (v199)
  {
    this = PB::Writer::writeSubmessage(a2, v199);
  }

  v200 = v3[17];
  if (v200)
  {
    this = PB::Writer::writeSubmessage(a2, v200);
  }

  v201 = v3[321];
  if (v201)
  {
    this = PB::Writer::writeSubmessage(a2, v201);
  }

  v202 = v3[206];
  if (v202)
  {
    this = PB::Writer::writeSubmessage(a2, v202);
  }

  v203 = v3[331];
  if (v203)
  {
    this = PB::Writer::writeSubmessage(a2, v203);
  }

  v204 = v3[332];
  if (v204)
  {
    this = PB::Writer::writeSubmessage(a2, v204);
  }

  v205 = v3[320];
  if (v205)
  {
    this = PB::Writer::writeSubmessage(a2, v205);
  }

  v206 = v3[122];
  if (v206)
  {
    this = PB::Writer::writeSubmessage(a2, v206);
  }

  v207 = v3[207];
  if (v207)
  {
    this = PB::Writer::writeSubmessage(a2, v207);
  }

  v208 = v3[462];
  if (v208)
  {
    this = PB::Writer::writeSubmessage(a2, v208);
  }

  v209 = v3[324];
  if (v209)
  {
    this = PB::Writer::writeSubmessage(a2, v209);
  }

  v210 = v3[327];
  if (v210)
  {
    this = PB::Writer::writeSubmessage(a2, v210);
  }

  v211 = v3[186];
  if (v211)
  {
    this = PB::Writer::writeSubmessage(a2, v211);
  }

  v212 = v3[405];
  if (v212)
  {
    this = PB::Writer::writeSubmessage(a2, v212);
  }

  v213 = v3[326];
  if (v213)
  {
    this = PB::Writer::writeSubmessage(a2, v213);
  }

  v214 = v3[273];
  if (v214)
  {
    this = PB::Writer::writeSubmessage(a2, v214);
  }

  v215 = v3[457];
  if (v215)
  {
    this = PB::Writer::writeSubmessage(a2, v215);
  }

  v216 = v3[26];
  if (v216)
  {
    this = PB::Writer::writeSubmessage(a2, v216);
  }

  v217 = v3[31];
  if (v217)
  {
    this = PB::Writer::writeSubmessage(a2, v217);
  }

  v218 = v3[281];
  if (v218)
  {
    this = PB::Writer::writeSubmessage(a2, v218);
  }

  v219 = v3[109];
  if (v219)
  {
    this = PB::Writer::writeSubmessage(a2, v219);
  }

  v220 = v3[336];
  if (v220)
  {
    this = PB::Writer::writeSubmessage(a2, v220);
  }

  v221 = v3[337];
  if (v221)
  {
    this = PB::Writer::writeSubmessage(a2, v221);
  }

  v222 = v3[195];
  if (v222)
  {
    this = PB::Writer::writeSubmessage(a2, v222);
  }

  v223 = v3[473];
  if (v223)
  {
    this = PB::Writer::writeSubmessage(a2, v223);
  }

  v224 = v3[416];
  if (v224)
  {
    this = PB::Writer::writeSubmessage(a2, v224);
  }

  v225 = v3[291];
  if (v225)
  {
    this = PB::Writer::writeSubmessage(a2, v225);
  }

  v226 = v3[272];
  if (v226)
  {
    this = PB::Writer::writeSubmessage(a2, v226);
  }

  v227 = v3[119];
  if (v227)
  {
    this = PB::Writer::writeSubmessage(a2, v227);
  }

  v228 = v3[90];
  if (v228)
  {
    this = PB::Writer::writeSubmessage(a2, v228);
  }

  v229 = v3[154];
  if (v229)
  {
    this = PB::Writer::writeSubmessage(a2, v229);
  }

  v230 = v3[27];
  if (v230)
  {
    this = PB::Writer::writeSubmessage(a2, v230);
  }

  v231 = v3[18];
  if (v231)
  {
    this = PB::Writer::writeSubmessage(a2, v231);
  }

  v232 = v3[62];
  if (v232)
  {
    this = PB::Writer::writeSubmessage(a2, v232);
  }

  v233 = v3[468];
  if (v233)
  {
    this = PB::Writer::writeSubmessage(a2, v233);
  }

  v234 = v3[467];
  if (v234)
  {
    this = PB::Writer::writeSubmessage(a2, v234);
  }

  v235 = v3[193];
  if (v235)
  {
    this = PB::Writer::writeSubmessage(a2, v235);
  }

  v236 = v3[2];
  if (v236)
  {
    this = PB::Writer::writeSubmessage(a2, v236);
  }

  v237 = v3[415];
  if (v237)
  {
    this = PB::Writer::writeSubmessage(a2, v237);
  }

  v238 = v3[417];
  if (v238)
  {
    this = PB::Writer::writeSubmessage(a2, v238);
  }

  v239 = v3[51];
  if (v239)
  {
    this = PB::Writer::writeSubmessage(a2, v239);
  }

  v240 = v3[1];
  if (v240)
  {
    this = PB::Writer::writeSubmessage(a2, v240);
  }

  v241 = v3[478];
  if (v241)
  {
    this = PB::Writer::writeSubmessage(a2, v241);
  }

  v242 = v3[479];
  if (v242)
  {
    this = PB::Writer::writeSubmessage(a2, v242);
  }

  v243 = v3[477];
  if (v243)
  {
    this = PB::Writer::writeSubmessage(a2, v243);
  }

  v244 = v3[430];
  if (v244)
  {
    this = PB::Writer::writeSubmessage(a2, v244);
  }

  v245 = v3[5];
  if (v245)
  {
    this = PB::Writer::writeSubmessage(a2, v245);
  }

  v246 = v3[167];
  if (v246)
  {
    this = PB::Writer::writeSubmessage(a2, v246);
  }

  v247 = v3[266];
  if (v247)
  {
    this = PB::Writer::writeSubmessage(a2, v247);
  }

  v248 = v3[91];
  if (v248)
  {
    this = PB::Writer::writeSubmessage(a2, v248);
  }

  v249 = v3[105];
  if (v249)
  {
    this = PB::Writer::writeSubmessage(a2, v249);
  }

  v250 = v3[185];
  if (v250)
  {
    this = PB::Writer::writeSubmessage(a2, v250);
  }

  v251 = v3[10];
  if (v251)
  {
    this = PB::Writer::writeSubmessage(a2, v251);
  }

  v252 = v3[182];
  if (v252)
  {
    this = PB::Writer::writeSubmessage(a2, v252);
  }

  v253 = v3[7];
  if (v253)
  {
    this = PB::Writer::writeSubmessage(a2, v253);
  }

  v254 = v3[11];
  if (v254)
  {
    this = PB::Writer::writeSubmessage(a2, v254);
  }

  v255 = v3[92];
  if (v255)
  {
    this = PB::Writer::writeSubmessage(a2, v255);
  }

  v256 = v3[168];
  if (v256)
  {
    this = PB::Writer::writeSubmessage(a2, v256);
  }

  v257 = v3[346];
  if (v257)
  {
    this = PB::Writer::writeSubmessage(a2, v257);
  }

  v258 = v3[353];
  if (v258)
  {
    this = PB::Writer::writeSubmessage(a2, v258);
  }

  v259 = v3[352];
  if (v259)
  {
    this = PB::Writer::writeSubmessage(a2, v259);
  }

  v260 = v3[349];
  if (v260)
  {
    this = PB::Writer::writeSubmessage(a2, v260);
  }

  v261 = v3[173];
  if (v261)
  {
    this = PB::Writer::writeSubmessage(a2, v261);
  }

  v262 = v3[180];
  if (v262)
  {
    this = PB::Writer::writeSubmessage(a2, v262);
  }

  v263 = v3[354];
  if (v263)
  {
    this = PB::Writer::writeSubmessage(a2, v263);
  }

  v264 = v3[283];
  if (v264)
  {
    this = PB::Writer::writeSubmessage(a2, v264);
  }

  v265 = v3[178];
  if (v265)
  {
    this = PB::Writer::writeSubmessage(a2, v265);
  }

  v266 = v3[93];
  if (v266)
  {
    this = PB::Writer::writeSubmessage(a2, v266);
  }

  v267 = v3[183];
  if (v267)
  {
    this = PB::Writer::writeSubmessage(a2, v267);
  }

  v268 = v3[55];
  if (v268)
  {
    this = PB::Writer::writeSubmessage(a2, v268);
  }

  v269 = v3[428];
  if (v269)
  {
    this = PB::Writer::writeSubmessage(a2, v269);
  }

  v270 = v3[386];
  if (v270)
  {
    this = PB::Writer::writeSubmessage(a2, v270);
  }

  v271 = v3[279];
  if (v271)
  {
    this = PB::Writer::writeSubmessage(a2, v271);
  }

  v272 = v3[9];
  if (v272)
  {
    this = PB::Writer::writeSubmessage(a2, v272);
  }

  v273 = v3[259];
  if (v273)
  {
    this = PB::Writer::writeSubmessage(a2, v273);
  }

  v274 = v3[124];
  if (v274)
  {
    this = PB::Writer::writeSubmessage(a2, v274);
  }

  v275 = v3[290];
  if (v275)
  {
    this = PB::Writer::writeSubmessage(a2, v275);
  }

  v276 = v3[289];
  if (v276)
  {
    this = PB::Writer::writeSubmessage(a2, v276);
  }

  v277 = v3[73];
  if (v277)
  {
    this = PB::Writer::writeSubmessage(a2, v277);
  }

  v278 = v3[463];
  if (v278)
  {
    this = PB::Writer::writeSubmessage(a2, v278);
  }

  v279 = v3[295];
  if (v279)
  {
    this = PB::Writer::writeSubmessage(a2, v279);
  }

  v280 = v3[414];
  if (v280)
  {
    this = PB::Writer::writeSubmessage(a2, v280);
  }

  v281 = v3[120];
  if (v281)
  {
    this = PB::Writer::writeSubmessage(a2, v281);
  }

  v282 = v3[278];
  if (v282)
  {
    this = PB::Writer::writeSubmessage(a2, v282);
  }

  v283 = v3[285];
  if (v283)
  {
    this = PB::Writer::writeSubmessage(a2, v283);
  }

  v284 = v3[418];
  if (v284)
  {
    this = PB::Writer::writeSubmessage(a2, v284);
  }

  v285 = v3[85];
  if (v285)
  {
    this = PB::Writer::writeSubmessage(a2, v285);
  }

  v286 = v3[89];
  if (v286)
  {
    this = PB::Writer::writeSubmessage(a2, v286);
  }

  v287 = v3[292];
  if (v287)
  {
    this = PB::Writer::writeSubmessage(a2, v287);
  }

  v288 = v3[270];
  if (v288)
  {
    this = PB::Writer::writeSubmessage(a2, v288);
  }

  v289 = v3[140];
  if (v289)
  {
    this = PB::Writer::writeSubmessage(a2, v289);
  }

  v290 = v3[59];
  if (v290)
  {
    this = PB::Writer::writeSubmessage(a2, v290);
  }

  v291 = v3[436];
  if (v291)
  {
    this = PB::Writer::writeSubmessage(a2, v291);
  }

  v292 = v3[409];
  if (v292)
  {
    this = PB::Writer::writeSubmessage(a2, v292);
  }

  v293 = v3[460];
  if (v293)
  {
    this = PB::Writer::writeSubmessage(a2, v293);
  }

  v294 = v3[284];
  if (v294)
  {
    this = PB::Writer::writeSubmessage(a2, v294);
  }

  v295 = v3[282];
  if (v295)
  {
    this = PB::Writer::writeSubmessage(a2, v295);
  }

  v296 = v3[293];
  if (v296)
  {
    this = PB::Writer::writeSubmessage(a2, v296);
  }

  v297 = v3[351];
  if (v297)
  {
    this = PB::Writer::writeSubmessage(a2, v297);
  }

  v298 = v3[204];
  if (v298)
  {
    this = PB::Writer::writeSubmessage(a2, v298);
  }

  v299 = v3[88];
  if (v299)
  {
    this = PB::Writer::writeSubmessage(a2, v299);
  }

  v300 = v3[41];
  if (v300)
  {
    this = PB::Writer::writeSubmessage(a2, v300);
  }

  v301 = v3[202];
  if (v301)
  {
    this = PB::Writer::writeSubmessage(a2, v301);
  }

  v302 = v3[200];
  if (v302)
  {
    this = PB::Writer::writeSubmessage(a2, v302);
  }

  v303 = v3[201];
  if (v303)
  {
    this = PB::Writer::writeSubmessage(a2, v303);
  }

  v304 = v3[199];
  if (v304)
  {
    this = PB::Writer::writeSubmessage(a2, v304);
  }

  v305 = v3[19];
  if (v305)
  {
    this = PB::Writer::writeSubmessage(a2, v305);
  }

  v306 = v3[15];
  if (v306)
  {
    this = PB::Writer::writeSubmessage(a2, v306);
  }

  v307 = v3[35];
  if (v307)
  {
    this = PB::Writer::writeSubmessage(a2, v307);
  }

  v308 = v3[423];
  if (v308)
  {
    this = PB::Writer::writeSubmessage(a2, v308);
  }

  v309 = v3[422];
  if (v309)
  {
    this = PB::Writer::writeSubmessage(a2, v309);
  }

  v310 = v3[118];
  if (v310)
  {
    this = PB::Writer::writeSubmessage(a2, v310);
  }

  v311 = v3[40];
  if (v311)
  {
    this = PB::Writer::writeSubmessage(a2, v311);
  }

  v312 = v3[160];
  if (v312)
  {
    this = PB::Writer::writeSubmessage(a2, v312);
  }

  v313 = v3[367];
  if (v313)
  {
    this = PB::Writer::writeSubmessage(a2, v313);
  }

  v314 = v3[369];
  if (v314)
  {
    this = PB::Writer::writeSubmessage(a2, v314);
  }

  v315 = v3[368];
  if (v315)
  {
    this = PB::Writer::writeSubmessage(a2, v315);
  }

  v316 = v3[490];
  if (v316)
  {
    this = PB::Writer::writeSubmessage(a2, v316);
  }

  v317 = v3[46];
  if (v317)
  {
    this = PB::Writer::writeSubmessage(a2, v317);
  }

  v318 = v3[345];
  if (v318)
  {
    this = PB::Writer::writeSubmessage(a2, v318);
  }

  v319 = v3[288];
  if (v319)
  {
    this = PB::Writer::writeSubmessage(a2, v319);
  }

  v320 = v3[287];
  if (v320)
  {
    this = PB::Writer::writeSubmessage(a2, v320);
  }

  v321 = v3[72];
  if (v321)
  {
    this = PB::Writer::writeSubmessage(a2, v321);
  }

  v322 = v3[24];
  if (v322)
  {
    this = PB::Writer::writeSubmessage(a2, v322);
  }

  v323 = v3[25];
  if (v323)
  {
    this = PB::Writer::writeSubmessage(a2, v323);
  }

  v324 = v3[23];
  if (v324)
  {
    this = PB::Writer::writeSubmessage(a2, v324);
  }

  v325 = v3[155];
  if (v325)
  {
    this = PB::Writer::writeSubmessage(a2, v325);
  }

  v326 = v3[156];
  if (v326)
  {
    this = PB::Writer::writeSubmessage(a2, v326);
  }

  v327 = v3[94];
  if (v327)
  {
    this = PB::Writer::writeSubmessage(a2, v327);
  }

  v328 = v3[447];
  if (v328)
  {
    this = PB::Writer::writeSubmessage(a2, v328);
  }

  v329 = v3[446];
  if (v329)
  {
    this = PB::Writer::writeSubmessage(a2, v329);
  }

  v330 = v3[30];
  if (v330)
  {
    this = PB::Writer::writeSubmessage(a2, v330);
  }

  v331 = v3[133];
  if (v331)
  {
    this = PB::Writer::writeSubmessage(a2, v331);
  }

  v332 = v3[134];
  if (v332)
  {
    this = PB::Writer::writeSubmessage(a2, v332);
  }

  v333 = v3[135];
  if (v333)
  {
    this = PB::Writer::writeSubmessage(a2, v333);
  }

  v334 = v3[131];
  if (v334)
  {
    this = PB::Writer::writeSubmessage(a2, v334);
  }

  v335 = v3[138];
  if (v335)
  {
    this = PB::Writer::writeSubmessage(a2, v335);
  }

  v336 = v3[21];
  if (v336)
  {
    this = PB::Writer::writeSubmessage(a2, v336);
  }

  v337 = v3[366];
  if (v337)
  {
    this = PB::Writer::writeSubmessage(a2, v337);
  }

  v338 = v3[365];
  if (v338)
  {
    this = PB::Writer::writeSubmessage(a2, v338);
  }

  v339 = v3[106];
  if (v339)
  {
    this = PB::Writer::writeSubmessage(a2, v339);
  }

  v340 = v3[132];
  if (v340)
  {
    this = PB::Writer::writeSubmessage(a2, v340);
  }

  v341 = v3[453];
  if (v341)
  {
    this = PB::Writer::writeSubmessage(a2, v341);
  }

  v342 = v3[28];
  if (v342)
  {
    this = PB::Writer::writeSubmessage(a2, v342);
  }

  v343 = v3[136];
  if (v343)
  {
    this = PB::Writer::writeSubmessage(a2, v343);
  }

  v344 = v3[172];
  if (v344)
  {
    this = PB::Writer::writeSubmessage(a2, v344);
  }

  v345 = v3[413];
  if (v345)
  {
    this = PB::Writer::writeSubmessage(a2, v345);
  }

  v346 = v3[141];
  if (v346)
  {
    this = PB::Writer::writeSubmessage(a2, v346);
  }

  v347 = v3[38];
  if (v347)
  {
    this = PB::Writer::writeSubmessage(a2, v347);
  }

  v348 = v3[389];
  if (v348)
  {
    this = PB::Writer::writeSubmessage(a2, v348);
  }

  v349 = v3[392];
  if (v349)
  {
    this = PB::Writer::writeSubmessage(a2, v349);
  }

  v350 = v3[390];
  if (v350)
  {
    this = PB::Writer::writeSubmessage(a2, v350);
  }

  v351 = v3[391];
  if (v351)
  {
    this = PB::Writer::writeSubmessage(a2, v351);
  }

  v352 = v3[397];
  if (v352)
  {
    this = PB::Writer::writeSubmessage(a2, v352);
  }

  v353 = v3[137];
  if (v353)
  {
    this = PB::Writer::writeSubmessage(a2, v353);
  }

  v354 = v3[211];
  if (v354)
  {
    this = PB::Writer::writeSubmessage(a2, v354);
  }

  v355 = v3[350];
  if (v355)
  {
    this = PB::Writer::writeSubmessage(a2, v355);
  }

  v356 = v3[276];
  if (v356)
  {
    this = PB::Writer::writeSubmessage(a2, v356);
  }

  v357 = v3[130];
  if (v357)
  {
    this = PB::Writer::writeSubmessage(a2, v357);
  }

  v358 = v3[254];
  if (v358)
  {
    this = PB::Writer::writeSubmessage(a2, v358);
  }

  v359 = v3[115];
  if (v359)
  {
    this = PB::Writer::writeSubmessage(a2, v359);
  }

  v360 = v3[113];
  if (v360)
  {
    this = PB::Writer::writeSubmessage(a2, v360);
  }

  v361 = v3[114];
  if (v361)
  {
    this = PB::Writer::writeSubmessage(a2, v361);
  }

  v362 = v3[112];
  if (v362)
  {
    this = PB::Writer::writeSubmessage(a2, v362);
  }

  v363 = v3[296];
  if (v363)
  {
    this = PB::Writer::writeSubmessage(a2, v363);
  }

  v364 = v3[217];
  if (v364)
  {
    this = PB::Writer::writeSubmessage(a2, v364);
  }

  v365 = v3[218];
  if (v365)
  {
    this = PB::Writer::writeSubmessage(a2, v365);
  }

  v366 = v3[221];
  if (v366)
  {
    this = PB::Writer::writeSubmessage(a2, v366);
  }

  v367 = v3[232];
  if (v367)
  {
    this = PB::Writer::writeSubmessage(a2, v367);
  }

  v368 = v3[247];
  if (v368)
  {
    this = PB::Writer::writeSubmessage(a2, v368);
  }

  v369 = v3[246];
  if (v369)
  {
    this = PB::Writer::writeSubmessage(a2, v369);
  }

  v370 = v3[230];
  if (v370)
  {
    this = PB::Writer::writeSubmessage(a2, v370);
  }

  v371 = v3[191];
  if (v371)
  {
    this = PB::Writer::writeSubmessage(a2, v371);
  }

  v372 = v3[190];
  if (v372)
  {
    this = PB::Writer::writeSubmessage(a2, v372);
  }

  v373 = v3[216];
  if (v373)
  {
    this = PB::Writer::writeSubmessage(a2, v373);
  }

  v374 = v3[219];
  if (v374)
  {
    this = PB::Writer::writeSubmessage(a2, v374);
  }

  v375 = v3[233];
  if (v375)
  {
    this = PB::Writer::writeSubmessage(a2, v375);
  }

  v376 = v3[234];
  if (v376)
  {
    this = PB::Writer::writeSubmessage(a2, v376);
  }

  v377 = v3[238];
  if (v377)
  {
    this = PB::Writer::writeSubmessage(a2, v377);
  }

  v378 = v3[226];
  if (v378)
  {
    this = PB::Writer::writeSubmessage(a2, v378);
  }

  v379 = v3[224];
  if (v379)
  {
    this = PB::Writer::writeSubmessage(a2, v379);
  }

  v380 = v3[239];
  if (v380)
  {
    this = PB::Writer::writeSubmessage(a2, v380);
  }

  v381 = v3[225];
  if (v381)
  {
    this = PB::Writer::writeSubmessage(a2, v381);
  }

  v382 = v3[235];
  if (v382)
  {
    this = PB::Writer::writeSubmessage(a2, v382);
  }

  v383 = v3[108];
  if (v383)
  {
    this = PB::Writer::writeSubmessage(a2, v383);
  }

  v384 = v3[437];
  if (v384)
  {
    this = PB::Writer::writeSubmessage(a2, v384);
  }

  v385 = v3[189];
  if (v385)
  {
    this = PB::Writer::writeSubmessage(a2, v385);
  }

  v386 = v3[438];
  if (v386)
  {
    this = PB::Writer::writeSubmessage(a2, v386);
  }

  v387 = v3[439];
  if (v387)
  {
    this = PB::Writer::writeSubmessage(a2, v387);
  }

  v388 = v3[372];
  if (v388)
  {
    this = PB::Writer::writeSubmessage(a2, v388);
  }

  v389 = v3[373];
  if (v389)
  {
    this = PB::Writer::writeSubmessage(a2, v389);
  }

  v390 = v3[376];
  if (v390)
  {
    this = PB::Writer::writeSubmessage(a2, v390);
  }

  v391 = v3[381];
  if (v391)
  {
    this = PB::Writer::writeSubmessage(a2, v391);
  }

  v392 = v3[379];
  if (v392)
  {
    this = PB::Writer::writeSubmessage(a2, v392);
  }

  v393 = v3[240];
  if (v393)
  {
    this = PB::Writer::writeSubmessage(a2, v393);
  }

  v394 = v3[229];
  if (v394)
  {
    this = PB::Writer::writeSubmessage(a2, v394);
  }

  v395 = v3[378];
  if (v395)
  {
    this = PB::Writer::writeSubmessage(a2, v395);
  }

  v396 = v3[210];
  if (v396)
  {
    this = PB::Writer::writeSubmessage(a2, v396);
  }

  v397 = v3[223];
  if (v397)
  {
    this = PB::Writer::writeSubmessage(a2, v397);
  }

  v398 = v3[231];
  if (v398)
  {
    this = PB::Writer::writeSubmessage(a2, v398);
  }

  v399 = v3[187];
  if (v399)
  {
    this = PB::Writer::writeSubmessage(a2, v399);
  }

  v400 = v3[84];
  if (v400)
  {
    this = PB::Writer::writeSubmessage(a2, v400);
  }

  v401 = v3[322];
  if (v401)
  {
    this = PB::Writer::writeSubmessage(a2, v401);
  }

  v402 = v3[97];
  if (v402)
  {
    this = PB::Writer::writeSubmessage(a2, v402);
  }

  v403 = v3[121];
  if (v403)
  {
    this = PB::Writer::writeSubmessage(a2, v403);
  }

  v404 = v3[434];
  if (v404)
  {
    this = PB::Writer::writeSubmessage(a2, v404);
  }

  v405 = v3[356];
  if (v405)
  {
    this = PB::Writer::writeSubmessage(a2, v405);
  }

  v406 = v3[242];
  if (v406)
  {
    this = PB::Writer::writeSubmessage(a2, v406);
  }

  v407 = v3[452];
  if (v407)
  {
    this = PB::Writer::writeSubmessage(a2, v407);
  }

  v408 = v3[222];
  if (v408)
  {
    this = PB::Writer::writeSubmessage(a2, v408);
  }

  v409 = v3[380];
  if (v409)
  {
    this = PB::Writer::writeSubmessage(a2, v409);
  }

  v410 = v3[420];
  if (v410)
  {
    this = PB::Writer::writeSubmessage(a2, v410);
  }

  v411 = v3[319];
  if (v411)
  {
    this = PB::Writer::writeSubmessage(a2, v411);
  }

  v412 = v3[263];
  if (v412)
  {
    this = PB::Writer::writeSubmessage(a2, v412);
  }

  v413 = v3[313];
  if (v413)
  {
    this = PB::Writer::writeSubmessage(a2, v413);
  }

  v414 = v3[314];
  if (v414)
  {
    this = PB::Writer::writeSubmessage(a2, v414);
  }

  v415 = v3[315];
  if (v415)
  {
    this = PB::Writer::writeSubmessage(a2, v415);
  }

  v416 = v3[298];
  if (v416)
  {
    this = PB::Writer::writeSubmessage(a2, v416);
  }

  v417 = v3[317];
  if (v417)
  {
    this = PB::Writer::writeSubmessage(a2, v417);
  }

  v418 = v3[253];
  if (v418)
  {
    this = PB::Writer::writeSubmessage(a2, v418);
  }

  v419 = v3[435];
  if (v419)
  {
    this = PB::Writer::writeSubmessage(a2, v419);
  }

  v420 = v3[309];
  if (v420)
  {
    this = PB::Writer::writeSubmessage(a2, v420);
  }

  v421 = v3[310];
  if (v421)
  {
    this = PB::Writer::writeSubmessage(a2, v421);
  }

  v422 = v3[433];
  if (v422)
  {
    this = PB::Writer::writeSubmessage(a2, v422);
  }

  v423 = v3[421];
  if (v423)
  {
    this = PB::Writer::writeSubmessage(a2, v423);
  }

  v424 = v3[116];
  if (v424)
  {
    this = PB::Writer::writeSubmessage(a2, v424);
  }

  v425 = v3[244];
  if (v425)
  {
    this = PB::Writer::writeSubmessage(a2, v425);
  }

  v426 = v3[388];
  if (v426)
  {
    this = PB::Writer::writeSubmessage(a2, v426);
  }

  v427 = v3[308];
  if (v427)
  {
    this = PB::Writer::writeSubmessage(a2, v427);
  }

  v428 = v3[300];
  if (v428)
  {
    this = PB::Writer::writeSubmessage(a2, v428);
  }

  v429 = v3[299];
  if (v429)
  {
    this = PB::Writer::writeSubmessage(a2, v429);
  }

  v430 = v3[303];
  if (v430)
  {
    this = PB::Writer::writeSubmessage(a2, v430);
  }

  v431 = v3[16];
  if (v431)
  {
    this = PB::Writer::writeSubmessage(a2, v431);
  }

  v432 = v3[316];
  if (v432)
  {
    this = PB::Writer::writeSubmessage(a2, v432);
  }

  v433 = v3[339];
  if (v433)
  {
    this = PB::Writer::writeSubmessage(a2, v433);
  }

  v434 = v3[342];
  if (v434)
  {
    this = PB::Writer::writeSubmessage(a2, v434);
  }

  v435 = v3[237];
  if (v435)
  {
    this = PB::Writer::writeSubmessage(a2, v435);
  }

  v436 = v3[343];
  if (v436)
  {
    this = PB::Writer::writeSubmessage(a2, v436);
  }

  v437 = v3[340];
  if (v437)
  {
    this = PB::Writer::writeSubmessage(a2, v437);
  }

  v438 = v3[307];
  if (v438)
  {
    this = PB::Writer::writeSubmessage(a2, v438);
  }

  v439 = v3[79];
  if (v439)
  {
    this = PB::Writer::writeSubmessage(a2, v439);
  }

  v440 = v3[306];
  if (v440)
  {
    this = PB::Writer::writeSubmessage(a2, v440);
  }

  v441 = v3[323];
  if (v441)
  {
    this = PB::Writer::writeSubmessage(a2, v441);
  }

  v442 = v3[267];
  if (v442)
  {
    this = PB::Writer::writeSubmessage(a2, v442);
  }

  v443 = v3[214];
  if (v443)
  {
    this = PB::Writer::writeSubmessage(a2, v443);
  }

  v444 = v3[215];
  if (v444)
  {
    this = PB::Writer::writeSubmessage(a2, v444);
  }

  v445 = v3[341];
  if (v445)
  {
    this = PB::Writer::writeSubmessage(a2, v445);
  }

  v446 = v3[302];
  if (v446)
  {
    this = PB::Writer::writeSubmessage(a2, v446);
  }

  v447 = v3[301];
  if (v447)
  {
    this = PB::Writer::writeSubmessage(a2, v447);
  }

  v448 = v3[228];
  if (v448)
  {
    this = PB::Writer::writeSubmessage(a2, v448);
  }

  v449 = v3[227];
  if (v449)
  {
    this = PB::Writer::writeSubmessage(a2, v449);
  }

  v450 = v3[344];
  if (v450)
  {
    this = PB::Writer::writeSubmessage(a2, v450);
  }

  v451 = v3[44];
  if (v451)
  {
    this = PB::Writer::writeSubmessage(a2, v451);
  }

  v452 = v3[127];
  if (v452)
  {
    this = PB::Writer::writeSubmessage(a2, v452);
  }

  v453 = v3[325];
  if (v453)
  {
    this = PB::Writer::writeSubmessage(a2, v453);
  }

  v454 = v3[328];
  if (v454)
  {
    this = PB::Writer::writeSubmessage(a2, v454);
  }

  v455 = v3[37];
  if (v455)
  {
    this = PB::Writer::writeSubmessage(a2, v455);
  }

  v456 = v3[36];
  if (v456)
  {
    this = PB::Writer::writeSubmessage(a2, v456);
  }

  v457 = v3[383];
  if (v457)
  {
    this = PB::Writer::writeSubmessage(a2, v457);
  }

  v458 = v3[382];
  if (v458)
  {
    this = PB::Writer::writeSubmessage(a2, v458);
  }

  v459 = v3[358];
  if (v459)
  {
    this = PB::Writer::writeSubmessage(a2, v459);
  }

  v460 = v3[359];
  if (v460)
  {
    this = PB::Writer::writeSubmessage(a2, v460);
  }

  v461 = v3[361];
  if (v461)
  {
    this = PB::Writer::writeSubmessage(a2, v461);
  }

  v462 = v3[188];
  if (v462)
  {
    this = PB::Writer::writeSubmessage(a2, v462);
  }

  v463 = v3[360];
  if (v463)
  {
    this = PB::Writer::writeSubmessage(a2, v463);
  }

  v464 = v3[47];
  if (v464)
  {
    this = PB::Writer::writeSubmessage(a2, v464);
  }

  v465 = v3[147];
  if (v465)
  {
    this = PB::Writer::writeSubmessage(a2, v465);
  }

  v466 = v3[146];
  if (v466)
  {
    this = PB::Writer::writeSubmessage(a2, v466);
  }

  v467 = v3[144];
  if (v467)
  {
    this = PB::Writer::writeSubmessage(a2, v467);
  }

  v468 = v3[384];
  if (v468)
  {
    this = PB::Writer::writeSubmessage(a2, v468);
  }

  v469 = v3[385];
  if (v469)
  {
    this = PB::Writer::writeSubmessage(a2, v469);
  }

  v470 = v3[110];
  if (v470)
  {
    this = PB::Writer::writeSubmessage(a2, v470);
  }

  v471 = v3[427];
  if (v471)
  {
    this = PB::Writer::writeSubmessage(a2, v471);
  }

  v472 = v3[305];
  if (v472)
  {
    this = PB::Writer::writeSubmessage(a2, v472);
  }

  v473 = v3[83];
  if (v473)
  {
    this = PB::Writer::writeSubmessage(a2, v473);
  }

  v474 = v3[304];
  if (v474)
  {
    this = PB::Writer::writeSubmessage(a2, v474);
  }

  v475 = v3[196];
  if (v475)
  {
    this = PB::Writer::writeSubmessage(a2, v475);
  }

  v476 = v3[184];
  if (v476)
  {
    this = PB::Writer::writeSubmessage(a2, v476);
  }

  v477 = v3[171];
  if (v477)
  {
    this = PB::Writer::writeSubmessage(a2, v477);
  }

  v478 = v3[8];
  if (v478)
  {
    this = PB::Writer::writeSubmessage(a2, v478);
  }

  v479 = v3[179];
  if (v479)
  {
    this = PB::Writer::writeSubmessage(a2, v479);
  }

  v480 = v3[362];
  if (v480)
  {
    this = PB::Writer::writeSubmessage(a2, v480);
  }

  v481 = v3[150];
  if (v481)
  {
    this = PB::Writer::writeSubmessage(a2, v481);
  }

  v482 = v3[148];
  if (v482)
  {
    this = PB::Writer::writeSubmessage(a2, v482);
  }

  v483 = v3[145];
  if (v483)
  {
    this = PB::Writer::writeSubmessage(a2, v483);
  }

  v484 = v3[149];
  if (v484)
  {
    this = PB::Writer::writeSubmessage(a2, v484);
  }

  v485 = v3[103];
  if (v485)
  {
    this = PB::Writer::writeSubmessage(a2, v485);
  }

  v486 = v3[81];
  if (v486)
  {
    this = PB::Writer::writeSubmessage(a2, v486);
  }

  v487 = v3[80];
  if (v487)
  {
    this = PB::Writer::writeSubmessage(a2, v487);
  }

  v488 = v3[162];
  if (v488)
  {
    this = PB::Writer::writeSubmessage(a2, v488);
  }

  v489 = v3[161];
  if (v489)
  {
    this = PB::Writer::writeSubmessage(a2, v489);
  }

  v490 = v3[399];
  if (v490)
  {
    this = PB::Writer::writeSubmessage(a2, v490);
  }

  v491 = v3[400];
  if (v491)
  {
    this = PB::Writer::writeSubmessage(a2, v491);
  }

  v492 = v3[208];
  if (v492)
  {

    return PB::Writer::writeSubmessage(a2, v492);
  }

  return this;
}