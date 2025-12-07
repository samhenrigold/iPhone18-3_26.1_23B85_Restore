@interface CMAPrecisionFindingAnalytics
- (CMAPrecisionFindingAnalytics)init;
- (id)analyticsDictionary;
- (void)dealloc;
- (void)feedAcceptedRange:(CMARangeType *)range;
- (void)feedDeviceMotion:(CMADeviceMotionType *)motion;
- (void)feedEstimatedHeight:(double)maxEstimatedHeight;
- (void)feedFractionAboveThreshold:(double)threshold;
- (void)feedRange:(CMARangeType *)range;
- (void)feedRevokeReason:(int)reason;
@end

@implementation CMAPrecisionFindingAnalytics

- (CMAPrecisionFindingAnalytics)init
{
  v8.receiver = self;
  v8.super_class = CMAPrecisionFindingAnalytics;
  result = [(CMAPrecisionFindingAnalytics *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_timestampOfFirstRawRange = _Q0;
    *&result->_timestampOfPreviousDMSample = _Q0;
    *&result->_totalTimeDuringRevoke = 0u;
    *&result->_countWristDown = 0u;
    *&result->_countAcceptedRange = 0u;
    *(&result->_countRawRangeDuringRevoke + 2) = 0;
    *&result->_minEstimatedHeight = 0u;
    *&result->_percentOfSessionInWristUp = 0u;
    *&result->_timeFromFirstRangeToFirstAcceptedRange = 0u;
    *&result->_meanRawRangeFrequencyThroughoutSession = 0u;
    *&result->_meanRawRangeFrequencyWhileConverging = 0u;
    *&result->_meanRawRangeFrequencyDuringRevoke = 0u;
    *&result->_maxEstimatedDeltaHeightOverSession = 0u;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMAPrecisionFindingAnalytics;
  [(CMAPrecisionFindingAnalytics *)&v3 dealloc];
}

- (void)feedDeviceMotion:(CMADeviceMotionType *)motion
{
  var0 = motion->var0;
  if (self->_timestampOfFirstDMSample == -1.0)
  {
    self->_timestampOfFirstDMSample = var0;
  }

  self->_timestampOfRecentDMSample = var0;
  if (self->_crown && self->_wrist)
  {
    ++self->_countDM;
    v6 = *&motion->var1.var2;
    v27 = vcvt_hight_f32_f64(vcvt_f32_f64(*&motion->var1.var0), v6);
    sub_245F24EC0(&v27, v6);
    v7 = sub_245F24C20(v27.f32);
    v9 = v8;
    v11 = v10 * v10;
    v12 = sqrtf((v10 * v10) + (v8 * v8));
    v13 = atan2f(v12, v7);
    if (self->_wrist == self->_crown)
    {
      v13 = atan2f(v12, -v7);
    }

    v14 = v13;
    v17 = atan2f(sqrtf((v7 * v7) + v11), v9);
    if (v14 < 1.9199 && v14 > 1.309 && v17 > 1.5708)
    {
      ++self->_countWristUp;
    }

    if (v14 < 1.0472)
    {
      ++self->_countWristDown;
    }

    countDM = self->_countDM;
    if (countDM >= 1)
    {
      v19 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v15, v16, self->_countWristUp / countDM * 100.0);
      objc_msgSend_setPercentOfSessionInWristUp_(self, v20, v19);
      v23 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v21, v22, self->_countWristDown / self->_countDM * 100.0);
      objc_msgSend_setPercentOfSessionInWristDown_(self, v24, v23);
    }

    if (self->_wasFirstArcShown && self->_revokeReason == 2)
    {
      timestampOfPreviousDMSample = self->_timestampOfPreviousDMSample;
      if (timestampOfPreviousDMSample > 0.0)
      {
        v26 = motion->var0 - timestampOfPreviousDMSample;
        if (v26 > 0.0)
        {
          self->_totalTimeDuringRevoke = v26 + self->_totalTimeDuringRevoke;
        }
      }
    }

    self->_timestampOfPreviousDMSample = motion->var0;
  }
}

- (void)feedRange:(CMARangeType *)range
{
  timestampOfFirstRawRange = self->_timestampOfFirstRawRange;
  if (timestampOfFirstRawRange == -1.0)
  {
    timestampOfFirstRawRange = range->timestamp;
    self->_timestampOfFirstRawRange = range->timestamp;
  }

  v5 = self->_countRawRange + 1;
  self->_countRawRange = v5;
  if (self->_timestampOfFirstDMSample > 0.0)
  {
    v6 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, range, v5 / (self->_timestampOfRecentDMSample - timestampOfFirstRawRange));
    objc_msgSend_setMeanRawRangeFrequencyThroughoutSession_(self, v7, v6);
    if (self->_wasFirstRangeAccepted && !self->_wasFirstArcShown)
    {
      v10 = self->_countRawRangeWhileConverging + 1;
      self->_countRawRangeWhileConverging = v10;
      v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v8, v9, v10 / (self->_timestampOfRecentDMSample - self->_timestampOfFirstAcceptedRange));
      objc_msgSend_setMeanRawRangeFrequencyWhileConverging_(self, v12, v11);
    }

    if (self->_wasFirstArcShown && self->_revokeReason == 2)
    {
      v13 = self->_countRawRangeDuringRevoke + 1;
      self->_countRawRangeDuringRevoke = v13;
      totalTimeDuringRevoke = self->_totalTimeDuringRevoke;
      if (totalTimeDuringRevoke > 0.0)
      {
        v15 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v8, v9, v13 / totalTimeDuringRevoke);

        MEMORY[0x2821F9670](self, sel_setMeanRawRangeFrequencyDuringRevoke_, v15);
      }
    }
  }
}

- (void)feedAcceptedRange:(CMARangeType *)range
{
  if (self->_timestampOfFirstAcceptedRange == -1.0)
  {
    timestamp = range->timestamp;
    self->_timestampOfFirstAcceptedRange = range->timestamp;
    v6 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, range, timestamp - self->_timestampOfFirstRawRange);
    objc_msgSend_setTimeFromFirstRangeToFirstAcceptedRange_(self, v7, v6);
    v10 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v8, v9, range->range);
    objc_msgSend_setFirstAcceptedRange_(self, v11, v10);
    self->_wasFirstRangeAccepted = 1;
  }

  v12 = self->_countAcceptedRange + 1;
  self->_countAcceptedRange = v12;
  if (self->_timestampOfFirstDMSample > 0.0)
  {
    v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, range, v12 / (self->_timestampOfRecentDMSample - self->_timestampOfFirstAcceptedRange));
    objc_msgSend_setMeanAcceptedRangeFrequencyThroughoutSession_(self, v14, v13);
    if (self->_wasFirstRangeAccepted && !self->_wasFirstArcShown)
    {
      v17 = self->_countAcceptedRangeWhileConverging + 1;
      self->_countAcceptedRangeWhileConverging = v17;
      v18 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v15, v16, v17 / (self->_timestampOfRecentDMSample - self->_timestampOfFirstAcceptedRange));
      objc_msgSend_setMeanAcceptedRangeFrequencyWhileConverging_(self, v19, v18);
    }

    if (self->_wasFirstArcShown && self->_revokeReason == 2)
    {
      v20 = self->_countAcceptedRangeDuringRevoke + 1;
      self->_countAcceptedRangeDuringRevoke = v20;
      totalTimeDuringRevoke = self->_totalTimeDuringRevoke;
      if (totalTimeDuringRevoke > 0.0)
      {
        v22 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v15, v16, v20 / totalTimeDuringRevoke);

        MEMORY[0x2821F9670](self, sel_setMeanAcceptedFrequencyQualityDuringRevoke_, v22);
      }
    }
  }
}

- (void)feedRevokeReason:(int)reason
{
  self->_revokeReason = reason;
  if (!reason)
  {
    self->_wasFirstArcShown = 1;
  }
}

- (void)feedEstimatedHeight:(double)maxEstimatedHeight
{
  minEstimatedHeight = self->_minEstimatedHeight;
  if (minEstimatedHeight > maxEstimatedHeight)
  {
    minEstimatedHeight = maxEstimatedHeight;
  }

  if (self->_maxEstimatedHeight >= maxEstimatedHeight)
  {
    maxEstimatedHeight = self->_maxEstimatedHeight;
  }

  self->_minEstimatedHeight = minEstimatedHeight;
  self->_maxEstimatedHeight = maxEstimatedHeight;
  v6 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, vabdd_f64(maxEstimatedHeight, minEstimatedHeight));

  MEMORY[0x2821F9670](self, sel_setMaxEstimatedDeltaHeightOverSession_, v6);
}

- (void)feedFractionAboveThreshold:(double)threshold
{
  v6 = objc_msgSend_maxPercentParticlesAboveHeightThreshold(self, a2, v3);
  v9 = MEMORY[0x277CCABB0];
  if (v6)
  {
    v10 = objc_msgSend_maxPercentParticlesAboveHeightThreshold(self, v7, v8);
    objc_msgSend_doubleValue(v10, v11, v12);
    if (v13 >= threshold)
    {
      threshold = v13;
    }
  }

  v14 = objc_msgSend_numberWithDouble_(v9, v7, v8, threshold);

  MEMORY[0x2821F9670](self, sel_setMaxPercentParticlesAboveHeightThreshold_, v14);
}

- (id)analyticsDictionary
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_percentOfSessionInWristUp(self, v5, v6))
  {
    v9 = objc_msgSend_percentOfSessionInWristUp(self, v7, v8);
    objc_msgSend_setObject_forKey_(v4, v10, v9, @"PercentOfSessionInWristUp");
  }

  if (objc_msgSend_percentOfSessionInWristDown(self, v7, v8))
  {
    v13 = objc_msgSend_percentOfSessionInWristDown(self, v11, v12);
    objc_msgSend_setObject_forKey_(v4, v14, v13, @"PercentOfSessionInWristDown");
  }

  if (objc_msgSend_timeFromFirstRangeToFirstAcceptedRange(self, v11, v12))
  {
    RangeToFirstAcceptedRange = objc_msgSend_timeFromFirstRangeToFirstAcceptedRange(self, v15, v16);
    objc_msgSend_setObject_forKey_(v4, v18, RangeToFirstAcceptedRange, @"TimeFromFirstRangeToFirstAcceptedRange");
  }

  if (objc_msgSend_firstAcceptedRange(self, v15, v16))
  {
    AcceptedRange = objc_msgSend_firstAcceptedRange(self, v19, v20);
    objc_msgSend_setObject_forKey_(v4, v22, AcceptedRange, @"FirstAcceptedRange");
  }

  if (objc_msgSend_meanRawRangeFrequencyThroughoutSession(self, v19, v20))
  {
    v25 = objc_msgSend_meanRawRangeFrequencyThroughoutSession(self, v23, v24);
    objc_msgSend_setObject_forKey_(v4, v26, v25, @"MeanRawRangeFrequencyThroughoutSession");
  }

  if (objc_msgSend_meanAcceptedRangeFrequencyThroughoutSession(self, v23, v24))
  {
    v29 = objc_msgSend_meanAcceptedRangeFrequencyThroughoutSession(self, v27, v28);
    objc_msgSend_setObject_forKey_(v4, v30, v29, @"MeanAcceptedRangeFrequencyThroughoutSession");
  }

  if (objc_msgSend_meanRawRangeFrequencyWhileConverging(self, v27, v28))
  {
    v33 = objc_msgSend_meanRawRangeFrequencyWhileConverging(self, v31, v32);
    objc_msgSend_setObject_forKey_(v4, v34, v33, @"MeanRawRangeFrequencyWhileConverging");
  }

  if (objc_msgSend_meanAcceptedRangeFrequencyWhileConverging(self, v31, v32))
  {
    v37 = objc_msgSend_meanAcceptedRangeFrequencyWhileConverging(self, v35, v36);
    objc_msgSend_setObject_forKey_(v4, v38, v37, @"MeanAcceptedRangeFrequencyWhileConverging");
  }

  if (objc_msgSend_meanRawRangeFrequencyDuringRevoke(self, v35, v36))
  {
    v41 = objc_msgSend_meanRawRangeFrequencyDuringRevoke(self, v39, v40);
    objc_msgSend_setObject_forKey_(v4, v42, v41, @"MeanRawRangeFrequencyDuringRevoke");
  }

  if (objc_msgSend_meanAcceptedFrequencyQualityDuringRevoke(self, v39, v40))
  {
    v45 = objc_msgSend_meanAcceptedFrequencyQualityDuringRevoke(self, v43, v44);
    objc_msgSend_setObject_forKey_(v4, v46, v45, @"MeanAcceptedFrequencyQualityDuringRevoke");
  }

  if (objc_msgSend_maxEstimatedDeltaHeightOverSession(self, v43, v44))
  {
    v49 = objc_msgSend_maxEstimatedDeltaHeightOverSession(self, v47, v48);
    objc_msgSend_setObject_forKey_(v4, v50, v49, @"MaxEstimatedDeltaHeightOverSession");
  }

  if (objc_msgSend_maxPercentParticlesAboveHeightThreshold(self, v47, v48))
  {
    v53 = objc_msgSend_maxPercentParticlesAboveHeightThreshold(self, v51, v52);
    objc_msgSend_setObject_forKey_(v4, v54, v53, @"MaxPercentParticlesAboveHeightThreshold");
  }

  return v4;
}

@end