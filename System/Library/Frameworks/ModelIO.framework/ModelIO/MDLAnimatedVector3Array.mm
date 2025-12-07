@interface MDLAnimatedVector3Array
- (NSUInteger)getDouble3Array:(vector_double3 *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getDouble3Array:(vector_double3 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat3Array:(vector_float3 *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getFloat3Array:(vector_float3 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithElementCount:(NSUInteger)arrayElementCount;
- (unint64_t)precision;
- (void)resetWithDouble3Array:(const vector_double3 *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithFloat3Array:(const vector_float3 *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setDouble3Array:(const vector_double3 *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
- (void)setFloat3Array:(const vector_float3 *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedVector3Array

- (id)initWithElementCount:(NSUInteger)arrayElementCount
{
  v8.receiver = self;
  v8.super_class = MDLAnimatedVector3Array;
  v4 = [(MDLAnimatedValue *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_elementCount = arrayElementCount;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = MDLAnimatedVector3Array;
  result = [(MDLAnimatedValue *)&v5 copyWithZone:zone];
  *(result + 5) = self->_elementCount;
  return result;
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
  if (sub_239E6AE34(v5) & 1) != 0 || (sub_239F2573C(v5))
  {
    sub_239E5B240(v5);
    return 1;
  }

  v4 = sub_239F25774(v5);
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
  v6[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  if (self->super._timeSampledData.__end_ != begin)
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_239E5F7D4(v6, begin + 1);
    if (sub_239F2573C(v6))
    {
      sub_239F25960(v5, 0);
      v3[1] = &off_284D15BD0;
      sub_239EB5D90(v3, v5);
    }

    if (sub_239E6AE34(v6))
    {
      sub_239E6D0E8(v5, 0);
      v3[1] = off_284D15C88;
      sub_239EB5D90(v3, v5);
    }

    if (sub_239F25774(v6))
    {
      sub_239F259D8(v5, 0);
      v3[1] = &off_284D15D40;
      sub_239EB5D90(v3, v5);
    }

    self = sub_239E5B240(v6);
  }

  v3[1] = 0;
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
  if ((sub_239F2573C(v10) & 1) != 0 || (sub_239E6AE34(v10) & 1) != 0 || sub_239F25774(v10))
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
  if ((sub_239F2573C(v10) & 1) != 0 || (sub_239E6AE34(v10) & 1) != 0 || sub_239F25774(v10))
  {
    v8 = time * scale;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (void)setFloat3Array:(const vector_float3 *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v5 = count;
  v13[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v7 = array;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_239E6D0E8(v11, count);
    if (v5)
    {
      v8 = 0;
      do
      {
        v10 = *v7;
        sub_239E56B84(v11);
        v9 = v12 + v8;
        *v9 = v10.i64[0];
        *(v9 + 8) = v10.i32[2];
        ++v7;
        v8 += 12;
        --v5;
      }

      while (v5);
    }

    v13[0] = 0;
    v13[1] = off_284D15C88;
    sub_239EB5D90(v13, v11);
  }

  NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, array, time, count, elementCount);
}

- (void)setDouble3Array:(const vector_double3 *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v5 = count;
  v14[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v7 = array;
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_239F259D8(v12, count);
    if (v5)
    {
      v8 = 0;
      do
      {
        v10 = *v7->f64;
        v11 = *&v7->f64[2];
        sub_239F32888(v12);
        v9 = v13 + v8;
        *v9 = v10;
        *(v9 + 16) = v11;
        ++v7;
        v8 += 24;
        --v5;
      }

      while (v5);
    }

    v14[0] = 0;
    v14[1] = &off_284D15D40;
    sub_239EB5D90(v14, v12);
  }

  NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, array, time, count, elementCount);
}

- (NSUInteger)getFloat3Array:(vector_float3 *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v40 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v8 = array;
    v38 = 0.0;
    v39.__vftable = 0;
    v39.__type_name = 0;
    v36 = 0.0;
    v37.__vftable = 0;
    v37.__type_name = 0;
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_239F24610(&self->super._timeSampledData, &v38, &v36, time);
    if (v39.__type_name)
    {
      if ((sub_239E6AE34(&v39) & 1) != 0 || (v10 = sub_239E6ADA8(&v39), sub_239EF2160(&v39, v10), v39.__type_name))
      {
        v11 = sub_239E6AD14(&v39);
        sub_239EBE6A0(v34, v11);
        if (!self->super._interpolation)
        {
          if (*&v34[0] < v5)
          {
            v5 = *&v34[0];
          }

          if (v5)
          {
            v15 = 0;
            v16 = v5;
            do
            {
              sub_239E56B84(v34);
              v17.i64[0] = *(v35 + v15);
              v17.i32[2] = *(v35 + v15 + 8);
              *v8++ = v17;
              v15 += 12;
              --v16;
            }

            while (v16);
          }

          goto LABEL_32;
        }

        if (v37.__type_name)
        {
          if (v38 == v36)
          {
            if (*&v34[0] < v5)
            {
              v5 = *&v34[0];
            }

            if (v5)
            {
              v12 = 0;
              v13 = v5;
              do
              {
                sub_239E56B84(v34);
                v14.i64[0] = *(v35 + v12);
                v14.i32[2] = *(v35 + v12 + 8);
                *v8++ = v14;
                v12 += 12;
                --v13;
              }

              while (v13);
            }

            goto LABEL_32;
          }

          if ((sub_239E6A188(&v37) & 1) != 0 || (v18 = sub_239E6ADA8(&v37), sub_239EF2160(&v37, v18), v37.__type_name))
          {
            v19 = sub_239E6AD14(&v37);
            sub_239EBE6A0(v32, v19);
            v21 = *&v34[0];
            if (*&v32[0] < *&v34[0])
            {
              v21 = *&v32[0];
            }

            if (v21 < v5)
            {
              v5 = v21;
            }

            if (v5)
            {
              v22 = 0;
              *&v20 = fmax(fmin((time - v38) / (v36 - v38), 1.0), 0.0);
              *&v23 = *&v20;
              *&v20 = 1.0 - *&v23;
              v30 = v20;
              v31 = *&v23;
              v24 = vdup_lane_s32(v23, 0);
              v25 = v5;
              do
              {
                sub_239E56B84(v34);
                v26 = *(v35 + v22);
                v27 = *(v35 + v22 + 8);
                sub_239E56B84(v32);
                v28.i32[3] = HIDWORD(v30);
                *v28.f32 = vmla_f32(vmul_n_f32(v26, *&v30), v24, *(v33 + v22));
                v28.f32[2] = (v27 * *&v30) + (*(v33 + v22 + 8) * v31);
                *v8++ = v28;
                v22 += 12;
                --v25;
              }

              while (v25);
            }

            goto LABEL_32;
          }
        }
      }
    }

    v5 = 0;
LABEL_32:
    sub_239E56C80(v32);
    sub_239E56C80(v34);
    sub_239E5B240(&v37);
    sub_239E5B240(&v39);
    return v5;
  }

  NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, array, time, maxCount, elementCount);
  return 0;
}

- (NSUInteger)getDouble3Array:(vector_double3 *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v41 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v8 = array;
    v39 = 0.0;
    v40.__vftable = 0;
    v40.__type_name = 0;
    v37 = 0.0;
    v38.__vftable = 0;
    v38.__type_name = 0;
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_239F24610(&self->super._timeSampledData, &v39, &v37, time);
    if (v40.__type_name)
    {
      if ((sub_239F25774(&v40) & 1) != 0 || (v10 = sub_239F268B0(&v40), sub_239EF2160(&v40, v10), v40.__type_name))
      {
        v11 = sub_239F2693C(&v40);
        sub_239F269D0(v35, v11);
        if (!self->super._interpolation)
        {
          if (*&v35[0] < v5)
          {
            v5 = *&v35[0];
          }

          if (v5)
          {
            v15 = 0;
            v16 = v5;
            do
            {
              sub_239F32888(v35);
              *&v17 = *(v36 + v15 + 16);
              *v8->f64 = *(v36 + v15);
              *&v8->f64[2] = v17;
              ++v8;
              v15 += 24;
              --v16;
            }

            while (v16);
          }

          goto LABEL_32;
        }

        if (v38.__type_name)
        {
          if (v39 == v37)
          {
            if (*&v35[0] < v5)
            {
              v5 = *&v35[0];
            }

            if (v5)
            {
              v12 = 0;
              v13 = v5;
              do
              {
                sub_239F32888(v35);
                *&v14 = *(v36 + v12 + 16);
                *v8->f64 = *(v36 + v12);
                *&v8->f64[2] = v14;
                ++v8;
                v12 += 24;
                --v13;
              }

              while (v13);
            }

            goto LABEL_32;
          }

          if ((sub_239F26A84(&v38) & 1) != 0 || (v18 = sub_239F268B0(&v38), sub_239EF2160(&v38, v18), v38.__type_name))
          {
            v19 = sub_239F2693C(&v38);
            sub_239F269D0(v33, v19);
            v21 = *&v35[0];
            if (*&v33[0] < *&v35[0])
            {
              v21 = *&v33[0];
            }

            if (v21 < v5)
            {
              v5 = v21;
            }

            if (v5)
            {
              v22 = 0;
              *&v23 = fmax(fmin((time - v39) / (v37 - v39), 1.0), 0.0);
              *&v20 = 1.0 - *&v23;
              v30 = v20;
              v31 = *&v23;
              v29 = vdupq_lane_s64(v23, 0);
              v24 = v5;
              do
              {
                sub_239F32888(v35);
                v25 = *(v36 + v22);
                v32 = *(v36 + v22 + 8);
                sub_239F32888(v33);
                v26.i64[1] = *(&v30 + 1);
                *v26.i64 = v25 * *&v30 + *(v34 + v22) * v31;
                v27 = vmlaq_f64(vmulq_n_f64(v32, *&v30), v29, *(v34 + v22 + 8));
                *v8->f64 = vzip1q_s64(v26, v27);
                *&v8->f64[2] = vdupq_laneq_s64(v27, 1);
                ++v8;
                v22 += 24;
                --v24;
              }

              while (v24);
            }

            goto LABEL_32;
          }
        }
      }
    }

    v5 = 0;
LABEL_32:
    sub_239E56C80(v33);
    sub_239E56C80(v35);
    sub_239E5B240(&v38);
    sub_239E5B240(&v40);
    return v5;
  }

  NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, array, time, maxCount, elementCount);
  return 0;
}

- (void)resetWithFloat3Array:(const vector_float3 *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v22[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount * timesCount == valuesCount)
  {
    begin = self->super._timeSampledData.__begin_;
    end = self->super._timeSampledData.__end_;
    if (end != begin)
    {
      do
      {
        v12 = (end - 24);
        sub_239E5B240(end - 16);
        end = v12;
      }

      while (v12 != begin);
      LODWORD(elementCount) = self->_elementCount;
    }

    self->super._timeSampledData.__end_ = begin;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_239E6D0E8(v19, elementCount);
    if (timesCount)
    {
      v13 = 0;
      if (self->_elementCount)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v18 = valuesArray[v13];
          sub_239E56B84(v19);
          v16 = v20 + v14;
          *v16 = v18.i64[0];
          *(v16 + 8) = v18.i32[2];
          ++v13;
          ++v15;
          v14 += 12;
        }

        while (v15 < self->_elementCount);
      }

      v21 = *timesArray;
      v22[1] = off_284D15C88;
      sub_239EB5D90(v22, v19);
    }

    sub_239E56C80(v19);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, valuesArray, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }
}

- (void)resetWithDouble3Array:(const vector_double3 *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v24[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount * timesCount == valuesCount)
  {
    begin = self->super._timeSampledData.__begin_;
    end = self->super._timeSampledData.__end_;
    if (end != begin)
    {
      do
      {
        v12 = (end - 24);
        sub_239E5B240(end - 16);
        end = v12;
      }

      while (v12 != begin);
      LODWORD(elementCount) = self->_elementCount;
    }

    self->super._timeSampledData.__end_ = begin;
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_239F259D8(v21, elementCount);
    if (timesCount)
    {
      v13 = 0;
      if (self->_elementCount)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = &valuesArray[v13];
          v19 = *v16->f64;
          v20 = *&v16->f64[2];
          sub_239F32888(v21);
          v17 = v22 + v14;
          *v17 = v19;
          *(v17 + 16) = v20;
          ++v13;
          ++v15;
          v14 += 24;
        }

        while (v15 < self->_elementCount);
      }

      v23 = *timesArray;
      v24[1] = &off_284D15D40;
      sub_239EB5D90(v24, v21);
    }

    sub_239E56C80(v21);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, valuesArray, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }
}

- (NSUInteger)getFloat3Array:(vector_float3 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v28 = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  result = v7 * self->_elementCount;
  if (result <= maxCount)
  {
    if (end != begin)
    {
      v9 = 0;
      v10 = 0;
      v21 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      if (v7 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      }

      do
      {
        v26 = 0;
        v27.__vftable = 0;
        v27.__type_name = 0;
        v12 = (self->super._timeSampledData.__begin_ + 24 * v9);
        v26 = *v12;
        sub_239E5F7D4(&v27, v12 + 1);
        if ((sub_239E6AE34(&v27) & 1) == 0)
        {
          v13 = sub_239E6ADA8(&v27);
          sub_239EF2160(&v27, v13);
        }

        if (sub_239E6AE34(&v27))
        {
          v25 = 0;
          v23 = 0u;
          v24 = 0u;
          v14 = sub_239E6AD14(&v27);
          v15 = *(v14 + 16);
          v23 = *v14;
          v24 = v15;
          v16 = *(v14 + 32);
          v25 = v16;
          if (v16)
          {
            v17 = (v16 - 16);
            if (*(&v24 + 1))
            {
              v17 = *(&v24 + 1);
            }

            atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
          }

          if (self->_elementCount)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              sub_239E56B84(&v23);
              v20.i64[0] = *(v25 + v18);
              v20.i32[2] = *(v25 + v18 + 8);
              valuesArray[v10 + v19++] = v20;
              v18 += 12;
            }

            while (v19 < self->_elementCount);
            v10 += v19;
          }

          sub_239E56C80(&v23);
        }

        sub_239E5B240(&v27);
        ++v9;
      }

      while (v9 != v11);
      return self->_elementCount * v21;
    }
  }

  else
  {
    NSLog(&cfstr_ValuesarraySiz.isa, a2, maxCount, result);
    return 0;
  }

  return result;
}

- (NSUInteger)getDouble3Array:(vector_double3 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v29 = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  result = v7 * self->_elementCount;
  if (result <= maxCount)
  {
    if (end != begin)
    {
      v9 = 0;
      v10 = 0;
      v22 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      if (v7 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      }

      do
      {
        v27 = 0;
        v28.__vftable = 0;
        v28.__type_name = 0;
        v12 = (self->super._timeSampledData.__begin_ + 24 * v9);
        v27 = *v12;
        sub_239E5F7D4(&v28, v12 + 1);
        if ((sub_239F25774(&v28) & 1) == 0)
        {
          v13 = sub_239F268B0(&v28);
          sub_239EF2160(&v28, v13);
        }

        if (sub_239F25774(&v28))
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          v14 = sub_239F2693C(&v28);
          v15 = *(v14 + 16);
          v24 = *v14;
          v25 = v15;
          v16 = *(v14 + 32);
          v26 = v16;
          if (v16)
          {
            v17 = (v16 - 16);
            if (*(&v25 + 1))
            {
              v17 = *(&v25 + 1);
            }

            atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
          }

          if (self->_elementCount)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              sub_239F32888(&v24);
              *&v20 = *(v26 + v18 + 16);
              v21 = &valuesArray[v10 + v19];
              *v21->f64 = *(v26 + v18);
              *&v21->f64[2] = v20;
              ++v19;
              v18 += 24;
            }

            while (v19 < self->_elementCount);
            v10 += v19;
          }

          sub_239E56C80(&v24);
        }

        sub_239E5B240(&v28);
        ++v9;
      }

      while (v9 != v11);
      return self->_elementCount * v22;
    }
  }

  else
  {
    NSLog(&cfstr_ValuesarraySiz.isa, a2, maxCount, result);
    return 0;
  }

  return result;
}

@end