@interface MDLAnimatedScalar
- (NSUInteger)getDoubleArray:(double *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloatArray:(float *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (double)doubleAtTime:(NSTimeInterval)time;
- (float)floatAtTime:(NSTimeInterval)time;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)precision;
- (void)resetWithDoubleArray:(const double *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloatArray:(const float *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setDouble:(double)value atTime:(NSTimeInterval)time;
- (void)setFloat:(float)value atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedScalar

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedScalar;
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
  if (sub_239E6A084(v5) & 1) != 0 || (sub_239F2940C(v5))
  {
    sub_239E5B240(v5);
    return 1;
  }

  v4 = sub_239F24D70(v5);
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
  if (!sub_239F2940C(v5))
  {
    if (sub_239E6A084(v5))
    {
      *(v3 + 8) = &unk_284D15333;
      *v3 = 0;
      goto LABEL_8;
    }

    if (sub_239F24D70(v5))
    {
      *v3 = 0;
      *(v3 + 8) = &unk_284D153EB;
      goto LABEL_8;
    }

    self = sub_239E5B240(v5);
LABEL_10:
    *(v3 + 8) = 0;
    goto LABEL_11;
  }

  *(v3 + 8) = &off_284D15610 + 3;
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
  if ((sub_239F2940C(v10) & 1) != 0 || (sub_239E6A084(v10) & 1) != 0 || sub_239F24D70(v10))
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
  if ((sub_239F2940C(v10) & 1) != 0 || (sub_239E6A084(v10) & 1) != 0 || sub_239F24D70(v10))
  {
    v8 = time * scale;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (void)setFloat:(float)value atTime:(NSTimeInterval)time
{
  v24[2] = *MEMORY[0x277D85DE8];
  v24[1] = &unk_284D15333;
  v24[0] = LODWORD(value);
  begin = self->super._timeSampledData.__begin_;
  p_timeSampledData = &self->super._timeSampledData;
  if (self->super._timeSampledData.__end_ != begin)
  {
    v21 = 0.0;
    v22[0] = 0;
    sub_239E5F7D4(&v21, begin + 1);
    if ((sub_239E6A084(&v21) & 1) == 0)
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

- (void)setDouble:(double)value atTime:(NSTimeInterval)time
{
  v24[2] = *MEMORY[0x277D85DE8];
  v24[1] = &unk_284D153EB;
  *v24 = value;
  begin = self->super._timeSampledData.__begin_;
  p_timeSampledData = &self->super._timeSampledData;
  if (self->super._timeSampledData.__end_ != begin)
  {
    v21 = 0.0;
    v22[0] = 0;
    sub_239E5F7D4(&v21, begin + 1);
    if ((sub_239F24D70(&v21) & 1) == 0)
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

- (float)floatAtTime:(NSTimeInterval)time
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0.0;
  v16.__vftable = 0;
  v16.__type_name = 0;
  v13 = 0.0;
  v14.__vftable = 0;
  v14.__type_name = 0;
  sub_239F24610(&self->super._timeSampledData, &v15, &v13, time);
  v5 = 0.0;
  if (v16.__type_name)
  {
    if ((sub_239E6A084(&v16) & 1) != 0 || (v6 = sub_239F29CD0(&v16), sub_239EF2160(&v16, v6), v16.__type_name))
    {
      v7 = sub_239E6A0BC(&v16);
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

        if ((sub_239E6A084(&v14) & 1) != 0 || (v10 = sub_239F29CD0(&v14), sub_239EF2160(&v14, v10), v14.__type_name))
        {
          v11 = sub_239E6A0BC(&v14);
          v12 = fmax(fmin((time - v15) / (v13 - v15), 1.0), 0.0);
          v5 = v8 + ((*v11 - v8) * v12);
        }
      }
    }
  }

LABEL_8:
  sub_239E5B240(&v14);
  sub_239E5B240(&v16);
  return v5;
}

- (double)doubleAtTime:(NSTimeInterval)time
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0.0;
  v15.__vftable = 0;
  v15.__type_name = 0;
  v12 = 0.0;
  v13.__vftable = 0;
  v13.__type_name = 0;
  sub_239F24610(&self->super._timeSampledData, &v14, &v12, time);
  v5 = 0.0;
  if (v15.__type_name)
  {
    if ((sub_239F24D70(&v15) & 1) != 0 || (v6 = sub_239F29EF4(&v15), sub_239EF2160(&v15, v6), v15.__type_name))
    {
      v7 = sub_239F29F80(&v15);
      v8 = *v7;
      if (!self->super._interpolation)
      {
LABEL_7:
        v5 = *v7;
        goto LABEL_8;
      }

      if (v13.__type_name)
      {
        if (v14 == v12)
        {
          goto LABEL_7;
        }

        if ((sub_239F24D70(&v13) & 1) != 0 || (v10 = sub_239F29EF4(&v13), sub_239EF2160(&v13, v10), v13.__type_name))
        {
          v11 = sub_239F29F80(&v13);
          v5 = v8 + fmax(fmin((time - v14) / (v12 - v14), 1.0), 0.0) * (*v11 - v8);
        }
      }
    }
  }

LABEL_8:
  sub_239E5B240(&v13);
  sub_239E5B240(&v15);
  return v5;
}

- (void)resetWithFloatArray:(const float *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
{
  v17 = *MEMORY[0x277D85DE8];
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
    v14 = *timesArray;
    v13 = *valuesArray;
    v16 = &unk_284D15333;
    v15 = v13;
    sub_239F237C8(p_timeSampledData, &v14);
    sub_239E5B240(&v15);
    ++valuesArray;
    ++timesArray;
  }
}

- (void)resetWithDoubleArray:(const double *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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
    v16[1] = &unk_284D153EB;
    v15 = v13;
    v16[0] = v14;
    sub_239F237C8(p_timeSampledData, &v15);
    sub_239E5B240(v16);
    ++valuesArray;
    ++timesArray;
  }
}

- (NSUInteger)getFloatArray:(float *)valuesArray maxCount:(NSUInteger)maxCount
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
      v9 = sub_239E6A084(&v12);
      v10 = &v12;
      if ((v9 & 1) == 0)
      {
        v10 = sub_239F29CD0(&v12);
      }

      *valuesArray++ = *sub_239E6A0BC(v10);
      sub_239E5B240(&v12);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

- (NSUInteger)getDoubleArray:(double *)valuesArray maxCount:(NSUInteger)maxCount
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
      v9 = sub_239F24D70(&v12);
      v10 = &v12;
      if ((v9 & 1) == 0)
      {
        v10 = sub_239F29EF4(&v12);
      }

      *valuesArray++ = *sub_239F29F80(v10);
      sub_239E5B240(&v12);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

@end