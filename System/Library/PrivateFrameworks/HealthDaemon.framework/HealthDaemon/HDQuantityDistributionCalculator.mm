@interface HDQuantityDistributionCalculator
- (BOOL)validateDateSequenceForTesting:(id)testing;
- (HDQuantityDistributionCalculator)initWithStartDate:(id)date endDate:(id)endDate anchorDate:(id)anchorDate intervalComponents:(id)components histogramBucketAnchor:(double)anchor histogramBucketSize:(double)size;
- (id).cxx_construct;
- (id)quantityDistributionsWithUnit:(id)unit;
- (void)addDataPoint:(double)point startTime:(double)time endTime:(double)endTime;
@end

@implementation HDQuantityDistributionCalculator

- (HDQuantityDistributionCalculator)initWithStartDate:(id)date endDate:(id)endDate anchorDate:(id)anchorDate intervalComponents:(id)components histogramBucketAnchor:(double)anchor histogramBucketSize:(double)size
{
  dateCopy = date;
  endDateCopy = endDate;
  anchorDateCopy = anchorDate;
  componentsCopy = components;
  v62.receiver = self;
  v62.super_class = HDQuantityDistributionCalculator;
  v18 = [(HDQuantityDistributionCalculator *)&v62 init];
  v19 = v18;
  if (v18)
  {
    v60 = v18;
    v20 = dateCopy;
    v21 = endDateCopy;
    v58 = anchorDateCopy;
    v22 = anchorDateCopy;
    v57 = componentsCopy;
    v23 = componentsCopy;
    v61 = v20;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v59 = v22;
    v56 = endDateCopy;
    v55 = dateCopy;
    if ([v20 hk_isBeforeDate:?])
    {
      hk_negativeComponents = [v23 hk_negativeComponents];
      for (i = v59; [i hk_isAfterDate:v61]; i = v27)
      {
        v27 = [currentCalendar dateByAddingComponents:hk_negativeComponents toDate:i options:4];
      }
    }

    else
    {
      for (i = v59; ; i = hk_negativeComponents)
      {
        hk_negativeComponents = [currentCalendar dateByAddingComponents:v23 toDate:i options:0];
        if ([hk_negativeComponents hk_isAfterDate:v61])
        {
          break;
        }
      }
    }

    v28 = i;
    v29 = 0;
    v30 = 0;
    for (j = v28; [j hk_isBeforeDate:v21]; j = v32)
    {
      v32 = [currentCalendar dateByAddingComponents:v23 toDate:j options:0];

      --v30;
      v29 -= 64;
    }

    p_histogramState = &v60->_histogramState;
    begin = v60->_histogramState._dateBuckets.__begin_;
    v35 = -v30;
    if (-v30 > ((v60->_histogramState._dateBuckets.__cap_ - begin) >> 6))
    {
      if (!(v35 >> 58))
      {
        v63 = &v60->_histogramState;
        std::__allocate_at_least[abi:ne200100]<std::allocator<HistogramBucket>>(v35);
      }

      goto LABEL_41;
    }

    end = v60->_histogramState._dateBuckets.__end_;
    v37 = (end - begin) >> 6;
    if (v37 >= v35)
    {
      if (v37 > v35)
      {
        v42 = (begin - v29);
        while (v42 != end)
        {
          v43 = *(end - 3);
          if (v43)
          {
            *(end - 2) = v43;
            operator delete(v43);
          }

          end = (end - 64);
        }

        v60->_histogramState._dateBuckets.__end_ = v42;
      }
    }

    else
    {
      cap = v60->_histogramState._dateBuckets.__cap_;
      if (-v30 - v37 > (cap - end) >> 6)
      {
        if (!(v35 >> 58))
        {
          v39 = cap - begin;
          v40 = v39 >> 5;
          if (v39 >> 5 <= v35)
          {
            v40 = -v30;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFC0)
          {
            v41 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v40;
          }

          v63 = &v60->_histogramState;
          std::__allocate_at_least[abi:ne200100]<std::allocator<HistogramBucket>>(v41);
        }

LABEL_41:
        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      v44 = (end - begin) >> 6;
      bzero(v60->_histogramState._dateBuckets.__end_, -(v29 + (v37 << 6)));
      v60->_histogramState._dateBuckets.__end_ = (end - v29 + -64 * v44);
    }

    v45 = v28;

    v46 = 0;
    v47 = 0;
    for (k = v45; [k hk_isBeforeDate:{v21, v54}]; k = v51)
    {
      [k timeIntervalSinceReferenceDate];
      v50 = p_histogramState->_dateBuckets.__begin_;
      if (v46)
      {
        *(v50 + v47 - 56) = v49;
      }

      *(v50 + v47) = v49;
      v51 = [currentCalendar dateByAddingComponents:v23 toDate:k options:0];

      v47 += 64;
      --v46;
    }

    if (v46)
    {
      [k timeIntervalSinceReferenceDate];
      *(p_histogramState->_dateBuckets.__begin_ + v47 - 56) = v52;
    }

    v19 = v60;
    v60->_histogramState._histogramBucketAnchor = anchor;
    v60->_histogramState._histogramBucketSize = size;
    dateCopy = v55;
    endDateCopy = v56;
    componentsCopy = v57;
    anchorDateCopy = v58;
  }

  return v19;
}

- (void)addDataPoint:(double)point startTime:(double)time endTime:(double)endTime
{
  v68[8] = *MEMORY[0x277D85DE8];
  begin = self->_histogramState._dateBuckets.__begin_;
  v6 = self->_histogramState._dateBuckets.__end_ - begin;
  currentStartDateBucket = self->_histogramState._currentStartDateBucket;
  if (currentStartDateBucket < v6 >> 6)
  {
    v11 = v6 >> 6;
    for (i = (begin + 64 * currentStartDateBucket + 8); *i <= time; i += 8)
    {
      self->_histogramState._currentStartDateBucket = ++currentStartDateBucket;
      if (v11 == currentStartDateBucket)
      {
        return;
      }
    }

    if (currentStartDateBucket < v11)
    {
      v13 = *(i - 1);
      if (v13 <= time)
      {
        v14 = time == endTime;
        if (v13 != endTime)
        {
          v14 = 0;
        }

        if (v13 < endTime || v14)
        {
          v66 = v11 - 1;
          v65 = vdupq_lane_s64(*&point, 0);
          while (1)
          {
            v16 = begin + 64 * currentStartDateBucket;
            v17 = vcvtmd_s64_f64((point - self->_histogramState._histogramBucketAnchor) / self->_histogramState._histogramBucketSize);
            v18 = *(v16 + 6);
            if (v18 == *(v16 + 5))
            {
              if (*(v16 + 7) - v18 <= 0x1FFuLL)
              {
                operator new();
              }

              *(v16 + 4) = 32 - v17;
              v22 = 64;
              do
              {
                v23 = *(v16 + 7);
                if (v18 >= v23)
                {
                  v24 = *(v16 + 5);
                  v25 = v18 - v24;
                  v26 = (v18 - v24) >> 3;
                  v27 = v26 + 1;
                  if ((v26 + 1) >> 61)
                  {
                    goto LABEL_81;
                  }

                  v28 = v23 - v24;
                  if (v28 >> 2 > v27)
                  {
                    v27 = v28 >> 2;
                  }

                  if (v28 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v29 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v29 = v27;
                  }

                  if (v29)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(v29);
                  }

                  v30 = v26;
                  v31 = (8 * v26);
                  v32 = &v31[-v30];
                  *v31 = 0;
                  v18 = (v31 + 1);
                  memcpy(v32, v24, v25);
                  v33 = *(v16 + 5);
                  *(v16 + 5) = v32;
                  *(v16 + 6) = v18;
                  *(v16 + 7) = 0;
                  if (v33)
                  {
                    operator delete(v33);
                  }
                }

                else
                {
                  *v18 = 0;
                  v18 += 8;
                }

                *(v16 + 6) = v18;
                --v22;
              }

              while (v22);
              *(v16 + 2) = point;
              *(v16 + 3) = point;
            }

            else
            {
              v19 = *(v16 + 1);
              v20 = vcgtq_f64(v65, v19);
              v21.i64[0] = *(v16 + 2);
              *&v21.i64[1] = point;
              v19.f64[0] = point;
              *(v16 + 1) = vbslq_s8(v20, v21, v19);
            }

            v34 = *(v16 + 4) + v17;
            if (v34 < 0)
            {
              v41 = 16 - v34;
              *(v16 + 4) = 16 - v17;
              v42 = *(v16 + 5);
              v68[0] = 0;
              v43 = *(v16 + 7);
              v44 = (v18 - v42) >> 3;
              if (16 - v34 > ((v43 - v18) >> 3))
              {
                v45 = v44 + v41;
                if ((v44 + v41) >> 61)
                {
                  goto LABEL_81;
                }

                v46 = v43 - v42;
                if (v46 >> 2 > v45)
                {
                  v45 = v46 >> 2;
                }

                if (v46 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v47 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v47 = v45;
                }

                if (v47)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(v47);
                }

                bzero(0, 128 - 8 * v34);
                v58 = (8 * v41);
                memcpy(v58, v42, v18 - v42);
                v59 = *(v16 + 5);
                v60 = &v58[*(v16 + 6) - v42];
                *(v16 + 6) = v42;
                v61 = v59 - v42;
                memcpy((v59 - v42), v59, v42 - v59);
                v62 = *(v16 + 5);
                *(v16 + 5) = v61;
                *(v16 + 6) = v60;
                *(v16 + 7) = 0;
                if (v62)
                {
                  operator delete(v62);
                }

                goto LABEL_74;
              }

              if (v41 <= v44)
              {
                v48 = v18;
                v44 = 16 - v34;
LABEL_58:
                v49 = &v48[-8 * v41];
                v50 = v48;
                while (v49 < v18)
                {
                  v51 = *v49;
                  v49 += 8;
                  *v50 = v51;
                  v50 += 8;
                }

                v52 = &v42[8 * v41];
                *(v16 + 6) = v50;
                if (v48 != v52)
                {
                  memmove(&v42[8 * v41], v42, v48 - v52);
                }

                v53 = 0;
                v54 = v68[0];
                if (v42 > v68)
                {
                  v54 = 0;
                }

                v55 = vdupq_n_s64(v44 - 1);
                v56 = v42 + 8;
                do
                {
                  v57 = vmovn_s64(vcgeq_u64(v55, vorrq_s8(vdupq_n_s64(v53), xmmword_22916E7F0)));
                  if (v57.i8[0])
                  {
                    *(v56 - 1) = v54;
                  }

                  if (v57.i8[4])
                  {
                    *v56 = v54;
                  }

                  v53 += 2;
                  v56 += 2;
                }

                while (((v44 + 1) & 0xFFFFFFFFFFFFFFFELL) != v53);
                goto LABEL_74;
              }

              bzero(v18, 128 - 8 * (v44 + v34));
              v48 = &v18[8 * (v41 - v44)];
              *(v16 + 6) = v48;
              if (v18 != v42)
              {
                goto LABEL_58;
              }
            }

            else
            {
              v35 = *(v16 + 5);
              if (v34 < (&v18[-v35] >> 3))
              {
                goto LABEL_75;
              }

              v36 = v34 + 16;
              v37 = v34 + 16 - (&v18[-v35] >> 3);
              v38 = *(v16 + 7);
              if (v37 > (v38 - v18) >> 3)
              {
                if (v34 < 0x1FFFFFFFFFFFFFF0)
                {
                  v39 = v38 - v35;
                  if (v39 >> 2 > v36)
                  {
                    v36 = v39 >> 2;
                  }

                  if (v39 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v40 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v40 = v36;
                  }

                  std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(v40);
                }

LABEL_81:
                std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
              }

              bzero(v18, 8 * v37);
              *(v16 + 6) = &v18[8 * v37];
            }

LABEL_74:
            v35 = *(v16 + 5);
            v34 = *(v16 + 4) + v17;
LABEL_75:
            ++*(v35 + 8 * v34);
            if (currentStartDateBucket != v66)
            {
              v63 = time == endTime;
              ++currentStartDateBucket;
              begin = self->_histogramState._dateBuckets.__begin_;
              v64 = *(begin + 8 * currentStartDateBucket);
              if (v64 != endTime)
              {
                v63 = 0;
              }

              if (v64 < endTime || v63)
              {
                continue;
              }
            }

            return;
          }
        }
      }
    }
  }
}

- (id)quantityDistributionsWithUnit:(id)unit
{
  unitCopy = unit;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  begin = self->_histogramState._dateBuckets.__begin_;
  end = self->_histogramState._dateBuckets.__end_;
  if (begin != end)
  {
    v5 = 0x277CBE000uLL;
    selfCopy = self;
    do
    {
      histogramBucketAnchor = self->_histogramState._histogramBucketAnchor;
      histogramBucketSize = self->_histogramState._histogramBucketSize;
      v8 = unitCopy;
      v9 = v8;
      if (*(begin + 6) == *(begin + 5))
      {

        v22 = 0;
      }

      else
      {
        v10 = [*(v5 + 2728) dateWithTimeIntervalSinceReferenceDate:*begin];
        v11 = [*(v5 + 2728) dateWithTimeIntervalSinceReferenceDate:*(begin + 1)];
        v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v9 doubleValue:*(begin + 2)];
        v13 = [MEMORY[0x277CCD7E8] quantityWithUnit:v9 doubleValue:*(begin + 3)];
        v14 = *(begin + 5);
        v15 = (*(begin + 6) - v14) >> 3;
        if (*(begin + 6) == v14)
        {
LABEL_10:
          v16 = 0;
        }

        else
        {
          v16 = 0;
          if (v15 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = (*(begin + 6) - v14) >> 3;
          }

          while (!*(v14 + 8 * v16))
          {
            if (v17 == ++v16)
            {
              goto LABEL_10;
            }
          }
        }

        v35 = v10;
        v36 = v9;
        v18 = (((*(begin + 6) - v14) >> 3) & ((*(begin + 6) - v14) >> 63)) - 1;
        v19 = v14 - 8;
        while (1)
        {
          v20 = v15 - 1;
          if (v15 < 1)
          {
            break;
          }

          if (*(v19 + 8 * v15--))
          {
            goto LABEL_17;
          }
        }

        v20 = v18;
LABEL_17:
        v34 = v13;
        v23 = v20 & ~(v20 >> 63);
        v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v23 - v16 + 1];
        if (v23 >= v16)
        {
          v25 = v23 + 1;
          v26 = v16;
          do
          {
            v27 = [MEMORY[0x277CCABB0] numberWithLong:*(*(begin + 5) + 8 * v26)];
            [v24 addObject:v27];

            ++v26;
          }

          while (v25 != v26);
        }

        histogramBucketSize = [MEMORY[0x277CCD7E8] quantityWithUnit:v36 doubleValue:histogramBucketAnchor + (v16 - *(begin + 4)) * histogramBucketSize];
        v22 = [objc_alloc(MEMORY[0x277CCDE20]) initWithStartDate:v35 endDate:v11 minimumBucketValue:histogramBucketSize minimumValue:v12 maximumValue:v34 averageValue:0 duration:0 histogramCounts:v24];

        if (v22)
        {
          [v30 addObject:v22];
        }

        self = selfCopy;
        v5 = 0x277CBE000;
      }

      begin = (begin + 64);
    }

    while (begin != end);
  }

  return v30;
}

- (BOOL)validateDateSequenceForTesting:(id)testing
{
  testingCopy = testing;
  if ([testingCopy count] - 1 == (self->_histogramState._dateBuckets.__end_ - self->_histogramState._dateBuckets.__begin_) >> 6)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [testingCopy count] - 1;
      v8 = v6 >= v7;
      if (v6 >= v7)
      {
        break;
      }

      v9 = [testingCopy objectAtIndexedSubscript:v6];
      [v9 timeIntervalSinceReferenceDate];
      v11 = v10;

      v12 = [testingCopy objectAtIndexedSubscript:v6 + 1];
      [v12 timeIntervalSinceReferenceDate];
      v14 = v13;

      begin = self->_histogramState._dateBuckets.__begin_;
      if (*(begin + v5) != v11)
      {
        break;
      }

      v16 = *(begin + v5 + 8);
      v5 += 64;
      ++v6;
    }

    while (v16 == v14);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end