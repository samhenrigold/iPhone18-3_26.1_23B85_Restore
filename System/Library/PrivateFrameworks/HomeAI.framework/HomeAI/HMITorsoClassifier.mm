@interface HMITorsoClassifier
- (HMITorsoClassifier)init;
- (id)classifyTorsoEvent:(id)event regionOfInterest:(CGRect)interest pixelBuffer:(__CVBuffer *)buffer homeUUID:(id)d error:(id *)error;
@end

@implementation HMITorsoClassifier

- (HMITorsoClassifier)init
{
  v9.receiver = self;
  v9.super_class = HMITorsoClassifier;
  v2 = [(HMITorsoClassifier *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(HMITorsoprinter);
    torsoprinter = v2->_torsoprinter;
    v2->_torsoprinter = v3;

    v5 = +[HMIPreference sharedInstance];
    v6 = [v5 numberPreferenceForKey:? defaultValue:?];
    [v6 doubleValue];
    v2->_classificationThresholdKnown = v7;
  }

  return v2;
}

- (id)classifyTorsoEvent:(id)event regionOfInterest:(CGRect)interest pixelBuffer:(__CVBuffer *)buffer homeUUID:(id)d error:(id *)error
{
  width = interest.size.width;
  height = interest.size.height;
  y = interest.origin.y;
  x = interest.origin.x;
  v100 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  roll = [eventCopy roll];
  if (roll)
  {
    roll2 = [eventCopy roll];
    [roll2 floatValue];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (fabsf(v17) > 1.5708)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v89 = v21;
      v90 = 2048;
      v91 = v17 * 57.2957795;
      _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Skip torsoEvent with extreme roll (%.0f deg)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  Size = HMICVPixelBufferGetSize(buffer);
  v24 = v23;
  [eventCopy boundingBox];
  HMICGRectPixelFromNormalized(v25, v26, v27, v28, Size, v24);
  v103 = CGRectIntegral(v102);
  v29 = v103.origin.x;
  v30 = v103.origin.y;
  v31 = v103.size.width;
  v32 = v103.size.height;
  v33 = CGRectGetWidth(v103);
  v104.origin.x = v29;
  v104.origin.y = v30;
  v104.size.width = v31;
  v104.size.height = v32;
  v34 = v33 / (CGRectGetHeight(v104) + 0.00000999999975);
  if (v34 > 0.9)
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v39 = v34;
      [eventCopy boundingBox];
      v40 = CGRectGetWidth(v105);
      [eventCopy boundingBox];
      v41 = CGRectGetHeight(v106);
      *buf = 138544642;
      v89 = v38;
      v90 = 2048;
      v91 = v39;
      v92 = 2048;
      v93 = Size;
      v94 = 2048;
      v95 = v24;
      v96 = 2048;
      v97 = v40;
      v98 = 2048;
      v99 = v41;
      _os_log_impl(&dword_22D12F000, v37, OS_LOG_TYPE_INFO, "%{public}@Skip torsoEvent with extreme aspect ratio (w/h) (%.2f) pixelDim:(%f, %f) bbox:(%f, %f)", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v35);
  }

  [eventCopy boundingBox];
  v46 = HMICGRectMinElementwiseDistance(v42, v43, v44, v45, x, y, width, height);
  if (v46 < 0.01)
  {
    v47 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v89 = v50;
      v90 = 2048;
      v91 = v46;
      _os_log_impl(&dword_22D12F000, v49, OS_LOG_TYPE_INFO, "%{public}@Skip torsoEvent with torsoBox close to roi boundary. Dist: (%.4f)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
  }

  v51 = [HMITorsoprinter createTorsoPixelBufferForTorsoEvent:"createTorsoPixelBufferForTorsoEvent:pixelBuffer:error:" pixelBuffer:? error:?];
  v52 = 0;
  if (v51)
  {
    torsoprinter = [(HMITorsoClassifier *)self torsoprinter];
    v54 = [torsoprinter torsoprintForTorsoPixelBuffer:? unrecognizable:? error:?];

    CVPixelBufferRelease(v51);
    if (!v54)
    {
      v59 = eventCopy;
LABEL_36:

      goto LABEL_37;
    }

    if ([v54 unrecognizable])
    {
      v55 = 0;
    }

    else
    {
      v60 = +[HMIPersonsModelManager sharedInstance];
      v55 = [v60 predictPersonFromTorsoObservation:? homeUUID:? error:?];
      v61 = v52;

      if (v61)
      {
        v62 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543362;
          v89 = v65;
          _os_log_impl(&dword_22D12F000, v64, OS_LOG_TYPE_INFO, "%{public}@Failed to predict using torso vip model", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v62);
        if (error)
        {
          v66 = v61;
          *error = v61;
        }

        HMIErrorLog(selfCopy4, v61);
        v59 = 0;
        v52 = v61;
        goto LABEL_35;
      }

      if (v55)
      {
        confidence = [v55 confidence];
        [confidence doubleValue];
        v69 = v68;
        [(HMITorsoClassifier *)self classificationThresholdKnown];
        v71 = v70;

        if (v69 >= v71)
        {
          v81 = [HMITorsoClassification alloc];
          personUUID = [v55 personUUID];
          sourceUUID = [v55 sourceUUID];
          confidence2 = [v55 confidence];
          [confidence2 doubleValue];
          v72 = [HMITorsoClassification initWithPersonUUID:v81 sourceUUID:"initWithPersonUUID:sourceUUID:confidence:" confidence:?];

          v52 = 0;
          goto LABEL_34;
        }
      }

      v52 = 0;
    }

    v72 = 0;
LABEL_34:
    v73 = [HMITorsoRecognition alloc];
    v74 = [MEMORY[0x277CBEB98] set];
    uUID = [v54 UUID];
    v76 = [HMITorsoRecognition initWithTorsoprint:v73 classification:"initWithTorsoprint:classification:predictedLinkedEntityUUIDs:sessionEntityAssignment:sessionEntityUUID:" predictedLinkedEntityUUIDs:? sessionEntityAssignment:? sessionEntityUUID:?];

    v77 = [HMIVideoAnalyzerEventTorso alloc];
    confidence3 = [eventCopy confidence];
    [eventCopy boundingBox];
    roll3 = [eventCopy roll];
    v59 = [HMIVideoAnalyzerEventTorso initWithConfidence:v77 boundingBox:"initWithConfidence:boundingBox:roll:torsoRecognition:" roll:? torsoRecognition:?];

LABEL_35:
    goto LABEL_36;
  }

  v56 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
  v57 = v56;
  if (error)
  {
    v58 = v56;
    *error = v57;
  }

  HMIErrorLog(self, v57);

  v59 = eventCopy;
LABEL_37:

  return v59;
}

@end