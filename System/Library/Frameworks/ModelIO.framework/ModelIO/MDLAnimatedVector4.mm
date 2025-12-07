@interface MDLAnimatedVector4
- (NSUInteger)getDouble4Array:(vector_double4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat4Array:(vector_float4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)double4AtTime:(double)time@<D0>;
- (unint64_t)precision;
- (vector_float4)float4AtTime:(NSTimeInterval)time;
- (void)resetWithDouble4Array:(const vector_double4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloat4Array:(const vector_float4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
@end

@implementation MDLAnimatedVector4

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedVector4;
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
  if (sub_239E6A150(v5) & 1) != 0 || (sub_239F2CB70(v5))
  {
    sub_239E5B240(v5);
    return 1;
  }

  v4 = sub_239F2CBA8(v5);
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
    v3[1] = 0;
    goto LABEL_10;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_239E5F7D4(v5, begin + 1);
  if (!sub_239F2CB70(v5))
  {
    if (sub_239E6A150(v5))
    {
      v3[1] = &off_284D163B8 + 2;
      operator new();
    }

    if (sub_239F2CBA8(v5))
    {
      v3[1] = &off_284D16470 + 2;
      operator new();
    }

    self = sub_239E5B240(v5);
    goto LABEL_9;
  }

  *v3 = 0;
  v3[1] = &off_284D16300 + 3;
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
  if ((sub_239F2CB70(v10) & 1) != 0 || (sub_239E6A150(v10) & 1) != 0 || sub_239F2CBA8(v10))
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
  if ((sub_239F2CB70(v10) & 1) != 0 || (sub_239E6A150(v10) & 1) != 0 || sub_239F2CBA8(v10))
  {
    v8 = time * scale;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (vector_float4)float4AtTime:(NSTimeInterval)time
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
    if ((sub_239E6A150(&v17) & 1) != 0 || (v5 = sub_239F2D53C(&v17), sub_239EF2160(&v17, v5), v17.__type_name))
    {
      v6 = sub_239EEDEEC(&v17);
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

        if ((sub_239E6A150(&v15) & 1) != 0 || (v8 = sub_239F2D53C(&v15), sub_239EF2160(&v15, v8), v15.__type_name))
        {
          v9 = sub_239EEDEEC(&v15);
          v10 = fmax(fmin((time - v16) / (v14 - v16), 1.0), 0.0);
          v7 = vmlaq_n_f32(vmulq_n_f32(*v9, v10), v12, 1.0 - v10);
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

- (uint64_t)double4AtTime:(double)time@<D0>
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0.0;
  v19.__vftable = 0;
  v19.__type_name = 0;
  v16 = 0.0;
  v17.__vftable = 0;
  v17.__type_name = 0;
  sub_239F24610((self + 8), &v18, &v16, time);
  if (!v19.__type_name)
  {
    goto LABEL_12;
  }

  if ((sub_239F2CBA8(&v19) & 1) == 0)
  {
    v6 = sub_239F2D79C(&v19);
    sub_239EF2160(&v19, v6);
    if (!v19.__type_name)
    {
      goto LABEL_12;
    }
  }

  v7 = sub_239F2D828(&v19);
  v8 = *v7;
  v15 = *v7;
  v9 = *(v7 + 16);
  if (!*(self + 32))
  {
    goto LABEL_13;
  }

  if (!v17.__type_name)
  {
    goto LABEL_12;
  }

  v14 = *(v7 + 16);
  if (v18 != v16)
  {
    if ((sub_239F2CBA8(&v17) & 1) != 0 || (v10 = sub_239F2D79C(&v17), sub_239EF2160(&v17, v10), v17.__type_name))
    {
      v11 = sub_239F2D828(&v17);
      v12 = fmax(fmin((time - v18) / (v16 - v18), 1.0), 0.0);
      v9 = vmlaq_n_f64(vmulq_n_f64(v11[1], v12), v14, 1.0 - v12);
      v8 = vmlaq_n_f64(vmulq_n_f64(*v11, v12), v15, 1.0 - v12);
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0uLL;
    v9 = 0uLL;
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
LABEL_13:
  *a2 = v8;
  a2[1] = v9;
  sub_239E5B240(&v17);
  return sub_239E5B240(&v19);
}

- (void)resetWithFloat4Array:(const vector_float4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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

- (void)resetWithDouble4Array:(const vector_double4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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

- (NSUInteger)getFloat4Array:(vector_float4 *)valuesArray maxCount:(NSUInteger)maxCount
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
      v9 = sub_239E6A150(&v12);
      v10 = &v12;
      if ((v9 & 1) == 0)
      {
        v10 = sub_239F2D53C(&v12);
      }

      *valuesArray++ = *sub_239EEDEEC(v10);
      sub_239E5B240(&v12);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

- (NSUInteger)getDouble4Array:(vector_double4 *)valuesArray maxCount:(NSUInteger)maxCount
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
      v9 = sub_239F2CBA8(&v14);
      v10 = &v14;
      if ((v9 & 1) == 0)
      {
        v10 = sub_239F2D79C(&v14);
      }

      v11 = sub_239F2D828(v10);
      v12 = v11[1];
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