@interface CABTRunData
- (CABTRunData)init;
- (void)error:(id)error;
- (void)firstPose:(id)pose;
- (void)firstRssiMeasurement:(id)measurement;
- (void)invalidPose:(id)pose;
- (void)logData;
- (void)motion:(id)motion;
- (void)proximityLevelFound:(id)found;
- (void)proximityLevelRevoked:(id)revoked;
@end

@implementation CABTRunData

- (CABTRunData)init
{
  v11.receiver = self;
  v11.super_class = CABTRunData;
  v2 = [(CABTRunData *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfMotionEvents:v3];

    v4 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfProximityLevelFoundEvents:v4];

    v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfProximityLevelRevokedEvents:v5];

    v6 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfInvalidPoseEvents:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfErrorEvents:v7];

    v8 = os_log_create("com.apple.proximity", "btlocalizer_CABTRunData");
    logger = v2->_logger;
    v2->_logger = v8;
  }

  return v2;
}

- (void)motion:(id)motion
{
  v4 = MEMORY[0x277CCABB0];
  numberOfMotionEvents = [(CABTRunData *)self numberOfMotionEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(numberOfMotionEvents, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfMotionEvents:v5];
}

- (void)proximityLevelFound:(id)found
{
  foundCopy = found;
  firstProximityLevelFoundEvent = [(CABTRunData *)self firstProximityLevelFoundEvent];

  if (!firstProximityLevelFoundEvent)
  {
    [(CABTRunData *)self setFirstProximityLevelFoundEvent:foundCopy];
  }

  v5 = MEMORY[0x277CCABB0];
  numberOfProximityLevelFoundEvents = [(CABTRunData *)self numberOfProximityLevelFoundEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(numberOfProximityLevelFoundEvents, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfProximityLevelFoundEvents:v7];
}

- (void)proximityLevelRevoked:(id)revoked
{
  v4 = MEMORY[0x277CCABB0];
  numberOfProximityLevelRevokedEvents = [(CABTRunData *)self numberOfProximityLevelRevokedEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(numberOfProximityLevelRevokedEvents, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfProximityLevelRevokedEvents:v5];
}

- (void)firstPose:(id)pose
{
  poseCopy = pose;
  firstPoseEvent = [(CABTRunData *)self firstPoseEvent];

  if (!firstPoseEvent)
  {
    [(CABTRunData *)self setFirstPoseEvent:poseCopy];
  }
}

- (void)firstRssiMeasurement:(id)measurement
{
  measurementCopy = measurement;
  firstRssiEvent = [(CABTRunData *)self firstRssiEvent];

  if (!firstRssiEvent)
  {
    [(CABTRunData *)self setFirstRssiEvent:measurementCopy];
  }
}

- (void)invalidPose:(id)pose
{
  v4 = MEMORY[0x277CCABB0];
  numberOfInvalidPoseEvents = [(CABTRunData *)self numberOfInvalidPoseEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(numberOfInvalidPoseEvents, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfInvalidPoseEvents:v5];
}

- (void)error:(id)error
{
  v17[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277CCABB0];
  numberOfErrorEvents = [(CABTRunData *)self numberOfErrorEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(numberOfErrorEvents, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfErrorEvents:v7];

  v16[0] = @"status";
  v8 = [errorCopy objectForKeyedSubscript:?];
  v16[1] = @"errorDescription";
  v17[0] = v8;
  v9 = [errorCopy objectForKeyedSubscript:?];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
  productUUID = [(CABTRunData *)self productUUID];
  LOBYTE(v9) = productUUID == 0;

  if ((v9 & 1) == 0)
  {
    productUUID2 = [(CABTRunData *)self productUUID];
    uUIDString = [productUUID2 UUIDString];
    [v11 setObject:uUIDString forKeyedSubscript:@"ProductUUID"];
  }

  v15 = v11;
  AnalyticsSendEventLazy();
}

- (void)logData
{
  v81[15] = *MEMORY[0x277D85DE8];
  startEvent = [(CABTRunData *)self startEvent];
  if (startEvent)
  {
    stopEvent = [(CABTRunData *)self stopEvent];

    if (stopEvent)
    {
      startEvent2 = [(CABTRunData *)self startEvent];
      v6 = [startEvent2 objectForKeyedSubscript:@"timeElapsed"];
      [v6 doubleValue];
      v8 = v7;

      stopEvent2 = [(CABTRunData *)self stopEvent];
      v10 = [stopEvent2 objectForKeyedSubscript:@"timeElapsed"];
      [v10 doubleValue];
      v76 = v11;

      firstRssiEvent = [(CABTRunData *)self firstRssiEvent];

      if (firstRssiEvent)
      {
        firstRssiEvent2 = [(CABTRunData *)self firstRssiEvent];
        v14 = [firstRssiEvent2 objectForKeyedSubscript:@"btRssiEstimate"];
        [v14 doubleValue];
        v75 = v15;

        firstRssiEvent3 = [(CABTRunData *)self firstRssiEvent];
        v17 = [firstRssiEvent3 objectForKeyedSubscript:@"timeElapsed"];
        [v17 doubleValue];
        v19 = v18 - v8;
      }

      else
      {
        v19 = -1.0;
        v75 = -200.0;
      }

      firstPoseEvent = [(CABTRunData *)self firstPoseEvent];

      if (firstPoseEvent)
      {
        firstPoseEvent2 = [(CABTRunData *)self firstPoseEvent];
        v22 = [firstPoseEvent2 objectForKeyedSubscript:@"timeElapsed"];
        [v22 doubleValue];
        v24 = v23 - v8;
      }

      else
      {
        v24 = -1.0;
      }

      armsReachEvent = [(CABTRunData *)self armsReachEvent];

      if (armsReachEvent)
      {
        armsReachEvent2 = [(CABTRunData *)self armsReachEvent];
        v27 = [armsReachEvent2 objectForKeyedSubscript:@"timeElapsed"];
        [v27 doubleValue];
        v29 = v28;

        armsReachEvent3 = [(CABTRunData *)self armsReachEvent];
        v31 = [armsReachEvent3 objectForKeyedSubscript:@"traveledDistance"];
        [v31 doubleValue];
        v33 = v32;
        startEvent3 = [(CABTRunData *)self startEvent];
        v35 = [startEvent3 objectForKeyedSubscript:@"traveledDistance"];
        [v35 doubleValue];
        v37 = v36;

        armsReachEvent4 = [(CABTRunData *)self armsReachEvent];
        v39 = [armsReachEvent4 objectForKeyedSubscript:@"straightLineDistance"];
        [v39 doubleValue];
        v41 = v40;
        v42 = v29 - v8;
        v43 = v33 - v37;
      }

      else
      {
        v42 = -1.0;
        v43 = -1.0;
        v41 = -1.0;
      }

      stopEvent3 = [(CABTRunData *)self stopEvent];
      v45 = [stopEvent3 objectForKeyedSubscript:@"traveledDistance"];
      [v45 doubleValue];
      v47 = v46;
      startEvent4 = [(CABTRunData *)self startEvent];
      v49 = [startEvent4 objectForKeyedSubscript:@"traveledDistance"];
      [v49 doubleValue];
      v51 = v50;

      v52 = MEMORY[0x277CBEB38];
      v80[0] = @"NumberOfMotionEvents";
      numberOfMotionEvents = [(CABTRunData *)self numberOfMotionEvents];
      v81[0] = numberOfMotionEvents;
      v80[1] = @"NumberOfLevelFoundEvents";
      numberOfProximityLevelFoundEvents = [(CABTRunData *)self numberOfProximityLevelFoundEvents];
      v81[1] = numberOfProximityLevelFoundEvents;
      v80[2] = @"NumberOfRevokes";
      numberOfProximityLevelRevokedEvents = [(CABTRunData *)self numberOfProximityLevelRevokedEvents];
      v81[2] = numberOfProximityLevelRevokedEvents;
      v80[3] = @"NumberOfInvalidPoseEvents";
      numberOfInvalidPoseEvents = [(CABTRunData *)self numberOfInvalidPoseEvents];
      v81[3] = numberOfInvalidPoseEvents;
      v80[4] = @"NumberOfErrorEvents";
      numberOfErrorEvents = [(CABTRunData *)self numberOfErrorEvents];
      v81[4] = numberOfErrorEvents;
      v80[5] = @"TimeToFirstMeasurement";
      v70 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
      v81[5] = v70;
      v80[6] = @"TimeToFirstPose";
      v69 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
      v81[6] = v69;
      v80[7] = @"TimeToArmsReach";
      v53 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
      v54 = v76 - v8;
      v77 = v53;
      v81[7] = v53;
      v80[8] = @"RunDuration";
      v68 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
      v81[8] = v68;
      v80[9] = @"FirstRSSI";
      v55 = [MEMORY[0x277CCABB0] numberWithDouble:v75];
      v81[9] = v55;
      v80[10] = @"FinalRSSI";
      stopEvent4 = [(CABTRunData *)self stopEvent];
      v57 = [stopEvent4 objectForKeyedSubscript:@"btRssiEstimate"];
      v81[10] = v57;
      v80[11] = @"EnteredArmsReach";
      v58 = [MEMORY[0x277CCABB0] numberWithBool:armsReachEvent != 0];
      v81[11] = v58;
      v80[12] = @"TotalDistanceMoved";
      v59 = [MEMORY[0x277CCABB0] numberWithDouble:v47 - v51];
      v60 = v52;
      v81[12] = v59;
      v80[13] = @"DistanceMovedToArmsReach";
      v61 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
      v81[13] = v61;
      v80[14] = @"StraightLineDistanceToArmsReach";
      v62 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
      v81[14] = v62;
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:15];
      v64 = [v60 dictionaryWithDictionary:v63];

      productUUID = [(CABTRunData *)self productUUID];
      LOBYTE(v63) = productUUID == 0;

      if ((v63 & 1) == 0)
      {
        productUUID2 = [(CABTRunData *)self productUUID];
        uUIDString = [productUUID2 UUIDString];
        [v64 setObject:uUIDString forKeyedSubscript:@"ProductUUID"];
      }

      v79 = v64;
      AnalyticsSendEventLazy();
    }
  }
}

@end