@interface MDLAnimatedVector3
- (NSUInteger)getDouble3Array:(vector_double3 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat3Array:(vector_float3 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)double3AtTime:(double)time@<D0>;
- (unint64_t)precision;
- (vector_float3)float3AtTime:(NSTimeInterval)time;
- (void)resetWithDouble3Array:(const vector_double3 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloat3Array:(const vector_float3 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
@end

@implementation MDLAnimatedVector3

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedVector3;
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
  if (sub_239E6A188(v5) & 1) != 0 || (sub_239F2B858(v5))
  {
    sub_239E5B240(v5);
    return 1;
  }

  v4 = sub_239F26A84(v5);
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
LABEL_9:
    *(v3 + 8) = 0;
    goto LABEL_10;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_239E5F7D4(v5, begin + 1);
  if (!sub_239F2B858(v5))
  {
    if (sub_239E6A188(v5))
    {
      *(v3 + 8) = &off_284D165E0 + 2;
      operator new();
    }

    if (sub_239F26A84(v5))
    {
      *(v3 + 8) = &off_284D16698 + 2;
      operator new();
    }

    self = sub_239E5B240(v5);
    goto LABEL_9;
  }

  *(v3 + 4) = 0;
  *v3 = 0;
  *(v3 + 8) = &off_284D16528 + 3;
  self = sub_239E5B240(v5);
LABEL_10:
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
  if ((sub_239F2B858(v10) & 1) != 0 || (sub_239E6A188(v10) & 1) != 0 || sub_239F26A84(v10))
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
  if ((sub_239F2B858(v10) & 1) != 0 || (sub_239E6A188(v10) & 1) != 0 || sub_239F26A84(v10))
  {
    v8 = time * scale;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (vector_float3)float3AtTime:(NSTimeInterval)time
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0.0;
  v11.__vftable = 0;
  v11.__type_name = 0;
  v8 = 0.0;
  v9.__vftable = 0;
  v9.__type_name = 0;
  sub_239F24610(&self->super._timeSampledData, &v10, &v8, time);
  if (v11.__type_name)
  {
    if ((sub_239E6A188(&v11) & 1) != 0 || (v4 = sub_239F2C218(&v11), sub_239EF2160(&v11, v4), v11.__type_name))
    {
      sub_239EEDF80(&v11);
      if (self->super._interpolation)
      {
        if (v9.__type_name)
        {
          if (v10 != v8)
          {
            if ((sub_239E6A188(&v9) & 1) != 0 || (v5 = sub_239F2C218(&v9), sub_239EF2160(&v9, v5), v9.__type_name))
            {
              sub_239EEDF80(&v9);
            }
          }
        }
      }
    }
  }

  sub_239E5B240(&v9);
  v6 = sub_239E5B240(&v11);
  result.i64[1] = v7;
  result.i64[0] = v6;
  return result;
}

- (uint64_t)double3AtTime:(double)time@<D0>
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0.0;
  v20.__vftable = 0;
  v20.__type_name = 0;
  v17 = 0.0;
  v18.__vftable = 0;
  v18.__type_name = 0;
  sub_239F24610((self + 8), &v19, &v17, time);
  if (!v20.__type_name)
  {
    goto LABEL_11;
  }

  if ((sub_239F26A84(&v20) & 1) == 0)
  {
    v6 = sub_239F2C46C(&v20);
    sub_239EF2160(&v20, v6);
    if (!v20.__type_name)
    {
      goto LABEL_11;
    }
  }

  v7 = sub_239F2C4F8(&v20);
  v8 = *v7;
  v9.f64[0] = *(v7 + 16);
  if (!*(self + 32))
  {
LABEL_10:
    v15 = v9;
    v16 = v8;
    goto LABEL_12;
  }

  if (!v18.__type_name)
  {
LABEL_11:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_12;
  }

  v15 = v9;
  v16 = *v7;
  if (v19 != v17)
  {
    if ((sub_239F26A84(&v18) & 1) != 0 || (v10 = sub_239F2C46C(&v18), sub_239EF2160(&v18, v10), v18.__type_name))
    {
      v11 = sub_239F2C4F8(&v18);
      v12.f64[0] = v11[1].f64[0];
      v13 = fmax(fmin((time - v19) / (v17 - v19), 1.0), 0.0);
      v9 = vmlaq_n_f64(vmulq_n_f64(v12, v13), v15, 1.0 - v13);
      v8 = vmlaq_n_f64(vmulq_n_f64(*v11, v13), v16, 1.0 - v13);
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_12:
  sub_239E5B240(&v18);
  result = sub_239E5B240(&v20);
  *a2 = v16;
  a2[1] = v15;
  return result;
}

- (void)resetWithFloat3Array:(const vector_float3 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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

- (void)resetWithDouble3Array:(const vector_double3 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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

- (NSUInteger)getFloat3Array:(vector_float3 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v15 = *MEMORY[0x277D85DE8];
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
      v14.__vftable = 0;
      v14.__type_name = 0;
      sub_239E5F7D4(&v14, (self->super._timeSampledData.__begin_ + v7 + 8));
      v9 = sub_239E6A188(&v14);
      v10 = &v14;
      if ((v9 & 1) == 0)
      {
        v10 = sub_239F2C218(&v14);
      }

      v11 = sub_239EEDF80(v10);
      v12.i64[0] = *v11;
      v12.i32[2] = *(v11 + 8);
      *valuesArray++ = v12;
      sub_239E5B240(&v14);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

- (NSUInteger)getDouble3Array:(vector_double3 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v15 = *MEMORY[0x277D85DE8];
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
      v14.__vftable = 0;
      v14.__type_name = 0;
      sub_239E5F7D4(&v14, (self->super._timeSampledData.__begin_ + v7 + 8));
      v9 = sub_239F26A84(&v14);
      v10 = &v14;
      if ((v9 & 1) == 0)
      {
        v10 = sub_239F2C46C(&v14);
      }

      v11 = sub_239F2C4F8(v10);
      *&v12 = *(v11 + 16);
      *valuesArray->f64 = *v11;
      *&valuesArray->f64[2] = v12;
      ++valuesArray;
      sub_239E5B240(&v14);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

@end