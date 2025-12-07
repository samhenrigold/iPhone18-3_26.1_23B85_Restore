@interface VCSegmentCallHistory
- (VCSegmentCallHistory)init;
- (int)deserialize:(int *)deserialize;
- (int)serialize:(int *)serialize;
- (void)updateSegmentWithTBR:(int)r ISBTR:(int)tR SATXBR:(int)bR SARBR:(int)rBR BWE:(int)e shortTermWeight:(double)weight longTermWeight:(double)termWeight;
@end

@implementation VCSegmentCallHistory

- (VCSegmentCallHistory)init
{
  v3.receiver = self;
  v3.super_class = VCSegmentCallHistory;
  result = [(VCSegmentCallHistory *)&v3 init];
  if (result)
  {
    *&result->_shortTermSARBR = 0u;
    *&result->_shortTermISBR = 0u;
    *&result->_longTermAdjustmentTBR = 0u;
  }

  return result;
}

- (int)serialize:(int *)serialize
{
  if (serialize)
  {
    *serialize = self->_longTermAdjustmentTBR;
    serialize[1] = self->_shortTermAdjustmentTBR;
    serialize[2] = self->_historyLength;
    serialize[3] = self->_previousISBR;
    serialize[4] = self->_longTermISBR;
    serialize[5] = self->_shortTermISBR;
    serialize[6] = self->_longTermSATXBR;
    serialize[7] = self->_shortTermSATXBR;
    serialize[8] = self->_longTermSARBR;
    serialize[9] = self->_shortTermSARBR;
    serialize[10] = self->_longTermBWE;
    serialize[11] = self->_shortTermBWE;
  }

  return 12;
}

- (int)deserialize:(int *)deserialize
{
  if (deserialize)
  {
    self->_longTermAdjustmentTBR = *deserialize;
    self->_shortTermAdjustmentTBR = deserialize[1];
    self->_historyLength = deserialize[2];
    self->_previousISBR = deserialize[3];
    self->_longTermISBR = deserialize[4];
    self->_shortTermISBR = deserialize[5];
    self->_longTermSATXBR = deserialize[6];
    self->_shortTermSATXBR = deserialize[7];
    self->_longTermSARBR = deserialize[8];
    self->_shortTermSARBR = deserialize[9];
    self->_longTermBWE = deserialize[10];
    self->_shortTermBWE = deserialize[11];
  }

  return 12;
}

- (void)updateSegmentWithTBR:(int)r ISBTR:(int)tR SATXBR:(int)bR SARBR:(int)rBR BWE:(int)e shortTermWeight:(double)weight longTermWeight:(double)termWeight
{
  historyLength = self->_historyLength;
  if (historyLength)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v16 = vsubq_f64(_Q0, *&termWeight);
    v17 = *&self->_longTermAdjustmentTBR;
    v18.i64[0] = v17;
    v18.i64[1] = SHIDWORD(v17);
    *&self->_longTermAdjustmentTBR = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(vmulq_n_f64(*&termWeight, r), v16, vcvtq_f64_s64(v18))));
    v18.i64[0] = tR;
    v18.i64[1] = bR;
    v19 = vcvtq_f64_s64(v18);
    v20 = *&self->_longTermISBR;
    v18.i64[0] = SDWORD2(v20);
    v18.i64[1] = SHIDWORD(v20);
    v21 = vcvtq_f64_s64(v18);
    v18.i64[0] = v20;
    v18.i64[1] = SDWORD1(v20);
    *&self->_longTermISBR = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(vmulq_n_f64(*&termWeight, v19.f64[0]), v16, vcvtq_f64_s64(v18))), vcvtq_s64_f64(vmlaq_f64(vmulq_laneq_f64(*&termWeight, v19, 1), v16, v21)));
    v18.i64[0] = rBR;
    v18.i64[1] = e;
    v22 = vcvtq_f64_s64(v18);
    v23 = *&self->_longTermSARBR;
    v18.i64[0] = SDWORD2(v23);
    v18.i64[1] = SHIDWORD(v23);
    v24 = vcvtq_f64_s64(v18);
    v18.i64[0] = v23;
    v18.i64[1] = SDWORD1(v23);
    *&self->_longTermSARBR = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(vmulq_n_f64(*&termWeight, v22.f64[0]), v16, vcvtq_f64_s64(v18))), vcvtq_s64_f64(vmlaq_f64(vmulq_laneq_f64(*&termWeight, v22, 1), v16, v24)));
  }

  else
  {
    self->_longTermAdjustmentTBR = r;
    self->_shortTermAdjustmentTBR = r;
    self->_longTermISBR = tR;
    self->_shortTermISBR = tR;
    self->_longTermSATXBR = bR;
    self->_shortTermSATXBR = bR;
    self->_longTermSARBR = rBR;
    self->_shortTermSARBR = rBR;
    self->_longTermBWE = e;
    self->_shortTermBWE = e;
  }

  self->_previousISBR = tR;
  self->_historyLength = historyLength + 1;
}

@end