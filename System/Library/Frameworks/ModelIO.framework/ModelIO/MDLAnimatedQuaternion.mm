@interface MDLAnimatedQuaternion
- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (simd_quatd)doubleQuaternionAtTime:(NSTimeInterval)time;
- (simd_quatf)floatQuaternionAtTime:(NSTimeInterval)time;
- (unint64_t)precision;
- (void)resetWithDoubleQuaternionArray:(const simd_quatd *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloatQuaternionArray:(const simd_quatf *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
@end

@implementation MDLAnimatedQuaternion

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedQuaternion;
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
  if (sub_239F284BC(v5) & 1) != 0 || (sub_239F2DE8C(v5))
  {
    sub_239E5B240(v5);
    return 1;
  }

  v4 = sub_239F28A58(v5);
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
  if (!sub_239F2DE8C(v5))
  {
    if (sub_239F284BC(v5))
    {
      *(v3 + 8) = &off_284D16A30;
      operator new();
    }

    if (sub_239F28A58(v5))
    {
      *(v3 + 8) = &off_284D16AE8;
      operator new();
    }

    self = sub_239E5B240(v5);
    goto LABEL_9;
  }

  *(v3 + 8) = &off_284D16978 + 1;
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
  if ((sub_239F2DE8C(v10) & 1) != 0 || (sub_239F284BC(v10) & 1) != 0 || sub_239F28A58(v10))
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
  if ((sub_239F2DE8C(v10) & 1) != 0 || (sub_239F284BC(v10) & 1) != 0 || sub_239F28A58(v10))
  {
    v8 = time * scale;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (simd_quatf)floatQuaternionAtTime:(NSTimeInterval)time
{
  v51 = *MEMORY[0x277D85DE8];
  v49 = 0.0;
  v50.__vftable = 0;
  v50.__type_name = 0;
  v47 = 0.0;
  v48.__vftable = 0;
  v48.__type_name = 0;
  sub_239F24610(&self->super._timeSampledData, &v49, &v47, time);
  v45 = 0;
  if (v50.__type_name && ((sub_239F2DE8C(&v50) & 1) != 0 || (sub_239F284BC(&v50) & 1) != 0 || (sub_239F28A58(&v50) & 1) != 0))
  {
    v5 = sub_239F284BC(&v50);
    v6 = &v50;
    if ((v5 & 1) == 0)
    {
      v6 = sub_239F2EA20(&v50);
    }

    v7 = sub_239F2E98C(v6);
    v8 = *v7;
    if (!self->super._interpolation)
    {
      goto LABEL_25;
    }

    v43 = *v7;
    if (v48.__type_name)
    {
      if (v49 != v47 && ((v9 = &v48, (sub_239F2DE8C(&v48) & 1) != 0) || (sub_239F284BC(&v48) & 1) != 0 || sub_239F28A58(&v48)))
      {
        if ((sub_239F284BC(&v48) & 1) == 0)
        {
          v9 = sub_239F2EA20(&v48);
        }

        v10 = sub_239F2E98C(v9);
        v11 = fmax(fmin((time - v49) / (v47 - v49), 1.0), 0.0);
        v12 = vmulq_f32(*v10, v43);
        v13 = vextq_s8(v12, v12, 8uLL);
        *v12.f32 = vadd_f32(*v12.f32, *v13.f32);
        v12.f32[0] = vaddv_f32(*v12.f32);
        v13.i64[0] = 0;
        v14 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v12, v13)), 0), vnegq_f32(*v10), *v10);
        v15 = 1.0;
        v16 = 1.0 - v11;
        v17 = vsubq_f32(v43, v14);
        v18 = vmulq_f32(v17, v17);
        v46 = v14;
        v19 = vaddq_f32(v14, v43);
        v20 = vmulq_f32(v19, v19);
        v21 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))));
        v22 = v21 + v21;
        v23 = (v21 + v21) == 0.0;
        v24 = 1.0;
        if (!v23)
        {
          v24 = sinf(v22) / v22;
        }

        v25 = LODWORD(v24);
        v26 = vrecpe_f32(LODWORD(v24));
        v27 = vmul_f32(vrecps_f32(v25, v26), v26);
        LODWORD(v28) = vmul_f32(v27, vrecps_f32(v25, v27)).u32[0];
        if ((v16 * v22) != 0.0)
        {
          v41 = v28;
          v29 = sinf(v16 * v22);
          v28 = v41;
          v15 = v29 / (v16 * v22);
        }

        v30 = vmulq_n_f32(v43, (v28 * v16) * v15);
        v31 = v22 * v11;
        v32 = 1.0;
        if (v31 != 0.0)
        {
          v42 = v28;
          v44 = v30;
          v33 = sinf(v31);
          v28 = v42;
          v30 = v44;
          v32 = v33 / v31;
        }

        v34 = vmlaq_n_f32(v30, v46, (v28 * v11) * v32);
        v35 = vmulq_f32(v34, v34);
        v36 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
        if (vaddv_f32(v36) == 0.0)
        {
          v8 = xmmword_239F9C1B0;
        }

        else
        {
          v37 = vadd_f32(v36, vdup_lane_s32(v36, 1)).u32[0];
          v38 = vrsqrte_f32(v37);
          v39 = vmul_f32(vrsqrts_f32(v37, vmul_f32(v38, v38)), v38);
          v8 = vmulq_n_f32(v34, vmul_f32(v39, vrsqrts_f32(v37, vmul_f32(v39, v39))).f32[0]);
        }
      }

      else
      {
        v8 = v43;
      }

LABEL_25:
      v45 = v8;
    }
  }

  sub_239E5B240(&v48);
  sub_239E5B240(&v50);
  return v45;
}

- (simd_quatd)doubleQuaternionAtTime:(NSTimeInterval)time
{
  v6 = v3;
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0.0;
  v27.__vftable = 0;
  v27.__type_name = 0;
  v24 = 0.0;
  v25.__vftable = 0;
  v25.__type_name = 0;
  sub_239F24610(&self->super._timeSampledData, &v26, &v24, time);
  if (!v27.__type_name || (sub_239F2DE8C(&v27) & 1) == 0 && (sub_239F284BC(&v27) & 1) == 0 && (sub_239F28A58(&v27) & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = sub_239F28A58(&v27);
  v8 = &v27;
  if ((v7 & 1) == 0)
  {
    v8 = sub_239F2ED58(&v27);
  }

  v9 = sub_239F2ECC4(v8);
  v10 = v9[1];
  if (!self->super._interpolation)
  {
    *v6 = *v9;
    v6[1] = v10;
    goto LABEL_19;
  }

  v20 = v9[1];
  v21 = *v9;
  if (v25.__type_name)
  {
    if (v26 != v24 && ((v11 = &v25, (sub_239F2DE8C(&v25) & 1) != 0) || (sub_239F284BC(&v25) & 1) != 0 || (sub_239F28A58(&v25) & 1) != 0))
    {
      if ((sub_239F28A58(&v25) & 1) == 0)
      {
        v11 = sub_239F2ED58(&v25);
      }

      v12 = sub_239F2ECC4(v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = fmax(fmin((time - v26) / (v24 - v26), 1.0), 0.0);
      v23[0] = v21;
      v23[1] = v20;
      v22[0] = v13;
      v22[1] = v14;
      sub_239F28A90(v23, v22, v6, v15);
    }

    else
    {
      *v6 = v21;
      v6[1] = v20;
    }
  }

  else
  {
LABEL_11:
    *v6 = 0u;
    v6[1] = 0u;
  }

LABEL_19:
  sub_239E5B240(&v25);
  sub_239E5B240(&v27);
  result.vector.f64[3] = v19;
  result.vector.f64[2] = v18;
  result.vector.f64[1] = v17;
  result.vector.f64[0] = v16;
  return result;
}

- (void)resetWithFloatQuaternionArray:(const simd_quatf *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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

- (void)resetWithDoubleQuaternionArray:(const simd_quatd *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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

- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)valuesArray maxCount:(NSUInteger)maxCount
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
      if (sub_239F284BC(&v12))
      {
        v9 = sub_239F2E98C(&v12);
      }

      else
      {
        v10 = sub_239F2EA20(&v12);
        v9 = sub_239F2E98C(v10);
      }

      *valuesArray++ = *v9;
      sub_239E5B240(&v12);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)valuesArray maxCount:(NSUInteger)maxCount
{
  v14 = *MEMORY[0x277D85DE8];
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
      v13.__vftable = 0;
      v13.__type_name = 0;
      sub_239E5F7D4(&v13, (self->super._timeSampledData.__begin_ + v7 + 8));
      if (sub_239F28A58(&v13))
      {
        v9 = sub_239F2ECC4(&v13);
      }

      else
      {
        v10 = sub_239F2ED58(&v13);
        v9 = sub_239F2ECC4(v10);
      }

      v11 = v9[1];
      *valuesArray->vector.f64 = *v9;
      *&valuesArray->vector.f64[2] = v11;
      ++valuesArray;
      sub_239E5B240(&v13);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  return v4;
}

@end