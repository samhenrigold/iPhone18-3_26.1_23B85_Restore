int *HDStatisticsRelative<HDStatisticsAverageSampleDuration>::addSample(int *result, double *a2)
{
  if (*a2 == 1.79769313e308)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (*a2 != -1.79769313e308);
  }

  v3 = *result;
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3)
      {
        return result;
      }

      v6 = 1;
      *result = 1;
      *(result + 7) = 0;
      *(result + 2) = 0u;
      *(result + 28) = *(result + 48);
      v8 = *(result + 4);
      *(result + 10) = *(result + 5);
      *(result + 6) = v8;
      v4 = a2[2] - a2[1];
      goto LABEL_18;
    }

    if (v3 == 2)
    {
      v4 = a2[2] - a2[1];
      v5 = *(result + 2);
      if (v5)
      {
        v6 = v5 + 1;
        v4 = *(result + 1) + (v4 - *(result + 1)) / v6;
      }

      else
      {
        v6 = 1;
      }

LABEL_18:
      *(result + 1) = v4;
      goto LABEL_19;
    }

    *result = 2;
    *(result + 7) = 0;
    *(result + 2) = 0u;
    *(result + 28) = *(result + 48);
    v7 = *(result + 4);
    *(result + 10) = *(result + 5);
    *(result + 6) = v7;
LABEL_15:
    *(result + 1) = a2[2] - a2[1];
    v6 = 1;
LABEL_19:
    *(result + 2) = v6;
    return result;
  }

  if (!v3 && !*(result + 2))
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 312), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 352), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 352), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 392), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9}];

      if (WeakRetained)
      {
        v10 = &v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 392), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>> const&)::{lambda(HDStatisticsRelative<HDStatisticsAverageSampleDuration> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>> const&)::{lambda(HDStatisticsRelative<HDStatisticsAverageSampleDuration> const&)#1}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsRelative<HDStatisticsAverageSampleDuration> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsAverageSampleDuration const& ()(HDStatisticsRelative<HDStatisticsAverageSampleDuration> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 584) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  if (v8 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v8 end:a2[2]];
    v10 = (*(*a1 + 128))(a1, v9, a4);
  }

  return v10;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 560);
    v5 = *(a1 + 552);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::addSample(uint64_t a1, double *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v36 = *(a2 + 1);
  *v35 = 0;
  v33 = 0u;
  v34 = 0u;
  if ((v7 & 1) != 0 && v6 >= *(a1 + 8))
  {
    *&v33 = v5;
    *(&v33 + 1) = v6;
    v34 = *(a2 + 1);
    v35[0] = v7;
    v35[1] = v8;
    v9 = &v25;
    v10 = v6;
  }

  else
  {
    v9 = v35;
    v10 = 0.0;
  }

  *v9 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  if ((v35[0] & 1) != 0 && ((v11 = *(a1 + 16), *(a1 + 36)) ? (v12 = v10 < v11) : (v12 = v10 <= v11), !v12))
  {
    v13 = v35;
    v26 = v33;
    v27 = v34;
    v28 = *v35;
  }

  else
  {
    v13 = &v28;
  }

  *v13 = 0;
  if (v35[0] == 1)
  {
    v24 = v10;
    v14 = *(&v34 + 1);
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 256), *(&v34 + 1), &v34 + 1);
    if (*(a1 + 112) == *(a1 + 104) && *(a1 + 144) <= 0)
    {
      v18.f64[1] = *(a1 + 16);
      v15 = v24;
      v18.f64[0] = v24;
      v19.f64[0] = *(a1 + 8);
      *&v19.f64[1] = v34;
      v20 = vcgtq_f64(v19, v18);
      v19.f64[0] = v24;
      *(a1 + 48) = vbslq_s8(v20, *(a1 + 8), v19);
    }

    else
    {
      v15 = v24;
      if (v24 < *(a1 + 48))
      {
        v16 = *(a1 + 8);
        if (v24 >= v16)
        {
          v16 = v24;
        }

        *(a1 + 48) = v16;
      }

      v17 = v34;
      if (*&v34 > *(a1 + 56))
      {
        if (*(a1 + 16) < *&v34)
        {
          v17 = *(a1 + 16);
        }

        *(a1 + 56) = v17;
      }
    }

    if (*(a1 + 32) == 1)
    {
      v21 = *(a1 + 64);
      if (v15 < v21)
      {
        v21 = v15;
      }

      *(a1 + 64) = v21;
    }

    if (a3 && v15 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_mergeThroughTime(a1 + 8, v15);
    }

    v29[0] = v33;
    v29[1] = v34;
    v30 = *v35;
    v31 = 0;
    v32 = 0;
    std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v29);
    if (!*(a1 + 224) || *(a1 + 200) <= v6)
    {
      *(a1 + 192) = v5;
      *(a1 + 200) = v6;
      *(a1 + 208) = v36;
      *(a1 + 224) = v7;
      *(a1 + 225) = v8;
      if (!*(a1 + 184) || *(a1 + 160) <= v6)
      {
        *(a1 + 152) = v5;
        *(a1 + 160) = v6;
        *(a1 + 168) = v36;
        *(a1 + 184) = v7;
        *(a1 + 185) = v8;
      }
    }

    if (*(a1 + 33) == 1)
    {
      v22 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_canonicalSourceIDForSourceID(a1 + 8, v14);
      v23 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsForSource(a1 + 8, v22);
      if (!*(v23 + 96) || *(v23 + 9) <= v6)
      {
        *(v23 + 8) = v5;
        *(v23 + 9) = v6;
        *(v23 + 5) = v36;
        *(v23 + 96) = v7;
        *(v23 + 97) = v8;
        if (!*(v23 + 56) || *(v23 + 4) <= v6)
        {
          *(v23 + 3) = v5;
          *(v23 + 4) = v6;
          *(v23 + 5) = v36;
          *(v23 + 56) = v7;
          *(v23 + 57) = v8;
        }
      }
    }
  }

  if (v28 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 440, &v26);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 586) == 1)
  {
    *(a1 + 588) = 1;
  }

  else
  {
    *(a1 + 588) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 440), *(a1 + 448), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 448) - *(a1 + 440)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F67414(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 588) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 588) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F67534(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 584) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228F67984(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40081539FBLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32) || ([v10 endDate], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "startDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "hk_isBeforeOrEqualToDate:", v4), v4, v3, (v5 & 1) == 0) && (objc_msgSend(v10, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "endDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "hk_isAfterOrEqualToDate:", v7), v7, v6, (v8 & 1) == 0))
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v10);
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v29[3] = &__block_descriptor_40_e8_v16__0d8l;
  v29[4] = v31;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v30 mergeHandler:v29];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40))
      {
        v18 = v17;
        while (*(v15 + 120) < v18)
        {
          v19 = [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::advanceBucket(v15 + 112, v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 588) == 1)
          {
            *(v15 + 588) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  if ((*(a1 + 56) & 1) == 0)
  {
    v7 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  if (v7 == 1)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_primitiveAddSample(*(a1 + 48), &v5, a3, a4);
  }

  else
  {
    return 1;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 584) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI33HDStatisticsAverageSampleDurationEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  *&v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsAverageSampleDuration>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsAverageSampleDuration>::archive(uint64_t a1, int8x16_t *a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  v4 = (a1 + 112);
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283BE6208;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsAverageSampleDuration::archive(&a2->u64[1], &v6);
  statistics::Statistics::operator=(*(a1 + 128), &v6);
  statistics::Statistics::~Statistics(&v6);
  v5 = a2->i32[0];
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6 = &unk_283BEB0A8;
  v11 = 127;
  v8 = vextq_s8(a2[4], a2[4], 8uLL);
  v7 = a2[5];
  v9 = 0;
  v10 = 0;
  statistics::RawQuantitySample::operator=(*v4, &v6);
  PB::Base::~Base(&v6);
}

double HDStatisticsRelative<HDStatisticsAverageSampleDuration>::unarchive(uint64_t a1, void *a2)
{
  *(a1 + 56) = 0;
  v2 = 0uLL;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v3 = a2[16];
  if (v3)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0uLL;
    *(a1 + 24) = 0uLL;
    *(a1 + 16) = v3[3];
    *&v2 = v3[12];
    *(a1 + 8) = v2;
    v4 = v3[14];
    if (v4)
    {
      *&v2 = *(v4 + 8);
      v5 = *(v4 + 16);
      *(a1 + 24) = vextq_s8(*(v4 + 24), *(v4 + 24), 8uLL);
      *(a1 + 40) = v2;
      *(a1 + 48) = v5;
      *(a1 + 56) = 1;
    }
  }

  *a1 = a2[17];
  v6 = a2[14];
  if (v6)
  {
    *&v2 = *(v6 + 8);
    v7 = *(v6 + 16);
    *(a1 + 64) = vextq_s8(*(v6 + 24), *(v6 + 24), 8uLL);
    *(a1 + 80) = v2;
    *(a1 + 88) = v7;
    *(a1 + 96) = 1;
  }

  return *&v2;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEFFA8;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsAverageSampleDuration>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 1;
  *(a1 + 538) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEFFA8;
  v2 = *(a1 + 568);
  if (v2)
  {
    *(a1 + 576) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 504);
  if (v3)
  {
    *(a1 + 512) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 536) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 544) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 69, a2);
  v7 = a2;
  v4 = a1[69];
  v5 = a1[66];
  a1[66] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[66]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 248) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 536))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsAverageSampleDuration>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(v4);
  }

  return v1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 538) == 1)
    {
      if (*(a1 + 537))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 539) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 568, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 538) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 538) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 537))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 560);
  if (!v9)
  {
    v8 = 0;
    v68 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v68 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_956];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 560);
  v11 = [v10 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v70;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v70 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v69 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v68 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v69 objects:v73 count:16];
  }

  while (v11);

  if (v12)
  {
    [v68 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 560);
  *(a1 + 560) = 0;

  *(a1 + 537) = 0;
  if (v8)
  {
    v28 = *(a1 + 568);
    *(a1 + 584) = 0;
    *(a1 + 576) = 0;
    *(a1 + 568) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v68 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 568);
      v39 = *(a1 + 576);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 576);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 576) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 568);
  v29 = *(a1 + 576);
  *(a1 + 584) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  if ([v68 count])
  {
LABEL_46:
    v44 = v68;
    if (v44)
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v69 objects:v73 count:16];
      if (v46)
      {
        v47 = *v70;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v70 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v69 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_primitiveInvalidateInterval(a1, v49, v67);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v69 objects:v73 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_primitiveInvalidateInterval(a1, 0, v67))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v67;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 5;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v67;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40))
  {
    while (*(a1 + 512) != *(a1 + 504))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsAverageSampleDuration>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 538) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 540) == 1)
    {
      *(a1 + 540) = 0;
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v66;
LABEL_80:
  *(a1 + 538) = 0;
LABEL_81:

  return v7;
}

void sub_228F6901C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 538) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 538))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 538) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 560);
    *(a1 + 560) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 537) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 537) & 1) == 0)
  {
    v8 = *(a1 + 560);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 560);
      *(a1 + 560) = v9;

      v8 = *(a1 + 560);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 536) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 536) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 536) forKey:@"needs_config"];
  v13 = v3;
  v27 = &unk_283BF1A08;
  v28 = 0;
  v31 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v31) = 1;
  v29 = v4;
  memset(v30, 0, sizeof(v30));
  statistics::StatisticsEngine::makeCurrentBucket(&v27);
  v14 = &unk_283BE6258;
  memset(v17, 0, 24);
  v26 = 511;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v24 = *(a1 + 144);
  v25 = *(a1 + 145);
  v23 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v15 = v5;
  v16 = v7;
  v7.i64[0] = *(a1 + 176);
  v17[3] = v6;
  v17[4] = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v32 = &unk_283BEB0A8;
    v37 = 127;
    v34 = vextq_s8(*v8, *v8, 8uLL);
    v33 = v8[1];
    v36 = 0;
    HIBYTE(v35) = v8[2].i8[9];
    LOBYTE(v35) = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>(&v18, &v32);
  }

  statistics::StatisticsBucket::makeStatistics(&v14);
  HDStatisticsAverageSampleDuration::archive((a1 + 240), &v32);
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 296);
  if (v9 != a1 + 304)
  {
    HDStatisticsAverageSampleDuration::archive((v9 + 40), &v32);
    v10 = *(v9 + 32);
    v39 |= 0x200u;
    v38 = v10;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics&>(v21 + 1, &v32);
  }

  v11 = *(a1 + 184);
  if (v11 != *(a1 + 192))
  {
    v32 = &unk_283BF1F08;
    v34.i32[0] = 3;
    v33 = vextq_s8(*v11, *v11, 8uLL);
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval&>(v17, &v32);
  }

  statistics::StatisticsBucket::operator=(v28, &v14);
  statistics::StatisticsBucket::~StatisticsBucket(&v14);
  v12 = *(a1 + 504);
  if (v12 != *(a1 + 512))
  {
    v32 = &unk_283BEB0A8;
    v37 = 127;
    v34 = vextq_s8(*v12, *v12, 8uLL);
    v33 = v12[1];
    v35 = 0;
    v36 = 0;
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample>(v30, &v32);
  }

  PB::Writer::Writer(&v32);
  statistics::StatisticsEngine::writeTo(&v27, &v32);
  [v13 encodeBytes:v33.i64[0] length:v32 - v33.i64[0] forKey:@"hdsce_archived_representation"];
  PB::Writer::~Writer(&v32);
  statistics::StatisticsEngine::~StatisticsEngine(&v27);
}

void sub_228F69860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::decodeInternalsWithDecoder(uint64_t j, void *a2)
{
  v39 = a2;
  *(j + 536) = [v39 decodeBoolForKey:@"needs_config"];
  v3 = v39;
  HDStatisticsBucket<HDStatisticsAverageSampleDuration>::HDStatisticsBucket(v45, 0, -1.79769313e308, 1.79769313e308);
  __p = 0u;
  v47 = 0u;
  v81 = 0;
  PB::Reader::Reader(v80, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v81]);
  v73 = &unk_283BF1A08;
  v74 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v79 = 0;
  statistics::StatisticsEngine::readFrom(&v73, v80);
  v44 = v75;
  if (v74)
  {
    v51 = 0;
    memset(v54, 0, sizeof(v54));
    v58[1] = 0;
    v58[0] = 0;
    v55 = 0u;
    v56 = 0u;
    memset(v57, 0, 42);
    v57[6] = v58;
    v59 = 0u;
    v60 = 0u;
    v61 = 1065353216;
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v66 = 1065353216;
    v67 = 0u;
    v68 = 0u;
    v69 = 1065353216;
    v70 = 0u;
    v71 = 0u;
    v72 = 1065353216;
    v48 = vextq_s8(*(v74 + 8), *(v74 + 8), 8uLL);
    v4 = *(v74 + 72);
    v49 = *(v74 + 64);
    LOWORD(v50) = *(v74 + 185);
    v52 = vextq_s8(*(v74 + 24), *(v74 + 24), 8uLL);
    v53 = v4;
    v5 = *(v74 + 80);
    v6 = *(v74 + 88);
    v41 = v3;
    for (i = v74; v5 != v6; ++v5)
    {
      v7 = *v5;
      v85 = 1;
      v86 = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v82 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      v83 = v8;
      v84 = v9;
      v87 = *(v7 + 41);
      v88 = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](&v55, v82.i8);
    }

    v10 = i[13];
    if (v10)
    {
      v11 = v10[3];
      v12 = v10[12];
      v13 = v10[14];
      if (v13)
      {
        v14 = *(v13 + 24);
        v15 = *(v13 + 8);
        v16 = 1;
        v13 = *(v13 + 16);
      }

      else
      {
        v16 = 0;
        v14 = 0uLL;
        v15 = 0;
      }

      *(&v56 + 1) = v12;
      v57[0] = v11;
      *&v57[1] = vextq_s8(v14, v14, 8uLL);
      v57[3] = v15;
      v57[4] = v13;
      LOWORD(v57[5]) = v16;
    }

    v40 = j;
    v18 = i[17];
    v17 = i[18];
    while (v18 != v17)
    {
      v19 = *v18;
      v20 = *(*v18 + 112);
      if (v20)
      {
        v43 = *(v20 + 24);
        v21 = *(v20 + 8);
        v22 = 1;
        v23 = *(v20 + 16);
      }

      else
      {
        v23 = 0;
        v22 = 0;
        v21 = 0;
        v43 = 0u;
      }

      v24 = v19[3];
      v25 = v19[12];
      v26 = v19[18];
      v27 = v58[0];
      if (!v58[0])
      {
LABEL_21:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v28 = v27;
          v29 = v27[4];
          if (v29 <= v26)
          {
            break;
          }

          v27 = *v28;
          if (!*v28)
          {
            goto LABEL_21;
          }
        }

        if (v29 >= v26)
        {
          break;
        }

        v27 = v28[1];
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      v28[5] = v25;
      v28[6] = v24;
      *(v28 + 7) = vextq_s8(v43, v43, 8uLL);
      v28[9] = v21;
      v28[10] = v23;
      *(v28 + 88) = v22;
      v18 += 8;
      *(v28 + 89) = 0;
    }

    v3 = v41;
    v30 = i[5];
    v31 = i[6];
    for (j = v40; v30 != v31; v30 += 8)
    {
      v33 = *(*v30 + 8);
      v32 = *(*v30 + 16);
      if (v33 >= v32)
      {
        v34 = *(*v30 + 16);
      }

      else
      {
        v34 = *(*v30 + 8);
      }

      if (v32 < v33)
      {
        v32 = *(*v30 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v54, v34, v32);
    }

    HDStatisticsBucket<HDStatisticsCumulative>::operator=(v45, &v48);
    HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(&v48);
  }

  v35 = v76;
  for (k = v77; v35 != k; v35 += 8)
  {
    v37 = *(*v35 + 8);
    v38 = *(*v35 + 16);
    v48 = vextq_s8(*(*v35 + 24), *(*v35 + 24), 8uLL);
    v49 = v37;
    v50 = v38;
    LOWORD(v51) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&__p, v48.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v73);

  HDStatisticsCollectionEngine<HDStatisticsCumulative>::operator=((j + 112), &v44);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(v45);
}

void sub_228F69D78(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  statistics::StatisticsEngine::~StatisticsEngine((v18 - 256));
  HDStatisticsCollectionEngine<HDStatisticsCumulative>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsAverageSampleDuration>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 176) = a1 + 184;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_configureForStartTime(uint64_t a1)
{
  v29 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v29];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsAverageSampleDuration>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v24 = 1;
  }

  v23 = *(a1 + 56);
  v25 = *(a1 + 24) & 1;
  if (v28 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v28, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v27, *(a1 + 552));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsAverageSampleDuration>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsAverageSampleDuration>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCumulative>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(v17);
  *(a1 + 536) = 0;
  return HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(v22);
}

uint64_t HDStatisticsBucket<HDStatisticsAverageSampleDuration>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  v13 = *(a2 + 168);
  *(a1 + 184) = 0;
  v14 = (a1 + 184);
  *(a1 + 176) = a1 + 184;
  *(a1 + 168) = v13;
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  *(a1 + 192) = 0;
  v15 = *(a2 + 176);
  if (v15 != (a2 + 184))
  {
    v16 = 0;
    v17 = (a1 + 184);
    while (1)
    {
      v18 = v15[4];
      v19 = (a1 + 184);
      if (v17 == v14)
      {
        goto LABEL_12;
      }

      v20 = v16;
      v21 = (a1 + 184);
      if (v16)
      {
        do
        {
          v19 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        do
        {
          v19 = v21[2];
          v22 = *v19 == v21;
          v21 = v19;
        }

        while (v22);
      }

      if (v19[4] < v18)
      {
LABEL_12:
        if (v16)
        {
          v23 = v19 + 1;
        }

        else
        {
          v23 = (a1 + 184);
        }

        if (!*v23)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v16)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v24 = v16;
            v25 = v16[4];
            if (v25 <= v18)
            {
              break;
            }

            v16 = *v24;
            if (!*v24)
            {
              goto LABEL_23;
            }
          }

          if (v25 >= v18)
          {
            break;
          }

          v16 = v24[1];
          if (!v16)
          {
            goto LABEL_23;
          }
        }
      }

      v26 = v15[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v15[2];
          v22 = *v27 == v15;
          v15 = v27;
        }

        while (!v22);
      }

      if (v27 == (a2 + 184))
      {
        break;
      }

      v16 = *v14;
      v17 = *(a1 + 176);
      v15 = v27;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 200, a2 + 200);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 240), *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 264, a2 + 264);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 304, a2 + 304);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 344, a2 + 344);
  return a1;
}

void sub_228F6A4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 304);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 264);
  v14 = *v11;
  if (*v11)
  {
    *(v10 + 248) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 200);
  std::__tree<long>::destroy(*v12);
  v15 = *a9;
  if (*a9)
  {
    *(v10 + 104) = v15;
    operator delete(v15);
  }

  objc_destroyWeak((v10 + 88));
  v16 = *a10;
  if (*a10)
  {
    *(v10 + 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v65 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v67 = a2;
  if (*(a2 + 8) == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v8 = v7;
  v9 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a1 + 16);
    if ([v10 shouldUseUnderlyingTypeForStatistics])
    {
      v11 = [v10 underlyingSampleType];

      v9 = v11;
    }
  }

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v65 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(a2 + 240);
      v16 = *(a2 + 248);
      while (v15 != v16)
      {
        v17 = *v15;
        v18 = objc_loadWeakRetained((a1 + 48));
        v19 = [v18 sourceForSourceID:v17];

        if (v19)
        {
          if (([v14 containsObject:v19] & 1) == 0)
          {
            [v14 addObject:v19];
          }
        }

        ++v15;
      }

      v20 = objc_msgSend_copy(v14);
      [v12 _setSources:v20];
    }
  }

  v72[0] = &unk_283BF0078;
  v73 = v72;
  v66 = v12;
  v21 = MEMORY[0x277CCD7E8];
  v22 = [MEMORY[0x277CCDAB0] secondUnit];
  v23 = *(v67 + 136);
  *__p = *(v67 + 120);
  v69 = v23;
  v70 = *(v67 + 152);
  v71 = *(v67 + 168);
  if (!v73)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v24 = [v21 quantityWithUnit:v22 doubleValue:{*(*(*v73 + 48))(v73, __p)}];
  [v66 setDuration:v24];

  v25 = *(v67 + 136);
  *__p = *(v67 + 120);
  v69 = v25;
  v70 = *(v67 + 152);
  v71 = *(v67 + 168);
  if (!v73)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  [v66 setDataCount:{*((*(*v73 + 48))(v73, __p) + 8)}];
  v26 = *(v67 + 136);
  *__p = *(v67 + 120);
  v69 = v26;
  v70 = *(v67 + 152);
  v71 = *(v67 + 168);
  if (!v73)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v27 = (*(*v73 + 48))(v73, __p);
  v28 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(v27 + 24) end:*(v27 + 32)];
  [v66 setMostRecentQuantityDateInterval:v28];

  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_60;
  }

  v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v69 = 0u;
  LODWORD(v70) = 1065353216;
  v29 = *(v67 + 176);
  if (v29 == (v67 + 184))
  {
    goto LABEL_59;
  }

  v60 = &v69;
  do
  {
    v30 = HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_bundleIdentifierForSourceID(v67, v29[4]);
    v31 = v30;
    if (!v30)
    {
      goto LABEL_46;
    }

    v32 = [v30 hash];
    v33 = v32;
    v34 = __p[1];
    if (!__p[1])
    {
      goto LABEL_44;
    }

    v35 = vcnt_s8(__p[1]);
    v35.i16[0] = vaddlv_u8(v35);
    v36 = v35.u32[0];
    if (v35.u32[0] > 1uLL)
    {
      v37 = v32;
      if (v32 >= __p[1])
      {
        v37 = v32 % __p[1];
      }
    }

    else
    {
      v37 = (__p[1] - 1) & v32;
    }

    v38 = *(__p[0] + v37);
    if (!v38 || (v39 = *v38) == 0)
    {
LABEL_44:
      operator new();
    }

    v61 = __p[1] - 1;
    while (1)
    {
      v40 = v39[1];
      if (v40 == v33)
      {
        break;
      }

      if (v36 > 1)
      {
        if (v40 >= v34)
        {
          v40 %= v34;
        }
      }

      else
      {
        v40 &= v61;
      }

      if (v40 != v37)
      {
        goto LABEL_44;
      }

LABEL_43:
      v39 = *v39;
      if (!v39)
      {
        goto LABEL_44;
      }
    }

    v41 = v39[2];
    v42 = v31;
    v43 = v42;
    if (v41 != v42)
    {
      v44 = [v41 isEqualToString:v42];

      if (v44)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

LABEL_45:
    v45 = *(v29 + 5);
    v46 = *(v29 + 7);
    v47 = *(v29 + 9);
    v39[9] = v29[11];
    *(v39 + 7) = v47;
    *(v39 + 5) = v46;
    *(v39 + 3) = v45;

LABEL_46:
    v48 = v29[1];
    if (v48)
    {
      do
      {
        v49 = v48;
        v48 = *v48;
      }

      while (v48);
    }

    else
    {
      do
      {
        v49 = v29[2];
        v50 = *v49 == v29;
        v29 = v49;
      }

      while (!v50);
    }

    v29 = v49;
  }

  while (v49 != (v67 + 184));
  for (i = v69; i; i = *i)
  {
    v52 = i[2];
    v53 = MEMORY[0x277CCD7E8];
    v54 = [MEMORY[0x277CCDAB0] secondUnit];
    if (!v73)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v55 = [v53 quantityWithUnit:v54 doubleValue:{*(*(*v73 + 48))(v73, i + 3)}];
    [v64 setObject:v55 forKeyedSubscript:v52];

    if (!v73)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v56 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v73 + 48))(v73, i + 3) + 8)}];
    [v63 setObject:v56 forKeyedSubscript:v52];

    if (!v73)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v57 = (*(*v73 + 48))(v73, i + 3);
    v58 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(v57 + 24) end:*(v57 + 32)];
    [v62 setObject:v58 forKeyedSubscript:v52];
  }

LABEL_59:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  [v66 setDurationBySource:v64];
  [v66 setDataCountBySource:v63];
  [v66 setMostRecentQuantityDateIntervalBySource:v62];

LABEL_60:
  std::__function::__value_func<HDStatisticsAverageSampleDuration const& ()(HDStatisticsAverageSampleDuration const&)>::~__value_func[abi:ne200100](v72);

  return v66;
}

void HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_updateSourceOrder(uint64_t a1)
{
  v2 = a1 + 240;
  v1 = *(a1 + 240);
  v3 = *(a1 + 224);
  if (v3 != (*(a1 + 248) - v1) >> 3)
  {
    *(a1 + 248) = v1;
    std::vector<long long>::reserve((a1 + 240), v3);
    for (i = *(a1 + 216); i; i = *i)
    {
      v8 = i[2];
      std::vector<long long>::push_back[abi:ne200100](v2, &v8);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained((a1 + 88));
      [v7 orderSourceIDs:v2];
    }
  }
}

void HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    while (1)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_96;
      }

      v9 = a2;
      v10 = a2;
      v11 = v5;
      v12 = *(a1 + 96);
      if (v6 != v7)
      {
        do
        {
          v13 = v12->n128_f64[1];
          v14 = v12[1].n128_f64[0];
          if (v13 > v11 && v13 < v10)
          {
            v10 = v12->n128_f64[1];
          }

          if (v14 > v5)
          {
            v16 = v12[1].n128_f64[0];
          }

          else
          {
            v16 = v9;
          }

          if (v14 < v9)
          {
            v11 = v5;
            v9 = v16;
          }

          v12 += 3;
        }

        while (v12 != v7);
      }

      if (v9 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      v18 = *(a1 + 16);
      if (v18 > 0.0)
      {
        v19 = v18 * floor(v17 / v18);
        v20 = v18 * floor((v18 + v5) / v18);
        if (v19 >= v20)
        {
          v17 = v19;
        }

        else
        {
          v17 = v20;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v6 != v7)
      {
        if (v8 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v70 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,false>(v6, v7, &v70, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v67 = 0;
      }

      __p = v6;
      if (v6 != v7)
      {
        v68 = 0;
        v32 = 0;
        v33 = v6;
        while (1)
        {
          v34 = 0;
          v35 = 0;
          v79 = 0;
          v36 = *v33;
          v37 = *(v33 + 8);
          v38 = *(v33 + 16);
          v39 = *(v33 + 24);
          v78 = *(v33 + 32);
          v40 = &v79;
          v41 = 0.0;
          if (v78)
          {
            v42 = 0.0;
            v43 = 0;
            if (v37 > v17)
            {
              v40 = &v78;
              v35 = *(v33 + 33);
              v79 = v78;
              v34 = v39;
              v41 = v38;
              v42 = v37;
              v43 = v36;
            }
          }

          else
          {
            v42 = 0.0;
            v43 = 0;
          }

          *v40 = 0;
          if (v78)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v33);
LABEL_86:
          v33 += 48;
          if (v33 == v7)
          {
            goto LABEL_87;
          }
        }

        for (i = *(a1 + 64); i != *(a1 + 72) && v37 >= *i; i += 2)
        {
          if (v37 < i[1])
          {
            v78 = 0;
            v49 = *(v33 + 42);
            v45 = *(v33 + 41);
            v69 = *(v33 + 40);
            goto LABEL_84;
          }
        }

        v45 = *(v33 + 41);
        v69 = *(v33 + 40);
        if (v32)
        {
          if (v68 == v39 || *(a1 + 24) == 1)
          {
            v46 = v38 - v37;
            v47 = *(a1 + 128);
            if (!v47)
            {
              v48 = 1;
              goto LABEL_68;
            }

LABEL_65:
            v48 = v47 + 1;
            v46 = *(a1 + 120) + (v46 - *(a1 + 120)) / v48;
            goto LABEL_68;
          }

          v49 = *(v33 + 42);
        }

        else
        {
          v46 = v38 - v37;
          v47 = *(a1 + 128);
          if (v47)
          {
            v68 = v39;
            goto LABEL_65;
          }

          v48 = 1;
          v68 = v39;
LABEL_68:
          *(a1 + 120) = v46;
          *(a1 + 128) = v48;
          v49 = 1;
        }

        if (*(a1 + 25) == 1)
        {
          v50 = HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_bundleIdentifierForSourceID(a1, v39);
          if (v50)
          {
            v51 = [v67 objectForKeyedSubscript:v50];
            v52 = v51;
            if (v51)
            {
              if ([v51 longLongValue] != v39 && *(a1 + 24) != 1)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v53 = [MEMORY[0x277CCABB0] numberWithLongLong:v39];
              [v67 setObject:v53 forKeyedSubscript:v50];
            }

            v54 = HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_canonicalSourceIDForSourceID(a1, v39);
            v55 = HDStatisticsBucket<HDStatisticsCumulative>::_statisticsForSource(a1, v54);
            v56 = v38 - v37;
            v57 = v55[1];
            if (v57)
            {
              v58 = v57 + 1;
              v56 = *v55 + (v56 - *v55) / v58;
            }

            else
            {
              v58 = 1;
            }

            *v55 = v56;
            v55[1] = v58;
            v45 = 1;
LABEL_81:
          }
        }

        v32 = 1;
LABEL_84:
        if (v79 == 1)
        {
          *&v70 = v43;
          *(&v70 + 1) = v42;
          v71 = v41;
          v72 = v34;
          v73 = v79;
          v74 = v35;
          v75 = v69;
          v76 = v45 & 1;
          v77 = v49 & 1;
          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v70);
        }

        goto LABEL_86;
      }

LABEL_87:
      *(a1 + 56) = v17;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_97:
      v63 = *(a1 + 56);
      if (v63 == v5)
      {
        v64 = [MEMORY[0x277CCA890] currentHandler];
        v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_mergeThroughTime(double) [Statistics = HDStatisticsAverageSampleDuration]"];
        [v64 handleFailureInFunction:v65 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v63 = *(a1 + 56);
      }

      v5 = v63;
      if (v63 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 8);
    v25 = *(v6 + 16);
    v26 = *(v6 + 24);
    for (j = *(a1 + 64); j != *(a1 + 72) && v24 >= *j; j += 2)
    {
      if (v24 < j[1])
      {
        goto LABEL_95;
      }
    }

    if (*(v6 + 32))
    {
      v28 = v25 - v24;
      v29 = *(a1 + 128);
      if (v29)
      {
        v30 = v29 + 1;
        v31 = *(a1 + 120) + (v28 - *(a1 + 120)) / v30;
      }

      else
      {
        v31 = v25 - v24;
        v30 = 1;
      }

      *(a1 + 120) = v31;
      *(a1 + 128) = v30;
      if (*(a1 + 25) == 1)
      {
        v59 = HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_canonicalSourceIDForSourceID(a1, v26);
        v60 = HDStatisticsBucket<HDStatisticsCumulative>::_statisticsForSource(a1, v59);
        v61 = v60[1];
        if (v61)
        {
          v62 = v61 + 1;
          v28 = *v60 + (v28 - *v60) / v62;
        }

        else
        {
          v62 = 1;
        }

        *v60 = v28;
        v60[1] = v62;
        v6 = *(a1 + 96);
      }
    }

LABEL_95:
    *(a1 + 104) = v6;
LABEL_96:
    *(a1 + 56) = a2;
    goto LABEL_97;
  }
}

uint64_t *HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 264), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 304), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 304), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 344), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9}];

      if (WeakRetained)
      {
        v10 = &v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 344), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration>(HKStatistics *,HDStatisticsBucket<HDStatisticsAverageSampleDuration> const&)::{lambda(HDStatisticsAverageSampleDuration const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration>(HKStatistics *,HDStatisticsBucket<HDStatisticsAverageSampleDuration> const&)::{lambda(HDStatisticsAverageSampleDuration const&)#1}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsAverageSampleDuration const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsAverageSampleDuration const& ()(HDStatisticsAverageSampleDuration const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 536) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  if (v8 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsAverageSampleDuration>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v8 end:a2[2]];
    v10 = (*(*a1 + 128))(a1, v9, a4);
  }

  return v10;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v5 = *(a1 + 504);
    v4 = *(a1 + 512);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsCumulative>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsAverageSampleDuration>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsAverageSampleDuration>::addSample(uint64_t a1, double *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v36 = *(a2 + 1);
  *v35 = 0;
  v33 = 0u;
  v34 = 0u;
  if ((v7 & 1) != 0 && v6 >= *(a1 + 8))
  {
    *&v33 = v5;
    *(&v33 + 1) = v6;
    v34 = *(a2 + 1);
    v35[0] = v7;
    v35[1] = v8;
    v9 = &v25;
    v10 = v6;
  }

  else
  {
    v9 = v35;
    v10 = 0.0;
  }

  *v9 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  if ((v35[0] & 1) != 0 && ((v11 = *(a1 + 16), *(a1 + 36)) ? (v12 = v10 < v11) : (v12 = v10 <= v11), !v12))
  {
    v13 = v35;
    v26 = v33;
    v27 = v34;
    v28 = *v35;
  }

  else
  {
    v13 = &v28;
  }

  *v13 = 0;
  if (v35[0] == 1)
  {
    v24 = v10;
    v14 = *(&v34 + 1);
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 208), *(&v34 + 1), &v34 + 1);
    if (*(a1 + 112) == *(a1 + 104) && *(a1 + 136) <= 0)
    {
      v18.f64[1] = *(a1 + 16);
      v15 = v24;
      v18.f64[0] = v24;
      v19.f64[0] = *(a1 + 8);
      *&v19.f64[1] = v34;
      v20 = vcgtq_f64(v19, v18);
      v19.f64[0] = v24;
      *(a1 + 48) = vbslq_s8(v20, *(a1 + 8), v19);
    }

    else
    {
      v15 = v24;
      if (v24 < *(a1 + 48))
      {
        v16 = *(a1 + 8);
        if (v24 >= v16)
        {
          v16 = v24;
        }

        *(a1 + 48) = v16;
      }

      v17 = v34;
      if (*&v34 > *(a1 + 56))
      {
        if (*(a1 + 16) < *&v34)
        {
          v17 = *(a1 + 16);
        }

        *(a1 + 56) = v17;
      }
    }

    if (*(a1 + 32) == 1)
    {
      v21 = *(a1 + 64);
      if (v15 < v21)
      {
        v21 = v15;
      }

      *(a1 + 64) = v21;
    }

    if (a3 && v15 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_mergeThroughTime(a1 + 8, v15);
    }

    v29[0] = v33;
    v29[1] = v34;
    v30 = *v35;
    v31 = 0;
    v32 = 0;
    std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v29);
    if (!*(a1 + 176) || *(a1 + 152) <= v6)
    {
      *(a1 + 144) = v5;
      *(a1 + 152) = v6;
      *(a1 + 160) = v36;
      *(a1 + 176) = v7;
      *(a1 + 177) = v8;
    }

    if (*(a1 + 33) == 1)
    {
      v22 = HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_canonicalSourceIDForSourceID(a1 + 8, v14);
      v23 = HDStatisticsBucket<HDStatisticsCumulative>::_statisticsForSource(a1 + 8, v22);
      if (!*(v23 + 48) || *(v23 + 3) <= v6)
      {
        *(v23 + 2) = v5;
        *(v23 + 3) = v6;
        *(v23 + 2) = v36;
        *(v23 + 48) = v7;
        *(v23 + 49) = v8;
      }
    }
  }

  if (v28 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 392, &v26);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 538) == 1)
  {
    *(a1 + 540) = 1;
  }

  else
  {
    *(a1 + 540) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsAverageSampleDuration>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 392), *(a1 + 400), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 400) - *(a1 + 392)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCumulative>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsAverageSampleDuration>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F6C434(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 540) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 540) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F6C554(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 536) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228F6C9A4(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40C88B5054);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32) || ([v10 endDate], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "startDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "hk_isBeforeOrEqualToDate:", v4), v4, v3, (v5 & 1) == 0) && (objc_msgSend(v10, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "endDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "hk_isAfterOrEqualToDate:", v7), v7, v6, (v8 & 1) == 0))
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v10);
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v29[3] = &__block_descriptor_40_e8_v16__0d8l;
  v29[4] = v31;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v30 mergeHandler:v29];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40))
      {
        v18 = v17;
        while (*(v15 + 120) < v18)
        {
          v19 = [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
          HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsAverageSampleDuration>::advanceBucket(v15 + 112, v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 540) == 1)
          {
            *(v15 + 540) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  if ((*(a1 + 56) & 1) == 0)
  {
    v7 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  if (v7 == 1)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_primitiveAddSample(*(a1 + 48), &v5, a3, a4);
  }

  else
  {
    return 1;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 536) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsAverageSampleDuration>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI33HDStatisticsAverageSampleDurationE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  *&v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsAverageSampleDuration>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF0128;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 1;
  *(a1 + 642) = 0;
  *(a1 + 644) = 0;
  *(a1 + 648) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF0128;
  v2 = *(a1 + 672);
  if (v2)
  {
    *(a1 + 680) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 608);
  if (v3)
  {
    *(a1 + 616) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 640) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 648) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 82, a2);
  v7 = a2;
  v4 = a1[82];
  v5 = a1[79];
  a1[79] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[79]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = *(a1 + 224) == *(a1 + 216) && (*(a1 + 256) - *(a1 + 248)) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), v7, v8, (v8 - v7) >> 4);
  }

  if (v9)
  {
    return 1;
  }

  v11 = *(*a1 + 128);

  return v11(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 640) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228F6D614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 642) == 1)
    {
      if (*(a1 + 641))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 643) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 672, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 642) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 642) = 1;
  v60 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v59 = v6;
  if (*(a1 + 641))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 664);
  if (!v9)
  {
    v8 = 0;
    v61 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v61 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_979];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = *(a1 + 664);
  v11 = [v10 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v63;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v63 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v62 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v61 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v62 objects:v66 count:16];
  }

  while (v11);

  if (v12)
  {
    [v61 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 664);
  *(a1 + 664) = 0;

  *(a1 + 641) = 0;
  if (v8)
  {
    v28 = *(a1 + 672);
    *(a1 + 688) = 0;
    *(a1 + 680) = 0;
    *(a1 + 672) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v61 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 672);
      v39 = *(a1 + 680);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 680);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 680) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 672);
  v29 = *(a1 + 680);
  *(a1 + 688) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  if ([v61 count])
  {
LABEL_46:
    v44 = v61;
    if (v44)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v62 objects:v66 count:16];
      if (v46)
      {
        v47 = *v63;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v63 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v62 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v49, v60);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v62 objects:v66 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, 0, v60))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v60;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v60;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40) && *(a1 + 616) != *(a1 + 608))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
  }

  *(a1 + 642) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 644) == 1)
    {
      *(a1 + 644) = 0;
      v6 = v59;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v59;
LABEL_80:
  *(a1 + 642) = 0;
LABEL_81:

  return v7;
}

void sub_228F6DE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 642) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 642))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 642) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 664);
    *(a1 + 664) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 641) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 641) & 1) == 0)
  {
    v8 = *(a1 + 664);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 664);
      *(a1 + 664) = v9;

      v8 = *(a1 + 664);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 640) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 640) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 640) forKey:@"needs_config"];
  v3;
  v23[0] = &unk_283BF1A08;
  v23[1] = 0;
  v24 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v24) = 1;
  v23[2] = v4;
  memset(&v23[3], 0, 24);
  statistics::StatisticsEngine::makeCurrentBucket(v23);
  v9 = &unk_283BE6258;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v22 = 511;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v20 = *(a1 + 144);
  v21 = *(a1 + 145);
  v19 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v10 = v5;
  v11 = v7;
  v7.i64[0] = *(a1 + 176);
  v15 = v6;
  v16 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v25[0] = &unk_283BEB0A8;
    v30 = 127;
    v26 = vextq_s8(*v8, *v8, 8uLL);
    v25[1] = v8[1].i64[0];
    v25[2] = v8[1].i64[1];
    v29 = 0;
    v28 = v8[2].i8[9];
    v27 = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>(v17, v25);
  }

  statistics::StatisticsBucket::makeStatistics(&v9);
  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::archive(v25, a1 + 240);
}

void sub_228F6E6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v32 = a2;
  *(k + 640) = [v32 decodeBoolForKey:@"needs_config"];
  v3 = v32;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::HDStatisticsBucket(&v36.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v37 = 0u;
  v38 = 0u;
  v77 = 0;
  PB::Reader::Reader(v76, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v77]);
  v69 = &unk_283BF1A08;
  v70 = 0;
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v75 = 0;
  statistics::StatisticsEngine::readFrom(&v69, v76);
  v36.n128_u64[0] = v71;
  if (v70)
  {
    v42 = 0;
    memset(v45, 0, sizeof(v45));
    *__p = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    memset(v53, 0, 74);
    v54[1] = 0;
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    v54[0] = 0;
    v53[10] = v54;
    v55 = 0u;
    v56 = 0u;
    v57 = 1065353216;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    v62 = 1065353216;
    v63 = 0u;
    v64 = 0u;
    v65 = 1065353216;
    v66 = 0u;
    v67 = 0u;
    v68 = 1065353216;
    v39 = vextq_s8(*(v70 + 8), *(v70 + 8), 8uLL);
    v4 = *(v70 + 72);
    v40 = *(v70 + 64);
    LOWORD(v41) = *(v70 + 185);
    v43 = vextq_s8(*(v70 + 24), *(v70 + 24), 8uLL);
    v44 = v4;
    v5 = *(v70 + 80);
    v6 = *(v70 + 88);
    v34 = v3;
    for (i = v70; v5 != v6; ++v5)
    {
      v7 = *v5;
      WORD4(v79) = 1;
      LOBYTE(v80) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      *v78 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v78[16] = v8;
      *&v79 = v9;
      BYTE1(v80) = *(v7 + 41);
      BYTE2(v80) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v46, v78);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::unarchive(v78, v10);
      v47 = *v78;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *&v78[8];
      v49 = v79;
      *&v78[16] = 0;
      *&v79 = 0;
      *&v78[8] = 0;
      v50 = v80;
      v51 = v81;
      v52 = v82;
      v53[0] = v83;
      v11 = v53[1];
      if (v53[1])
      {
        v53[2] = v53[1];
        operator delete(v53[1]);
        v11 = *&v78[8];
      }

      *&v53[1] = v84;
      v53[3] = v85;
      v85 = 0;
      v84 = 0uLL;
      v53[4] = v86;
      *&v53[5] = v87;
      *&v53[7] = v88;
      LOWORD(v53[9]) = v89;
      if (v11)
      {
        *&v78[16] = v11;
        operator delete(v11);
      }
    }

    v33 = k;
    v13 = i[17];
    for (j = i[18]; v13 != j; ++v13)
    {
      v14 = *v13;
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::unarchive(v78, *v13);
      v15 = *(v14 + 144);
      v16 = v54[0];
      if (!v54[0])
      {
LABEL_18:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v18 <= v15)
          {
            break;
          }

          v16 = *v17;
          if (!*v17)
          {
            goto LABEL_18;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      v19 = v17[6];
      *(v17 + 10) = *v78;
      if (v19)
      {
        v17[7] = v19;
        operator delete(v19);
        v17[6] = 0;
        v17[7] = 0;
        v17[8] = 0;
      }

      *(v17 + 3) = *&v78[8];
      v17[8] = v79;
      *&v78[16] = 0;
      *&v79 = 0;
      *&v78[8] = 0;
      v17[9] = *(&v79 + 1);
      v20 = v81;
      *(v17 + 5) = v80;
      *(v17 + 6) = v20;
      *(v17 + 56) = v82;
      v17[15] = v83;
      v21 = v17[16];
      if (v21)
      {
        v17[17] = v21;
        operator delete(v21);
        v17[16] = 0;
        v17[17] = 0;
        v17[18] = 0;
        v21 = *&v78[8];
      }

      *(v17 + 8) = v84;
      v17[18] = v85;
      v85 = 0;
      v84 = 0uLL;
      v17[19] = v86;
      v22 = v88;
      *(v17 + 10) = v87;
      *(v17 + 11) = v22;
      *(v17 + 96) = v89;
      if (v21)
      {
        *&v78[16] = v21;
        operator delete(v21);
      }
    }

    v3 = v34;
    v23 = i[5];
    v24 = i[6];
    for (k = v33; v23 != v24; v23 += 8)
    {
      v26 = *(*v23 + 8);
      v25 = *(*v23 + 16);
      if (v26 >= v25)
      {
        v27 = *(*v23 + 16);
      }

      else
      {
        v27 = *(*v23 + 8);
      }

      if (v25 < v26)
      {
        v25 = *(*v23 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v45, v27, v25);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::operator=(&v36.n128_i64[1], &v39);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v39);
  }

  v28 = v72;
  for (m = v73; v28 != m; v28 += 8)
  {
    v30 = *(*v28 + 8);
    v31 = *(*v28 + 16);
    v39 = vextq_s8(*(*v28 + 24), *(*v28 + 24), 8uLL);
    v40 = v30;
    v41 = v31;
    LOWORD(v42) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v37, v39.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v69);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::operator=((k + 112), &v36);
  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v36.n128_i64[1]);
}

void sub_228F6ED28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(&STACK[0x400]);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a9);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x3B0]);
  v14 = STACK[0x398];
  if (STACK[0x398])
  {
    STACK[0x3A0] = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x370]);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::destroy(STACK[0x360]);
  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsRelative(&STACK[0x2B8]);
  v15 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v15;
    operator delete(v15);
  }

  objc_destroyWeak(&STACK[0x298]);
  v16 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v16;
    operator delete(v16);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x430]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 258) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 280) = a1 + 288;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = 1065353216;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::~HDStatisticsCombined(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 496);
  if (v2)
  {
    *(a1 + 504) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 448);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 408);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 368);
  v2 = *(a1 + 344);
  if (v2)
  {
    *(a1 + 352) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 304);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 288));
  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  objc_destroyWeak((a1 + 88));
  v6 = *(a1 + 64);
  if (v6)
  {
    *(a1 + 72) = v6;
    operator delete(v6);
  }

  return a1;
}

void *HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsRelative(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,0>(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_configureForStartTime(uint64_t a1)
{
  v28 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v28];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v23 = 1;
  }

  v22 = *(a1 + 56);
  v24 = *(a1 + 24) & 1;
  if (v27 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v27, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v26, *(a1 + 656));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v17);
  *(a1 + 640) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 62), a2 + 31);
  v4 = a2[32].n128_u64[1];
  a2[32].n128_u64[1] = 0;
  v5 = a1[65];
  a1[65] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  *(a1 + 178) = *(a2 + 178);
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  v12 = *(a2 + 200);
  *(a1 + 208) = 0;
  *(a1 + 200) = v12;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 208), *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 4);
  *(a1 + 232) = *(a2 + 232);
  v13 = *(a2 + 256);
  v14 = *(a2 + 272);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = v13;
  v15 = (a1 + 288);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 272) = v14;
  *(a1 + 280) = a1 + 288;
  v16 = *(a2 + 280);
  if (v16 != (a2 + 288))
  {
    do
    {
      v17 = *v15;
      v18 = (a1 + 288);
      if (*(a1 + 280) == v15)
      {
        goto LABEL_11;
      }

      v19 = *v15;
      v20 = (a1 + 288);
      if (v17)
      {
        do
        {
          v18 = v19;
          v19 = v19[1];
        }

        while (v19);
      }

      else
      {
        do
        {
          v18 = v20[2];
          v21 = *v18 == v20;
          v20 = v18;
        }

        while (v21);
      }

      v22 = v16[4];
      if (v18[4] < v22)
      {
LABEL_11:
        if (v17)
        {
          v23 = v18 + 1;
        }

        else
        {
          v23 = (a1 + 288);
        }

        if (!*v23)
        {
LABEL_22:
          operator new();
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_22;
        }

        while (1)
        {
          while (1)
          {
            v24 = v17;
            v25 = v17[4];
            if (v25 <= v22)
            {
              break;
            }

            v17 = *v24;
            if (!*v24)
            {
              goto LABEL_22;
            }
          }

          if (v25 >= v22)
          {
            break;
          }

          v17 = v24[1];
          if (!v17)
          {
            goto LABEL_22;
          }
        }
      }

      v26 = v16[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v16[2];
          v21 = *v27 == v16;
          v16 = v27;
        }

        while (!v21);
      }

      v16 = v27;
    }

    while (v27 != (a2 + 288));
  }

  std::unordered_set<long long>::unordered_set(a1 + 304, a2 + 304);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 344), *(a2 + 344), *(a2 + 352), (*(a2 + 352) - *(a2 + 344)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 368, a2 + 368);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 408, a2 + 408);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 448, a2 + 448);
  return a1;
}

void sub_228F6F820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void **a10, void **a11)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v11 + 408);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 368);
  v14 = *(v11 + 344);
  if (v14)
  {
    *(v11 + 352) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 304);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::destroy(*v12);
  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsRelative(a9);
  v15 = *a10;
  if (*a10)
  {
    *(v11 + 104) = v15;
    operator delete(v15);
  }

  objc_destroyWeak((v11 + 88));
  v16 = *a11;
  if (*a11)
  {
    *(v11 + 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_228F6F974(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = *(a2 + 120);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 128, (a2 + 128));
  *(a1 + 152) = *(a2 + 152);
  v10 = *(a2 + 160);
  v11 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v10;
  *(a1 + 176) = v11;
  *(a1 + 200) = *(a2 + 200);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 208, (a2 + 208));
  *(a1 + 232) = *(a2 + 232);
  v12 = *(a2 + 240);
  v13 = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 240) = v12;
  *(a1 + 256) = v13;
  v14 = a1 + 288;
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 288));
  *(a1 + 280) = *(a2 + 280);
  v15 = *(a2 + 288);
  v16 = *(a2 + 296);
  *(a1 + 288) = v15;
  *(a1 + 296) = v16;
  if (v16)
  {
    *(v15 + 16) = v14;
    *(a2 + 280) = a2 + 288;
    *(a2 + 288) = 0;
    *(a2 + 296) = 0;
  }

  else
  {
    *(a1 + 280) = v14;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 304, (a2 + 304));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 344, (a2 + 344));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 368, (a2 + 368));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 408, (a2 + 408));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 448, (a2 + 448));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 5;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v7 = [v5 initWithTimeIntervalSinceReferenceDate:a2[v6]];
  v22 = a2;
  if (a2[1] == 1.79769313e308)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a2[6]];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a2[1]];
  }

  v9 = v8;
  v10 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 16);
    if ([v11 shouldUseUnderlyingTypeForStatistics])
    {
      v12 = [v11 underlyingSampleType];

      v10 = v12;
    }
  }

  v13 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v10 startDate:v7 endDate:v9];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(v22 + 43);
      v17 = *(v22 + 44);
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = objc_loadWeakRetained((a1 + 48));
        v20 = [v19 sourceForSourceID:v18];

        if (v20)
        {
          if (([v15 containsObject:v20] & 1) == 0)
          {
            [v15 addObject:v20];
          }
        }

        ++v16;
      }

      v21 = objc_msgSend_copy(v15);
      [v13 _setSources:v21];
    }
  }

  v23[0] = &unk_283BF0318;
  v23[3] = v23;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void sub_228F7070C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);

  v47 = *(v45 - 200);
  if (v47)
  {
    *(v45 - 192) = v47;
    operator delete(v47);
  }

  std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](&a40);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](&a36);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 328);
  v2 = *(a1 + 344);
  if (v1 != (*(a1 + 352) - v2) >> 3)
  {
    *(a1 + 352) = v2;
    std::vector<long long>::reserve((a1 + 344), v1);
    for (i = *(a1 + 320); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 344, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 344];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v70 = (a1 + 288);
    while (1)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_88;
      }

      v9 = a2;
      v10 = a2;
      v11 = v5;
      v12 = *(a1 + 96);
      if (v6 != v7)
      {
        do
        {
          v13 = v12->n128_f64[1];
          v14 = v12[1].n128_f64[0];
          if (v13 > v11 && v13 < v10)
          {
            v10 = v12->n128_f64[1];
          }

          if (v14 > v5)
          {
            v16 = v12[1].n128_f64[0];
          }

          else
          {
            v16 = v9;
          }

          if (v14 < v9)
          {
            v11 = v5;
            v9 = v16;
          }

          v12 += 3;
        }

        while (v12 != v7);
      }

      if (v9 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      v18 = *(a1 + 16);
      if (v18 > 0.0)
      {
        v19 = v18 * floor(v17 / v18);
        v20 = v18 * floor((v18 + v5) / v18);
        if (v19 >= v20)
        {
          v17 = v19;
        }

        else
        {
          v17 = v20;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v6 != v7)
      {
        if (v8 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v73.var0 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, &v73, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v71 = 0;
      }

      if (v6 != v7)
      {
        v48 = 0;
        v49 = 0;
        v50 = v6;
        while (1)
        {
          v51 = *(v50 + 1);
          *&v73.var0 = *v50;
          *&v73.var2 = v51;
          *&v73.var4 = v50[4];
          if (v73.var4 && v73.var1 <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v50);
LABEL_118:
          v50 += 6;
          if (v50 == v7)
          {
            goto LABEL_119;
          }
        }

        var2 = v73.var2;
        if (v73.var2 > v17)
        {
          var2 = v17;
        }

        v73.var2 = var2;
        for (i = *(a1 + 64); i != *(a1 + 72) && v73.var1 >= *i; i += 2)
        {
          if (v73.var1 < i[1])
          {
            goto LABEL_118;
          }
        }

        v54 = *(v50 + 42);
        v55 = *(v50 + 41);
        if (v49)
        {
          var3 = v73.var3;
          if (v48 == v73.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v73, v54 ^ 1);
          }
        }

        else
        {
          HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v73, v54 ^ 1);
          var3 = v73.var3;
          v48 = v73.var3;
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_117;
        }

        v57 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, var3);
        if (!v57)
        {
          goto LABEL_116;
        }

        v58 = [v71 objectForKeyedSubscript:v57];
        v59 = v58;
        if (v58)
        {
          if ([v58 longLongValue] != var3 && *(a1 + 24) != 1)
          {
LABEL_115:

LABEL_116:
LABEL_117:
            v49 = 1;
            goto LABEL_118;
          }
        }

        else
        {
          v60 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
          [v71 setObject:v60 forKeyedSubscript:v57];
        }

        v61 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, var3);
        v62 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v61);
        HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample(v62, &v73, v55 ^ 1);
        goto LABEL_115;
      }

LABEL_119:
      *(a1 + 232) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 208), v17) + *(a1 + 232);
      v63 = *(a1 + 280);
      if (v63 != v70)
      {
        do
        {
          *(v63 + 19) = HKIntervalMask<double>::removeIntervalsBefore(v63 + 16, v17) + *(v63 + 19);
          v64 = v63[1];
          if (v64)
          {
            do
            {
              v65 = v64;
              v64 = *v64;
            }

            while (v64);
          }

          else
          {
            do
            {
              v65 = v63[2];
              v66 = *v65 == v63;
              v63 = v65;
            }

            while (!v66);
          }

          v63 = v65;
        }

        while (v65 != v70);
      }

      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_128:
      v67 = *(a1 + 56);
      if (v67 == v5)
      {
        v68 = [MEMORY[0x277CCA890] currentHandler];
        v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles, HDStatisticsTimeInterval>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles, HDStatisticsTimeInterval>>]"}];
        [v68 handleFailureInFunction:v69 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v67 = *(a1 + 56);
      }

      v5 = v67;
      if (v67 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 42);
    v25 = *(v6 + 41);
    v26 = *(v6 + 40);
    v27 = v6[1];
    v28 = v6[2];
    v29 = *(v6 + 3);
    v30 = *(v6 + 33);
    if (v28 <= a2)
    {
      v31 = v6[2];
    }

    else
    {
      v31 = a2;
    }

    if (v27 < a2)
    {
      v32 = *(v6 + 32);
    }

    else
    {
      v32 = 0;
    }

    if (v27 < a2)
    {
      v33 = 0;
    }

    else
    {
      v33 = *(v6 + 33);
    }

    if (v27 < a2)
    {
      v34 = 0;
    }

    else
    {
      v31 = v6[2];
      v34 = *(v6 + 3);
    }

    if (v27 < a2)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v6[2];
    }

    if (v27 < a2)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *v6;
    }

    if (v27 < a2)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v6[1];
    }

    if (v27 < a2)
    {
      v38 = 0;
    }

    else
    {
      v38 = *(v6 + 32);
    }

    if (v6[4])
    {
      v28 = v31;
    }

    else
    {
      v32 = *(v6 + 32);
      v33 = 0;
      v34 = 0;
    }

    if (v6[4])
    {
      v39 = v35;
    }

    else
    {
      v39 = 0.0;
    }

    if (v6[4])
    {
      v40 = v36;
    }

    else
    {
      v40 = 0.0;
    }

    if (v6[4])
    {
      v41 = v37;
    }

    else
    {
      v41 = 0.0;
    }

    if (v6[4])
    {
      v42 = v38;
    }

    else
    {
      v42 = 0;
    }

    v73.var0 = *v6;
    v73.var1 = v27;
    v73.var2 = v28;
    v73.var3 = v29;
    v73.var4 = v32;
    v73.var5 = v30;
    *(&v73.var5 + 1) = *(v6 + 34);
    *(&v73.var5 + 5) = *(v6 + 19);
    *&v74 = v40;
    *(&v74 + 1) = v41;
    *&v75 = v39;
    *(&v75 + 1) = v34;
    LOBYTE(v76) = v42;
    HIBYTE(v76) = v33;
    for (j = *(a1 + 64); j != *(a1 + 72) && v27 >= *j; j += 2)
    {
      if (v27 < j[1])
      {
        goto LABEL_85;
      }
    }

    if (v32)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v73, v24 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v44 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v29);
        v45 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v44);
        HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample(v45, &v73, v25 ^ 1);
      }

      v26 = 1;
      LOBYTE(v25) = 1;
      LOBYTE(v24) = 1;
    }

LABEL_85:
    if (v42)
    {
      LOWORD(v72) = v76;
      v46 = v75;
      v47 = *(a1 + 96);
      *v47 = v74;
      *(v47 + 16) = v46;
      *(v47 + 32) = v72;
      *(v47 + 40) = v26;
      *(v47 + 41) = v25;
      *(v47 + 42) = v24;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_88:
    *(a1 + 56) = a2;
    goto LABEL_128;
  }
}

uint64_t *HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample(uint64_t *result, HDRawQuantitySample *a2, int a3)
{
  v5 = result;
  if (a2->var0 == 1.79769313e308)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (a2->var0 != -1.79769313e308);
  }

  v7 = *result;
  if (!v6)
  {
    if (v7)
    {
      return result;
    }

    v9 = result[1];
    v10 = result[2];
    ++result;
    if (v10 != v9)
    {
      return result;
    }

    HDStatisticsPercentiles::addSample(result, a2);
    v11 = v5 + 10;
    goto LABEL_23;
  }

  if (v6 == 1)
  {
    if (v7)
    {
      return result;
    }

    v8 = 1;
LABEL_14:
    *result = v8;
    v15 = result + 1;
    v14 = result[1];
    if (v14)
    {
      v5[2] = v14;
      operator delete(v14);
    }

    v5[10] = 0;
    v17 = v5 + 11;
    v16 = v5[11];
    *v15 = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 36) = 0;
    if (v16)
    {
      v5[12] = v16;
      operator delete(v16);
      v18 = *(v5 + 72);
      *v17 = 0u;
      *(v5 + 13) = 0u;
      if (v18 && *(v5 + 6) > *(v5 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v17 = 0uLL;
      *(v5 + 13) = 0uLL;
    }

    *(v5 + 5) = *(v5 + 15);
    *(v5 + 7) = *(v5 + 17);
    *(v5 + 36) = *(v5 + 76);
LABEL_22:
    HDStatisticsPercentiles::addSample((v5 + 1), a2);
    v11 = v5 + 10;
LABEL_23:
    v12 = a2;
    v13 = a3;
    goto LABEL_24;
  }

  if (v7 != 2)
  {
    v8 = 2;
    goto LABEL_14;
  }

  HDStatisticsPercentiles::addSample((result + 1), a2);
  v11 = v5 + 10;
  v12 = a2;
  v13 = 1;
LABEL_24:

  return HDStatisticsTimeInterval::addSample(v11, v12, v13);
}

uint64_t **HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 288);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 288);
  v5 = (a1 + 288);
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == v4 || v5[4] > a2)
  {
LABEL_8:
    v8 = &v7;
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 280), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 280), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 368), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 408), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 408), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 448), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9}];

      if (WeakRetained)
      {
        v10 = &v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 448), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

__n128 HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 120);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 8), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  v4 = *(a2 + 152);
  *(a1 + 88) = 0;
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 168);
  *(a1 + 58) = *(a2 + 178);
  v5 = *(a2 + 208);
  *(a1 + 80) = *(a2 + 200);
  v6 = *(a2 + 216);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 88), v5, v6, (v6 - v5) >> 4);
  *(a1 + 112) = *(a2 + 232);
  result = *(a2 + 240);
  v8 = *(a2 + 256);
  *(a1 + 120) = result;
  *(a1 + 136) = v8;
  *(a1 + 152) = *(a2 + 272);
  return result;
}

void sub_228F7175C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  v2 = *(a2 + 280);
  v29 = (a2 + 288);
  if (v2 == (a2 + 288))
  {
    return;
  }

  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_25;
    }

    v6 = [v4 hash];
    v7 = v6;
    v8 = a1[1];
    if (!*&v8)
    {
      goto LABEL_20;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v31 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (v6 >= *&v8)
      {
        v10 = v6 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & v6;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v31 > 1)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_20;
      }

LABEL_19:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v14 = v12[2];
    v15 = v5;
    v16 = v5;
    v17 = v16;
    if (v14 != v16)
    {
      v18 = [v14 isEqualToString:v16];

      v5 = v15;
      if (v18)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v5 = v15;
LABEL_21:
    *(v12 + 6) = *(v2 + 10);
    if (v12 + 3 == v2 + 5)
    {
      v22 = *(v2 + 9);
      v23 = *(v2 + 11);
      *(v12 + 82) = *(v2 + 98);
      *(v12 + 9) = v23;
      *(v12 + 7) = v22;
      v12[13] = v2[15];
    }

    else
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v12 + 4, v2[6], v2[7], (v2[7] - v2[6]) >> 3);
      v19 = *(v2 + 9);
      v20 = *(v2 + 11);
      *(v12 + 82) = *(v2 + 98);
      *(v12 + 9) = v20;
      *(v12 + 7) = v19;
      v21 = v2[16];
      v12[13] = v2[15];
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 14, v21, v2[17], (v2[17] - v21) >> 4);
    }

    v12[17] = v2[19];
    v24 = *(v2 + 10);
    v25 = *(v2 + 11);
    *(v12 + 88) = *(v2 + 96);
    *(v12 + 9) = v24;
    *(v12 + 10) = v25;

LABEL_25:
    v26 = v2[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = v2[2];
        v28 = *v27 == v2;
        v2 = v27;
      }

      while (!v28);
    }

    v2 = v27;
  }

  while (v27 != v29);
}

void sub_228F71D28(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,void *>>>::operator()[abi:ne200100](1, v3);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 32);
    if (v4)
    {
      *(a2 + 40) = v4;
      operator delete(v4);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 14);
      if (v4)
      {
        *(v2 + 15) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 4);
      if (v5)
      {
        *(v2 + 5) = v5;
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF01F8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF01F8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 72;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0288;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0288;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 640) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v8 = *(a2 + 8);
  if (v8 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v8 end:*(a2 + 16)];
    v10 = (*(*a1 + 128))(a1, v9, a4);
  }

  return v10;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t a1, double a2)
{
  if (*(a1 + 128) <= a2)
  {
    if (*(a1 + 616) != *(a1 + 608))
    {
      [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
    }

    v5 = 0;
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a2 + 32);
  if ((v4 & 1) != 0 && (v5 = *(a2 + 1), v5 >= *(a1 + 8)))
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    v8 = a2[3];
    v9 = *(a2 + 33);
    *(&v42 + 1) = a2[1];
    *&v43 = v7;
    *(&v43 + 1) = v8;
    LOBYTE(v44) = v4;
    HIBYTE(v44) = v9;
    *&v42 = v6;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v10 = *(a1 + 16);
    if (*(a1 + 36))
    {
      v11 = v5 < v10;
    }

    else
    {
      v11 = v5 <= v10;
    }

    if (v11)
    {
      if (v7 <= v10)
      {
        v13 = v7;
      }

      else
      {
        v13 = *(a1 + 16);
      }

      *&v43 = v13;
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 312), v8, &v43 + 1);
      v14 = *(a1 + 112);
      if (v14 == *(a1 + 104) && (*(a1 + 144) - *(a1 + 136)) <= 0)
      {
        v17 = *(a1 + 8);
        v18 = *(a1 + 16);
        if (v5 >= v17)
        {
          v17 = v5;
        }

        if (v18 >= v13)
        {
          v18 = v13;
        }

        *(a1 + 48) = v17;
        *(a1 + 56) = v18;
      }

      else
      {
        if (v5 < *(a1 + 48))
        {
          v15 = *(a1 + 8);
          if (v5 >= v15)
          {
            v15 = v5;
          }

          *(a1 + 48) = v15;
        }

        if (v13 > *(a1 + 56))
        {
          v16 = *(a1 + 16);
          if (v16 >= v13)
          {
            v16 = v13;
          }

          *(a1 + 56) = v16;
        }
      }

      if (*(a1 + 32) == 1)
      {
        v19 = *(a1 + 64);
        if (v5 < v19)
        {
          v19 = v5;
        }

        *(a1 + 64) = v19;
      }

      if (a3 && v5 < *(a1 + 16))
      {
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 8, v5);
        v14 = *(a1 + 112);
      }

      v39 = v42;
      v40 = v43;
      LOWORD(v41) = v44;
      v20 = *(a1 + 120);
      if (v14 >= v20)
      {
        v23 = *(a1 + 104);
        v24 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v23) >> 4);
        v25 = v24 + 1;
        if (v24 + 1 > 0x555555555555555)
        {
          std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
        }

        v26 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 4);
        if (2 * v26 > v25)
        {
          v25 = 2 * v26;
        }

        if (v26 >= 0x2AAAAAAAAAAAAAALL)
        {
          v27 = 0x555555555555555;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v27);
        }

        v28 = 48 * v24;
        v29 = v40;
        *v28 = v39;
        *(v28 + 16) = v29;
        *(v28 + 32) = v41;
        *(v28 + 40) = 0;
        *(v28 + 42) = 0;
        v22 = 48 * v24 + 48;
        v30 = *(a1 + 104);
        v31 = *(a1 + 112) - v30;
        v32 = 48 * v24 - v31;
        memcpy((v28 - v31), v30, v31);
        v33 = *(a1 + 104);
        *(a1 + 104) = v32;
        *(a1 + 112) = v22;
        *(a1 + 120) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        v21 = v40;
        *v14 = v39;
        *(v14 + 16) = v21;
        *(v14 + 32) = v41;
        *(v14 + 40) = 0;
        *(v14 + 42) = 0;
        v22 = v14 + 48;
      }

      *(a1 + 112) = v22;
      if (!*(a1 + 280) || *(a1 + 256) <= v5)
      {
        *(a1 + 248) = v6;
        *(a1 + 256) = v5;
        *(a1 + 264) = v7;
        *(a1 + 272) = v8;
        *(a1 + 280) = v4;
        *(a1 + 281) = v9;
        if (!*(a1 + 200) || *(a1 + 176) <= v5)
        {
          *(a1 + 168) = v6;
          *(a1 + 176) = v5;
          *(a1 + 184) = v7;
          *(a1 + 192) = v8;
          *(a1 + 200) = v4;
          *(a1 + 201) = v9;
        }
      }

      if (*(a1 + 33) == 1)
      {
        v34 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
        v35 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsForSource(a1 + 8, v34);
        if (!*(v35 + 152) || *(v35 + 16) <= v5)
        {
          v35[15] = v6;
          *(v35 + 16) = v5;
          *(v35 + 17) = v7;
          v35[18] = v8;
          *(v35 + 152) = v4;
          *(v35 + 153) = v9;
          if (!*(v35 + 72) || *(v35 + 6) <= v5)
          {
            v35[5] = v6;
            *(v35 + 6) = v5;
            *(v35 + 7) = v7;
            v35[8] = v8;
            *(v35 + 72) = v4;
            *(v35 + 73) = v9;
          }
        }
      }
    }

    else
    {
      v36 = v42;
      v37 = v43;
      v38 = v44;
      if (v5 >= v10)
      {
        v10 = v5;
      }

      *(&v36 + 1) = v10;
    }
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  if (v38 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 496, &v36);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 642) == 1)
  {
    *(a1 + 644) = 1;
  }

  else
  {
    *(a1 + 644) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 496), *(a1 + 504), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 504) - *(a1 + 496)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F72FA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 520), *(a1 + 40));
  v9 = *(a1 + 136);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  *(a1 + 128) = 0;
  if (v9)
  {
    *(a1 + 144) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 216);
  *(a1 + 208) = 0;
  v11 = 0uLL;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  if (v10)
  {
    *(a1 + 224) = v10;
    operator delete(v10);
    v11 = 0uLL;
  }

  *(a1 + 280) = 0;
  *(a1 + 248) = v11;
  *(a1 + 264) = v11;
  *(a1 + 216) = v11;
  *(a1 + 232) = v11;
  if (*(a1 + 304))
  {
    v12 = *(a1 + 288);
    v13 = *(a1 + 296);
    *(a1 + 288) = a1 + 296;
    *(v13 + 16) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    if (v12[1])
    {
      v14 = v12[1];
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = v14[2];
      if (v15)
      {
        v16 = *v15;
        if (*v15 == v14)
        {
          *v15 = 0;
          while (1)
          {
            v18 = v15[1];
            if (!v18)
            {
              break;
            }

            do
            {
              v15 = v18;
              v18 = *v18;
            }

            while (v18);
          }
        }

        else
        {
          for (v15[1] = 0; v16; v16 = v15[1])
          {
            do
            {
              v15 = v16;
              v16 = *v16;
            }

            while (v16);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::destroy(v14);
        for (i = v15[2]; i; i = i[2])
        {
          v15 = i;
        }

        v14 = v15;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>>::destroy(v14);
  }

  objc_storeStrong(v8, *(a1 + 520));
  *(a1 + 504) = *(a1 + 496);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 644) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 644) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F73228(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 640) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228F73678(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40E29C3E6ELL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32) || ([v10 endDate], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "startDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "hk_isBeforeOrEqualToDate:", v4), v4, v3, (v5 & 1) == 0) && (objc_msgSend(v10, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "endDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "hk_isAfterOrEqualToDate:", v7), v7, v6, (v8 & 1) == 0))
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v10);
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v19[3] = &__block_descriptor_40_e8_v16__0d8l;
  v19[4] = v21;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v20 mergeHandler:v19];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40) && *(v15 + 120) < v17)
      {
        [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
        objc_claimAutoreleasedReturnValue();
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, (v15 + 120));
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  if (*(a1 + 32) <= a6)
  {
    v9 = 1;
  }

  else
  {
    a2 = 0;
    v9 = 0;
    a7 = 0.0;
    a5 = 0.0;
    a6 = 0.0;
  }

  v18 = v7;
  v19 = v8;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a2;
  v16 = v9;
  v17 = 0;
  if (*(a1 + 56))
  {
    if (v9)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  if (v9)
  {
    v11 = *(a1 + 40);
    if (a6 < v11)
    {
      if (a7 <= v11)
      {
        v11 = a7;
      }

      v13 = a6;
      v14 = v11;
      v16 = v9;
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 640) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::archive(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283BE6208;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::archive(&v3, (a2 + 8));
}

void sub_228F73ED4()
{
  statistics::Statistics::operator=(*(v0 + 128), v4);
  statistics::Statistics::~Statistics(v4);
  v3 = *v1;
  *(v0 + 204) |= 0x100u;
  *(v0 + 136) = v3;
  statistics::Statistics::makeMostRecentDatum(v0);
  v4[0] = &unk_283BEB0A8;
  v8 = 127;
  v5 = vextq_s8(*(v1 + 30), *(v1 + 30), 8uLL);
  v4[1] = *(v1 + 17);
  v4[2] = *(v1 + 18);
  v6 = 0;
  v7 = 0;
  statistics::RawQuantitySample::operator=(*v2, v4);
  PB::Base::~Base(v4);
}

void HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::archive(uint64_t a1, HDStatisticsPercentiles *a2)
{
  *a1 = &unk_283BE6208;
  *(a1 + 8) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 16) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsPercentiles::archive(a2);
}

void sub_228F74004()
{
  statistics::Statistics::operator=(*(v0 + 128), v3);
  statistics::Statistics::~Statistics(v3);
  statistics::Statistics::makeAuxiliaryStatistics(v0);
  HDStatisticsTimeInterval::archive((v1 + 72), v3);
  statistics::Statistics::operator=(*v2, v3);
  statistics::Statistics::~Statistics(v3);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 138) = 0u;
  v5 = a2[16];
  if (v5)
  {
    HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::unarchive(&v13, v5);
    v6 = v19;
    v7 = v15;
    v8 = v14;
    *(a1 + 8) = v13;
    *(a1 + 24) = v8;
    v14 = 0;
    v13 = 0uLL;
    *(a1 + 32) = v7;
    v9 = v17;
    *(a1 + 40) = v16;
    *(a1 + 56) = v9;
    *(a1 + 72) = v18;
    *(a1 + 80) = v6;
    result = v22;
    v10 = v21;
    *(a1 + 88) = v20;
    *(a1 + 104) = v10;
    *(a1 + 112) = result;
  }

  *a1 = a2[17];
  v11 = a2[14];
  if (v11)
  {
    result = *(v11 + 8);
    v12 = *(v11 + 16);
    *(a1 + 120) = vextq_s8(*(v11 + 24), *(v11 + 24), 8uLL);
    *(a1 + 136) = result;
    *(a1 + 144) = v12;
    *(a1 + 152) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::unarchive(uint64_t a1, const statistics::Statistics *a2)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    HDStatisticsPercentiles::unarchive(v4, a2);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    HDStatisticsTimeInterval::unarchive(v5, &v7);
    *(a1 + 72) = v7;
    result = *&v10;
    v6 = v9;
    *(a1 + 80) = v8;
    *(a1 + 96) = v6;
    *(a1 + 104) = result;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF03C8;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 1;
  *(a1 + 594) = 0;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF03C8;
  v2 = *(a1 + 624);
  if (v2)
  {
    *(a1 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 560);
  if (v3)
  {
    *(a1 + 568) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 592) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 600) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 608), a2);
  v7 = a2;
  v4 = *(a1 + 608);
  v5 = *(a1 + 584);
  *(a1 + 584) = v4;
  v6 = v4;

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsConfiguration(a1 + 120, *(a1 + 584));
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = *(a1 + 224) == *(a1 + 216) && (*(a1 + 248) - *(a1 + 240)) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), v7, v8, (v8 - v7) >> 4);
  }

  if (v9)
  {
    return 1;
  }

  v11 = *(*a1 + 128);

  return v11(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 592) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v4);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228F74728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 594) == 1)
    {
      if (*(a1 + 593))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 595) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 624, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 594) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 594) = 1;
  v60 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v59 = v6;
  if (*(a1 + 593))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 616);
  if (!v9)
  {
    v8 = 0;
    v61 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v61 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_1002];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = *(a1 + 616);
  v11 = [v10 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v63;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v63 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v62 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v61 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v62 objects:v66 count:16];
  }

  while (v11);

  if (v12)
  {
    [v61 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 616);
  *(a1 + 616) = 0;

  *(a1 + 593) = 0;
  if (v8)
  {
    v28 = *(a1 + 624);
    *(a1 + 640) = 0;
    *(a1 + 632) = 0;
    *(a1 + 624) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v61 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 624);
      v39 = *(a1 + 632);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 632);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 632) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 624);
  v29 = *(a1 + 632);
  *(a1 + 640) = 0;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
  if ([v61 count])
  {
LABEL_46:
    v44 = v61;
    if (v44)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v62 objects:v66 count:16];
      if (v46)
      {
        v47 = *v63;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v63 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v62 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v60);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v62 objects:v66 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v60))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v60;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v60;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40) && *(a1 + 568) != *(a1 + 560))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 594) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 596) == 1)
    {
      *(a1 + 596) = 0;
      v6 = v59;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v59;
LABEL_80:
  *(a1 + 594) = 0;
LABEL_81:

  return v7;
}

void sub_228F74F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 594) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 594))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 594) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 616);
    *(a1 + 616) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 593) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 593) & 1) == 0)
  {
    v8 = *(a1 + 616);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 616);
      *(a1 + 616) = v9;

      v8 = *(a1 + 616);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 592) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 592) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 592) forKey:@"needs_config"];
  v3;
  v23[0] = &unk_283BF1A08;
  v23[1] = 0;
  v24 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v24) = 1;
  v23[2] = v4;
  memset(&v23[3], 0, 24);
  statistics::StatisticsEngine::makeCurrentBucket(v23);
  v9 = &unk_283BE6258;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v22 = 511;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v20 = *(a1 + 144);
  v21 = *(a1 + 145);
  v19 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v10 = v5;
  v11 = v7;
  v7.i64[0] = *(a1 + 176);
  v15 = v6;
  v16 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v25[0] = &unk_283BEB0A8;
    v30 = 127;
    v26 = vextq_s8(*v8, *v8, 8uLL);
    v25[1] = v8[1].i64[0];
    v25[2] = v8[1].i64[1];
    v29 = 0;
    v28 = v8[2].i8[9];
    v27 = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>(v17, v25);
  }

  statistics::StatisticsBucket::makeStatistics(&v9);
  HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::archive(v25, (a1 + 240));
}

void sub_228F757DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v31 = a2;
  *(k + 592) = [v31 decodeBoolForKey:@"needs_config"];
  v3 = v31;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v35.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v36 = 0u;
  v37 = 0u;
  v71 = 0;
  PB::Reader::Reader(v70, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v71]);
  v63 = &unk_283BF1A08;
  v64 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v69 = 0;
  statistics::StatisticsEngine::readFrom(&v63, v70);
  v35.n128_u64[0] = v65;
  if (v64)
  {
    v33 = v3;
    v41 = 0;
    memset(v44, 0, sizeof(v44));
    memset(&v45[6], 0, 32);
    v48[1] = 0;
    v48[0] = 0;
    memset(v45, 0, 90);
    v46 = 0;
    v47 = v48;
    v49 = 0u;
    v50 = 0u;
    v51 = 1065353216;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    v56 = 1065353216;
    v57 = 0u;
    v58 = 0u;
    v59 = 1065353216;
    v60 = 0u;
    v61 = 0u;
    v62 = 1065353216;
    v38 = vextq_s8(*(v64 + 8), *(v64 + 8), 8uLL);
    v4 = *(v64 + 72);
    v39 = *(v64 + 64);
    LOWORD(v40) = *(v64 + 185);
    v42 = vextq_s8(*(v64 + 24), *(v64 + 24), 8uLL);
    v43 = v4;
    v5 = *(v64 + 80);
    v6 = *(v64 + 88);
    for (i = v64; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v75) = 1;
      BYTE8(v75) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v72 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      v73 = v8;
      v74 = v9;
      BYTE9(v75) = *(v7 + 41);
      BYTE10(v75) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v45, v72.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::unarchive(&v72, v10);
      if (*(&v45[1] + 1))
      {
        *&v45[2] = *(&v45[1] + 1);
        operator delete(*(&v45[1] + 1));
      }

      *(&v45[1] + 8) = v72;
      *&v45[3] = v74;
      *(&v45[3] + 8) = v75;
      *(&v45[2] + 1) = v73;
      v73 = 0;
      v72 = 0uLL;
      *(&v45[4] + 8) = v76;
      WORD4(v45[5]) = v77;
      *&v45[6] = v78;
      v11 = *(&v45[6] + 1);
      if (*(&v45[6] + 1))
      {
        *&v45[7] = *(&v45[6] + 1);
        operator delete(*(&v45[6] + 1));
        v11 = v72.i64[0];
      }

      *(&v45[6] + 8) = v79;
      *(&v45[7] + 1) = v80;
      v80 = 0;
      v79 = 0uLL;
      v46 = v81;
      if (v11)
      {
        v72.i64[1] = v11;
        operator delete(v11);
      }
    }

    v32 = k;
    v12 = i[17];
    for (j = i[18]; v12 != j; ++v12)
    {
      v14 = *v12;
      HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::unarchive(&v72, *v12);
      v15 = *(v14 + 18);
      v16 = v48[0];
      if (!v48[0])
      {
LABEL_18:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v18 <= v15)
          {
            break;
          }

          v16 = *v17;
          if (!*v17)
          {
            goto LABEL_18;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      v19 = v17[5];
      if (v19)
      {
        v17[6] = v19;
        operator delete(v19);
        v17[5] = 0;
        v17[6] = 0;
        v17[7] = 0;
      }

      *(v17 + 5) = v72;
      v17[7] = v73;
      v17[8] = v74;
      v20 = v76;
      *(v17 + 9) = v75;
      v73 = 0;
      v72 = 0uLL;
      *(v17 + 11) = v20;
      *(v17 + 52) = v77;
      v17[14] = v78;
      v21 = v17[15];
      if (v21)
      {
        v17[16] = v21;
        operator delete(v21);
        v17[15] = 0;
        v17[16] = 0;
        v17[17] = 0;
        v21 = v72.i64[0];
      }

      *(v17 + 15) = v79;
      v17[17] = v80;
      v80 = 0;
      v79 = 0uLL;
      v17[18] = v81;
      if (v21)
      {
        v72.i64[1] = v21;
        operator delete(v21);
      }
    }

    v22 = i[5];
    v23 = i[6];
    for (k = v32; v22 != v23; v22 += 8)
    {
      v25 = *(*v22 + 8);
      v24 = *(*v22 + 16);
      if (v25 >= v24)
      {
        v26 = *(*v22 + 16);
      }

      else
      {
        v26 = *(*v22 + 8);
      }

      if (v24 < v25)
      {
        v24 = *(*v22 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v44, v26, v24);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=(&v35.n128_i64[1], &v38);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v38);
    v3 = v33;
  }

  v27 = v66;
  for (m = v67; v27 != m; v27 += 8)
  {
    v29 = *(*v27 + 8);
    v30 = *(*v27 + 16);
    v38 = vextq_s8(*(*v27 + 24), *(*v27 + 24), 8uLL);
    v39 = v29;
    v40 = v30;
    LOWORD(v41) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v36, v38.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v63);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=((k + 112), &v35);
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v35.n128_i64[1]);
}

void sub_228F75DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v13 + 400);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a9);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 320);
  v15 = STACK[0x338];
  if (STACK[0x338])
  {
    STACK[0x340] = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(STACK[0x300]);
  HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::~HDStatisticsCombined(v13 + 120);
  v16 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v16;
    operator delete(v16);
  }

  objc_destroyWeak((v13 + 88));
  v17 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v17;
    operator delete(v17);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3D0]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 344) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    *(a1 + 456) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 400);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 360);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 320);
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 240));
  v3 = *(a1 + 200);
  if (v3)
  {
    *(a1 + 208) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  objc_destroyWeak((a1 + 88));
  v6 = *(a1 + 64);
  if (v6)
  {
    *(a1 + 72) = v6;
    operator delete(v6);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,0>(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
{
  v27 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v27];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v23 = 1;
  }

  v22 = *(a1 + 56);
  v24 = *(a1 + 24) & 1;
  if (v26 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v26, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsConfiguration(v21, *(a1 + 608));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v27;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 592) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v21);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 32), a2);
  v4 = a2;
  HDStatisticsPercentiles::configure((a1 + 120), v4);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 56), a2 + 28);
  v4 = a2[29].n128_u64[1];
  a2[29].n128_u64[1] = 0;
  v5 = a1[59];
  a1[59] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  v12 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v12;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 200), *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 4);
  v13 = *(a2 + 224);
  *(a1 + 240) = 0;
  v14 = (a1 + 240);
  *(a1 + 224) = v13;
  *(a1 + 248) = 0;
  *(a1 + 232) = a1 + 240;
  v15 = *(a2 + 232);
  if (v15 != (a2 + 240))
  {
    do
    {
      v16 = *v14;
      v17 = (a1 + 240);
      if (*(a1 + 232) == v14)
      {
        goto LABEL_11;
      }

      v18 = *v14;
      v19 = (a1 + 240);
      if (v16)
      {
        do
        {
          v17 = v18;
          v18 = v18[1];
        }

        while (v18);
      }

      else
      {
        do
        {
          v17 = v19[2];
          v20 = *v17 == v19;
          v19 = v17;
        }

        while (v20);
      }

      v21 = v15[4];
      if (v17[4] < v21)
      {
LABEL_11:
        if (v16)
        {
          v22 = v17 + 1;
        }

        else
        {
          v22 = (a1 + 240);
        }

        if (!*v22)
        {
LABEL_22:
          operator new();
        }
      }

      else
      {
        if (!v16)
        {
          goto LABEL_22;
        }

        while (1)
        {
          while (1)
          {
            v23 = v16;
            v24 = v16[4];
            if (v24 <= v21)
            {
              break;
            }

            v16 = *v23;
            if (!*v23)
            {
              goto LABEL_22;
            }
          }

          if (v24 >= v21)
          {
            break;
          }

          v16 = v23[1];
          if (!v16)
          {
            goto LABEL_22;
          }
        }
      }

      v25 = v15[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v15[2];
          v20 = *v26 == v15;
          v15 = v26;
        }

        while (!v20);
      }

      v15 = v26;
    }

    while (v26 != (a2 + 240));
  }

  std::unordered_set<long long>::unordered_set(a1 + 256, a2 + 256);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 296), *(a2 + 296), *(a2 + 304), (*(a2 + 304) - *(a2 + 296)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 320, a2 + 320);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 360, a2 + 360);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 400, a2 + 400);
  return a1;
}

void sub_228F7684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v12 + 360);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v12 + 320);
  v14 = *(v12 + 296);
  if (v14)
  {
    *(v12 + 304) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v12 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(*v11);
  HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::~HDStatisticsCombined(a9);
  v15 = *a10;
  if (*a10)
  {
    *(v12 + 104) = v15;
    operator delete(v15);
  }

  objc_destroyWeak((v12 + 88));
  v16 = *a11;
  if (*a11)
  {
    *(v12 + 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 120, (a2 + 120));
  *(a1 + 144) = *(a2 + 144);
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 192) = *(a2 + 192);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 200, (a2 + 200));
  v13 = a1 + 240;
  v12 = *(a1 + 240);
  *(a1 + 224) = *(a2 + 224);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(v12);
  *(a1 + 232) = *(a2 + 232);
  v15 = *(a2 + 240);
  v16 = *(a2 + 248);
  v14 = (a2 + 240);
  *(a1 + 240) = v15;
  *(a1 + 248) = v16;
  if (v16)
  {
    *(v15 + 16) = v13;
    *(a2 + 232) = v14;
    *v14 = 0;
    *(a2 + 248) = 0;
  }

  else
  {
    *(a1 + 232) = v13;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 256, (a2 + 256));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 296, (a2 + 296));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 360, (a2 + 360));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 400, (a2 + 400));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v7 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  if (*(a2 + 8) == 1.79769313e308)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v9 = v8;
  v10 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 16);
    if ([v11 shouldUseUnderlyingTypeForStatistics])
    {
      v12 = [v11 underlyingSampleType];

      v10 = v12;
    }
  }

  v13 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v10 startDate:v7 endDate:v9];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 296);
      v17 = *(a2 + 304);
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = objc_loadWeakRetained((a1 + 48));
        v20 = [v19 sourceForSourceID:v18];

        if (v20)
        {
          if (([v15 containsObject:v20] & 1) == 0)
          {
            [v15 addObject:v20];
          }
        }

        ++v16;
      }

      v21 = objc_msgSend_copy(v15);
      [v13 _setSources:v21];
    }
  }

  v22[0] = &unk_283BF05B8;
  v22[3] = v22;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v23, v22);
  v24 = 0;
  operator new();
}

void sub_228F7753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  v39 = *(v37 - 200);
  if (v39)
  {
    *(v37 - 192) = v39;
    operator delete(v39);
  }

  std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a32);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = *(a1 + 296);
  if (v1 != (*(a1 + 304) - v2) >> 3)
  {
    *(a1 + 304) = v2;
    std::vector<long long>::reserve((a1 + 296), v1);
    for (i = *(a1 + 272); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 296, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 296];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v72 = (a1 + 240);
    while (1)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_88;
      }

      v9 = a2;
      v10 = a2;
      v11 = v5;
      v12 = *(a1 + 96);
      if (v6 != v7)
      {
        do
        {
          v13 = v12->n128_f64[1];
          v14 = v12[1].n128_f64[0];
          if (v13 > v11 && v13 < v10)
          {
            v10 = v12->n128_f64[1];
          }

          if (v14 > v5)
          {
            v16 = v12[1].n128_f64[0];
          }

          else
          {
            v16 = v9;
          }

          if (v14 < v9)
          {
            v11 = v5;
            v9 = v16;
          }

          v12 += 3;
        }

        while (v12 != v7);
      }

      if (v9 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      v18 = *(a1 + 16);
      if (v18 > 0.0)
      {
        v19 = v18 * floor(v17 / v18);
        v20 = v18 * floor((v18 + v5) / v18);
        if (v19 >= v20)
        {
          v17 = v19;
        }

        else
        {
          v17 = v20;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v6 != v7)
      {
        if (v8 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v75.var0 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(v6, v7, &v75, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v73 = 0;
      }

      if (v6 != v7)
      {
        v48 = 0;
        v49 = 0;
        v50 = v6;
        while (1)
        {
          v51 = *(v50 + 1);
          *&v75.var0 = *v50;
          *&v75.var2 = v51;
          *&v75.var4 = v50[4];
          if (v75.var4 && v75.var1 <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v50);
LABEL_118:
          v50 += 6;
          if (v50 == v7)
          {
            goto LABEL_119;
          }
        }

        var2 = v75.var2;
        if (v75.var2 > v17)
        {
          var2 = v17;
        }

        v75.var2 = var2;
        for (i = *(a1 + 64); i != *(a1 + 72) && v75.var1 >= *i; i += 2)
        {
          if (v75.var1 < i[1])
          {
            goto LABEL_118;
          }
        }

        v54 = *(v50 + 42);
        v55 = *(v50 + 41);
        if (v49)
        {
          var3 = v75.var3;
          if (v48 == v75.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsPercentiles::addSample((a1 + 120), &v75);
            HDStatisticsTimeInterval::addSample((a1 + 192), &v75, v54 ^ 1);
          }
        }

        else
        {
          HDStatisticsPercentiles::addSample((a1 + 120), &v75);
          HDStatisticsTimeInterval::addSample((a1 + 192), &v75, v54 ^ 1);
          var3 = v75.var3;
          v48 = v75.var3;
        }

        if (*(a1 + 25) == 1)
        {
          v57 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, var3);
          if (v57)
          {
            v58 = [v73 objectForKeyedSubscript:v57];
            v59 = v58;
            if (v58)
            {
              if ([v58 longLongValue] == var3 || *(a1 + 24) == 1)
              {
                v60 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, var3);
                v61 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v60);
                v62 = v55 ^ 1;
                HDStatisticsPercentiles::addSample(v61, &v75);
                goto LABEL_114;
              }
            }

            else
            {
              v63 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
              [v73 setObject:v63 forKeyedSubscript:v57];

              v64 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, var3);
              v61 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v64);
              v62 = v55 ^ 1;
              HDStatisticsPercentiles::addSample(v61, &v75);
LABEL_114:
              HDStatisticsTimeInterval::addSample(v61 + 9, &v75, v62);
            }
          }
        }

        v49 = 1;
        goto LABEL_118;
      }

LABEL_119:
      *(a1 + 224) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 200), v17) + *(a1 + 224);
      v65 = *(a1 + 232);
      if (v65 != v72)
      {
        do
        {
          *(v65 + 18) = HKIntervalMask<double>::removeIntervalsBefore(v65 + 15, v17) + *(v65 + 18);
          v66 = v65[1];
          if (v66)
          {
            do
            {
              v67 = v66;
              v66 = *v66;
            }

            while (v66);
          }

          else
          {
            do
            {
              v67 = v65[2];
              v68 = *v67 == v65;
              v65 = v67;
            }

            while (!v68);
          }

          v65 = v67;
        }

        while (v67 != v72);
      }

      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_128:
      v69 = *(a1 + 56);
      if (v69 == v5)
      {
        v70 = [MEMORY[0x277CCA890] currentHandler];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsPercentiles, HDStatisticsTimeInterval>]"}];
        [v70 handleFailureInFunction:v71 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v69 = *(a1 + 56);
      }

      v5 = v69;
      if (v69 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 42);
    v25 = *(v6 + 41);
    v26 = *(v6 + 40);
    v27 = v6[1];
    v28 = v6[2];
    v29 = *(v6 + 3);
    v30 = *(v6 + 33);
    if (v28 <= a2)
    {
      v31 = v6[2];
    }

    else
    {
      v31 = a2;
    }

    if (v27 < a2)
    {
      v32 = *(v6 + 32);
    }

    else
    {
      v32 = 0;
    }

    if (v27 < a2)
    {
      v33 = 0;
    }

    else
    {
      v33 = *(v6 + 33);
    }

    if (v27 < a2)
    {
      v34 = 0;
    }

    else
    {
      v31 = v6[2];
      v34 = *(v6 + 3);
    }

    if (v27 < a2)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v6[2];
    }

    if (v27 < a2)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *v6;
    }

    if (v27 < a2)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v6[1];
    }

    if (v27 < a2)
    {
      v38 = 0;
    }

    else
    {
      v38 = *(v6 + 32);
    }

    if (v6[4])
    {
      v28 = v31;
    }

    else
    {
      v32 = *(v6 + 32);
      v33 = 0;
      v34 = 0;
    }

    if (v6[4])
    {
      v39 = v35;
    }

    else
    {
      v39 = 0.0;
    }

    if (v6[4])
    {
      v40 = v36;
    }

    else
    {
      v40 = 0.0;
    }

    if (v6[4])
    {
      v41 = v37;
    }

    else
    {
      v41 = 0.0;
    }

    if (v6[4])
    {
      v42 = v38;
    }

    else
    {
      v42 = 0;
    }

    v75.var0 = *v6;
    v75.var1 = v27;
    v75.var2 = v28;
    v75.var3 = v29;
    v75.var4 = v32;
    v75.var5 = v30;
    *(&v75.var5 + 1) = *(v6 + 34);
    *(&v75.var5 + 5) = *(v6 + 19);
    *&v76 = v40;
    *(&v76 + 1) = v41;
    *&v77 = v39;
    *(&v77 + 1) = v34;
    LOBYTE(v78) = v42;
    HIBYTE(v78) = v33;
    for (j = *(a1 + 64); j != *(a1 + 72) && v27 >= *j; j += 2)
    {
      if (v27 < j[1])
      {
        goto LABEL_85;
      }
    }

    if (v32)
    {
      HDStatisticsPercentiles::addSample((a1 + 120), &v75);
      HDStatisticsTimeInterval::addSample((a1 + 192), &v75, v24 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v44 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v29);
        v45 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v44);
        HDStatisticsPercentiles::addSample(v45, &v75);
        HDStatisticsTimeInterval::addSample(v45 + 9, &v75, v25 ^ 1);
      }

      v26 = 1;
      LOBYTE(v25) = 1;
      LOBYTE(v24) = 1;
    }

LABEL_85:
    if (v42)
    {
      LOWORD(v74) = v78;
      v46 = v77;
      v47 = *(a1 + 96);
      *v47 = v76;
      *(v47 + 16) = v46;
      *(v47 + 32) = v74;
      *(v47 + 40) = v26;
      *(v47 + 41) = v25;
      *(v47 + 42) = v24;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_88:
    *(a1 + 56) = a2;
    goto LABEL_128;
  }
}