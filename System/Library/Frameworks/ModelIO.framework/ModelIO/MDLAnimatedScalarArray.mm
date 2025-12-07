@interface MDLAnimatedScalarArray
- (NSUInteger)getDoubleArray:(double *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getDoubleArray:(double *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloatArray:(float *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getFloatArray:(float *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithElementCount:(NSUInteger)arrayElementCount;
- (unint64_t)precision;
- (void)resetWithDoubleArray:(const double *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithFloatArray:(const float *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setDoubleArray:(const double *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
- (void)setFloatArray:(const float *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedScalarArray

- (id)initWithElementCount:(NSUInteger)arrayElementCount
{
  v8.receiver = self;
  v8.super_class = MDLAnimatedScalarArray;
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
  v5.super_class = MDLAnimatedScalarArray;
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
  if (sub_239EC8434(v5) & 1) != 0 || (sub_239F2320C(v5))
  {
    sub_239E5B240(v5);
    return 1;
  }

  v4 = sub_239F23244(v5);
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
    if (sub_239F2320C(v6))
    {
      sub_239F23430(v5, 0);
      v3[1] = &off_284D15A60;
      sub_239EB5D90(v3, v5);
    }

    if (sub_239EC8434(v6))
    {
      sub_239EC7200(v5, 0);
      v3[1] = &off_284D158F0;
      sub_239ECA11C(v3, v5);
    }

    if (sub_239F23244(v6))
    {
      sub_239EC793C(v5, 0);
      v3[1] = &off_284D159A8;
      sub_239ECA11C(v3, v5);
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
  if ((sub_239F2320C(v10) & 1) != 0 || (sub_239EC8434(v10) & 1) != 0 || sub_239F23244(v10))
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
  if ((sub_239F2320C(v10) & 1) != 0 || (sub_239EC8434(v10) & 1) != 0 || sub_239F23244(v10))
  {
    v8 = time * scale;
    sub_239E5F7D4(v9, v10);
    sub_239F237C8(&self->super._timeSampledData, &v8);
    sub_239E5B240(v9);
  }

  sub_239E5B240(v10);
}

- (void)setFloatArray:(const float *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v12[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239EC7200(v10, count);
    if (count)
    {
      v8 = 0;
      do
      {
        v9 = array[v8];
        sub_239EBF2E0(v10);
        *(v11 + 4 * v8++) = v9;
      }

      while (count != v8);
    }

    v12[0] = 0;
    v12[1] = &off_284D158F0;
    sub_239ECA11C(v12, v10);
  }

  NSLog(&cfstr_ArrayCountLuHa_1.isa, a2, array, time, count, elementCount);
}

- (void)setDoubleArray:(const double *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v12[2] = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239EC793C(v10, count);
    if (count)
    {
      v8 = 0;
      do
      {
        v9 = array[v8];
        sub_239ECA544(v10);
        *(v11 + 8 * v8++) = v9;
      }

      while (count != v8);
    }

    v12[0] = 0;
    v12[1] = &off_284D159A8;
    sub_239ECA11C(v12, v10);
  }

  NSLog(&cfstr_ArrayCountLuHa_1.isa, a2, array, time, count, elementCount);
}

- (NSUInteger)getFloatArray:(float *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v29 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v27 = 0.0;
    v28.__vftable = 0;
    v28.__type_name = 0;
    v25 = 0.0;
    v26.__vftable = 0;
    v26.__type_name = 0;
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_239F24610(&self->super._timeSampledData, &v27, &v25, time);
    if (v28.__type_name)
    {
      if ((sub_239EC8434(&v28) & 1) != 0 || (v10 = sub_239F24810(&v28), sub_239EF2160(&v28, v10), v28.__type_name))
      {
        v11 = sub_239EC4DC4(&v28);
        sub_239EBEACC(v23, v11);
        if (!self->super._interpolation)
        {
          if (*&v23[0] < v5)
          {
            v5 = *&v23[0];
          }

          if (v5)
          {
            for (i = 0; i != v5; ++i)
            {
              sub_239EBF2E0(v23);
              array[i] = *(v24 + 4 * i);
            }
          }

          goto LABEL_32;
        }

        if (v26.__type_name)
        {
          if (v27 == v25)
          {
            if (*&v23[0] < v5)
            {
              v5 = *&v23[0];
            }

            if (v5)
            {
              for (j = 0; j != v5; ++j)
              {
                sub_239EBF2E0(v23);
                array[j] = *(v24 + 4 * j);
              }
            }

            goto LABEL_32;
          }

          if ((sub_239E6A084(&v26) & 1) != 0 || (v14 = sub_239F24810(&v26), sub_239EF2160(&v26, v14), v26.__type_name))
          {
            v15 = sub_239EC4DC4(&v26);
            sub_239EBEACC(v21, v15);
            v16 = *&v23[0];
            if (*&v21[0] < *&v23[0])
            {
              v16 = *&v21[0];
            }

            if (v16 < v5)
            {
              v5 = v16;
            }

            if (v5)
            {
              v17 = 0;
              v18 = fmax(fmin((time - v27) / (v25 - v27), 1.0), 0.0);
              do
              {
                sub_239EBF2E0(v23);
                v19 = *(v24 + 4 * v17);
                sub_239EBF2E0(v21);
                array[v17] = v19 + ((*(v22 + 4 * v17) - v19) * v18);
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
    sub_239E56C80(v21);
    sub_239E56C80(v23);
    sub_239E5B240(&v26);
    sub_239E5B240(&v28);
    return v5;
  }

  NSLog(&cfstr_ArrayCountLuHa_1.isa, a2, array, time, maxCount, elementCount);
  return 0;
}

- (NSUInteger)getDoubleArray:(double *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v29 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v27 = 0.0;
    v28.__vftable = 0;
    v28.__type_name = 0;
    v25 = 0.0;
    v26.__vftable = 0;
    v26.__type_name = 0;
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_239F24610(&self->super._timeSampledData, &v27, &v25, time);
    if (v28.__type_name)
    {
      if ((sub_239F23244(&v28) & 1) != 0 || (v10 = sub_239F24B9C(&v28), sub_239EF2160(&v28, v10), v28.__type_name))
      {
        v11 = sub_239F24C28(&v28);
        sub_239F24CBC(v23, v11);
        if (!self->super._interpolation)
        {
          if (*&v23[0] < v5)
          {
            v5 = *&v23[0];
          }

          if (v5)
          {
            for (i = 0; i != v5; ++i)
            {
              sub_239ECA544(v23);
              array[i] = *(v24 + 8 * i);
            }
          }

          goto LABEL_32;
        }

        if (v26.__type_name)
        {
          if (v27 == v25)
          {
            if (*&v23[0] < v5)
            {
              v5 = *&v23[0];
            }

            if (v5)
            {
              for (j = 0; j != v5; ++j)
              {
                sub_239ECA544(v23);
                array[j] = *(v24 + 8 * j);
              }
            }

            goto LABEL_32;
          }

          if ((sub_239F24D70(&v26) & 1) != 0 || (v14 = sub_239F24B9C(&v26), sub_239EF2160(&v26, v14), v26.__type_name))
          {
            v15 = sub_239F24C28(&v26);
            sub_239F24CBC(v21, v15);
            v16 = *&v23[0];
            if (*&v21[0] < *&v23[0])
            {
              v16 = *&v21[0];
            }

            if (v16 < v5)
            {
              v5 = v16;
            }

            if (v5)
            {
              v17 = 0;
              v18 = fmax(fmin((time - v27) / (v25 - v27), 1.0), 0.0);
              do
              {
                sub_239ECA544(v23);
                v19 = *(v24 + 8 * v17);
                sub_239ECA544(v21);
                array[v17] = v19 + (*(v22 + 8 * v17) - v19) * v18;
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
    sub_239E56C80(v21);
    sub_239E56C80(v23);
    sub_239E5B240(&v26);
    sub_239E5B240(&v28);
    return v5;
  }

  NSLog(&cfstr_ArrayCountLuHa_1.isa, a2, array, time, maxCount, elementCount);
  return 0;
}

- (void)resetWithFloatArray:(const float *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v19[2] = *MEMORY[0x277D85DE8];
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
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_239EC7200(v16, elementCount);
    if (timesCount)
    {
      if (self->_elementCount)
      {
        v13 = 0;
        do
        {
          v14 = valuesArray[v13];
          sub_239EBF2E0(v16);
          *(v17 + 4 * v13++) = v14;
        }

        while (v13 < self->_elementCount);
      }

      v18 = *timesArray;
      v19[1] = &off_284D158F0;
      sub_239ECA11C(v19, v16);
    }

    sub_239E56C80(v16);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }
}

- (void)resetWithDoubleArray:(const double *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v19[2] = *MEMORY[0x277D85DE8];
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
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_239EC793C(v16, elementCount);
    if (timesCount)
    {
      if (self->_elementCount)
      {
        v13 = 0;
        do
        {
          v14 = valuesArray[v13];
          sub_239ECA544(v16);
          *(v17 + 8 * v13++) = v14;
        }

        while (v13 < self->_elementCount);
      }

      v18 = *timesArray;
      v19[1] = &off_284D159A8;
      sub_239ECA11C(v19, v16);
    }

    sub_239E56C80(v16);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }
}

- (NSUInteger)getFloatArray:(float *)valuesArray maxCount:(NSUInteger)maxCount
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
        if ((sub_239EC8434(&v25) & 1) == 0)
        {
          v14 = sub_239F24810(&v25);
          sub_239EF2160(&v25, v14);
        }

        if (sub_239EC8434(&v25))
        {
          v23 = 0;
          v21 = 0u;
          v22 = 0u;
          v15 = sub_239EC4DC4(&v25);
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
              sub_239EBF2E0(&v21);
              valuesArray[v11 + v19] = *(v23 + 4 * v19);
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

- (NSUInteger)getDoubleArray:(double *)valuesArray maxCount:(NSUInteger)maxCount
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
        if ((sub_239F23244(&v25) & 1) == 0)
        {
          v14 = sub_239F24B9C(&v25);
          sub_239EF2160(&v25, v14);
        }

        if (sub_239F23244(&v25))
        {
          v23 = 0;
          v21 = 0u;
          v22 = 0u;
          v15 = sub_239F24C28(&v25);
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
              sub_239ECA544(&v21);
              valuesArray[v11 + v19] = *(v23 + 8 * v19);
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

@end