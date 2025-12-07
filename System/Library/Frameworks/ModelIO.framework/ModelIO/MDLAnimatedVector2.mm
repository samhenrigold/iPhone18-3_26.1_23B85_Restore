@interface MDLAnimatedVector2
- (NSUInteger)getDouble2Array:(vector_double2 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat2Array:(vector_float2 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)precision;
- (vector_double2)double2AtTime:(NSTimeInterval)time;
- (vector_float2)float2AtTime:(NSTimeInterval)time;
- (void)resetWithDouble2Array:(const vector_double2 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloat2Array:(const vector_float2 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setFloat2:(vector_float2)value atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedVector2

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedVector2;
  return [(MDLAnimatedValue *)&v4 copyWithZone:zone];
}

- (unint64_t)precision
{
  v5[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  if (self->super._timeSampledData.__end_ == begin)
  {
    return 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_239E5F7D4(v5, begin + 1);
  if (sub_239F2A554(v5) & 1) != 0 || (sub_239F2A58C(v5))
  {
    sub_239E5B240(v5);
    return 1;
  }

  v4 = sub_239F2A5C4(v5);
  sub_239E5B240(v5);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (VtValue)defaultVtValue
{
  v3 = v2;
  v5[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  if (self->super._timeSampledData.__end_ == begin)
  {
    goto LABEL_10;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_239E5F7D4(v5, begin + 1);
  if (!sub_239F2A58C(v5))
  {
    if (sub_239F2A554(v5))
    {
      *v3 = 0;
      v3[1] = &off_284D16808 + 3;
      goto LABEL_8;
    }

    if (sub_239F2A5C4(v5))
    {
      v3[1] = &off_284D168C0 + 2;
      operator new();
    }

    self = sub_239E5B240(v5);
LABEL_10:
    v3[1] = 0;
    goto LABEL_11;
  }

  v3[1] = &off_284D16750 + 3;
  *v3 = 0;
LABEL_8:
  self = sub_239E5B240(v5);
LABEL_11:
  result._info._ptrAndBits = a2;
  result._storage = self;
  return result;
}

- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale
{
  v10[2] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  if (end != begin)
  {
    do
    {
      v7 = (end - 24);
      sub_239E5B240(end - 16);
      end = v7;
    }

    while (v7 != begin);
  }

  self->super._timeSampledData.__end_ = begin;
  sub_239F236EC(&self->super._timeSampledData, 0);
  v10[0] = 0;
  v10[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((sub_239F2A58C(v10) & 1) != 0 || (sub_239F2A554(v10) & 1) != 0 || sub_239F2A5C4(v10))
  {
    v8 = 0;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((sub_239F2A58C(v10) & 1) != 0 || (sub_239F2A554(v10) & 1) != 0 || sub_239F2A5C4(v10))
  {
    v8 = time * scale;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (void)setFloat2:(vector_float2)value atTime:(NSTimeInterval)time
{
  v24[2] = *MEMORY[0x277D85DE8];
  v24[1] = &off_284D16808 + 3;
  v24[0] = value;
  begin = self->super._timeSampledData.__begin_;
  p_timeSampledData = &self->super._timeSampledData;
  if (self->super._timeSampledData.__end_ != begin)
  {
    v21 = 0.0;
    v22[0] = 0;
    sub_239E5F7D4(&v21, begin + 1);
    if ((sub_239F2A554(&v21) & 1) == 0)
    {
      objc_msgSend_defaultVtValue(self, v15, v16, v17, v18, v8, v9, v10, v11, v12, v13, v14);
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v23);
      v20 = sub_239F3090C(v24, Typeid);
      sub_239EF2160(v24, v20);
      sub_239E5B240(v23);
    }

    sub_239E5B240(&v21);
  }

  v21 = time;
  sub_239E5F7D4(v22, v24);
  sub_239F23C24(p_timeSampledData, &v21);
  sub_239E5B240(v22);
  sub_239E5B240(v24);
}

- (vector_float2)float2AtTime:(NSTimeInterval)time
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0.0;
  v16.__vftable = 0;
  v16.__type_name = 0;
  v13 = 0.0;
  v14.__vftable = 0;
  v14.__type_name = 0;
  sub_239F24610(&self->super._timeSampledData, &v15, &v13, time);
  v5 = 0;
  if (v16.__type_name)
  {
    if ((sub_239F2A554(&v16) & 1) != 0 || (v6 = sub_239F2AEF4(&v16), sub_239EF2160(&v16, v6), v16.__type_name))
    {
      v7 = sub_239F2AF80(&v16);
      v8 = *v7;
      if (!self->super._interpolation)
      {
LABEL_7:
        v5 = *v7;
        goto LABEL_8;
      }

      if (v14.__type_name)
      {
        if (v15 == v13)
        {
          goto LABEL_7;
        }

        if ((sub_239F2A554(&v14) & 1) != 0 || (v10 = sub_239F2AEF4(&v14), sub_239EF2160(&v14, v10), v14.__type_name))
        {
          v11 = sub_239F2AF80(&v14);
          v12 = fmax(fmin((time - v15) / (v13 - v15), 1.0), 0.0);
          v5 = vmla_n_f32(vmul_n_f32(*v11, v12), v8, 1.0 - v12);
        }
      }
    }
  }

LABEL_8:
  sub_239E5B240(&v14);
  sub_239E5B240(&v16);
  return v5;
}

- (vector_double2)double2AtTime:(NSTimeInterval)time
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0.0;
  v17.__vftable = 0;
  v17.__type_name = 0;
  v14 = 0.0;
  v15.__vftable = 0;
  v15.__type_name = 0;
  sub_239F24610(&self->super._timeSampledData, &v16, &v14, time);
  v13 = 0u;
  if (v17.__type_name)
  {
    if ((sub_239F2A5C4(&v17) & 1) != 0 || (v5 = sub_239F2B1B8(&v17), sub_239EF2160(&v17, v5), v17.__type_name))
    {
      v6 = sub_239F2B244(&v17);
      v7 = *v6;
      if (!self->super._interpolation)
      {
LABEL_11:
        v13 = v7;
        goto LABEL_12;
      }

      v12 = *v6;
      if (v15.__type_name)
      {
        if (v16 == v14)
        {
          v7 = *v6;
          goto LABEL_11;
        }

        if ((sub_239F2A5C4(&v15) & 1) != 0 || (v8 = sub_239F2B1B8(&v15), sub_239EF2160(&v15, v8), v15.__type_name))
        {
          v9 = sub_239F2B244(&v15);
          v10 = fmax(fmin((time - v16) / (v14 - v16), 1.0), 0.0);
          v7 = vmlaq_n_f64(vmulq_n_f64(*v9, v10), v12, 1.0 - v10);
          goto LABEL_11;
        }
      }
    }
  }

LABEL_12:
  sub_239E5B240(&v15);
  sub_239E5B240(&v17);
  return v13;
}

- (void)resetWithFloat2Array:(const vector_float2 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
{
  v16[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  p_timeSampledData = &self->super._timeSampledData;
  if (end != begin)
  {
    do
    {
      v12 = (end - 24);
      sub_239E5B240(end - 16);
      end = v12;
    }

    while (v12 != begin);
  }

  for (self->super._timeSampledData.__end_ = begin; count; --count)
  {
    v13 = *timesArray;
    v14 = *valuesArray;
    v16[1] = &off_284D16808 + 3;
    v15 = v13;
    v16[0] = v14;
    sub_239F237C8(p_timeSampledData, &v15);
    sub_239E5B240(v16);
    ++valuesArray;
    ++timesArray;
  }
}

- (void)resetWithDouble2Array:(const vector_double2 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
{
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  if (end != begin)
  {
    do
    {
      v9 = (end - 24);
      sub_239E5B240(end - 16);
      end = v9;
    }

    while (v9 != begin);
  }

  self->super._timeSampledData.__end_ = begin;
  if (count)
  {
    operator new();
  }
}

- (NSUInteger)getFloat2Array:(vector_float2 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v13 = *MEMORY[0x277D85DE8];
  if (0xAAAAAAAAAAAAAAABLL * ((self->super._timeSampledData.__end_ - self->super._timeSampledData.__begin_) >> 3) >= maxCount)
  {
    v4 = maxCount;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((self->super._timeSampledData.__end_ - self->super._timeSampledData.__begin_) >> 3);
  }

  if (v4)
  {
    v7 = 0;
    v8 = v4;
    do
    {
      v12.__vftable = 0;
      v12.__type_name = 0;
      sub_239E5F7D4(&v12, (self->super._timeSampledData.__begin_ + v7 + 8));
      v9 = sub_239F2A554(&v12);
      v10 = &v12;
      if ((v9 & 1) == 0)
      {
        v10 = sub_239F2AEF4(&v12);
      }

      *valuesArray++ = *sub_239F2AF80(v10);
      sub_239E5B240(&v12);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

- (NSUInteger)getDouble2Array:(vector_double2 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v13 = *MEMORY[0x277D85DE8];
  if (0xAAAAAAAAAAAAAAABLL * ((self->super._timeSampledData.__end_ - self->super._timeSampledData.__begin_) >> 3) >= maxCount)
  {
    v4 = maxCount;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((self->super._timeSampledData.__end_ - self->super._timeSampledData.__begin_) >> 3);
  }

  if (v4)
  {
    v7 = 0;
    v8 = v4;
    do
    {
      v12.__vftable = 0;
      v12.__type_name = 0;
      sub_239E5F7D4(&v12, (self->super._timeSampledData.__begin_ + v7 + 8));
      v9 = sub_239F2A5C4(&v12);
      v10 = &v12;
      if ((v9 & 1) == 0)
      {
        v10 = sub_239F2B1B8(&v12);
      }

      *valuesArray++ = *sub_239F2B244(v10);
      sub_239E5B240(&v12);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

@end