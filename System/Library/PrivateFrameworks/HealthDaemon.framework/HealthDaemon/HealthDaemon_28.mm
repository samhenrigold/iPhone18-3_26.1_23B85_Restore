void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 666) == 1)
  {
    *(a1 + 668) = 1;
  }

  else
  {
    *(a1 + 668) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 520), *(a1 + 528), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 528) - *(a1 + 520)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F43178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 544), *(a1 + 40));
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v9 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 194) = 0u;
  v10 = *(a1 + 216);
  *(a1 + 216) = v9;
  v11 = v9;

  v12 = *(a1 + 240);
  *(a1 + 224) = 257;
  *(a1 + 232) = 0;
  if (v12)
  {
    *(a1 + 248) = v12;
    operator delete(v12);
  }

  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;

  if (*(a1 + 328))
  {
    v13 = *(a1 + 312);
    v14 = *(a1 + 320);
    *(a1 + 312) = a1 + 320;
    *(v14 + 16) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    if (v13[1])
    {
      v15 = v13[1];
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      v16 = v15[2];
      if (v16)
      {
        v17 = *v16;
        if (*v16 == v15)
        {
          *v16 = 0;
          while (1)
          {
            v19 = v16[1];
            if (!v19)
            {
              break;
            }

            do
            {
              v16 = v19;
              v19 = *v19;
            }

            while (v19);
          }
        }

        else
        {
          for (v16[1] = 0; v17; v17 = v16[1])
          {
            do
            {
              v16 = v17;
              v17 = *v17;
            }

            while (v17);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>>::destroy(v15);
        for (i = v16[2]; i; i = i[2])
        {
          v16 = i;
        }

        v15 = v16;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>>::destroy(v15);
  }

  objc_storeStrong(v8, *(a1 + 544));
  *(a1 + 528) = *(a1 + 520);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 668) == 1)
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

    *(a1 + 668) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F43430(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 664) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F43880(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4035D4FF1CLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32);
  if (v9 >= a6)
  {
    if (v9 <= a7)
    {
      v10 = v9 < a7;
      a6 = *(a1 + 32);
    }

    else
    {
      a2 = 0;
      v10 = 0;
      a5 = 0.0;
      a6 = 0.0;
      a7 = 0.0;
    }
  }

  else
  {
    v10 = a7 > a6;
  }

  v20 = v7;
  v21 = v8;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a2;
  v18 = v10;
  v19 = 0;
  if (*(a1 + 56))
  {
    if (v10)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  v12 = *(a1 + 40);
  if (a6 > v12)
  {
    v10 = 0;
  }

  if (v10)
  {
    v13 = a7 > a6;
    if (a7 >= v12)
    {
      v13 = a6 < v12;
    }

    else
    {
      v12 = a7;
    }

    v15 = a6;
    v16 = v12;
    v18 = v13;
    if (v13)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 664) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::archive(uint64_t a1, int8x16_t *a2)
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
  HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::archive(&v6, &a2->i64[1]);
  statistics::Statistics::operator=(*(a1 + 128), &v6);
  statistics::Statistics::~Statistics(&v6);
  v5 = a2->i32[0];
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6 = &unk_283BEB0A8;
  v11 = 127;
  v8 = vextq_s8(a2[9], a2[9], 8uLL);
  v7 = a2[10];
  v9 = 0;
  v10 = 0;
  statistics::RawQuantitySample::operator=(*v4, &v6);
  PB::Base::~Base(&v6);
}

void HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::archive(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_283BE6208;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
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
  HDStatisticsNoiseLevel::archive(a2, v5);
  statistics::Statistics::operator=(*(a1 + 128), v5);
  statistics::Statistics::~Statistics(v5);
  statistics::Statistics::makeAuxiliaryStatistics(a1);
  HDStatisticsTimeInterval::archive((a2 + 96), v5);
  statistics::Statistics::operator=(*v4, v5);
  statistics::Statistics::~Statistics(v5);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 66) = 0u;
  v5 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 88) = v5;
  *(a1 + 96) = 257;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 162) = 0u;
  v7 = a2[16];
  if (v7)
  {
    v8 = v5;
    HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::unarchive(v16, v7);
    v9 = v17[0];
    v4[2] = v16[2];
    v4[3] = v9;
    *(v4 + 58) = *(v17 + 10);
    v10 = v16[1];
    *v4 = v16[0];
    v4[1] = v10;
    *(a1 + 88) = v18;

    *(a1 + 96) = v19;
    *(a1 + 104) = v20;
    v11 = v18;
    v12 = v23;
    v13 = v22;
    *(a1 + 112) = v21;
    *(a1 + 128) = v13;
    v22 = 0;
    v21 = 0uLL;
    *(a1 + 136) = v12;
  }

  *a1 = a2[17];
  v14 = a2[14];
  if (v14)
  {
    result = *(v14 + 8);
    v15 = *(v14 + 16);
    *(a1 + 144) = vextq_s8(*(v14 + 24), *(v14 + 24), 8uLL);
    *(a1 + 160) = result;
    *(a1 + 168) = v15;
    *(a1 + 176) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::unarchive(uint64_t a1, uint64_t a2)
{
  *(a1 + 58) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 80) = v5;
  *(a1 + 88) = 257;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v7 = *(a2 + 128);
  if (v7)
  {
    HDStatisticsNoiseLevel::unarchive(v7, v4);
    v8 = v14[0];
    *(a1 + 32) = v13;
    *(a1 + 48) = v8;
    *(a1 + 58) = *(v14 + 10);
    v9 = *&v12[16];
    *a1 = *v12;
    *(a1 + 16) = v9;
    *(a1 + 80) = v15;

    *(a1 + 88) = v16;
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    HDStatisticsTimeInterval::unarchive(v10, v12);
    *(a1 + 96) = *v12;
    result = *&v13;
    v11 = *&v12[24];
    *(a1 + 104) = *&v12[8];
    *(a1 + 120) = v11;
    *(a1 + 128) = result;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEF348;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 104) = 0;
  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 112) = 0;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 1;
  *(a1 + 618) = 0;
  *(a1 + 620) = 0;
  *(a1 + 624) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 664) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  return a1;
}

void sub_228F445C4(_Unwind_Exception *a1)
{
  v3 = v2;
  objc_destroyWeak(v3);

  v5 = *(v1 + 72);
  if (v5)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(v1);
  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEF348;
  v2 = *(a1 + 648);
  if (v2)
  {
    *(a1 + 656) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 584);
  if (v3)
  {
    *(a1 + 592) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 616) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 624) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 632), a2);
  v7 = a2;
  v4 = *(a1 + 632);
  v5 = *(a1 + 608);
  *(a1 + 608) = v4;
  v6 = v4;

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(a1 + 120, *(a1 + 608));
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 272) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 616) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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

    goto LABEL_23;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 618) == 1)
    {
      if (*(a1 + 617))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 616))
        {
          v15 = -1.79769313e308;
        }

        else
        {
          v16 = *(a1 + 176);
          v15 = *(a1 + 120);
          if (v16 <= v15)
          {
            v16 = -1.79769313e308;
          }

          if (v16 >= v15)
          {
            v15 = v16;
          }
        }
      }

      else
      {
        v15 = -1.79769313e308;
        if (*(a1 + 176) > *(a1 + 120))
        {
          v15 = *(a1 + 176);
        }
      }

      if (v15 > *(a2 + 8))
      {
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 619) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 648, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 618) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 618) = 1;
  v60 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v59 = v6;
  if (*(a1 + 617))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 640);
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

  [v9 sortUsingComparator:&__block_literal_global_874];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = *(a1 + 640);
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
  v27 = *(a1 + 640);
  *(a1 + 640) = 0;

  *(a1 + 617) = 0;
  if (v8)
  {
    v28 = *(a1 + 648);
    *(a1 + 664) = 0;
    *(a1 + 656) = 0;
    *(a1 + 648) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v61 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 648);
      v39 = *(a1 + 656);
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
            v39 = *(a1 + 656);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 656) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 648);
  v29 = *(a1 + 656);
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v60);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v60))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
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

        v51 = v60;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40) && *(a1 + 592) != *(a1 + 584))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
  }

  *(a1 + 618) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 620) == 1)
    {
      *(a1 + 620) = 0;
      v6 = v59;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 618) = 0;
LABEL_81:

  return v7;
}

void sub_228F452E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 618) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 618))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 618) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 640);
    *(a1 + 640) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 617) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 617) & 1) == 0)
  {
    v8 = *(a1 + 640);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 640);
      *(a1 + 640) = v9;

      v8 = *(a1 + 640);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 616) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 616) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 616) forKey:@"needs_config"];
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
  HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::archive(&v32, a1 + 240);
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 376);
  if (v9 != a1 + 384)
  {
    HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::archive(&v32, v9 + 40);
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
  v12 = *(a1 + 584);
  if (v12 != *(a1 + 592))
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

void sub_228F45B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v34 = a2;
  *(k + 616) = [v34 decodeBoolForKey:@"needs_config"];
  v3 = v34;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v39, 0, -1.79769313e308, 1.79769313e308);
  v40 = 0u;
  v41 = 0u;
  v78 = 0;
  PB::Reader::Reader(v77, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v78]);
  v70 = &unk_283BF1A08;
  v71 = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v76 = 0;
  statistics::StatisticsEngine::readFrom(&v70, v77);
  v4 = v71;
  v38 = v72;
  if (v71)
  {
    v45 = 0;
    memset(v48, 0, sizeof(v48));
    memset(v49, 0, sizeof(v49));
    v36 = v3;
    v50 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    v51 = 257;
    memset(v52, 0, sizeof(v52));
    v55[1] = 0;
    v55[0] = 0;
    v53 = 0;
    v54 = v55;
    v56 = 0u;
    v57 = 0u;
    v58 = 1065353216;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    v63 = 1065353216;
    v64 = 0u;
    v65 = 0u;
    v66 = 1065353216;
    v67 = 0u;
    v68 = 0u;
    v69 = 1065353216;
    v42 = vextq_s8(*(v4 + 8), *(v4 + 8), 8uLL);
    v5 = *(v4 + 72);
    v43 = *(v4 + 64);
    LOWORD(v44) = *(v4 + 185);
    v46 = vextq_s8(*(v4 + 24), *(v4 + 24), 8uLL);
    v47 = v5;
    v37 = v4;
    v6 = *(v4 + 80);
    for (i = *(v4 + 88); v6 != i; ++v6)
    {
      v8 = *v6;
      LOWORD(v81) = 1;
      BYTE8(v81) = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v79 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      *&v80 = v9;
      *(&v80 + 1) = v10;
      BYTE9(v81) = *(v8 + 41);
      BYTE10(v81) = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v49, v79.i8);
    }

    v11 = v37[13];
    if (v11)
    {
      HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::unarchive(&v79, v11);
      *&v49[40] = v80;
      *&v49[56] = v81;
      *&v49[72] = v82[0];
      *&v49[82] = *(v82 + 10);
      *&v49[24] = v79;
      objc_storeStrong(&v50, v83);
      v51 = v84;
      v52[0] = v85;
      if (v52[1])
      {
        v52[2] = v52[1];
        operator delete(v52[1]);
      }

      *&v52[1] = v86;
      v52[3] = v87;
      v87 = 0;
      v86 = 0uLL;
      v53 = v88;
    }

    v35 = k;
    v12 = v37[17];
    for (j = v37[18]; v12 != j; ++v12)
    {
      v14 = *v12;
      HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::unarchive(&v79, *v12);
      v15 = *(v14 + 144);
      v16 = v55[0];
      if (!v55[0])
      {
LABEL_16:
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
            goto LABEL_16;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_16;
        }
      }

      v19 = *(v82 + 10);
      v21 = v81;
      v20 = v82[0];
      v22 = v79;
      *(v17 + 7) = v80;
      *(v17 + 9) = v21;
      *(v17 + 11) = v20;
      *(v17 + 98) = v19;
      *(v17 + 5) = v22;
      objc_storeStrong(v17 + 15, v83);
      v23 = v17[18];
      *(v17 + 64) = v84;
      v17[17] = v85;
      if (v23)
      {
        v17[19] = v23;
        operator delete(v23);
        v17[18] = 0;
        v17[19] = 0;
        v17[20] = 0;
      }

      *(v17 + 9) = v86;
      v24 = v83;
      v17[20] = v87;
      v87 = 0;
      v86 = 0uLL;
      v17[21] = v88;
    }

    v3 = v36;
    v25 = v37[5];
    v26 = v37[6];
    for (k = v35; v25 != v26; v25 += 8)
    {
      v28 = *(*v25 + 8);
      v27 = *(*v25 + 16);
      if (v28 >= v27)
      {
        v29 = *(*v25 + 16);
      }

      else
      {
        v29 = *(*v25 + 8);
      }

      if (v27 < v28)
      {
        v27 = *(*v25 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v48, v29, v27);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=(v39, &v42);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v42);
  }

  v30 = v73;
  for (m = v74; v30 != m; v30 += 8)
  {
    v32 = *(*v30 + 8);
    v33 = *(*v30 + 16);
    v42 = vextq_s8(*(*v30 + 24), *(*v30 + 24), 8uLL);
    v43 = v32;
    v44 = v33;
    LOWORD(v45) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v40, v42.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v70);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=((k + 112), &v38);
  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v39);
}

void sub_228F46168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a9);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x3B0]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x388]);
  v16 = STACK[0x370];
  if (STACK[0x370])
  {
    STACK[0x378] = v16;
    operator delete(v16);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a10);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(STACK[0x338]);
  HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::~HDStatisticsCombined(&STACK[0x2A8]);
  v17 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v17;
    operator delete(v17);
  }

  objc_destroyWeak(&STACK[0x288]);
  v18 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v18;
    operator delete(v18);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x400]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 208) = 257;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 1065353216;
  return a1;
}

void sub_228F46364(_Unwind_Exception *a1)
{
  v5 = v2;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 104) = v7;
    operator delete(v7);
  }

  objc_destroyWeak((v1 + 88));
  v8 = *v4;
  if (*v4)
  {
    *(v1 + 72) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    *(a1 + 480) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 424);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 384);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 344);
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 280);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 264));
  v3 = *(a1 + 224);
  if (v3)
  {
    *(a1 + 232) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  objc_destroyWeak((a1 + 88));
  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,0>(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v24 = 1;
  }

  v23 = *(a1 + 56);
  v25 = *(a1 + 24) & 1;
  if (v27 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v27, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(v22, *(a1 + 632));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 616) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v22);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 32), a2);
  v4 = a2;
  HDStatisticsNoiseLevel::configure((a1 + 120), v4);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 59), (a2 + 472));
  v4 = *(a2 + 496);
  *(a2 + 496) = 0;
  v5 = a1[62];
  a1[62] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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

  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel((a1 + 120), (a2 + 120));
  v10 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v10;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 224), *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 4);
  *(a1 + 248) = *(a2 + 248);
  v11 = (a1 + 264);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = a1 + 264;
  v12 = *(a2 + 256);
  if (v12 != (a2 + 264))
  {
    do
    {
      v13 = *v11;
      v14 = (a1 + 264);
      if (*(a1 + 256) == v11)
      {
        goto LABEL_11;
      }

      v15 = *v11;
      v16 = (a1 + 264);
      if (v13)
      {
        do
        {
          v14 = v15;
          v15 = v15[1];
        }

        while (v15);
      }

      else
      {
        do
        {
          v14 = v16[2];
          v17 = *v14 == v16;
          v16 = v14;
        }

        while (v17);
      }

      v18 = v12[4];
      if (v14[4] < v18)
      {
LABEL_11:
        if (v13)
        {
          v19 = v14 + 1;
        }

        else
        {
          v19 = (a1 + 264);
        }

        if (!*v19)
        {
LABEL_22:
          operator new();
        }
      }

      else
      {
        if (!v13)
        {
          goto LABEL_22;
        }

        while (1)
        {
          while (1)
          {
            v20 = v13;
            v21 = v13[4];
            if (v21 <= v18)
            {
              break;
            }

            v13 = *v20;
            if (!*v20)
            {
              goto LABEL_22;
            }
          }

          if (v21 >= v18)
          {
            break;
          }

          v13 = v20[1];
          if (!v13)
          {
            goto LABEL_22;
          }
        }
      }

      v22 = v12[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v12[2];
          v17 = *v23 == v12;
          v12 = v23;
        }

        while (!v17);
      }

      v12 = v23;
    }

    while (v23 != (a2 + 264));
  }

  std::unordered_set<long long>::unordered_set(a1 + 280, a2 + 280);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 320), *(a2 + 320), *(a2 + 328), (*(a2 + 328) - *(a2 + 320)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 344, a2 + 344);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 384, a2 + 384);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 424, a2 + 424);
  return a1;
}

void sub_228F46C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v11 + 384);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 344);
  v14 = *(v11 + 320);
  if (v14)
  {
    *(v11 + 328) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 280);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(*v12);
  HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::~HDStatisticsCombined(v11 + 120);
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
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
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 178);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 178) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 120) = *(a2 + 120);
  objc_storeStrong((a1 + 200), *(a2 + 200));
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 224, (a2 + 224));
  *(a1 + 248) = *(a2 + 248);
  v13 = a1 + 264;
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 264));
  *(a1 + 256) = *(a2 + 256);
  v14 = *(a2 + 264);
  v15 = *(a2 + 272);
  *(a1 + 264) = v14;
  *(a1 + 272) = v15;
  if (v15)
  {
    *(v14 + 16) = v13;
    *(a2 + 256) = a2 + 264;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
  }

  else
  {
    *(a1 + 256) = v13;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 280, (a2 + 280));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 344, (a2 + 344));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 384, (a2 + 384));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 424, (a2 + 424));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = objc_alloc(MEMORY[0x277CBEAA8]);
  v5 = 5;
  if (v3 != -1.79769313e308)
  {
    v5 = 0;
  }

  v6 = [v4 initWithTimeIntervalSinceReferenceDate:a2[v5]];
  v22 = a2;
  if (a2[1] == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a2[6]];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a2[1]];
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v6 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v21 = v6;
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(v22 + 40);
      v16 = *(v22 + 41);
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
      v6 = v21;
      [v12 _setSources:v20];
    }
  }

  v24[0] = &unk_283BEF538;
  v24[3] = v24;
  v12;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v25, v24);
  v26 = 0;
  operator new();
}

void sub_228F47A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);

  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a41);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 304);
  v2 = *(a1 + 320);
  if (v1 != (*(a1 + 328) - v2) >> 3)
  {
    *(a1 + 328) = v2;
    std::vector<long long>::reserve((a1 + 320), v1);
    for (i = *(a1 + 296); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 320, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 320];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v6 = (a1 + 264);
    while (1)
    {
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 - v7);
      if (v9 == 1)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_97;
      }

      v10 = a2;
      v11 = a2;
      v12 = v5;
      v13 = *(a1 + 96);
      if (v7 != v8)
      {
        do
        {
          v14 = v13->n128_f64[1];
          v15 = v13[1].n128_f64[0];
          if (v14 > v12 && v14 < v11)
          {
            v11 = v13->n128_f64[1];
          }

          if (v15 > v5)
          {
            v17 = v13[1].n128_f64[0];
          }

          else
          {
            v17 = v10;
          }

          if (v15 < v10)
          {
            v12 = v5;
            v10 = v17;
          }

          v13 += 3;
        }

        while (v13 != v8);
      }

      if (v10 >= v11)
      {
        v18 = v11;
      }

      else
      {
        v18 = v10;
      }

      v19 = *(a1 + 16);
      if (v19 > 0.0)
      {
        v20 = v19 * floor(v18 / v19);
        v21 = v19 * floor((v19 + v5) / v19);
        if (v20 >= v21)
        {
          v18 = v20;
        }

        else
        {
          v18 = v21;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v7 != v8)
      {
        if (v9 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * (v8 - v7));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v77.var0 = a1;
        v23 = 126 - 2 * __clz(v9);
        if (v7 == v8)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,false>(v7, v8, &v77, v24, 1);
      }

      else
      {
        v36 = 126 - 2 * __clz(v9);
        if (v7 == v8)
        {
          v24 = 0;
        }

        else
        {
          v24 = v36;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v7, v8, v24, 1);
      if (*(a1 + 25) == 1)
      {
        v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v37 = 0;
      }

      if (v7 != v8)
      {
        v70 = 0;
        v38 = 0;
        for (i = v7; i != v8; i += 3)
        {
          v40 = i[1];
          *&v76.var0 = *i;
          *&v76.var2 = v40;
          *&v76.var4 = i[2].n128_u64[0];
          if (v76.var4 && v76.var1 <= v18)
          {
            var2 = v76.var2;
            if (v76.var2 >= v18)
            {
              var0 = v76.var0;
              v76.var2 = v18;
              v42 = var2 > v18;
              v76.var4 = v76.var1 < v18;
              if (v76.var1 < v18)
              {
                var5 = v76.var5;
                var3 = v76.var3;
                v75 = var2 > v18;
                v43 = v18;
LABEL_58:
                HDStatisticsNoiseLevel::applyMaskToSample(&v76, (a1 + 64));
                v45 = i[2].n128_u8[10];
                v74 = i[2].n128_u8[9];
                v71 = i[2].n128_u8[8];
                if (v76.var4)
                {
                  if (v38)
                  {
                    v46 = v76.var3;
                    if (v70 == v76.var3 || *(a1 + 24) == 1)
                    {
                      HDStatisticsNoiseLevel::addSample((a1 + 120), &v76, v45 ^ 1);
                      HDStatisticsTimeInterval::addSample((a1 + 216), &v76, v45 ^ 1);
                      LOBYTE(v45) = 1;
                    }
                  }

                  else
                  {
                    HDStatisticsNoiseLevel::addSample((a1 + 120), &v76, v45 ^ 1);
                    HDStatisticsTimeInterval::addSample((a1 + 216), &v76, v45 ^ 1);
                    LOBYTE(v45) = 1;
                    v46 = v76.var3;
                    v70 = v76.var3;
                  }

                  if (*(a1 + 25) == 1)
                  {
                    v47 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, v46);
                    if (v47)
                    {
                      v69 = v37;
                      v48 = [v37 objectForKeyedSubscript:v47];
                      if (v48)
                      {
                        if ([v48 longLongValue] == v46 || *(a1 + 24) == 1)
                        {
                          v49 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v46);
                          v50 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v49);
                          v51 = v74 ^ 1;
                          HDStatisticsNoiseLevel::addSample(v50, &v76, v74 ^ 1);
                          goto LABEL_71;
                        }
                      }

                      else
                      {
                        v52 = [MEMORY[0x277CCABB0] numberWithLongLong:{v46, 0}];
                        [v69 setObject:v52 forKeyedSubscript:v47];

                        v53 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v46);
                        v50 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v53);
                        v51 = v74 ^ 1;
                        HDStatisticsNoiseLevel::addSample(v50, &v76, v74 ^ 1);
LABEL_71:
                        HDStatisticsTimeInterval::addSample(v50 + 12, &v76, v51);
                        LOBYTE(v74) = 1;
                      }

                      v37 = v69;
                    }
                  }

                  v38 = 1;
                }

                if (v75)
                {
                  v77.var0 = var0;
                  v77.var1 = v43;
                  v77.var2 = var2;
                  v77.var3 = var3;
                  v77.var4 = v42;
                  v77.var5 = var5;
                  LOBYTE(v78) = v71;
                  BYTE1(v78) = v74;
                  BYTE2(v78) = v45;
                  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v77);
                }

                continue;
              }
            }

            else
            {
              v76.var4 = v76.var2 > v76.var1;
              if (v76.var2 > v76.var1)
              {
                v42 = 0;
                v75 = 0;
                var3 = 0;
                var5 = 0;
                var2 = 0.0;
                v43 = 0.0;
                var0 = 0.0;
                goto LABEL_58;
              }
            }
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 248) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 224), v18) + *(a1 + 248);
      v54 = *(a1 + 256);
      if (v54 != v6)
      {
        do
        {
          *(v54 + 21) = HKIntervalMask<double>::removeIntervalsBefore(v54 + 18, v18) + *(v54 + 21);
          v55 = v54[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v54[2];
              v57 = *v56 == v54;
              v54 = v56;
            }

            while (!v57);
          }

          v54 = v56;
        }

        while (v56 != v6);
      }

      *(a1 + 56) = v18;

      if (v7)
      {
        operator delete(v7);
      }

LABEL_98:
      v65 = *(a1 + 56);
      if (v65 == v5)
      {
        v66 = [MEMORY[0x277CCA890] currentHandler];
        v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsNoiseLevel, HDStatisticsTimeInterval>]"}];
        [v66 handleFailureInFunction:v67 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v65 = *(a1 + 56);
      }

      v5 = v65;
      if (v65 >= a2)
      {
        return;
      }
    }

    v25 = v7->n128_f64[1];
    v26 = v7[1].n128_f64[0];
    v27 = v7[1].n128_i64[1];
    v28 = v7[2].n128_u8[0];
    v29 = 0.0;
    v30 = v7[2].n128_u8[1];
    if (v28)
    {
      if (v25 > a2)
      {
        v28 = 0;
        v31 = v26 > v25;
        v32 = v7[1].n128_f64[0];
        v33 = v7[2].n128_u8[1];
        v29 = v7->n128_f64[0];
        v34 = v7->n128_f64[1];
LABEL_89:
        v35 = v7[1].n128_u64[1];
        goto LABEL_90;
      }

      if (v26 >= a2)
      {
        v28 = v25 < a2;
        v31 = v26 > a2;
        v32 = a2;
        v33 = v7[2].n128_u8[1];
        v29 = v7->n128_f64[0];
        v34 = a2;
        goto LABEL_89;
      }

      v33 = 0;
      v35 = 0;
      v31 = 0;
      v28 = v26 > v25;
    }

    else
    {
      v33 = 0;
      v35 = 0;
      v31 = 0;
    }

    v32 = v7[1].n128_f64[0];
    v34 = 0.0;
    v26 = 0.0;
LABEL_90:
    v58 = v7[2].n128_u8[10];
    v59 = v7[2].n128_u8[9];
    v60 = v7[2].n128_i8[8];
    *&v77.var0 = v7->n128_u64[0];
    v77.var1 = v25;
    v77.var2 = v32;
    v77.var3 = v27;
    v77.var4 = v28;
    v77.var5 = v30;
    *(&v77.var5 + 1) = *(v7[2].n128_u32 + 2);
    *(&v77.var5 + 5) = v7[2].n128_u16[3];
    *&v78 = v29;
    *(&v78 + 1) = v34;
    *&v79 = v26;
    *(&v79 + 1) = v35;
    LOBYTE(v80) = v31;
    HIBYTE(v80) = v33;
    HDStatisticsNoiseLevel::applyMaskToSample(&v77, (a1 + 64));
    if (v77.var4)
    {
      HDStatisticsNoiseLevel::addSample((a1 + 120), &v77, v58 ^ 1);
      HDStatisticsTimeInterval::addSample((a1 + 216), &v77, v58 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v61 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v77.var3);
        v62 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v61);
        HDStatisticsNoiseLevel::addSample(v62, &v77, v59 ^ 1);
        HDStatisticsTimeInterval::addSample(v62 + 12, &v77, v59 ^ 1);
      }

      v60 = 1;
      LOBYTE(v59) = 1;
      LOBYTE(v58) = 1;
    }

    if (v80 == 1)
    {
      *&v76.var4 = v80;
      v63 = v79;
      v64 = *(a1 + 96);
      *v64 = v78;
      *(v64 + 16) = v63;
      *(v64 + 32) = *&v76.var4;
      *(v64 + 40) = v60;
      *(v64 + 41) = v59;
      *(v64 + 42) = v58;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_97:
    *(a1 + 56) = a2;
    goto LABEL_98;
  }
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 264);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 264);
  v5 = (a1 + 264);
  do
  {
    if (v3[4] >= a2)
    {
      v5 = v3;
    }

    v3 = v3[v3[4] < a2];
  }

  while (v3);
  if (v5 == v4 || v5[4] > a2)
  {
LABEL_8:
    v9 = &v8;
    v6 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 256), a2, &v9);
    HDStatisticsNoiseLevel::configure((v6 + 5), *(a1 + 32));
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 256), v8, &v9);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 344), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 384), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 384), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 424), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 424), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t *std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t *a1, uint64_t a2, void **a3)
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
      v5 = *(v3 + 32);
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

void sub_228F4899C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::overallStatistics(HDStatisticsNoiseLevel *a1, uint64_t a2)
{
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(a1, (a2 + 120));
  v4[13] = 0;
  v4 += 13;
  v5 = *(a2 + 224);
  *(v4 - 1) = *(a2 + 216);
  v4[1] = 0;
  v4[2] = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v4, v5, *(a2 + 232), (*(a2 + 232) - v5) >> 4);
  result = *(a2 + 248);
  *(a1 + 16) = result;
  return result;
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  v2 = *(a2 + 256);
  v25 = (a2 + 264);
  if (v2 == (a2 + 264))
  {
    return;
  }

  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_24;
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
    v27 = v9.u32[0];
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

      if (v27 > 1)
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

    v14 = v7;
    v15 = v12[2];
    v16 = v5;
    v17 = v16;
    if (v15 != v16)
    {
      v18 = [v15 isEqualToString:v16];

      v7 = v14;
      if (v18)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_21:
    *(v12 + 3) = *(v2 + 5);
    v19 = *(v2 + 7);
    v20 = *(v2 + 9);
    v21 = *(v2 + 11);
    *(v12 + 82) = *(v2 + 98);
    *(v12 + 9) = v21;
    *(v12 + 7) = v20;
    *(v12 + 5) = v19;
    objc_storeStrong(v12 + 13, v2[15]);
    *(v12 + 56) = *(v2 + 64);
    v12[15] = v2[17];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 16, v2[18], v2[19], (v2[19] - v2[18]) >> 4);
    }

    v12[19] = v2[21];

LABEL_24:
    v22 = v2[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = v2[2];
        v24 = *v23 == v2;
        v2 = v23;
      }

      while (!v24);
    }

    v2 = v23;
  }

  while (v23 != v25);
}

void sub_228F48FC0(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>>>::operator()[abi:ne200100](1, v2);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 128);
    if (v3)
    {
      *(a2 + 136) = v3;
      operator delete(v3);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 16);
      if (v4)
      {
        *(v2 + 17) = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF418;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF418;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 96;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF4A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF4A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 616) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 616))
    {
      v10 = -1.79769313e308;
    }

    else
    {
      v10 = *(a1 + 176);
      v12 = *(a1 + 120);
      if (v10 <= v12)
      {
        v10 = -1.79769313e308;
      }

      if (v10 < v12)
      {
        v10 = *(a1 + 120);
      }
    }
  }

  else
  {
    v10 = *(a1 + 176);
    if (v10 <= *(a1 + 120))
    {
      v10 = -1.79769313e308;
    }
  }

  if (v8 >= v10)
  {
    if (v9 && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t a1, double a2)
{
  if (*(a1 + 128) <= a2)
  {
    if (*(a1 + 592) != *(a1 + 584))
    {
      [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
    }

    v5 = 0;
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
  }
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(uint64_t a1, double *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a2 + 3);
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v9 = a1 + 8;
  v10 = *(a1 + 8);
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  if (v7)
  {
    if (v4 > v10)
    {
      *&v32 = v3;
      *(&v32 + 1) = v4;
      *&v33 = v5;
      *(&v33 + 1) = v6;
      HIBYTE(v34) = v8;
      LOBYTE(v34) = v5 > v4;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0;
      v10 = v4;
      if (v5 <= v4)
      {
        return;
      }

LABEL_7:
      v13 = *(a1 + 16);
      if (v10 > v13)
      {
        v25 = v32;
        v26 = v33;
        HIBYTE(v27) = HIBYTE(v34);
        LOBYTE(v27) = *&v33 > *(&v32 + 1);
        if (*&v33 <= *(&v32 + 1))
        {
          return;
        }

        goto LABEL_35;
      }

      if (v5 >= v13)
      {
        *&v25 = v32;
        v26 = v33;
        HIBYTE(v27) = HIBYTE(v34);
        *&v33 = v13;
        *(&v25 + 1) = v13;
        v14 = *&v26 > v13;
        LOBYTE(v34) = v10 < v13;
        LOBYTE(v27) = *&v26 > v13;
        if (v10 >= v13)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v14 = 0;
        LOBYTE(v34) = v5 > v10;
        LOBYTE(v27) = 0;
        v13 = v5;
        if (v5 <= v10)
        {
          return;
        }
      }

      v23 = v13;
      v24 = v10;
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 288), v6, &v33 + 1);
      if (*(a1 + 112) == *(a1 + 104) && *(a1 + 160) <= 0)
      {
        v18.f64[1] = *(a1 + 16);
        v15 = v24;
        v18.f64[0] = v24;
        v19.f64[0] = *(a1 + 8);
        v19.f64[1] = v23;
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

        if (v23 > *(a1 + 56))
        {
          v17 = *(a1 + 16);
          if (v17 >= v23)
          {
            v17 = v23;
          }

          *(a1 + 56) = v17;
        }
      }

      if (a3 && v15 < *(a1 + 16))
      {
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(v9, v15);
      }

      v28[0] = v32;
      v28[1] = v33;
      v29 = v34;
      v30 = 0;
      v31 = 0;
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v28);
      if (!*(a1 + 200) || *(a1 + 176) <= v4)
      {
        *(a1 + 168) = v3;
        *(a1 + 176) = v4;
        *(a1 + 184) = v5;
        *(a1 + 192) = v6;
        *(a1 + 200) = v7;
        *(a1 + 201) = v8;
      }

      if (*(a1 + 33) == 1)
      {
        v21 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(v9, v6);
        v22 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(v9, v21);
        if (!*(v22 + 72) || *(v22 + 6) <= v4)
        {
          v22[5] = v3;
          *(v22 + 6) = v4;
          *(v22 + 7) = v5;
          v22[8] = v6;
          *(v22 + 72) = v7;
          *(v22 + 73) = v8;
          if (!v14)
          {
            return;
          }

LABEL_35:
          std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 472, &v25);
          return;
        }
      }

LABEL_34:
      if (!v14)
      {
        return;
      }

      goto LABEL_35;
    }

    if (v5 >= v10)
    {
      *(&v32 + 1) = v10;
      *&v33 = v5;
      *(&v33 + 1) = v6;
      HIBYTE(v34) = v8;
      *&v32 = v3;
      LOBYTE(v34) = v5 > v10;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0;
      if (v5 > v10)
      {
        goto LABEL_7;
      }
    }
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 618) == 1)
  {
    *(a1 + 620) = 1;
  }

  else
  {
    *(a1 + 620) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 472), *(a1 + 480), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 480) - *(a1 + 472)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F4A0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  objc_storeStrong((a1 + 496), *(a1 + 40));
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v8 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 186) = 0u;
  v9 = *(a1 + 208);
  *(a1 + 208) = v8;
  v10 = v8;

  v11 = *(a1 + 232);
  *(a1 + 216) = 257;
  *(a1 + 224) = 0;
  if (v11)
  {
    *(a1 + 240) = v11;
    operator delete(v11);
  }

  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;

  if (*(a1 + 280))
  {
    v12 = *(a1 + 264);
    v13 = *(a1 + 272);
    *(a1 + 264) = a1 + 272;
    *(v13 + 16) = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
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

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(v14);
        for (i = v15[2]; i; i = i[2])
        {
          v15 = i;
        }

        v14 = v15;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(v14);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(a1 + 8, *(a1 + 496));
  *(a1 + 480) = *(a1 + 472);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 620) == 1)
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

    *(a1 + 620) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F4A34C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 616) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F4A79C(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40067036FCLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, (v15 + 120));
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32);
  if (v9 >= a6)
  {
    if (v9 <= a7)
    {
      v10 = v9 < a7;
      a6 = *(a1 + 32);
    }

    else
    {
      a2 = 0;
      v10 = 0;
      a5 = 0.0;
      a6 = 0.0;
      a7 = 0.0;
    }
  }

  else
  {
    v10 = a7 > a6;
  }

  v20 = v7;
  v21 = v8;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a2;
  v18 = v10;
  v19 = 0;
  if (*(a1 + 56))
  {
    if (v10)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  v12 = *(a1 + 40);
  if (a6 > v12)
  {
    v10 = 0;
  }

  if (v10)
  {
    v13 = a7 > a6;
    if (a7 >= v12)
    {
      v13 = a6 < v12;
    }

    else
    {
      v12 = a7;
    }

    v15 = a6;
    v16 = v12;
    v18 = v13;
    if (v13)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 616) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEF5E8;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 104) = 0;
  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 112) = 0;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 1;
  *(a1 + 626) = 0;
  *(a1 + 628) = 0;
  *(a1 + 632) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  return a1;
}

void sub_228F4B078(_Unwind_Exception *a1)
{
  v3 = v2;
  objc_destroyWeak(v3);

  v5 = *(v1 + 72);
  if (v5)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(v1);
  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEF5E8;
  v2 = *(a1 + 656);
  if (v2)
  {
    *(a1 + 664) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 592);
  if (v3)
  {
    *(a1 + 600) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 624) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 632) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 80, a2);
  v7 = a2;
  v4 = a1[80];
  v5 = a1[77];
  a1[77] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[77]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 280) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 624))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(v4, v5);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

void sub_228F4B4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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

    goto LABEL_23;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 626) == 1)
    {
      if (*(a1 + 625))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 624))
        {
          v15 = -1.79769313e308;
        }

        else
        {
          v16 = *(a1 + 176);
          v15 = *(a1 + 120);
          if (v16 <= v15)
          {
            v16 = -1.79769313e308;
          }

          if (v16 >= v15)
          {
            v15 = v16;
          }
        }
      }

      else
      {
        v15 = -1.79769313e308;
        if (*(a1 + 176) > *(a1 + 120))
        {
          v15 = *(a1 + 176);
        }
      }

      if (v15 > *(a2 + 8))
      {
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 627) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 656, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 626) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 626) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 625))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 648);
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

  [v9 sortUsingComparator:&__block_literal_global_883];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 648);
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
  v27 = *(a1 + 648);
  *(a1 + 648) = 0;

  *(a1 + 625) = 0;
  if (v8)
  {
    v28 = *(a1 + 656);
    *(a1 + 672) = 0;
    *(a1 + 664) = 0;
    *(a1 + 656) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v68 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 656);
      v39 = *(a1 + 664);
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
            v39 = *(a1 + 664);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 664) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 656);
  v29 = *(a1 + 664);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveInvalidateInterval(a1, v49, v67);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveInvalidateInterval(a1, 0, v67))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 600) != *(a1 + 592))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 626) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 628) == 1)
    {
      *(a1 + 628) = 0;
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 626) = 0;
LABEL_81:

  return v7;
}

void sub_228F4BD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 626) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 626))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 626) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 648);
    *(a1 + 648) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 625) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 625) & 1) == 0)
  {
    v8 = *(a1 + 648);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 648);
      *(a1 + 648) = v9;

      v8 = *(a1 + 648);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 624) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 624) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 624) forKey:@"needs_config"];
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
  HDStatisticsRelative<HDStatisticsNoiseLevel>::archive(&v32, (a1 + 240));
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 384);
  if (v9 != a1 + 392)
  {
    HDStatisticsRelative<HDStatisticsNoiseLevel>::archive(&v32, (v9 + 40));
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
  v12 = *(a1 + 592);
  if (v12 != *(a1 + 600))
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

void sub_228F4C5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v34 = a2;
  *(k + 624) = [v34 decodeBoolForKey:@"needs_config"];
  v3 = v34;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(&v38.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v40 = 0u;
  v83 = 0;
  PB::Reader::Reader(v82, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v83]);
  v75 = &unk_283BF1A08;
  v76 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v81 = 0;
  statistics::StatisticsEngine::readFrom(&v75, v82);
  v4 = v76;
  v38.n128_u64[0] = v77;
  if (v76)
  {
    v36 = v3;
    v44 = 0;
    memset(v47, 0, sizeof(v47));
    memset(v48, 0, sizeof(v48));
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    memset(v53, 0, 26);
    v49 = 0;
    v54 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    v55 = 257;
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    v60[1] = 0;
    v60[0] = 0;
    v59 = v60;
    v61 = 0u;
    v62 = 0u;
    v63 = 1065353216;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v68 = 1065353216;
    v69 = 0u;
    v70 = 0u;
    v71 = 1065353216;
    v72 = 0u;
    v73 = 0u;
    v74 = 1065353216;
    v41 = vextq_s8(*(v4 + 8), *(v4 + 8), 8uLL);
    v5 = *(v4 + 72);
    v42 = *(v4 + 64);
    LOWORD(v43) = *(v4 + 185);
    v45 = vextq_s8(*(v4 + 24), *(v4 + 24), 8uLL);
    v46 = v5;
    v37 = v4;
    v6 = *(v4 + 80);
    for (i = *(v4 + 88); v6 != i; ++v6)
    {
      v8 = *v6;
      WORD4(v85) = 1;
      LOBYTE(v86) = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      *v84 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      *&v84[16] = v9;
      *&v85 = v10;
      BYTE1(v86) = *(v8 + 41);
      BYTE2(v86) = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v48, v84);
    }

    v35 = k;
    v11 = v37[13];
    if (v11)
    {
      HDStatisticsRelative<HDStatisticsNoiseLevel>::unarchive(v84, v11);
      v49 = *v84;
      v52 = v86;
      v53[0] = v87[0];
      *(v53 + 10) = *(v87 + 10);
      v50 = *&v84[8];
      v51 = v85;
      v12 = obj;
      objc_storeStrong(&v54, obj);
      v55 = v89;
      v56 = v90;
      v57 = v91;
      v58 = v92;
    }

    v14 = v37[17];
    for (j = v37[18]; v14 != j; ++v14)
    {
      v15 = *v14;
      HDStatisticsRelative<HDStatisticsNoiseLevel>::unarchive(v84, *v14);
      v16 = *(v15 + 144);
      v17 = v60[0];
      if (!v60[0])
      {
LABEL_14:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v18 = v17;
          v19 = v17[4];
          if (v19 <= v16)
          {
            break;
          }

          v17 = *v18;
          if (!*v18)
          {
            goto LABEL_14;
          }
        }

        if (v19 >= v16)
        {
          break;
        }

        v17 = v18[1];
        if (!v17)
        {
          goto LABEL_14;
        }
      }

      *(v18 + 10) = *v84;
      *(v18 + 3) = *&v84[8];
      v20 = *(v87 + 10);
      v21 = v87[0];
      v22 = v86;
      *(v18 + 4) = v85;
      *(v18 + 5) = v22;
      *(v18 + 6) = v21;
      *(v18 + 106) = v20;
      v23 = obj;
      objc_storeStrong(v18 + 16, obj);
      *(v18 + 68) = v89;
      v24 = v91;
      *(v18 + 9) = v90;
      *(v18 + 10) = v24;
      *(v18 + 88) = v92;
    }

    v25 = v37[5];
    v26 = v37[6];
    for (k = v35; v25 != v26; v25 += 8)
    {
      v28 = *(*v25 + 8);
      v27 = *(*v25 + 16);
      if (v28 >= v27)
      {
        v29 = *(*v25 + 16);
      }

      else
      {
        v29 = *(*v25 + 8);
      }

      if (v27 < v28)
      {
        v27 = *(*v25 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v47, v29, v27);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=(&v38.n128_i64[1], &v41);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(&v41);
    v3 = v36;
  }

  v30 = v78;
  for (m = v79; v30 != m; v30 += 8)
  {
    v32 = *(*v30 + 8);
    v33 = *(*v30 + 16);
    v41 = vextq_s8(*(*v30 + 24), *(*v30 + 24), 8uLL);
    v42 = v32;
    v43 = v33;
    LOWORD(v44) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v41.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v75);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=((k + 112), &v38);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(&v38.n128_i64[1]);
}

void sub_228F4CBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(&STACK[0x3E0]);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a9);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x390]);
  v15 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x350]);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(STACK[0x340]);

  v16 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v16;
    operator delete(v16);
  }

  objc_destroyWeak((v13 + 88));
  v17 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v17;
    operator delete(v17);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x410]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 96) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 208) = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 216) = 257;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  *(a1 + 376) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 1065353216;
  return a1;
}

void sub_228F4CDA8(_Unwind_Exception *a1)
{
  v5 = v2;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 104) = v7;
    operator delete(v7);
  }

  objc_destroyWeak((v1 + 88));
  v8 = *v4;
  if (*v4)
  {
    *(v1 + 72) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 480);
  if (v2)
  {
    *(a1 + 488) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 432);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 392);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 352);
  v2 = *(a1 + 328);
  if (v2)
  {
    *(a1 + 336) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 288);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(*(a1 + 272));

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  objc_destroyWeak((a1 + 88));
  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  objc_storeStrong(&v26, *(a1 + 640));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(v17);
  *(a1 + 624) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 60), a2 + 30);
  v4 = a2[31].n128_u64[1];
  a2[31].n128_u64[1] = 0;
  v5 = a1[63];
  a1[63] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel((a1 + 128), (a2 + 128));
  v10 = *(a2 + 240);
  v11 = *(a2 + 256);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v10;
  v12 = (a1 + 272);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = v11;
  *(a1 + 264) = a1 + 272;
  v13 = *(a2 + 264);
  if (v13 != (a2 + 272))
  {
    do
    {
      v14 = *v12;
      v15 = (a1 + 272);
      if (*(a1 + 264) == v12)
      {
        goto LABEL_11;
      }

      v16 = *v12;
      v17 = (a1 + 272);
      if (v14)
      {
        do
        {
          v15 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        do
        {
          v15 = v17[2];
          v18 = *v15 == v17;
          v17 = v15;
        }

        while (v18);
      }

      v19 = v13[4];
      if (v15[4] < v19)
      {
LABEL_11:
        if (v14)
        {
          v20 = v15 + 1;
        }

        else
        {
          v20 = (a1 + 272);
        }

        if (!*v20)
        {
LABEL_22:
          operator new();
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_22;
        }

        while (1)
        {
          while (1)
          {
            v21 = v14;
            v22 = v14[4];
            if (v22 <= v19)
            {
              break;
            }

            v14 = *v21;
            if (!*v21)
            {
              goto LABEL_22;
            }
          }

          if (v22 >= v19)
          {
            break;
          }

          v14 = v21[1];
          if (!v14)
          {
            goto LABEL_22;
          }
        }
      }

      v23 = v13[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v13[2];
          v18 = *v24 == v13;
          v13 = v24;
        }

        while (!v18);
      }

      v13 = v24;
    }

    while (v24 != (a2 + 272));
  }

  std::unordered_set<long long>::unordered_set(a1 + 288, a2 + 288);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 328), *(a2 + 328), *(a2 + 336), (*(a2 + 336) - *(a2 + 328)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 352, a2 + 352);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 392, a2 + 392);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 432, a2 + 432);
  return a1;
}

void sub_228F4D580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v11 + 392);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 352);
  v14 = *(v11 + 328);
  if (v14)
  {
    *(v11 + 336) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 288);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(*v12);

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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  *(a1 + 144) = v10;
  objc_storeStrong((a1 + 208), *(a2 + 208));
  *(a1 + 216) = *(a2 + 216);
  v13 = *(a2 + 224);
  v14 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 224) = v13;
  *(a1 + 240) = v14;
  v15 = a1 + 272;
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(*(a1 + 272));
  *(a1 + 264) = *(a2 + 264);
  v16 = *(a2 + 272);
  v17 = *(a2 + 280);
  *(a1 + 272) = v16;
  *(a1 + 280) = v17;
  if (v17)
  {
    *(v16 + 16) = v15;
    *(a2 + 264) = a2 + 272;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
  }

  else
  {
    *(a1 + 264) = v15;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 288, (a2 + 288));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 328, (a2 + 328));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 352, (a2 + 352));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 392, (a2 + 392));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 432, (a2 + 432));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v83 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v81 = a2;
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v83 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(a2 + 328);
      v2 = *(v81 + 336);
      while (v15 != v2)
      {
        v16 = *v15;
        v17 = objc_loadWeakRetained((a1 + 48));
        v18 = [v17 sourceForSourceID:v16];

        if (v18)
        {
          if (([v14 containsObject:v18] & 1) == 0)
          {
            [v14 addObject:v18];
          }
        }

        ++v15;
      }

      v19 = objc_msgSend_copy(v14);
      [v12 _setSources:v19];
    }
  }

  v104[0] = &unk_283BEF6B8;
  v105 = v104;
  v84 = v12;
  LODWORD(v90) = *(v81 + 120);
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(v91, (v81 + 128));
  v20 = *(v81 + 240);
  v92 = *(v81 + 224);
  v93 = v20;
  v94 = *(v81 + 256);
  if (!v105)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v21 = (*(*v105 + 48))(v105, &v90);
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v95, v21);

  HDStatisticsNoiseLevel::finalizeSamples(&v95);
  v86 = *(a1 + 24);
  v22 = _HKStatisticsOptionBaselineRelativeQuantities();
  v23 = *(a1 + 16);
  if ((v22 & v86) != 0)
  {
    [v23 _unitForChangeInCanonicalUnit];
  }

  else
  {
    [v23 canonicalUnit];
  }
  v85 = ;
  if ((v86 & 2) != 0)
  {
    v24 = 0.0;
    if (v96 > 0.0 && v95 > 0.0)
    {
      v24 = log10(v95 / v96) * 10.0;
    }

    v25 = [MEMORY[0x277CCD7E8] quantityWithUnit:v85 doubleValue:v24];
    [v84 setAverageQuantity:v25];
  }

  if ((v86 & 4) != 0)
  {
    v26 = [MEMORY[0x277CCD7E8] quantityWithUnit:v85 doubleValue:v98];
    [v84 setMinimumQuantity:v26];
  }

  if ((v86 & 8) != 0)
  {
    v27 = [MEMORY[0x277CCD7E8] quantityWithUnit:v85 doubleValue:v97];
    [v84 setMaximumQuantity:v27];
  }

  if ((v86 & 0x20) != 0)
  {
    v28 = v101;
    v29 = v102;
    v30 = [MEMORY[0x277CCD7E8] quantityWithUnit:v85 doubleValue:v100];
    [v84 setMostRecentQuantity:v30];

    v31 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v28 end:v29];
    [v84 setMostRecentQuantityDateInterval:v31];
  }

  [v84 setDataCount:v99];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_100;
  }

  if ((v86 & 2) != 0)
  {
    v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v79 = 0;
  }

  if ((v86 & 4) != 0)
  {
    v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v77 = 0;
  }

  if ((v86 & 8) != 0)
  {
    v75 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v75 = 0;
  }

  if ((v86 & 0x20) != 0)
  {
    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v78 = 0;
    v76 = 0;
  }

  v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v88 = 0u;
  v89 = 1065353216;
  v32 = *(v81 + 264);
  if (v32 == (v81 + 272))
  {
    goto LABEL_91;
  }

  do
  {
    v33 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_bundleIdentifierForSourceID(v81, v32[4]);
    v34 = v33;
    if (!v33)
    {
      goto LABEL_68;
    }

    v35 = [v33 hash];
    v36 = v35;
    v2 = __p[1];
    if (!__p[1])
    {
      goto LABEL_66;
    }

    v37 = vcnt_s8(__p[1]);
    v37.i16[0] = vaddlv_u8(v37);
    v38 = v37.u32[0];
    if (v37.u32[0] > 1uLL)
    {
      v39 = v35;
      if (v35 >= __p[1])
      {
        v39 = v35 % __p[1];
      }
    }

    else
    {
      v39 = (__p[1] - 1) & v35;
    }

    v40 = *(__p[0] + v39);
    if (!v40 || (v41 = *v40) == 0)
    {
LABEL_66:
      operator new();
    }

    while (1)
    {
      v42 = v41[1];
      if (v42 == v36)
      {
        break;
      }

      if (v38 > 1)
      {
        if (v42 >= __p[1])
        {
          v42 %= __p[1];
        }
      }

      else
      {
        v42 &= __p[1] - 1;
      }

      if (v42 != v39)
      {
        goto LABEL_66;
      }

LABEL_65:
      v41 = *v41;
      if (!v41)
      {
        goto LABEL_66;
      }
    }

    v43 = v41[2];
    v44 = v34;
    v12 = v44;
    if (v43 != v44)
    {
      v45 = [v43 isEqualToString:v44];

      if (v45)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }

LABEL_67:
    *(v41 + 6) = *(v32 + 10);
    *(v41 + 2) = *(v32 + 3);
    v46 = *(v32 + 4);
    v47 = *(v32 + 5);
    v48 = *(v32 + 6);
    *(v41 + 90) = *(v32 + 106);
    *(v41 + 4) = v47;
    *(v41 + 5) = v48;
    *(v41 + 3) = v46;
    objc_storeStrong(v41 + 14, v32[16]);
    *(v41 + 60) = *(v32 + 68);
    v49 = *(v32 + 9);
    v50 = *(v32 + 10);
    *(v41 + 80) = *(v32 + 88);
    *(v41 + 8) = v49;
    *(v41 + 9) = v50;

LABEL_68:
    v51 = v32[1];
    if (v51)
    {
      do
      {
        v52 = v51;
        v51 = *v51;
      }

      while (v51);
    }

    else
    {
      do
      {
        v52 = v32[2];
        v53 = *v52 == v32;
        v32 = v52;
      }

      while (!v53);
    }

    v32 = v52;
  }

  while (v52 != (v81 + 272));
  for (i = v88; i; i = *i)
  {
    v55 = i[2];
    if (!v105)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v56 = (*(*v105 + 48))(v105, i + 3);
    HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v90, v56);
    HDStatisticsNoiseLevel::finalizeSamples(&v90);
    if ((v86 & 2) != 0)
    {
      v58 = v91[0];
      v59 = 0.0;
      if (v91[0] > 0.0)
      {
        v57 = v90;
        if (v90 > 0.0)
        {
          v59 = log10(v90 / v91[0]) * 10.0;
        }
      }

      v60 = [MEMORY[0x277CCD7E8] quantityWithUnit:v85 doubleValue:{v59, v58, v57}];
      [v79 setObject:v60 forKeyedSubscript:v55];
    }

    if ((v86 & 4) != 0)
    {
      v61 = [MEMORY[0x277CCD7E8] quantityWithUnit:v85 doubleValue:v91[2]];
      [v77 setObject:v61 forKeyedSubscript:v55];
    }

    if ((v86 & 8) != 0)
    {
      v62 = [MEMORY[0x277CCD7E8] quantityWithUnit:v85 doubleValue:v91[1]];
      [v75 setObject:v62 forKeyedSubscript:v55];
    }

    if ((v86 & 0x20) != 0)
    {
      v63 = v91[5];
      v64 = v91[6];
      v65 = [MEMORY[0x277CCD7E8] quantityWithUnit:v85 doubleValue:v91[4]];
      [v76 setObject:v65 forKeyedSubscript:v55];

      v66 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v63 end:v64];
      [v78 setObject:v66 forKeyedSubscript:v55];
    }

    if (!v105)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v105 + 48))(v105, i + 3) + 32)}];
    [v80 setObject:v12 forKeyedSubscript:v55];
  }

LABEL_91:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::~__hash_table(__p);
  if ((v86 & 2) != 0)
  {
    [v84 setAverageQuantityBySource:v79];
  }

  if ((v86 & 4) != 0)
  {
    [v84 setMinimumQuantityBySource:v77];
  }

  if ((v86 & 8) != 0)
  {
    [v84 setMaximumQuantityBySource:v75];
  }

  if ((v86 & 0x20) != 0)
  {
    [v84 setMostRecentQuantityBySource:v76];
    [v84 setMostRecentQuantityDateIntervalBySource:v78];
  }

  [v84 setDataCountBySource:v80];

LABEL_100:
  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)>::~__value_func[abi:ne200100](v104);
  v67 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v68 = [v84 averageQuantity];
  if (v68)
  {
    v12 = [v84 averageQuantity];
    if (([v12 isCompatibleWithUnit:v67] & 1) == 0)
    {

      goto LABEL_114;
    }
  }

  v69 = [v84 minimumQuantity];
  if (v69)
  {
    v2 = [v84 minimumQuantity];
    if (![v2 isCompatibleWithUnit:v67])
    {
      v70 = 1;
      goto LABEL_108;
    }
  }

  v71 = [v84 maximumQuantity];
  if (v71)
  {
    v72 = [v84 maximumQuantity];
    v73 = [v72 isCompatibleWithUnit:v67];

    v70 = v73 ^ 1;
    if (v69)
    {
      goto LABEL_108;
    }

LABEL_112:
    if (!v68)
    {
      goto LABEL_113;
    }

LABEL_109:

    if ((v70 & 1) == 0)
    {
      goto LABEL_115;
    }

LABEL_114:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v67}];
    goto LABEL_115;
  }

  v70 = 0;
  if (!v69)
  {
    goto LABEL_112;
  }

LABEL_108:

  if (v68)
  {
    goto LABEL_109;
  }

LABEL_113:

  if (v70)
  {
    goto LABEL_114;
  }

LABEL_115:

  return v84;
}

void sub_228F4E66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)>::~__value_func[abi:ne200100](v58 - 168);

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 312);
  v2 = *(a1 + 328);
  if (v1 != (*(a1 + 336) - v2) >> 3)
  {
    *(a1 + 336) = v2;
    std::vector<long long>::reserve((a1 + 328), v1);
    for (i = *(a1 + 304); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 328, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 328];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(uint64_t a1, double a2)
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
      v8 = 0xAAAAAAAAAAAAAAABLL * (v7 - v6);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_89;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * (v7 - v6));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v22 = __clz(v8);
      if (WeakRetained)
      {
        *&v70.var0 = a1;
        v23 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, &v70, v24, 1);
      }

      else
      {
        v36 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v36;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, v24, 1);
      if (*(a1 + 25) == 1)
      {
        v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v65 = 0;
      }

      if (v6 != v7)
      {
        v64 = 0;
        v37 = 0;
        for (i = v6; i != v7; i += 3)
        {
          v39 = i[1];
          *&v69.var0 = *i;
          *&v69.var2 = v39;
          *&v69.var4 = i[2].n128_u64[0];
          if (v69.var4 && v69.var1 <= v17)
          {
            var2 = v69.var2;
            if (v69.var2 >= v17)
            {
              var0 = v69.var0;
              v69.var2 = v17;
              v41 = var2 > v17;
              v69.var4 = v69.var1 < v17;
              if (v69.var1 < v17)
              {
                var5 = v69.var5;
                var3 = v69.var3;
                v42 = var2 > v17;
                v43 = v17;
LABEL_57:
                HDStatisticsNoiseLevel::applyMaskToSample(&v69, (a1 + 64));
                v45 = i[2].n128_i8[10];
                v46 = i[2].n128_i8[9];
                v66 = i[2].n128_u8[8];
                if (!v69.var4)
                {
                  goto LABEL_74;
                }

                if (v37)
                {
                  v47 = v69.var3;
                  if (v64 == v69.var3 || *(a1 + 24) == 1)
                  {
                    HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample((a1 + 120), &v69, v45 ^ 1);
                    v45 = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample((a1 + 120), &v69, v45 ^ 1);
                  v45 = 1;
                  v47 = v69.var3;
                  v64 = v69.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_73;
                }

                v48 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_bundleIdentifierForSourceID(a1, v47);
                if (!v48)
                {
                  goto LABEL_72;
                }

                v49 = [v65 objectForKeyedSubscript:v48];
                v63 = v49;
                if (v49)
                {
                  if ([v49 longLongValue] != v47 && *(a1 + 24) != 1)
                  {
LABEL_71:

LABEL_72:
LABEL_73:
                    v37 = 1;
LABEL_74:
                    if (v42)
                    {
                      v70.var0 = var0;
                      v70.var1 = v43;
                      v70.var2 = var2;
                      v70.var3 = var3;
                      v70.var4 = v41;
                      v70.var5 = var5;
                      LOBYTE(v71) = v66;
                      BYTE1(v71) = v46;
                      BYTE2(v71) = v45;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v70);
                    }

                    continue;
                  }
                }

                else
                {
                  v62 = [MEMORY[0x277CCABB0] numberWithLongLong:v47];
                  [v65 setObject:v62 forKeyedSubscript:v48];
                }

                v50 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_canonicalSourceIDForSourceID(a1, v47);
                v51 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsForSource(a1, v50);
                HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample(v51, &v69, v46 ^ 1);
                v46 = 1;
                goto LABEL_71;
              }
            }

            else
            {
              v69.var4 = v69.var2 > v69.var1;
              if (v69.var2 > v69.var1)
              {
                v41 = 0;
                v42 = 0;
                var3 = 0;
                var5 = 0;
                var2 = 0.0;
                v43 = 0.0;
                var0 = 0.0;
                goto LABEL_57;
              }
            }
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_90:
      v59 = *(a1 + 56);
      if (v59 == v5)
      {
        v60 = [MEMORY[0x277CCA890] currentHandler];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsNoiseLevel>]"];
        [v60 handleFailureInFunction:v61 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v59 = *(a1 + 56);
      }

      v5 = v59;
      if (v59 >= a2)
      {
        return;
      }
    }

    v25 = v6->n128_f64[1];
    v26 = v6[1].n128_f64[0];
    v27 = v6[1].n128_i64[1];
    v28 = v6[2].n128_u8[0];
    v29 = 0.0;
    v30 = v6[2].n128_u8[1];
    if (v28)
    {
      if (v25 > a2)
      {
        v28 = 0;
        v31 = v26 > v25;
        v32 = v6[1].n128_f64[0];
        v33 = v6[2].n128_u8[1];
        v29 = v6->n128_f64[0];
        v34 = v6->n128_f64[1];
LABEL_81:
        v35 = v6[1].n128_u64[1];
        goto LABEL_82;
      }

      if (v26 >= a2)
      {
        v28 = v25 < a2;
        v31 = v26 > a2;
        v32 = a2;
        v33 = v6[2].n128_u8[1];
        v29 = v6->n128_f64[0];
        v34 = a2;
        goto LABEL_81;
      }

      v33 = 0;
      v35 = 0;
      v31 = 0;
      v28 = v26 > v25;
    }

    else
    {
      v33 = 0;
      v35 = 0;
      v31 = 0;
    }

    v32 = v6[1].n128_f64[0];
    v34 = 0.0;
    v26 = 0.0;
LABEL_82:
    v52 = v6[2].n128_i8[10];
    v53 = v6[2].n128_i8[9];
    v54 = v6[2].n128_i8[8];
    *&v70.var0 = v6->n128_u64[0];
    v70.var1 = v25;
    v70.var2 = v32;
    v70.var3 = v27;
    v70.var4 = v28;
    v70.var5 = v30;
    *(&v70.var5 + 1) = *(v6[2].n128_u32 + 2);
    *(&v70.var5 + 5) = v6[2].n128_u16[3];
    *&v71 = v29;
    *(&v71 + 1) = v34;
    *&v72 = v26;
    *(&v72 + 1) = v35;
    LOBYTE(v73) = v31;
    HIBYTE(v73) = v33;
    HDStatisticsNoiseLevel::applyMaskToSample(&v70, (a1 + 64));
    if (v70.var4)
    {
      HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample((a1 + 120), &v70, v52 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v55 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_canonicalSourceIDForSourceID(a1, v70.var3);
        v56 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsForSource(a1, v55);
        HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample(v56, &v70, v53 ^ 1);
      }

      v54 = 1;
      v53 = 1;
      v52 = 1;
    }

    if (v73 == 1)
    {
      *&v69.var4 = v73;
      v57 = v72;
      v58 = *(a1 + 96);
      *v58 = v71;
      *(v58 + 16) = v57;
      *(v58 + 32) = *&v69.var4;
      *(v58 + 40) = v54;
      *(v58 + 41) = v53;
      *(v58 + 42) = v52;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_89:
    *(a1 + 56) = a2;
    goto LABEL_90;
  }
}

void HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample(int *a1, const HDRawQuantitySample *a2, char a3)
{
  v4 = a2;
  if (a2->var0 == 1.79769313e308)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (a2->var0 != -1.79769313e308);
  }

  v7 = *a1;
  if (!v6)
  {
    if (v7 || *(a1 + 5))
    {
      return;
    }

    v8 = (a1 + 2);
    goto LABEL_18;
  }

  if (v6 == 1)
  {
    if (v7)
    {
      return;
    }

    *a1 = 1;
    goto LABEL_14;
  }

  if (v7 != 2)
  {
    *a1 = 2;
LABEL_14:
    v10 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    *(a1 + 2) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 66) = 0u;
    v11 = *(a1 + 11);
    *(a1 + 11) = v10;
    v12 = v10;

    *(a1 + 48) = 257;
    if (!*(a1 + 80) || *(a1 + 7) <= *(a1 + 14))
    {
      v13 = *(a1 + 30);
      *(a1 + 3) = *(a1 + 26);
      *(a1 + 4) = v13;
      *(a1 + 40) = *(a1 + 68);
    }

    v8 = (a1 + 2);
LABEL_18:
    a2 = v4;
    v9 = a3;
    goto LABEL_19;
  }

  v8 = (a1 + 2);
  v9 = 1;
LABEL_19:

  HDStatisticsNoiseLevel::addSample(v8, a2, v9);
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 272);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 272);
  v5 = (a1 + 272);
  do
  {
    if (v3[4] >= a2)
    {
      v5 = v3;
    }

    v3 = v3[v3[4] < a2];
  }

  while (v3);
  if (v5 == v4 || v5[4] > a2)
  {
LABEL_8:
    v8 = &v7;
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 264), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 264), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 352), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 392), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 392), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 432), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 432), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t *std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t *a1, uint64_t a2, void **a3)
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
      v5 = *(v3 + 32);
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

void sub_228F4F604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
{
  if (a1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>> const&)::{lambda(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>> const&)::{lambda(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)#1}>,HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 624) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 624))
    {
      v10 = -1.79769313e308;
    }

    else
    {
      v10 = *(a1 + 176);
      v12 = *(a1 + 120);
      if (v10 <= v12)
      {
        v10 = -1.79769313e308;
      }

      if (v10 < v12)
      {
        v10 = *(a1 + 120);
      }
    }
  }

  else
  {
    v10 = *(a1 + 176);
    if (v10 <= *(a1 + 120))
    {
      v10 = -1.79769313e308;
    }
  }

  if (v8 >= v10)
  {
    if (v9 && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 600);
    v5 = *(a1 + 592);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::addSample(uint64_t a1, double *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a2 + 3);
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v9 = a1 + 8;
  v10 = *(a1 + 8);
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  if (v7)
  {
    if (v4 > v10)
    {
      *&v32 = v3;
      *(&v32 + 1) = v4;
      *&v33 = v5;
      *(&v33 + 1) = v6;
      HIBYTE(v34) = v8;
      LOBYTE(v34) = v5 > v4;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0;
      v10 = v4;
      if (v5 <= v4)
      {
        return;
      }

LABEL_7:
      v13 = *(a1 + 16);
      if (v10 > v13)
      {
        v25 = v32;
        v26 = v33;
        HIBYTE(v27) = HIBYTE(v34);
        LOBYTE(v27) = *&v33 > *(&v32 + 1);
        if (*&v33 <= *(&v32 + 1))
        {
          return;
        }

        goto LABEL_39;
      }

      if (v5 >= v13)
      {
        *&v25 = v32;
        v26 = v33;
        HIBYTE(v27) = HIBYTE(v34);
        *&v33 = v13;
        *(&v25 + 1) = v13;
        v14 = *&v26 > v13;
        LOBYTE(v34) = v10 < v13;
        LOBYTE(v27) = *&v26 > v13;
        if (v10 >= v13)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v14 = 0;
        LOBYTE(v34) = v5 > v10;
        LOBYTE(v27) = 0;
        v13 = v5;
        if (v5 <= v10)
        {
          return;
        }
      }

      v23 = v13;
      v24 = v10;
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 296), v6, &v33 + 1);
      if (*(a1 + 112) == *(a1 + 104) && *(a1 + 168) <= 0)
      {
        v18.f64[1] = *(a1 + 16);
        v15 = v24;
        v18.f64[0] = v24;
        v19.f64[0] = *(a1 + 8);
        v19.f64[1] = v23;
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

        if (v23 > *(a1 + 56))
        {
          v17 = *(a1 + 16);
          if (v17 >= v23)
          {
            v17 = v23;
          }

          *(a1 + 56) = v17;
        }
      }

      if (a3 && v15 < *(a1 + 16))
      {
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(v9, v15);
      }

      v28[0] = v32;
      v28[1] = v33;
      v29 = v34;
      v30 = 0;
      v31 = 0;
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v28);
      if (!*(a1 + 264) || *(a1 + 240) <= v4)
      {
        *(a1 + 232) = v3;
        *(a1 + 240) = v4;
        *(a1 + 248) = v5;
        *(a1 + 256) = v6;
        *(a1 + 264) = v7;
        *(a1 + 265) = v8;
        if (!*(a1 + 208) || *(a1 + 184) <= v4)
        {
          *(a1 + 176) = v3;
          *(a1 + 184) = v4;
          *(a1 + 192) = v5;
          *(a1 + 200) = v6;
          *(a1 + 208) = v7;
          *(a1 + 209) = v8;
        }
      }

      if (*(a1 + 33) == 1)
      {
        v21 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_canonicalSourceIDForSourceID(v9, v6);
        v22 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsForSource(v9, v21);
        if (!*(v22 + 136) || *(v22 + 14) <= v4)
        {
          v22[13] = v3;
          *(v22 + 14) = v4;
          *(v22 + 15) = v5;
          v22[16] = v6;
          *(v22 + 136) = v7;
          *(v22 + 137) = v8;
          if (!*(v22 + 80) || *(v22 + 7) <= v4)
          {
            v22[6] = v3;
            *(v22 + 7) = v4;
            *(v22 + 8) = v5;
            v22[9] = v6;
            *(v22 + 80) = v7;
            *(v22 + 81) = v8;
            if (!v14)
            {
              return;
            }

LABEL_39:
            std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 480, &v25);
            return;
          }
        }
      }

LABEL_38:
      if (!v14)
      {
        return;
      }

      goto LABEL_39;
    }

    if (v5 >= v10)
    {
      *(&v32 + 1) = v10;
      *&v33 = v5;
      *(&v33 + 1) = v6;
      HIBYTE(v34) = v8;
      *&v32 = v3;
      LOBYTE(v34) = v5 > v10;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0;
      if (v5 > v10)
      {
        goto LABEL_7;
      }
    }
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 626) == 1)
  {
    *(a1 + 628) = 1;
  }

  else
  {
    *(a1 + 628) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 480), *(a1 + 488), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 488) - *(a1 + 480)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F500EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 504), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  v9 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(v8 + 88) = 0;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 154) = 0u;
  v10 = *(v8 + 176);
  *(v8 + 176) = v9;
  v11 = v9;

  *(v8 + 184) = 257;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0;

  if (*(v8 + 248))
  {
    v12 = *(a1 + 272);
    v13 = *(a1 + 280);
    *(a1 + 272) = a1 + 280;
    *(v13 + 16) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
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

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(v14);
        for (i = v15[2]; i; i = i[2])
        {
          v15 = i;
        }

        v14 = v15;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(v14);
  }

  objc_storeStrong(v8, *(a1 + 504));
  *(a1 + 488) = *(a1 + 480);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 628) == 1)
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

    *(a1 + 628) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F50380(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 624) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F507D0(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40A217D420);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::advanceBucket(v15 + 112, v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 628) == 1)
          {
            *(v15 + 628) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32);
  if (v9 >= a6)
  {
    if (v9 <= a7)
    {
      v10 = v9 < a7;
      a6 = *(a1 + 32);
    }

    else
    {
      a2 = 0;
      v10 = 0;
      a5 = 0.0;
      a6 = 0.0;
      a7 = 0.0;
    }
  }

  else
  {
    v10 = a7 > a6;
  }

  v20 = v7;
  v21 = v8;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a2;
  v18 = v10;
  v19 = 0;
  if (*(a1 + 56))
  {
    if (v10)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  v12 = *(a1 + 40);
  if (a6 > v12)
  {
    v10 = 0;
  }

  if (v10)
  {
    v13 = a7 > a6;
    if (a7 >= v12)
    {
      v13 = a6 < v12;
    }

    else
    {
      v12 = a7;
    }

    v15 = a6;
    v16 = v12;
    v18 = v13;
    if (v13)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 624) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsNoiseLevel>::archive(uint64_t a1, int *a2)
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
  HDStatisticsNoiseLevel::archive((a2 + 2), v6);
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = *a2;
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(*(a2 + 26), *(a2 + 26), 8uLL);
  v6[1] = *(a2 + 15);
  v6[2] = *(a2 + 16);
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

double HDStatisticsRelative<HDStatisticsNoiseLevel>::unarchive(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 66) = 0u;
  v6 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 88) = v6;
  *(a1 + 96) = 257;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  v8 = a2[16];
  if (v8)
  {
    HDStatisticsNoiseLevel::unarchive(v8, v5);
    v4[2] = v13;
    v4[3] = *v14;
    *(v4 + 58) = *&v14[10];
    *v4 = v11;
    v4[1] = v12;
    *(a1 + 88) = v15;

    *(a1 + 96) = v16;
  }

  *a1 = a2[17];
  v9 = a2[14];
  if (v9)
  {
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    *(a1 + 104) = vextq_s8(*(v9 + 24), *(v9 + 24), 8uLL);
    *(a1 + 120) = result;
    *(a1 + 128) = v10;
    *(a1 + 136) = 1;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEF768;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 104) = 0;
  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 112) = 0;
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 1;
  *(a1 + 578) = 0;
  *(a1 + 580) = 0;
  *(a1 + 584) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  return a1;
}

void sub_228F512F0(_Unwind_Exception *a1)
{
  v3 = v2;
  objc_destroyWeak(v3);

  v5 = *(v1 + 72);
  if (v5)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(v1);
  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEF768;
  v2 = *(a1 + 608);
  if (v2)
  {
    *(a1 + 616) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 544);
  if (v3)
  {
    *(a1 + 552) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 576) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 584) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 592), a2);
  v7 = a2;
  v4 = *(a1 + 592);
  v5 = *(a1 + 568);
  *(a1 + 568) = v4;
  v6 = v4;

  HDStatisticsBucket<HDStatisticsNoiseLevel>::setStatisticsConfiguration(a1 + 120, *(a1 + 568));
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 272) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 576))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsNoiseLevel>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(v4);
  }

  return v1;
}

void sub_228F51754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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

    goto LABEL_23;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 578) == 1)
    {
      if (*(a1 + 577))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 576))
        {
          v15 = -1.79769313e308;
        }

        else
        {
          v16 = *(a1 + 176);
          v15 = *(a1 + 120);
          if (v16 <= v15)
          {
            v16 = -1.79769313e308;
          }

          if (v16 >= v15)
          {
            v15 = v16;
          }
        }
      }

      else
      {
        v15 = -1.79769313e308;
        if (*(a1 + 176) > *(a1 + 120))
        {
          v15 = *(a1 + 176);
        }
      }

      if (v15 > *(a2 + 8))
      {
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 579) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 608, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 578) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 578) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 577))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 600);
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

  [v9 sortUsingComparator:&__block_literal_global_892];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 600);
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
  v27 = *(a1 + 600);
  *(a1 + 600) = 0;

  *(a1 + 577) = 0;
  if (v8)
  {
    v28 = *(a1 + 608);
    *(a1 + 624) = 0;
    *(a1 + 616) = 0;
    *(a1 + 608) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v68 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 608);
      v39 = *(a1 + 616);
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
            v39 = *(a1 + 616);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 616) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 608);
  v29 = *(a1 + 616);
  *(a1 + 624) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveInvalidateInterval(a1, v49, v67);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveInvalidateInterval(a1, 0, v67))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 552) != *(a1 + 544))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsNoiseLevel>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 578) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 580) == 1)
    {
      *(a1 + 580) = 0;
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_notifyForCurrentBucket(a1);
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
  *(a1 + 578) = 0;
LABEL_81:

  return v7;
}

void sub_228F5200C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 578) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 578))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 578) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 600);
    *(a1 + 600) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 577) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 577) & 1) == 0)
  {
    v8 = *(a1 + 600);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 600);
      *(a1 + 600) = v9;

      v8 = *(a1 + 600);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 576) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 576) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 576) forKey:@"needs_config"];
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
  HDStatisticsNoiseLevel::archive((a1 + 240), &v32);
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 336);
  if (v9 != a1 + 344)
  {
    HDStatisticsNoiseLevel::archive((v9 + 40), &v32);
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
  v12 = *(a1 + 544);
  if (v12 != *(a1 + 552))
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

void sub_228F52854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v33 = a2;
  *(a1 + 576) = [v33 decodeBoolForKey:@"needs_config"];
  v3 = v33;
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(&v35.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v37 = 0u;
  v72 = 0;
  PB::Reader::Reader(v71, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v72]);
  v64 = &unk_283BF1A08;
  v65 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v70 = 0;
  statistics::StatisticsEngine::readFrom(&v64, v71);
  v4 = v65;
  v35.n128_u64[0] = v66;
  if (v65)
  {
    v41 = 0;
    memset(v44, 0, sizeof(v44));
    memset(v45, 0, sizeof(v45));
    v46 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    v47 = 257;
    v49[1] = 0;
    v49[0] = 0;
    v48 = v49;
    v50 = 0u;
    v51 = 0u;
    v52 = 1065353216;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v57 = 1065353216;
    v58 = 0u;
    v59 = 0u;
    v60 = 1065353216;
    v61 = 0u;
    v62 = 0u;
    v63 = 1065353216;
    v38 = vextq_s8(*(v4 + 8), *(v4 + 8), 8uLL);
    v6 = *(v4 + 72);
    v39 = *(v4 + 64);
    LOWORD(v40) = *(v4 + 185);
    v42 = vextq_s8(*(v4 + 24), *(v4 + 24), 8uLL);
    v43 = v6;
    v7 = *(v4 + 80);
    for (i = *(v4 + 88); v7 != i; ++v7)
    {
      v9 = *v7;
      LOWORD(v75) = 1;
      BYTE8(v75) = 0;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v73 = vextq_s8(*(v9 + 24), *(v9 + 24), 8uLL);
      *&v74 = v10;
      *(&v74 + 1) = v11;
      BYTE9(v75) = *(v9 + 41);
      BYTE10(v75) = *(v9 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v45, v73.i8);
    }

    v34 = a1;
    v12 = *(v4 + 104);
    if (v12)
    {
      HDStatisticsNoiseLevel::unarchive(v12, v5);
      *&v45[40] = v74;
      *&v45[56] = v75;
      *&v45[72] = v76[0];
      *&v45[82] = *(v76 + 10);
      *&v45[24] = v73;
      objc_storeStrong(&v46, v77);
      v47 = v78;
    }

    v14 = *(v4 + 136);
    for (j = *(v4 + 144); v14 != j; ++v14)
    {
      v15 = *v14;
      HDStatisticsNoiseLevel::unarchive(*v14, v5);
      v16 = *(v15 + 18);
      v17 = v49[0];
      if (!v49[0])
      {
LABEL_14:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v18 = v17;
          v19 = v17[4];
          if (v19 <= v16)
          {
            break;
          }

          v17 = *v18;
          if (!*v18)
          {
            goto LABEL_14;
          }
        }

        if (v19 >= v16)
        {
          break;
        }

        v17 = v18[1];
        if (!v17)
        {
          goto LABEL_14;
        }
      }

      v20 = *(v76 + 10);
      v22 = v75;
      v21 = v76[0];
      v23 = v73;
      *(v18 + 7) = v74;
      *(v18 + 9) = v22;
      *(v18 + 11) = v21;
      *(v18 + 98) = v20;
      *(v18 + 5) = v23;
      objc_storeStrong(v18 + 15, v77);
      *(v18 + 64) = v78;
    }

    a1 = v34;
    v24 = *(v4 + 40);
    for (k = *(v4 + 48); v24 != k; v24 += 8)
    {
      v27 = *(*v24 + 8);
      v26 = *(*v24 + 16);
      if (v27 >= v26)
      {
        v28 = *(*v24 + 16);
      }

      else
      {
        v28 = *(*v24 + 8);
      }

      if (v26 < v27)
      {
        v26 = *(*v24 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v44, v28, v26);
    }

    HDStatisticsBucket<HDStatisticsNoiseLevel>::operator=(&v35.n128_i64[1], &v38);
    HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(&v38);
  }

  v29 = v67;
  for (m = v68; v29 != m; v29 += 8)
  {
    v31 = *(*v29 + 8);
    v32 = *(*v29 + 16);
    v38 = vextq_s8(*(*v29 + 24), *(*v29 + 24), 8uLL);
    v39 = v31;
    v40 = v32;
    LOWORD(v41) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v38.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v64);

  HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::operator=((a1 + 112), &v35);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(&v35.n128_i64[1]);
}

void sub_228F52DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(&STACK[0x380]);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a9);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x330]);
  v15 = STACK[0x318];
  if (STACK[0x318])
  {
    STACK[0x320] = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x2F0]);
  std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(STACK[0x2E0]);

  v16 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v16;
    operator delete(v16);
  }

  objc_destroyWeak((v13 + 88));
  v17 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v17;
    operator delete(v17);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3B0]);
  HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 208) = 257;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 328) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  return a1;
}

void sub_228F52FC4(_Unwind_Exception *a1)
{
  v5 = v2;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 104) = v7;
    operator delete(v7);
  }

  objc_destroyWeak((v1 + 88));
  v8 = *v4;
  if (*v4)
  {
    *(v1 + 72) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 384);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 344);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 304);
  v2 = *(a1 + 280);
  if (v2)
  {
    *(a1 + 288) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 240);
  std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(*(a1 + 224));

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  objc_destroyWeak((a1 + 88));
  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  HDStatisticsBucket<HDStatisticsNoiseLevel>::setStatisticsConfiguration(v21, *(a1 + 592));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v27;
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(v17);
  *(a1 + 576) = 0;
  return HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(v21);
}

void HDStatisticsBucket<HDStatisticsNoiseLevel>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 32), a2);
  v4 = a2;
  HDStatisticsNoiseLevel::configure((a1 + 120), v4);
}

void *HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsNoiseLevel>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 54), a2 + 27);
  v4 = a2[28].n128_u64[1];
  a2[28].n128_u64[1] = 0;
  v5 = a1[57];
  a1[57] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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

  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel((a1 + 120), (a2 + 120));
  *(a1 + 224) = 0;
  v10 = (a1 + 224);
  *(a1 + 216) = a1 + 224;
  *(a1 + 232) = 0;
  v11 = *(a2 + 216);
  if (v11 != (a2 + 224))
  {
    do
    {
      v12 = *v10;
      v13 = (a1 + 224);
      if (*(a1 + 216) == v10)
      {
        goto LABEL_11;
      }

      v14 = *v10;
      v15 = (a1 + 224);
      if (v12)
      {
        do
        {
          v13 = v14;
          v14 = v14[1];
        }

        while (v14);
      }

      else
      {
        do
        {
          v13 = v15[2];
          v16 = *v13 == v15;
          v15 = v13;
        }

        while (v16);
      }

      v17 = v11[4];
      if (v13[4] < v17)
      {
LABEL_11:
        if (v12)
        {
          v18 = v13 + 1;
        }

        else
        {
          v18 = (a1 + 224);
        }

        if (!*v18)
        {
LABEL_22:
          operator new();
        }
      }

      else
      {
        if (!v12)
        {
          goto LABEL_22;
        }

        while (1)
        {
          while (1)
          {
            v19 = v12;
            v20 = v12[4];
            if (v20 <= v17)
            {
              break;
            }

            v12 = *v19;
            if (!*v19)
            {
              goto LABEL_22;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v12 = v19[1];
          if (!v12)
          {
            goto LABEL_22;
          }
        }
      }

      v21 = v11[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v11[2];
          v16 = *v22 == v11;
          v11 = v22;
        }

        while (!v16);
      }

      v11 = v22;
    }

    while (v22 != (a2 + 224));
  }

  std::unordered_set<long long>::unordered_set(a1 + 240, a2 + 240);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 280), *(a2 + 280), *(a2 + 288), (*(a2 + 288) - *(a2 + 280)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 304, a2 + 304);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 344, a2 + 344);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 384, a2 + 384);
  return a1;
}

void sub_228F537E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v11 + 344);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 304);
  v14 = *(v11 + 280);
  if (v14)
  {
    *(v11 + 288) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 240);
  std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(*v12);

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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsNoiseLevel>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsNoiseLevel>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsNoiseLevel>::operator=(uint64_t a1, uint64_t a2)
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
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 178);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 178) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 120) = *(a2 + 120);
  objc_storeStrong((a1 + 200), *(a2 + 200));
  v14 = a1 + 224;
  v13 = *(a1 + 224);
  *(a1 + 208) = *(a2 + 208);
  std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(v13);
  *(a1 + 216) = *(a2 + 216);
  v16 = *(a2 + 224);
  v17 = *(a2 + 232);
  v15 = (a2 + 224);
  *(a1 + 224) = v16;
  *(a1 + 232) = v17;
  if (v17)
  {
    *(v16 + 16) = v14;
    *(a2 + 216) = v15;
    *v15 = 0;
    *(a2 + 232) = 0;
  }

  else
  {
    *(a1 + 216) = v14;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 240, (a2 + 240));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 280, (a2 + 280));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 304, (a2 + 304));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 344, (a2 + 344));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 384, (a2 + 384));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
{
  v101 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 5;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v74 = [v5 initWithTimeIntervalSinceReferenceDate:a2[v6]];
  v76 = a2;
  if (a2[1] == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a2[6]];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a2[1]];
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v74 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(v76 + 35);
      v16 = *(v76 + 36);
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

  v99[0] = &unk_283BEF838;
  v100 = v99;
  v75 = v12;
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v82, (v76 + 15));
  if (!v100)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v21 = (*(*v100 + 48))(v100, &v82);
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v90, v21);

  HDStatisticsNoiseLevel::finalizeSamples(&v90);
  v78 = *(a1 + 24);
  v22 = _HKStatisticsOptionBaselineRelativeQuantities();
  v23 = *(a1 + 16);
  if ((v22 & v78) != 0)
  {
    [v23 _unitForChangeInCanonicalUnit];
  }

  else
  {
    [v23 canonicalUnit];
  }
  v77 = ;
  if ((v78 & 2) != 0)
  {
    v24 = 0.0;
    if (v91 > 0.0 && v90 > 0.0)
    {
      v24 = log10(v90 / v91) * 10.0;
    }

    v25 = [MEMORY[0x277CCD7E8] quantityWithUnit:v77 doubleValue:v24];
    [v75 setAverageQuantity:v25];
  }

  if ((v78 & 4) != 0)
  {
    v26 = [MEMORY[0x277CCD7E8] quantityWithUnit:v77 doubleValue:v93];
    [v75 setMinimumQuantity:v26];
  }

  if ((v78 & 8) != 0)
  {
    v27 = [MEMORY[0x277CCD7E8] quantityWithUnit:v77 doubleValue:v92];
    [v75 setMaximumQuantity:v27];
  }

  if ((v78 & 0x20) != 0)
  {
    v28 = v96;
    v29 = v97;
    v30 = [MEMORY[0x277CCD7E8] quantityWithUnit:v77 doubleValue:v95];
    [v75 setMostRecentQuantity:v30];

    v31 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v28 end:v29];
    [v75 setMostRecentQuantityDateInterval:v31];
  }

  [v75 setDataCount:v94];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_100;
  }

  if ((v78 & 2) != 0)
  {
    v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v72 = 0;
  }

  if ((v78 & 4) != 0)
  {
    v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v70 = 0;
  }

  if ((v78 & 8) != 0)
  {
    v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v68 = 0;
  }

  if ((v78 & 0x20) != 0)
  {
    v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v71 = 0;
    v69 = 0;
  }

  v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v80 = 0u;
  v81 = 1065353216;
  v32 = *(v76 + 27);
  if (v32 == v76 + 28)
  {
    goto LABEL_91;
  }

  do
  {
    v33 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_bundleIdentifierForSourceID(v76, *(v32 + 4));
    v34 = v33;
    if (!v33)
    {
      goto LABEL_68;
    }

    v35 = [v33 hash];
    v36 = v35;
    if (!__p[1])
    {
      goto LABEL_66;
    }

    v37 = vcnt_s8(__p[1]);
    v37.i16[0] = vaddlv_u8(v37);
    v38 = v37.u32[0];
    if (v37.u32[0] > 1uLL)
    {
      v39 = v35;
      if (v35 >= __p[1])
      {
        v39 = v35 % __p[1];
      }
    }

    else
    {
      v39 = (__p[1] - 1) & v35;
    }

    v40 = *(__p[0] + v39);
    if (!v40 || (v41 = *v40) == 0)
    {
LABEL_66:
      operator new();
    }

    while (1)
    {
      v42 = v41[1];
      if (v42 == v36)
      {
        break;
      }

      if (v38 > 1)
      {
        if (v42 >= __p[1])
        {
          v42 %= __p[1];
        }
      }

      else
      {
        v42 &= __p[1] - 1;
      }

      if (v42 != v39)
      {
        goto LABEL_66;
      }

LABEL_65:
      v41 = *v41;
      if (!v41)
      {
        goto LABEL_66;
      }
    }

    v43 = v41[2];
    v44 = v34;
    v45 = v44;
    if (v43 != v44)
    {
      v46 = [v43 isEqualToString:v44];

      if (v46)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }

LABEL_67:
    *(v41 + 3) = *(v32 + 5);
    v47 = *(v32 + 7);
    v48 = *(v32 + 9);
    v49 = *(v32 + 11);
    *(v41 + 82) = *(v32 + 98);
    *(v41 + 9) = v49;
    *(v41 + 7) = v48;
    *(v41 + 5) = v47;
    objc_storeStrong(v41 + 13, *(v32 + 15));
    *(v41 + 56) = *(v32 + 64);

LABEL_68:
    v50 = *(v32 + 1);
    if (v50)
    {
      do
      {
        v51 = v50;
        v50 = *v50;
      }

      while (v50);
    }

    else
    {
      do
      {
        v51 = *(v32 + 2);
        v52 = *v51 == v32;
        v32 = v51;
      }

      while (!v52);
    }

    v32 = v51;
  }

  while (v51 != v76 + 28);
  for (i = v80; i; i = *i)
  {
    v54 = i[2];
    if (!v100)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v55 = (*(*v100 + 48))(v100, i + 3);
    HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v82, v55);
    HDStatisticsNoiseLevel::finalizeSamples(&v82);
    if ((v78 & 2) != 0)
    {
      v57 = v83;
      v58 = 0.0;
      if (v83 > 0.0)
      {
        v56 = v82;
        if (v82 > 0.0)
        {
          v58 = log10(v82 / v83) * 10.0;
        }
      }

      v59 = [MEMORY[0x277CCD7E8] quantityWithUnit:v77 doubleValue:{v58, v57, v56}];
      [v72 setObject:v59 forKeyedSubscript:v54];
    }

    if ((v78 & 4) != 0)
    {
      v60 = [MEMORY[0x277CCD7E8] quantityWithUnit:v77 doubleValue:v85];
      [v70 setObject:v60 forKeyedSubscript:v54];
    }

    if ((v78 & 8) != 0)
    {
      v61 = [MEMORY[0x277CCD7E8] quantityWithUnit:v77 doubleValue:v84];
      [v68 setObject:v61 forKeyedSubscript:v54];
    }

    if ((v78 & 0x20) != 0)
    {
      v62 = v87;
      v63 = v88;
      v64 = [MEMORY[0x277CCD7E8] quantityWithUnit:v77 doubleValue:v86];
      [v69 setObject:v64 forKeyedSubscript:v54];

      v65 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v62 end:v63];
      [v71 setObject:v65 forKeyedSubscript:v54];
    }

    if (!v100)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v66 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v100 + 48))(v100, i + 3) + 32)}];
    [v73 setObject:v66 forKeyedSubscript:v54];
  }

LABEL_91:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>>>::~__hash_table(__p);
  if ((v78 & 2) != 0)
  {
    [v75 setAverageQuantityBySource:v72];
  }

  if ((v78 & 4) != 0)
  {
    [v75 setMinimumQuantityBySource:v70];
  }

  if ((v78 & 8) != 0)
  {
    [v75 setMaximumQuantityBySource:v68];
  }

  if ((v78 & 0x20) != 0)
  {
    [v75 setMostRecentQuantityBySource:v69];
    [v75 setMostRecentQuantityDateIntervalBySource:v71];
  }

  [v75 setDataCountBySource:v73];

LABEL_100:
  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsNoiseLevel const&)>::~__value_func[abi:ne200100](v99);

  return v75;
}