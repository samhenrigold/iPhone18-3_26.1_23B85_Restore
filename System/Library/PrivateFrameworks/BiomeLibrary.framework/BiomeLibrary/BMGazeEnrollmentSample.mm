@interface BMGazeEnrollmentSample
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMGazeEnrollmentSample)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMGazeEnrollmentSample)initWithUserProfileId:(id)id eyeSide:(int)side isOffline:(id)offline enrollmentResidual75thPercentile:(id)percentile enrollmentResidual95thPercentile:(id)residual95thPercentile enrollmentResidualMedian:(id)median dominantEye:(int)eye monocularQuality:(int)self0 enrollmentFailureReasons:(id)self1 binocQuality:(int)self2 fixationCount:(id)self3 fixationCountLowBrightness:(id)self4 fixationCountMediumBrightness:(id)self5 fixationCountHighBrightness:(id)self6 stimulusCount:(id)self7 stimulusCountLowBrightness:(id)self8 stimulusCountMediumBrightness:(id)self9 stimulusCountHighBrightness:(id)countHighBrightness accessibilityMode:(int)mode eyeboxStatus:(int)status centralStimulusSignedResidualYaw:(id)yaw brightness1topStimulusSignedResidualYaw:(id)residualYaw brightness1topRightStimulusSignedResidualYaw:(id)signedResidualYaw brightness1bottomRightStimulusSignedResidualYaw:(id)stimulusSignedResidualYaw brightness1bottomStimulusSignedResidualYaw:(id)brightness1bottomStimulusSignedResidualYaw brightness1bottomLeftStimulusSignedResidualYaw:(id)leftStimulusSignedResidualYaw brightness1topLeftStimulusSignedResidualYaw:(id)brightness1topLeftStimulusSignedResidualYaw brightness2topStimulusSignedResidualYaw:(id)id0 brightness2topRightStimulusSignedResidualYaw:(id)id1 brightness2bottomRightStimulusSignedResidualYaw:(id)id2 brightness2bottomStimulusSignedResidualYaw:(id)id3 brightness2bottomLeftStimulusSignedResidualYaw:(id)id4 brightness2topLeftStimulusSignedResidualYaw:(id)id5 brightness3topStimulusSignedResidualYaw:(id)id6 brightness3topRightStimulusSignedResidualYaw:(id)id7 brightness3bottomRightStimulusSignedResidualYaw:(id)id8 brightness3bottomStimulusSignedResidualYaw:(id)id9 brightness3bottomLeftStimulusSignedResidualYaw:(id)side0 brightness3topLeftStimulusSignedResidualYaw:(id)side1 centralStimulusSignedResidualPitch:(id)side2 brightness1topStimulusSignedResidualPitch:(id)side3 brightness1topRightStimulusSignedResidualPitch:(id)side4 brightness1bottomRightStimulusSignedResidualPitch:(id)side5 brightness1bottomStimulusSignedResidualPitch:(id)side6 brightness1bottomLeftStimulusSignedResidualPitch:(id)side7 brightness1topLeftStimulusSignedResidualPitch:(id)side8 brightness2topStimulusSignedResidualPitch:(id)side9 brightness2topRightStimulusSignedResidualPitch:(id)offline0 brightness2bottomRightStimulusSignedResidualPitch:(id)offline1 brightness2bottomStimulusSignedResidualPitch:(id)offline2 brightness2bottomLeftStimulusSignedResidualPitch:(id)offline3 brightness2topLeftStimulusSignedResidualPitch:(id)offline4 brightness3topStimulusSignedResidualPitch:(id)offline5 brightness3topRightStimulusSignedResidualPitch:(id)offline6 brightness3bottomRightStimulusSignedResidualPitch:(id)offline7 brightness3bottomStimulusSignedResidualPitch:(id)offline8 brightness3bottomLeftStimulusSignedResidualPitch:(id)offline9 brightness3topLeftStimulusSignedResidualPitch:(id)percentile0 rxuuid:(id)percentile1 enrollmentReason:(int)percentile2;
- (BMGazeEnrollmentSample)initWithUserProfileId:(id)id eyeSide:(int)side isOffline:(id)offline enrollmentResidual75thPercentile:(id)percentile enrollmentResidual95thPercentile:(id)residual95thPercentile enrollmentResidualMedian:(id)median dominantEye:(int)eye monocularQuality:(int)self0 enrollmentFailureReasons:(id)self1 binocQuality:(int)self2 fixationCount:(id)self3 fixationCountLowBrightness:(id)self4 fixationCountMediumBrightness:(id)self5 fixationCountHighBrightness:(id)self6 stimulusCount:(id)self7 stimulusCountLowBrightness:(id)self8 stimulusCountMediumBrightness:(id)self9 stimulusCountHighBrightness:(id)countHighBrightness accessibilityMode:(int)mode eyeboxStatus:(int)status centralStimulusSignedResidualYaw:(id)yaw brightness1topStimulusSignedResidualYaw:(id)residualYaw brightness1topRightStimulusSignedResidualYaw:(id)signedResidualYaw brightness1bottomRightStimulusSignedResidualYaw:(id)stimulusSignedResidualYaw brightness1bottomStimulusSignedResidualYaw:(id)brightness1bottomStimulusSignedResidualYaw brightness1bottomLeftStimulusSignedResidualYaw:(id)leftStimulusSignedResidualYaw brightness1topLeftStimulusSignedResidualYaw:(id)brightness1topLeftStimulusSignedResidualYaw brightness2topStimulusSignedResidualYaw:(id)id0 brightness2topRightStimulusSignedResidualYaw:(id)id1 brightness2bottomRightStimulusSignedResidualYaw:(id)id2 brightness2bottomStimulusSignedResidualYaw:(id)id3 brightness2bottomLeftStimulusSignedResidualYaw:(id)id4 brightness2topLeftStimulusSignedResidualYaw:(id)id5 brightness3topStimulusSignedResidualYaw:(id)id6 brightness3topRightStimulusSignedResidualYaw:(id)id7 brightness3bottomRightStimulusSignedResidualYaw:(id)id8 brightness3bottomStimulusSignedResidualYaw:(id)id9 brightness3bottomLeftStimulusSignedResidualYaw:(id)side0 brightness3topLeftStimulusSignedResidualYaw:(id)side1 centralStimulusSignedResidualPitch:(id)side2 brightness1topStimulusSignedResidualPitch:(id)side3 brightness1topRightStimulusSignedResidualPitch:(id)side4 brightness1bottomRightStimulusSignedResidualPitch:(id)side5 brightness1bottomStimulusSignedResidualPitch:(id)side6 brightness1bottomLeftStimulusSignedResidualPitch:(id)side7 brightness1topLeftStimulusSignedResidualPitch:(id)side8 brightness2topStimulusSignedResidualPitch:(id)side9 brightness2topRightStimulusSignedResidualPitch:(id)offline0 brightness2bottomRightStimulusSignedResidualPitch:(id)offline1 brightness2bottomStimulusSignedResidualPitch:(id)offline2 brightness2bottomLeftStimulusSignedResidualPitch:(id)offline3 brightness2topLeftStimulusSignedResidualPitch:(id)offline4 brightness3topStimulusSignedResidualPitch:(id)offline5 brightness3topRightStimulusSignedResidualPitch:(id)offline6 brightness3bottomRightStimulusSignedResidualPitch:(id)offline7 brightness3bottomStimulusSignedResidualPitch:(id)offline8 brightness3bottomLeftStimulusSignedResidualPitch:(id)offline9 brightness3topLeftStimulusSignedResidualPitch:(id)percentile0 rxuuid:(id)percentile1 enrollmentReason:(int)percentile2 enrollmentDeviceType:(int)percentile3;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_enrollmentFailureReasonsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMGazeEnrollmentSample

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    userProfileId = [(BMGazeEnrollmentSample *)self userProfileId];
    userProfileId2 = [v5 userProfileId];
    v8 = userProfileId2;
    if (userProfileId == userProfileId2)
    {
    }

    else
    {
      userProfileId3 = [(BMGazeEnrollmentSample *)self userProfileId];
      userProfileId4 = [v5 userProfileId];
      v11 = [userProfileId3 isEqual:userProfileId4];

      if (!v11)
      {
        goto LABEL_273;
      }
    }

    eyeSide = [(BMGazeEnrollmentSample *)self eyeSide];
    if (eyeSide != [v5 eyeSide])
    {
      goto LABEL_273;
    }

    if (-[BMGazeEnrollmentSample hasIsOffline](self, "hasIsOffline") || [v5 hasIsOffline])
    {
      if (![(BMGazeEnrollmentSample *)self hasIsOffline])
      {
        goto LABEL_273;
      }

      if (![v5 hasIsOffline])
      {
        goto LABEL_273;
      }

      isOffline = [(BMGazeEnrollmentSample *)self isOffline];
      if (isOffline != [v5 isOffline])
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasEnrollmentResidual75thPercentile](self, "hasEnrollmentResidual75thPercentile") || [v5 hasEnrollmentResidual75thPercentile])
    {
      if (![(BMGazeEnrollmentSample *)self hasEnrollmentResidual75thPercentile])
      {
        goto LABEL_273;
      }

      if (![v5 hasEnrollmentResidual75thPercentile])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self enrollmentResidual75thPercentile];
      v16 = v15;
      [v5 enrollmentResidual75thPercentile];
      if (v16 != v17)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasEnrollmentResidual95thPercentile](self, "hasEnrollmentResidual95thPercentile") || [v5 hasEnrollmentResidual95thPercentile])
    {
      if (![(BMGazeEnrollmentSample *)self hasEnrollmentResidual95thPercentile])
      {
        goto LABEL_273;
      }

      if (![v5 hasEnrollmentResidual95thPercentile])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self enrollmentResidual95thPercentile];
      v19 = v18;
      [v5 enrollmentResidual95thPercentile];
      if (v19 != v20)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasEnrollmentResidualMedian](self, "hasEnrollmentResidualMedian") || [v5 hasEnrollmentResidualMedian])
    {
      if (![(BMGazeEnrollmentSample *)self hasEnrollmentResidualMedian])
      {
        goto LABEL_273;
      }

      if (![v5 hasEnrollmentResidualMedian])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self enrollmentResidualMedian];
      v22 = v21;
      [v5 enrollmentResidualMedian];
      if (v22 != v23)
      {
        goto LABEL_273;
      }
    }

    dominantEye = [(BMGazeEnrollmentSample *)self dominantEye];
    if (dominantEye != [v5 dominantEye])
    {
      goto LABEL_273;
    }

    monocularQuality = [(BMGazeEnrollmentSample *)self monocularQuality];
    if (monocularQuality != [v5 monocularQuality])
    {
      goto LABEL_273;
    }

    enrollmentFailureReasons = [(BMGazeEnrollmentSample *)self enrollmentFailureReasons];
    enrollmentFailureReasons2 = [v5 enrollmentFailureReasons];
    v28 = enrollmentFailureReasons2;
    if (enrollmentFailureReasons == enrollmentFailureReasons2)
    {
    }

    else
    {
      enrollmentFailureReasons3 = [(BMGazeEnrollmentSample *)self enrollmentFailureReasons];
      enrollmentFailureReasons4 = [v5 enrollmentFailureReasons];
      v31 = [enrollmentFailureReasons3 isEqual:enrollmentFailureReasons4];

      if (!v31)
      {
        goto LABEL_273;
      }
    }

    binocQuality = [(BMGazeEnrollmentSample *)self binocQuality];
    if (binocQuality != [v5 binocQuality])
    {
      goto LABEL_273;
    }

    if (-[BMGazeEnrollmentSample hasFixationCount](self, "hasFixationCount") || [v5 hasFixationCount])
    {
      if (![(BMGazeEnrollmentSample *)self hasFixationCount])
      {
        goto LABEL_273;
      }

      if (![v5 hasFixationCount])
      {
        goto LABEL_273;
      }

      fixationCount = [(BMGazeEnrollmentSample *)self fixationCount];
      if (fixationCount != [v5 fixationCount])
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasFixationCountLowBrightness](self, "hasFixationCountLowBrightness") || [v5 hasFixationCountLowBrightness])
    {
      if (![(BMGazeEnrollmentSample *)self hasFixationCountLowBrightness])
      {
        goto LABEL_273;
      }

      if (![v5 hasFixationCountLowBrightness])
      {
        goto LABEL_273;
      }

      fixationCountLowBrightness = [(BMGazeEnrollmentSample *)self fixationCountLowBrightness];
      if (fixationCountLowBrightness != [v5 fixationCountLowBrightness])
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasFixationCountMediumBrightness](self, "hasFixationCountMediumBrightness") || [v5 hasFixationCountMediumBrightness])
    {
      if (![(BMGazeEnrollmentSample *)self hasFixationCountMediumBrightness])
      {
        goto LABEL_273;
      }

      if (![v5 hasFixationCountMediumBrightness])
      {
        goto LABEL_273;
      }

      fixationCountMediumBrightness = [(BMGazeEnrollmentSample *)self fixationCountMediumBrightness];
      if (fixationCountMediumBrightness != [v5 fixationCountMediumBrightness])
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasFixationCountHighBrightness](self, "hasFixationCountHighBrightness") || [v5 hasFixationCountHighBrightness])
    {
      if (![(BMGazeEnrollmentSample *)self hasFixationCountHighBrightness])
      {
        goto LABEL_273;
      }

      if (![v5 hasFixationCountHighBrightness])
      {
        goto LABEL_273;
      }

      fixationCountHighBrightness = [(BMGazeEnrollmentSample *)self fixationCountHighBrightness];
      if (fixationCountHighBrightness != [v5 fixationCountHighBrightness])
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasStimulusCount](self, "hasStimulusCount") || [v5 hasStimulusCount])
    {
      if (![(BMGazeEnrollmentSample *)self hasStimulusCount])
      {
        goto LABEL_273;
      }

      if (![v5 hasStimulusCount])
      {
        goto LABEL_273;
      }

      stimulusCount = [(BMGazeEnrollmentSample *)self stimulusCount];
      if (stimulusCount != [v5 stimulusCount])
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasStimulusCountLowBrightness](self, "hasStimulusCountLowBrightness") || [v5 hasStimulusCountLowBrightness])
    {
      if (![(BMGazeEnrollmentSample *)self hasStimulusCountLowBrightness])
      {
        goto LABEL_273;
      }

      if (![v5 hasStimulusCountLowBrightness])
      {
        goto LABEL_273;
      }

      stimulusCountLowBrightness = [(BMGazeEnrollmentSample *)self stimulusCountLowBrightness];
      if (stimulusCountLowBrightness != [v5 stimulusCountLowBrightness])
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasStimulusCountMediumBrightness](self, "hasStimulusCountMediumBrightness") || [v5 hasStimulusCountMediumBrightness])
    {
      if (![(BMGazeEnrollmentSample *)self hasStimulusCountMediumBrightness])
      {
        goto LABEL_273;
      }

      if (![v5 hasStimulusCountMediumBrightness])
      {
        goto LABEL_273;
      }

      stimulusCountMediumBrightness = [(BMGazeEnrollmentSample *)self stimulusCountMediumBrightness];
      if (stimulusCountMediumBrightness != [v5 stimulusCountMediumBrightness])
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasStimulusCountHighBrightness](self, "hasStimulusCountHighBrightness") || [v5 hasStimulusCountHighBrightness])
    {
      if (![(BMGazeEnrollmentSample *)self hasStimulusCountHighBrightness])
      {
        goto LABEL_273;
      }

      if (![v5 hasStimulusCountHighBrightness])
      {
        goto LABEL_273;
      }

      stimulusCountHighBrightness = [(BMGazeEnrollmentSample *)self stimulusCountHighBrightness];
      if (stimulusCountHighBrightness != [v5 stimulusCountHighBrightness])
      {
        goto LABEL_273;
      }
    }

    accessibilityMode = [(BMGazeEnrollmentSample *)self accessibilityMode];
    if (accessibilityMode != [v5 accessibilityMode])
    {
      goto LABEL_273;
    }

    eyeboxStatus = [(BMGazeEnrollmentSample *)self eyeboxStatus];
    if (eyeboxStatus != [v5 eyeboxStatus])
    {
      goto LABEL_273;
    }

    if (-[BMGazeEnrollmentSample hasCentralStimulusSignedResidualYaw](self, "hasCentralStimulusSignedResidualYaw") || [v5 hasCentralStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasCentralStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasCentralStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self centralStimulusSignedResidualYaw];
      v44 = v43;
      [v5 centralStimulusSignedResidualYaw];
      if (v44 != v45)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1topStimulusSignedResidualYaw](self, "hasBrightness1topStimulusSignedResidualYaw") || [v5 hasBrightness1topStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1topStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1topStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualYaw];
      v47 = v46;
      [v5 brightness1topStimulusSignedResidualYaw];
      if (v47 != v48)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1topRightStimulusSignedResidualYaw](self, "hasBrightness1topRightStimulusSignedResidualYaw") || [v5 hasBrightness1topRightStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1topRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1topRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualYaw];
      v50 = v49;
      [v5 brightness1topRightStimulusSignedResidualYaw];
      if (v50 != v51)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1bottomRightStimulusSignedResidualYaw](self, "hasBrightness1bottomRightStimulusSignedResidualYaw") || [v5 hasBrightness1bottomRightStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1bottomRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualYaw];
      v53 = v52;
      [v5 brightness1bottomRightStimulusSignedResidualYaw];
      if (v53 != v54)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1bottomStimulusSignedResidualYaw](self, "hasBrightness1bottomStimulusSignedResidualYaw") || [v5 hasBrightness1bottomStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1bottomStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualYaw];
      v56 = v55;
      [v5 brightness1bottomStimulusSignedResidualYaw];
      if (v56 != v57)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1bottomLeftStimulusSignedResidualYaw](self, "hasBrightness1bottomLeftStimulusSignedResidualYaw") || [v5 hasBrightness1bottomLeftStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1bottomLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualYaw];
      v59 = v58;
      [v5 brightness1bottomLeftStimulusSignedResidualYaw];
      if (v59 != v60)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1topLeftStimulusSignedResidualYaw](self, "hasBrightness1topLeftStimulusSignedResidualYaw") || [v5 hasBrightness1topLeftStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1topLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1topLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualYaw];
      v62 = v61;
      [v5 brightness1topLeftStimulusSignedResidualYaw];
      if (v62 != v63)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2topStimulusSignedResidualYaw](self, "hasBrightness2topStimulusSignedResidualYaw") || [v5 hasBrightness2topStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2topStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2topStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualYaw];
      v65 = v64;
      [v5 brightness2topStimulusSignedResidualYaw];
      if (v65 != v66)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2topRightStimulusSignedResidualYaw](self, "hasBrightness2topRightStimulusSignedResidualYaw") || [v5 hasBrightness2topRightStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2topRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2topRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualYaw];
      v68 = v67;
      [v5 brightness2topRightStimulusSignedResidualYaw];
      if (v68 != v69)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2bottomRightStimulusSignedResidualYaw](self, "hasBrightness2bottomRightStimulusSignedResidualYaw") || [v5 hasBrightness2bottomRightStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2bottomRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualYaw];
      v71 = v70;
      [v5 brightness2bottomRightStimulusSignedResidualYaw];
      if (v71 != v72)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2bottomStimulusSignedResidualYaw](self, "hasBrightness2bottomStimulusSignedResidualYaw") || [v5 hasBrightness2bottomStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2bottomStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualYaw];
      v74 = v73;
      [v5 brightness2bottomStimulusSignedResidualYaw];
      if (v74 != v75)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2bottomLeftStimulusSignedResidualYaw](self, "hasBrightness2bottomLeftStimulusSignedResidualYaw") || [v5 hasBrightness2bottomLeftStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2bottomLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualYaw];
      v77 = v76;
      [v5 brightness2bottomLeftStimulusSignedResidualYaw];
      if (v77 != v78)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2topLeftStimulusSignedResidualYaw](self, "hasBrightness2topLeftStimulusSignedResidualYaw") || [v5 hasBrightness2topLeftStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2topLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2topLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualYaw];
      v80 = v79;
      [v5 brightness2topLeftStimulusSignedResidualYaw];
      if (v80 != v81)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3topStimulusSignedResidualYaw](self, "hasBrightness3topStimulusSignedResidualYaw") || [v5 hasBrightness3topStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3topStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3topStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualYaw];
      v83 = v82;
      [v5 brightness3topStimulusSignedResidualYaw];
      if (v83 != v84)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3topRightStimulusSignedResidualYaw](self, "hasBrightness3topRightStimulusSignedResidualYaw") || [v5 hasBrightness3topRightStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3topRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3topRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualYaw];
      v86 = v85;
      [v5 brightness3topRightStimulusSignedResidualYaw];
      if (v86 != v87)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3bottomRightStimulusSignedResidualYaw](self, "hasBrightness3bottomRightStimulusSignedResidualYaw") || [v5 hasBrightness3bottomRightStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3bottomRightStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualYaw];
      v89 = v88;
      [v5 brightness3bottomRightStimulusSignedResidualYaw];
      if (v89 != v90)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3bottomStimulusSignedResidualYaw](self, "hasBrightness3bottomStimulusSignedResidualYaw") || [v5 hasBrightness3bottomStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3bottomStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualYaw];
      v92 = v91;
      [v5 brightness3bottomStimulusSignedResidualYaw];
      if (v92 != v93)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3bottomLeftStimulusSignedResidualYaw](self, "hasBrightness3bottomLeftStimulusSignedResidualYaw") || [v5 hasBrightness3bottomLeftStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3bottomLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualYaw];
      v95 = v94;
      [v5 brightness3bottomLeftStimulusSignedResidualYaw];
      if (v95 != v96)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3topLeftStimulusSignedResidualYaw](self, "hasBrightness3topLeftStimulusSignedResidualYaw") || [v5 hasBrightness3topLeftStimulusSignedResidualYaw])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3topLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3topLeftStimulusSignedResidualYaw])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualYaw];
      v98 = v97;
      [v5 brightness3topLeftStimulusSignedResidualYaw];
      if (v98 != v99)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasCentralStimulusSignedResidualPitch](self, "hasCentralStimulusSignedResidualPitch") || [v5 hasCentralStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasCentralStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasCentralStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self centralStimulusSignedResidualPitch];
      v101 = v100;
      [v5 centralStimulusSignedResidualPitch];
      if (v101 != v102)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1topStimulusSignedResidualPitch](self, "hasBrightness1topStimulusSignedResidualPitch") || [v5 hasBrightness1topStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1topStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1topStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualPitch];
      v104 = v103;
      [v5 brightness1topStimulusSignedResidualPitch];
      if (v104 != v105)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1topRightStimulusSignedResidualPitch](self, "hasBrightness1topRightStimulusSignedResidualPitch") || [v5 hasBrightness1topRightStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1topRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1topRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualPitch];
      v107 = v106;
      [v5 brightness1topRightStimulusSignedResidualPitch];
      if (v107 != v108)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1bottomRightStimulusSignedResidualPitch](self, "hasBrightness1bottomRightStimulusSignedResidualPitch") || [v5 hasBrightness1bottomRightStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1bottomRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualPitch];
      v110 = v109;
      [v5 brightness1bottomRightStimulusSignedResidualPitch];
      if (v110 != v111)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1bottomStimulusSignedResidualPitch](self, "hasBrightness1bottomStimulusSignedResidualPitch") || [v5 hasBrightness1bottomStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1bottomStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualPitch];
      v113 = v112;
      [v5 brightness1bottomStimulusSignedResidualPitch];
      if (v113 != v114)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1bottomLeftStimulusSignedResidualPitch](self, "hasBrightness1bottomLeftStimulusSignedResidualPitch") || [v5 hasBrightness1bottomLeftStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1bottomLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualPitch];
      v116 = v115;
      [v5 brightness1bottomLeftStimulusSignedResidualPitch];
      if (v116 != v117)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness1topLeftStimulusSignedResidualPitch](self, "hasBrightness1topLeftStimulusSignedResidualPitch") || [v5 hasBrightness1topLeftStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness1topLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness1topLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualPitch];
      v119 = v118;
      [v5 brightness1topLeftStimulusSignedResidualPitch];
      if (v119 != v120)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2topStimulusSignedResidualPitch](self, "hasBrightness2topStimulusSignedResidualPitch") || [v5 hasBrightness2topStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2topStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2topStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualPitch];
      v122 = v121;
      [v5 brightness2topStimulusSignedResidualPitch];
      if (v122 != v123)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2topRightStimulusSignedResidualPitch](self, "hasBrightness2topRightStimulusSignedResidualPitch") || [v5 hasBrightness2topRightStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2topRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2topRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualPitch];
      v125 = v124;
      [v5 brightness2topRightStimulusSignedResidualPitch];
      if (v125 != v126)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2bottomRightStimulusSignedResidualPitch](self, "hasBrightness2bottomRightStimulusSignedResidualPitch") || [v5 hasBrightness2bottomRightStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2bottomRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualPitch];
      v128 = v127;
      [v5 brightness2bottomRightStimulusSignedResidualPitch];
      if (v128 != v129)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2bottomStimulusSignedResidualPitch](self, "hasBrightness2bottomStimulusSignedResidualPitch") || [v5 hasBrightness2bottomStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2bottomStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualPitch];
      v131 = v130;
      [v5 brightness2bottomStimulusSignedResidualPitch];
      if (v131 != v132)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2bottomLeftStimulusSignedResidualPitch](self, "hasBrightness2bottomLeftStimulusSignedResidualPitch") || [v5 hasBrightness2bottomLeftStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2bottomLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualPitch];
      v134 = v133;
      [v5 brightness2bottomLeftStimulusSignedResidualPitch];
      if (v134 != v135)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness2topLeftStimulusSignedResidualPitch](self, "hasBrightness2topLeftStimulusSignedResidualPitch") || [v5 hasBrightness2topLeftStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness2topLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness2topLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualPitch];
      v137 = v136;
      [v5 brightness2topLeftStimulusSignedResidualPitch];
      if (v137 != v138)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3topStimulusSignedResidualPitch](self, "hasBrightness3topStimulusSignedResidualPitch") || [v5 hasBrightness3topStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3topStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3topStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualPitch];
      v140 = v139;
      [v5 brightness3topStimulusSignedResidualPitch];
      if (v140 != v141)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3topRightStimulusSignedResidualPitch](self, "hasBrightness3topRightStimulusSignedResidualPitch") || [v5 hasBrightness3topRightStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3topRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3topRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualPitch];
      v143 = v142;
      [v5 brightness3topRightStimulusSignedResidualPitch];
      if (v143 != v144)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3bottomRightStimulusSignedResidualPitch](self, "hasBrightness3bottomRightStimulusSignedResidualPitch") || [v5 hasBrightness3bottomRightStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3bottomRightStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualPitch];
      v146 = v145;
      [v5 brightness3bottomRightStimulusSignedResidualPitch];
      if (v146 != v147)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3bottomStimulusSignedResidualPitch](self, "hasBrightness3bottomStimulusSignedResidualPitch") || [v5 hasBrightness3bottomStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3bottomStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualPitch];
      v149 = v148;
      [v5 brightness3bottomStimulusSignedResidualPitch];
      if (v149 != v150)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3bottomLeftStimulusSignedResidualPitch](self, "hasBrightness3bottomLeftStimulusSignedResidualPitch") || [v5 hasBrightness3bottomLeftStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3bottomLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualPitch];
      v152 = v151;
      [v5 brightness3bottomLeftStimulusSignedResidualPitch];
      if (v152 != v153)
      {
        goto LABEL_273;
      }
    }

    if (-[BMGazeEnrollmentSample hasBrightness3topLeftStimulusSignedResidualPitch](self, "hasBrightness3topLeftStimulusSignedResidualPitch") || [v5 hasBrightness3topLeftStimulusSignedResidualPitch])
    {
      if (![(BMGazeEnrollmentSample *)self hasBrightness3topLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      if (![v5 hasBrightness3topLeftStimulusSignedResidualPitch])
      {
        goto LABEL_273;
      }

      [(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualPitch];
      v155 = v154;
      [v5 brightness3topLeftStimulusSignedResidualPitch];
      if (v155 != v156)
      {
        goto LABEL_273;
      }
    }

    rxuuid = [(BMGazeEnrollmentSample *)self rxuuid];
    rxuuid2 = [v5 rxuuid];
    v159 = rxuuid2;
    if (rxuuid == rxuuid2)
    {
    }

    else
    {
      rxuuid3 = [(BMGazeEnrollmentSample *)self rxuuid];
      rxuuid4 = [v5 rxuuid];
      v162 = [rxuuid3 isEqual:rxuuid4];

      if (!v162)
      {
        goto LABEL_273;
      }
    }

    enrollmentReason = [(BMGazeEnrollmentSample *)self enrollmentReason];
    if (enrollmentReason == [v5 enrollmentReason])
    {
      enrollmentDeviceType = [(BMGazeEnrollmentSample *)self enrollmentDeviceType];
      v12 = enrollmentDeviceType == [v5 enrollmentDeviceType];
LABEL_274:

      goto LABEL_275;
    }

LABEL_273:
    v12 = 0;
    goto LABEL_274;
  }

  v12 = 0;
LABEL_275:

  return v12;
}

- (id)jsonDictionary
{
  v273[61] = *MEMORY[0x1E69E9840];
  userProfileId = [(BMGazeEnrollmentSample *)self userProfileId];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGazeEnrollmentSample eyeSide](self, "eyeSide")}];
  if ([(BMGazeEnrollmentSample *)self hasIsOffline])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMGazeEnrollmentSample isOffline](self, "isOffline")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMGazeEnrollmentSample *)self hasEnrollmentResidual75thPercentile]|| ([(BMGazeEnrollmentSample *)self enrollmentResidual75thPercentile], fabsf(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self enrollmentResidual75thPercentile];
    v6 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self enrollmentResidual75thPercentile];
    v7 = [v6 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasEnrollmentResidual95thPercentile]|| ([(BMGazeEnrollmentSample *)self enrollmentResidual95thPercentile], fabsf(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self enrollmentResidual95thPercentile];
    v9 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self enrollmentResidual95thPercentile];
    v10 = [v9 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasEnrollmentResidualMedian]|| ([(BMGazeEnrollmentSample *)self enrollmentResidualMedian], fabsf(v11) == INFINITY))
  {
    v13 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self enrollmentResidualMedian];
    v12 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self enrollmentResidualMedian];
    v13 = [v12 numberWithFloat:?];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGazeEnrollmentSample dominantEye](self, "dominantEye")}];
  v271 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGazeEnrollmentSample monocularQuality](self, "monocularQuality")}];
  _enrollmentFailureReasonsJSONArray = [(BMGazeEnrollmentSample *)self _enrollmentFailureReasonsJSONArray];
  v269 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGazeEnrollmentSample binocQuality](self, "binocQuality")}];
  if ([(BMGazeEnrollmentSample *)self hasFixationCount])
  {
    v268 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample fixationCount](self, "fixationCount")}];
  }

  else
  {
    v268 = 0;
  }

  if ([(BMGazeEnrollmentSample *)self hasFixationCountLowBrightness])
  {
    v267 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample fixationCountLowBrightness](self, "fixationCountLowBrightness")}];
  }

  else
  {
    v267 = 0;
  }

  if ([(BMGazeEnrollmentSample *)self hasFixationCountMediumBrightness])
  {
    v266 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample fixationCountMediumBrightness](self, "fixationCountMediumBrightness")}];
  }

  else
  {
    v266 = 0;
  }

  if ([(BMGazeEnrollmentSample *)self hasFixationCountHighBrightness])
  {
    v265 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample fixationCountHighBrightness](self, "fixationCountHighBrightness")}];
  }

  else
  {
    v265 = 0;
  }

  if ([(BMGazeEnrollmentSample *)self hasStimulusCount])
  {
    v264 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample stimulusCount](self, "stimulusCount")}];
  }

  else
  {
    v264 = 0;
  }

  if ([(BMGazeEnrollmentSample *)self hasStimulusCountLowBrightness])
  {
    v263 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample stimulusCountLowBrightness](self, "stimulusCountLowBrightness")}];
  }

  else
  {
    v263 = 0;
  }

  if ([(BMGazeEnrollmentSample *)self hasStimulusCountMediumBrightness])
  {
    v262 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample stimulusCountMediumBrightness](self, "stimulusCountMediumBrightness")}];
  }

  else
  {
    v262 = 0;
  }

  if ([(BMGazeEnrollmentSample *)self hasStimulusCountHighBrightness])
  {
    v261 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample stimulusCountHighBrightness](self, "stimulusCountHighBrightness")}];
  }

  else
  {
    v261 = 0;
  }

  v260 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGazeEnrollmentSample accessibilityMode](self, "accessibilityMode")}];
  v259 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGazeEnrollmentSample eyeboxStatus](self, "eyeboxStatus")}];
  if (![(BMGazeEnrollmentSample *)self hasCentralStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self centralStimulusSignedResidualYaw], fabsf(v15) == INFINITY))
  {
    v258 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self centralStimulusSignedResidualYaw];
    v16 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self centralStimulusSignedResidualYaw];
    v258 = [v16 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1topStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualYaw], fabsf(v17) == INFINITY))
  {
    v257 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualYaw];
    v18 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualYaw];
    v257 = [v18 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1topRightStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualYaw], fabsf(v19) == INFINITY))
  {
    v256 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualYaw];
    v20 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualYaw];
    v256 = [v20 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomRightStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualYaw], fabsf(v21) == INFINITY))
  {
    v255 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualYaw];
    v22 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualYaw];
    v255 = [v22 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualYaw], fabsf(v23) == INFINITY))
  {
    v254 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualYaw];
    v24 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualYaw];
    v254 = [v24 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomLeftStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualYaw], fabsf(v25) == INFINITY))
  {
    v253 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualYaw];
    v26 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualYaw];
    v253 = [v26 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1topLeftStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualYaw], fabsf(v27) == INFINITY))
  {
    v252 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualYaw];
    v28 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualYaw];
    v252 = [v28 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2topStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualYaw], fabsf(v29) == INFINITY))
  {
    v251 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualYaw];
    v30 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualYaw];
    v251 = [v30 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2topRightStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualYaw], fabsf(v31) == INFINITY))
  {
    v250 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualYaw];
    v32 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualYaw];
    v250 = [v32 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomRightStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualYaw], fabsf(v33) == INFINITY))
  {
    v249 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualYaw];
    v34 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualYaw];
    v249 = [v34 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualYaw], fabsf(v35) == INFINITY))
  {
    v248 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualYaw];
    v36 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualYaw];
    v248 = [v36 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomLeftStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualYaw], fabsf(v37) == INFINITY))
  {
    v247 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualYaw];
    v38 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualYaw];
    v247 = [v38 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2topLeftStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualYaw], fabsf(v39) == INFINITY))
  {
    v246 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualYaw];
    v40 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualYaw];
    v246 = [v40 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3topStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualYaw], fabsf(v41) == INFINITY))
  {
    v245 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualYaw];
    v42 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualYaw];
    v245 = [v42 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3topRightStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualYaw], fabsf(v43) == INFINITY))
  {
    v244 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualYaw];
    v44 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualYaw];
    v244 = [v44 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomRightStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualYaw], fabsf(v45) == INFINITY))
  {
    v243 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualYaw];
    v46 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualYaw];
    v243 = [v46 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualYaw], fabsf(v47) == INFINITY))
  {
    v242 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualYaw];
    v48 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualYaw];
    v242 = [v48 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomLeftStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualYaw], fabsf(v49) == INFINITY))
  {
    v241 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualYaw];
    v50 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualYaw];
    v241 = [v50 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3topLeftStimulusSignedResidualYaw]|| ([(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualYaw], fabsf(v51) == INFINITY))
  {
    v240 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualYaw];
    v52 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualYaw];
    v240 = [v52 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasCentralStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self centralStimulusSignedResidualPitch], fabsf(v53) == INFINITY))
  {
    v239 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self centralStimulusSignedResidualPitch];
    v54 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self centralStimulusSignedResidualPitch];
    v239 = [v54 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1topStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualPitch], fabsf(v55) == INFINITY))
  {
    v238 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualPitch];
    v56 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualPitch];
    v238 = [v56 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1topRightStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualPitch], fabsf(v57) == INFINITY))
  {
    v237 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualPitch];
    v58 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualPitch];
    v237 = [v58 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomRightStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualPitch], fabsf(v59) == INFINITY))
  {
    v236 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualPitch];
    v60 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualPitch];
    v236 = [v60 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualPitch], fabsf(v61) == INFINITY))
  {
    v235 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualPitch];
    v62 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualPitch];
    v235 = [v62 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1bottomLeftStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualPitch], fabsf(v63) == INFINITY))
  {
    v234 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualPitch];
    v64 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualPitch];
    v234 = [v64 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness1topLeftStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualPitch], fabsf(v65) == INFINITY))
  {
    v233 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualPitch];
    v66 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualPitch];
    v233 = [v66 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2topStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualPitch], fabsf(v67) == INFINITY))
  {
    v232 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualPitch];
    v68 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualPitch];
    v232 = [v68 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2topRightStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualPitch], fabsf(v69) == INFINITY))
  {
    v231 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualPitch];
    v70 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualPitch];
    v231 = [v70 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomRightStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualPitch], fabsf(v71) == INFINITY))
  {
    v230 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualPitch];
    v72 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualPitch];
    v230 = [v72 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualPitch], fabsf(v73) == INFINITY))
  {
    v229 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualPitch];
    v74 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualPitch];
    v229 = [v74 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2bottomLeftStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualPitch], fabsf(v75) == INFINITY))
  {
    v228 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualPitch];
    v76 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualPitch];
    v228 = [v76 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness2topLeftStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualPitch], fabsf(v77) == INFINITY))
  {
    v227 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualPitch];
    v78 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualPitch];
    v227 = [v78 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3topStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualPitch], fabsf(v79) == INFINITY))
  {
    v226 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualPitch];
    v80 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualPitch];
    v226 = [v80 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3topRightStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualPitch], fabsf(v81) == INFINITY))
  {
    v225 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualPitch];
    v82 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualPitch];
    v225 = [v82 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomRightStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualPitch], fabsf(v83) == INFINITY))
  {
    v224 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualPitch];
    v84 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualPitch];
    v224 = [v84 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualPitch], fabsf(v85) == INFINITY))
  {
    v223 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualPitch];
    v86 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualPitch];
    v223 = [v86 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3bottomLeftStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualPitch], fabsf(v87) == INFINITY))
  {
    v222 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualPitch];
    v88 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualPitch];
    v222 = [v88 numberWithFloat:?];
  }

  if (![(BMGazeEnrollmentSample *)self hasBrightness3topLeftStimulusSignedResidualPitch]|| ([(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualPitch], fabsf(v89) == INFINITY))
  {
    v221 = 0;
  }

  else
  {
    [(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualPitch];
    v90 = MEMORY[0x1E696AD98];
    [(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualPitch];
    v221 = [v90 numberWithFloat:?];
  }

  rxuuid = [(BMGazeEnrollmentSample *)self rxuuid];
  v219 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGazeEnrollmentSample enrollmentReason](self, "enrollmentReason")}];
  v91 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGazeEnrollmentSample enrollmentDeviceType](self, "enrollmentDeviceType")}];
  v272[0] = @"userProfileId";
  null = userProfileId;
  if (!userProfileId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v210 = null;
  v273[0] = null;
  v272[1] = @"eyeSide";
  null2 = v3;
  if (!v3)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v209 = null2;
  v273[1] = null2;
  v272[2] = @"isOffline";
  null3 = v4;
  if (!v4)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v208 = null3;
  v273[2] = null3;
  v272[3] = @"enrollmentResidual75thPercentile";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v207 = null4;
  v273[3] = null4;
  v272[4] = @"enrollmentResidual95thPercentile";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v206 = null5;
  v273[4] = null5;
  v272[5] = @"enrollmentResidualMedian";
  null6 = v13;
  if (!v13)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v205 = null6;
  v273[5] = null6;
  v272[6] = @"dominantEye";
  null7 = v14;
  if (!v14)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v204 = null7;
  v273[6] = null7;
  v272[7] = @"monocularQuality";
  null8 = v271;
  if (!v271)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v273[7] = null8;
  v272[8] = @"enrollmentFailureReasons";
  null9 = _enrollmentFailureReasonsJSONArray;
  if (!_enrollmentFailureReasonsJSONArray)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v273[8] = null9;
  v272[9] = @"binocQuality";
  null10 = v269;
  if (!v269)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v213 = null10;
  v273[9] = null10;
  v272[10] = @"fixationCount";
  null11 = v268;
  if (!v268)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v201 = null11;
  v273[10] = null11;
  v272[11] = @"fixationCountLowBrightness";
  null12 = v267;
  if (!v267)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v212 = null12;
  v273[11] = null12;
  v272[12] = @"fixationCountMediumBrightness";
  null13 = v266;
  if (!v266)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null13;
  v273[12] = null13;
  v272[13] = @"fixationCountHighBrightness";
  null14 = v265;
  if (!v265)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v200 = null14;
  v273[13] = null14;
  v272[14] = @"stimulusCount";
  null15 = v264;
  if (!v264)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v199 = null15;
  v273[14] = null15;
  v272[15] = @"stimulusCountLowBrightness";
  null16 = v263;
  if (!v263)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v198 = null16;
  v273[15] = null16;
  v272[16] = @"stimulusCountMediumBrightness";
  null17 = v262;
  if (!v262)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v197 = null17;
  v273[16] = null17;
  v272[17] = @"stimulusCountHighBrightness";
  null18 = v261;
  if (!v261)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v196 = null18;
  v273[17] = null18;
  v272[18] = @"accessibilityMode";
  null19 = v260;
  if (!v260)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v195 = null19;
  v273[18] = null19;
  v272[19] = @"eyeboxStatus";
  null20 = v259;
  if (!v259)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v194 = null20;
  v273[19] = null20;
  v272[20] = @"centralStimulusSignedResidualYaw";
  null21 = v258;
  if (!v258)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v193 = null21;
  v273[20] = null21;
  v272[21] = @"brightness1topStimulusSignedResidualYaw";
  null22 = v257;
  if (!v257)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v192 = null22;
  v273[21] = null22;
  v272[22] = @"brightness1topRightStimulusSignedResidualYaw";
  null23 = v256;
  if (!v256)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v191 = null23;
  v273[22] = null23;
  v272[23] = @"brightness1bottomRightStimulusSignedResidualYaw";
  null24 = v255;
  if (!v255)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v190 = null24;
  v273[23] = null24;
  v272[24] = @"brightness1bottomStimulusSignedResidualYaw";
  null25 = v254;
  if (!v254)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v189 = null25;
  v273[24] = null25;
  v272[25] = @"brightness1bottomLeftStimulusSignedResidualYaw";
  null26 = v253;
  if (!v253)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v188 = null26;
  v273[25] = null26;
  v272[26] = @"brightness1topLeftStimulusSignedResidualYaw";
  null27 = v252;
  if (!v252)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v187 = null27;
  v273[26] = null27;
  v272[27] = @"brightness2topStimulusSignedResidualYaw";
  null28 = v251;
  if (!v251)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v186 = null28;
  v273[27] = null28;
  v272[28] = @"brightness2topRightStimulusSignedResidualYaw";
  null29 = v250;
  if (!v250)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v185 = null29;
  v273[28] = null29;
  v272[29] = @"brightness2bottomRightStimulusSignedResidualYaw";
  null30 = v249;
  if (!v249)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v184 = null30;
  v273[29] = null30;
  v272[30] = @"brightness2bottomStimulusSignedResidualYaw";
  null31 = v248;
  if (!v248)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v183 = null31;
  v273[30] = null31;
  v272[31] = @"brightness2bottomLeftStimulusSignedResidualYaw";
  null32 = v247;
  if (!v247)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v182 = null32;
  v273[31] = null32;
  v272[32] = @"brightness2topLeftStimulusSignedResidualYaw";
  null33 = v246;
  if (!v246)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v181 = null33;
  v273[32] = null33;
  v272[33] = @"brightness3topStimulusSignedResidualYaw";
  null34 = v245;
  if (!v245)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v180 = null34;
  v273[33] = null34;
  v272[34] = @"brightness3topRightStimulusSignedResidualYaw";
  null35 = v244;
  if (!v244)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v179 = null35;
  v273[34] = null35;
  v272[35] = @"brightness3bottomRightStimulusSignedResidualYaw";
  null36 = v243;
  if (!v243)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v178 = null36;
  v273[35] = null36;
  v272[36] = @"brightness3bottomStimulusSignedResidualYaw";
  null37 = v242;
  if (!v242)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v177 = null37;
  v273[36] = null37;
  v272[37] = @"brightness3bottomLeftStimulusSignedResidualYaw";
  null38 = v241;
  if (!v241)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v176 = null38;
  v273[37] = null38;
  v272[38] = @"brightness3topLeftStimulusSignedResidualYaw";
  null39 = v240;
  if (!v240)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v175 = null39;
  v273[38] = null39;
  v272[39] = @"centralStimulusSignedResidualPitch";
  null40 = v239;
  if (!v239)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v174 = null40;
  v273[39] = null40;
  v272[40] = @"brightness1topStimulusSignedResidualPitch";
  null41 = v238;
  if (!v238)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v173 = null41;
  v273[40] = null41;
  v272[41] = @"brightness1topRightStimulusSignedResidualPitch";
  null42 = v237;
  if (!v237)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v172 = null42;
  v273[41] = null42;
  v272[42] = @"brightness1bottomRightStimulusSignedResidualPitch";
  null43 = v236;
  if (!v236)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v171 = null43;
  v273[42] = null43;
  v272[43] = @"brightness1bottomStimulusSignedResidualPitch";
  null44 = v235;
  if (!v235)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v170 = null44;
  v273[43] = null44;
  v272[44] = @"brightness1bottomLeftStimulusSignedResidualPitch";
  null45 = v234;
  if (!v234)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v169 = null45;
  v273[44] = null45;
  v272[45] = @"brightness1topLeftStimulusSignedResidualPitch";
  null46 = v233;
  if (!v233)
  {
    null46 = [MEMORY[0x1E695DFB0] null];
  }

  v168 = null46;
  v273[45] = null46;
  v272[46] = @"brightness2topStimulusSignedResidualPitch";
  null47 = v232;
  if (!v232)
  {
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v167 = null47;
  v273[46] = null47;
  v272[47] = @"brightness2topRightStimulusSignedResidualPitch";
  null48 = v231;
  if (!v231)
  {
    null48 = [MEMORY[0x1E695DFB0] null];
  }

  v166 = null48;
  v273[47] = null48;
  v272[48] = @"brightness2bottomRightStimulusSignedResidualPitch";
  null49 = v230;
  if (!v230)
  {
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v165 = null49;
  v273[48] = null49;
  v272[49] = @"brightness2bottomStimulusSignedResidualPitch";
  null50 = v229;
  if (!v229)
  {
    null50 = [MEMORY[0x1E695DFB0] null];
  }

  v164 = null50;
  v273[49] = null50;
  v272[50] = @"brightness2bottomLeftStimulusSignedResidualPitch";
  null51 = v228;
  if (!v228)
  {
    null51 = [MEMORY[0x1E695DFB0] null];
  }

  v163 = null51;
  v273[50] = null51;
  v272[51] = @"brightness2topLeftStimulusSignedResidualPitch";
  null52 = v227;
  if (!v227)
  {
    null52 = [MEMORY[0x1E695DFB0] null];
  }

  v216 = v3;
  v162 = null52;
  v273[51] = null52;
  v272[52] = @"brightness3topStimulusSignedResidualPitch";
  null53 = v226;
  if (!v226)
  {
    null53 = [MEMORY[0x1E695DFB0] null];
  }

  v161 = null53;
  v273[52] = null53;
  v272[53] = @"brightness3topRightStimulusSignedResidualPitch";
  null54 = v225;
  if (!v225)
  {
    null54 = [MEMORY[0x1E695DFB0] null];
  }

  v217 = v91;
  v160 = null54;
  v273[53] = null54;
  v272[54] = @"brightness3bottomRightStimulusSignedResidualPitch";
  null55 = v224;
  if (!v224)
  {
    null55 = [MEMORY[0x1E695DFB0] null];
  }

  v202 = null9;
  v203 = null8;
  v159 = null55;
  v273[54] = null55;
  v272[55] = @"brightness3bottomStimulusSignedResidualPitch";
  null56 = v223;
  if (!v223)
  {
    null56 = [MEMORY[0x1E695DFB0] null];
  }

  v214 = v13;
  v215 = v10;
  v157 = null56;
  v273[55] = null56;
  v272[56] = @"brightness3bottomLeftStimulusSignedResidualPitch";
  null57 = v222;
  if (!v222)
  {
    null57 = [MEMORY[0x1E695DFB0] null];
  }

  v273[56] = null57;
  v272[57] = @"brightness3topLeftStimulusSignedResidualPitch";
  null58 = v221;
  if (!v221)
  {
    null58 = [MEMORY[0x1E695DFB0] null];
  }

  v151 = v7;
  v273[57] = null58;
  v272[58] = @"rxuuid";
  null59 = rxuuid;
  if (!rxuuid)
  {
    null59 = [MEMORY[0x1E695DFB0] null];
  }

  v273[58] = null59;
  v272[59] = @"enrollmentReason";
  null60 = v219;
  if (!v219)
  {
    null60 = [MEMORY[0x1E695DFB0] null];
  }

  v273[59] = null60;
  v272[60] = @"enrollmentDeviceType";
  null61 = v217;
  if (!v217)
  {
    null61 = [MEMORY[0x1E695DFB0] null];
  }

  v273[60] = null61;
  v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v273 forKeys:v272 count:{61, v157}];
  if (!v217)
  {
  }

  v155 = v105;
  if (!v219)
  {

    v155 = v105;
  }

  if (!rxuuid)
  {

    v155 = v105;
  }

  if (!v221)
  {

    v155 = v105;
  }

  if (!v222)
  {

    v155 = v105;
  }

  if (!v223)
  {

    v155 = v105;
  }

  if (!v224)
  {

    v155 = v105;
  }

  if (!v225)
  {

    v155 = v105;
  }

  if (!v226)
  {

    v155 = v105;
  }

  if (!v227)
  {

    v155 = v105;
  }

  if (!v228)
  {

    v155 = v105;
  }

  if (!v229)
  {

    v155 = v105;
  }

  if (!v230)
  {

    v155 = v105;
  }

  if (!v231)
  {

    v155 = v105;
  }

  if (!v232)
  {

    v155 = v105;
  }

  if (!v233)
  {

    v155 = v105;
  }

  if (!v234)
  {

    v155 = v105;
  }

  if (!v235)
  {

    v155 = v105;
  }

  if (!v236)
  {

    v155 = v105;
  }

  if (!v237)
  {

    v155 = v105;
  }

  if (!v238)
  {

    v155 = v105;
  }

  if (!v239)
  {

    v155 = v105;
  }

  if (!v240)
  {

    v155 = v105;
  }

  if (!v241)
  {

    v155 = v105;
  }

  if (!v242)
  {

    v155 = v105;
  }

  if (!v243)
  {

    v155 = v105;
  }

  if (!v244)
  {

    v155 = v105;
  }

  if (!v245)
  {

    v155 = v105;
  }

  if (!v246)
  {

    v155 = v105;
  }

  if (!v247)
  {

    v155 = v105;
  }

  if (!v248)
  {

    v155 = v105;
  }

  if (!v249)
  {

    v155 = v105;
  }

  if (!v250)
  {

    v155 = v105;
  }

  if (!v251)
  {

    v155 = v105;
  }

  if (!v252)
  {

    v155 = v105;
  }

  if (!v253)
  {

    v155 = v105;
  }

  if (!v254)
  {

    v155 = v105;
  }

  if (!v255)
  {

    v155 = v105;
  }

  if (!v256)
  {

    v155 = v105;
  }

  if (!v257)
  {

    v155 = v105;
  }

  if (!v258)
  {

    v155 = v105;
  }

  if (!v259)
  {

    v155 = v105;
  }

  if (!v260)
  {

    v155 = v105;
  }

  if (!v261)
  {

    v155 = v105;
  }

  if (!v262)
  {

    v155 = v105;
  }

  if (!v263)
  {

    v155 = v105;
  }

  if (!v264)
  {

    v155 = v105;
  }

  if (!v265)
  {

    v155 = v105;
  }

  if (!v266)
  {
  }

  if (!v267)
  {
  }

  if (!v268)
  {
  }

  if (!v269)
  {
  }

  if (!_enrollmentFailureReasonsJSONArray)
  {
  }

  if (v271)
  {
    if (v14)
    {
      goto LABEL_422;
    }
  }

  else
  {

    if (v14)
    {
LABEL_422:
      if (v214)
      {
        goto LABEL_423;
      }

      goto LABEL_433;
    }
  }

  if (v214)
  {
LABEL_423:
    if (v215)
    {
      goto LABEL_424;
    }

    goto LABEL_434;
  }

LABEL_433:

  if (v215)
  {
LABEL_424:
    if (v151)
    {
      goto LABEL_425;
    }

    goto LABEL_435;
  }

LABEL_434:

  if (v151)
  {
LABEL_425:
    if (v4)
    {
      goto LABEL_426;
    }

    goto LABEL_436;
  }

LABEL_435:

  if (v4)
  {
LABEL_426:
    if (v216)
    {
      goto LABEL_427;
    }

LABEL_437:

    if (userProfileId)
    {
      goto LABEL_428;
    }

    goto LABEL_438;
  }

LABEL_436:

  if (!v216)
  {
    goto LABEL_437;
  }

LABEL_427:
  if (userProfileId)
  {
    goto LABEL_428;
  }

LABEL_438:

LABEL_428:

  return v211;
}

- (id)_enrollmentFailureReasonsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  enrollmentFailureReasons = [(BMGazeEnrollmentSample *)self enrollmentFailureReasons];
  v5 = [enrollmentFailureReasons countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(enrollmentFailureReasons);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [enrollmentFailureReasons countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMGazeEnrollmentSample)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v680[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"userProfileId"];
  selfCopy = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v12 = *MEMORY[0x1E698F240];
        v679 = *MEMORY[0x1E696A578];
        v13 = v7;
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        v391 = objc_opt_class();
        v15 = v14;
        v7 = v13;
        v10 = [v15 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v391, @"userProfileId"];
        v680[0] = v10;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v680 forKeys:&v679 count:1];
        v16 = [v11 initWithDomain:v12 code:2 userInfo:v9];
        v8 = 0;
        v17 = 0;
        *error = v16;
        goto LABEL_617;
      }

      v8 = 0;
      v17 = 0;
      goto LABEL_618;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"eyeSide"];
  v544 = v8;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v677 = *MEMORY[0x1E696A578];
          v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eyeSide"];
          v678 = v56;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v678 forKeys:&v677 count:1];
          v58 = v55;
          v21 = v56;
          v545 = v57;
          v10 = 0;
          v17 = 0;
          *error = [v54 initWithDomain:v58 code:2 userInfo:?];
          goto LABEL_616;
        }

        v10 = 0;
        v17 = 0;
        goto LABEL_617;
      }

      v18 = v9;
      v10 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsGazeSampleEyeSideFromString(v18)];
    }
  }

  else
  {
    v10 = 0;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"isOffline"];
  v543 = v9;
  v545 = v19;
  if (v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v675 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isOffline"];
        v676 = v24;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v676 forKeys:&v675 count:1];
        v34 = v31;
        v23 = v33;
        v35 = [v34 initWithDomain:v32 code:2 userInfo:v33];
        v21 = 0;
        v17 = 0;
        *error = v35;
        goto LABEL_615;
      }

      v21 = 0;
      v17 = 0;
      goto LABEL_616;
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentResidual75thPercentile"];
  v542 = v22;
  if (v22 && (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v535 = v21;
        v37 = v23;
        v38 = *MEMORY[0x1E698F240];
        v673 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"enrollmentResidual75thPercentile"];
        v674 = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v674 forKeys:&v673 count:1];
        v41 = v38;
        v23 = v37;
        v21 = v535;
        v42 = [v36 initWithDomain:v41 code:2 userInfo:v40];
        v24 = 0;
        v17 = 0;
        *error = v42;
        v43 = v40;
        goto LABEL_614;
      }

      v24 = 0;
      v17 = 0;
      goto LABEL_615;
    }

    errorCopy2 = error;
    v24 = v23;
  }

  else
  {
    errorCopy2 = error;
    v24 = 0;
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentResidual95thPercentile"];
  v536 = v7;
  v537 = v10;
  v539 = v24;
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy2)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v671 = *MEMORY[0x1E696A578];
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"enrollmentResidual95thPercentile"];
        v672 = v46;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v672 forKeys:&v671 count:1];
        v48 = v45;
        v49 = v25;
        v538 = v47;
        v39 = 0;
        *errorCopy2 = [v44 initWithDomain:v48 code:2 userInfo:v47];
        v23 = v542;
        v17 = 0;
        v43 = v49;
        goto LABEL_613;
      }

      v39 = 0;
      v17 = 0;
      v43 = v25;
      v23 = v542;
      goto LABEL_614;
    }

    v532 = v25;
  }

  else
  {
    v532 = 0;
  }

  v26 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentResidualMedian"];
  v538 = v26;
  v533 = v25;
  if (v26 && (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy2)
      {
        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v669 = *MEMORY[0x1E696A578];
        v530 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"enrollmentResidualMedian"];
        v670 = v530;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v670 forKeys:&v669 count:1];
        v53 = v51;
        v24 = v539;
        v531 = v52;
        v46 = 0;
        v17 = 0;
        *errorCopy2 = [v50 initWithDomain:v53 code:2 userInfo:?];
        v39 = v532;
        v43 = v25;
        goto LABEL_612;
      }

      v46 = 0;
      v39 = v532;
      v43 = v25;
      v17 = 0;
      v23 = v542;
      goto LABEL_613;
    }

    v529 = v27;
  }

  else
  {
    v529 = 0;
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:@"dominantEye"];
  v534 = v21;
  v531 = v28;
  if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v21;
      v530 = v29;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy2)
        {
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v667 = *MEMORY[0x1E696A578];
          v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"dominantEye"];
          v668 = v92;
          v528 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v668 forKeys:&v667 count:1];
          v93 = [v90 initWithDomain:v91 code:2 userInfo:?];
          v530 = 0;
          v17 = 0;
          *errorCopy2 = v93;
          v84 = v92;
          v43 = v25;
          v39 = v532;
          v46 = v529;
          goto LABEL_611;
        }

        v530 = 0;
        v17 = 0;
        v43 = v25;
        v39 = v532;
        v46 = v529;
        goto LABEL_612;
      }

      v59 = v29;
      v530 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsGazeSampleEyeSideFromString(v59)];

      v30 = v21;
    }
  }

  else
  {
    v30 = v21;
    v530 = 0;
  }

  v60 = [dictionaryCopy objectForKeyedSubscript:@"monocularQuality"];
  v528 = v60;
  if (v60 && (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v527 = v61;
      v43 = v25;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy2)
        {
          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          v95 = *MEMORY[0x1E698F240];
          v665 = *MEMORY[0x1E696A578];
          obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"monocularQuality"];
          v666 = obj;
          v549 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v666 forKeys:&v665 count:1];
          v96 = [v94 initWithDomain:v95 code:2 userInfo:?];
          v84 = 0;
          v17 = 0;
          *errorCopy2 = v96;
          v21 = v534;
          v43 = v533;
          v39 = v532;
          v46 = v529;

          goto LABEL_610;
        }

        v84 = 0;
        v17 = 0;
        v21 = v534;
        v43 = v25;
        v39 = v532;
        v46 = v529;
        goto LABEL_611;
      }

      v62 = v61;
      v527 = [MEMORY[0x1E696AD98] numberWithInt:BMGazeEnrollmentSampleEnrollmentQualityFromString(v62)];

      v30 = v534;
      v43 = v25;
    }
  }

  else
  {
    v527 = 0;
    v43 = v25;
  }

  v63 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentFailureReasons"];
  null = [MEMORY[0x1E695DFB0] null];
  v65 = [v63 isEqual:null];

  if (v65)
  {

    v63 = 0;
  }

  else if (v63)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = v30;
      obj = v63;
      if (!errorCopy2)
      {
        v17 = 0;
        v39 = v532;
        v46 = v529;
        v84 = v527;
        goto LABEL_610;
      }

      v86 = objc_alloc(MEMORY[0x1E696ABC0]);
      v87 = *MEMORY[0x1E698F240];
      v663 = *MEMORY[0x1E696A578];
      v548 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"enrollmentFailureReasons"];
      v664 = v548;
      v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v664 forKeys:&v663 count:1];
      v89 = v87;
      v85 = v88;
      v17 = 0;
      *errorCopy2 = [v86 initWithDomain:v89 code:2 userInfo:v88];
      goto LABEL_90;
    }
  }

  v548 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v63, "count")}];
  v550 = 0u;
  v551 = 0u;
  v552 = 0u;
  v553 = 0u;
  v66 = v63;
  v67 = [v66 countByEnumeratingWithState:&v550 objects:v662 count:16];
  obj = v66;
  if (!v67)
  {
    goto LABEL_79;
  }

  v68 = v67;
  v69 = *v551;
  while (2)
  {
    for (i = 0; i != v68; ++i)
    {
      if (*v551 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v71 = *(*(&v550 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = errorCopy2;
        if (errorCopy2)
        {
          v76 = objc_alloc(MEMORY[0x1E696ABC0]);
          v77 = *MEMORY[0x1E698F240];
          v660 = *MEMORY[0x1E696A578];
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"enrollmentFailureReasons"];
          v661 = v78;
          v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v661 forKeys:&v660 count:1];
          v80 = v76;
          v81 = v77;
          v74 = v78;
LABEL_86:
          v524 = v79;
          v39 = v532;
          v46 = v529;
          v84 = v527;
          v17 = 0;
          *v75 = [v80 initWithDomain:v81 code:2 userInfo:?];
          v526 = obj;
          v7 = v536;
          v21 = v534;
          v24 = v539;

          goto LABEL_608;
        }

LABEL_87:
        v17 = 0;
        v85 = obj;
        v7 = v536;
        v21 = v534;
        v24 = v539;
LABEL_90:
        v39 = v532;
        v46 = v529;
        v84 = v527;
        goto LABEL_609;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v72 = v71;
        goto LABEL_77;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v75 = errorCopy2;
        if (errorCopy2)
        {
          v82 = objc_alloc(MEMORY[0x1E696ABC0]);
          v83 = *MEMORY[0x1E698F240];
          v658 = *MEMORY[0x1E696A578];
          v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"enrollmentFailureReasons"];
          v659 = v74;
          v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v659 forKeys:&v658 count:1];
          v80 = v82;
          v81 = v83;
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      v73 = v71;
      v72 = [MEMORY[0x1E696AD98] numberWithInt:BMGazeEnrollmentSampleEnrollmentFailureReasonFromString(v73)];

LABEL_77:
      [v548 addObject:v72];
    }

    v66 = obj;
    v68 = [obj countByEnumeratingWithState:&v550 objects:v662 count:16];
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_79:

  v74 = [dictionaryCopy objectForKeyedSubscript:@"binocQuality"];
  if (!v74 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v526 = 0;
    v24 = v539;
LABEL_106:
    v98 = [dictionaryCopy objectForKeyedSubscript:@"fixationCount"];
    v522 = v98;
    if (v98 && (v99 = v98, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v525 = v99;
        goto LABEL_109;
      }

      if (!errorCopy2)
      {
        v525 = 0;
        v17 = 0;
        v39 = v532;
        v46 = v529;
        v21 = v534;
        v84 = v527;
        v7 = v536;
        goto LABEL_606;
      }

      v114 = objc_alloc(MEMORY[0x1E696ABC0]);
      v115 = *MEMORY[0x1E698F240];
      v654 = *MEMORY[0x1E696A578];
      v116 = v74;
      v117 = objc_alloc(MEMORY[0x1E696AEC0]);
      v392 = objc_opt_class();
      v118 = v117;
      v74 = v116;
      v119 = [v118 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v392, @"fixationCount"];
      v655 = v119;
      v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v655 forKeys:&v654 count:1];
      v121 = v114;
      v122 = v119;
      v521 = v120;
      v525 = 0;
      v17 = 0;
      *errorCopy2 = [v121 initWithDomain:v115 code:2 userInfo:?];
      v7 = v536;
    }

    else
    {
      v525 = 0;
LABEL_109:
      v100 = [dictionaryCopy objectForKeyedSubscript:@"fixationCountLowBrightness"];
      v521 = v100;
      if (!v100 || (v101 = v100, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v520 = 0;
LABEL_112:
        v102 = dictionaryCopy;
        v103 = [dictionaryCopy objectForKeyedSubscript:@"fixationCountMediumBrightness"];
        if (!v103 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v517 = v103;
          v518 = 0;
          goto LABEL_115;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v517 = v103;
          v518 = v103;
LABEL_115:
          v104 = [v102 objectForKeyedSubscript:@"fixationCountHighBrightness"];
          v519 = v104;
          if (v104)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v104 = 0;
              goto LABEL_126;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v104 = v104;
              goto LABEL_126;
            }

            if (errorCopy2)
            {
              v135 = objc_alloc(MEMORY[0x1E696ABC0]);
              v136 = *MEMORY[0x1E698F240];
              v648 = *MEMORY[0x1E696A578];
              v137 = v74;
              v138 = objc_alloc(MEMORY[0x1E696AEC0]);
              v395 = objc_opt_class();
              v139 = v138;
              v74 = v137;
              v140 = [v139 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v395, @"fixationCountHighBrightness"];
              v649 = v140;
              v516 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v649 forKeys:&v648 count:1];
              v104 = 0;
              v17 = 0;
              *errorCopy2 = [v135 initWithDomain:v136 code:2 userInfo:?];
              goto LABEL_321;
            }

            v104 = 0;
            v17 = 0;
            v39 = v532;
            v46 = v529;
            v84 = v527;
            v122 = v520;
LABEL_602:
            v103 = v517;
LABEL_603:

            v128 = v518;
            goto LABEL_604;
          }

LABEL_126:
          v105 = [v102 objectForKeyedSubscript:@"stimulusCount"];
          v516 = v105;
          if (v105 && (v106 = v105, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v515 = v106;
              goto LABEL_129;
            }

            if (!errorCopy2)
            {
              v140 = 0;
              v17 = 0;
LABEL_321:
              v39 = v532;
              v46 = v529;
              v84 = v527;
              v122 = v520;
              goto LABEL_601;
            }

            v147 = objc_alloc(MEMORY[0x1E696ABC0]);
            v148 = *MEMORY[0x1E698F240];
            v646 = *MEMORY[0x1E696A578];
            v149 = v74;
            v150 = objc_alloc(MEMORY[0x1E696AEC0]);
            v397 = objc_opt_class();
            v151 = v150;
            v74 = v149;
            v152 = [v151 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v397, @"stimulusCount"];
            v647 = v152;
            v514 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v647 forKeys:&v646 count:1];
            v515 = 0;
            v17 = 0;
            *errorCopy2 = [v147 initWithDomain:v148 code:2 userInfo:?];
          }

          else
          {
            v515 = 0;
LABEL_129:
            v107 = [v102 objectForKeyedSubscript:@"stimulusCountLowBrightness"];
            v514 = v107;
            if (!v107 || (v108 = v107, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v512 = 0;
LABEL_132:
              v109 = [v102 objectForKeyedSubscript:@"stimulusCountMediumBrightness"];
              if (!v109 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v509 = v109;
                v513 = 0;
LABEL_135:
                v110 = [v102 objectForKeyedSubscript:@"stimulusCountHighBrightness"];
                v511 = v110;
                if (!v110 || (v111 = v110, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v510 = 0;
LABEL_138:
                  v112 = [v102 objectForKeyedSubscript:@"accessibilityMode"];
                  v508 = v112;
                  if (!v112 || (v113 = v112, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v507 = 0;
                    goto LABEL_178;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v146 = v113;
LABEL_177:
                    v507 = v146;

LABEL_178:
                    v174 = [v102 objectForKeyedSubscript:@"eyeboxStatus"];
                    v506 = v174;
                    if (v174)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v174 = 0;
                        goto LABEL_186;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v175 = v174;
LABEL_185:

                        v174 = v175;
                        goto LABEL_186;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v176 = v174;
                        v175 = [MEMORY[0x1E696AD98] numberWithInt:BMGazeEnrollmentSampleEyeboxStatusFromString(v176)];

                        goto LABEL_185;
                      }

                      v480 = v104;
                      if (errorCopy2)
                      {
                        v247 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v248 = *MEMORY[0x1E698F240];
                        v636 = *MEMORY[0x1E696A578];
                        v249 = v74;
                        v250 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v406 = objc_opt_class();
                        v251 = v250;
                        v74 = v249;
                        v504 = [v251 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v406, @"eyeboxStatus"];
                        v637 = v504;
                        v505 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v637 forKeys:&v636 count:1];
                        v174 = 0;
                        v17 = 0;
                        *errorCopy2 = [v247 initWithDomain:v248 code:2 userInfo:?];
                        v39 = v532;
                        v46 = v529;
                        goto LABEL_353;
                      }

                      v174 = 0;
                      v17 = 0;
LABEL_377:
                      v39 = v532;
                      v46 = v529;
                      v104 = v480;
                      v152 = v512;
                      v160 = v509;
                      v84 = v527;
LABEL_596:

                      v24 = v539;
LABEL_597:

LABEL_598:
LABEL_599:

LABEL_600:
                      v122 = v520;
                      v140 = v515;
LABEL_601:

                      goto LABEL_602;
                    }

LABEL_186:
                    v177 = [v102 objectForKeyedSubscript:@"centralStimulusSignedResidualYaw"];
                    v505 = v177;
                    if (v177)
                    {
                      v178 = v177;
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v501 = v174;
                          v504 = v178;
                          goto LABEL_189;
                        }

                        if (errorCopy2)
                        {
                          v220 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v221 = *MEMORY[0x1E698F240];
                          v634 = *MEMORY[0x1E696A578];
                          v222 = v74;
                          v223 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v401 = objc_opt_class();
                          v224 = v223;
                          v74 = v222;
                          v225 = [v224 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v401, @"centralStimulusSignedResidualYaw"];
                          v635 = v225;
                          v226 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v635 forKeys:&v634 count:1];
                          v504 = 0;
                          v502 = 0;
                          *errorCopy2 = [v220 initWithDomain:v221 code:2 userInfo:v226];
                          v39 = v532;
                          v46 = v529;
                          v152 = v512;
                          v160 = v509;
                          goto LABEL_594;
                        }

                        v504 = 0;
                        v17 = 0;
                        v39 = v532;
                        v46 = v529;
LABEL_353:
                        v152 = v512;
                        v160 = v509;
                        v84 = v527;
                        goto LABEL_595;
                      }
                    }

                    v501 = v174;
                    v504 = 0;
LABEL_189:
                    v179 = [v102 objectForKeyedSubscript:@"brightness1topStimulusSignedResidualYaw"];
                    if (v179)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v497 = v179;
                          v498 = v179;
                          goto LABEL_192;
                        }

                        if (errorCopy2)
                        {
                          v227 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v228 = *MEMORY[0x1E698F240];
                          v632 = *MEMORY[0x1E696A578];
                          v229 = v74;
                          v230 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v226 = v179;
                          v402 = objc_opt_class();
                          v231 = v230;
                          v74 = v229;
                          v499 = [v231 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v402, @"brightness1topStimulusSignedResidualYaw"];
                          v633 = v499;
                          v500 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v633 forKeys:&v632 count:1];
                          v225 = 0;
                          v502 = 0;
                          *errorCopy2 = [v227 initWithDomain:v228 code:2 userInfo:?];
                          v39 = v532;
                          v46 = v529;
                          v152 = v512;
                          v160 = v509;
                          v174 = v501;
                          goto LABEL_593;
                        }

                        v225 = 0;
                        v502 = 0;
                        v39 = v532;
                        v46 = v529;
                        v152 = v512;
                        v160 = v509;
                        v226 = v179;
                        v174 = v501;
                        goto LABEL_594;
                      }
                    }

                    v497 = v179;
                    v498 = 0;
LABEL_192:
                    v180 = [v102 objectForKeyedSubscript:@"brightness1topRightStimulusSignedResidualYaw"];
                    v500 = v180;
                    if (v180 && (v181 = v180, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v499 = v181;
                        goto LABEL_195;
                      }

                      if (!errorCopy2)
                      {
                        v499 = 0;
                        v502 = 0;
                        v39 = v532;
                        v46 = v529;
                        v152 = v512;
                        v160 = v509;
                        v226 = v497;
                        v174 = v501;
                        v225 = v498;
                        goto LABEL_593;
                      }

                      v232 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v233 = *MEMORY[0x1E698F240];
                      v630 = *MEMORY[0x1E696A578];
                      v234 = v74;
                      v235 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v403 = objc_opt_class();
                      v236 = v235;
                      v74 = v234;
                      v495 = [v236 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v403, @"brightness1topRightStimulusSignedResidualYaw"];
                      v631 = v495;
                      v496 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v631 forKeys:&v630 count:1];
                      v499 = 0;
                      v502 = 0;
                      *errorCopy2 = [v232 initWithDomain:v233 code:2 userInfo:?];
                    }

                    else
                    {
                      v499 = 0;
LABEL_195:
                      v182 = [v102 objectForKeyedSubscript:@"brightness1bottomRightStimulusSignedResidualYaw"];
                      v496 = v182;
                      if (!v182 || (v183 = v182, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v495 = 0;
LABEL_198:
                        v184 = [v102 objectForKeyedSubscript:@"brightness1bottomStimulusSignedResidualYaw"];
                        v494 = v184;
                        if (!v184 || (v185 = v184, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v493 = 0;
LABEL_201:
                          v186 = [v102 objectForKeyedSubscript:@"brightness1bottomLeftStimulusSignedResidualYaw"];
                          v492 = v186;
                          if (!v186 || (v187 = v186, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v491 = 0;
LABEL_204:
                            v188 = [v102 objectForKeyedSubscript:@"brightness1topLeftStimulusSignedResidualYaw"];
                            v490 = v188;
                            if (!v188 || (v189 = v188, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v489 = 0;
LABEL_207:
                              v190 = [v102 objectForKeyedSubscript:@"brightness2topStimulusSignedResidualYaw"];
                              v488 = v190;
                              if (!v190 || (v191 = v190, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v487 = 0;
LABEL_210:
                                v192 = [v102 objectForKeyedSubscript:@"brightness2topRightStimulusSignedResidualYaw"];
                                v486 = v192;
                                if (!v192 || (v193 = v192, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v485 = 0;
LABEL_213:
                                  v194 = [v102 objectForKeyedSubscript:@"brightness2bottomRightStimulusSignedResidualYaw"];
                                  v483 = v194;
                                  if (!v194 || (v195 = v194, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v484 = 0;
LABEL_216:
                                    v196 = [v102 objectForKeyedSubscript:@"brightness2bottomStimulusSignedResidualYaw"];
                                    v482 = v196;
                                    if (!v196 || (v197 = v196, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v481 = 0;
LABEL_219:
                                      v198 = [v102 objectForKeyedSubscript:@"brightness2bottomLeftStimulusSignedResidualYaw"];
                                      v478 = v198;
                                      if (!v198 || (v199 = v198, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v477 = 0;
LABEL_222:
                                        v200 = [v102 objectForKeyedSubscript:@"brightness2topLeftStimulusSignedResidualYaw"];
                                        v475 = v200;
                                        if (!v200 || (v201 = v200, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v476 = 0;
LABEL_225:
                                          v202 = [v102 objectForKeyedSubscript:@"brightness3topStimulusSignedResidualYaw"];
                                          v473 = v202;
                                          if (!v202 || (v203 = v202, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v474 = 0;
LABEL_228:
                                            v204 = [v102 objectForKeyedSubscript:@"brightness3topRightStimulusSignedResidualYaw"];
                                            v472 = v204;
                                            if (!v204 || (v205 = v204, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v471 = 0;
LABEL_231:
                                              v206 = [v102 objectForKeyedSubscript:@"brightness3bottomRightStimulusSignedResidualYaw"];
                                              v470 = v206;
                                              if (!v206 || (v207 = v206, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v468 = 0;
LABEL_234:
                                                v208 = [v102 objectForKeyedSubscript:@"brightness3bottomStimulusSignedResidualYaw"];
                                                v469 = v208;
                                                if (!v208 || (v209 = v208, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v467 = 0;
LABEL_237:
                                                  v210 = [v102 objectForKeyedSubscript:@"brightness3bottomLeftStimulusSignedResidualYaw"];
                                                  v466 = v210;
                                                  if (!v210 || (v211 = v210, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v465 = 0;
LABEL_240:
                                                    v212 = [v102 objectForKeyedSubscript:@"brightness3topLeftStimulusSignedResidualYaw"];
                                                    v463 = v74;
                                                    v464 = v212;
                                                    if (!v212 || (v213 = v212, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v462 = 0;
LABEL_243:
                                                      v214 = [v102 objectForKeyedSubscript:@"centralStimulusSignedResidualPitch"];
                                                      if (v214)
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v457 = v214;
                                                            v461 = v214;
                                                            goto LABEL_246;
                                                          }

                                                          if (errorCopy2)
                                                          {
                                                            v332 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v333 = *MEMORY[0x1E698F240];
                                                            v596 = *MEMORY[0x1E696A578];
                                                            v459 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"centralStimulusSignedResidualPitch"];
                                                            v597 = v459;
                                                            v460 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v597 forKeys:&v596 count:1];
                                                            v461 = 0;
                                                            v502 = 0;
                                                            *errorCopy2 = [v332 initWithDomain:v333 code:2 userInfo:?];
                                                            v331 = v214;
                                                            v39 = v532;
                                                            v46 = v529;
                                                            v152 = v512;
                                                            v160 = v509;
                                                            v226 = v497;
                                                            goto LABEL_575;
                                                          }

                                                          v461 = 0;
                                                          v502 = 0;
                                                          v39 = v532;
                                                          v46 = v529;
                                                          v152 = v512;
                                                          v160 = v509;
                                                          v226 = v497;
                                                          v331 = v214;
                                                          goto LABEL_576;
                                                        }
                                                      }

                                                      v457 = v214;
                                                      v461 = 0;
LABEL_246:
                                                      v460 = [v102 objectForKeyedSubscript:@"brightness1topStimulusSignedResidualPitch"];
                                                      if (v460 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v459 = v460;
                                                          goto LABEL_249;
                                                        }

                                                        if (!errorCopy2)
                                                        {
                                                          v459 = 0;
                                                          v502 = 0;
                                                          v39 = v532;
                                                          v46 = v529;
                                                          v152 = v512;
                                                          v160 = v509;
                                                          v226 = v497;
                                                          v331 = v457;
                                                          goto LABEL_575;
                                                        }

                                                        v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v335 = *MEMORY[0x1E698F240];
                                                        v594 = *MEMORY[0x1E696A578];
                                                        v456 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness1topStimulusSignedResidualPitch"];
                                                        v595 = v456;
                                                        v458 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v595 forKeys:&v594 count:1];
                                                        v459 = 0;
                                                        v502 = 0;
                                                        *errorCopy2 = [v334 initWithDomain:v335 code:2 userInfo:?];
                                                      }

                                                      else
                                                      {
                                                        v459 = 0;
LABEL_249:
                                                        v458 = [v102 objectForKeyedSubscript:@"brightness1topRightStimulusSignedResidualPitch"];
                                                        if (!v458 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v456 = 0;
LABEL_252:
                                                          v455 = [v102 objectForKeyedSubscript:@"brightness1bottomRightStimulusSignedResidualPitch"];
                                                          if (!v455 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v454 = 0;
LABEL_255:
                                                            v453 = [v102 objectForKeyedSubscript:@"brightness1bottomStimulusSignedResidualPitch"];
                                                            if (!v453 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v449 = 0;
LABEL_258:
                                                              [v102 objectForKeyedSubscript:@"brightness1bottomLeftStimulusSignedResidualPitch"];
                                                              v452 = v479 = v104;
                                                              if (v452 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v451 = v452;
                                                                  goto LABEL_261;
                                                                }

                                                                if (!errorCopy2)
                                                                {
                                                                  v451 = 0;
                                                                  v502 = 0;
                                                                  v39 = v532;
                                                                  v46 = v529;
                                                                  v152 = v512;
                                                                  v160 = v509;
                                                                  v226 = v497;
                                                                  v331 = v457;
                                                                  v340 = v449;
                                                                  goto LABEL_571;
                                                                }

                                                                v343 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v344 = *MEMORY[0x1E698F240];
                                                                v586 = *MEMORY[0x1E696A578];
                                                                v448 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness1bottomLeftStimulusSignedResidualPitch"];
                                                                v587 = v448;
                                                                v450 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v587 forKeys:&v586 count:1];
                                                                v451 = 0;
                                                                v502 = 0;
                                                                *errorCopy2 = [v343 initWithDomain:v344 code:2 userInfo:?];
                                                              }

                                                              else
                                                              {
                                                                v451 = 0;
LABEL_261:
                                                                v450 = [v102 objectForKeyedSubscript:@"brightness1topLeftStimulusSignedResidualPitch"];
                                                                if (!v450 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v448 = 0;
LABEL_264:
                                                                  v215 = [v102 objectForKeyedSubscript:@"brightness2topStimulusSignedResidualPitch"];
                                                                  v447 = v215;
                                                                  if (!v215 || (v216 = v215, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v446 = 0;
LABEL_267:
                                                                    v445 = [v102 objectForKeyedSubscript:@"brightness2topRightStimulusSignedResidualPitch"];
                                                                    if (!v445 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v444 = 0;
LABEL_270:
                                                                      v443 = [v102 objectForKeyedSubscript:@"brightness2bottomRightStimulusSignedResidualPitch"];
                                                                      if (!v443 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v442 = 0;
LABEL_273:
                                                                        v441 = [v102 objectForKeyedSubscript:@"brightness2bottomStimulusSignedResidualPitch"];
                                                                        if (!v441 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v440 = 0;
LABEL_276:
                                                                          v439 = [v102 objectForKeyedSubscript:@"brightness2bottomLeftStimulusSignedResidualPitch"];
                                                                          if (!v439 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v438 = 0;
LABEL_279:
                                                                            v217 = v102;
                                                                            v218 = [v102 objectForKeyedSubscript:@"brightness2topLeftStimulusSignedResidualPitch"];
                                                                            if (!v218 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v437 = 0;
LABEL_282:
                                                                              v219 = [v102 objectForKeyedSubscript:@"brightness3topStimulusSignedResidualPitch"];
                                                                              if (v219 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                              {
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v434 = v219;
                                                                                  goto LABEL_285;
                                                                                }

                                                                                if (errorCopy2)
                                                                                {
                                                                                  v361 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v362 = *MEMORY[0x1E698F240];
                                                                                  v570 = *MEMORY[0x1E696A578];
                                                                                  v433 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness3topStimulusSignedResidualPitch"];
                                                                                  v571 = v433;
                                                                                  v435 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v571 forKeys:&v570 count:1];
                                                                                  v434 = 0;
                                                                                  v502 = 0;
                                                                                  *errorCopy2 = [v361 initWithDomain:v362 code:2 userInfo:?];
                                                                                  goto LABEL_562;
                                                                                }

                                                                                v360 = 0;
                                                                                v502 = 0;
                                                                              }

                                                                              else
                                                                              {
                                                                                v434 = 0;
LABEL_285:
                                                                                v435 = [v217 objectForKeyedSubscript:@"brightness3topRightStimulusSignedResidualPitch"];
                                                                                if (v435 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v433 = v435;
                                                                                    goto LABEL_288;
                                                                                  }

                                                                                  if (errorCopy2)
                                                                                  {
                                                                                    v363 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v364 = *MEMORY[0x1E698F240];
                                                                                    v568 = *MEMORY[0x1E696A578];
                                                                                    v431 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness3topRightStimulusSignedResidualPitch"];
                                                                                    v569 = v431;
                                                                                    v436 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v569 forKeys:&v568 count:1];
                                                                                    v433 = 0;
                                                                                    v502 = 0;
                                                                                    *errorCopy2 = [v363 initWithDomain:v364 code:2 userInfo:?];
                                                                                    goto LABEL_561;
                                                                                  }

                                                                                  v433 = 0;
                                                                                  v502 = 0;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v433 = 0;
LABEL_288:
                                                                                  v436 = [v217 objectForKeyedSubscript:@"brightness3bottomRightStimulusSignedResidualPitch"];
                                                                                  if (v436 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v431 = v436;
                                                                                      goto LABEL_291;
                                                                                    }

                                                                                    if (errorCopy2)
                                                                                    {
                                                                                      v365 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v366 = *MEMORY[0x1E698F240];
                                                                                      v566 = *MEMORY[0x1E696A578];
                                                                                      v429 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness3bottomRightStimulusSignedResidualPitch"];
                                                                                      v567 = v429;
                                                                                      v432 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v567 forKeys:&v566 count:1];
                                                                                      v431 = 0;
                                                                                      v502 = 0;
                                                                                      *errorCopy2 = [v365 initWithDomain:v366 code:2 userInfo:?];
                                                                                      goto LABEL_560;
                                                                                    }

                                                                                    v431 = 0;
                                                                                    v502 = 0;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v431 = 0;
LABEL_291:
                                                                                    v432 = [v217 objectForKeyedSubscript:@"brightness3bottomStimulusSignedResidualPitch"];
                                                                                    if (v432 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                    {
                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        v429 = v432;
                                                                                        goto LABEL_294;
                                                                                      }

                                                                                      if (errorCopy2)
                                                                                      {
                                                                                        v367 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v368 = *MEMORY[0x1E698F240];
                                                                                        v564 = *MEMORY[0x1E696A578];
                                                                                        v427 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness3bottomStimulusSignedResidualPitch"];
                                                                                        v565 = v427;
                                                                                        v430 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v565 forKeys:&v564 count:1];
                                                                                        v429 = 0;
                                                                                        v502 = 0;
                                                                                        *errorCopy2 = [v367 initWithDomain:v368 code:2 userInfo:?];
                                                                                        goto LABEL_559;
                                                                                      }

                                                                                      v429 = 0;
                                                                                      v502 = 0;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v429 = 0;
LABEL_294:
                                                                                      v430 = [v217 objectForKeyedSubscript:@"brightness3bottomLeftStimulusSignedResidualPitch"];
                                                                                      if (v430 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v427 = v430;
                                                                                          goto LABEL_297;
                                                                                        }

                                                                                        if (errorCopy2)
                                                                                        {
                                                                                          v369 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v370 = *MEMORY[0x1E698F240];
                                                                                          v562 = *MEMORY[0x1E696A578];
                                                                                          v425 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness3bottomLeftStimulusSignedResidualPitch"];
                                                                                          v563 = v425;
                                                                                          v428 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v563 forKeys:&v562 count:1];
                                                                                          v427 = 0;
                                                                                          v502 = 0;
                                                                                          *errorCopy2 = [v369 initWithDomain:v370 code:2 userInfo:?];
                                                                                          goto LABEL_558;
                                                                                        }

                                                                                        v427 = 0;
                                                                                        v502 = 0;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v427 = 0;
LABEL_297:
                                                                                        v428 = [v217 objectForKeyedSubscript:@"brightness3topLeftStimulusSignedResidualPitch"];
                                                                                        if (v428 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                        {
                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            v425 = v428;
                                                                                            goto LABEL_300;
                                                                                          }

                                                                                          if (errorCopy2)
                                                                                          {
                                                                                            v371 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v372 = *MEMORY[0x1E698F240];
                                                                                            v560 = *MEMORY[0x1E696A578];
                                                                                            v423 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness3topLeftStimulusSignedResidualPitch"];
                                                                                            v561 = v423;
                                                                                            v426 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v561 forKeys:&v560 count:1];
                                                                                            v425 = 0;
                                                                                            v502 = 0;
                                                                                            *errorCopy2 = [v371 initWithDomain:v372 code:2 userInfo:?];
                                                                                            goto LABEL_557;
                                                                                          }

                                                                                          v425 = 0;
                                                                                          v502 = 0;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v425 = 0;
LABEL_300:
                                                                                          v426 = [v217 objectForKeyedSubscript:@"rxuuid"];
                                                                                          if (v426 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                          {
                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v423 = v426;
                                                                                              goto LABEL_303;
                                                                                            }

                                                                                            if (errorCopy2)
                                                                                            {
                                                                                              v373 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v374 = *MEMORY[0x1E698F240];
                                                                                              v558 = *MEMORY[0x1E696A578];
                                                                                              v422 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"rxuuid"];
                                                                                              v559 = v422;
                                                                                              v424 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v559 forKeys:&v558 count:1];
                                                                                              v423 = 0;
                                                                                              v502 = 0;
                                                                                              *errorCopy2 = [v373 initWithDomain:v374 code:2 userInfo:?];
                                                                                              goto LABEL_556;
                                                                                            }

                                                                                            v423 = 0;
                                                                                            v502 = 0;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v423 = 0;
LABEL_303:
                                                                                            v424 = [v217 objectForKeyedSubscript:@"enrollmentReason"];
                                                                                            if (!v424 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                            {
                                                                                              v422 = 0;
LABEL_546:
                                                                                              v376 = [v217 objectForKeyedSubscript:@"enrollmentDeviceType"];
                                                                                              if (!v376 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                              {
                                                                                                v377 = 0;
                                                                                                goto LABEL_554;
                                                                                              }

                                                                                              objc_opt_class();
                                                                                              if (objc_opt_isKindOfClass())
                                                                                              {
                                                                                                v377 = v376;
LABEL_553:

LABEL_554:
                                                                                                intValue = [v537 intValue];
                                                                                                intValue2 = [v530 intValue];
                                                                                                intValue3 = [v527 intValue];
                                                                                                intValue4 = [v526 intValue];
                                                                                                intValue5 = [v507 intValue];
                                                                                                intValue6 = [v501 intValue];
                                                                                                intValue7 = [v422 intValue];
                                                                                                LODWORD(v421) = intValue4;
                                                                                                selfCopy = objc_retainAutoreleasedReturnValue( -[BMGazeEnrollmentSample initWithUserProfileId:eyeSide:isOffline:enrollmentResidual75thPercentile:enrollmentResidual95thPercentile:enrollmentResidualMedian:dominantEye:monocularQuality:enrollmentFailureReasons:binocQuality:fixationCount:fixationCountLowBrightness:fixationCountMediumBrightness:fixationCountHighBrightness:stimulusCount:stimulusCountLowBrightness:stimulusCountMediumBrightness:stimulusCountHighBrightness:accessibilityMode:eyeboxStatus:centralStimulusSignedResidualYaw:brightness1topStimulusSignedResidualYaw:brightness1topRightStimulusSignedResidualYaw:brightness1bottomRightStimulusSignedResidualYaw:brightness1bottomStimulusSignedResidualYaw:brightness1bottomLeftStimulusSignedResidualYaw:brightness1topLeftStimulusSignedResidualYaw:brightness2topStimulusSignedResidualYaw:brightness2topRightStimulusSignedResidualYaw:brightness2bottomRightStimulusSignedResidualYaw:brightness2bottomStimulusSignedResidualYaw:brightness2bottomLeftStimulusSignedResidualYaw:brightness2topLeftStimulusSignedResidualYaw:brightness3topStimulusSignedResidualYaw:brightness3topRightStimulusSignedResidualYaw:brightness3bottomRightStimulusSignedResidualYaw:brightness3bottomStimulusSignedResidualYaw:brightness3bottomLeftStimulusSignedResidualYaw:brightness3topLeftStimulusSignedResidualYaw:centralStimulusSignedResidualPitch:brightness1topStimulusSignedResidualPitch:brightness1topRightStimulusSignedResidualPitch:brightness1bottomRightStimulusSignedResidualPitch:brightness1bottomStimulusSignedResidualPitch:brightness1bottomLeftStimulusSignedResidualPitch:brightness1topLeftStimulusSignedResidualPitch:brightness2topStimulusSignedResidualPitch:brightness2topRightStimulusSignedResidualPitch:brightness2bottomRightStimulusSignedResidualPitch:brightness2bottomStimulusSignedResidualPitch:brightness2bottomLeftStimulusSignedResidualPitch:brightness2topLeftStimulusSignedResidualPitch:brightness3topStimulusSignedResidualPitch:brightness3topRightStimulusSignedResidualPitch:brightness3bottomRightStimulusSignedResidualPitch:brightness3bottomStimulusSignedResidualPitch:brightness3bottomLeftStimulusSignedResidualPitch:brightness3topLeftStimulusSignedResidualPitch:rxuuid:enrollmentReason:enrollmentDeviceType:]( selfCopy,  "initWithUserProfileId:eyeSide:isOffline:enrollmentResidual75thPercentile:enrollmentResidual95thPercentile:enrollmentResidualMedian:dominantEye:monocularQuality:enrollmentFailureReasons:binocQuality:fixationCount:fixationCountLowBrightness:fixationCountMediumBrightness:fixationCountHighBrightness:stimulusCount:stimulusCountLowBrightness:stimulusCountMediumBrightness:stimulusCountHighBrightness:accessibilityMode:eyeboxStatus:centralStimulusSignedResidualYaw:brightness1topStimulusSignedResidualYaw:brightness1topRightStimulusSignedResidualYaw:brightness1bottomRightStimulusSignedResidualYaw:brightness1bottomStimulusSignedResidualYaw:brightness1bottomLeftStimulusSignedResidualYaw:brightness1topLeftStimulusSignedResidualYaw:brightness2topStimulusSignedResidualYaw:brightness2topRightStimulusSignedResidualYaw:brightness2bottomRightStimulusSignedResidualYaw:brightness2bottomStimulusSignedResidualYaw:brightness2bottomLeftStimulusSignedResidualYaw:brightness2topLeftStimulusSignedResidualYaw:brightness3topStimulusSignedResidualYaw:brightness3topRightStimulusSignedResidualYaw:brightness3bottomRightStimulusSignedResidualYaw:brightness3bottomStimulusSignedResidualYaw:brightness3bottomLeftStimulusSignedResidualYaw:brightness3topLeftStimulusSignedResidualYaw:centralStimulusSignedResidualPitch:brightness1topStimulusSignedResidualPitch:brightness1topRightStimulusSignedResidualPitch:brightness1bottomRightStimulusSignedResidualPitch:brightness1bottomStimulusSignedResidualPitch:brightness1bottomLeftStimulusSignedResidualPitch:brightness1topLeftStimulusSignedResidualPitch:brightness2topStimulusSignedResidualPitch:brightness2topRightStimulusSignedResidualPitch:brightness2bottomRightStimulusSignedResidualPitch:brightness2bottomStimulusSignedResidualPitch:brightness2bottomLeftStimulusSignedResidualPitch:brightness2topLeftStimulusSignedResidualPitch:brightness3topStimulusSignedResidualPitch:brightness3topRightStimulusSignedResidualPitch:brightness3bottomRightStimulusSignedResidualPitch:brightness3bottomStimulusSignedResidualPitch:brightness3bottomLeftStimulusSignedResidualPitch:brightness3topLeftStimulusSignedResidualPitch:rxuuid:enrollmentReason:enrollmentDeviceType:",  v544,  intValue,  v534,  v539,  v532,  v529,  __PAIR64__(intValue3, intValue2),  v548,  v421,  v525,  v520,  v518,  v479,  v515,  v512,  v513,  v510,  __PAIR64__(intValue6, intValue5),  v504,  v498,  v499,  v495,  v493,  v491,  v489,  v487,  v485,  v484,  v481,  v477,  v476,  v474,  v471,  v468,  v467,  v465,  v462,  v461,  v459,  v456,  v454,  v449,  v451,  v448,  v446,  v444,
                                                                                                           v442,
                                                                                                           v440,
                                                                                                           v438,
                                                                                                           v437,
                                                                                                           v434,
                                                                                                           v433,
                                                                                                           v431,
                                                                                                           v429,
                                                                                                           v427,
                                                                                                           v425,
                                                                                                           v423,
                                                                                                           __PAIR64__([v377 intValue], intValue7)));
                                                                                                v502 = selfCopy;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                objc_opt_class();
                                                                                                if (objc_opt_isKindOfClass())
                                                                                                {
                                                                                                  v378 = v376;
                                                                                                  v377 = [MEMORY[0x1E696AD98] numberWithInt:BMGazeEnrollmentSampleEnrollmentDeviceTypeFromString(v378)];

                                                                                                  goto LABEL_553;
                                                                                                }

                                                                                                if (errorCopy2)
                                                                                                {
                                                                                                  v387 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v388 = *MEMORY[0x1E698F240];
                                                                                                  v554 = *MEMORY[0x1E696A578];
                                                                                                  v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"enrollmentDeviceType"];
                                                                                                  v555 = v389;
                                                                                                  v390 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v555 forKeys:&v554 count:1];
                                                                                                  *errorCopy2 = [v387 initWithDomain:v388 code:2 userInfo:v390];
                                                                                                }

                                                                                                v377 = 0;
                                                                                                v502 = 0;
                                                                                              }

LABEL_555:

                                                                                              goto LABEL_556;
                                                                                            }

                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v422 = v424;
LABEL_545:

                                                                                              goto LABEL_546;
                                                                                            }

                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v375 = v424;
                                                                                              v422 = [MEMORY[0x1E696AD98] numberWithInt:BMGazeEnrollmentSampleEnrollmentReasonFromString(v375)];

                                                                                              goto LABEL_545;
                                                                                            }

                                                                                            if (errorCopy2)
                                                                                            {
                                                                                              v385 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v386 = *MEMORY[0x1E698F240];
                                                                                              v556 = *MEMORY[0x1E696A578];
                                                                                              v377 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"enrollmentReason"];
                                                                                              v557 = v377;
                                                                                              v376 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v557 forKeys:&v556 count:1];
                                                                                              v422 = 0;
                                                                                              v502 = 0;
                                                                                              *errorCopy2 = [v385 initWithDomain:v386 code:2 userInfo:?];
                                                                                              goto LABEL_555;
                                                                                            }

                                                                                            v422 = 0;
                                                                                            v502 = 0;
LABEL_556:
                                                                                          }

LABEL_557:
                                                                                        }

LABEL_558:
                                                                                      }

LABEL_559:
                                                                                    }

LABEL_560:
                                                                                  }

LABEL_561:
                                                                                }

LABEL_562:

                                                                                v360 = v434;
                                                                              }

LABEL_563:

                                                                              v102 = v217;
                                                                              v226 = v497;
                                                                              v340 = v449;
                                                                              v357 = v437;
LABEL_564:

                                                                              v39 = v532;
                                                                              v46 = v529;
                                                                              v74 = v463;
                                                                              v104 = v479;
                                                                              v152 = v512;
                                                                              v160 = v509;
                                                                              v331 = v457;
LABEL_565:

LABEL_566:
LABEL_567:

LABEL_568:
LABEL_569:

LABEL_570:
LABEL_571:

LABEL_572:
LABEL_573:

LABEL_574:
LABEL_575:

LABEL_576:
                                                                              v327 = v462;
LABEL_577:

LABEL_578:
                                                                              v225 = v498;

LABEL_579:
                                                                              v311 = v468;
LABEL_580:

                                                                              v174 = v501;
LABEL_581:

                                                                              v300 = v473;
LABEL_582:

                                                                              v293 = v475;
LABEL_583:

LABEL_584:
LABEL_585:

LABEL_586:
LABEL_587:

LABEL_588:
LABEL_589:

LABEL_590:
LABEL_591:

LABEL_592:
LABEL_593:

LABEL_594:
                                                                              v84 = v527;
                                                                              v17 = v502;
LABEL_595:

                                                                              goto LABEL_596;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v437 = v218;
                                                                              goto LABEL_282;
                                                                            }

                                                                            if (errorCopy2)
                                                                            {
                                                                              v358 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v359 = *MEMORY[0x1E698F240];
                                                                              v572 = *MEMORY[0x1E696A578];
                                                                              v360 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness2topLeftStimulusSignedResidualPitch"];
                                                                              v573 = v360;
                                                                              v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v573 forKeys:&v572 count:1];
                                                                              v437 = 0;
                                                                              v502 = 0;
                                                                              *errorCopy2 = [v358 initWithDomain:v359 code:2 userInfo:v219];
                                                                              goto LABEL_563;
                                                                            }

                                                                            v357 = 0;
                                                                            v502 = 0;
LABEL_536:
                                                                            v226 = v497;
                                                                            v340 = v449;
                                                                            goto LABEL_564;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v438 = v439;
                                                                            goto LABEL_279;
                                                                          }

                                                                          if (errorCopy2)
                                                                          {
                                                                            v355 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v356 = *MEMORY[0x1E698F240];
                                                                            v574 = *MEMORY[0x1E696A578];
                                                                            v357 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness2bottomLeftStimulusSignedResidualPitch"];
                                                                            v575 = v357;
                                                                            v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v575 forKeys:&v574 count:1];
                                                                            v438 = 0;
                                                                            v502 = 0;
                                                                            *errorCopy2 = [v355 initWithDomain:v356 code:2 userInfo:v218];
                                                                            goto LABEL_536;
                                                                          }

                                                                          v438 = 0;
                                                                          v502 = 0;
LABEL_532:
                                                                          v39 = v532;
                                                                          v46 = v529;
                                                                          v152 = v512;
                                                                          v160 = v509;
                                                                          v226 = v497;
                                                                          v331 = v457;
                                                                          v340 = v449;
                                                                          goto LABEL_565;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v440 = v441;
                                                                          goto LABEL_276;
                                                                        }

                                                                        if (errorCopy2)
                                                                        {
                                                                          v353 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v354 = *MEMORY[0x1E698F240];
                                                                          v576 = *MEMORY[0x1E696A578];
                                                                          v438 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness2bottomStimulusSignedResidualPitch"];
                                                                          v577 = v438;
                                                                          v439 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v577 forKeys:&v576 count:1];
                                                                          v440 = 0;
                                                                          v502 = 0;
                                                                          *errorCopy2 = [v353 initWithDomain:v354 code:2 userInfo:?];
                                                                          goto LABEL_532;
                                                                        }

                                                                        v440 = 0;
                                                                        v502 = 0;
LABEL_526:
                                                                        v39 = v532;
                                                                        v46 = v529;
                                                                        v152 = v512;
                                                                        v160 = v509;
                                                                        v226 = v497;
                                                                        v331 = v457;
                                                                        v340 = v449;
                                                                        goto LABEL_566;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v442 = v443;
                                                                        goto LABEL_273;
                                                                      }

                                                                      if (errorCopy2)
                                                                      {
                                                                        v351 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v352 = *MEMORY[0x1E698F240];
                                                                        v578 = *MEMORY[0x1E696A578];
                                                                        v440 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness2bottomRightStimulusSignedResidualPitch"];
                                                                        v579 = v440;
                                                                        v441 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v579 forKeys:&v578 count:1];
                                                                        v442 = 0;
                                                                        v502 = 0;
                                                                        *errorCopy2 = [v351 initWithDomain:v352 code:2 userInfo:?];
                                                                        goto LABEL_526;
                                                                      }

                                                                      v442 = 0;
                                                                      v502 = 0;
LABEL_520:
                                                                      v39 = v532;
                                                                      v46 = v529;
                                                                      v152 = v512;
                                                                      v160 = v509;
                                                                      v226 = v497;
                                                                      v331 = v457;
                                                                      v340 = v449;
                                                                      goto LABEL_567;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v444 = v445;
                                                                      goto LABEL_270;
                                                                    }

                                                                    if (errorCopy2)
                                                                    {
                                                                      v349 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v350 = *MEMORY[0x1E698F240];
                                                                      v580 = *MEMORY[0x1E696A578];
                                                                      v442 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness2topRightStimulusSignedResidualPitch"];
                                                                      v581 = v442;
                                                                      v443 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v581 forKeys:&v580 count:1];
                                                                      v444 = 0;
                                                                      v502 = 0;
                                                                      *errorCopy2 = [v349 initWithDomain:v350 code:2 userInfo:?];
                                                                      goto LABEL_520;
                                                                    }

                                                                    v444 = 0;
                                                                    v502 = 0;
LABEL_514:
                                                                    v39 = v532;
                                                                    v46 = v529;
                                                                    v152 = v512;
                                                                    v160 = v509;
                                                                    v226 = v497;
                                                                    v331 = v457;
                                                                    v340 = v449;
                                                                    goto LABEL_568;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v446 = v216;
                                                                    goto LABEL_267;
                                                                  }

                                                                  if (errorCopy2)
                                                                  {
                                                                    v347 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v348 = *MEMORY[0x1E698F240];
                                                                    v582 = *MEMORY[0x1E696A578];
                                                                    v444 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness2topStimulusSignedResidualPitch"];
                                                                    v583 = v444;
                                                                    v445 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v583 forKeys:&v582 count:1];
                                                                    v446 = 0;
                                                                    v502 = 0;
                                                                    *errorCopy2 = [v347 initWithDomain:v348 code:2 userInfo:?];
                                                                    goto LABEL_514;
                                                                  }

                                                                  v446 = 0;
                                                                  v502 = 0;
LABEL_508:
                                                                  v39 = v532;
                                                                  v46 = v529;
                                                                  v152 = v512;
                                                                  v160 = v509;
                                                                  v226 = v497;
                                                                  v331 = v457;
                                                                  v340 = v449;
                                                                  goto LABEL_569;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v448 = v450;
                                                                  goto LABEL_264;
                                                                }

                                                                if (errorCopy2)
                                                                {
                                                                  v345 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v346 = *MEMORY[0x1E698F240];
                                                                  v584 = *MEMORY[0x1E696A578];
                                                                  v446 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness1topLeftStimulusSignedResidualPitch"];
                                                                  v585 = v446;
                                                                  v447 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v585 forKeys:&v584 count:1];
                                                                  v448 = 0;
                                                                  v502 = 0;
                                                                  *errorCopy2 = [v345 initWithDomain:v346 code:2 userInfo:?];
                                                                  goto LABEL_508;
                                                                }

                                                                v448 = 0;
                                                                v502 = 0;
                                                              }

                                                              v39 = v532;
                                                              v46 = v529;
                                                              v152 = v512;
                                                              v160 = v509;
                                                              v226 = v497;
                                                              v331 = v457;
                                                              v340 = v449;
                                                              goto LABEL_570;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v449 = v453;
                                                              goto LABEL_258;
                                                            }

                                                            if (errorCopy2)
                                                            {
                                                              v341 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v342 = *MEMORY[0x1E698F240];
                                                              v588 = *MEMORY[0x1E696A578];
                                                              v451 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness1bottomStimulusSignedResidualPitch"];
                                                              v589 = v451;
                                                              v452 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v589 forKeys:&v588 count:1];
                                                              v340 = 0;
                                                              v502 = 0;
                                                              *errorCopy2 = [v341 initWithDomain:v342 code:2 userInfo:?];
                                                              v39 = v532;
                                                              v46 = v529;
                                                              v152 = v512;
                                                              v160 = v509;
                                                              v226 = v497;
                                                              v331 = v457;
                                                              goto LABEL_571;
                                                            }

                                                            v340 = 0;
                                                            v502 = 0;
LABEL_491:
                                                            v39 = v532;
                                                            v46 = v529;
                                                            v152 = v512;
                                                            v160 = v509;
                                                            v226 = v497;
                                                            v331 = v457;
                                                            goto LABEL_572;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v454 = v455;
                                                            goto LABEL_255;
                                                          }

                                                          if (errorCopy2)
                                                          {
                                                            v338 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v339 = *MEMORY[0x1E698F240];
                                                            v590 = *MEMORY[0x1E696A578];
                                                            v340 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness1bottomRightStimulusSignedResidualPitch"];
                                                            v591 = v340;
                                                            v453 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v591 forKeys:&v590 count:1];
                                                            v454 = 0;
                                                            v502 = 0;
                                                            *errorCopy2 = [v338 initWithDomain:v339 code:2 userInfo:?];
                                                            goto LABEL_491;
                                                          }

                                                          v454 = 0;
                                                          v502 = 0;
LABEL_485:
                                                          v39 = v532;
                                                          v46 = v529;
                                                          v152 = v512;
                                                          v160 = v509;
                                                          v226 = v497;
                                                          v331 = v457;
                                                          goto LABEL_573;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v456 = v458;
                                                          goto LABEL_252;
                                                        }

                                                        if (errorCopy2)
                                                        {
                                                          v336 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v337 = *MEMORY[0x1E698F240];
                                                          v592 = *MEMORY[0x1E696A578];
                                                          v454 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness1topRightStimulusSignedResidualPitch"];
                                                          v593 = v454;
                                                          v455 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v593 forKeys:&v592 count:1];
                                                          v456 = 0;
                                                          v502 = 0;
                                                          *errorCopy2 = [v336 initWithDomain:v337 code:2 userInfo:?];
                                                          goto LABEL_485;
                                                        }

                                                        v456 = 0;
                                                        v502 = 0;
                                                      }

                                                      v39 = v532;
                                                      v46 = v529;
                                                      v152 = v512;
                                                      v160 = v509;
                                                      v226 = v497;
                                                      v331 = v457;
                                                      goto LABEL_574;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v462 = v213;
                                                      goto LABEL_243;
                                                    }

                                                    v327 = errorCopy2;
                                                    if (errorCopy2)
                                                    {
                                                      v328 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v329 = *MEMORY[0x1E698F240];
                                                      v598 = *MEMORY[0x1E696A578];
                                                      v461 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brightness3topLeftStimulusSignedResidualYaw"];
                                                      v599 = v461;
                                                      v330 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v599 forKeys:&v598 count:1];
                                                      v462 = 0;
                                                      v502 = 0;
                                                      *errorCopy2 = [v328 initWithDomain:v329 code:2 userInfo:v330];
                                                      v331 = v330;
                                                      v39 = v532;
                                                      v46 = v529;
                                                      v152 = v512;
                                                      v160 = v509;
                                                      v226 = v497;
                                                      goto LABEL_576;
                                                    }

                                                    v502 = 0;
                                                    v39 = v532;
                                                    v46 = v529;
LABEL_463:
                                                    v152 = v512;
                                                    v160 = v509;
                                                    v226 = v497;
                                                    goto LABEL_577;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v465 = v211;
                                                    goto LABEL_240;
                                                  }

                                                  if (errorCopy2)
                                                  {
                                                    v322 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v323 = *MEMORY[0x1E698F240];
                                                    v600 = *MEMORY[0x1E696A578];
                                                    v324 = v74;
                                                    v325 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v420 = objc_opt_class();
                                                    v326 = v325;
                                                    v74 = v324;
                                                    v327 = [v326 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v420, @"brightness3bottomLeftStimulusSignedResidualYaw"];
                                                    v601 = v327;
                                                    v464 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v601 forKeys:&v600 count:1];
                                                    v465 = 0;
                                                    v502 = 0;
                                                    *errorCopy2 = [v322 initWithDomain:v323 code:2 userInfo:?];
                                                    v39 = v532;
                                                    v46 = v529;
                                                    goto LABEL_463;
                                                  }

                                                  v465 = 0;
                                                  v502 = 0;
LABEL_457:
                                                  v39 = v532;
                                                  v46 = v529;
                                                  v152 = v512;
                                                  v160 = v509;
                                                  v226 = v497;
                                                  goto LABEL_578;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v467 = v209;
                                                  goto LABEL_237;
                                                }

                                                if (errorCopy2)
                                                {
                                                  v317 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v318 = *MEMORY[0x1E698F240];
                                                  v602 = *MEMORY[0x1E696A578];
                                                  v319 = v74;
                                                  v320 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v419 = objc_opt_class();
                                                  v321 = v320;
                                                  v74 = v319;
                                                  v465 = [v321 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v419, @"brightness3bottomStimulusSignedResidualYaw"];
                                                  v603 = v465;
                                                  v466 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v603 forKeys:&v602 count:1];
                                                  v467 = 0;
                                                  v502 = 0;
                                                  *errorCopy2 = [v317 initWithDomain:v318 code:2 userInfo:?];
                                                  goto LABEL_457;
                                                }

                                                v467 = 0;
                                                v502 = 0;
LABEL_451:
                                                v39 = v532;
                                                v46 = v529;
                                                v152 = v512;
                                                v160 = v509;
                                                v226 = v497;
                                                v225 = v498;
                                                goto LABEL_579;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v468 = v207;
                                                goto LABEL_234;
                                              }

                                              if (errorCopy2)
                                              {
                                                v312 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v313 = *MEMORY[0x1E698F240];
                                                v604 = *MEMORY[0x1E696A578];
                                                v314 = v74;
                                                v315 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v418 = objc_opt_class();
                                                v316 = v315;
                                                v74 = v314;
                                                v467 = [v316 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v418, @"brightness3bottomRightStimulusSignedResidualYaw"];
                                                v605 = v467;
                                                v469 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v605 forKeys:&v604 count:1];
                                                v468 = 0;
                                                v502 = 0;
                                                *errorCopy2 = [v312 initWithDomain:v313 code:2 userInfo:?];
                                                goto LABEL_451;
                                              }

                                              v311 = 0;
                                              v502 = 0;
LABEL_445:
                                              v39 = v532;
                                              v46 = v529;
                                              v152 = v512;
                                              v160 = v509;
                                              v226 = v497;
                                              v225 = v498;
                                              goto LABEL_580;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v471 = v205;
                                              goto LABEL_231;
                                            }

                                            if (errorCopy2)
                                            {
                                              v306 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v307 = *MEMORY[0x1E698F240];
                                              v606 = *MEMORY[0x1E696A578];
                                              v308 = v74;
                                              v309 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v417 = objc_opt_class();
                                              v310 = v309;
                                              v74 = v308;
                                              v311 = [v310 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v417, @"brightness3topRightStimulusSignedResidualYaw"];
                                              v607 = v311;
                                              v470 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v607 forKeys:&v606 count:1];
                                              v471 = 0;
                                              v502 = 0;
                                              *errorCopy2 = [v306 initWithDomain:v307 code:2 userInfo:?];
                                              goto LABEL_445;
                                            }

                                            v471 = 0;
                                            v502 = 0;
LABEL_439:
                                            v39 = v532;
                                            v46 = v529;
                                            v152 = v512;
                                            v160 = v509;
                                            v226 = v497;
                                            v174 = v501;
                                            v225 = v498;
                                            goto LABEL_581;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v474 = v203;
                                            goto LABEL_228;
                                          }

                                          if (errorCopy2)
                                          {
                                            v301 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v302 = *MEMORY[0x1E698F240];
                                            v608 = *MEMORY[0x1E696A578];
                                            v303 = v74;
                                            v304 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v416 = objc_opt_class();
                                            v305 = v304;
                                            v74 = v303;
                                            v471 = [v305 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v416, @"brightness3topStimulusSignedResidualYaw"];
                                            v609 = v471;
                                            v472 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v609 forKeys:&v608 count:1];
                                            v474 = 0;
                                            v502 = 0;
                                            *errorCopy2 = [v301 initWithDomain:v302 code:2 userInfo:?];
                                            goto LABEL_439;
                                          }

                                          v474 = 0;
                                          v502 = 0;
                                          v39 = v532;
                                          v46 = v529;
                                          v152 = v512;
                                          v160 = v509;
                                          v226 = v497;
                                          v300 = v473;
LABEL_433:
                                          v174 = v501;
                                          v225 = v498;
                                          goto LABEL_582;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v476 = v201;
                                          goto LABEL_225;
                                        }

                                        if (errorCopy2)
                                        {
                                          v294 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v295 = *MEMORY[0x1E698F240];
                                          v610 = *MEMORY[0x1E696A578];
                                          v296 = v74;
                                          v297 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v415 = objc_opt_class();
                                          v298 = v297;
                                          v74 = v296;
                                          v474 = [v298 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v415, @"brightness2topLeftStimulusSignedResidualYaw"];
                                          v611 = v474;
                                          v299 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v611 forKeys:&v610 count:1];
                                          v476 = 0;
                                          v502 = 0;
                                          *errorCopy2 = [v294 initWithDomain:v295 code:2 userInfo:v299];
                                          v300 = v299;
                                          v39 = v532;
                                          v46 = v529;
                                          v152 = v512;
                                          v160 = v509;
                                          v226 = v497;
                                          goto LABEL_433;
                                        }

                                        v476 = 0;
                                        v502 = 0;
                                        v39 = v532;
                                        v46 = v529;
                                        v152 = v512;
                                        v160 = v509;
                                        v226 = v497;
                                        v293 = v475;
LABEL_427:
                                        v174 = v501;
                                        v225 = v498;
                                        goto LABEL_583;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v477 = v199;
                                        goto LABEL_222;
                                      }

                                      if (errorCopy2)
                                      {
                                        v287 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v288 = *MEMORY[0x1E698F240];
                                        v612 = *MEMORY[0x1E696A578];
                                        v289 = v74;
                                        v290 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v414 = objc_opt_class();
                                        v291 = v290;
                                        v74 = v289;
                                        v476 = [v291 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v414, @"brightness2bottomLeftStimulusSignedResidualYaw"];
                                        v613 = v476;
                                        v292 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v613 forKeys:&v612 count:1];
                                        v477 = 0;
                                        v502 = 0;
                                        *errorCopy2 = [v287 initWithDomain:v288 code:2 userInfo:v292];
                                        v293 = v292;
                                        v39 = v532;
                                        v46 = v529;
                                        v152 = v512;
                                        v160 = v509;
                                        v226 = v497;
                                        goto LABEL_427;
                                      }

                                      v477 = 0;
                                      v502 = 0;
LABEL_421:
                                      v39 = v532;
                                      v46 = v529;
                                      v152 = v512;
                                      v160 = v509;
                                      v226 = v497;
                                      v174 = v501;
                                      v225 = v498;
                                      goto LABEL_584;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v481 = v197;
                                      goto LABEL_219;
                                    }

                                    if (errorCopy2)
                                    {
                                      v282 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v283 = *MEMORY[0x1E698F240];
                                      v614 = *MEMORY[0x1E696A578];
                                      v284 = v74;
                                      v285 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v413 = objc_opt_class();
                                      v286 = v285;
                                      v74 = v284;
                                      v477 = [v286 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v413, @"brightness2bottomStimulusSignedResidualYaw"];
                                      v615 = v477;
                                      v478 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v615 forKeys:&v614 count:1];
                                      v481 = 0;
                                      v502 = 0;
                                      *errorCopy2 = [v282 initWithDomain:v283 code:2 userInfo:?];
                                      goto LABEL_421;
                                    }

                                    v481 = 0;
                                    v502 = 0;
LABEL_415:
                                    v39 = v532;
                                    v46 = v529;
                                    v152 = v512;
                                    v160 = v509;
                                    v226 = v497;
                                    v174 = v501;
                                    v225 = v498;
                                    goto LABEL_585;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v484 = v195;
                                    goto LABEL_216;
                                  }

                                  if (errorCopy2)
                                  {
                                    v277 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v278 = *MEMORY[0x1E698F240];
                                    v616 = *MEMORY[0x1E696A578];
                                    v279 = v74;
                                    v280 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v412 = objc_opt_class();
                                    v281 = v280;
                                    v74 = v279;
                                    v481 = [v281 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v412, @"brightness2bottomRightStimulusSignedResidualYaw"];
                                    v617 = v481;
                                    v482 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v617 forKeys:&v616 count:1];
                                    v484 = 0;
                                    v502 = 0;
                                    *errorCopy2 = [v277 initWithDomain:v278 code:2 userInfo:?];
                                    goto LABEL_415;
                                  }

                                  v484 = 0;
                                  v502 = 0;
LABEL_409:
                                  v39 = v532;
                                  v46 = v529;
                                  v152 = v512;
                                  v160 = v509;
                                  v226 = v497;
                                  v174 = v501;
                                  v225 = v498;
                                  goto LABEL_586;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v485 = v193;
                                  goto LABEL_213;
                                }

                                if (errorCopy2)
                                {
                                  v272 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v273 = *MEMORY[0x1E698F240];
                                  v618 = *MEMORY[0x1E696A578];
                                  v274 = v74;
                                  v275 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v411 = objc_opt_class();
                                  v276 = v275;
                                  v74 = v274;
                                  v484 = [v276 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v411, @"brightness2topRightStimulusSignedResidualYaw"];
                                  v619 = v484;
                                  v483 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v619 forKeys:&v618 count:1];
                                  v485 = 0;
                                  v502 = 0;
                                  *errorCopy2 = [v272 initWithDomain:v273 code:2 userInfo:?];
                                  goto LABEL_409;
                                }

                                v485 = 0;
                                v502 = 0;
LABEL_403:
                                v39 = v532;
                                v46 = v529;
                                v152 = v512;
                                v160 = v509;
                                v226 = v497;
                                v174 = v501;
                                v225 = v498;
                                goto LABEL_587;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v487 = v191;
                                goto LABEL_210;
                              }

                              if (errorCopy2)
                              {
                                v267 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v268 = *MEMORY[0x1E698F240];
                                v620 = *MEMORY[0x1E696A578];
                                v269 = v74;
                                v270 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v410 = objc_opt_class();
                                v271 = v270;
                                v74 = v269;
                                v485 = [v271 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v410, @"brightness2topStimulusSignedResidualYaw"];
                                v621 = v485;
                                v486 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v621 forKeys:&v620 count:1];
                                v487 = 0;
                                v502 = 0;
                                *errorCopy2 = [v267 initWithDomain:v268 code:2 userInfo:?];
                                goto LABEL_403;
                              }

                              v487 = 0;
                              v502 = 0;
LABEL_397:
                              v39 = v532;
                              v46 = v529;
                              v152 = v512;
                              v160 = v509;
                              v226 = v497;
                              v174 = v501;
                              v225 = v498;
                              goto LABEL_588;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v489 = v189;
                              goto LABEL_207;
                            }

                            if (errorCopy2)
                            {
                              v262 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v263 = *MEMORY[0x1E698F240];
                              v622 = *MEMORY[0x1E696A578];
                              v264 = v74;
                              v265 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v409 = objc_opt_class();
                              v266 = v265;
                              v74 = v264;
                              v487 = [v266 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v409, @"brightness1topLeftStimulusSignedResidualYaw"];
                              v623 = v487;
                              v488 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v623 forKeys:&v622 count:1];
                              v489 = 0;
                              v502 = 0;
                              *errorCopy2 = [v262 initWithDomain:v263 code:2 userInfo:?];
                              goto LABEL_397;
                            }

                            v489 = 0;
                            v502 = 0;
LABEL_391:
                            v39 = v532;
                            v46 = v529;
                            v152 = v512;
                            v160 = v509;
                            v226 = v497;
                            v174 = v501;
                            v225 = v498;
                            goto LABEL_589;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v491 = v187;
                            goto LABEL_204;
                          }

                          if (errorCopy2)
                          {
                            v257 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v258 = *MEMORY[0x1E698F240];
                            v624 = *MEMORY[0x1E696A578];
                            v259 = v74;
                            v260 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v408 = objc_opt_class();
                            v261 = v260;
                            v74 = v259;
                            v489 = [v261 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v408, @"brightness1bottomLeftStimulusSignedResidualYaw"];
                            v625 = v489;
                            v490 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v625 forKeys:&v624 count:1];
                            v491 = 0;
                            v502 = 0;
                            *errorCopy2 = [v257 initWithDomain:v258 code:2 userInfo:?];
                            goto LABEL_391;
                          }

                          v491 = 0;
                          v502 = 0;
LABEL_385:
                          v39 = v532;
                          v46 = v529;
                          v152 = v512;
                          v160 = v509;
                          v226 = v497;
                          v174 = v501;
                          v225 = v498;
                          goto LABEL_590;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v493 = v185;
                          goto LABEL_201;
                        }

                        if (errorCopy2)
                        {
                          v252 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v253 = *MEMORY[0x1E698F240];
                          v626 = *MEMORY[0x1E696A578];
                          v254 = v74;
                          v255 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v407 = objc_opt_class();
                          v256 = v255;
                          v74 = v254;
                          v491 = [v256 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v407, @"brightness1bottomStimulusSignedResidualYaw"];
                          v627 = v491;
                          v492 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v627 forKeys:&v626 count:1];
                          v493 = 0;
                          v502 = 0;
                          *errorCopy2 = [v252 initWithDomain:v253 code:2 userInfo:?];
                          goto LABEL_385;
                        }

                        v493 = 0;
                        v502 = 0;
LABEL_379:
                        v39 = v532;
                        v46 = v529;
                        v152 = v512;
                        v160 = v509;
                        v226 = v497;
                        v174 = v501;
                        v225 = v498;
                        goto LABEL_591;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v495 = v183;
                        goto LABEL_198;
                      }

                      if (errorCopy2)
                      {
                        v237 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v238 = *MEMORY[0x1E698F240];
                        v628 = *MEMORY[0x1E696A578];
                        v239 = v74;
                        v240 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v404 = objc_opt_class();
                        v241 = v240;
                        v74 = v239;
                        v493 = [v241 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v404, @"brightness1bottomRightStimulusSignedResidualYaw"];
                        v629 = v493;
                        v494 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v629 forKeys:&v628 count:1];
                        v495 = 0;
                        v502 = 0;
                        *errorCopy2 = [v237 initWithDomain:v238 code:2 userInfo:?];
                        goto LABEL_379;
                      }

                      v495 = 0;
                      v502 = 0;
                    }

                    v39 = v532;
                    v46 = v529;
                    v152 = v512;
                    v160 = v509;
                    v226 = v497;
                    v174 = v501;
                    v225 = v498;
                    goto LABEL_592;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v173 = v113;
                    v146 = [MEMORY[0x1E696AD98] numberWithInt:BMGazeEnrollmentSampleAccessibilityModeFromString(v173)];

                    goto LABEL_177;
                  }

                  v480 = v104;
                  if (errorCopy2)
                  {
                    v242 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v243 = *MEMORY[0x1E698F240];
                    v638 = *MEMORY[0x1E696A578];
                    v244 = v74;
                    v245 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v405 = objc_opt_class();
                    v246 = v245;
                    v74 = v244;
                    v174 = [v246 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v405, @"accessibilityMode"];
                    v639 = v174;
                    v506 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v639 forKeys:&v638 count:1];
                    v507 = 0;
                    v17 = 0;
                    *errorCopy2 = [v242 initWithDomain:v243 code:2 userInfo:?];
                    goto LABEL_377;
                  }

                  v507 = 0;
                  v17 = 0;
                  v39 = v532;
                  v46 = v529;
LABEL_371:
                  v152 = v512;
                  v160 = v509;
                  v24 = v539;
                  v84 = v527;
                  goto LABEL_597;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v510 = v111;
                  goto LABEL_138;
                }

                if (errorCopy2)
                {
                  v168 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v169 = *MEMORY[0x1E698F240];
                  v640 = *MEMORY[0x1E696A578];
                  v170 = v74;
                  v171 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v400 = objc_opt_class();
                  v172 = v171;
                  v74 = v170;
                  v507 = [v172 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v400, @"stimulusCountHighBrightness"];
                  v641 = v507;
                  v508 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v641 forKeys:&v640 count:1];
                  v510 = 0;
                  v17 = 0;
                  *errorCopy2 = [v168 initWithDomain:v169 code:2 userInfo:?];
                  v39 = v532;
                  v46 = v529;
                  goto LABEL_371;
                }

                v510 = 0;
                v17 = 0;
                v39 = v532;
                v46 = v529;
                v152 = v512;
                v160 = v509;
LABEL_343:
                v24 = v539;
                v84 = v527;
                goto LABEL_598;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v509 = v109;
                v513 = v109;
                goto LABEL_135;
              }

              if (errorCopy2)
              {
                v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                v162 = *MEMORY[0x1E698F240];
                v642 = *MEMORY[0x1E696A578];
                v163 = v74;
                v164 = objc_alloc(MEMORY[0x1E696AEC0]);
                v399 = objc_opt_class();
                v165 = v164;
                v74 = v163;
                v510 = [v165 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v399, @"stimulusCountMediumBrightness"];
                v643 = v510;
                v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v643 forKeys:&v642 count:1];
                v167 = v161;
                v160 = v109;
                v511 = v166;
                v513 = 0;
                v17 = 0;
                *errorCopy2 = [v167 initWithDomain:v162 code:2 userInfo:?];
                v39 = v532;
                v46 = v529;
                v152 = v512;
                goto LABEL_343;
              }

              v513 = 0;
              v17 = 0;
              v39 = v532;
              v46 = v529;
              v152 = v512;
              v160 = v109;
              v24 = v539;
LABEL_333:
              v84 = v527;
              goto LABEL_599;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v512 = v108;
              goto LABEL_132;
            }

            if (errorCopy2)
            {
              v153 = objc_alloc(MEMORY[0x1E696ABC0]);
              v154 = *MEMORY[0x1E698F240];
              v644 = *MEMORY[0x1E696A578];
              v155 = v74;
              v156 = objc_alloc(MEMORY[0x1E696AEC0]);
              v398 = objc_opt_class();
              v157 = v156;
              v74 = v155;
              v513 = [v157 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v398, @"stimulusCountLowBrightness"];
              v645 = v513;
              v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v645 forKeys:&v644 count:1];
              v159 = v153;
              v160 = v158;
              v152 = 0;
              v17 = 0;
              *errorCopy2 = [v159 initWithDomain:v154 code:2 userInfo:v158];
              v39 = v532;
              v46 = v529;
              goto LABEL_333;
            }

            v152 = 0;
            v17 = 0;
          }

          v39 = v532;
          v46 = v529;
          v84 = v527;
          goto LABEL_600;
        }

        if (errorCopy2)
        {
          v130 = objc_alloc(MEMORY[0x1E696ABC0]);
          v131 = *MEMORY[0x1E698F240];
          v650 = *MEMORY[0x1E696A578];
          v132 = v74;
          v133 = objc_alloc(MEMORY[0x1E696AEC0]);
          v394 = objc_opt_class();
          v134 = v133;
          v74 = v132;
          v104 = [v134 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v394, @"fixationCountMediumBrightness"];
          v651 = v104;
          v519 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v651 forKeys:&v650 count:1];
          v518 = 0;
          v17 = 0;
          *errorCopy2 = [v130 initWithDomain:v131 code:2 userInfo:?];
          v39 = v532;
          v46 = v529;
          v84 = v527;
          v122 = v520;
          goto LABEL_603;
        }

        v128 = 0;
        v17 = 0;
        v39 = v532;
        v46 = v529;
        v84 = v527;
        v122 = v520;
LABEL_604:

        dictionaryCopy = v102;
        v21 = v534;
        v7 = v536;
LABEL_605:

LABEL_606:
LABEL_607:

        goto LABEL_608;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v520 = v101;
        goto LABEL_112;
      }

      v7 = v536;
      if (errorCopy2)
      {
        v102 = dictionaryCopy;
        v123 = objc_alloc(MEMORY[0x1E696ABC0]);
        v124 = *MEMORY[0x1E698F240];
        v652 = *MEMORY[0x1E696A578];
        v125 = v74;
        v126 = objc_alloc(MEMORY[0x1E696AEC0]);
        v393 = objc_opt_class();
        v127 = v126;
        v74 = v125;
        v128 = [v127 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v393, @"fixationCountLowBrightness"];
        v653 = v128;
        v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v653 forKeys:&v652 count:1];
        v129 = [v123 initWithDomain:v124 code:2 userInfo:v103];
        v122 = 0;
        v17 = 0;
        *errorCopy2 = v129;
        v39 = v532;
        v46 = v529;
        v84 = v527;
        goto LABEL_604;
      }

      v122 = 0;
      v17 = 0;
    }

    v39 = v532;
    v46 = v529;
    v21 = v534;
    v84 = v527;
    goto LABEL_605;
  }

  objc_opt_class();
  v21 = v534;
  v24 = v539;
  if (objc_opt_isKindOfClass())
  {
    v526 = v74;
LABEL_105:

    goto LABEL_106;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v97 = v74;
    v526 = [MEMORY[0x1E696AD98] numberWithInt:BMGazeEnrollmentSampleEnrollmentQualityFromString(v97)];

    goto LABEL_105;
  }

  if (errorCopy2)
  {
    v141 = objc_alloc(MEMORY[0x1E696ABC0]);
    v142 = *MEMORY[0x1E698F240];
    v656 = *MEMORY[0x1E696A578];
    v143 = v74;
    v144 = objc_alloc(MEMORY[0x1E696AEC0]);
    v396 = objc_opt_class();
    v145 = v144;
    v74 = v143;
    v525 = [v145 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v396, @"binocQuality"];
    v657 = v525;
    v523 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v657 forKeys:&v656 count:1];
    v526 = 0;
    *errorCopy2 = [v141 initWithDomain:v142 code:2 userInfo:?];
    v7 = v536;
    v17 = 0;
    v39 = v532;
    v46 = v529;
    v84 = v527;

    goto LABEL_607;
  }

  v526 = 0;
  v17 = 0;
  v39 = v532;
  v46 = v529;
  v84 = v527;
  v7 = v536;
LABEL_608:

  v85 = v526;
LABEL_609:

  v43 = v533;
LABEL_610:

LABEL_611:
LABEL_612:

  v23 = v542;
LABEL_613:

  v10 = v537;
LABEL_614:

LABEL_615:
  v9 = v543;
LABEL_616:

  v8 = v544;
LABEL_617:

  self = selfCopy;
LABEL_618:

  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGazeEnrollmentSample *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_userProfileId)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasIsOffline)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasEnrollmentResidual75thPercentile)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasEnrollmentResidual95thPercentile)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasEnrollmentResidualMedian)
  {
    PBDataWriterWriteFloatField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_enrollmentFailureReasons;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasFixationCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFixationCountLowBrightness)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFixationCountMediumBrightness)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFixationCountHighBrightness)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStimulusCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStimulusCountLowBrightness)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStimulusCountMediumBrightness)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStimulusCountHighBrightness)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_hasCentralStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1topStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1topRightStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1bottomRightStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1bottomStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1bottomLeftStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1topLeftStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2topStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2topRightStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2bottomRightStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2bottomStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2bottomLeftStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2topLeftStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3topStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3topRightStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3bottomRightStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3bottomStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3bottomLeftStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3topLeftStimulusSignedResidualYaw)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasCentralStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1topStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1topRightStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1bottomRightStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1bottomStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1bottomLeftStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness1topLeftStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2topStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2topRightStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2bottomRightStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2bottomStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2bottomLeftStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness2topLeftStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3topStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3topRightStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3bottomRightStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3bottomStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3bottomLeftStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBrightness3topLeftStimulusSignedResidualPitch)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_rxuuid)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMGazeEnrollmentSample;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMGazeEnrollmentSampleReadFrom(v5, fromCopy))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v120 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  enrollmentFailureReasons = [(BMGazeEnrollmentSample *)self enrollmentFailureReasons];
  v5 = [enrollmentFailureReasons countByEnumeratingWithState:&v115 objects:v119 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v116;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v116 != v7)
        {
          objc_enumerationMutation(enrollmentFailureReasons);
        }

        v9 = *(*(&v115 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMGazeEnrollmentSampleEnrollmentFailureReasonAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [enrollmentFailureReasons countByEnumeratingWithState:&v115 objects:v119 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v66 = objc_alloc(MEMORY[0x1E696AEC0]);
  userProfileId = [(BMGazeEnrollmentSample *)self userProfileId];
  v113 = BMOasisAnalyticsGazeSampleEyeSideAsString([(BMGazeEnrollmentSample *)self eyeSide]);
  v112 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMGazeEnrollmentSample isOffline](self, "isOffline")}];
  v11 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self enrollmentResidual75thPercentile];
  v111 = [v11 numberWithFloat:?];
  v12 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self enrollmentResidual95thPercentile];
  v110 = [v12 numberWithFloat:?];
  v13 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self enrollmentResidualMedian];
  v109 = [v13 numberWithFloat:?];
  v108 = BMOasisAnalyticsGazeSampleEyeSideAsString([(BMGazeEnrollmentSample *)self dominantEye]);
  v107 = BMGazeEnrollmentSampleEnrollmentQualityAsString([(BMGazeEnrollmentSample *)self monocularQuality]);
  v106 = BMGazeEnrollmentSampleEnrollmentQualityAsString([(BMGazeEnrollmentSample *)self binocQuality]);
  v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample fixationCount](self, "fixationCount")}];
  v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample fixationCountLowBrightness](self, "fixationCountLowBrightness")}];
  v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample fixationCountMediumBrightness](self, "fixationCountMediumBrightness")}];
  v102 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample fixationCountHighBrightness](self, "fixationCountHighBrightness")}];
  v101 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample stimulusCount](self, "stimulusCount")}];
  v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample stimulusCountLowBrightness](self, "stimulusCountLowBrightness")}];
  v99 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample stimulusCountMediumBrightness](self, "stimulusCountMediumBrightness")}];
  v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMGazeEnrollmentSample stimulusCountHighBrightness](self, "stimulusCountHighBrightness")}];
  v97 = BMGazeEnrollmentSampleAccessibilityModeAsString([(BMGazeEnrollmentSample *)self accessibilityMode]);
  v96 = BMGazeEnrollmentSampleEyeboxStatusAsString([(BMGazeEnrollmentSample *)self eyeboxStatus]);
  v14 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self centralStimulusSignedResidualYaw];
  v95 = [v14 numberWithFloat:?];
  v15 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualYaw];
  v94 = [v15 numberWithFloat:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualYaw];
  v93 = [v16 numberWithFloat:?];
  v17 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualYaw];
  v89 = [v17 numberWithFloat:?];
  v18 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualYaw];
  v91 = [v18 numberWithFloat:?];
  v19 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualYaw];
  v92 = [v19 numberWithFloat:?];
  v20 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualYaw];
  v90 = [v20 numberWithFloat:?];
  v21 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualYaw];
  v84 = [v21 numberWithFloat:?];
  v22 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualYaw];
  v88 = [v22 numberWithFloat:?];
  v23 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualYaw];
  v82 = [v23 numberWithFloat:?];
  v24 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualYaw];
  v87 = [v24 numberWithFloat:?];
  v25 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualYaw];
  v86 = [v25 numberWithFloat:?];
  v26 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualYaw];
  v85 = [v26 numberWithFloat:?];
  v27 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualYaw];
  v83 = [v27 numberWithFloat:?];
  v28 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualYaw];
  v78 = [v28 numberWithFloat:?];
  v29 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualYaw];
  v81 = [v29 numberWithFloat:?];
  v30 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualYaw];
  v76 = [v30 numberWithFloat:?];
  v31 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualYaw];
  v80 = [v31 numberWithFloat:?];
  v32 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualYaw];
  v65 = [v32 numberWithFloat:?];
  v33 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self centralStimulusSignedResidualPitch];
  v79 = [v33 numberWithFloat:?];
  v34 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1topStimulusSignedResidualPitch];
  v77 = [v34 numberWithFloat:?];
  v35 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1topRightStimulusSignedResidualPitch];
  v75 = [v35 numberWithFloat:?];
  v36 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1bottomRightStimulusSignedResidualPitch];
  v64 = [v36 numberWithFloat:?];
  v37 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1bottomStimulusSignedResidualPitch];
  v74 = [v37 numberWithFloat:?];
  v38 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1bottomLeftStimulusSignedResidualPitch];
  v63 = [v38 numberWithFloat:?];
  v39 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness1topLeftStimulusSignedResidualPitch];
  v73 = [v39 numberWithFloat:?];
  v40 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2topStimulusSignedResidualPitch];
  v62 = [v40 numberWithFloat:?];
  v41 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2topRightStimulusSignedResidualPitch];
  v72 = [v41 numberWithFloat:?];
  v42 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2bottomRightStimulusSignedResidualPitch];
  v71 = [v42 numberWithFloat:?];
  v43 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2bottomStimulusSignedResidualPitch];
  v70 = [v43 numberWithFloat:?];
  v44 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2bottomLeftStimulusSignedResidualPitch];
  v69 = [v44 numberWithFloat:?];
  v45 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness2topLeftStimulusSignedResidualPitch];
  v68 = [v45 numberWithFloat:?];
  v46 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3topStimulusSignedResidualPitch];
  v61 = [v46 numberWithFloat:?];
  v47 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3topRightStimulusSignedResidualPitch];
  v60 = [v47 numberWithFloat:?];
  v48 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3bottomRightStimulusSignedResidualPitch];
  v49 = [v48 numberWithFloat:?];
  v50 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3bottomStimulusSignedResidualPitch];
  v59 = [v50 numberWithFloat:?];
  v51 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3bottomLeftStimulusSignedResidualPitch];
  v52 = [v51 numberWithFloat:?];
  v53 = MEMORY[0x1E696AD98];
  [(BMGazeEnrollmentSample *)self brightness3topLeftStimulusSignedResidualPitch];
  v58 = [v53 numberWithFloat:?];
  rxuuid = [(BMGazeEnrollmentSample *)self rxuuid];
  v55 = BMGazeEnrollmentSampleEnrollmentReasonAsString([(BMGazeEnrollmentSample *)self enrollmentReason]);
  v57 = BMGazeEnrollmentSampleEnrollmentDeviceTypeAsString([(BMGazeEnrollmentSample *)self enrollmentDeviceType]);
  v67 = [v66 initWithFormat:@"BMGazeEnrollmentSample with userProfileId: %@, eyeSide: %@, isOffline: %@, enrollmentResidual75thPercentile: %@, enrollmentResidual95thPercentile: %@, enrollmentResidualMedian: %@, dominantEye: %@, monocularQuality: %@, enrollmentFailureReasons: %@, binocQuality: %@, fixationCount: %@, fixationCountLowBrightness: %@, fixationCountMediumBrightness: %@, fixationCountHighBrightness: %@, stimulusCount: %@, stimulusCountLowBrightness: %@, stimulusCountMediumBrightness: %@, stimulusCountHighBrightness: %@, accessibilityMode: %@, eyeboxStatus: %@, centralStimulusSignedResidualYaw: %@, brightness1topStimulusSignedResidualYaw: %@, brightness1topRightStimulusSignedResidualYaw: %@, brightness1bottomRightStimulusSignedResidualYaw: %@, brightness1bottomStimulusSignedResidualYaw: %@, brightness1bottomLeftStimulusSignedResidualYaw: %@, brightness1topLeftStimulusSignedResidualYaw: %@, brightness2topStimulusSignedResidualYaw: %@, brightness2topRightStimulusSignedResidualYaw: %@, brightness2bottomRightStimulusSignedResidualYaw: %@, brightness2bottomStimulusSignedResidualYaw: %@, brightness2bottomLeftStimulusSignedResidualYaw: %@, brightness2topLeftStimulusSignedResidualYaw: %@, brightness3topStimulusSignedResidualYaw: %@, brightness3topRightStimulusSignedResidualYaw: %@, brightness3bottomRightStimulusSignedResidualYaw: %@, brightness3bottomStimulusSignedResidualYaw: %@, brightness3bottomLeftStimulusSignedResidualYaw: %@, brightness3topLeftStimulusSignedResidualYaw: %@, centralStimulusSignedResidualPitch: %@, brightness1topStimulusSignedResidualPitch: %@, brightness1topRightStimulusSignedResidualPitch: %@, brightness1bottomRightStimulusSignedResidualPitch: %@, brightness1bottomStimulusSignedResidualPitch: %@, brightness1bottomLeftStimulusSignedResidualPitch: %@, brightness1topLeftStimulusSignedResidualPitch: %@, brightness2topStimulusSignedResidualPitch: %@, brightness2topRightStimulusSignedResidualPitch: %@, brightness2bottomRightStimulusSignedResidualPitch: %@, brightness2bottomStimulusSignedResidualPitch: %@, brightness2bottomLeftStimulusSignedResidualPitch: %@, brightness2topLeftStimulusSignedResidualPitch: %@, brightness3topStimulusSignedResidualPitch: %@, brightness3topRightStimulusSignedResidualPitch: %@, brightness3bottomRightStimulusSignedResidualPitch: %@, brightness3bottomStimulusSignedResidualPitch: %@, brightness3bottomLeftStimulusSignedResidualPitch: %@, brightness3topLeftStimulusSignedResidualPitch: %@, rxuuid: %@, enrollmentReason: %@, enrollmentDeviceType: %@", userProfileId, v113, v112, v111, v110, v109, v108, v107, v3, v106, v105, v104, v103, v102, v101, v100, v99, v98, v97, v96, v95, v94, v93, v89, v91, v92, v90, v84, v88, v82, v87, v86, v85, v83, v78, v81, v76, v80, v65, v79, v77, v75, v64, v74, v63, v73, v62, v72, v71, v70, v69, v68, v61, v60, v49, v59, v52, v58, rxuuid, v55];

  return v67;
}

- (BMGazeEnrollmentSample)initWithUserProfileId:(id)id eyeSide:(int)side isOffline:(id)offline enrollmentResidual75thPercentile:(id)percentile enrollmentResidual95thPercentile:(id)residual95thPercentile enrollmentResidualMedian:(id)median dominantEye:(int)eye monocularQuality:(int)self0 enrollmentFailureReasons:(id)self1 binocQuality:(int)self2 fixationCount:(id)self3 fixationCountLowBrightness:(id)self4 fixationCountMediumBrightness:(id)self5 fixationCountHighBrightness:(id)self6 stimulusCount:(id)self7 stimulusCountLowBrightness:(id)self8 stimulusCountMediumBrightness:(id)self9 stimulusCountHighBrightness:(id)countHighBrightness accessibilityMode:(int)mode eyeboxStatus:(int)status centralStimulusSignedResidualYaw:(id)yaw brightness1topStimulusSignedResidualYaw:(id)residualYaw brightness1topRightStimulusSignedResidualYaw:(id)signedResidualYaw brightness1bottomRightStimulusSignedResidualYaw:(id)stimulusSignedResidualYaw brightness1bottomStimulusSignedResidualYaw:(id)brightness1bottomStimulusSignedResidualYaw brightness1bottomLeftStimulusSignedResidualYaw:(id)leftStimulusSignedResidualYaw brightness1topLeftStimulusSignedResidualYaw:(id)brightness1topLeftStimulusSignedResidualYaw brightness2topStimulusSignedResidualYaw:(id)id0 brightness2topRightStimulusSignedResidualYaw:(id)id1 brightness2bottomRightStimulusSignedResidualYaw:(id)id2 brightness2bottomStimulusSignedResidualYaw:(id)id3 brightness2bottomLeftStimulusSignedResidualYaw:(id)id4 brightness2topLeftStimulusSignedResidualYaw:(id)id5 brightness3topStimulusSignedResidualYaw:(id)id6 brightness3topRightStimulusSignedResidualYaw:(id)id7 brightness3bottomRightStimulusSignedResidualYaw:(id)id8 brightness3bottomStimulusSignedResidualYaw:(id)id9 brightness3bottomLeftStimulusSignedResidualYaw:(id)side0 brightness3topLeftStimulusSignedResidualYaw:(id)side1 centralStimulusSignedResidualPitch:(id)side2 brightness1topStimulusSignedResidualPitch:(id)side3 brightness1topRightStimulusSignedResidualPitch:(id)side4 brightness1bottomRightStimulusSignedResidualPitch:(id)side5 brightness1bottomStimulusSignedResidualPitch:(id)side6 brightness1bottomLeftStimulusSignedResidualPitch:(id)side7 brightness1topLeftStimulusSignedResidualPitch:(id)side8 brightness2topStimulusSignedResidualPitch:(id)side9 brightness2topRightStimulusSignedResidualPitch:(id)offline0 brightness2bottomRightStimulusSignedResidualPitch:(id)offline1 brightness2bottomStimulusSignedResidualPitch:(id)offline2 brightness2bottomLeftStimulusSignedResidualPitch:(id)offline3 brightness2topLeftStimulusSignedResidualPitch:(id)offline4 brightness3topStimulusSignedResidualPitch:(id)offline5 brightness3topRightStimulusSignedResidualPitch:(id)offline6 brightness3bottomRightStimulusSignedResidualPitch:(id)offline7 brightness3bottomStimulusSignedResidualPitch:(id)offline8 brightness3bottomLeftStimulusSignedResidualPitch:(id)offline9 brightness3topLeftStimulusSignedResidualPitch:(id)percentile0 rxuuid:(id)percentile1 enrollmentReason:(int)percentile2 enrollmentDeviceType:(int)percentile3
{
  idCopy = id;
  offlineCopy = offline;
  percentileCopy = percentile;
  residual95thPercentileCopy = residual95thPercentile;
  medianCopy = median;
  reasonsCopy = reasons;
  countCopy = count;
  brightnessCopy = brightness;
  mediumBrightnessCopy = mediumBrightness;
  highBrightnessCopy = highBrightness;
  stimulusCountCopy = stimulusCount;
  lowBrightnessCopy = lowBrightness;
  countMediumBrightnessCopy = countMediumBrightness;
  countHighBrightnessCopy = countHighBrightness;
  yawCopy = yaw;
  residualYawCopy = residualYaw;
  signedResidualYawCopy = signedResidualYaw;
  stimulusSignedResidualYawCopy = stimulusSignedResidualYaw;
  brightness1bottomStimulusSignedResidualYawCopy = brightness1bottomStimulusSignedResidualYaw;
  leftStimulusSignedResidualYawCopy = leftStimulusSignedResidualYaw;
  brightness1topLeftStimulusSignedResidualYawCopy = brightness1topLeftStimulusSignedResidualYaw;
  brightness2topStimulusSignedResidualYawCopy = brightness2topStimulusSignedResidualYaw;
  rightStimulusSignedResidualYawCopy = rightStimulusSignedResidualYaw;
  brightness2bottomRightStimulusSignedResidualYawCopy = brightness2bottomRightStimulusSignedResidualYaw;
  brightness2bottomStimulusSignedResidualYawCopy = brightness2bottomStimulusSignedResidualYaw;
  brightness2bottomLeftStimulusSignedResidualYawCopy = brightness2bottomLeftStimulusSignedResidualYaw;
  brightness2topLeftStimulusSignedResidualYawCopy = brightness2topLeftStimulusSignedResidualYaw;
  brightness3topStimulusSignedResidualYawCopy = brightness3topStimulusSignedResidualYaw;
  brightness3topRightStimulusSignedResidualYawCopy = brightness3topRightStimulusSignedResidualYaw;
  brightness3bottomRightStimulusSignedResidualYawCopy = brightness3bottomRightStimulusSignedResidualYaw;
  brightness3bottomStimulusSignedResidualYawCopy = brightness3bottomStimulusSignedResidualYaw;
  brightness3bottomLeftStimulusSignedResidualYawCopy = brightness3bottomLeftStimulusSignedResidualYaw;
  brightness3topLeftStimulusSignedResidualYawCopy = brightness3topLeftStimulusSignedResidualYaw;
  pitchCopy = pitch;
  residualPitchCopy = residualPitch;
  signedResidualPitchCopy = signedResidualPitch;
  stimulusSignedResidualPitchCopy = stimulusSignedResidualPitch;
  brightness1bottomStimulusSignedResidualPitchCopy = brightness1bottomStimulusSignedResidualPitch;
  leftStimulusSignedResidualPitchCopy = leftStimulusSignedResidualPitch;
  brightness1topLeftStimulusSignedResidualPitchCopy = brightness1topLeftStimulusSignedResidualPitch;
  brightness2topStimulusSignedResidualPitchCopy = brightness2topStimulusSignedResidualPitch;
  rightStimulusSignedResidualPitchCopy = rightStimulusSignedResidualPitch;
  brightness2bottomRightStimulusSignedResidualPitchCopy = brightness2bottomRightStimulusSignedResidualPitch;
  brightness2bottomStimulusSignedResidualPitchCopy = brightness2bottomStimulusSignedResidualPitch;
  brightness2bottomLeftStimulusSignedResidualPitchCopy = brightness2bottomLeftStimulusSignedResidualPitch;
  brightness2topLeftStimulusSignedResidualPitchCopy = brightness2topLeftStimulusSignedResidualPitch;
  brightness3topStimulusSignedResidualPitchCopy = brightness3topStimulusSignedResidualPitch;
  brightness3topRightStimulusSignedResidualPitchCopy = brightness3topRightStimulusSignedResidualPitch;
  brightness3bottomRightStimulusSignedResidualPitchCopy = brightness3bottomRightStimulusSignedResidualPitch;
  brightness3bottomStimulusSignedResidualPitchCopy = brightness3bottomStimulusSignedResidualPitch;
  brightness3bottomLeftStimulusSignedResidualPitchCopy = brightness3bottomLeftStimulusSignedResidualPitch;
  brightness3topLeftStimulusSignedResidualPitchCopy = brightness3topLeftStimulusSignedResidualPitch;
  rxuuidCopy = rxuuid;
  v175.receiver = self;
  v175.super_class = BMGazeEnrollmentSample;
  v75 = [(BMEventBase *)&v175 init];

  if (v75)
  {
    v75->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v75->_userProfileId, id);
    v75->_eyeSide = side;
    if (offlineCopy)
    {
      v75->_hasIsOffline = 1;
      v75->_isOffline = [offlineCopy BOOLValue];
    }

    else
    {
      v75->_hasIsOffline = 0;
      v75->_isOffline = 0;
    }

    if (percentileCopy)
    {
      v75->_hasEnrollmentResidual75thPercentile = 1;
      [percentileCopy floatValue];
    }

    else
    {
      v75->_hasEnrollmentResidual75thPercentile = 0;
      v76 = -1.0;
    }

    v75->_enrollmentResidual75thPercentile = v76;
    if (residual95thPercentileCopy)
    {
      v75->_hasEnrollmentResidual95thPercentile = 1;
      [residual95thPercentileCopy floatValue];
    }

    else
    {
      v75->_hasEnrollmentResidual95thPercentile = 0;
      v77 = -1.0;
    }

    v75->_enrollmentResidual95thPercentile = v77;
    if (medianCopy)
    {
      v75->_hasEnrollmentResidualMedian = 1;
      [medianCopy floatValue];
    }

    else
    {
      v75->_hasEnrollmentResidualMedian = 0;
      v78 = -1.0;
    }

    v75->_enrollmentResidualMedian = v78;
    v75->_dominantEye = eye;
    v75->_monocularQuality = quality;
    objc_storeStrong(&v75->_enrollmentFailureReasons, reasons);
    v75->_binocQuality = binocQuality;
    unsignedIntValue = countCopy;
    if (countCopy)
    {
      v75->_hasFixationCount = 1;
      unsignedIntValue = [countCopy unsignedIntValue];
    }

    else
    {
      v75->_hasFixationCount = 0;
    }

    v75->_fixationCount = unsignedIntValue;
    if (brightnessCopy)
    {
      v75->_hasFixationCountLowBrightness = 1;
      unsignedIntValue2 = [brightnessCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v75->_hasFixationCountLowBrightness = 0;
    }

    v75->_fixationCountLowBrightness = unsignedIntValue2;
    if (mediumBrightnessCopy)
    {
      v75->_hasFixationCountMediumBrightness = 1;
      unsignedIntValue3 = [mediumBrightnessCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v75->_hasFixationCountMediumBrightness = 0;
    }

    v75->_fixationCountMediumBrightness = unsignedIntValue3;
    if (highBrightnessCopy)
    {
      v75->_hasFixationCountHighBrightness = 1;
      unsignedIntValue4 = [highBrightnessCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue4 = 0;
      v75->_hasFixationCountHighBrightness = 0;
    }

    v75->_fixationCountHighBrightness = unsignedIntValue4;
    if (stimulusCountCopy)
    {
      v75->_hasStimulusCount = 1;
      unsignedIntValue5 = [stimulusCountCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue5 = 0;
      v75->_hasStimulusCount = 0;
    }

    v75->_stimulusCount = unsignedIntValue5;
    if (lowBrightnessCopy)
    {
      v75->_hasStimulusCountLowBrightness = 1;
      unsignedIntValue6 = [lowBrightnessCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue6 = 0;
      v75->_hasStimulusCountLowBrightness = 0;
    }

    v75->_stimulusCountLowBrightness = unsignedIntValue6;
    if (countMediumBrightnessCopy)
    {
      v75->_hasStimulusCountMediumBrightness = 1;
      unsignedIntValue7 = [countMediumBrightnessCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue7 = 0;
      v75->_hasStimulusCountMediumBrightness = 0;
    }

    v75->_stimulusCountMediumBrightness = unsignedIntValue7;
    if (countHighBrightnessCopy)
    {
      v75->_hasStimulusCountHighBrightness = 1;
      unsignedIntValue8 = [countHighBrightnessCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue8 = 0;
      v75->_hasStimulusCountHighBrightness = 0;
    }

    v75->_stimulusCountHighBrightness = unsignedIntValue8;
    v75->_accessibilityMode = mode;
    v75->_eyeboxStatus = status;
    if (yawCopy)
    {
      v75->_hasCentralStimulusSignedResidualYaw = 1;
      [yawCopy floatValue];
    }

    else
    {
      v75->_hasCentralStimulusSignedResidualYaw = 0;
      v87 = -1.0;
    }

    v75->_centralStimulusSignedResidualYaw = v87;
    if (residualYawCopy)
    {
      v75->_hasBrightness1topStimulusSignedResidualYaw = 1;
      [residualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1topStimulusSignedResidualYaw = 0;
      v88 = -1.0;
    }

    v75->_brightness1topStimulusSignedResidualYaw = v88;
    if (signedResidualYawCopy)
    {
      v75->_hasBrightness1topRightStimulusSignedResidualYaw = 1;
      [signedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1topRightStimulusSignedResidualYaw = 0;
      v89 = -1.0;
    }

    v75->_brightness1topRightStimulusSignedResidualYaw = v89;
    if (stimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness1bottomRightStimulusSignedResidualYaw = 1;
      [stimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1bottomRightStimulusSignedResidualYaw = 0;
      v90 = -1.0;
    }

    v75->_brightness1bottomRightStimulusSignedResidualYaw = v90;
    if (brightness1bottomStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness1bottomStimulusSignedResidualYaw = 1;
      [brightness1bottomStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1bottomStimulusSignedResidualYaw = 0;
      v91 = -1.0;
    }

    v75->_brightness1bottomStimulusSignedResidualYaw = v91;
    if (leftStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness1bottomLeftStimulusSignedResidualYaw = 1;
      [leftStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1bottomLeftStimulusSignedResidualYaw = 0;
      v92 = -1.0;
    }

    v75->_brightness1bottomLeftStimulusSignedResidualYaw = v92;
    if (brightness1topLeftStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness1topLeftStimulusSignedResidualYaw = 1;
      [brightness1topLeftStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1topLeftStimulusSignedResidualYaw = 0;
      v93 = -1.0;
    }

    v75->_brightness1topLeftStimulusSignedResidualYaw = v93;
    if (brightness2topStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness2topStimulusSignedResidualYaw = 1;
      [brightness2topStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2topStimulusSignedResidualYaw = 0;
      v94 = -1.0;
    }

    v75->_brightness2topStimulusSignedResidualYaw = v94;
    if (rightStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness2topRightStimulusSignedResidualYaw = 1;
      [rightStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2topRightStimulusSignedResidualYaw = 0;
      v95 = -1.0;
    }

    v75->_brightness2topRightStimulusSignedResidualYaw = v95;
    if (brightness2bottomRightStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness2bottomRightStimulusSignedResidualYaw = 1;
      [brightness2bottomRightStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2bottomRightStimulusSignedResidualYaw = 0;
      v96 = -1.0;
    }

    v75->_brightness2bottomRightStimulusSignedResidualYaw = v96;
    if (brightness2bottomStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness2bottomStimulusSignedResidualYaw = 1;
      [brightness2bottomStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2bottomStimulusSignedResidualYaw = 0;
      v97 = -1.0;
    }

    v75->_brightness2bottomStimulusSignedResidualYaw = v97;
    if (brightness2bottomLeftStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness2bottomLeftStimulusSignedResidualYaw = 1;
      [brightness2bottomLeftStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2bottomLeftStimulusSignedResidualYaw = 0;
      v98 = -1.0;
    }

    v75->_brightness2bottomLeftStimulusSignedResidualYaw = v98;
    if (brightness2topLeftStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness2topLeftStimulusSignedResidualYaw = 1;
      [brightness2topLeftStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2topLeftStimulusSignedResidualYaw = 0;
      v99 = -1.0;
    }

    v75->_brightness2topLeftStimulusSignedResidualYaw = v99;
    if (brightness3topStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness3topStimulusSignedResidualYaw = 1;
      [brightness3topStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3topStimulusSignedResidualYaw = 0;
      v100 = -1.0;
    }

    v75->_brightness3topStimulusSignedResidualYaw = v100;
    if (brightness3topRightStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness3topRightStimulusSignedResidualYaw = 1;
      [brightness3topRightStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3topRightStimulusSignedResidualYaw = 0;
      v101 = -1.0;
    }

    v75->_brightness3topRightStimulusSignedResidualYaw = v101;
    if (brightness3bottomRightStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness3bottomRightStimulusSignedResidualYaw = 1;
      [brightness3bottomRightStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3bottomRightStimulusSignedResidualYaw = 0;
      v102 = -1.0;
    }

    v75->_brightness3bottomRightStimulusSignedResidualYaw = v102;
    if (brightness3bottomStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness3bottomStimulusSignedResidualYaw = 1;
      [brightness3bottomStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3bottomStimulusSignedResidualYaw = 0;
      v103 = -1.0;
    }

    v75->_brightness3bottomStimulusSignedResidualYaw = v103;
    if (brightness3bottomLeftStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness3bottomLeftStimulusSignedResidualYaw = 1;
      [brightness3bottomLeftStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3bottomLeftStimulusSignedResidualYaw = 0;
      v104 = -1.0;
    }

    v75->_brightness3bottomLeftStimulusSignedResidualYaw = v104;
    if (brightness3topLeftStimulusSignedResidualYawCopy)
    {
      v75->_hasBrightness3topLeftStimulusSignedResidualYaw = 1;
      [brightness3topLeftStimulusSignedResidualYawCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3topLeftStimulusSignedResidualYaw = 0;
      v105 = -1.0;
    }

    v75->_brightness3topLeftStimulusSignedResidualYaw = v105;
    if (pitchCopy)
    {
      v75->_hasCentralStimulusSignedResidualPitch = 1;
      [pitchCopy floatValue];
    }

    else
    {
      v75->_hasCentralStimulusSignedResidualPitch = 0;
      v106 = -1.0;
    }

    v75->_centralStimulusSignedResidualPitch = v106;
    if (residualPitchCopy)
    {
      v75->_hasBrightness1topStimulusSignedResidualPitch = 1;
      [residualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1topStimulusSignedResidualPitch = 0;
      v107 = -1.0;
    }

    v75->_brightness1topStimulusSignedResidualPitch = v107;
    if (signedResidualPitchCopy)
    {
      v75->_hasBrightness1topRightStimulusSignedResidualPitch = 1;
      [signedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1topRightStimulusSignedResidualPitch = 0;
      v108 = -1.0;
    }

    v75->_brightness1topRightStimulusSignedResidualPitch = v108;
    if (stimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness1bottomRightStimulusSignedResidualPitch = 1;
      [stimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1bottomRightStimulusSignedResidualPitch = 0;
      v109 = -1.0;
    }

    v75->_brightness1bottomRightStimulusSignedResidualPitch = v109;
    if (brightness1bottomStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness1bottomStimulusSignedResidualPitch = 1;
      [brightness1bottomStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1bottomStimulusSignedResidualPitch = 0;
      v110 = -1.0;
    }

    v75->_brightness1bottomStimulusSignedResidualPitch = v110;
    if (leftStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness1bottomLeftStimulusSignedResidualPitch = 1;
      [leftStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1bottomLeftStimulusSignedResidualPitch = 0;
      v111 = -1.0;
    }

    v75->_brightness1bottomLeftStimulusSignedResidualPitch = v111;
    if (brightness1topLeftStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness1topLeftStimulusSignedResidualPitch = 1;
      [brightness1topLeftStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness1topLeftStimulusSignedResidualPitch = 0;
      v112 = -1.0;
    }

    v75->_brightness1topLeftStimulusSignedResidualPitch = v112;
    if (brightness2topStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness2topStimulusSignedResidualPitch = 1;
      [brightness2topStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2topStimulusSignedResidualPitch = 0;
      v113 = -1.0;
    }

    v75->_brightness2topStimulusSignedResidualPitch = v113;
    if (rightStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness2topRightStimulusSignedResidualPitch = 1;
      [rightStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2topRightStimulusSignedResidualPitch = 0;
      v114 = -1.0;
    }

    v75->_brightness2topRightStimulusSignedResidualPitch = v114;
    if (brightness2bottomRightStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness2bottomRightStimulusSignedResidualPitch = 1;
      [brightness2bottomRightStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2bottomRightStimulusSignedResidualPitch = 0;
      v115 = -1.0;
    }

    v75->_brightness2bottomRightStimulusSignedResidualPitch = v115;
    if (brightness2bottomStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness2bottomStimulusSignedResidualPitch = 1;
      [brightness2bottomStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2bottomStimulusSignedResidualPitch = 0;
      v116 = -1.0;
    }

    v75->_brightness2bottomStimulusSignedResidualPitch = v116;
    if (brightness2bottomLeftStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness2bottomLeftStimulusSignedResidualPitch = 1;
      [brightness2bottomLeftStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2bottomLeftStimulusSignedResidualPitch = 0;
      v117 = -1.0;
    }

    v75->_brightness2bottomLeftStimulusSignedResidualPitch = v117;
    if (brightness2topLeftStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness2topLeftStimulusSignedResidualPitch = 1;
      [brightness2topLeftStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness2topLeftStimulusSignedResidualPitch = 0;
      v118 = -1.0;
    }

    v75->_brightness2topLeftStimulusSignedResidualPitch = v118;
    if (brightness3topStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness3topStimulusSignedResidualPitch = 1;
      [brightness3topStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3topStimulusSignedResidualPitch = 0;
      v119 = -1.0;
    }

    v75->_brightness3topStimulusSignedResidualPitch = v119;
    if (brightness3topRightStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness3topRightStimulusSignedResidualPitch = 1;
      [brightness3topRightStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3topRightStimulusSignedResidualPitch = 0;
      v120 = -1.0;
    }

    v75->_brightness3topRightStimulusSignedResidualPitch = v120;
    if (brightness3bottomRightStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness3bottomRightStimulusSignedResidualPitch = 1;
      [brightness3bottomRightStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3bottomRightStimulusSignedResidualPitch = 0;
      v121 = -1.0;
    }

    v75->_brightness3bottomRightStimulusSignedResidualPitch = v121;
    if (brightness3bottomStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness3bottomStimulusSignedResidualPitch = 1;
      [brightness3bottomStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3bottomStimulusSignedResidualPitch = 0;
      v122 = -1.0;
    }

    v75->_brightness3bottomStimulusSignedResidualPitch = v122;
    if (brightness3bottomLeftStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness3bottomLeftStimulusSignedResidualPitch = 1;
      [brightness3bottomLeftStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3bottomLeftStimulusSignedResidualPitch = 0;
      v123 = -1.0;
    }

    v75->_brightness3bottomLeftStimulusSignedResidualPitch = v123;
    if (brightness3topLeftStimulusSignedResidualPitchCopy)
    {
      v75->_hasBrightness3topLeftStimulusSignedResidualPitch = 1;
      [brightness3topLeftStimulusSignedResidualPitchCopy floatValue];
    }

    else
    {
      v75->_hasBrightness3topLeftStimulusSignedResidualPitch = 0;
      v124 = -1.0;
    }

    v75->_brightness3topLeftStimulusSignedResidualPitch = v124;
    objc_storeStrong(&v75->_rxuuid, rxuuid);
    v75->_enrollmentReason = reason;
    v75->_enrollmentDeviceType = type;
  }

  v125 = v75;

  return v125;
}

+ (id)protoFields
{
  v65[61] = *MEMORY[0x1E69E9840];
  v64 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userProfileId" number:1 type:13 subMessageClass:0];
  v65[0] = v64;
  v63 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eyeSide" number:2 type:4 subMessageClass:0];
  v65[1] = v63;
  v62 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isOffline" number:3 type:12 subMessageClass:0];
  v65[2] = v62;
  v61 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enrollmentResidual75thPercentile" number:4 type:1 subMessageClass:0];
  v65[3] = v61;
  v60 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enrollmentResidual95thPercentile" number:5 type:1 subMessageClass:0];
  v65[4] = v60;
  v59 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enrollmentResidualMedian" number:6 type:1 subMessageClass:0];
  v65[5] = v59;
  v58 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dominantEye" number:7 type:4 subMessageClass:0];
  v65[6] = v58;
  v57 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"monocularQuality" number:8 type:4 subMessageClass:0];
  v65[7] = v57;
  v56 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enrollmentFailureReasons" number:9 type:4 subMessageClass:0];
  v65[8] = v56;
  v55 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"binocQuality" number:10 type:4 subMessageClass:0];
  v65[9] = v55;
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fixationCount" number:11 type:4 subMessageClass:0];
  v65[10] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fixationCountLowBrightness" number:12 type:4 subMessageClass:0];
  v65[11] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fixationCountMediumBrightness" number:13 type:4 subMessageClass:0];
  v65[12] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fixationCountHighBrightness" number:14 type:4 subMessageClass:0];
  v65[13] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stimulusCount" number:15 type:4 subMessageClass:0];
  v65[14] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stimulusCountLowBrightness" number:16 type:4 subMessageClass:0];
  v65[15] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stimulusCountMediumBrightness" number:17 type:4 subMessageClass:0];
  v65[16] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stimulusCountHighBrightness" number:18 type:4 subMessageClass:0];
  v65[17] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessibilityMode" number:19 type:4 subMessageClass:0];
  v65[18] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eyeboxStatus" number:20 type:4 subMessageClass:0];
  v65[19] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"centralStimulusSignedResidualYaw" number:21 type:1 subMessageClass:0];
  v65[20] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1topStimulusSignedResidualYaw" number:22 type:1 subMessageClass:0];
  v65[21] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1topRightStimulusSignedResidualYaw" number:23 type:1 subMessageClass:0];
  v65[22] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1bottomRightStimulusSignedResidualYaw" number:24 type:1 subMessageClass:0];
  v65[23] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1bottomStimulusSignedResidualYaw" number:25 type:1 subMessageClass:0];
  v65[24] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1bottomLeftStimulusSignedResidualYaw" number:26 type:1 subMessageClass:0];
  v65[25] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1topLeftStimulusSignedResidualYaw" number:27 type:1 subMessageClass:0];
  v65[26] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2topStimulusSignedResidualYaw" number:28 type:1 subMessageClass:0];
  v65[27] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2topRightStimulusSignedResidualYaw" number:29 type:1 subMessageClass:0];
  v65[28] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2bottomRightStimulusSignedResidualYaw" number:30 type:1 subMessageClass:0];
  v65[29] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2bottomStimulusSignedResidualYaw" number:31 type:1 subMessageClass:0];
  v65[30] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2bottomLeftStimulusSignedResidualYaw" number:32 type:1 subMessageClass:0];
  v65[31] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2topLeftStimulusSignedResidualYaw" number:33 type:1 subMessageClass:0];
  v65[32] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3topStimulusSignedResidualYaw" number:34 type:1 subMessageClass:0];
  v65[33] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3topRightStimulusSignedResidualYaw" number:35 type:1 subMessageClass:0];
  v65[34] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3bottomRightStimulusSignedResidualYaw" number:36 type:1 subMessageClass:0];
  v65[35] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3bottomStimulusSignedResidualYaw" number:37 type:1 subMessageClass:0];
  v65[36] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3bottomLeftStimulusSignedResidualYaw" number:38 type:1 subMessageClass:0];
  v65[37] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3topLeftStimulusSignedResidualYaw" number:39 type:1 subMessageClass:0];
  v65[38] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"centralStimulusSignedResidualPitch" number:40 type:1 subMessageClass:0];
  v65[39] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1topStimulusSignedResidualPitch" number:41 type:1 subMessageClass:0];
  v65[40] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1topRightStimulusSignedResidualPitch" number:42 type:1 subMessageClass:0];
  v65[41] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1bottomRightStimulusSignedResidualPitch" number:43 type:1 subMessageClass:0];
  v65[42] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1bottomStimulusSignedResidualPitch" number:44 type:1 subMessageClass:0];
  v65[43] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1bottomLeftStimulusSignedResidualPitch" number:45 type:1 subMessageClass:0];
  v65[44] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness1topLeftStimulusSignedResidualPitch" number:46 type:1 subMessageClass:0];
  v65[45] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2topStimulusSignedResidualPitch" number:47 type:1 subMessageClass:0];
  v65[46] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2topRightStimulusSignedResidualPitch" number:48 type:1 subMessageClass:0];
  v65[47] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2bottomRightStimulusSignedResidualPitch" number:49 type:1 subMessageClass:0];
  v65[48] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2bottomStimulusSignedResidualPitch" number:50 type:1 subMessageClass:0];
  v65[49] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2bottomLeftStimulusSignedResidualPitch" number:51 type:1 subMessageClass:0];
  v65[50] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness2topLeftStimulusSignedResidualPitch" number:52 type:1 subMessageClass:0];
  v65[51] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3topStimulusSignedResidualPitch" number:53 type:1 subMessageClass:0];
  v65[52] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3topRightStimulusSignedResidualPitch" number:54 type:1 subMessageClass:0];
  v65[53] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3bottomRightStimulusSignedResidualPitch" number:55 type:1 subMessageClass:0];
  v65[54] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3bottomStimulusSignedResidualPitch" number:56 type:1 subMessageClass:0];
  v65[55] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3bottomLeftStimulusSignedResidualPitch" number:57 type:1 subMessageClass:0];
  v65[56] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brightness3topLeftStimulusSignedResidualPitch" number:58 type:1 subMessageClass:0];
  v65[57] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rxuuid" number:59 type:13 subMessageClass:0];
  v65[58] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enrollmentReason" number:60 type:4 subMessageClass:0];
  v65[59] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enrollmentDeviceType" number:61 type:4 subMessageClass:0];
  v65[60] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:61];

  return v13;
}

+ (id)columns
{
  v65[61] = *MEMORY[0x1E69E9840];
  v64 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userProfileId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v63 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eyeSide" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v62 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isOffline" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v61 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"enrollmentResidual75thPercentile" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:1 convertedType:0];
  v60 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"enrollmentResidual95thPercentile" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v59 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"enrollmentResidualMedian" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:1 convertedType:0];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dominantEye" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v56 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"monocularQuality" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v57 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"enrollmentFailureReasons_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_454_94392];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"binocQuality" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v55 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fixationCount" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fixationCountLowBrightness" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fixationCountMediumBrightness" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fixationCountHighBrightness" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:4 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stimulusCount" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:4 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stimulusCountLowBrightness" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stimulusCountMediumBrightness" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stimulusCountHighBrightness" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accessibilityMode" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eyeboxStatus" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"centralStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:21 protoDataType:1 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1topStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:22 protoDataType:1 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1topRightStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:23 protoDataType:1 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1bottomRightStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:24 protoDataType:1 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1bottomStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:25 protoDataType:1 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1bottomLeftStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:26 protoDataType:1 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1topLeftStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:27 protoDataType:1 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2topStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:28 protoDataType:1 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2topRightStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:29 protoDataType:1 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2bottomRightStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:30 protoDataType:1 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2bottomStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:31 protoDataType:1 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2bottomLeftStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:32 protoDataType:1 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2topLeftStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:33 protoDataType:1 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3topStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:34 protoDataType:1 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3topRightStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:35 protoDataType:1 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3bottomRightStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:36 protoDataType:1 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3bottomStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:37 protoDataType:1 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3bottomLeftStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:38 protoDataType:1 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3topLeftStimulusSignedResidualYaw" dataType:1 requestOnly:0 fieldNumber:39 protoDataType:1 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"centralStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:40 protoDataType:1 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1topStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:41 protoDataType:1 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1topRightStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:42 protoDataType:1 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1bottomRightStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:43 protoDataType:1 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1bottomStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:44 protoDataType:1 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1bottomLeftStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:45 protoDataType:1 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness1topLeftStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:46 protoDataType:1 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2topStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:47 protoDataType:1 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2topRightStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:48 protoDataType:1 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2bottomRightStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:49 protoDataType:1 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2bottomStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:50 protoDataType:1 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2bottomLeftStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:51 protoDataType:1 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness2topLeftStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:52 protoDataType:1 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3topStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:53 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3topRightStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:54 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3bottomRightStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:55 protoDataType:1 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3bottomStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:56 protoDataType:1 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3bottomLeftStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:57 protoDataType:1 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brightness3topLeftStimulusSignedResidualPitch" dataType:1 requestOnly:0 fieldNumber:58 protoDataType:1 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rxuuid" dataType:2 requestOnly:0 fieldNumber:59 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"enrollmentReason" dataType:0 requestOnly:0 fieldNumber:60 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"enrollmentDeviceType" dataType:0 requestOnly:0 fieldNumber:61 protoDataType:4 convertedType:0];
  v65[0] = v64;
  v65[1] = v63;
  v65[2] = v62;
  v65[3] = v61;
  v65[4] = v60;
  v65[5] = v59;
  v65[6] = v58;
  v65[7] = v56;
  v65[8] = v57;
  v65[9] = v54;
  v65[10] = v55;
  v65[11] = v53;
  v65[12] = v52;
  v65[13] = v51;
  v65[14] = v50;
  v65[15] = v49;
  v65[16] = v48;
  v65[17] = v47;
  v65[18] = v46;
  v65[19] = v45;
  v65[20] = v44;
  v65[21] = v43;
  v65[22] = v42;
  v65[23] = v41;
  v65[24] = v40;
  v65[25] = v39;
  v65[26] = v38;
  v65[27] = v37;
  v65[28] = v36;
  v65[29] = v35;
  v65[30] = v34;
  v65[31] = v33;
  v65[32] = v32;
  v65[33] = v31;
  v65[34] = v30;
  v65[35] = v29;
  v65[36] = v28;
  v65[37] = v27;
  v65[38] = v26;
  v65[39] = v25;
  v65[40] = v24;
  v65[41] = v23;
  v65[42] = v22;
  v65[43] = v21;
  v65[44] = v20;
  v65[45] = v19;
  v65[46] = v18;
  v65[47] = v17;
  v65[48] = v16;
  v65[49] = v15;
  v65[50] = v14;
  v65[51] = v2;
  v65[52] = v3;
  v65[53] = v4;
  v65[54] = v5;
  v65[55] = v6;
  v65[56] = v7;
  v65[57] = v13;
  v65[58] = v8;
  v65[59] = v12;
  v65[60] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:61];

  return v11;
}

id __33__BMGazeEnrollmentSample_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _enrollmentFailureReasonsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMGazeEnrollmentSample alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[17] = 0;
    }
  }

  return v4;
}

- (BMGazeEnrollmentSample)initWithUserProfileId:(id)id eyeSide:(int)side isOffline:(id)offline enrollmentResidual75thPercentile:(id)percentile enrollmentResidual95thPercentile:(id)residual95thPercentile enrollmentResidualMedian:(id)median dominantEye:(int)eye monocularQuality:(int)self0 enrollmentFailureReasons:(id)self1 binocQuality:(int)self2 fixationCount:(id)self3 fixationCountLowBrightness:(id)self4 fixationCountMediumBrightness:(id)self5 fixationCountHighBrightness:(id)self6 stimulusCount:(id)self7 stimulusCountLowBrightness:(id)self8 stimulusCountMediumBrightness:(id)self9 stimulusCountHighBrightness:(id)countHighBrightness accessibilityMode:(int)mode eyeboxStatus:(int)status centralStimulusSignedResidualYaw:(id)yaw brightness1topStimulusSignedResidualYaw:(id)residualYaw brightness1topRightStimulusSignedResidualYaw:(id)signedResidualYaw brightness1bottomRightStimulusSignedResidualYaw:(id)stimulusSignedResidualYaw brightness1bottomStimulusSignedResidualYaw:(id)brightness1bottomStimulusSignedResidualYaw brightness1bottomLeftStimulusSignedResidualYaw:(id)leftStimulusSignedResidualYaw brightness1topLeftStimulusSignedResidualYaw:(id)brightness1topLeftStimulusSignedResidualYaw brightness2topStimulusSignedResidualYaw:(id)id0 brightness2topRightStimulusSignedResidualYaw:(id)id1 brightness2bottomRightStimulusSignedResidualYaw:(id)id2 brightness2bottomStimulusSignedResidualYaw:(id)id3 brightness2bottomLeftStimulusSignedResidualYaw:(id)id4 brightness2topLeftStimulusSignedResidualYaw:(id)id5 brightness3topStimulusSignedResidualYaw:(id)id6 brightness3topRightStimulusSignedResidualYaw:(id)id7 brightness3bottomRightStimulusSignedResidualYaw:(id)id8 brightness3bottomStimulusSignedResidualYaw:(id)id9 brightness3bottomLeftStimulusSignedResidualYaw:(id)side0 brightness3topLeftStimulusSignedResidualYaw:(id)side1 centralStimulusSignedResidualPitch:(id)side2 brightness1topStimulusSignedResidualPitch:(id)side3 brightness1topRightStimulusSignedResidualPitch:(id)side4 brightness1bottomRightStimulusSignedResidualPitch:(id)side5 brightness1bottomStimulusSignedResidualPitch:(id)side6 brightness1bottomLeftStimulusSignedResidualPitch:(id)side7 brightness1topLeftStimulusSignedResidualPitch:(id)side8 brightness2topStimulusSignedResidualPitch:(id)side9 brightness2topRightStimulusSignedResidualPitch:(id)offline0 brightness2bottomRightStimulusSignedResidualPitch:(id)offline1 brightness2bottomStimulusSignedResidualPitch:(id)offline2 brightness2bottomLeftStimulusSignedResidualPitch:(id)offline3 brightness2topLeftStimulusSignedResidualPitch:(id)offline4 brightness3topStimulusSignedResidualPitch:(id)offline5 brightness3topRightStimulusSignedResidualPitch:(id)offline6 brightness3bottomRightStimulusSignedResidualPitch:(id)offline7 brightness3bottomStimulusSignedResidualPitch:(id)offline8 brightness3bottomLeftStimulusSignedResidualPitch:(id)offline9 brightness3topLeftStimulusSignedResidualPitch:(id)percentile0 rxuuid:(id)percentile1 enrollmentReason:(int)percentile2
{
  LODWORD(v63) = binocQuality;
  return -[BMGazeEnrollmentSample initWithUserProfileId:eyeSide:isOffline:enrollmentResidual75thPercentile:enrollmentResidual95thPercentile:enrollmentResidualMedian:dominantEye:monocularQuality:enrollmentFailureReasons:binocQuality:fixationCount:fixationCountLowBrightness:fixationCountMediumBrightness:fixationCountHighBrightness:stimulusCount:stimulusCountLowBrightness:stimulusCountMediumBrightness:stimulusCountHighBrightness:accessibilityMode:eyeboxStatus:centralStimulusSignedResidualYaw:brightness1topStimulusSignedResidualYaw:brightness1topRightStimulusSignedResidualYaw:brightness1bottomRightStimulusSignedResidualYaw:brightness1bottomStimulusSignedResidualYaw:brightness1bottomLeftStimulusSignedResidualYaw:brightness1topLeftStimulusSignedResidualYaw:brightness2topStimulusSignedResidualYaw:brightness2topRightStimulusSignedResidualYaw:brightness2bottomRightStimulusSignedResidualYaw:brightness2bottomStimulusSignedResidualYaw:brightness2bottomLeftStimulusSignedResidualYaw:brightness2topLeftStimulusSignedResidualYaw:brightness3topStimulusSignedResidualYaw:brightness3topRightStimulusSignedResidualYaw:brightness3bottomRightStimulusSignedResidualYaw:brightness3bottomStimulusSignedResidualYaw:brightness3bottomLeftStimulusSignedResidualYaw:brightness3topLeftStimulusSignedResidualYaw:centralStimulusSignedResidualPitch:brightness1topStimulusSignedResidualPitch:brightness1topRightStimulusSignedResidualPitch:brightness1bottomRightStimulusSignedResidualPitch:brightness1bottomStimulusSignedResidualPitch:brightness1bottomLeftStimulusSignedResidualPitch:brightness1topLeftStimulusSignedResidualPitch:brightness2topStimulusSignedResidualPitch:brightness2topRightStimulusSignedResidualPitch:brightness2bottomRightStimulusSignedResidualPitch:brightness2bottomStimulusSignedResidualPitch:brightness2bottomLeftStimulusSignedResidualPitch:brightness2topLeftStimulusSignedResidualPitch:brightness3topStimulusSignedResidualPitch:brightness3topRightStimulusSignedResidualPitch:brightness3bottomRightStimulusSignedResidualPitch:brightness3bottomStimulusSignedResidualPitch:brightness3bottomLeftStimulusSignedResidualPitch:brightness3topLeftStimulusSignedResidualPitch:rxuuid:enrollmentReason:enrollmentDeviceType:]( self,  "initWithUserProfileId:eyeSide:isOffline:enrollmentResidual75thPercentile:enrollmentResidual95thPercentile:enrollmentResidualMedian:dominantEye:monocularQuality:enrollmentFailureReasons:binocQuality:fixationCount:fixationCountLowBrightness:fixationCountMediumBrightness:fixationCountHighBrightness:stimulusCount:stimulusCountLowBrightness:stimulusCountMediumBrightness:stimulusCountHighBrightness:accessibilityMode:eyeboxStatus:centralStimulusSignedResidualYaw:brightness1topStimulusSignedResidualYaw:brightness1topRightStimulusSignedResidualYaw:brightness1bottomRightStimulusSignedResidualYaw:brightness1bottomStimulusSignedResidualYaw:brightness1bottomLeftStimulusSignedResidualYaw:brightness1topLeftStimulusSignedResidualYaw:brightness2topStimulusSignedResidualYaw:brightness2topRightStimulusSignedResidualYaw:brightness2bottomRightStimulusSignedResidualYaw:brightness2bottomStimulusSignedResidualYaw:brightness2bottomLeftStimulusSignedResidualYaw:brightness2topLeftStimulusSignedResidualYaw:brightness3topStimulusSignedResidualYaw:brightness3topRightStimulusSignedResidualYaw:brightness3bottomRightStimulusSignedResidualYaw:brightness3bottomStimulusSignedResidualYaw:brightness3bottomLeftStimulusSignedResidualYaw:brightness3topLeftStimulusSignedResidualYaw:centralStimulusSignedResidualPitch:brightness1topStimulusSignedResidualPitch:brightness1topRightStimulusSignedResidualPitch:brightness1bottomRightStimulusSignedResidualPitch:brightness1bottomStimulusSignedResidualPitch:brightness1bottomLeftStimulusSignedResidualPitch:brightness1topLeftStimulusSignedResidualPitch:brightness2topStimulusSignedResidualPitch:brightness2topRightStimulusSignedResidualPitch:brightness2bottomRightStimulusSignedResidualPitch:brightness2bottomStimulusSignedResidualPitch:brightness2bottomLeftStimulusSignedResidualPitch:brightness2topLeftStimulusSignedResidualPitch:brightness3topStimulusSignedResidualPitch:brightness3topRightStimulusSignedResidualPitch:brightness3bottomRightStimulusSignedResidualPitch:brightness3bottomStimulusSignedResidualPitch:brightness3bottomLeftStimulusSignedResidualPitch:brightness3topLeftStimulusSignedResidualPitch:rxuuid:enrollmentReason:enrollmentDeviceType:",  id,  side,  offline,  percentile,  residual95thPercentile,  median,  __PAIR64__(quality, eye),  reasons,  v63,  count,  brightness,  mediumBrightness,  highBrightness,  stimulusCount,  lowBrightness,  countMediumBrightness,  countHighBrightness,  __PAIR64__(status, mode),  yaw,  residualYaw,  signedResidualYaw,  stimulusSignedResidualYaw,  brightness1bottomStimulusSignedResidualYaw,  leftStimulusSignedResidualYaw,  brightness1topLeftStimulusSignedResidualYaw,  brightness2topStimulusSignedResidualYaw,  rightStimulusSignedResidualYaw,  brightness2bottomRightStimulusSignedResidualYaw,  brightness2bottomStimulusSignedResidualYaw,  brightness2bottomLeftStimulusSignedResidualYaw,  brightness2topLeftStimulusSignedResidualYaw,  brightness3topStimulusSignedResidualYaw,  brightness3topRightStimulusSignedResidualYaw,  brightness3bottomRightStimulusSignedResidualYaw,  brightness3bottomStimulusSignedResidualYaw,  brightness3bottomLeftStimulusSignedResidualYaw,  brightness3topLeftStimulusSignedResidualYaw,  pitch,  residualPitch,  signedResidualPitch,  stimulusSignedResidualPitch,  brightness1bottomStimulusSignedResidualPitch,  leftStimulusSignedResidualPitch,  brightness1topLeftStimulusSignedResidualPitch,  brightness2topStimulusSignedResidualPitch,  rightStimulusSignedResidualPitch,  brightness2bottomRightStimulusSignedResidualPitch,
           brightness2bottomStimulusSignedResidualPitch,
           brightness2bottomLeftStimulusSignedResidualPitch,
           brightness2topLeftStimulusSignedResidualPitch,
           brightness3topStimulusSignedResidualPitch,
           brightness3topRightStimulusSignedResidualPitch,
           brightness3bottomRightStimulusSignedResidualPitch,
           brightness3bottomStimulusSignedResidualPitch,
           brightness3bottomLeftStimulusSignedResidualPitch,
           brightness3topLeftStimulusSignedResidualPitch,
           rxuuid,
           reason);
}

@end