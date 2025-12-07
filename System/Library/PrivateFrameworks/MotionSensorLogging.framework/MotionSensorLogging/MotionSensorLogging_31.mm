uint64_t sub_25AC0BC48(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::WifiScanEntry::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_25AC0BCA0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::WorkoutPriorInformation::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void *CMMsl::Item::makeGyroBiasCorrection(void *this)
{
  if (!this[170])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroBiasConstraints(void *this)
{
  if (!this[169])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGravityCorrection(void *this)
{
  if (!this[166])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGravityConstraints(void *this)
{
  if (!this[165])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCompassCorrection(void *this)
{
  if (!this[96])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCompassConstraints(void *this)
{
  if (!this[95])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCourseCorrection(void *this)
{
  if (!this[102])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCourseConstraints(void *this)
{
  if (!this[101])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeIntersiloNSCodingData(void *this)
{
  if (!this[209])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDeviceMotionCovariance(void *this)
{
  if (!this[107])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryAccel(void *this)
{
  if (!this[14])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryGyro(void *this)
{
  if (!this[22])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryProx(void *this)
{
  if (!this[32])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderAccel(void *this)
{
  if (!this[465])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderBodyMetrics(void *this)
{
  if (!this[470])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderElevation(void *this)
{
  if (!this[472])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderHeartRate(void *this)
{
  if (!this[476])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderRotationRate(void *this)
{
  if (!this[483])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderOdometer(void *this)
{
  if (!this[481])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderWorkoutEvent(void *this)
{
  if (!this[487])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVo2MaxInput(void *this)
{
  if (!this[449])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBraveHeartDeviceMotion(void *this)
{
  if (!this[75])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBraveHeartNatalieData(void *this)
{
  if (!this[76])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBraveHeartVO2MaxInput(void *this)
{
  if (!this[77])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBraveHeartAccel(void *this)
{
  if (!this[74])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBraveHeartWorkoutEvent(void *this)
{
  if (!this[78])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderHealthKitInfo(void *this)
{
  if (!this[475])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePearlAttitude(void *this)
{
  if (!this[318])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRotationRate(void *this)
{
  if (!this[371])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderWatchOrientationSettings(void *this)
{
  if (!this[485])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWatchOnWristState(void *this)
{
  if (!this[459])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCatherineHealthKitData(void *this)
{
  if (!this[86])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWifiScanResults(void *this)
{
  if (!this[461])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInEarTransitionEntry(void *this)
{
  if (!this[205])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInEarSession(void *this)
{
  if (!this[203])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInEarBaseline(void *this)
{
  if (!this[198])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryProxSensorDrop(void *this)
{
  if (!this[33])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryProxTempComp(void *this)
{
  if (!this[34])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryWake(void *this)
{
  if (!this[39])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFacePose(void *this)
{
  if (!this[128])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderWifiScanResults(void *this)
{
  if (!this[486])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderPressure(void *this)
{
  if (!this[482])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInEarAdditionalState(void *this)
{
  if (!this[197])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryDeviceMotion(void *this)
{
  if (!this[20])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVisionCompassBias(void *this)
{
  if (!this[444])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeArSessionState(void *this)
{
  if (!this[49])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVioEstimation(void *this)
{
  if (!this[441])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeLslHeadingEstimation(void *this)
{
  if (!this[261])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallSnippet(void *this)
{
  if (!this[139])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccelerometerPace(void *this)
{
  if (!this[13])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMovementStats(void *this)
{
  if (!this[286])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStepCountEntry(void *this)
{
  if (!this[410])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMobilityBoutMetrics(void *this)
{
  if (!this[271])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCoprocessorReplyGaitMetrics(void *this)
{
  if (!this[100])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVioPose(void *this)
{
  if (!this[442])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSignalEnvironment(void *this)
{
  if (!this[387])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVioReplayPose(void *this)
{
  if (!this[443])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVisualStateMeasurement(void *this)
{
  if (!this[448])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaTriggerDebug(void *this)
{
  if (!this[245])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaDirectionOfTravel(void *this)
{
  if (!this[220])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHgAccel(void *this)
{
  if (!this[194])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaSteps(void *this)
{
  if (!this[241])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeUserInteraction(void *this)
{
  if (!this[431])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaRoads(void *this)
{
  if (!this[236])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeUserStudyEvent(void *this)
{
  if (!this[432])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAuxiliaryDeviceMotion(void *this)
{
  if (!this[53])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeTempestPoCAuxiliaryDeviceMotion(void *this)
{
  if (!this[424])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAudioAccessoryDeviceMotion(void *this)
{
  if (!this[52])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeTempestPoCListenerOrientation(void *this)
{
  if (!this[425])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderAccel800(void *this)
{
  if (!this[466])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAlsData(void *this)
{
  if (!this[42])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderALSData(void *this)
{
  if (!this[464])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVisualLocalization(void *this)
{
  if (!this[445])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroFactoryCalibrationData(void *this)
{
  if (!this[181])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSpl(void *this)
{
  if (!this[398])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFrequencyResponse(void *this)
{
  if (!this[152])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeEmergencyState(void *this)
{
  if (!this[123])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccel800(void *this)
{
  if (!this[6])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionLocation(void *this)
{
  if (!this[280])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionActivity(void *this)
{
  if (!this[275])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBioMotionPose(void *this)
{
  if (!this[69])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaTrigger(void *this)
{
  if (!this[243])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRelDMInSystemConfig(void *this)
{
  if (!this[364])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeJointLinkModelPose(void *this)
{
  if (!this[212])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeConstrainedIntegratorPose(void *this)
{
  if (!this[99])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroCalibrationSample(void *this)
{
  if (!this[176])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroCalibrationSampleNonlinear(void *this)
{
  if (!this[177])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroCalibrationDataNonlinearNonFactory(void *this)
{
  if (!this[175])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroCalibrationDataFactory(void *this)
{
  if (!this[174])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBioMotionClassification(void *this)
{
  if (!this[66])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFusedBioMotionClassification(void *this)
{
  if (!this[153])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeModelBasedBioMotionClassification(void *this)
{
  if (!this[274])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMLBasedBioMotionClassification(void *this)
{
  if (!this[262])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePose(void *this)
{
  if (!this[334])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePoseState(void *this)
{
  if (!this[335])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBioMotionPredictedPose(void *this)
{
  if (!this[70])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeJointLinkModelPredictedPose(void *this)
{
  if (!this[213])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeConstrainedIntegratorModelPredictedPose(void *this)
{
  if (!this[98])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePressureCompensated(void *this)
{
  if (!this[348])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVo2MaxOutput(void *this)
{
  if (!this[450])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMagneticAccessoryType1(void *this)
{
  if (!this[264])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMagneticAccessoryType2(void *this)
{
  if (!this[265])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePressureCalibration(void *this)
{
  if (!this[347])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderMagnetometer(void *this)
{
  if (!this[480])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderCompassCalibration(void *this)
{
  if (!this[471])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRawAudio(void *this)
{
  if (!this[363])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCV3DPredictedPose(void *this)
{
  if (!this[82])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBioMotionLinkLengthFitParameters(void *this)
{
  if (!this[67])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBioMotionOnlineLinkLengthUpdate(void *this)
{
  if (!this[68])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeOdtPose(void *this)
{
  if (!this[294])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePencilTipForce(void *this)
{
  if (!this[329])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePencilTouch(void *this)
{
  if (!this[330])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAveragedALSData(void *this)
{
  if (!this[54])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeTimestamp(void *this)
{
  if (!this[426])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAppleCV3DSLAMState(void *this)
{
  if (!this[48])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBioMotionAnchorPose(void *this)
{
  if (!this[65])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBioMotionPropagatedAnchor(void *this)
{
  if (!this[71])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWalkingSteadinessClassification(void *this)
{
  if (!this[454])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSteadinessModelResult(void *this)
{
  if (!this[406])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSteadinessEvent(void *this)
{
  if (!this[401])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSteadinessModelGaitBaselineFeatures(void *this)
{
  if (!this[404])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSteadinessModelContinuousWalkingFeatures(void *this)
{
  if (!this[403])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSteadinessModelTemporalDispersionFeatures(void *this)
{
  if (!this[407])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSteadinessModelTemporalEntropyFeatures(void *this)
{
  if (!this[408])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSteadinessModelBalanceFeatures(void *this)
{
  if (!this[402])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMagnetometerReset(void *this)
{
  if (!this[268])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderWatchOnWristStatus(void *this)
{
  if (!this[484])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeLiftToWakeOnHeadStatus(void *this)
{
  if (!this[256])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryMagnetometer(void *this)
{
  if (!this[29])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStepCountEntryAddition(void *this)
{
  if (!this[411])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStepDistanceFusionResult(void *this)
{
  if (!this[412])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSkeleton3D(void *this)
{
  if (!this[394])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCvWatchCalories(void *this)
{
  if (!this[104])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFaceBlendShapeCoefficientsSample(void *this)
{
  if (!this[125])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBatteryStatus(void *this)
{
  if (!this[64])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeLockScreenStatus(void *this)
{
  if (!this[260])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBatterySaverModeStatus(void *this)
{
  if (!this[63])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePowerManagementUserActivity(void *this)
{
  if (!this[338])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFocusModes(void *this)
{
  if (!this[151])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDisplayStatus(void *this)
{
  if (!this[111])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAPSleep(void *this)
{
  if (!this[3])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAPWake(void *this)
{
  if (!this[4])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAltimeterKF(void *this)
{
  if (!this[45])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeLiftToWakeState(void *this)
{
  if (!this[257])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeViewObstructedState(void *this)
{
  if (!this[440])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningFormMetrics(void *this)
{
  if (!this[374])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutSessionPriors(void *this)
{
  if (!this[489])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderWorkoutSessionPriors(void *this)
{
  if (!this[488])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeArkitWorldPose(void *this)
{
  if (!this[50])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrImpulse(void *this)
{
  if (!this[311])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePocketDetectionPacket(void *this)
{
  if (!this[333])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeLiftToWakeFeaturesNeo(void *this)
{
  if (!this[255])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeLiftToWakeStatusNeo(void *this)
{
  if (!this[258])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningPower(void *this)
{
  if (!this[375])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBasebandCompassCoex(void *this)
{
  if (!this[57])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBasebandCompassCoexConstraints(void *this)
{
  if (!this[58])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionContextActivity(void *this)
{
  if (!this[277])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrAlgType(void *this)
{
  if (!this[297])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccelTNBFrame(void *this)
{
  if (!this[12])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDotEstimatorWithTNB(void *this)
{
  if (!this[117])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrMLModelOutput(void *this)
{
  if (!this[312])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGaitEventsModelOutput(void *this)
{
  if (!this[158])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGaitEventsStrideAggregation(void *this)
{
  if (!this[159])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGaitEventsHKResult(void *this)
{
  if (!this[157])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFaceCovered(void *this)
{
  if (!this[126])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderAveragedALSData(void *this)
{
  if (!this[469])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStrideCalEntry(void *this)
{
  if (!this[419])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningSpeedKFResult(void *this)
{
  if (!this[377])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeProxPDP(void *this)
{
  if (!this[357])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKeyboardMotionFeatures(void *this)
{
  if (!this[250])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKeyboardMotionState(void *this)
{
  if (!this[251])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAlsPhone(void *this)
{
  if (!this[43])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKeyboardKeyPress(void *this)
{
  if (!this[249])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWakeGestureNotification(void *this)
{
  if (!this[451])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeProxBaselineEstimatorState(void *this)
{
  if (!this[355])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBaselineResetCheck(void *this)
{
  if (!this[60])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRhythmicGnssOperatorStatus(void *this)
{
  if (!this[370])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKeyboardMotionTrackpad(void *this)
{
  if (!this[252])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKeyboardAttached(void *this)
{
  if (!this[248])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBacklightState(void *this)
{
  if (!this[56])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBatchedLocationFromOdometer(void *this)
{
  if (!this[61])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHeartRateReference(void *this)
{
  if (!this[192])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSkeleton2D(void *this)
{
  if (!this[393])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSkeleton3DRetargeted(void *this)
{
  if (!this[396])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSkeleton3DLifted(void *this)
{
  if (!this[395])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFitnessMachineSample(void *this)
{
  if (!this[143])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWatchHeartRateData(void *this)
{
  if (!this[458])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFacePoseSynchronized(void *this)
{
  if (!this[129])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWatchActiveCalories(void *this)
{
  if (!this[455])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWatchBasalCalories(void *this)
{
  if (!this[456])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeTrackRunData(void *this)
{
  if (!this[429])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGnssAvailabilityPredictorData(void *this)
{
  if (!this[163])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGnssLeechLocationData(void *this)
{
  if (!this[164])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMapsRouteHintData(void *this)
{
  if (!this[269])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFitnessMachineData(void *this)
{
  if (!this[142])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderFitnessMachineData(void *this)
{
  if (!this[474])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryActivityStateUpdate(void *this)
{
  if (!this[17])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePedestrianFenceExit(void *this)
{
  if (!this[321])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInertialOdometry(void *this)
{
  if (!this[206])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePhysicalEffortInput(void *this)
{
  if (!this[331])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePhysicalEffortSample(void *this)
{
  if (!this[332])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePedestrianCalorieModelDebugging(void *this)
{
  if (!this[320])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeElevationThreshold(void *this)
{
  if (!this[122])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInitialHistoricalMeanSeaLevelPressure(void *this)
{
  if (!this[207])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutActivity(void *this)
{
  if (!this[462])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePencilDeviceMotion(void *this)
{
  if (!this[324])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePencilFusionResult(void *this)
{
  if (!this[327])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHapticModuleState(void *this)
{
  if (!this[186])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSteadinessModelHarmonicFeatures(void *this)
{
  if (!this[405])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePencilFusionReplayResult(void *this)
{
  if (!this[326])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMobilitySmoothedGaitMetrics(void *this)
{
  if (!this[273])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWatchEnclosureMaterial(void *this)
{
  if (!this[457])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryHeartRate(void *this)
{
  if (!this[26])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryPPG(void *this)
{
  if (!this[31])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionLoiAltitudeData(void *this)
{
  if (!this[281])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDisplacingState(void *this)
{
  if (!this[109])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePostureJoint(void *this)
{
  if (!this[336])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePostureSkeleton(void *this)
{
  if (!this[337])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHidShower(void *this)
{
  if (!this[195])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderFaceCovered(void *this)
{
  if (!this[473])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStreamingHighFrequencyHeartRateData(void *this)
{
  if (!this[416])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeNormalGammaCalibrationBin(void *this)
{
  if (!this[291])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMobilityCalibrationMessage(void *this)
{
  if (!this[272])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeElevationBatchProcessingTimestamps(void *this)
{
  if (!this[119])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCompanionStepCountElevation(void *this)
{
  if (!this[90])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGPSCalibrationBin(void *this)
{
  if (!this[154])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryInEarDetection(void *this)
{
  if (!this[27])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryBatchedPPG(void *this)
{
  if (!this[18])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBatchedPPGData(void *this)
{
  if (!this[62])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderAudioAccessoryDeviceMotion(void *this)
{
  if (!this[468])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderAccessoryDeviceMotionConfig(void *this)
{
  if (!this[467])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHeartRateSourceDevice(void *this)
{
  if (!this[193])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAFHeartRate(void *this)
{
  if (!this[2])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStreamingHeartRateDataWatch(void *this)
{
  if (!this[415])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStreamingHighFrequencyHeartRateDataWatch(void *this)
{
  if (!this[417])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAudioAFDeviceMotion(void *this)
{
  if (!this[51])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAFDeviceMotionConfig(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderHeartRateSourceDevice(void *this)
{
  if (!this[478])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderHighFrequencyHeartRateWatch(void *this)
{
  if (!this[479])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutRecorderHeartRateAccessory(void *this)
{
  if (!this[477])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeUltraFastAccel(void *this)
{
  if (!this[430])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccel(void *this)
{
  if (!this[5])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccelBatch(void *this)
{
  if (!this[7])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccelOscarEmu(void *this)
{
  if (!this[11])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccelGesture(void *this)
{
  if (!this[9])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyro(void *this)
{
  if (!this[167])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroOscarEmu(void *this)
{
  if (!this[183])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroTemperature(void *this)
{
  if (!this[185])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroBiasAndVariance(void *this)
{
  if (!this[168])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroBiasFit(void *this)
{
  if (!this[173])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroDt(void *this)
{
  if (!this[180])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMagnetometer(void *this)
{
  if (!this[266])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCompass(void *this)
{
  if (!this[91])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCompassAlignment(void *this)
{
  if (!this[92])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroCompass(void *this)
{
  if (!this[178])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCompassCalibration(void *this)
{
  if (!this[93])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePressure(void *this)
{
  if (!this[346])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePressureOscarEmu(void *this)
{
  if (!this[353])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePressureFiltered(void *this)
{
  if (!this[349])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeProx(void *this)
{
  if (!this[354])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeTouchOscarEmu(void *this)
{
  if (!this[428])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDeviceMotion(void *this)
{
  if (!this[105])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionStateUpdate(void *this)
{
  if (!this[283])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccelGps(void *this)
{
  if (!this[10])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroGps(void *this)
{
  if (!this[182])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePressureGps(void *this)
{
  if (!this[352])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBTConnection(void *this)
{
  if (!this[55])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSessionOverride(void *this)
{
  if (!this[386])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeLocationOscarEmu(void *this)
{
  if (!this[259])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionHint(void *this)
{
  if (!this[279])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeEnhancedDeviceMotion(void *this)
{
  if (!this[124])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeNonlinearBiasFit(void *this)
{
  if (!this[290])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeNatalieData(void *this)
{
  if (!this[289])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBodyMetrics(void *this)
{
  if (!this[73])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWorkoutEvent(void *this)
{
  if (!this[463])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeOnsetHeartRateData(void *this)
{
  if (!this[295])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStreamingHeartRateData(void *this)
{
  if (!this[414])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeElevationChange(void *this)
{
  if (!this[120])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCoarseElevationChange(void *this)
{
  if (!this[89])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionGPSLocation(void *this)
{
  if (!this[278])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionWifiLocation(void *this)
{
  if (!this[285])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStrideCalBin(void *this)
{
  if (!this[418])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCalorimetryPauseEvent(void *this)
{
  if (!this[85])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeOdometer(void *this)
{
  if (!this[292])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMetsInfo(void *this)
{
  if (!this[270])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallStats(void *this)
{
  if (!this[140])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBasebandSpeed(void *this)
{
  if (!this[59])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVibrationEvent(void *this)
{
  if (!this[436])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStepCadenceToStrideLengthBin(void *this)
{
  if (!this[409])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWatchOrientationSettings(void *this)
{
  if (!this[460])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionWifiAssociation(void *this)
{
  if (!this[284])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionLoiData(void *this)
{
  if (!this[282])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeOdometerWithAltitude(void *this)
{
  if (!this[293])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePressureFilteredNoTemperature(void *this)
{
  if (!this[351])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInEarTransition(void *this)
{
  if (!this[204])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeClefCalibration(void *this)
{
  if (!this[88])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAirpodEvent(void *this)
{
  if (!this[41])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInEarOptical(void *this)
{
  if (!this[202])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInEarConstraints(void *this)
{
  if (!this[200])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInEarOpenLid(void *this)
{
  if (!this[201])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInEarBaselining(void *this)
{
  if (!this[199])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryConfig(void *this)
{
  if (!this[19])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryAccelConfig(void *this)
{
  if (!this[15])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryProximityConfig(void *this)
{
  if (!this[35])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeTapDetect(void *this)
{
  if (!this[423])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeTapAccept(void *this)
{
  if (!this[422])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDoubleTap(void *this)
{
  if (!this[118])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryWakeDebug(void *this)
{
  if (!this[40])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGeomagneticData(void *this)
{
  if (!this[160])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRelativeDeviceMotionInternal(void *this)
{
  if (!this[367])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRelativeGravityCorrection(void *this)
{
  if (!this[369])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRelativeGravityConstraints(void *this)
{
  if (!this[368])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeZeroVelocityCorrection(void *this)
{
  if (!this[490])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAnchorCorrection(void *this)
{
  if (!this[46])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePredictedRelativeDeviceMotion(void *this)
{
  if (!this[345])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMovementStatsSignal(void *this)
{
  if (!this[288])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMovementStatsGravityProjection(void *this)
{
  if (!this[287])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBleedToZeroCorrection(void *this)
{
  if (!this[72])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryGyroConfig(void *this)
{
  if (!this[24])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryGyroGYTT(void *this)
{
  if (!this[25])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryGyroCachedBias(void *this)
{
  if (!this[23])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGaitCycleSegment(void *this)
{
  if (!this[155])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGaitCycleSegmentationState(void *this)
{
  if (!this[156])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCompassCalibrationAttempt(void *this)
{
  if (!this[94])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVisualLocalizationAttitudeCorrection(void *this)
{
  if (!this[447])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVisualLocalizationAttitudeConstraints(void *this)
{
  if (!this[446])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryMagnetometerConfig(void *this)
{
  if (!this[30])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallDetectionReferee(void *this)
{
  if (!this[133])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallDetectionReplay(void *this)
{
  if (!this[134])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallDetectionStateMachine(void *this)
{
  if (!this[135])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallDetectionDetector(void *this)
{
  if (!this[131])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallFalsePositiveSuppressionFeatures(void *this)
{
  if (!this[138])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryDeviceMotionConfig(void *this)
{
  if (!this[21])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRelativeDeviceMotionCorrelatedMotion(void *this)
{
  if (!this[366])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRelativeDeviceMotionComplexTransition(void *this)
{
  if (!this[365])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDeviceMotionAlwaysOn(void *this)
{
  if (!this[106])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallDetectionGyroControllerReplay(void *this)
{
  if (!this[132])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWalkingDetectionResult(void *this)
{
  if (!this[453])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryInEarStatus(void *this)
{
  if (!this[28])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallDetectionWristStateReplay(void *this)
{
  if (!this[136])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroBiasEstimateError(void *this)
{
  if (!this[172])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeStepLikelihoodFeatures(void *this)
{
  if (!this[413])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFirstStepFeatures(void *this)
{
  if (!this[141])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryStepDetectorDebug(void *this)
{
  if (!this[38])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSitStandDetectorFeatures(void *this)
{
  if (!this[389])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSitStandDetectorTransitions(void *this)
{
  if (!this[392])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSitStandDetectorPosteriorBufferStatsForSitToStand(void *this)
{
  if (!this[390])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSitStandDetectorPosteriorBufferStatsForStandToSit(void *this)
{
  if (!this[391])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSpatialEvent(void *this)
{
  if (!this[397])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallDistanceReplay(void *this)
{
  if (!this[137])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeJitterBufferLevel(void *this)
{
  if (!this[211])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePressureFiltered1HzLowPass(void *this)
{
  if (!this[350])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMotionActivityReplay(void *this)
{
  if (!this[276])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFallDetectionActivityClassifierReplay(void *this)
{
  if (!this[130])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeLegacyALS5CHInput(void *this)
{
  if (!this[254])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDopplerSample(void *this)
{
  if (!this[115])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDopplerProximityEvent(void *this)
{
  if (!this[113])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDopplerRawDataInput(void *this)
{
  if (!this[114])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDopplerDebugRecord(void *this)
{
  if (!this[112])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeOrientation(void *this)
{
  if (!this[296])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaAudioResult(void *this)
{
  if (!this[217])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaBaroResult(void *this)
{
  if (!this[218])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaGpsResult(void *this)
{
  if (!this[221])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaPulseResult(void *this)
{
  if (!this[232])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaZgResult(void *this)
{
  if (!this[247])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaZgDetected(void *this)
{
  if (!this[246])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaPulseInertialAccel(void *this)
{
  if (!this[230])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHeadTrackingClientModeUpdate(void *this)
{
  if (!this[191])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHeadTrackingBehaviorUpdate(void *this)
{
  if (!this[190])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaAirbagResult(void *this)
{
  if (!this[216])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaCrashResult(void *this)
{
  if (!this[219])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaQuiescenceResult(void *this)
{
  if (!this[233])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaRecoveryResult(void *this)
{
  if (!this[234])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaRolloverCrashResult(void *this)
{
  if (!this[238])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaMildImpactResult(void *this)
{
  if (!this[226])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaLackOfMotionResult(void *this)
{
  if (!this[224])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaSevereCrashResult(void *this)
{
  if (!this[239])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaLocalAudioResult(void *this)
{
  if (!this[225])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaRemoteAudioResult(void *this)
{
  if (!this[235])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDirectionOfTravelMetrics(void *this)
{
  if (!this[108])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeViewObstructedMachineLearningDecision(void *this)
{
  if (!this[437])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHeadToHeadsetTransformationEstimate(void *this)
{
  if (!this[189])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeViewObstructedMachineLearningFeatures(void *this)
{
  if (!this[438])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeViewObstructedMachineLearningProbabilities(void *this)
{
  if (!this[439])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningArmSwingSignals(void *this)
{
  if (!this[372])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningCentripetalAccelSignals(void *this)
{
  if (!this[373])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningRotationAxis(void *this)
{
  if (!this[376])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningVerticalOscillationSignals(void *this)
{
  if (!this[381])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningVerticalOscillation(void *this)
{
  if (!this[379])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaSpinResult(void *this)
{
  if (!this[240])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaPulseDeltaV(void *this)
{
  if (!this[229])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningStrideLength(void *this)
{
  if (!this[378])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeIspPacket(void *this)
{
  if (!this[210])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaHighSpeedCrashResult(void *this)
{
  if (!this[223])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaPulseInertialHgAccel(void *this)
{
  if (!this[231])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHarmonicMetrics(void *this)
{
  if (!this[187])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCalorimetryMETsConsumed(void *this)
{
  if (!this[84])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePedometerPathStraightness(void *this)
{
  if (!this[322])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeComplexHandMotion(void *this)
{
  if (!this[97])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeElevationGradeEstimator(void *this)
{
  if (!this[121])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVO2MaxModelInput(void *this)
{
  if (!this[434])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeProxCalibration(void *this)
{
  if (!this[356])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaStepsResult(void *this)
{
  if (!this[242])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeWakeGestureSample(void *this)
{
  if (!this[452])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaGravityAutocorrelationResult(void *this)
{
  if (!this[222])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeRunningVerticalOscillationGradientBoostedSignals(void *this)
{
  if (!this[380])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSubStats(void *this)
{
  if (!this[420])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePedOdomFusionExtendedModeSegment(void *this)
{
  if (!this[319])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMagicMountState(void *this)
{
  if (!this[263])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrPedestrianClassifierState(void *this)
{
  if (!this[313])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrPlacementClassifierState(void *this)
{
  if (!this[314])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrSpeedEstimatorState(void *this)
{
  if (!this[315])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTEstimatorState(void *this)
{
  if (!this[298])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrVelocityEstimatorState(void *this)
{
  if (!this[317])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKmVelocityEstimatorState(void *this)
{
  if (!this[253])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeVelocityEstimatorFusionState(void *this)
{
  if (!this[435])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrFenceReference(void *this)
{
  if (!this[309])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrFenceState(void *this)
{
  if (!this[310])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeUwbRange(void *this)
{
  if (!this[433])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSwingDoTCandidate(void *this)
{
  if (!this[421])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDotEstimatorHandSwing(void *this)
{
  if (!this[116])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaTriggerClustersResult(void *this)
{
  if (!this[244])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSimActivityEvent(void *this)
{
  if (!this[388])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrFeatures(void *this)
{
  if (!this[308])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTEstimatorStateBody(void *this)
{
  if (!this[300])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTEstimatorStateArmSwing(void *this)
{
  if (!this[299])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTEstimatorStateHeading(void *this)
{
  if (!this[303])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessoryActivityAsleepConfidenceEpoch(void *this)
{
  if (!this[16])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrSpeedEstimatorStateDebug(void *this)
{
  if (!this[316])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePrecisionFindingDOTEstimate(void *this)
{
  if (!this[339])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePrecisionFindingState(void *this)
{
  if (!this[342])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaRoadsResult(void *this)
{
  if (!this[237])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePrecisionFindingVelocityEstimate(void *this)
{
  if (!this[343])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePrecisionFindingRangeFilter(void *this)
{
  if (!this[340])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTMeasurementSelectorState(void *this)
{
  if (!this[307])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeBumpToWakeState(void *this)
{
  if (!this[79])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTEstimatorUncertaintyModelOnBody(void *this)
{
  if (!this[306])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePeerState(void *this)
{
  if (!this[323])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeMagnetometerCalibratorFilterParameters(void *this)
{
  if (!this[267])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaActivityPhone(void *this)
{
  if (!this[214])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaActivityWatch(void *this)
{
  if (!this[215])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePrecisionFindingSessionStartStop(void *this)
{
  if (!this[341])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTEstimatorStateDebug(void *this)
{
  if (!this[302])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTEstimatorStateBodyDebug(void *this)
{
  if (!this[301])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaPeakDetectorMapResult(void *this)
{
  if (!this[228])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeKappaPeakDetectorMapMagTimestamps(void *this)
{
  if (!this[227])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePrecisionFindingVerticalState(void *this)
{
  if (!this[344])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAltimeter(void *this)
{
  if (!this[44])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFaceDownDetection(void *this)
{
  if (!this[127])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePencilFusionDMYawAlignmentUpdate(void *this)
{
  if (!this[325])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePencilFusionRingSensorTrustModelUpdate(void *this)
{
  if (!this[328])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessorySleepStateUpdate(void *this)
{
  if (!this[37])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccessorySleepStateConfidenceEpoch(void *this)
{
  if (!this[36])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSafetyHertzSample(void *this)
{
  if (!this[383])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSafetyCompanionStatus(void *this)
{
  if (!this[382])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePtsConsumedGNSS(void *this)
{
  if (!this[358])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePtsForwardPropagation(void *this)
{
  if (!this[359])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePtsReconstructedRoute(void *this)
{
  if (!this[361])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeHeadToHeadsetAttitudeEstimatorMeasurementUpdate(void *this)
{
  if (!this[188])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePtsMapMatchedRoute(void *this)
{
  if (!this[360])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAnchorMotionCorrespondence(void *this)
{
  if (!this[47])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFlickGesture(void *this)
{
  if (!this[147])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFlickFeatures(void *this)
{
  if (!this[146])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFlickControlParameters(void *this)
{
  if (!this[144])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSafetyRemoteSample(void *this)
{
  if (!this[384])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSafetyTrustedAudioResult(void *this)
{
  if (!this[385])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeDisplayPoseState(void *this)
{
  if (!this[110])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeTnb(void *this)
{
  if (!this[427])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTEstimatorStateTNBDebug(void *this)
{
  if (!this[305])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCVIMUMeasurement(void *this)
{
  if (!this[83])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePdrDOTEstimatorStateSwingDebug(void *this)
{
  if (!this[304])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeImuComboPacket(void *this)
{
  if (!this[196])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroScaleEstimate(void *this)
{
  if (!this[184])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroBiasEstimate(void *this)
{
  if (!this[171])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeAccelBiasEstimate(void *this)
{
  if (!this[8])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGyroController(void *this)
{
  if (!this[179])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makePtsSmoothedRoute(void *this)
{
  if (!this[362])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFlickMaxima(void *this)
{
  if (!this[150])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFlickGyroMaxima(void *this)
{
  if (!this[148])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFlickFPDetectorFeatures(void *this)
{
  if (!this[145])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeFlickLPFDM6Data(void *this)
{
  if (!this[149])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCourseFusion(void *this)
{
  if (!this[103])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCMPedometerStep(void *this)
{
  if (!this[81])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeCMPedEntry(void *this)
{
  if (!this[80])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGestureQuaternion(void *this)
{
  if (!this[162])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeGestureLogSource(void *this)
{
  if (!this[161])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSpuPlaybackExampleDeviceMotion(void *this)
{
  if (!this[399])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeSpuPlaybackExampleMotionStateUpdate(void *this)
{
  if (!this[400])
  {
    operator new();
  }

  return this;
}

void *CMMsl::Item::makeInterpolatedAccessoryAccel(void *this)
{
  if (!this[208])
  {
    operator new();
  }

  return this;
}

void CMMsl::JitterBufferLevel::~JitterBufferLevel(CMMsl::JitterBufferLevel *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::JitterBufferLevel::JitterBufferLevel(uint64_t this, const CMMsl::JitterBufferLevel *a2)
{
  *this = &unk_286C20EE0;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 4;
    *(this + 20) = 4;
    *(this + 16) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 20))
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 1u;
    *(this + 20) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 3);
    *(this + 20) = v3 | 2;
    *(this + 12) = v6;
  }

  return this;
}

uint64_t CMMsl::JitterBufferLevel::operator=(uint64_t a1, const CMMsl::JitterBufferLevel *a2)
{
  if (a1 != a2)
  {
    CMMsl::JitterBufferLevel::JitterBufferLevel(v7, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::JitterBufferLevel *a2, CMMsl::JitterBufferLevel *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

float CMMsl::JitterBufferLevel::JitterBufferLevel(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20EE0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return result;
}

{
  *a1 = &unk_286C20EE0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return result;
}

uint64_t CMMsl::JitterBufferLevel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C20EE0;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 16);
    v11 = *(a1 + 20);
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;
    v10 = v5;
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    *(a1 + 20) = v3;
    *(a1 + 8) = v7;
    v9[1] = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::JitterBufferLevel::formatText(CMMsl::JitterBufferLevel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "level");
    v5 = *(this + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "threshold");
  if ((*(this + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::JitterBufferLevel::readFrom(CMMsl::JitterBufferLevel *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

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

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_71;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 2u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v48 = (v32 + v31);
          v49 = v2 - v31;
          v50 = v31 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_69;
            }

            v51 = v50;
            v52 = *v48;
            *(a2 + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            ++v48;
            --v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_68;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_68:
          v2 = v51;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v2 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_69:
        *(this + 3) = v35;
      }

      else if (v22 == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v41 = (v24 + v23);
          v42 = v2 - v23;
          v43 = v23 + 1;
          while (1)
          {
            if (!v42)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_65;
            }

            v44 = v43;
            v45 = *v41;
            *(a2 + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            ++v41;
            --v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_64;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_64:
          v2 = v44;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_65:
        *(this + 2) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 4u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 4) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_71;
      }
    }

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
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_71:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::JitterBufferLevel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 20) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 16));
  v4 = *(v3 + 20);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_7:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::JitterBufferLevel::hash_value(CMMsl::JitterBufferLevel *this)
{
  if ((*(this + 20) & 4) == 0)
  {
    v1 = 0;
    if (*(this + 20))
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v4 = *(this + 4);
  v1 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 20) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(this + 2);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(this + 3);
  return v2 ^ v1 ^ v3;
}

void CMMsl::JointLinkModelPose::~JointLinkModelPose(CMMsl::JointLinkModelPose *this)
{
  v2 = *(this + 1);
  *this = &unk_286C20F18;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::JointLinkModelPose::~JointLinkModelPose(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::JointLinkModelPose *CMMsl::JointLinkModelPose::JointLinkModelPose(CMMsl::JointLinkModelPose *this, void ***a2)
{
  *this = &unk_286C20F18;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::JointLinkModelPose::operator=(uint64_t a1, void ***a2)
{
  if (a1 != a2)
  {
    CMMsl::JointLinkModelPose::JointLinkModelPose(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::JointLinkModelPose::~JointLinkModelPose(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::JointLinkModelPose *a2, CMMsl::JointLinkModelPose *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::JointLinkModelPose::JointLinkModelPose(void *a1, uint64_t a2)
{
  *a1 = &unk_286C20F18;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C20F18;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::JointLinkModelPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C20F18;
    v6[1] = v4;
    CMMsl::JointLinkModelPose::~JointLinkModelPose(v6);
  }

  return a1;
}

uint64_t CMMsl::JointLinkModelPose::formatText(CMMsl::JointLinkModelPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::JointLinkModelPose::readFrom(CMMsl::JointLinkModelPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::JointLinkModelPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::BioMotionPose *CMMsl::JointLinkModelPose::hash_value(CMMsl::JointLinkModelPose *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionPose::hash_value(result);
  }

  return result;
}

void *CMMsl::JointLinkModelPose::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::JointLinkModelPredictedPose::~JointLinkModelPredictedPose(CMMsl::JointLinkModelPredictedPose *this)
{
  v2 = *(this + 1);
  *this = &unk_286C20F50;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::JointLinkModelPredictedPose::~JointLinkModelPredictedPose(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::JointLinkModelPredictedPose *CMMsl::JointLinkModelPredictedPose::JointLinkModelPredictedPose(CMMsl::JointLinkModelPredictedPose *this, const CMMsl::PoseState ***a2)
{
  *this = &unk_286C20F50;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::JointLinkModelPredictedPose::operator=(uint64_t a1, const CMMsl::PoseState ***a2)
{
  if (a1 != a2)
  {
    CMMsl::JointLinkModelPredictedPose::JointLinkModelPredictedPose(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::JointLinkModelPredictedPose::~JointLinkModelPredictedPose(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::JointLinkModelPredictedPose *a2, CMMsl::JointLinkModelPredictedPose *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::JointLinkModelPredictedPose::JointLinkModelPredictedPose(void *a1, uint64_t a2)
{
  *a1 = &unk_286C20F50;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C20F50;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::JointLinkModelPredictedPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C20F50;
    v6[1] = v4;
    CMMsl::JointLinkModelPredictedPose::~JointLinkModelPredictedPose(v6);
  }

  return a1;
}

uint64_t CMMsl::JointLinkModelPredictedPose::formatText(CMMsl::JointLinkModelPredictedPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::JointLinkModelPredictedPose::readFrom(CMMsl::JointLinkModelPredictedPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::JointLinkModelPredictedPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::BioMotionPredictedPose *CMMsl::JointLinkModelPredictedPose::hash_value(CMMsl::JointLinkModelPredictedPose *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionPredictedPose::hash_value(result);
  }

  return result;
}

void *CMMsl::JointLinkModelPredictedPose::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::KMVelocityEstimatorState::~KMVelocityEstimatorState(CMMsl::KMVelocityEstimatorState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::KMVelocityEstimatorState::KMVelocityEstimatorState(CMMsl::KMVelocityEstimatorState *this, const CMMsl::KMVelocityEstimatorState *a2)
{
  *this = &unk_286C20F88;
  *(this + 13) = 0;
  v2 = *(a2 + 26);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 26) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 26);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 9);
    v3 |= 0x20u;
    *(this + 26) = v3;
    *(this + 9) = LODWORD(result);
    v2 = *(a2 + 26);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    LODWORD(result) = *(a2 + 10);
    v3 |= 0x40u;
    *(this + 26) = v3;
    *(this + 10) = LODWORD(result);
    v2 = *(a2 + 26);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 26) = v3;
  *(this + 11) = LODWORD(result);
  v2 = *(a2 + 26);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  LODWORD(result) = *(a2 + 6);
  v3 |= 4u;
  *(this + 26) = v3;
  *(this + 6) = LODWORD(result);
  v2 = *(a2 + 26);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  LODWORD(result) = *(a2 + 7);
  v3 |= 8u;
  *(this + 26) = v3;
  *(this + 7) = LODWORD(result);
  v2 = *(a2 + 26);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(result) = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 26) = v3;
  *(this + 8) = LODWORD(result);
  v2 = *(a2 + 26);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 = *(a2 + 48);
  v3 |= 0x100u;
  *(this + 26) = v3;
  *(this + 48) = v5;
  v2 = *(a2 + 26);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = *(a2 + 49);
  v3 |= 0x200u;
  *(this + 26) = v3;
  *(this + 49) = v6;
  v2 = *(a2 + 26);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 2);
    *(this + 26) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_23:
  v7 = *(a2 + 50);
  v3 |= 0x400u;
  *(this + 26) = v3;
  *(this + 50) = v7;
  if ((*(a2 + 26) & 2) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::KMVelocityEstimatorState::operator=(CMMsl *a1, const CMMsl::KMVelocityEstimatorState *a2)
{
  if (a1 != a2)
  {
    CMMsl::KMVelocityEstimatorState::KMVelocityEstimatorState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::KMVelocityEstimatorState *a2, CMMsl::KMVelocityEstimatorState *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LOBYTE(v3) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v3;
  LOBYTE(v3) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v3;
  LOBYTE(v3) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::KMVelocityEstimatorState::KMVelocityEstimatorState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20F88;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::KMVelocityEstimatorState::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::KMVelocityEstimatorState::KMVelocityEstimatorState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KMVelocityEstimatorState::formatText(CMMsl::KMVelocityEstimatorState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 26);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 26);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  v5 = *(this + 26);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "validX");
  v5 = *(this + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "validY");
  v5 = *(this + 26);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "validZ");
  v5 = *(this + 26);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "velocityUncX", *(this + 6));
  v5 = *(this + 26);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "velocityUncY", *(this + 7));
  v5 = *(this + 26);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "velocityUncZ", *(this + 8));
  v5 = *(this + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "velocityX", *(this + 9));
  v5 = *(this + 26);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "velocityY", *(this + 10));
  if ((*(this + 26) & 0x80) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "velocityZ", *(this + 11));
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KMVelocityEstimatorState::readFrom(CMMsl::KMVelocityEstimatorState *this, PB::Reader *a2)
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
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

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

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 26) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_62:
            *(a2 + 24) = 1;
            goto LABEL_74;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_48:
          v2 = *(a2 + 1) + 8;
          goto LABEL_73;
        }

        if (v22 == 2)
        {
          *(this + 26) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 9) = *(*a2 + v2);
LABEL_72:
          v2 = *(a2 + 1) + 4;
LABEL_73:
          *(a2 + 1) = v2;
          goto LABEL_74;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 26) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_62;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_72;
          case 4:
            *(this + 26) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_62;
            }

            *(this + 11) = *(*a2 + v2);
            goto LABEL_72;
          case 5:
            *(this + 26) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_62;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_72;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 26) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v28 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v27 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v28 = v27 != 0;
          }

          *(this + 49) = v28;
          goto LABEL_74;
        case 0xA:
          *(this + 26) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v26 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v25 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v26 = v25 != 0;
          }

          *(this + 50) = v26;
          goto LABEL_74;
        case 0xB:
          *(this + 26) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_48;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 26) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_72;
        case 7:
          *(this + 26) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_62;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_72;
        case 8:
          *(this + 26) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v24 = v23 != 0;
          }

          *(this + 48) = v24;
          goto LABEL_74;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v29 = 0;
      return v29 & 1;
    }

    v2 = *(a2 + 1);
LABEL_74:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v29 = v4 ^ 1;
  return v29 & 1;
}

uint64_t CMMsl::KMVelocityEstimatorState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2);
    if ((*(v3 + 52) & 2) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 52);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::KMVelocityEstimatorState::hash_value(CMMsl::KMVelocityEstimatorState *this)
{
  v1 = *(this + 26);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_30:
    v4 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_31:
    v6 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_32:
    v8 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_33:
    v10 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_34:
    v12 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_35:
    v14 = 0;
    if ((*(this + 26) & 0x100) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_30;
  }

LABEL_3:
  v3 = *(this + 9);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v5 = *(this + 10);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  v7 = *(this + 11);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  v9 = *(this + 6);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_15:
  v11 = *(this + 7);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  v13 = *(this + 8);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((*(this + 26) & 0x100) != 0)
  {
LABEL_21:
    v15 = *(this + 48);
    if ((*(this + 26) & 0x200) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = 0;
  if ((*(this + 26) & 0x200) != 0)
  {
LABEL_22:
    v16 = *(this + 49);
    if ((*(this + 26) & 0x400) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = 0;
  if ((*(this + 26) & 0x400) != 0)
  {
LABEL_23:
    v17 = *(this + 50);
    if ((v1 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    v18 = 0.0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ *&v18;
  }

LABEL_38:
  v17 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_24:
  v18 = *(this + 2);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ *&v18;
}

void CMMsl::KappaActivityPhone::~KappaActivityPhone(CMMsl::KappaActivityPhone *this)
{
  *this = &unk_286C20FC0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::KappaActivityPhone::~KappaActivityPhone(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::KappaActivityPhone *CMMsl::KappaActivityPhone::KappaActivityPhone(CMMsl::KappaActivityPhone *this, const CMMsl::KappaActivityPhone *a2)
{
  *this = &unk_286C20FC0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *(this + 35) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  if (*(a2 + 140))
  {
    v5 = *(a2 + 13);
    *(this + 140) = 1;
    *(this + 13) = v5;
  }

  if (this != a2)
  {
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if ((*(a2 + 140) & 4) != 0)
  {
    v6 = *(a2 + 30);
    *(this + 140) |= 4u;
    *(this + 30) = v6;
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
  }

  if ((*(a2 + 140) & 2) != 0)
  {
    v7 = *(a2 + 14);
    *(this + 140) |= 2u;
    *(this + 14) = v7;
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_25AD287AC(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  v8 = *(a2 + 140);
  if ((v8 & 0x20) != 0)
  {
    v11 = *(a2 + 33);
    *(this + 140) |= 0x20u;
    *(this + 33) = v11;
    v8 = *(a2 + 140);
    if ((v8 & 8) == 0)
    {
LABEL_15:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      v13 = *(a2 + 32);
      *(this + 140) |= 0x10u;
      *(this + 32) = v13;
      if ((*(a2 + 140) & 0x40) == 0)
      {
        return this;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 140) & 8) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(a2 + 31);
  *(this + 140) |= 8u;
  *(this + 31) = v12;
  v8 = *(a2 + 140);
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v8 & 0x40) != 0)
  {
LABEL_17:
    v9 = *(a2 + 34);
    *(this + 140) |= 0x40u;
    *(this + 34) = v9;
  }

  return this;
}

CMMsl *CMMsl::KappaActivityPhone::operator=(CMMsl *a1, const CMMsl::KappaActivityPhone *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaActivityPhone::KappaActivityPhone(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaActivityPhone::~KappaActivityPhone(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaActivityPhone *a2, CMMsl::KappaActivityPhone *a3)
{
  v3 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v10 = *(this + 12);
  v9 = *(this + 13);
  v11 = *(a2 + 13);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = v11;
  *(a2 + 12) = v10;
  *(a2 + 13) = v9;
  v12 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v12;
  v13 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v13;
  v14 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v14;
  v15 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v15;
  v16 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v16;
  v17 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v17;
  v18 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v18;
  v19 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v19;
  v20 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v20;
  v21 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v21;
  result = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = result;
  return result;
}

uint64_t CMMsl::KappaActivityPhone::KappaActivityPhone(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20FC0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 140) = *(a2 + 140);
  *(a2 + 140) = 0;
  *(a1 + 104) = *(a2 + 104);
  sub_25AD28758(a1 + 8, (a2 + 8));
  *(a1 + 120) = *(a2 + 120);
  sub_25AD28758(a1 + 80, (a2 + 80));
  *(a1 + 112) = *(a2 + 112);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 56));
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

CMMsl *CMMsl::KappaActivityPhone::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaActivityPhone::KappaActivityPhone(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaActivityPhone::~KappaActivityPhone(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaActivityPhone::formatText(CMMsl::KappaActivityPhone *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 140) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "armTimeActivityHints");
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "armTimeImuConfidences", v7);
  }

  v8 = *(this + 140);
  if ((v8 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "sessionBtHintPercentage", *(this + 31));
    v8 = *(this + 140);
    if ((v8 & 0x10) == 0)
    {
LABEL_7:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 140) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(a2, "sessionGpsHintPercentage", *(this + 32));
  if ((*(this + 140) & 0x20) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "sessionImuHintPercentage", *(this + 33));
  }

LABEL_9:
  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v9 += 4;
    PB::TextFormatter::format(a2, "sessionSwivelAngleDegHistogram");
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v11 += 4;
    PB::TextFormatter::format(a2, "sessionTiltAngleDegHistogram");
  }

  v13 = *(this + 140);
  if ((v13 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "sessionWifiHintPercentage", *(this + 34));
    v13 = *(this + 140);
    if ((v13 & 1) == 0)
    {
LABEL_15:
      if ((v13 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 140) & 1) == 0)
  {
    goto LABEL_15;
  }

  PB::TextFormatter::format(a2, "timestamp");
  if ((*(this + 140) & 2) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(a2, "triggerTimeLastHighImuDrivingConfidenceTimestamp");
  }

LABEL_17:
  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "windowAfterArmImuConfidences", v16);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaActivityPhone::readFrom(CMMsl::KappaActivityPhone *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = (v7 + v2);
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = v2 + 1;
        while (v18)
        {
          v20 = *v16;
          *(a2 + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v14 += 7;
          ++v16;
          --v18;
          ++v19;
          v92 = v15++ > 8;
          if (v92)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_317;
      }

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
        v92 = v9++ > 8;
        if (v92)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      v21 = v10 & 7;
      if (v21 == 4)
      {
        v4 = 0;
        goto LABEL_317;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        break;
      }

      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 140) |= 1u;
          v51 = *(a2 + 1);
          v50 = *(a2 + 2);
          v52 = *a2;
          if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
          {
            v139 = 0;
            v140 = 0;
            v55 = 0;
            v141 = (v52 + v51);
            v17 = v50 >= v51;
            v142 = v50 - v51;
            if (!v17)
            {
              v142 = 0;
            }

            v143 = v51 + 1;
            while (1)
            {
              if (!v142)
              {
                v55 = 0;
                *(a2 + 24) = 1;
                goto LABEL_257;
              }

              v144 = *v141;
              *(a2 + 1) = v143;
              v55 |= (v144 & 0x7F) << v139;
              if ((v144 & 0x80) == 0)
              {
                break;
              }

              v139 += 7;
              ++v141;
              --v142;
              ++v143;
              v92 = v140++ > 8;
              if (v92)
              {
LABEL_192:
                v55 = 0;
                goto LABEL_257;
              }
            }

            if (*(a2 + 24))
            {
              v55 = 0;
            }
          }

          else
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = (v52 + v51);
            v57 = v51 + 1;
            while (1)
            {
              *(a2 + 1) = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v57;
              v92 = v54++ > 8;
              if (v92)
              {
                goto LABEL_192;
              }
            }
          }

LABEL_257:
          *(this + 13) = v55;
          goto LABEL_313;
        }

        if (v22 != 2)
        {
LABEL_17:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            goto LABEL_319;
          }

          goto LABEL_313;
        }

        if (v21 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_319;
          }

          v34 = *(a2 + 1);
          v35 = *(a2 + 2);
          while (v34 < v35 && (*(a2 + 24) & 1) == 0)
          {
            v37 = *(this + 2);
            v36 = *(this + 3);
            if (v37 >= v36)
            {
              v39 = *(this + 1);
              v40 = v37 - v39;
              v41 = (v37 - v39) >> 2;
              v42 = v41 + 1;
              if ((v41 + 1) >> 62)
              {
                goto LABEL_321;
              }

              v43 = v36 - v39;
              if (v43 >> 1 > v42)
              {
                v42 = v43 >> 1;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v44 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v42;
              }

              if (v44)
              {
                sub_25AD288E8(v44);
              }

              v45 = (v37 - v39) >> 2;
              v46 = (4 * v41);
              v47 = (4 * v41 - 4 * v45);
              *v46 = 0;
              v38 = v46 + 1;
              memcpy(v47, v39, v40);
              v48 = *(this + 1);
              *(this + 1) = v47;
              *(this + 2) = v38;
              *(this + 3) = 0;
              if (v48)
              {
                operator delete(v48);
              }
            }

            else
            {
              *v37 = 0;
              v38 = v37 + 4;
            }

            *(this + 2) = v38;
            v49 = *(a2 + 1);
            if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(a2 + 2))
            {
LABEL_218:
              *(a2 + 24) = 1;
              break;
            }

            *(v38 - 1) = *(*a2 + v49);
            v35 = *(a2 + 2);
            v34 = *(a2 + 1) + 4;
            *(a2 + 1) = v34;
          }

LABEL_219:
          PB::Reader::recallMark();
          goto LABEL_313;
        }

        v146 = *(this + 2);
        v145 = *(this + 3);
        if (v146 >= v145)
        {
          v167 = *(this + 1);
          v168 = v146 - v167;
          v169 = (v146 - v167) >> 2;
          v170 = v169 + 1;
          if ((v169 + 1) >> 62)
          {
            goto LABEL_321;
          }

          v171 = v145 - v167;
          if (v171 >> 1 > v170)
          {
            v170 = v171 >> 1;
          }

          if (v171 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v172 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v172 = v170;
          }

          if (v172)
          {
            sub_25AD288E8(v172);
          }

          v191 = (v146 - v167) >> 2;
          v192 = (4 * v169);
          v193 = (4 * v169 - 4 * v191);
          *v192 = 0;
          v147 = v192 + 1;
          memcpy(v193, v167, v168);
          v194 = *(this + 1);
          *(this + 1) = v193;
          *(this + 2) = v147;
          *(this + 3) = 0;
          if (v194)
          {
            operator delete(v194);
          }
        }

        else
        {
          *v146 = 0;
          v147 = v146 + 4;
        }

        *(this + 2) = v147;
LABEL_270:
        v199 = *(a2 + 1);
        if (v199 > 0xFFFFFFFFFFFFFFFBLL || v199 + 4 > *(a2 + 2))
        {
          goto LABEL_272;
        }

        *(v147 - 1) = *(*a2 + v199);
LABEL_274:
        *(a2 + 1) += 4;
        goto LABEL_313;
      }

      if (v22 == 3)
      {
        *(this + 140) |= 4u;
        v104 = *(a2 + 1);
        v103 = *(a2 + 2);
        v105 = *a2;
        if (v104 > 0xFFFFFFFFFFFFFFF5 || v104 + 10 > v103)
        {
          v159 = 0;
          v160 = 0;
          v108 = 0;
          v161 = (v105 + v104);
          v17 = v103 >= v104;
          v162 = v103 - v104;
          if (!v17)
          {
            v162 = 0;
          }

          v163 = v104 + 1;
          while (1)
          {
            if (!v162)
            {
              LODWORD(v108) = 0;
              *(a2 + 24) = 1;
              goto LABEL_263;
            }

            v164 = *v161;
            *(a2 + 1) = v163;
            v108 |= (v164 & 0x7F) << v159;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v159 += 7;
            ++v161;
            --v162;
            ++v163;
            v92 = v160++ > 8;
            if (v92)
            {
LABEL_214:
              LODWORD(v108) = 0;
              goto LABEL_263;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v108) = 0;
          }
        }

        else
        {
          v106 = 0;
          v107 = 0;
          v108 = 0;
          v109 = (v105 + v104);
          v110 = v104 + 1;
          while (1)
          {
            *(a2 + 1) = v110;
            v111 = *v109++;
            v108 |= (v111 & 0x7F) << v106;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v106 += 7;
            ++v110;
            v92 = v107++ > 8;
            if (v92)
            {
              goto LABEL_214;
            }
          }
        }

LABEL_263:
        *(this + 30) = v108;
        goto LABEL_313;
      }

      if (v22 == 4)
      {
        if (v21 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_319;
          }

          v59 = *(a2 + 1);
          v60 = *(a2 + 2);
          while (v59 < v60 && (*(a2 + 24) & 1) == 0)
          {
            v62 = *(this + 11);
            v61 = *(this + 12);
            if (v62 >= v61)
            {
              v64 = *(this + 10);
              v65 = v62 - v64;
              v66 = (v62 - v64) >> 2;
              v67 = v66 + 1;
              if ((v66 + 1) >> 62)
              {
                goto LABEL_321;
              }

              v68 = v61 - v64;
              if (v68 >> 1 > v67)
              {
                v67 = v68 >> 1;
              }

              if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v69 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v69 = v67;
              }

              if (v69)
              {
                sub_25AD288E8(v69);
              }

              v70 = (v62 - v64) >> 2;
              v71 = (4 * v66);
              v72 = (4 * v66 - 4 * v70);
              *v71 = 0;
              v63 = v71 + 1;
              memcpy(v72, v64, v65);
              v73 = *(this + 10);
              *(this + 10) = v72;
              *(this + 11) = v63;
              *(this + 12) = 0;
              if (v73)
              {
                operator delete(v73);
              }
            }

            else
            {
              *v62 = 0;
              v63 = v62 + 4;
            }

            *(this + 11) = v63;
            v74 = *(a2 + 1);
            if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(a2 + 2))
            {
              goto LABEL_218;
            }

            *(v63 - 1) = *(*a2 + v74);
            v60 = *(a2 + 2);
            v59 = *(a2 + 1) + 4;
            *(a2 + 1) = v59;
          }

          goto LABEL_219;
        }

        v149 = *(this + 11);
        v148 = *(this + 12);
        if (v149 >= v148)
        {
          v173 = *(this + 10);
          v174 = v149 - v173;
          v175 = (v149 - v173) >> 2;
          v176 = v175 + 1;
          if ((v175 + 1) >> 62)
          {
LABEL_321:
            sub_25AAE66B8();
          }

          v177 = v148 - v173;
          if (v177 >> 1 > v176)
          {
            v176 = v177 >> 1;
          }

          if (v177 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v178 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v178 = v176;
          }

          if (v178)
          {
            sub_25AD288E8(v178);
          }

          v195 = (v149 - v173) >> 2;
          v196 = (4 * v175);
          v197 = (4 * v175 - 4 * v195);
          *v196 = 0;
          v147 = v196 + 1;
          memcpy(v197, v173, v174);
          v198 = *(this + 10);
          *(this + 10) = v197;
          *(this + 11) = v147;
          *(this + 12) = 0;
          if (v198)
          {
            operator delete(v198);
          }
        }

        else
        {
          *v149 = 0;
          v147 = v149 + 4;
        }

        *(this + 11) = v147;
        goto LABEL_270;
      }

      if (v22 != 5)
      {
        goto LABEL_17;
      }

      *(this + 140) |= 2u;
      v25 = *(a2 + 1);
      v24 = *(a2 + 2);
      v26 = *a2;
      if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
      {
        v153 = 0;
        v154 = 0;
        v29 = 0;
        v155 = (v26 + v25);
        v17 = v24 >= v25;
        v156 = v24 - v25;
        if (!v17)
        {
          v156 = 0;
        }

        v157 = v25 + 1;
        while (1)
        {
          if (!v156)
          {
            v29 = 0;
            *(a2 + 24) = 1;
            goto LABEL_260;
          }

          v158 = *v155;
          *(a2 + 1) = v157;
          v29 |= (v158 & 0x7F) << v153;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v153 += 7;
          ++v155;
          --v156;
          ++v157;
          v92 = v154++ > 8;
          if (v92)
          {
LABEL_206:
            v29 = 0;
            goto LABEL_260;
          }
        }

        if (*(a2 + 24))
        {
          v29 = 0;
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = (v26 + v25);
        v31 = v25 + 1;
        while (1)
        {
          *(a2 + 1) = v31;
          v32 = *v30++;
          v29 |= (v32 & 0x7F) << v27;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          ++v31;
          v92 = v28++ > 8;
          if (v92)
          {
            goto LABEL_206;
          }
        }
      }

LABEL_260:
      *(this + 14) = v29;
LABEL_313:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_317;
      }
    }

    if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 140) |= 8u;
          v138 = *(a2 + 1);
          if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(a2 + 2))
          {
            goto LABEL_272;
          }

          *(this + 31) = *(*a2 + v138);
          break;
        case 0xA:
          *(this + 140) |= 0x10u;
          v102 = *(a2 + 1);
          if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(a2 + 2))
          {
            goto LABEL_272;
          }

          *(this + 32) = *(*a2 + v102);
          break;
        case 0xB:
          *(this + 140) |= 0x40u;
          v33 = *(a2 + 1);
          if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
          {
LABEL_272:
            *(a2 + 24) = 1;
            goto LABEL_313;
          }

          *(this + 34) = *(*a2 + v33);
          break;
        default:
          goto LABEL_17;
      }

      goto LABEL_274;
    }

    switch(v22)
    {
      case 6:
        if (v21 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_319:
            v237 = 0;
            return v237 & 1;
          }

          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v75 = *(this + 5);
            while (1)
            {
              v112 = *(this + 6);
              if (v75 >= v112)
              {
                v113 = *(this + 4);
                v114 = v75 - v113;
                v115 = (v75 - v113) >> 2;
                v116 = v115 + 1;
                if ((v115 + 1) >> 62)
                {
                  goto LABEL_322;
                }

                v117 = v112 - v113;
                if (v117 >> 1 > v116)
                {
                  v116 = v117 >> 1;
                }

                if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v118 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v118 = v116;
                }

                if (v118)
                {
                  sub_25AD288E8(v118);
                }

                v119 = (v75 - v113) >> 2;
                v120 = (4 * v115);
                v121 = (4 * v115 - 4 * v119);
                *v120 = 0;
                v75 = (v120 + 1);
                memcpy(v121, v113, v114);
                v122 = *(this + 4);
                *(this + 4) = v121;
                *(this + 5) = v75;
                *(this + 6) = 0;
                if (v122)
                {
                  operator delete(v122);
                }
              }

              else
              {
                *v75 = 0;
                v75 += 4;
              }

              *(this + 5) = v75;
              v124 = *(a2 + 1);
              v123 = *(a2 + 2);
              v125 = *a2;
              v126 = 0;
              v127 = 0;
              if (v124 > 0xFFFFFFFFFFFFFFF5 || v124 + 10 > v123)
              {
                break;
              }

              v134 = 0;
              v135 = (v125 + v124);
              v136 = v124 + 1;
              while (1)
              {
                v132 = v136;
                *(a2 + 1) = v136;
                v137 = *v135++;
                v134 |= (v137 & 0x7F) << v126;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v126 += 7;
                ++v136;
                v92 = v127++ > 8;
                if (v92)
                {
                  goto LABEL_176;
                }
              }

LABEL_179:
              *(v75 - 1) = v134;
              if (v132 >= v123 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_219;
              }
            }

            v134 = 0;
            v129 = (v125 + v124);
            v130 = v123 - v124;
            if (v123 < v124)
            {
              v130 = 0;
            }

            v131 = v124 + 1;
            while (v130)
            {
              v132 = v131;
              v133 = *v129;
              *(a2 + 1) = v132;
              v134 |= (v133 & 0x7F) << v126;
              if ((v133 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  LODWORD(v134) = 0;
                }

                goto LABEL_179;
              }

              v126 += 7;
              ++v129;
              --v130;
              v131 = v132 + 1;
              v92 = v127++ > 8;
              if (v92)
              {
LABEL_176:
                LODWORD(v134) = 0;
                goto LABEL_179;
              }
            }

LABEL_217:
            *(a2 + 24) = 1;
            *(v75 - 1) = 0;
          }

          goto LABEL_219;
        }

        v166 = *(this + 5);
        v165 = *(this + 6);
        if (v166 >= v165)
        {
          v185 = *(this + 4);
          v186 = v166 - v185;
          v187 = (v166 - v185) >> 2;
          v188 = v187 + 1;
          if ((v187 + 1) >> 62)
          {
LABEL_322:
            sub_25AAE66B8();
          }

          v189 = v165 - v185;
          if (v189 >> 1 > v188)
          {
            v188 = v189 >> 1;
          }

          if (v189 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v190 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v190 = v188;
          }

          if (v190)
          {
            sub_25AD288E8(v190);
          }

          v219 = (v166 - v185) >> 2;
          v220 = (4 * v187);
          v221 = (4 * v187 - 4 * v219);
          *v220 = 0;
          v152 = v220 + 1;
          memcpy(v221, v185, v186);
          v222 = *(this + 4);
          *(this + 4) = v221;
          *(this + 5) = v152;
          *(this + 6) = 0;
          if (v222)
          {
            operator delete(v222);
          }
        }

        else
        {
          *v166 = 0;
          v152 = v166 + 4;
        }

        *(this + 5) = v152;
        v224 = *(a2 + 1);
        v223 = *(a2 + 2);
        v225 = *a2;
        if (v224 <= 0xFFFFFFFFFFFFFFF5 && v224 + 10 <= v223)
        {
          v226 = 0;
          v227 = 0;
          v209 = 0;
          v228 = (v225 + v224);
          v229 = v224 + 1;
          while (1)
          {
            *(a2 + 1) = v229;
            v230 = *v228++;
            v209 |= (v230 & 0x7F) << v226;
            if ((v230 & 0x80) == 0)
            {
              goto LABEL_312;
            }

            v226 += 7;
            ++v229;
            v92 = v227++ > 8;
            if (v92)
            {
              goto LABEL_308;
            }
          }
        }

        v231 = 0;
        v232 = 0;
        v209 = 0;
        v233 = (v225 + v224);
        v17 = v223 >= v224;
        v234 = v223 - v224;
        if (!v17)
        {
          v234 = 0;
        }

        v235 = v224 + 1;
        while (v234)
        {
          v236 = *v233;
          *(a2 + 1) = v235;
          v209 |= (v236 & 0x7F) << v231;
          if ((v236 & 0x80) == 0)
          {
LABEL_310:
            if (*(a2 + 24))
            {
              LODWORD(v209) = 0;
            }

            goto LABEL_312;
          }

          v231 += 7;
          ++v233;
          --v234;
          ++v235;
          v92 = v232++ > 8;
          if (v92)
          {
LABEL_308:
            LODWORD(v209) = 0;
            goto LABEL_312;
          }
        }

        break;
      case 7:
        if (v21 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_319;
          }

          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v75 = *(this + 8);
            do
            {
              v76 = *(this + 9);
              if (v75 >= v76)
              {
                v77 = *(this + 7);
                v78 = v75 - v77;
                v79 = (v75 - v77) >> 2;
                v80 = v79 + 1;
                if ((v79 + 1) >> 62)
                {
                  goto LABEL_322;
                }

                v81 = v76 - v77;
                if (v81 >> 1 > v80)
                {
                  v80 = v81 >> 1;
                }

                if (v81 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v82 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v82 = v80;
                }

                if (v82)
                {
                  sub_25AD288E8(v82);
                }

                v83 = (v75 - v77) >> 2;
                v84 = (4 * v79);
                v85 = (4 * v79 - 4 * v83);
                *v84 = 0;
                v75 = (v84 + 1);
                memcpy(v85, v77, v78);
                v86 = *(this + 7);
                *(this + 7) = v85;
                *(this + 8) = v75;
                *(this + 9) = 0;
                if (v86)
                {
                  operator delete(v86);
                }
              }

              else
              {
                *v75 = 0;
                v75 += 4;
              }

              *(this + 8) = v75;
              v88 = *(a2 + 1);
              v87 = *(a2 + 2);
              v89 = *a2;
              v90 = 0;
              v91 = 0;
              v92 = v88 > 0xFFFFFFFFFFFFFFF5 || v88 + 10 > v87;
              if (v92)
              {
                v98 = 0;
                v93 = (v89 + v88);
                v94 = v87 - v88;
                if (v87 < v88)
                {
                  v94 = 0;
                }

                v95 = v88 + 1;
                while (1)
                {
                  if (!v94)
                  {
                    goto LABEL_217;
                  }

                  v96 = v95;
                  v97 = *v93;
                  *(a2 + 1) = v96;
                  v98 |= (v97 & 0x7F) << v90;
                  if ((v97 & 0x80) == 0)
                  {
                    break;
                  }

                  v90 += 7;
                  ++v93;
                  --v94;
                  v95 = v96 + 1;
                  v92 = v91++ > 8;
                  if (v92)
                  {
LABEL_127:
                    LODWORD(v98) = 0;
                    goto LABEL_130;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v98) = 0;
                }
              }

              else
              {
                v98 = 0;
                v99 = (v89 + v88);
                v100 = v88 + 1;
                while (1)
                {
                  v96 = v100;
                  *(a2 + 1) = v100;
                  v101 = *v99++;
                  v98 |= (v101 & 0x7F) << v90;
                  if ((v101 & 0x80) == 0)
                  {
                    break;
                  }

                  v90 += 7;
                  ++v100;
                  v92 = v91++ > 8;
                  if (v92)
                  {
                    goto LABEL_127;
                  }
                }
              }

LABEL_130:
              *(v75 - 1) = v98;
            }

            while (v96 < v87 && (*(a2 + 24) & 1) == 0);
          }

          goto LABEL_219;
        }

        v151 = *(this + 8);
        v150 = *(this + 9);
        if (v151 >= v150)
        {
          v179 = *(this + 7);
          v180 = v151 - v179;
          v181 = (v151 - v179) >> 2;
          v182 = v181 + 1;
          if ((v181 + 1) >> 62)
          {
            goto LABEL_322;
          }

          v183 = v150 - v179;
          if (v183 >> 1 > v182)
          {
            v182 = v183 >> 1;
          }

          if (v183 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v184 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v184 = v182;
          }

          if (v184)
          {
            sub_25AD288E8(v184);
          }

          v200 = (v151 - v179) >> 2;
          v201 = (4 * v181);
          v202 = (4 * v181 - 4 * v200);
          *v201 = 0;
          v152 = v201 + 1;
          memcpy(v202, v179, v180);
          v203 = *(this + 7);
          *(this + 7) = v202;
          *(this + 8) = v152;
          *(this + 9) = 0;
          if (v203)
          {
            operator delete(v203);
          }
        }

        else
        {
          *v151 = 0;
          v152 = v151 + 4;
        }

        *(this + 8) = v152;
        v205 = *(a2 + 1);
        v204 = *(a2 + 2);
        v206 = *a2;
        if (v205 <= 0xFFFFFFFFFFFFFFF5 && v205 + 10 <= v204)
        {
          v207 = 0;
          v208 = 0;
          v209 = 0;
          v210 = (v206 + v205);
          v211 = v205 + 1;
          while (1)
          {
            *(a2 + 1) = v211;
            v212 = *v210++;
            v209 |= (v212 & 0x7F) << v207;
            if ((v212 & 0x80) == 0)
            {
              goto LABEL_312;
            }

            v207 += 7;
            ++v211;
            v92 = v208++ > 8;
            if (v92)
            {
              goto LABEL_308;
            }
          }
        }

        v213 = 0;
        v214 = 0;
        v209 = 0;
        v215 = (v206 + v205);
        v17 = v204 >= v205;
        v216 = v204 - v205;
        if (!v17)
        {
          v216 = 0;
        }

        v217 = v205 + 1;
        while (v216)
        {
          v218 = *v215;
          *(a2 + 1) = v217;
          v209 |= (v218 & 0x7F) << v213;
          if ((v218 & 0x80) == 0)
          {
            goto LABEL_310;
          }

          v213 += 7;
          ++v215;
          --v216;
          ++v217;
          v92 = v214++ > 8;
          if (v92)
          {
            goto LABEL_308;
          }
        }

        break;
      case 8:
        *(this + 140) |= 0x20u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
        {
          goto LABEL_272;
        }

        *(this + 33) = *(*a2 + v23);
        goto LABEL_274;
      default:
        goto LABEL_17;
    }

    LODWORD(v209) = 0;
    *(a2 + 24) = 1;
LABEL_312:
    *(v152 - 1) = v209;
    goto LABEL_313;
  }

LABEL_317:
  v237 = v4 ^ 1;
  return v237 & 1;
}

uint64_t CMMsl::KappaActivityPhone::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 140))
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  if ((*(v3 + 140) & 4) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  if ((*(v3 + 140) & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v10 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v12 = *(v3 + 56);
  v13 = *(v3 + 64);
  while (v12 != v13)
  {
    v12 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v14 = *(v3 + 140);
  if ((v14 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 132));
    v14 = *(v3 + 140);
    if ((v14 & 8) == 0)
    {
LABEL_21:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_22;
      }

LABEL_26:
      this = PB::Writer::write(a2, *(v3 + 128));
      if ((*(v3 + 140) & 0x40) == 0)
      {
        return this;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v3 + 140) & 8) == 0)
  {
    goto LABEL_21;
  }

  this = PB::Writer::write(a2, *(v3 + 124));
  v14 = *(v3 + 140);
  if ((v14 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((v14 & 0x40) == 0)
  {
    return this;
  }

LABEL_27:
  v15 = *(v3 + 136);

  return PB::Writer::write(a2, v15);
}

uint64_t CMMsl::KappaActivityPhone::hash_value(CMMsl::KappaActivityPhone *this)
{
  if (*(this + 140))
  {
    v2 = *(this + 13);
  }

  else
  {
    v2 = 0;
  }

  v3 = PBHashBytes();
  if ((*(this + 140) & 4) != 0)
  {
    v4 = *(this + 30);
  }

  else
  {
    v4 = 0;
  }

  v5 = PBHashBytes();
  if ((*(this + 140) & 2) != 0)
  {
    v6 = *(this + 14);
  }

  else
  {
    v6 = 0;
  }

  v7 = PBHashBytes();
  v8 = PBHashBytes();
  if ((*(this + 140) & 0x20) == 0)
  {
    v9 = 0;
    if ((*(this + 140) & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v11 = 0;
    if ((*(this + 140) & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  v16 = *(this + 33);
  v9 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 140) & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v10 = *(this + 31);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((*(this + 140) & 0x10) != 0)
  {
LABEL_15:
    v12 = *(this + 32);
    v13 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v13 = 0;
    }

    if ((*(this + 140) & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v15 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v13 ^ v15;
  }

LABEL_25:
  v13 = 0;
  if ((*(this + 140) & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v14 = *(this + 34);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v13 ^ v15;
}

void CMMsl::KappaActivityWatch::~KappaActivityWatch(CMMsl::KappaActivityWatch *this)
{
  *this = &unk_286C20FF8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::KappaActivityWatch::~KappaActivityWatch(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::KappaActivityWatch *CMMsl::KappaActivityWatch::KappaActivityWatch(CMMsl::KappaActivityWatch *this, const CMMsl::KappaActivityWatch *a2)
{
  *this = &unk_286C20FF8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 26) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 52))
  {
    v5 = *(a2 + 7);
    *(this + 52) = 1;
    *(this + 7) = v5;
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v6 = *(a2 + 52);
  if ((v6 & 0x100) != 0)
  {
    v12 = *(a2 + 25);
    *(this + 52) |= 0x100u;
    *(this + 25) = v12;
    v6 = *(a2 + 52);
    if ((v6 & 0x40) == 0)
    {
LABEL_7:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 23);
  *(this + 52) |= 0x40u;
  *(this + 23) = v13;
  v6 = *(a2 + 52);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = *(a2 + 24);
  *(this + 52) |= 0x80u;
  *(this + 24) = v14;
  v6 = *(a2 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = *(a2 + 22);
  *(this + 52) |= 0x20u;
  *(this + 22) = v15;
  v6 = *(a2 + 52);
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v16 = *(a2 + 8);
  *(this + 52) |= 2u;
  *(this + 8) = v16;
  if ((*(a2 + 52) & 4) != 0)
  {
LABEL_11:
    v7 = *(a2 + 9);
    *(this + 52) |= 4u;
    *(this + 9) = v7;
  }

LABEL_12:
  if (this != a2)
  {
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v8 = *(a2 + 52);
  if ((v8 & 0x10) != 0)
  {
    v9 = *(a2 + 21);
    *(this + 52) |= 0x10u;
    *(this + 21) = v9;
    v8 = *(a2 + 52);
  }

  if ((v8 & 8) != 0)
  {
    v10 = *(a2 + 20);
    *(this + 52) |= 8u;
    *(this + 20) = v10;
  }

  return this;
}

CMMsl *CMMsl::KappaActivityWatch::operator=(CMMsl *a1, const CMMsl::KappaActivityWatch *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaActivityWatch::KappaActivityWatch(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaActivityWatch::~KappaActivityWatch(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaActivityWatch *a2, CMMsl::KappaActivityWatch *a3)
{
  v3 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v7 = *(this + 6);
  v6 = *(this + 7);
  v8 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v8;
  *(a2 + 6) = v7;
  *(a2 + 7) = v6;
  v9 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v9;
  v10 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v10;
  v11 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  LODWORD(v6) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v6;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v13;
  v14 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v14;
  v15 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v15;
  v16 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v16;
  v17 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v17;
  result = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = result;
  return result;
}

uint64_t CMMsl::KappaActivityWatch::KappaActivityWatch(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20FF8;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 56) = *(a2 + 56);
  sub_25AD28758(a1 + 32, (a2 + 32));
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

CMMsl *CMMsl::KappaActivityWatch::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaActivityWatch::KappaActivityWatch(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaActivityWatch::~KappaActivityWatch(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaActivityWatch::formatText(CMMsl::KappaActivityWatch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "sessionGreenFieldPercentage", *(this + 20));
    v5 = *(this + 52);
  }

  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "sessionHighRotationPercentage", *(this + 21));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v6 += 4;
    PB::TextFormatter::format(a2, "sessionMeanPoseAngleXHistogram");
  }

  v8 = *(this + 52);
  if (v8)
  {
    PB::TextFormatter::format(a2, "timestamp");
    v8 = *(this + 52);
    if ((v8 & 0x20) == 0)
    {
LABEL_9:
      if ((v8 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(a2, "triggerTimeInternalDrivingState");
  v8 = *(this + 52);
  if ((v8 & 2) == 0)
  {
LABEL_10:
    if ((v8 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "triggerTimeLastHighElevationGainTimestamp");
  v8 = *(this + 52);
  if ((v8 & 4) == 0)
  {
LABEL_11:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "triggerTimeLastHighImuDrivingConfidenceTimestamp");
  v8 = *(this + 52);
  if ((v8 & 0x40) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "windowAfterArmGreenFieldPercentage", *(this + 23));
  v8 = *(this + 52);
  if ((v8 & 0x80) == 0)
  {
LABEL_13:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "windowAfterArmHighImuDrivingConfidencePercentage", *(this + 24));
  if ((*(this + 52) & 0x100) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "windowAfterArmHighRotationPercentage", *(this + 25));
  }

LABEL_15:
  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v9 += 4;
    PB::TextFormatter::format(a2, "windowAfterArmMeanPoseAngleXHistogram");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaActivityWatch::readFrom(CMMsl::KappaActivityWatch *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = (v7 + v2);
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = v2 + 1;
        while (v18)
        {
          v20 = *v16;
          *(a2 + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v14 += 7;
          ++v16;
          --v18;
          ++v19;
          v51 = v15++ > 8;
          if (v51)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_269;
      }

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
        v51 = v9++ > 8;
        if (v51)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      v21 = v10 & 7;
      if (v21 == 4)
      {
        v4 = 0;
        goto LABEL_269;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        break;
      }

      if (v22 > 8)
      {
        if (v22 != 9)
        {
          if (v22 == 10)
          {
            *(this + 52) |= 0x10u;
            v80 = *(a2 + 1);
            if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(a2 + 2))
            {
              goto LABEL_108;
            }

            *(this + 21) = *(*a2 + v80);
          }

          else
          {
            if (v22 != 11)
            {
              goto LABEL_17;
            }

            *(this + 52) |= 8u;
            v33 = *(a2 + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
            {
LABEL_108:
              *(a2 + 24) = 1;
              goto LABEL_265;
            }

            *(this + 20) = *(*a2 + v33);
          }

          goto LABEL_202;
        }

        if (v21 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_271:
            v195 = 0;
            return v195 & 1;
          }

          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v34 = *(this + 2);
            do
            {
              v91 = *(this + 3);
              if (v34 >= v91)
              {
                v92 = *(this + 1);
                v93 = v34 - v92;
                v94 = (v34 - v92) >> 2;
                v95 = v94 + 1;
                if ((v94 + 1) >> 62)
                {
                  goto LABEL_273;
                }

                v96 = v91 - v92;
                if (v96 >> 1 > v95)
                {
                  v95 = v96 >> 1;
                }

                if (v96 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v97 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v97 = v95;
                }

                if (v97)
                {
                  sub_25AD288E8(v97);
                }

                v98 = (v34 - v92) >> 2;
                v99 = (4 * v94);
                v100 = (4 * v94 - 4 * v98);
                *v99 = 0;
                v34 = (v99 + 1);
                memcpy(v100, v92, v93);
                v101 = *(this + 1);
                *(this + 1) = v100;
                *(this + 2) = v34;
                *(this + 3) = 0;
                if (v101)
                {
                  operator delete(v101);
                }
              }

              else
              {
                *v34 = 0;
                v34 += 4;
              }

              *(this + 2) = v34;
              v103 = *(a2 + 1);
              v102 = *(a2 + 2);
              v104 = *a2;
              v105 = 0;
              v106 = 0;
              if (v103 > 0xFFFFFFFFFFFFFFF5 || v103 + 10 > v102)
              {
                v113 = 0;
                v108 = (v104 + v103);
                v109 = v102 - v103;
                if (v102 < v103)
                {
                  v109 = 0;
                }

                v110 = v103 + 1;
                while (1)
                {
                  if (!v109)
                  {
                    goto LABEL_191;
                  }

                  v111 = v110;
                  v112 = *v108;
                  *(a2 + 1) = v111;
                  v113 |= (v112 & 0x7F) << v105;
                  if ((v112 & 0x80) == 0)
                  {
                    break;
                  }

                  v105 += 7;
                  ++v108;
                  --v109;
                  v110 = v111 + 1;
                  v51 = v106++ > 8;
                  if (v51)
                  {
LABEL_149:
                    LODWORD(v113) = 0;
                    goto LABEL_152;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v113) = 0;
                }
              }

              else
              {
                v113 = 0;
                v114 = (v104 + v103);
                v115 = v103 + 1;
                while (1)
                {
                  v111 = v115;
                  *(a2 + 1) = v115;
                  v116 = *v114++;
                  v113 |= (v116 & 0x7F) << v105;
                  if ((v116 & 0x80) == 0)
                  {
                    break;
                  }

                  v105 += 7;
                  ++v115;
                  v51 = v106++ > 8;
                  if (v51)
                  {
                    goto LABEL_149;
                  }
                }
              }

LABEL_152:
              *(v34 - 1) = v113;
            }

            while (v111 < v102 && (*(a2 + 24) & 1) == 0);
          }

          goto LABEL_192;
        }

        v145 = *(this + 2);
        v144 = *(this + 3);
        if (v145 >= v144)
        {
          v152 = *(this + 1);
          v153 = v145 - v152;
          v154 = (v145 - v152) >> 2;
          v155 = v154 + 1;
          if ((v154 + 1) >> 62)
          {
LABEL_273:
            sub_25AAE66B8();
          }

          v156 = v144 - v152;
          if (v156 >> 1 > v155)
          {
            v155 = v156 >> 1;
          }

          if (v156 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v157 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v157 = v155;
          }

          if (v157)
          {
            sub_25AD288E8(v157);
          }

          v177 = (v145 - v152) >> 2;
          v178 = (4 * v154);
          v179 = (4 * v154 - 4 * v177);
          *v178 = 0;
          v125 = v178 + 1;
          memcpy(v179, v152, v153);
          v180 = *(this + 1);
          *(this + 1) = v179;
          *(this + 2) = v125;
          *(this + 3) = 0;
          if (v180)
          {
            operator delete(v180);
          }
        }

        else
        {
          *v145 = 0;
          v125 = v145 + 4;
        }

        *(this + 2) = v125;
        v182 = *(a2 + 1);
        v181 = *(a2 + 2);
        v183 = *a2;
        if (v182 <= 0xFFFFFFFFFFFFFFF5 && v182 + 10 <= v181)
        {
          v184 = 0;
          v185 = 0;
          v167 = 0;
          v186 = (v183 + v182);
          v187 = v182 + 1;
          while (1)
          {
            *(a2 + 1) = v187;
            v188 = *v186++;
            v167 |= (v188 & 0x7F) << v184;
            if ((v188 & 0x80) == 0)
            {
              goto LABEL_264;
            }

            v184 += 7;
            ++v187;
            v51 = v185++ > 8;
            if (v51)
            {
              goto LABEL_260;
            }
          }
        }

        v189 = 0;
        v190 = 0;
        v167 = 0;
        v191 = (v183 + v182);
        v17 = v181 >= v182;
        v192 = v181 - v182;
        if (!v17)
        {
          v192 = 0;
        }

        v193 = v182 + 1;
        while (v192)
        {
          v194 = *v191;
          *(a2 + 1) = v193;
          v167 |= (v194 & 0x7F) << v189;
          if ((v194 & 0x80) == 0)
          {
            goto LABEL_262;
          }

          v189 += 7;
          ++v191;
          --v192;
          ++v193;
          v51 = v190++ > 8;
          if (v51)
          {
            goto LABEL_260;
          }
        }

LABEL_261:
        LODWORD(v167) = 0;
        *(a2 + 24) = 1;
LABEL_264:
        *(v125 - 1) = v167;
        goto LABEL_265;
      }

      switch(v22)
      {
        case 6:
          *(this + 52) |= 0x20u;
          v83 = *(a2 + 1);
          v82 = *(a2 + 2);
          v84 = *a2;
          if (v83 > 0xFFFFFFFFFFFFFFF5 || v83 + 10 > v82)
          {
            v138 = 0;
            v139 = 0;
            v87 = 0;
            v140 = (v84 + v83);
            v17 = v82 >= v83;
            v141 = v82 - v83;
            if (!v17)
            {
              v141 = 0;
            }

            v142 = v83 + 1;
            while (1)
            {
              if (!v141)
              {
                LODWORD(v87) = 0;
                *(a2 + 24) = 1;
                goto LABEL_226;
              }

              v143 = *v140;
              *(a2 + 1) = v142;
              v87 |= (v143 & 0x7F) << v138;
              if ((v143 & 0x80) == 0)
              {
                break;
              }

              v138 += 7;
              ++v140;
              --v141;
              ++v142;
              v51 = v139++ > 8;
              if (v51)
              {
LABEL_188:
                LODWORD(v87) = 0;
                goto LABEL_226;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v87) = 0;
            }
          }

          else
          {
            v85 = 0;
            v86 = 0;
            v87 = 0;
            v88 = (v84 + v83);
            v89 = v83 + 1;
            while (1)
            {
              *(a2 + 1) = v89;
              v90 = *v88++;
              v87 |= (v90 & 0x7F) << v85;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              ++v89;
              v51 = v86++ > 8;
              if (v51)
              {
                goto LABEL_188;
              }
            }
          }

LABEL_226:
          *(this + 22) = v87;
          break;
        case 7:
          *(this + 52) |= 2u;
          v72 = *(a2 + 1);
          v71 = *(a2 + 2);
          v73 = *a2;
          if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v71)
          {
            v126 = 0;
            v127 = 0;
            v76 = 0;
            v128 = (v73 + v72);
            v17 = v71 >= v72;
            v129 = v71 - v72;
            if (!v17)
            {
              v129 = 0;
            }

            v130 = v72 + 1;
            while (1)
            {
              if (!v129)
              {
                v76 = 0;
                *(a2 + 24) = 1;
                goto LABEL_220;
              }

              v131 = *v128;
              *(a2 + 1) = v130;
              v76 |= (v131 & 0x7F) << v126;
              if ((v131 & 0x80) == 0)
              {
                break;
              }

              v126 += 7;
              ++v128;
              --v129;
              ++v130;
              v51 = v127++ > 8;
              if (v51)
              {
LABEL_172:
                v76 = 0;
                goto LABEL_220;
              }
            }

            if (*(a2 + 24))
            {
              v76 = 0;
            }
          }

          else
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = (v73 + v72);
            v78 = v72 + 1;
            while (1)
            {
              *(a2 + 1) = v78;
              v79 = *v77++;
              v76 |= (v79 & 0x7F) << v74;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              ++v78;
              v51 = v75++ > 8;
              if (v51)
              {
                goto LABEL_172;
              }
            }
          }

LABEL_220:
          *(this + 8) = v76;
          break;
        case 8:
          *(this + 52) |= 4u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v132 = 0;
            v133 = 0;
            v28 = 0;
            v134 = (v25 + v24);
            v17 = v23 >= v24;
            v135 = v23 - v24;
            if (!v17)
            {
              v135 = 0;
            }

            v136 = v24 + 1;
            while (1)
            {
              if (!v135)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_223;
              }

              v137 = *v134;
              *(a2 + 1) = v136;
              v28 |= (v137 & 0x7F) << v132;
              if ((v137 & 0x80) == 0)
              {
                break;
              }

              v132 += 7;
              ++v134;
              --v135;
              ++v136;
              v51 = v133++ > 8;
              if (v51)
              {
LABEL_180:
                v28 = 0;
                goto LABEL_223;
              }
            }

            if (*(a2 + 24))
            {
              v28 = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v51 = v27++ > 8;
              if (v51)
              {
                goto LABEL_180;
              }
            }
          }

LABEL_223:
          *(this + 9) = v28;
          break;
        default:
          goto LABEL_17;
      }

LABEL_265:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_269;
      }
    }

    if (v22 > 2)
    {
      switch(v22)
      {
        case 3:
          *(this + 52) |= 0x100u;
          v81 = *(a2 + 1);
          if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 25) = *(*a2 + v81);
          break;
        case 4:
          *(this + 52) |= 0x40u;
          v70 = *(a2 + 1);
          if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 23) = *(*a2 + v70);
          break;
        case 5:
          *(this + 52) |= 0x80u;
          v32 = *(a2 + 1);
          if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(a2 + 2))
          {
            goto LABEL_108;
          }

          *(this + 24) = *(*a2 + v32);
          break;
        default:
          goto LABEL_17;
      }

LABEL_202:
      *(a2 + 1) += 4;
      goto LABEL_265;
    }

    if (v22 == 1)
    {
      *(this + 52) |= 1u;
      v62 = *(a2 + 1);
      v61 = *(a2 + 2);
      v63 = *a2;
      if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v61)
      {
        v117 = 0;
        v118 = 0;
        v66 = 0;
        v119 = (v63 + v62);
        v17 = v61 >= v62;
        v120 = v61 - v62;
        if (!v17)
        {
          v120 = 0;
        }

        v121 = v62 + 1;
        while (1)
        {
          if (!v120)
          {
            v66 = 0;
            *(a2 + 24) = 1;
            goto LABEL_217;
          }

          v122 = *v119;
          *(a2 + 1) = v121;
          v66 |= (v122 & 0x7F) << v117;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          ++v119;
          --v120;
          ++v121;
          v51 = v118++ > 8;
          if (v51)
          {
LABEL_162:
            v66 = 0;
            goto LABEL_217;
          }
        }

        if (*(a2 + 24))
        {
          v66 = 0;
        }
      }

      else
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v67 = (v63 + v62);
        v68 = v62 + 1;
        while (1)
        {
          *(a2 + 1) = v68;
          v69 = *v67++;
          v66 |= (v69 & 0x7F) << v64;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          ++v68;
          v51 = v65++ > 8;
          if (v51)
          {
            goto LABEL_162;
          }
        }
      }

LABEL_217:
      *(this + 7) = v66;
      goto LABEL_265;
    }

    if (v22 != 2)
    {
LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        goto LABEL_271;
      }

      goto LABEL_265;
    }

    if (v21 == 2)
    {
      if (PB::Reader::placeMark())
      {
        goto LABEL_271;
      }

      if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
      {
        v34 = *(this + 5);
        while (1)
        {
          v35 = *(this + 6);
          if (v34 >= v35)
          {
            v36 = *(this + 4);
            v37 = v34 - v36;
            v38 = (v34 - v36) >> 2;
            v39 = v38 + 1;
            if ((v38 + 1) >> 62)
            {
              goto LABEL_273;
            }

            v40 = v35 - v36;
            if (v40 >> 1 > v39)
            {
              v39 = v40 >> 1;
            }

            if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v41 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v39;
            }

            if (v41)
            {
              sub_25AD288E8(v41);
            }

            v42 = (v34 - v36) >> 2;
            v43 = (4 * v38);
            v44 = (4 * v38 - 4 * v42);
            *v43 = 0;
            v34 = (v43 + 1);
            memcpy(v44, v36, v37);
            v45 = *(this + 4);
            *(this + 4) = v44;
            *(this + 5) = v34;
            *(this + 6) = 0;
            if (v45)
            {
              operator delete(v45);
            }
          }

          else
          {
            *v34 = 0;
            v34 += 4;
          }

          *(this + 5) = v34;
          v47 = *(a2 + 1);
          v46 = *(a2 + 2);
          v48 = *a2;
          v49 = 0;
          v50 = 0;
          v51 = v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v46;
          if (v51)
          {
            break;
          }

          v57 = 0;
          v58 = (v48 + v47);
          v59 = v47 + 1;
          while (1)
          {
            v55 = v59;
            *(a2 + 1) = v59;
            v60 = *v58++;
            v57 |= (v60 & 0x7F) << v49;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            ++v59;
            v51 = v50++ > 8;
            if (v51)
            {
              goto LABEL_80;
            }
          }

LABEL_83:
          *(v34 - 1) = v57;
          if (v55 >= v46 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_192;
          }
        }

        v57 = 0;
        v52 = (v48 + v47);
        v53 = v46 - v47;
        if (v46 < v47)
        {
          v53 = 0;
        }

        v54 = v47 + 1;
        while (v53)
        {
          v55 = v54;
          v56 = *v52;
          *(a2 + 1) = v55;
          v57 |= (v56 & 0x7F) << v49;
          if ((v56 & 0x80) == 0)
          {
            if (*(a2 + 24))
            {
              LODWORD(v57) = 0;
            }

            goto LABEL_83;
          }

          v49 += 7;
          ++v52;
          --v53;
          v54 = v55 + 1;
          v51 = v50++ > 8;
          if (v51)
          {
LABEL_80:
            LODWORD(v57) = 0;
            goto LABEL_83;
          }
        }

LABEL_191:
        *(a2 + 24) = 1;
        *(v34 - 1) = 0;
      }

LABEL_192:
      PB::Reader::recallMark();
      goto LABEL_265;
    }

    v124 = *(this + 5);
    v123 = *(this + 6);
    if (v124 >= v123)
    {
      v146 = *(this + 4);
      v147 = v124 - v146;
      v148 = (v124 - v146) >> 2;
      v149 = v148 + 1;
      if ((v148 + 1) >> 62)
      {
        goto LABEL_273;
      }

      v150 = v123 - v146;
      if (v150 >> 1 > v149)
      {
        v149 = v150 >> 1;
      }

      if (v150 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v151 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v151 = v149;
      }

      if (v151)
      {
        sub_25AD288E8(v151);
      }

      v158 = (v124 - v146) >> 2;
      v159 = (4 * v148);
      v160 = (4 * v148 - 4 * v158);
      *v159 = 0;
      v125 = v159 + 1;
      memcpy(v160, v146, v147);
      v161 = *(this + 4);
      *(this + 4) = v160;
      *(this + 5) = v125;
      *(this + 6) = 0;
      if (v161)
      {
        operator delete(v161);
      }
    }

    else
    {
      *v124 = 0;
      v125 = v124 + 4;
    }

    *(this + 5) = v125;
    v163 = *(a2 + 1);
    v162 = *(a2 + 2);
    v164 = *a2;
    if (v163 <= 0xFFFFFFFFFFFFFFF5 && v163 + 10 <= v162)
    {
      v165 = 0;
      v166 = 0;
      v167 = 0;
      v168 = (v164 + v163);
      v169 = v163 + 1;
      while (1)
      {
        *(a2 + 1) = v169;
        v170 = *v168++;
        v167 |= (v170 & 0x7F) << v165;
        if ((v170 & 0x80) == 0)
        {
          goto LABEL_264;
        }

        v165 += 7;
        ++v169;
        v51 = v166++ > 8;
        if (v51)
        {
          goto LABEL_260;
        }
      }
    }

    v171 = 0;
    v172 = 0;
    v167 = 0;
    v173 = (v164 + v163);
    v17 = v162 >= v163;
    v174 = v162 - v163;
    if (!v17)
    {
      v174 = 0;
    }

    v175 = v163 + 1;
    while (v174)
    {
      v176 = *v173;
      *(a2 + 1) = v175;
      v167 |= (v176 & 0x7F) << v171;
      if ((v176 & 0x80) == 0)
      {
LABEL_262:
        if (*(a2 + 24))
        {
          LODWORD(v167) = 0;
        }

        goto LABEL_264;
      }

      v171 += 7;
      ++v173;
      --v174;
      ++v175;
      v51 = v172++ > 8;
      if (v51)
      {
LABEL_260:
        LODWORD(v167) = 0;
        goto LABEL_264;
      }
    }

    goto LABEL_261;
  }

LABEL_269:
  v195 = v4 ^ 1;
  return v195 & 1;
}