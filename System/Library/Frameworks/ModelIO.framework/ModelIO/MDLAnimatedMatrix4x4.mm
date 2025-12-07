@interface MDLAnimatedMatrix4x4
- (NSUInteger)getDouble4x4Array:(matrix_double4x4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat4x4Array:(matrix_float4x4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (matrix_float4x4)float4x4AtTime:(NSTimeInterval)time;
- (uint64_t)double4x4AtTime:(double)time@<D0>;
- (unint64_t)precision;
- (void)resetWithDouble4x4Array:(const matrix_double4x4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloat4x4Array:(const matrix_float4x4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
@end

@implementation MDLAnimatedMatrix4x4

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedMatrix4x4;
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
  if (sub_239F2F3BC(v5) & 1) != 0 || (sub_239F2F3BC(v5))
  {
    sub_239E5B240(v5);
    return 1;
  }

  v4 = sub_239F2F3F4(v5);
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
  if (self->super._timeSampledData.__end_ != begin)
  {
    v5[0] = 0;
    v5[1] = 0;
    sub_239E5F7D4(v5, begin + 1);
    if (sub_239F2F3BC(v5))
    {
      *(v3 + 8) = &off_284D16C58 + 2;
      operator new();
    }

    if (sub_239F2F3BC(v5))
    {
      *(v3 + 8) = &off_284D16C58 + 2;
      operator new();
    }

    if (sub_239F2F3F4(v5))
    {
      *(v3 + 8) = &off_284D16D10 + 2;
      operator new();
    }

    self = sub_239E5B240(v5);
  }

  *(v3 + 8) = 0;
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
  if ((sub_239F2F3BC(v10) & 1) != 0 || (sub_239F2F3BC(v10) & 1) != 0 || sub_239F2F3F4(v10))
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
  if ((sub_239F2F3BC(v10) & 1) != 0 || (sub_239F2F3BC(v10) & 1) != 0 || sub_239F2F3F4(v10))
  {
    v8 = time * scale;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (matrix_float4x4)float4x4AtTime:(NSTimeInterval)time
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0.0;
  v21.__vftable = 0;
  v21.__type_name = 0;
  v18 = 0.0;
  v19.__vftable = 0;
  v19.__type_name = 0;
  sub_239F24610(&self->super._timeSampledData, &v20, &v18, time);
  if (!v21.__type_name)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_12;
  }

  if ((sub_239F2F3BC(&v21) & 1) == 0)
  {
    v5 = sub_239F2FE50(&v21);
    sub_239EF2160(&v21, v5);
    if (!v21.__type_name)
    {
      goto LABEL_11;
    }
  }

  v6 = sub_239F2FEDC(&v21);
  v16 = v6[1];
  v17 = *v6;
  v14 = v6[3];
  v15 = v6[2];
  if (self->super._interpolation)
  {
    if (!v19.__type_name)
    {
      goto LABEL_11;
    }

    if (v20 != v18)
    {
      if ((sub_239F2F3BC(&v19) & 1) != 0 || (v7 = sub_239F2FE50(&v19), sub_239EF2160(&v19, v7), v19.__type_name))
      {
        v8 = sub_239F2FEDC(&v19);
        v9 = fmax(fmin((time - v20) / (v18 - v20), 1.0), 0.0);
        v16 = vmlaq_n_f32(vmulq_n_f32(v8[1], v9), v16, 1.0 - v9);
        v17 = vmlaq_n_f32(vmulq_n_f32(*v8, v9), v17, 1.0 - v9);
        v14 = vmlaq_n_f32(vmulq_n_f32(v8[3], v9), v14, 1.0 - v9);
        v15 = vmlaq_n_f32(vmulq_n_f32(v8[2], v9), v15, 1.0 - v9);
        goto LABEL_12;
      }

LABEL_11:
      v16 = *(MEMORY[0x277D860B8] + 16);
      v17 = *MEMORY[0x277D860B8];
      v14 = *(MEMORY[0x277D860B8] + 48);
      v15 = *(MEMORY[0x277D860B8] + 32);
    }
  }

LABEL_12:
  sub_239E5B240(&v19);
  sub_239E5B240(&v21);
  v11 = v16;
  v10 = v17;
  v13 = v14;
  v12 = v15;
  result.columns[3] = v13;
  result.columns[2] = v12;
  result.columns[1] = v11;
  result.columns[0] = v10;
  return result;
}

- (uint64_t)double4x4AtTime:(double)time@<D0>
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0.0;
  v45.__vftable = 0;
  v45.__type_name = 0;
  v42 = 0.0;
  v43.__vftable = 0;
  v43.__type_name = 0;
  sub_239F24610((self + 8), &v44, &v42, time);
  if (v45.__type_name)
  {
    if ((sub_239F2F3F4(&v45) & 1) != 0 || (v6 = sub_239F30278(&v45), sub_239EF2160(&v45, v6), v45.__type_name))
    {
      v7 = sub_239F30304(&v45);
      v8 = *(v7 + 16);
      v9 = *(v7 + 32);
      v10 = *(v7 + 48);
      v11 = *(v7 + 64);
      v12 = *(v7 + 80);
      v13 = *(v7 + 96);
      v14 = *(v7 + 112);
      if (!*(self + 32))
      {
LABEL_9:
        *a2 = *v7;
        a2[1] = v8;
        a2[2] = v9;
        a2[3] = v10;
        a2[4] = v11;
        a2[5] = v12;
        a2[6] = v13;
        a2[7] = v14;
        goto LABEL_14;
      }

      v34 = *v7;
      v35 = *(v7 + 48);
      v36 = *(v7 + 16);
      v37 = *(v7 + 32);
      v38 = *(v7 + 64);
      v39 = *(v7 + 80);
      v40 = *(v7 + 96);
      v41 = *(v7 + 112);
      if (v43.__type_name)
      {
        if (v44 == v42)
        {
          goto LABEL_9;
        }

        if ((sub_239F2F3F4(&v43) & 1) != 0 || (v15 = sub_239F30278(&v43), sub_239EF2160(&v43, v15), v43.__type_name))
        {
          v16 = sub_239F30304(&v43);
          v17 = *(v16 + 32);
          v18 = *(v16 + 64);
          v19 = *(v16 + 96);
          v20 = fmax(fmin((time - v44) / (v42 - v44), 1.0), 0.0);
          v21 = 1.0 - v20;
          v22 = v21;
          *&v20 = v20;
          v23 = *&v20;
          v24 = vmulq_n_f64(*(v16 + 16), v23);
          v25 = vmulq_n_f64(*(v16 + 48), v23);
          v26 = vmulq_n_f64(*(v16 + 80), v23);
          v27 = vmulq_n_f64(*(v16 + 112), v23);
          *a2 = vmlaq_n_f64(vmulq_n_f64(*v16, v23), v34, v22);
          a2[1] = vmlaq_n_f64(v24, v36, v22);
          a2[2] = vmlaq_n_f64(vmulq_n_f64(v17, v23), v37, v22);
          a2[3] = vmlaq_n_f64(v25, v35, v22);
          a2[4] = vmlaq_n_f64(vmulq_n_f64(v18, v23), v38, v22);
          a2[5] = vmlaq_n_f64(v26, v39, v22);
          a2[6] = vmlaq_n_f64(vmulq_n_f64(v19, v23), v40, v22);
          a2[7] = vmlaq_n_f64(v27, v41, v22);
          goto LABEL_14;
        }
      }
    }

    v28 = MEMORY[0x277D860A0];
    v29 = *(MEMORY[0x277D860A0] + 80);
    a2[4] = *(MEMORY[0x277D860A0] + 64);
    a2[5] = v29;
    v30 = v28[7];
    a2[6] = v28[6];
    a2[7] = v30;
    v31 = v28[1];
    *a2 = *v28;
    a2[1] = v31;
    v32 = v28[3];
    a2[2] = v28[2];
    a2[3] = v32;
    goto LABEL_14;
  }

  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
LABEL_14:
  sub_239E5B240(&v43);
  return sub_239E5B240(&v45);
}

- (void)resetWithFloat4x4Array:(const matrix_float4x4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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

- (void)resetWithDouble4x4Array:(const matrix_double4x4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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

- (NSUInteger)getFloat4x4Array:(matrix_float4x4 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v16 = *MEMORY[0x277D85DE8];
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
    v6 = 0;
    v7 = &valuesArray->columns[2];
    v8 = v4;
    do
    {
      v15.__vftable = 0;
      v15.__type_name = 0;
      sub_239E5F7D4(&v15, (self->super._timeSampledData.__begin_ + v6 + 8));
      if (sub_239F2F3BC(&v15))
      {
        v9 = sub_239F2FEDC(&v15);
      }

      else
      {
        v10 = sub_239F2FE50(&v15);
        v9 = sub_239F2FEDC(v10);
      }

      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v7[-2] = *v9;
      v7[-1] = v11;
      *v7 = v12;
      v7[1] = v13;
      v7 += 4;
      sub_239E5B240(&v15);
      v6 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

- (NSUInteger)getDouble4x4Array:(matrix_double4x4 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v20 = *MEMORY[0x277D85DE8];
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
    v6 = 0;
    v7 = &valuesArray->columns[2];
    v8 = v4;
    do
    {
      v19.__vftable = 0;
      v19.__type_name = 0;
      sub_239E5F7D4(&v19, (self->super._timeSampledData.__begin_ + v6 + 8));
      if (sub_239F2F3F4(&v19))
      {
        v9 = sub_239F30304(&v19);
      }

      else
      {
        v10 = sub_239F30278(&v19);
        v9 = sub_239F30304(v10);
      }

      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v14 = v9[4];
      v15 = v9[5];
      v16 = v9[6];
      v17 = v9[7];
      *v7[-2].f64 = *v9;
      *&v7[-2].f64[2] = v11;
      *v7[-1].f64 = v12;
      *&v7[-1].f64[2] = v13;
      *v7->f64 = v14;
      *&v7->f64[2] = v15;
      *v7[1].f64 = v16;
      *&v7[1].f64[2] = v17;
      sub_239E5B240(&v19);
      v7 += 4;
      v6 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

@end