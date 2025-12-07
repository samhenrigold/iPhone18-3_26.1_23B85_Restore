@interface ATXModeTransitionMetric
- (ATXModeTransitionMetric)initWithPreviousModeSemanticType:(id)type previousModeDuration:(double)duration previousModeHadScheduledExit:(BOOL)exit exitReason:(id)reason enterReason:(id)enterReason transitionDeviceType:(id)deviceType transitionSource:(id)source nextModeSemanticType:(id)self0;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation ATXModeTransitionMetric

- (ATXModeTransitionMetric)initWithPreviousModeSemanticType:(id)type previousModeDuration:(double)duration previousModeHadScheduledExit:(BOOL)exit exitReason:(id)reason enterReason:(id)enterReason transitionDeviceType:(id)deviceType transitionSource:(id)source nextModeSemanticType:(id)self0
{
  typeCopy = type;
  reasonCopy = reason;
  enterReasonCopy = enterReason;
  deviceTypeCopy = deviceType;
  sourceCopy = source;
  semanticTypeCopy = semanticType;
  v27.receiver = self;
  v27.super_class = ATXModeTransitionMetric;
  v20 = [(_ATXCoreAnalyticsMetric *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_previousModeSemanticType, type);
    v21->_previousModeDuration = duration;
    v21->_previousModeHadScheduledExit = exit;
    objc_storeStrong(&v21->_exitReason, reason);
    objc_storeStrong(&v21->_enterReason, enterReason);
    objc_storeStrong(&v21->_transitionDeviceType, deviceType);
    objc_storeStrong(&v21->_transitionSource, source);
    objc_storeStrong(&v21->_nextModeSemanticType, semanticType);
  }

  return v21;
}

- (id)coreAnalyticsDictionary
{
  v49[19] = *MEMORY[0x277D85DE8];
  previousModeSemanticType = self->_previousModeSemanticType;
  v47 = previousModeSemanticType;
  v48[0] = @"previousMode";
  if (!previousModeSemanticType)
  {
    previousModeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v35 = previousModeSemanticType;
  v49[0] = previousModeSemanticType;
  v48[1] = @"previousModeDuration";
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:self->_previousModeDuration];
  v49[1] = v46;
  v48[2] = @"previousHadScheduledExit";
  v45 = [MEMORY[0x277CCABB0] numberWithBool:self->_previousModeHadScheduledExit];
  v49[2] = v45;
  v48[3] = @"exitReason";
  exitReason = self->_exitReason;
  v44 = exitReason;
  if (!exitReason)
  {
    exitReason = [MEMORY[0x277CBEB68] null];
  }

  v34 = exitReason;
  v49[3] = exitReason;
  v48[4] = @"enterReason";
  enterReason = self->_enterReason;
  v43 = enterReason;
  if (!enterReason)
  {
    enterReason = [MEMORY[0x277CBEB68] null];
  }

  v33 = enterReason;
  v49[4] = enterReason;
  v48[5] = @"transitionDeviceType";
  transitionDeviceType = self->_transitionDeviceType;
  v42 = transitionDeviceType;
  if (!transitionDeviceType)
  {
    transitionDeviceType = [MEMORY[0x277CBEB68] null];
  }

  v32 = transitionDeviceType;
  v49[5] = transitionDeviceType;
  v48[6] = @"transitionSource";
  transitionSource = self->_transitionSource;
  v41 = transitionSource;
  if (!transitionSource)
  {
    transitionSource = [MEMORY[0x277CBEB68] null];
  }

  v31 = transitionSource;
  v49[6] = transitionSource;
  v48[7] = @"nextMode";
  nextModeSemanticType = self->_nextModeSemanticType;
  v40 = nextModeSemanticType;
  if (!nextModeSemanticType)
  {
    nextModeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v30 = nextModeSemanticType;
  v49[7] = nextModeSemanticType;
  v48[8] = @"inferredModeConfidenceScore";
  inferredModeConfidenceScore = self->_inferredModeConfidenceScore;
  v39 = inferredModeConfidenceScore;
  if (!inferredModeConfidenceScore)
  {
    inferredModeConfidenceScore = [MEMORY[0x277CBEB68] null];
  }

  v29 = inferredModeConfidenceScore;
  v49[8] = inferredModeConfidenceScore;
  v48[9] = @"inferredModeDuration";
  inferredModeDuration = self->_inferredModeDuration;
  v38 = inferredModeDuration;
  if (!inferredModeDuration)
  {
    inferredModeDuration = [MEMORY[0x277CBEB68] null];
  }

  v28 = inferredModeDuration;
  v49[9] = inferredModeDuration;
  v48[10] = @"inferredModeOriginAnchorType";
  inferredModeOriginAnchorType = self->_inferredModeOriginAnchorType;
  v37 = inferredModeOriginAnchorType;
  if (!inferredModeOriginAnchorType)
  {
    inferredModeOriginAnchorType = [MEMORY[0x277CBEB68] null];
  }

  v27 = inferredModeOriginAnchorType;
  v49[10] = inferredModeOriginAnchorType;
  v48[11] = @"inferredModeType";
  inferredModeType = self->_inferredModeType;
  null = inferredModeType;
  if (!inferredModeType)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v26 = null;
  v49[11] = null;
  v48[12] = @"inferredModeUILocation";
  inferredModeUILocation = self->_inferredModeUILocation;
  null2 = inferredModeUILocation;
  if (!inferredModeUILocation)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v25 = null2;
  v49[12] = null2;
  v48[13] = @"previousModeOrigin";
  previousModeOrigin = self->_previousModeOrigin;
  null3 = previousModeOrigin;
  if (!previousModeOrigin)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v49[13] = null3;
  v48[14] = @"appBasedSchedulingEnabled";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_appBasedSchedulingEnabled];
  v49[14] = v18;
  v48[15] = @"timeBasedSchedulingEnabled";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_timeBasedSchedulingEnabled];
  v49[15] = v19;
  v48[16] = @"locationBasedSchedulingEnabled";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_locationBasedSchedulingEnabled];
  v49[16] = v20;
  v48[17] = @"smartActivationEnabled";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_smartActivationEnabled];
  v49[17] = v21;
  v48[18] = @"currentModeOrigin";
  currentModeOrigin = self->_currentModeOrigin;
  null4 = currentModeOrigin;
  if (!currentModeOrigin)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v49[18] = null4;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:19];
  if (!currentModeOrigin)
  {
  }

  if (previousModeOrigin)
  {
    if (inferredModeUILocation)
    {
      goto LABEL_31;
    }

LABEL_54:

    if (inferredModeType)
    {
      goto LABEL_32;
    }

    goto LABEL_55;
  }

  if (!inferredModeUILocation)
  {
    goto LABEL_54;
  }

LABEL_31:
  if (inferredModeType)
  {
    goto LABEL_32;
  }

LABEL_55:

LABEL_32:
  if (!v37)
  {
  }

  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v47)
  {
  }

  return v36;
}

- (id)description
{
  v23 = MEMORY[0x277CCACA8];
  previousModeSemanticType = [(ATXModeTransitionMetric *)self previousModeSemanticType];
  [(ATXModeTransitionMetric *)self previousModeDuration];
  v4 = v3;
  previousModeHadScheduledExit = [(ATXModeTransitionMetric *)self previousModeHadScheduledExit];
  exitReason = [(ATXModeTransitionMetric *)self exitReason];
  enterReason = [(ATXModeTransitionMetric *)self enterReason];
  transitionDeviceType = [(ATXModeTransitionMetric *)self transitionDeviceType];
  transitionSource = [(ATXModeTransitionMetric *)self transitionSource];
  nextModeSemanticType = [(ATXModeTransitionMetric *)self nextModeSemanticType];
  inferredModeConfidenceScore = [(ATXModeTransitionMetric *)self inferredModeConfidenceScore];
  inferredModeDuration = [(ATXModeTransitionMetric *)self inferredModeDuration];
  inferredModeOriginAnchorType = [(ATXModeTransitionMetric *)self inferredModeOriginAnchorType];
  inferredModeType = [(ATXModeTransitionMetric *)self inferredModeType];
  inferredModeUILocation = [(ATXModeTransitionMetric *)self inferredModeUILocation];
  previousModeOrigin = [(ATXModeTransitionMetric *)self previousModeOrigin];
  appBasedSchedulingEnabled = [(ATXModeTransitionMetric *)self appBasedSchedulingEnabled];
  timeBasedSchedulingEnabled = [(ATXModeTransitionMetric *)self timeBasedSchedulingEnabled];
  locationBasedSchedulingEnabled = [(ATXModeTransitionMetric *)self locationBasedSchedulingEnabled];
  smartActivationEnabled = [(ATXModeTransitionMetric *)self smartActivationEnabled];
  currentModeOrigin = [(ATXModeTransitionMetric *)self currentModeOrigin];
  v24 = [v23 stringWithFormat:@"ATXModeTransitionMetric previousMode:%@\npreviousModeDuration:%f\npreviousHadScheduledExit:%d\nexitReason:%@\nenterReason:%@\ntransitionDeviceType:%@\ntransitionSource:%@\nnextMode:%@\ninferredModeConfidenceScore:%@\ninferredModeDuration:%@\ninferredModeOriginAnchorType:%@\ninferredModeType:%@\ninferredModeUILocation:%@\npreviousModeOrigin:%@\nappBasedSchedulingEnabled:%d\ntimeBasedSchedulingEnabled:%d\nlocationBasedSchedulingEnabled:%d\nsmartActivationEnabled:%d\ncurrentModeOrigin:%@\n", previousModeSemanticType, v4, previousModeHadScheduledExit, exitReason, enterReason, transitionDeviceType, transitionSource, nextModeSemanticType, inferredModeConfidenceScore, inferredModeDuration, inferredModeOriginAnchorType, inferredModeType, inferredModeUILocation, previousModeOrigin, appBasedSchedulingEnabled, timeBasedSchedulingEnabled, locationBasedSchedulingEnabled, smartActivationEnabled, currentModeOrigin];

  return v24;
}

@end