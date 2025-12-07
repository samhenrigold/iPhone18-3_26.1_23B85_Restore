@interface MDLAnimatedQuaternionArray
- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithElementCount:(NSUInteger)arrayElementCount;
- (unint64_t)precision;
- (void)resetWithDoubleQuaternionArray:(const simd_quatd *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithFloatQuaternionArray:(const simd_quatf *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setDoubleQuaternionArray:(const simd_quatd *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
- (void)setFloatQuaternionArray:(const simd_quatf *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedQuaternionArray

- (id)initWithElementCount:(NSUInteger)arrayElementCount
{
  v8.receiver = self;
  v8.super_class = MDLAnimatedQuaternionArray;
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
  v5.super_class = MDLAnimatedQuaternionArray;
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
  if (sub_239F274A0(v5) & 1) != 0 || (sub_239F274D8(v5))
  {
    sub_239E5B240(v5);
    return 1;
  }

  v4 = sub_239F27510(v5);
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
    if (sub_239F274D8(v6))
    {
      sub_239F276FC(v5, 0);
      v3[1] = &off_284D15EB0;
      sub_239EB5D90(v3, v5);
    }

    if (sub_239F274A0(v6))
    {
      sub_239F2776C(v5, 0);
      v3[1] = &off_284D15F68;
      sub_239EB5D90(v3, v5);
    }

    if (sub_239F27510(v6))
    {
      sub_239F277DC(v5, 0);
      v3[1] = &off_284D16020;
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
  if ((sub_239F274D8(v10) & 1) != 0 || (sub_239F274A0(v10) & 1) != 0 || sub_239F27510(v10))
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
  if ((sub_239F274D8(v10) & 1) != 0 || (sub_239F274A0(v10) & 1) != 0 || sub_239F27510(v10))
  {
    v8 = time * scale;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (void)setFloatQuaternionArray:(const simd_quatf *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v12[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239F2776C(v10, count);
    if (count)
    {
      v8 = 0;
      do
      {
        v9 = array[v8];
        sub_239F33E54(v10);
        *(v11 + 16 * v8++) = v9;
      }

      while (count != v8);
    }

    v12[0] = 0;
    v12[1] = &off_284D15F68;
    sub_239EB5D90(v12, v10);
  }

  NSLog(&cfstr_ArrayCountLuHa_2.isa, a2, array, time, count, elementCount);
}

- (void)setDoubleQuaternionArray:(const simd_quatd *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v5 = count;
  v14[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_239F277DC(v12, count);
    if (v5)
    {
      v8 = 0;
      do
      {
        v10 = *array[v8].vector.f64;
        v11 = *&array[v8].vector.f64[2];
        sub_239F33E98(v12);
        v9 = (v13 + v8 * 32);
        *v9 = v10;
        v9[1] = v11;
        ++v8;
        --v5;
      }

      while (v5);
    }

    v14[0] = 0;
    v14[1] = &off_284D16020;
    sub_239EB5D90(v14, v12);
  }

  NSLog(&cfstr_ArrayCountLuHa_2.isa, a2, array, time, count, elementCount);
}

- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v31 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v29 = 0.0;
    v30.__vftable = 0;
    v30.__type_name = 0;
    v27 = 0.0;
    v28.__vftable = 0;
    v28.__type_name = 0;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_239F24610(&self->super._timeSampledData, &v29, &v27, time);
    if (v30.__type_name)
    {
      if ((sub_239F274A0(&v30) & 1) != 0 || (v10 = sub_239F282E8(&v30), sub_239EF2160(&v30, v10), v30.__type_name))
      {
        v11 = sub_239F28374(&v30);
        sub_239F28408(v25, v11);
        if (!self->super._interpolation)
        {
          if (*&v25[0] < v5)
          {
            v5 = *&v25[0];
          }

          if (v5)
          {
            for (i = 0; i != v5; ++i)
            {
              sub_239F33E54(v25);
              array[i] = *(v26 + 16 * i);
            }
          }

          goto LABEL_32;
        }

        if (v28.__type_name)
        {
          if (v29 == v27)
          {
            if (*&v25[0] < v5)
            {
              v5 = *&v25[0];
            }

            if (v5)
            {
              for (j = 0; j != v5; ++j)
              {
                sub_239F33E54(v25);
                array[j] = *(v26 + 16 * j);
              }
            }

            goto LABEL_32;
          }

          if ((sub_239F284BC(&v28) & 1) != 0 || (v14 = sub_239F282E8(&v28), sub_239EF2160(&v28, v14), v28.__type_name))
          {
            v15 = sub_239F28374(&v28);
            sub_239F28408(v23, v15);
            v16 = *&v25[0];
            if (*&v23[0] < *&v25[0])
            {
              v16 = *&v23[0];
            }

            if (v16 < v5)
            {
              v5 = v16;
            }

            if (v5)
            {
              v17 = 0;
              v18 = fmax(fmin((time - v29) / (v27 - v29), 1.0), 0.0);
              *&v18 = v18;
              v20 = vdupq_lane_s32(*&v18, 0);
              v21 = 1.0 - *&v18;
              do
              {
                sub_239F33E54(v25);
                v22 = *(v26 + 16 * v17);
                sub_239F33E54(v23);
                array[v17] = vmlaq_f32(vmulq_n_f32(v22, v21), v20, *(v24 + 16 * v17));
                ++v17;
              }

              while (v5 != v17);
            }

            goto LABEL_32;
          }
        }
      }
    }

    v5 = 0;
LABEL_32:
    sub_239E56C80(v23);
    sub_239E56C80(v25);
    sub_239E5B240(&v28);
    sub_239E5B240(&v30);
    return v5;
  }

  NSLog(&cfstr_ArrayCountLuHa_2.isa, a2, array, time, maxCount, elementCount);
  return 0;
}

- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v46 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v44 = 0.0;
    v45.__vftable = 0;
    v45.__type_name = 0;
    v42 = 0.0;
    v43.__vftable = 0;
    v43.__type_name = 0;
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    sub_239F24610(&self->super._timeSampledData, &v44, &v42, time);
    if (v45.__type_name)
    {
      if ((sub_239F27510(&v45) & 1) != 0 || (v10 = sub_239F28884(&v45), sub_239EF2160(&v45, v10), v45.__type_name))
      {
        v11 = sub_239F28910(&v45);
        sub_239F289A4(v40, v11);
        if (!self->super._interpolation)
        {
          if (*&v40[0] < v5)
          {
            v5 = *&v40[0];
          }

          if (v5)
          {
            v16 = 0;
            v17 = v5;
            do
            {
              sub_239F33E98(v40);
              v18 = *(v41 + v16 * 32 + 16);
              v19 = &array[v16];
              *v19->vector.f64 = *(v41 + v16 * 32);
              *&v19->vector.f64[2] = v18;
              ++v16;
              --v17;
            }

            while (v17);
          }

          goto LABEL_32;
        }

        if (v43.__type_name)
        {
          if (v44 == v42)
          {
            if (*&v40[0] < v5)
            {
              v5 = *&v40[0];
            }

            if (v5)
            {
              v12 = 0;
              v13 = v5;
              do
              {
                sub_239F33E98(v40);
                v14 = *(v41 + v12 * 32 + 16);
                v15 = &array[v12];
                *v15->vector.f64 = *(v41 + v12 * 32);
                *&v15->vector.f64[2] = v14;
                ++v12;
                --v13;
              }

              while (v13);
            }

            goto LABEL_32;
          }

          if ((sub_239F28A58(&v43) & 1) != 0 || (v20 = sub_239F28884(&v43), sub_239EF2160(&v43, v20), v43.__type_name))
          {
            v21 = sub_239F28910(&v43);
            sub_239F289A4(v38, v21);
            v22 = *&v40[0];
            if (*&v38[0] < *&v40[0])
            {
              v22 = *&v38[0];
            }

            if (v22 < v5)
            {
              v5 = v22;
            }

            if (v5)
            {
              v23 = 0;
              v24 = fmax(fmin((time - v44) / (v42 - v44), 1.0), 0.0);
              v25 = v5;
              do
              {
                sub_239F33E98(v40);
                v34 = *(v41 + v23);
                v32 = *(v41 + v23 + 8);
                v33 = *(v41 + v23 + 16);
                sub_239F33E98(v38);
                v26.f64[0] = v34;
                v26.f64[1] = v32;
                v27 = *(v39 + v23);
                v28 = *(v39 + v23 + 16);
                v36[0] = v26;
                v36[1] = v33;
                v35[0] = v27;
                v35[1] = v28;
                sub_239F28A90(v36, v35, v37, v24);
                v29 = &array[v23 / 0x20];
                v30 = v37[1];
                *v29->vector.f64 = v37[0];
                *&v29->vector.f64[2] = v30;
                v23 += 32;
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
    sub_239E56C80(v38);
    sub_239E56C80(v40);
    sub_239E5B240(&v43);
    sub_239E5B240(&v45);
    return v5;
  }

  NSLog(&cfstr_ArrayCountLuHa_2.isa, a2, array, time, maxCount, elementCount);
  return 0;
}

- (void)resetWithFloatQuaternionArray:(const simd_quatf *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v20[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount * timesCount == valuesCount)
  {
    begin = self->super._timeSampledData.__begin_;
    end = self->super._timeSampledData.__end_;
    if (end != begin)
    {
      do
      {
        v13 = (end - 24);
        sub_239E5B240(end - 16);
        end = v13;
      }

      while (v13 != begin);
      LODWORD(elementCount) = self->_elementCount;
    }

    self->super._timeSampledData.__end_ = begin;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_239F2776C(v17, elementCount);
    if (timesCount)
    {
      v14 = 0;
      if (self->_elementCount)
      {
        v15 = 0;
        do
        {
          v16 = valuesArray[v14];
          sub_239F33E54(v17);
          *(v18 + 16 * v15) = v16;
          ++v14;
          ++v15;
        }

        while (v15 < self->_elementCount);
      }

      v19 = *timesArray;
      v20[1] = &off_284D15F68;
      sub_239EB5D90(v20, v17);
    }

    sub_239E56C80(v17);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, valuesArray, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }
}

- (void)resetWithDoubleQuaternionArray:(const simd_quatd *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v23[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount * timesCount == valuesCount)
  {
    begin = self->super._timeSampledData.__begin_;
    end = self->super._timeSampledData.__end_;
    if (end != begin)
    {
      do
      {
        v11 = (end - 24);
        sub_239E5B240(end - 16);
        end = v11;
      }

      while (v11 != begin);
      LODWORD(elementCount) = self->_elementCount;
    }

    self->super._timeSampledData.__end_ = begin;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_239F277DC(v20, elementCount);
    if (timesCount)
    {
      v12 = 0;
      if (self->_elementCount)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v18 = *valuesArray[v13].vector.f64;
          v19 = *&valuesArray[v13].vector.f64[2];
          sub_239F33E98(v20);
          v15 = (v21 + v13 * 32);
          *v15 = v18;
          v15[1] = v19;
          ++v12;
          ++v14;
          ++v13;
        }

        while (v14 < self->_elementCount);
      }

      v22 = *timesArray;
      v23[1] = &off_284D16020;
      sub_239EB5D90(v23, v20);
    }

    sub_239E56C80(v20);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }
}

- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)valuesArray maxCount:(NSUInteger)maxCount
{
  v26 = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  result = v7 * self->_elementCount;
  if (result <= maxCount)
  {
    if (end != begin)
    {
      v10 = 0;
      v11 = 0;
      v20 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      if (v7 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      }

      do
      {
        v24 = 0;
        v25.__vftable = 0;
        v25.__type_name = 0;
        v13 = (self->super._timeSampledData.__begin_ + 24 * v10);
        v24 = *v13;
        sub_239E5F7D4(&v25, v13 + 1);
        if ((sub_239F274A0(&v25) & 1) == 0)
        {
          v14 = sub_239F282E8(&v25);
          sub_239EF2160(&v25, v14);
        }

        if (sub_239F274A0(&v25))
        {
          v23 = 0;
          v21 = 0u;
          v22 = 0u;
          v15 = sub_239F28374(&v25);
          v16 = *(v15 + 16);
          v21 = *v15;
          v22 = v16;
          v17 = *(v15 + 32);
          v23 = v17;
          if (v17)
          {
            v18 = (v17 - 16);
            if (*(&v22 + 1))
            {
              v18 = *(&v22 + 1);
            }

            atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
          }

          if (self->_elementCount)
          {
            v19 = 0;
            do
            {
              sub_239F33E54(&v21);
              valuesArray[v11 + v19] = *(v23 + 16 * v19);
              ++v19;
            }

            while (v19 < self->_elementCount);
            v11 += v19;
          }

          sub_239E56C80(&v21);
        }

        sub_239E5B240(&v25);
        ++v10;
      }

      while (v10 != v12);
      return self->_elementCount * v20;
    }
  }

  else
  {
    NSLog(&cfstr_ValuesarraySiz.isa, a2, valuesArray, maxCount, result);
    return 0;
  }

  return result;
}

- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)valuesArray maxCount:(NSUInteger)maxCount
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
      v10 = 0;
      v11 = 0;
      if (v7 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      }

      do
      {
        v27 = 0;
        v28.__vftable = 0;
        v28.__type_name = 0;
        v13 = (self->super._timeSampledData.__begin_ + 24 * v10);
        v27 = *v13;
        sub_239E5F7D4(&v28, v13 + 1);
        if ((sub_239F27510(&v28) & 1) == 0)
        {
          v14 = sub_239F28884(&v28);
          sub_239EF2160(&v28, v14);
        }

        if (sub_239F27510(&v28))
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          v15 = sub_239F28910(&v28);
          v16 = *(v15 + 16);
          v24 = *v15;
          v25 = v16;
          v17 = *(v15 + 32);
          v26 = v17;
          if (v17)
          {
            v18 = (v17 - 16);
            if (*(&v25 + 1))
            {
              v18 = *(&v25 + 1);
            }

            atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
          }

          if (self->_elementCount)
          {
            v19 = 0;
            do
            {
              sub_239F33E98(&v24);
              v20 = (v26 + 32 * v19);
              v21 = *v20;
              v22 = v20[1];
              v23 = &valuesArray[v11];
              *v23->vector.f64 = v21;
              *&v23->vector.f64[2] = v22;
              ++v11;
              ++v19;
            }

            while (v19 < self->_elementCount);
          }

          sub_239E56C80(&v24);
        }

        sub_239E5B240(&v28);
        ++v10;
      }

      while (v10 != v12);
      return self->_elementCount * v7;
    }
  }

  else
  {
    NSLog(&cfstr_ValuesarraySiz.isa, a2, valuesArray, maxCount, result);
    return 0;
  }

  return result;
}

@end