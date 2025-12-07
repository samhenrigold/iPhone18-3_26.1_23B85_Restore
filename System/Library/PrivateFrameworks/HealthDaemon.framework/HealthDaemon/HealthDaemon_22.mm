uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::operator=(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  v13 = *(a2 + 232);
  v14 = *(a2 + 248);
  v15 = *(a2 + 264);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 264) = v15;
  *(a1 + 248) = v14;
  *(a1 + 232) = v13;
  v16 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v16;
  v17 = a1 + 288;
  std::__tree<long>::destroy(*(a1 + 288));
  *(a1 + 280) = *(a2 + 280);
  v18 = *(a2 + 288);
  v19 = *(a2 + 296);
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  if (v19)
  {
    *(v18 + 16) = v17;
    *(a2 + 280) = a2 + 288;
    *(a2 + 288) = 0;
    *(a2 + 296) = 0;
  }

  else
  {
    *(a1 + 280) = v17;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 304, (a2 + 304));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 344, (a2 + 344));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 368, (a2 + 368));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 408, (a2 + 408));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 448, (a2 + 448));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v105 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v89 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v87 = a2;
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v89 endDate:v8];
  v13 = a1;
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 344);
      v17 = *(a2 + 352);
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

      v2 = objc_msgSend_copy(v15);
      [v12 _setSources:v2];

      v13 = a1;
    }
  }

  v103[0] = &unk_283BEDE18;
  v104 = v103;
  v90 = v12;
  v92 = *(v13 + 24);
  v21 = *(v87 + 232);
  v99 = *(v87 + 216);
  v100 = v21;
  v22 = *(v87 + 264);
  v101 = *(v87 + 248);
  v102 = v22;
  v23 = *(v87 + 168);
  v95 = *(v87 + 152);
  v96 = v23;
  v24 = *(v87 + 200);
  v97 = *(v87 + 184);
  v98 = v24;
  v25 = *(v87 + 136);
  *__p = *(v87 + 120);
  v94 = v25;
  if (!v104)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v26 = (*(*v104 + 48))(v104, __p);
  v28 = v26[5];
  v27 = v26[6];
  v29 = v26[7];
  v30 = *(v26 + 8);
  v32 = v26[9];
  v31 = v26[10];
  v33 = v26[11];
  v34 = *(a1 + 24);
  v35 = _HKStatisticsOptionBaselineRelativeQuantities();
  v36 = *(a1 + 16);
  if ((v35 & v34) != 0)
  {
    [v36 _unitForChangeInCanonicalUnit];
  }

  else
  {
    [v36 canonicalUnit];
  }
  v91 = ;
  if ((v92 & 2) != 0)
  {
    v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v91 doubleValue:v28];
    [v90 setAverageQuantity:v12];
  }

  if ((v92 & 4) != 0)
  {
    v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v91 doubleValue:v29];
    [v90 setMinimumQuantity:v12];
  }

  if ((v92 & 8) != 0)
  {
    v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v91 doubleValue:v27];
    [v90 setMaximumQuantity:v12];
  }

  if ((v92 & 0x20) != 0)
  {
    v37 = [MEMORY[0x277CCD7E8] quantityWithUnit:v91 doubleValue:v32];
    [v90 setMostRecentQuantity:v37];

    v12 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v31 end:v33];
    [v90 setMostRecentQuantityDateInterval:v12];
  }

  [v90 setDataCount:v30];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_99;
  }

  if ((v92 & 2) != 0)
  {
    v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v84 = 0;
  }

  if ((v92 & 4) != 0)
  {
    v83 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v83 = 0;
  }

  if ((v92 & 8) != 0)
  {
    v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v81 = 0;
  }

  if ((v92 & 0x20) != 0)
  {
    v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v82 = 0;
    v80 = 0;
  }

  v86 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v94 = 0u;
  LODWORD(v95) = 1065353216;
  v38 = *(v87 + 280);
  if (v38 == (v87 + 288))
  {
    goto LABEL_90;
  }

  do
  {
    v39 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_bundleIdentifierForSourceID(v87, v38[4]);
    v40 = v39;
    if (!v39)
    {
      goto LABEL_66;
    }

    v41 = [v39 hash];
    v42 = v41;
    v43 = __p[1];
    if (!__p[1])
    {
      goto LABEL_64;
    }

    v44 = vcnt_s8(__p[1]);
    v44.i16[0] = vaddlv_u8(v44);
    v45 = v44.u32[0];
    if (v44.u32[0] > 1uLL)
    {
      v46 = v41;
      if (v41 >= __p[1])
      {
        v46 = v41 % __p[1];
      }
    }

    else
    {
      v46 = (__p[1] - 1) & v41;
    }

    v47 = *(__p[0] + v46);
    if (!v47 || (v48 = *v47) == 0)
    {
LABEL_64:
      operator new();
    }

    v85 = __p[1] - 1;
    while (1)
    {
      v49 = v48[1];
      if (v49 == v42)
      {
        break;
      }

      if (v45 > 1)
      {
        if (v49 >= v43)
        {
          v49 %= v43;
        }
      }

      else
      {
        v49 &= v85;
      }

      if (v49 != v46)
      {
        goto LABEL_64;
      }

LABEL_63:
      v48 = *v48;
      if (!v48)
      {
        goto LABEL_64;
      }
    }

    v2 = v48[2];
    v50 = v40;
    v51 = v50;
    if (v2 != v50)
    {
      v12 = [v2 isEqualToString:v50];

      if (v12)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

LABEL_65:
    v52 = *(v38 + 5);
    *(v48 + 5) = *(v38 + 7);
    *(v48 + 3) = v52;
    v53 = *(v38 + 9);
    v54 = *(v38 + 11);
    v55 = *(v38 + 13);
    *(v48 + 13) = *(v38 + 15);
    *(v48 + 11) = v55;
    *(v48 + 9) = v54;
    *(v48 + 7) = v53;
    v56 = *(v38 + 17);
    v57 = *(v38 + 19);
    v58 = *(v38 + 21);
    *(v48 + 21) = *(v38 + 23);
    *(v48 + 19) = v58;
    *(v48 + 17) = v57;
    *(v48 + 15) = v56;

LABEL_66:
    v59 = v38[1];
    if (v59)
    {
      do
      {
        v60 = v59;
        v59 = *v59;
      }

      while (v59);
    }

    else
    {
      do
      {
        v60 = v38[2];
        v61 = *v60 == v38;
        v38 = v60;
      }

      while (!v61);
    }

    v38 = v60;
  }

  while (v60 != (v87 + 288));
  v62 = v94;
  if (v94)
  {
    v2 = 0x277CCD000;
    do
    {
      v63 = v62[2];
      if ((v92 & 2) != 0)
      {
        if (!v104)
        {
          goto LABEL_117;
        }

        v64 = [MEMORY[0x277CCD7E8] quantityWithUnit:v91 doubleValue:{*((*(*v104 + 48))(v104, v62 + 3) + 40)}];
        [v84 setObject:v64 forKeyedSubscript:v63];
      }

      if ((v92 & 4) != 0)
      {
        if (!v104)
        {
          goto LABEL_117;
        }

        v65 = [MEMORY[0x277CCD7E8] quantityWithUnit:v91 doubleValue:{*((*(*v104 + 48))(v104, v62 + 3) + 56)}];
        [v83 setObject:v65 forKeyedSubscript:v63];
      }

      if ((v92 & 8) != 0)
      {
        if (!v104)
        {
          goto LABEL_117;
        }

        v66 = [MEMORY[0x277CCD7E8] quantityWithUnit:v91 doubleValue:{*((*(*v104 + 48))(v104, v62 + 3) + 48)}];
        [v81 setObject:v66 forKeyedSubscript:v63];
      }

      if ((v92 & 0x20) != 0)
      {
        if (!v104)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v67 = (*(*v104 + 48))(v104, v62 + 3);
        v68 = *(v67 + 80);
        v69 = *(v67 + 88);
        v70 = [MEMORY[0x277CCD7E8] quantityWithUnit:v91 doubleValue:*(v67 + 72)];
        [v80 setObject:v70 forKeyedSubscript:v63];

        v71 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v68 end:v69];
        [v82 setObject:v71 forKeyedSubscript:v63];
      }

      if (!v104)
      {
LABEL_117:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v104 + 48))(v104, v62 + 3) + 64)}];
      [v86 setObject:v12 forKeyedSubscript:v63];

      v62 = *v62;
    }

    while (v62);
  }

LABEL_90:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  if ((v92 & 2) != 0)
  {
    [v90 setAverageQuantityBySource:v84];
  }

  if ((v92 & 4) != 0)
  {
    [v90 setMinimumQuantityBySource:v83];
  }

  if ((v92 & 8) != 0)
  {
    [v90 setMaximumQuantityBySource:v81];
  }

  if ((v92 & 0x20) != 0)
  {
    [v90 setMostRecentQuantityBySource:v80];
    [v90 setMostRecentQuantityDateIntervalBySource:v82];
  }

  [v90 setDataCountBySource:v86];

LABEL_99:
  std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>> const&)>::~__value_func[abi:ne200100](v103);
  v72 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v73 = [v90 averageQuantity];
  if (v73)
  {
    v12 = [v90 averageQuantity];
    if (([v12 isCompatibleWithUnit:v72] & 1) == 0)
    {

      goto LABEL_113;
    }
  }

  v74 = [v90 minimumQuantity];
  if (v74)
  {
    v2 = [v90 minimumQuantity];
    if (![v2 isCompatibleWithUnit:v72])
    {
      v75 = 1;
      goto LABEL_107;
    }
  }

  v76 = [v90 maximumQuantity];
  if (v76)
  {
    v77 = [v90 maximumQuantity];
    v78 = [v77 isCompatibleWithUnit:v72];

    v75 = v78 ^ 1;
    if (v74)
    {
      goto LABEL_107;
    }

LABEL_111:
    if (!v73)
    {
      goto LABEL_112;
    }

LABEL_108:

    if ((v75 & 1) == 0)
    {
      goto LABEL_114;
    }

LABEL_113:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v72}];
    goto LABEL_114;
  }

  v75 = 0;
  if (!v74)
  {
    goto LABEL_111;
  }

LABEL_107:

  if (v73)
  {
    goto LABEL_108;
  }

LABEL_112:

  if (v75)
  {
    goto LABEL_113;
  }

LABEL_114:

  return v90;
}

void sub_228EF3FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23)
{
  std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>> const&)>::~__value_func[abi:ne200100](v23 - 176);

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_updateSourceOrder(uint64_t a1)
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

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_mergeThroughTime(uint64_t a1, double a2)
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
        goto LABEL_85;
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

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v67 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, &v67, v23, 1);
      }

      else
      {
        v48 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v48;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, v23, 1);
      if (*(a1 + 25) == 1)
      {
        v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v49 = 0;
      }

      if (v6 != v7)
      {
        v50 = 0;
        v51 = 0;
        v52 = v6;
        while (1)
        {
          v53 = *(v52 + 1);
          v67 = *v52;
          v68 = v53;
          v69 = *(v52 + 4);
          if ((v69 & 1) != 0 && *(&v67 + 1) <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v52);
LABEL_120:
          v52 += 6;
          if (v52 == v7)
          {
            goto LABEL_121;
          }
        }

        v54 = *&v68;
        if (*&v68 > v17)
        {
          v54 = v17;
        }

        *&v68 = v54;
        for (i = *(a1 + 64); i != *(a1 + 72) && *(&v67 + 1) >= *i; i += 2)
        {
          if (*(&v67 + 1) < i[1])
          {
            goto LABEL_120;
          }
        }

        if (v51)
        {
          v56 = *(&v68 + 1);
          if (v50 == *(&v68 + 1) || *(a1 + 24) == 1)
          {
            HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample((a1 + 120), &v67);
          }
        }

        else
        {
          HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample((a1 + 120), &v67);
          v56 = *(&v68 + 1);
          v50 = *(&v68 + 1);
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_119;
        }

        v57 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_bundleIdentifierForSourceID(a1, v56);
        if (!v57)
        {
          goto LABEL_118;
        }

        v58 = [v49 objectForKeyedSubscript:v57];
        v59 = v58;
        if (v58)
        {
          if ([v58 longLongValue] != v56 && *(a1 + 24) != 1)
          {
LABEL_117:

LABEL_118:
LABEL_119:
            v51 = 1;
            goto LABEL_120;
          }
        }

        else
        {
          v60 = [MEMORY[0x277CCABB0] numberWithLongLong:v56];
          [v49 setObject:v60 forKeyedSubscript:v57];
        }

        v61 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_canonicalSourceIDForSourceID(a1, v56);
        v62 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_statisticsForSource(a1, v61);
        HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample(v62, &v67);
        goto LABEL_117;
      }

LABEL_121:
      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_123:
      v63 = *(a1 + 56);
      if (v63 == v5)
      {
        v64 = [MEMORY[0x277CCA890] currentHandler];
        v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>]"];
        [v64 handleFailureInFunction:v65 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v63 = *(a1 + 56);
      }

      v5 = v63;
      if (v63 >= a2)
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

    *&v67 = *v6;
    *(&v67 + 1) = v27;
    *&v68 = v28;
    *(&v68 + 1) = v29;
    LOBYTE(v69) = v32;
    BYTE1(v69) = v30;
    *(&v69 + 2) = *(v6 + 34);
    HIWORD(v69) = *(v6 + 19);
    *&v70 = v40;
    *(&v70 + 1) = v41;
    *&v71 = v39;
    *(&v71 + 1) = v34;
    LOBYTE(v72) = v42;
    HIBYTE(v72) = v33;
    for (j = *(a1 + 64); j != *(a1 + 72) && v27 >= *j; j += 2)
    {
      if (v27 < j[1])
      {
        goto LABEL_82;
      }
    }

    if (v32)
    {
      HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample((a1 + 120), &v67);
      if (*(a1 + 25) == 1)
      {
        v44 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_canonicalSourceIDForSourceID(a1, v29);
        v45 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_statisticsForSource(a1, v44);
        HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample(v45, &v67);
      }

      v26 = 1;
      v25 = 1;
      v24 = 1;
    }

LABEL_82:
    if (v42)
    {
      LOWORD(v66) = v72;
      v46 = v71;
      v47 = *(a1 + 96);
      *v47 = v70;
      *(v47 + 16) = v46;
      *(v47 + 32) = v66;
      *(v47 + 40) = v26;
      *(v47 + 41) = v25;
      *(v47 + 42) = v24;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_85:
    *(a1 + 56) = a2;
    goto LABEL_123;
  }
}

double HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample(int *a1, double *a2)
{
  result = *a2;
  if (*a2 == 1.79769313e308)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (*a2 != -1.79769313e308);
  }

  v4 = *a1;
  if (!v3)
  {
    if (v4 || *(a1 + 9))
    {
      return result;
    }

LABEL_12:
    v6 = a1 + 2;
    return HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(v6, a2);
  }

  if (v3 != 1)
  {
    if (v4 != 2)
    {
      v5 = 2;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!v4)
  {
    v5 = 1;
LABEL_14:
    *a1 = v5;
    *(a1 + 2) = xmmword_229170D40;
    v6 = a1 + 2;
    *(a1 + 26) = 0u;
    *(a1 + 22) = 0u;
    *(a1 + 18) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 14) = 0u;
    v7 = *(a1 + 34);
    *(a1 + 56) = *(a1 + 76);
    *(a1 + 5) = *(a1 + 30);
    *(a1 + 6) = v7;
    return HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(v6, a2);
  }

  return result;
}

uint64_t **HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_statisticsForSource(uint64_t a1, uint64_t a2)
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 280), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 280), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
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
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_bundleIdentifierForSourceID(a1, a2);
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

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
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

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>> const&)#1}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_primitiveAddSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 640) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_configureForStartTime(a1);
  }

  v8 = *(a2 + 8);
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 640))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 616);
    v5 = *(a1 + 608);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a2 + 32);
  if ((v4 & 1) == 0 || (v5 = *(a2 + 1), v5 < *(a1 + 8)))
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_4;
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = a2[3];
  v9 = *(a2 + 33);
  *(&v41 + 1) = a2[1];
  *&v42 = v7;
  *(&v42 + 1) = v8;
  LOBYTE(v43) = v4;
  HIBYTE(v43) = v9;
  *&v41 = v6;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
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

    *&v42 = v13;
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 312), v8, &v42 + 1);
    v14 = *(a1 + 112);
    if (v14 == *(a1 + 104) && *(a1 + 200) <= 0)
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
      if (!a3)
      {
        goto LABEL_35;
      }
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

      if (!a3)
      {
        goto LABEL_35;
      }
    }

    if (v5 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_mergeThroughTime(a1 + 8, v5);
      v14 = *(a1 + 112);
    }

LABEL_35:
    v38 = v41;
    v39 = v42;
    LOWORD(v40) = v43;
    v19 = *(a1 + 120);
    if (v14 >= v19)
    {
      v22 = *(a1 + 104);
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v22) >> 4);
      v24 = v23 + 1;
      if (v23 + 1 > 0x555555555555555)
      {
        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 4);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x2AAAAAAAAAAAAAALL)
      {
        v26 = 0x555555555555555;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v26);
      }

      v27 = 48 * v23;
      v28 = v39;
      *v27 = v38;
      *(v27 + 16) = v28;
      *(v27 + 32) = v40;
      *(v27 + 40) = 0;
      *(v27 + 42) = 0;
      v21 = 48 * v23 + 48;
      v29 = *(a1 + 104);
      v30 = *(a1 + 112) - v29;
      v31 = 48 * v23 - v30;
      memcpy((v27 - v30), v29, v30);
      v32 = *(a1 + 104);
      *(a1 + 104) = v31;
      *(a1 + 112) = v21;
      *(a1 + 120) = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v20 = v39;
      *v14 = v38;
      *(v14 + 16) = v20;
      *(v14 + 32) = v40;
      *(v14 + 40) = 0;
      *(v14 + 42) = 0;
      v21 = v14 + 48;
    }

    *(a1 + 112) = v21;
    if (!*(a1 + 280) || *(a1 + 256) <= v5)
    {
      *(a1 + 248) = v6;
      *(a1 + 256) = v5;
      *(a1 + 264) = v7;
      *(a1 + 272) = v8;
      *(a1 + 280) = v4;
      *(a1 + 281) = v9;
      if (!*(a1 + 240) || *(a1 + 216) <= v5)
      {
        *(a1 + 208) = v6;
        *(a1 + 216) = v5;
        *(a1 + 224) = v7;
        *(a1 + 232) = v8;
        *(a1 + 240) = v4;
        *(a1 + 241) = v9;
      }
    }

    if (*(a1 + 33) == 1)
    {
      v33 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
      v34 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_statisticsForSource(a1 + 8, v33);
      if (!*(v34 + 152) || *(v34 + 16) <= v5)
      {
        v34[15] = v6;
        *(v34 + 16) = v5;
        *(v34 + 17) = v7;
        v34[18] = v8;
        *(v34 + 152) = v4;
        *(v34 + 153) = v9;
        if (!*(v34 + 112) || *(v34 + 11) <= v5)
        {
          v34[10] = v6;
          *(v34 + 11) = v5;
          *(v34 + 12) = v7;
          v34[13] = v8;
          *(v34 + 112) = v4;
          *(v34 + 113) = v9;
        }
      }
    }

    goto LABEL_4;
  }

  v35 = v41;
  v36 = v42;
  v37 = v43;
  if (v5 >= v10)
  {
    v10 = v5;
  }

  *(&v35 + 1) = v10;
LABEL_4:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 496, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_notifyForCurrentBucket(uint64_t a1)
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 496), *(a1 + 504), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 504) - *(a1 + 496)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228EF57A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 520), *(a1 + 40));
  *(a1 + 152) = 0u;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  if (*(a1 + 304))
  {
    v9 = *(a1 + 288);
    v10 = *(a1 + 296);
    *(a1 + 288) = a1 + 296;
    *(v10 + 16) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    if (v9[1])
    {
      v11 = v9[1];
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = v11[2];
      if (v12)
      {
        v13 = *v12;
        if (*v12 == v11)
        {
          *v12 = 0;
          while (1)
          {
            v15 = v12[1];
            if (!v15)
            {
              break;
            }

            do
            {
              v12 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        else
        {
          for (v12[1] = 0; v13; v13 = v12[1])
          {
            do
            {
              v12 = v13;
              v13 = *v13;
            }

            while (v13);
          }
        }

        std::__tree<long>::destroy(v11);
        for (i = v12[2]; i; i = i[2])
        {
          v12 = i;
        }

        v11 = v12;
      }
    }

    std::__tree<long>::destroy(v11);
  }

  objc_storeStrong(v8, *(a1 + 520));
  *(a1 + 504) = *(a1 + 496);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_didChangeBucket(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228EF59F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
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
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228EF5E48(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4099229AECLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::advanceBucket(v15 + 112, v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 644) == 1)
          {
            *(v15 + 644) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 640) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::archive(uint64_t a1, int *a2)
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
  HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::archive(v6, (a2 + 2));
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = *a2;
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(*(a2 + 30), *(a2 + 30), 8uLL);
  v6[1] = *(a2 + 17);
  v6[2] = *(a2 + 18);
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

double HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::unarchive(uint64_t a1, void *a2)
{
  *(a1 + 8) = xmmword_229170D40;
  v2 = 0uLL;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 98) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  v3 = a2[16];
  if (v3)
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 88);
    v6 = *(v3 + 104);
    v7 = *(v3 + 176);
    v8 = *(v3 + 168);
    v9 = *(v3 + 56);
    v10 = *(v3 + 48);
    v11 = *(v3 + 40);
    v12 = *(v3 + 112);
    if (v12)
    {
      v2 = *(v12 + 24);
      v13 = *(v12 + 8);
      v14 = 1;
      v12 = *(v12 + 16);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    *(a1 + 8) = v9;
    *(a1 + 16) = v11;
    *(a1 + 24) = v10;
    *(a1 + 32) = v8;
    *(a1 + 40) = v7;
    *(a1 + 48) = vextq_s8(v5, v5, 8uLL);
    *(a1 + 64) = v6;
    *(a1 + 72) = v4;
    v2 = vextq_s8(v2, v2, 8uLL);
    *(a1 + 80) = v2;
    *(a1 + 96) = v13;
    *(a1 + 104) = v12;
    *(a1 + 112) = v14;
  }

  *a1 = a2[17];
  v15 = a2[14];
  if (v15)
  {
    v2.i64[0] = *(v15 + 8);
    v16 = *(v15 + 16);
    *(a1 + 120) = vextq_s8(*(v15 + 24), *(v15 + 24), 8uLL);
    *(a1 + 136) = v2.i64[0];
    *(a1 + 144) = v16;
    *(a1 + 152) = 1;
  }

  return *v2.i64;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEDEC8;
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
  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEDEC8;
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

  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 592) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::configureMergeAnchor(double *a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 5))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 75) = v4;
    v3 = v5;
    if (a1[31] == -1.79769313e308)
    {
      *(a1 + 31) = v4;
    }
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 76, a2);
  v7 = a2;
  v4 = a1[76];
  v5 = a1[73];
  a1[73] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[73]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 304) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 592))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

void sub_228EF6D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 594) == 1)
    {
      if (*(a1 + 593))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 592))
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

      if (*(a1 + 595) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 624, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 594) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 594) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 593))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 616);
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

  [v9 sortUsingComparator:&__block_literal_global_713];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 616);
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

  v30 = [v68 lastObject];
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveInvalidateInterval(a1, v49, v67);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveInvalidateInterval(a1, 0, v67))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveAddSample(a1, v55, 1, v51);
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

        v51 = v67;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40))
  {
    while (*(a1 + 568) != *(a1 + 560))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_notifyForCurrentBucket(a1);
    }
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
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 594) = 0;
LABEL_81:

  return v7;
}

void sub_228EF75D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 594) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveInvalidateInterval(a1, v7, a3);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 592) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 592) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 592) forKey:@"needs_config"];
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
  HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::archive(&v32, a1 + 240);
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 352);
  if (v9 != a1 + 360)
  {
    HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::archive(&v32, v9 + 40);
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
  v12 = *(a1 + 560);
  if (v12 != *(a1 + 568))
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

void sub_228EF7E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v51 = a2;
  *(a1 + 592) = [v51 decodeBoolForKey:@"needs_config"];
  j = v51;
  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::HDStatisticsBucket(&v58.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v60 = 0u;
  v96 = 0;
  PB::Reader::Reader(v95, [j decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v96]);
  v88 = &unk_283BF1A08;
  v89 = 0;
  v93 = 0;
  v91 = 0;
  v92 = 0;
  v94 = 0;
  statistics::StatisticsEngine::readFrom(&v88, v95);
  v4 = v89;
  v58.n128_u64[0] = v90;
  if (v89)
  {
    v64 = 0;
    memset(v67, 0, sizeof(v67));
    v68 = 0u;
    v69 = 0u;
    v71 = 0u;
    memset(v72, 0, 74);
    v73[1] = 0;
    v73[0] = 0;
    v70 = 0xFFEFFFFFFFFFFFFFLL;
    v72[10] = v73;
    v74 = 0u;
    v75 = 0u;
    v76 = 1065353216;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0;
    v81 = 1065353216;
    v82 = 0u;
    v83 = 0u;
    v84 = 1065353216;
    v85 = 0u;
    v86 = 0u;
    v87 = 1065353216;
    v61 = vextq_s8(*(v89 + 8), *(v89 + 8), 8uLL);
    v5 = *(v89 + 72);
    v62 = *(v89 + 64);
    LOWORD(v63) = *(v89 + 185);
    v65 = vextq_s8(*(v89 + 24), *(v89 + 24), 8uLL);
    v66 = v5;
    v6 = *(v89 + 80);
    v7 = *(v89 + 88);
    for (i = j; v6 != v7; ++v6)
    {
      v8 = *v6;
      v100 = 1;
      v101 = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v97 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      v98 = v9;
      v99 = v10;
      v102 = *(v8 + 41);
      v103 = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](&v68, v97.i8);
    }

    v11 = v4[13];
    if (v11)
    {
      v12 = *(v11 + 24);
      v13 = *(v11 + 88);
      v14 = *(v11 + 104);
      v15 = *(v11 + 176);
      v16 = *(v11 + 168);
      v17 = *(v11 + 56);
      v18 = *(v11 + 48);
      v19 = *(v11 + 40);
      v20 = *(v11 + 112);
      if (v20)
      {
        v21 = *(v20 + 24);
        v22 = *(v20 + 8);
        v23 = 1;
        v20 = *(v20 + 16);
      }

      else
      {
        v23 = 0;
        v21 = 0uLL;
        v22 = 0;
      }

      *(&v69 + 1) = v17;
      v70 = v19;
      *&v71 = v18;
      *(&v71 + 1) = v16;
      v72[0] = v15;
      *&v72[1] = vextq_s8(v13, v13, 8uLL);
      v72[3] = v14;
      v72[4] = v12;
      *&v72[5] = vextq_s8(v21, v21, 8uLL);
      v72[7] = v22;
      v72[8] = v20;
      LOWORD(v72[9]) = v23;
    }

    v52 = v4;
    v53 = a1;
    v25 = v4[17];
    v24 = v4[18];
    v55 = v24;
    while (v25 != v24)
    {
      v26 = *v25;
      v27 = *(*v25 + 112);
      if (v27)
      {
        v57 = *(v27 + 24);
        v28 = *(v27 + 8);
        v29 = 1;
        v30 = *(v27 + 16);
      }

      else
      {
        v30 = 0;
        v29 = 0;
        v28 = 0;
        v57 = 0u;
      }

      v31 = *(v26 + 24);
      v56 = *(v26 + 88);
      v32 = *(v26 + 104);
      v33 = *(v26 + 176);
      v34 = *(v26 + 168);
      v35 = *(v26 + 56);
      v36 = *(v26 + 48);
      v37 = *(v26 + 40);
      v38 = *(v26 + 144);
      v39 = v73[0];
      if (!v73[0])
      {
LABEL_21:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v40 = v39;
          v41 = v39[2].i64[0];
          if (v41 <= v38)
          {
            break;
          }

          v39 = v40->i64[0];
          if (!v40->i64[0])
          {
            goto LABEL_21;
          }
        }

        if (v41 >= v38)
        {
          break;
        }

        v39 = v40->i64[1];
        if (!v39)
        {
          goto LABEL_21;
        }
      }

      v40[2].i64[1] = v35;
      v40[3].i64[0] = v37;
      v40[3].i64[1] = v36;
      v40[4].i64[0] = v34;
      v40[4].i64[1] = v33;
      v40[5] = vextq_s8(v56, v56, 8uLL);
      v40[6].i64[0] = v32;
      v40[6].i64[1] = v31;
      v40[7] = vextq_s8(v57, v57, 8uLL);
      v40[8].i64[0] = v28;
      v40[8].i64[1] = v30;
      v40[9].i8[0] = v29;
      ++v25;
      v40[9].i8[1] = 0;
      v24 = v55;
    }

    a1 = v53;
    v42 = v52[5];
    v43 = v52[6];
    for (j = i; v42 != v43; v42 += 8)
    {
      v45 = *(*v42 + 8);
      v44 = *(*v42 + 16);
      if (v45 >= v44)
      {
        v46 = *(*v42 + 16);
      }

      else
      {
        v46 = *(*v42 + 8);
      }

      if (v44 < v45)
      {
        v44 = *(*v42 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v67, v46, v44);
    }

    HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::operator=(&v58.n128_i64[1], &v61);
    HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(&v61);
  }

  v47 = v91;
  for (k = v92; v47 != k; v47 += 8)
  {
    v49 = *(*v47 + 8);
    v50 = *(*v47 + 16);
    v61 = vextq_s8(*(*v47 + 24), *(*v47 + 24), 8uLL);
    v62 = v49;
    v63 = v50;
    LOWORD(v64) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v61.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v88);

  HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::operator=((a1 + 112), &v58);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(&v58.n128_i64[1]);
}

void sub_228EF83F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x400]);
  HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 210) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
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

uint64_t HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    *(a1 + 456) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(uint64_t a1)
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
  std::__tree<long>::destroy(*(a1 + 240));
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  objc_storeStrong(&v26, *(a1 + 608));
  if (!*(a1 + 40))
  {
    v25 = 0;
    if (v28 == -1.79769313e308)
    {
      v28 = *(a1 + 600);
    }
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(v17);
  *(a1 + 592) = 0;
  return HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 56), a2 + 28);
  v4 = a2[29].n128_u64[1];
  a2[29].n128_u64[1] = 0;
  v5 = a1[59];
  a1[59] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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

  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  v14 = *(a2 + 120);
  v15 = *(a2 + 136);
  v16 = *(a2 + 152);
  *(a1 + 240) = 0;
  v17 = (a1 + 240);
  *(a1 + 232) = a1 + 240;
  *(a1 + 120) = v14;
  *(a1 + 136) = v15;
  *(a1 + 200) = v12;
  *(a1 + 216) = v13;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  *(a1 + 152) = v16;
  *(a1 + 248) = 0;
  v18 = *(a2 + 232);
  if (v18 != (a2 + 240))
  {
    v19 = 0;
    v20 = (a1 + 240);
    while (1)
    {
      v21 = v18[4];
      v22 = (a1 + 240);
      if (v20 == v17)
      {
        goto LABEL_12;
      }

      v23 = v19;
      v24 = (a1 + 240);
      if (v19)
      {
        do
        {
          v22 = v23;
          v23 = v23[1];
        }

        while (v23);
      }

      else
      {
        do
        {
          v22 = v24[2];
          v25 = *v22 == v24;
          v24 = v22;
        }

        while (v25);
      }

      if (v22[4] < v21)
      {
LABEL_12:
        if (v19)
        {
          v26 = v22 + 1;
        }

        else
        {
          v26 = (a1 + 240);
        }

        if (!*v26)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v19)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v27 = v19;
            v28 = v19[4];
            if (v28 <= v21)
            {
              break;
            }

            v19 = *v27;
            if (!*v27)
            {
              goto LABEL_23;
            }
          }

          if (v28 >= v21)
          {
            break;
          }

          v19 = v27[1];
          if (!v19)
          {
            goto LABEL_23;
          }
        }
      }

      v29 = v18[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v18[2];
          v25 = *v30 == v18;
          v18 = v30;
        }

        while (!v25);
      }

      if (v30 == (a2 + 240))
      {
        break;
      }

      v19 = *v17;
      v20 = *(a1 + 232);
      v18 = v30;
    }
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

void sub_228EF8CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 360);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 320);
  v13 = *(v10 + 296);
  if (v13)
  {
    *(v10 + 304) = v13;
    operator delete(v13);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 256);
  std::__tree<long>::destroy(*v11);
  v14 = *a9;
  if (*a9)
  {
    *(v10 + 104) = v14;
    operator delete(v14);
  }

  objc_destroyWeak((v10 + 88));
  v15 = *a10;
  if (*a10)
  {
    *(v10 + 72) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::operator=(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 184);
  v11 = *(a2 + 200);
  v12 = *(a2 + 216);
  v14 = a1 + 240;
  v13 = *(a1 + 240);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 216) = v12;
  *(a1 + 200) = v11;
  *(a1 + 184) = v10;
  v15 = *(a2 + 152);
  v16 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v16;
  *(a1 + 152) = v15;
  std::__tree<long>::destroy(v13);
  *(a1 + 232) = *(a2 + 232);
  v18 = *(a2 + 240);
  v19 = *(a2 + 248);
  v17 = (a2 + 240);
  *(a1 + 240) = v18;
  *(a1 + 248) = v19;
  if (v19)
  {
    *(v18 + 16) = v14;
    *(a2 + 232) = v17;
    *v17 = 0;
    *(a2 + 248) = 0;
  }

  else
  {
    *(a1 + 232) = v14;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 256, (a2 + 256));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 296, (a2 + 296));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 360, (a2 + 360));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 400, (a2 + 400));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 5;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v83 = [v5 initWithTimeIntervalSinceReferenceDate:a2[v6]];
  v85 = a2;
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v83 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(v85 + 37);
      v16 = *(v85 + 38);
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

  v95[0] = &unk_283BEDF98;
  v96 = v95;
  v84 = v12;
  v87 = *(a1 + 24);
  v21 = *(v85 + 21);
  v22 = *(v85 + 25);
  v92 = *(v85 + 23);
  v93 = v22;
  v94 = *(v85 + 27);
  v23 = *(v85 + 17);
  *__p = *(v85 + 15);
  v89 = v23;
  v90 = *(v85 + 19);
  v91 = v21;
  if (!v96)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v24 = (*(*v96 + 48))(v96, __p);
  v26 = v24[5];
  v25 = v24[6];
  v27 = v24[7];
  v28 = *(v24 + 8);
  v30 = v24[9];
  v29 = v24[10];
  v31 = v24[11];
  v32 = *(a1 + 24);
  v33 = _HKStatisticsOptionBaselineRelativeQuantities();
  v34 = *(a1 + 16);
  if ((v33 & v32) != 0)
  {
    [v34 _unitForChangeInCanonicalUnit];
  }

  else
  {
    [v34 canonicalUnit];
  }
  v86 = ;
  if ((v87 & 2) != 0)
  {
    v35 = [MEMORY[0x277CCD7E8] quantityWithUnit:v86 doubleValue:v26];
    [v84 setAverageQuantity:v35];
  }

  if ((v87 & 4) != 0)
  {
    v36 = [MEMORY[0x277CCD7E8] quantityWithUnit:v86 doubleValue:v27];
    [v84 setMinimumQuantity:v36];
  }

  if ((v87 & 8) != 0)
  {
    v37 = [MEMORY[0x277CCD7E8] quantityWithUnit:v86 doubleValue:v25];
    [v84 setMaximumQuantity:v37];
  }

  if ((v87 & 0x20) != 0)
  {
    v38 = [MEMORY[0x277CCD7E8] quantityWithUnit:v86 doubleValue:v30];
    [v84 setMostRecentQuantity:v38];

    v39 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v29 end:v31];
    [v84 setMostRecentQuantityDateInterval:v39];
  }

  [v84 setDataCount:v28];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_98;
  }

  if ((v87 & 2) != 0)
  {
    v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v80 = 0;
  }

  if ((v87 & 4) != 0)
  {
    v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v79 = 0;
  }

  if ((v87 & 8) != 0)
  {
    v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v77 = 0;
  }

  if ((v87 & 0x20) != 0)
  {
    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v78 = 0;
    v76 = 0;
  }

  v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v89 = 0u;
  LODWORD(v90) = 1065353216;
  v40 = *(v85 + 29);
  if (v40 == v85 + 30)
  {
    goto LABEL_89;
  }

  do
  {
    v41 = HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_bundleIdentifierForSourceID(v85, *(v40 + 4));
    v42 = v41;
    if (!v41)
    {
      goto LABEL_66;
    }

    v43 = [v41 hash];
    v44 = v43;
    v45 = __p[1];
    if (!__p[1])
    {
      goto LABEL_64;
    }

    v46 = vcnt_s8(__p[1]);
    v46.i16[0] = vaddlv_u8(v46);
    v47 = v46.u32[0];
    if (v46.u32[0] > 1uLL)
    {
      v48 = v43;
      if (v43 >= __p[1])
      {
        v48 = v43 % __p[1];
      }
    }

    else
    {
      v48 = (__p[1] - 1) & v43;
    }

    v49 = *(__p[0] + v48);
    if (!v49 || (v50 = *v49) == 0)
    {
LABEL_64:
      operator new();
    }

    v81 = __p[1] - 1;
    while (1)
    {
      v51 = v50[1];
      if (v51 == v44)
      {
        break;
      }

      if (v47 > 1)
      {
        if (v51 >= v45)
        {
          v51 %= v45;
        }
      }

      else
      {
        v51 &= v81;
      }

      if (v51 != v48)
      {
        goto LABEL_64;
      }

LABEL_63:
      v50 = *v50;
      if (!v50)
      {
        goto LABEL_64;
      }
    }

    v52 = v50[2];
    v53 = v42;
    v54 = v53;
    if (v52 != v53)
    {
      v55 = [v52 isEqualToString:v53];

      if (v55)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

LABEL_65:
    v56 = *(v40 + 5);
    v57 = *(v40 + 7);
    *(v50 + 7) = *(v40 + 9);
    *(v50 + 5) = v57;
    *(v50 + 3) = v56;
    v58 = *(v40 + 11);
    v59 = *(v40 + 13);
    v60 = *(v40 + 15);
    *(v50 + 15) = *(v40 + 17);
    *(v50 + 13) = v60;
    *(v50 + 11) = v59;
    *(v50 + 9) = v58;

LABEL_66:
    v61 = *(v40 + 1);
    if (v61)
    {
      do
      {
        v62 = v61;
        v61 = *v61;
      }

      while (v61);
    }

    else
    {
      do
      {
        v62 = *(v40 + 2);
        v63 = *v62 == v40;
        v40 = v62;
      }

      while (!v63);
    }

    v40 = v62;
  }

  while (v62 != v85 + 30);
  for (i = v89; i; i = *i)
  {
    v65 = i[2];
    if ((v87 & 2) != 0)
    {
      if (!v96)
      {
        goto LABEL_101;
      }

      v66 = [MEMORY[0x277CCD7E8] quantityWithUnit:v86 doubleValue:{*((*(*v96 + 48))(v96, i + 3) + 40)}];
      [v80 setObject:v66 forKeyedSubscript:v65];
    }

    if ((v87 & 4) != 0)
    {
      if (!v96)
      {
        goto LABEL_101;
      }

      v67 = [MEMORY[0x277CCD7E8] quantityWithUnit:v86 doubleValue:{*((*(*v96 + 48))(v96, i + 3) + 56)}];
      [v79 setObject:v67 forKeyedSubscript:v65];
    }

    if ((v87 & 8) != 0)
    {
      if (!v96)
      {
        goto LABEL_101;
      }

      v68 = [MEMORY[0x277CCD7E8] quantityWithUnit:v86 doubleValue:{*((*(*v96 + 48))(v96, i + 3) + 48)}];
      [v77 setObject:v68 forKeyedSubscript:v65];
    }

    if ((v87 & 0x20) != 0)
    {
      if (!v96)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v69 = (*(*v96 + 48))(v96, i + 3);
      v70 = *(v69 + 80);
      v71 = *(v69 + 88);
      v72 = [MEMORY[0x277CCD7E8] quantityWithUnit:v86 doubleValue:*(v69 + 72)];
      [v76 setObject:v72 forKeyedSubscript:v65];

      v73 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v70 end:v71];
      [v78 setObject:v73 forKeyedSubscript:v65];
    }

    if (!v96)
    {
LABEL_101:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v74 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v96 + 48))(v96, i + 3) + 64)}];
    [v82 setObject:v74 forKeyedSubscript:v65];
  }

LABEL_89:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  if ((v87 & 2) != 0)
  {
    [v84 setAverageQuantityBySource:v80];
  }

  if ((v87 & 4) != 0)
  {
    [v84 setMinimumQuantityBySource:v79];
  }

  if ((v87 & 8) != 0)
  {
    [v84 setMaximumQuantityBySource:v77];
  }

  if ((v87 & 0x20) != 0)
  {
    [v84 setMostRecentQuantityBySource:v76];
    [v84 setMostRecentQuantityDateIntervalBySource:v78];
  }

  [v84 setDataCountBySource:v82];

LABEL_98:
  std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const&)>::~__value_func[abi:ne200100](v95);

  return v84;
}

void sub_228EF9BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21)
{
  std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const&)>::~__value_func[abi:ne200100](v21 - 176);

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_updateSourceOrder(uint64_t a1)
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

void HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeThroughTime(uint64_t a1, double a2)
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
        goto LABEL_85;
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

      HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v67 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(v6, v7, &v67, v23, 1);
      }

      else
      {
        v48 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v48;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, v23, 1);
      if (*(a1 + 25) == 1)
      {
        v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v49 = 0;
      }

      if (v6 != v7)
      {
        v50 = 0;
        v51 = 0;
        v52 = v6;
        while (1)
        {
          v53 = *(v52 + 1);
          v67 = *v52;
          v68 = v53;
          v69 = *(v52 + 4);
          if ((v69 & 1) != 0 && *(&v67 + 1) <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v52);
LABEL_120:
          v52 += 6;
          if (v52 == v7)
          {
            goto LABEL_121;
          }
        }

        v54 = *&v68;
        if (*&v68 > v17)
        {
          v54 = v17;
        }

        *&v68 = v54;
        for (i = *(a1 + 64); i != *(a1 + 72) && *(&v67 + 1) >= *i; i += 2)
        {
          if (*(&v67 + 1) < i[1])
          {
            goto LABEL_120;
          }
        }

        if (v51)
        {
          v56 = *(&v68 + 1);
          if (v50 == *(&v68 + 1) || *(a1 + 24) == 1)
          {
            HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(a1 + 120, &v67);
          }
        }

        else
        {
          HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(a1 + 120, &v67);
          v56 = *(&v68 + 1);
          v50 = *(&v68 + 1);
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_119;
        }

        v57 = HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_bundleIdentifierForSourceID(a1, v56);
        if (!v57)
        {
          goto LABEL_118;
        }

        v58 = [v49 objectForKeyedSubscript:v57];
        v59 = v58;
        if (v58)
        {
          if ([v58 longLongValue] != v56 && *(a1 + 24) != 1)
          {
LABEL_117:

LABEL_118:
LABEL_119:
            v51 = 1;
            goto LABEL_120;
          }
        }

        else
        {
          v60 = [MEMORY[0x277CCABB0] numberWithLongLong:v56];
          [v49 setObject:v60 forKeyedSubscript:v57];
        }

        v61 = HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_canonicalSourceIDForSourceID(a1, v56);
        v62 = HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsForSource(a1, v61);
        HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(v62, &v67);
        goto LABEL_117;
      }

LABEL_121:
      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_123:
      v63 = *(a1 + 56);
      if (v63 == v5)
      {
        v64 = [MEMORY[0x277CCA890] currentHandler];
        v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeThroughTime(double) [Statistics = HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>]"];
        [v64 handleFailureInFunction:v65 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v63 = *(a1 + 56);
      }

      v5 = v63;
      if (v63 >= a2)
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

    *&v67 = *v6;
    *(&v67 + 1) = v27;
    *&v68 = v28;
    *(&v68 + 1) = v29;
    LOBYTE(v69) = v32;
    BYTE1(v69) = v30;
    *(&v69 + 2) = *(v6 + 34);
    HIWORD(v69) = *(v6 + 19);
    *&v70 = v40;
    *(&v70 + 1) = v41;
    *&v71 = v39;
    *(&v71 + 1) = v34;
    LOBYTE(v72) = v42;
    HIBYTE(v72) = v33;
    for (j = *(a1 + 64); j != *(a1 + 72) && v27 >= *j; j += 2)
    {
      if (v27 < j[1])
      {
        goto LABEL_82;
      }
    }

    if (v32)
    {
      HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(a1 + 120, &v67);
      if (*(a1 + 25) == 1)
      {
        v44 = HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_canonicalSourceIDForSourceID(a1, v29);
        v45 = HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsForSource(a1, v44);
        HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(v45, &v67);
      }

      v26 = 1;
      v25 = 1;
      v24 = 1;
    }

LABEL_82:
    if (v42)
    {
      LOWORD(v66) = v72;
      v46 = v71;
      v47 = *(a1 + 96);
      *v47 = v70;
      *(v47 + 16) = v46;
      *(v47 + 32) = v66;
      *(v47 + 40) = v26;
      *(v47 + 41) = v25;
      *(v47 + 42) = v24;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_85:
    *(a1 + 56) = a2;
    goto LABEL_123;
  }
}

uint64_t **HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v4 = *(a1 + 240);
  v2 = (a1 + 240);
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == v2 || v5[4] > a2)
  {
LABEL_8:
    v6 = v2 - 1;
    v9 = &v8;
    std::__tree<std::__value_type<long long,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v2 - 1, a2, &v9);
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v8, &v9);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 320), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 360), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 360), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 400), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 400), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>(HKStatistics *,HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>> const&)::{lambda(HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>(HKStatistics *,HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>> const&)::{lambda(HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const&)#1}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveAddSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 592) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_configureForStartTime(a1);
  }

  v8 = *(a2 + 8);
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 592))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 568);
    v5 = *(a1 + 560);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a2 + 32);
  if ((v4 & 1) == 0 || (v5 = *(a2 + 1), v5 < *(a1 + 8)))
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_4;
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = a2[3];
  v9 = *(a2 + 33);
  *(&v41 + 1) = a2[1];
  *&v42 = v7;
  *(&v42 + 1) = v8;
  LOBYTE(v43) = v4;
  HIBYTE(v43) = v9;
  *&v41 = v6;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
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

    *&v42 = v13;
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 264), v8, &v42 + 1);
    v14 = *(a1 + 112);
    if (v14 == *(a1 + 104) && *(a1 + 192) <= 0)
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
      if (!a3)
      {
        goto LABEL_35;
      }
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

      if (!a3)
      {
        goto LABEL_35;
      }
    }

    if (v5 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeThroughTime(a1 + 8, v5);
      v14 = *(a1 + 112);
    }

LABEL_35:
    v38 = v41;
    v39 = v42;
    LOWORD(v40) = v43;
    v19 = *(a1 + 120);
    if (v14 >= v19)
    {
      v22 = *(a1 + 104);
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v22) >> 4);
      v24 = v23 + 1;
      if (v23 + 1 > 0x555555555555555)
      {
        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 4);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x2AAAAAAAAAAAAAALL)
      {
        v26 = 0x555555555555555;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v26);
      }

      v27 = 48 * v23;
      v28 = v39;
      *v27 = v38;
      *(v27 + 16) = v28;
      *(v27 + 32) = v40;
      *(v27 + 40) = 0;
      *(v27 + 42) = 0;
      v21 = 48 * v23 + 48;
      v29 = *(a1 + 104);
      v30 = *(a1 + 112) - v29;
      v31 = 48 * v23 - v30;
      memcpy((v27 - v30), v29, v30);
      v32 = *(a1 + 104);
      *(a1 + 104) = v31;
      *(a1 + 112) = v21;
      *(a1 + 120) = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v20 = v39;
      *v14 = v38;
      *(v14 + 16) = v20;
      *(v14 + 32) = v40;
      *(v14 + 40) = 0;
      *(v14 + 42) = 0;
      v21 = v14 + 48;
    }

    *(a1 + 112) = v21;
    if (!*(a1 + 232) || *(a1 + 208) <= v5)
    {
      *(a1 + 200) = v6;
      *(a1 + 208) = v5;
      *(a1 + 216) = v7;
      *(a1 + 224) = v8;
      *(a1 + 232) = v4;
      *(a1 + 233) = v9;
    }

    if (*(a1 + 33) == 1)
    {
      v33 = HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
      v34 = HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsForSource(a1 + 8, v33);
      if (!*(v34 + 104) || *(v34 + 10) <= v5)
      {
        v34[9] = v6;
        *(v34 + 10) = v5;
        *(v34 + 11) = v7;
        v34[12] = v8;
        *(v34 + 104) = v4;
        *(v34 + 105) = v9;
      }
    }

    goto LABEL_4;
  }

  v35 = v41;
  v36 = v42;
  v37 = v43;
  if (v5 >= v10)
  {
    v10 = v5;
  }

  *(&v35 + 1) = v10;
LABEL_4:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 448, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 594) == 1)
  {
    *(a1 + 596) = 1;
  }

  else
  {
    *(a1 + 596) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 448), *(a1 + 456), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 456) - *(a1 + 448)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228EFB1F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 472), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  *(v8 + 88) = xmmword_229170D40;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 184) = 0u;
  if (*(v8 + 216))
  {
    v9 = *(a1 + 248);
    v10 = *(a1 + 240);
    *(a1 + 240) = a1 + 248;
    *(v9 + 16) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    if (v10[1])
    {
      v11 = v10[1];
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = v11[2];
      if (v12)
      {
        v13 = *v12;
        if (*v12 == v11)
        {
          *v12 = 0;
          while (1)
          {
            v15 = v12[1];
            if (!v15)
            {
              break;
            }

            do
            {
              v12 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        else
        {
          for (v12[1] = 0; v13; v13 = v12[1])
          {
            do
            {
              v12 = v13;
              v13 = *v13;
            }

            while (v13);
          }
        }

        std::__tree<long>::destroy(v11);
        for (i = v12[2]; i; i = i[2])
        {
          v12 = i;
        }

        v11 = v12;
      }
    }

    std::__tree<long>::destroy(v11);
  }

  objc_storeStrong(v8, *(a1 + 472));
  *(a1 + 456) = *(a1 + 448);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 596) == 1)
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

    *(a1 + 596) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228EFB448(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 592) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228EFB898(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40E1B91A94);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_statisticsFromFinishedBucket(v15, (v15 + 120));
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::advanceBucket(v15 + 112, v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 596) == 1)
          {
            *(v15 + 596) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 592) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEE048;
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 1;
  *(a1 + 706) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEE048;
  v2 = *(a1 + 736);
  if (v2)
  {
    *(a1 + 744) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 672);
  if (v3)
  {
    *(a1 + 680) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 704) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 712) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 90, a2);
  v7 = a2;
  v4 = a1[90];
  v5 = a1[87];
  a1[87] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[87]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 704) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228EFC540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 706) == 1)
    {
      if (*(a1 + 705))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 704))
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

      if (*(a1 + 707) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 736, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 706) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 706) = 1;
  v60 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v59 = v6;
  if (*(a1 + 705))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 728);
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

  [v9 sortUsingComparator:&__block_literal_global_736];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = *(a1 + 728);
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
  v27 = *(a1 + 728);
  *(a1 + 728) = 0;

  *(a1 + 705) = 0;
  if (v8)
  {
    v28 = *(a1 + 736);
    *(a1 + 752) = 0;
    *(a1 + 744) = 0;
    *(a1 + 736) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v61 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 736);
      v39 = *(a1 + 744);
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
            v39 = *(a1 + 744);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 744) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 736);
  v29 = *(a1 + 744);
  *(a1 + 752) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v49, v60);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, 0, v60))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, v55, 1, v51);
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

  if (*(a1 + 40) && *(a1 + 680) != *(a1 + 672))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
  }

  *(a1 + 706) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 708) == 1)
    {
      *(a1 + 708) = 0;
      v6 = v59;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 706) = 0;
LABEL_81:

  return v7;
}

void sub_228EFCDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 706) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 706))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 706) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 728);
    *(a1 + 728) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 705) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 705) & 1) == 0)
  {
    v8 = *(a1 + 728);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 728);
      *(a1 + 728) = v9;

      v8 = *(a1 + 728);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 704) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 704) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 704) forKey:@"needs_config"];
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
  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::archive(&v32, (a1 + 240));
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 464);
  if (v9 != a1 + 472)
  {
    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::archive(&v32, (v9 + 40));
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
  v12 = *(a1 + 672);
  if (v12 != *(a1 + 680))
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

void sub_228EFD640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v33 = a2;
  *(k + 704) = [v33 decodeBoolForKey:@"needs_config"];
  v3 = v33;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(&v37.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v38 = 0u;
  v39 = 0u;
  v80 = 0;
  PB::Reader::Reader(v79, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v80]);
  v72 = &unk_283BF1A08;
  v73 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v78 = 0;
  statistics::StatisticsEngine::readFrom(&v72, v79);
  v37.n128_u64[0] = v74;
  if (v73)
  {
    v35 = v3;
    v43 = 0;
    memset(v46, 0, sizeof(v46));
    v53 = 0u;
    v54 = 0u;
    *v55 = 0;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    memset(v52, 0, 26);
    memset(&v55[8], 0, 90);
    v57[1] = 0;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v57[0] = 0;
    v56 = v57;
    v58 = 0u;
    v59 = 0u;
    v60 = 1065353216;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    v65 = 1065353216;
    v66 = 0u;
    v67 = 0u;
    v68 = 1065353216;
    v70 = 0u;
    v69 = 0u;
    v71 = 1065353216;
    v40 = vextq_s8(*(v73 + 8), *(v73 + 8), 8uLL);
    v4 = *(v73 + 72);
    v41 = *(v73 + 64);
    LOWORD(v42) = *(v73 + 185);
    v44 = vextq_s8(*(v73 + 24), *(v73 + 24), 8uLL);
    v45 = v4;
    v5 = *(v73 + 80);
    v6 = *(v73 + 88);
    for (i = v73; v5 != v6; ++v5)
    {
      v7 = *v5;
      WORD4(v82) = 1;
      LOBYTE(v83) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      *v81 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v81[16] = v8;
      *&v82 = v9;
      BYTE1(v83) = *(v7 + 41);
      BYTE2(v83) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v47, v81);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::unarchive(v81, v10);
      v48 = *v81;
      *&v55[16] = v89;
      v54 = v87;
      *v55 = v88;
      v51 = v83;
      v52[0] = v84;
      v52[1] = v85;
      v53 = v86;
      v49 = *&v81[8];
      v50 = v82;
      *&v55[24] = v90;
      if (*&v55[32])
      {
        *&v55[40] = *&v55[32];
        operator delete(*&v55[32]);
      }

      *&v55[32] = v91;
      *&v55[48] = v92;
      v92 = 0;
      v91 = 0uLL;
      *&v55[56] = v93;
      *&v55[64] = v94;
      *&v55[80] = v95;
      *&v55[96] = v96;
    }

    v34 = k;
    v12 = i[17];
    for (j = i[18]; v12 != j; ++v12)
    {
      v13 = *v12;
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::unarchive(v81, *v12);
      v14 = *(v13 + 144);
      v15 = v57[0];
      if (!v57[0])
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = v15[4];
          if (v17 <= v14)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_15;
          }
        }

        if (v17 >= v14)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_15;
        }
      }

      *(v16 + 10) = *v81;
      v18 = v85;
      *(v16 + 6) = v84;
      *(v16 + 7) = v18;
      v19 = v83;
      *(v16 + 4) = v82;
      *(v16 + 5) = v19;
      v16[22] = v89;
      v20 = v88;
      v21 = v86;
      *(v16 + 9) = v87;
      *(v16 + 10) = v20;
      *(v16 + 8) = v21;
      *(v16 + 3) = *&v81[8];
      v22 = v16[24];
      v16[23] = v90;
      if (v22)
      {
        v16[25] = v22;
        operator delete(v22);
        v16[24] = 0;
        v16[25] = 0;
        v16[26] = 0;
      }

      *(v16 + 12) = v91;
      v16[26] = v92;
      v92 = 0;
      v91 = 0uLL;
      v16[27] = v93;
      v23 = v95;
      *(v16 + 14) = v94;
      *(v16 + 15) = v23;
      *(v16 + 128) = v96;
    }

    v24 = i[5];
    v25 = i[6];
    for (k = v34; v24 != v25; v24 += 8)
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

      HKIntervalMask<double>::_insertInterval(v46, v28, v26);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=(&v37.n128_i64[1], &v40);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v40);
    v3 = v35;
  }

  v29 = v75;
  for (m = v76; v29 != m; v29 += 8)
  {
    v31 = *(*v29 + 8);
    v32 = *(*v29 + 16);
    v40 = vextq_s8(*(*v29 + 24), *(*v29 + 24), 8uLL);
    v41 = v31;
    v42 = v32;
    LOWORD(v43) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v38, v40.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v72);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=((k + 112), &v37);
  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v37.n128_i64[1]);
}

void sub_228EFDC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v13 + 512);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a9);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 432);
  v15 = STACK[0x418];
  if (STACK[0x418])
  {
    STACK[0x420] = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 368);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(STACK[0x3E0]);
  v16 = STACK[0x390];
  if (STACK[0x390])
  {
    STACK[0x398] = v16;
    operator delete(v16);
  }

  v17 = STACK[0x2E0];
  if (STACK[0x2E0])
  {
    STACK[0x2E8] = v17;
    operator delete(v17);
  }

  objc_destroyWeak((v13 + 88));
  v18 = STACK[0x2C0];
  if (STACK[0x2C0])
  {
    STACK[0x2C8] = v18;
    operator delete(v18);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x4B0]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 322) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 344) = a1 + 352;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1065353216;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 464) = 1065353216;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 1065353216;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 560);
  if (v2)
  {
    *(a1 + 568) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 512);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 472);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 432);
  v2 = *(a1 + 408);
  if (v2)
  {
    *(a1 + 416) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 368);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 352));
  v3 = *(a1 + 272);
  if (v3)
  {
    *(a1 + 280) = v3;
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

void std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(a1[1]);
    v2 = a1[24];
    if (v2)
    {
      a1[25] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  objc_storeStrong(&v26, *(a1 + 720));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v17);
  *(a1 + 704) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 70), a2 + 35);
  v4 = a2[36].n128_u64[1];
  a2[36].n128_u64[1] = 0;
  v5 = a1[73];
  a1[73] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  v12 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v12;
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  v13 = *(a2 + 208);
  v14 = *(a2 + 224);
  v15 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 224) = v14;
  *(a1 + 240) = v15;
  *(a1 + 208) = v13;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 272), *(a2 + 272), *(a2 + 280), (*(a2 + 280) - *(a2 + 272)) >> 4);
  *(a1 + 296) = *(a2 + 296);
  v16 = *(a2 + 320);
  v17 = *(a2 + 336);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v16;
  v18 = (a1 + 352);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 336) = v17;
  *(a1 + 344) = a1 + 352;
  v19 = *(a2 + 344);
  if (v19 != (a2 + 352))
  {
    v20 = 0;
    v21 = (a1 + 352);
    while (1)
    {
      v22 = (a1 + 352);
      if (v21 == v18)
      {
        goto LABEL_12;
      }

      v23 = v20;
      v24 = (a1 + 352);
      if (v20)
      {
        do
        {
          v22 = v23;
          v23 = v23[1];
        }

        while (v23);
      }

      else
      {
        do
        {
          v22 = v24[2];
          v25 = *v22 == v24;
          v24 = v22;
        }

        while (v25);
      }

      v26 = v19[4];
      if (v22[4] < v26)
      {
LABEL_12:
        if (v20)
        {
          v27 = v22 + 1;
        }

        else
        {
          v27 = (a1 + 352);
        }

        if (!*v27)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v20)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v28 = v20;
            v29 = v20[4];
            if (v29 <= v26)
            {
              break;
            }

            v20 = *v28;
            if (!*v28)
            {
              goto LABEL_23;
            }
          }

          if (v29 >= v26)
          {
            break;
          }

          v20 = v28[1];
          if (!v20)
          {
            goto LABEL_23;
          }
        }
      }

      v30 = v19[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v19[2];
          v25 = *v31 == v19;
          v19 = v31;
        }

        while (!v25);
      }

      if (v31 == (a2 + 352))
      {
        break;
      }

      v20 = *v18;
      v21 = *(a1 + 344);
      v19 = v31;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 368, a2 + 368);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 408), *(a2 + 408), *(a2 + 416), (*(a2 + 416) - *(a2 + 408)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 432, a2 + 432);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 472, a2 + 472);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 512, a2 + 512);
  return a1;
}

void sub_228EFE634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 472);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 432);
  v14 = *(v10 + 408);
  if (v14)
  {
    *(v10 + 416) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 368);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(*v12);
  v15 = *(v10 + 272);
  if (v15)
  {
    *(v10 + 280) = v15;
    operator delete(v15);
  }

  v16 = *a10;
  if (*a10)
  {
    *(v10 + 104) = v16;
    operator delete(v16);
  }

  objc_destroyWeak((v10 + 88));
  v17 = *v11;
  if (*v11)
  {
    *(v10 + 72) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=(uint64_t a1, uint64_t a2)
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
  v12 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v12;
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  v13 = *(a2 + 208);
  v14 = *(a2 + 224);
  v15 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 224) = v14;
  *(a1 + 240) = v15;
  *(a1 + 208) = v13;
  *(a1 + 264) = *(a2 + 264);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 272, (a2 + 272));
  *(a1 + 296) = *(a2 + 296);
  v16 = *(a2 + 304);
  v17 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 304) = v16;
  *(a1 + 320) = v17;
  v18 = a1 + 352;
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 352));
  *(a1 + 344) = *(a2 + 344);
  v19 = *(a2 + 352);
  v20 = *(a2 + 360);
  *(a1 + 352) = v19;
  *(a1 + 360) = v20;
  if (v20)
  {
    *(v19 + 16) = v18;
    *(a2 + 344) = a2 + 352;
    *(a2 + 352) = 0;
    *(a2 + 360) = 0;
  }

  else
  {
    *(a1 + 344) = v18;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 368, (a2 + 368));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 408, (a2 + 408));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 432, (a2 + 432));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 472, (a2 + 472));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 512, (a2 + 512));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
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
      v16 = *(v22 + 51);
      v17 = *(v22 + 52);
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

  v23[0] = &unk_283BEE238;
  v23[3] = v23;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void sub_228EFF554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);

  std::__function::__value_func<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](v45 - 192);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](v45 - 256);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 392);
  v2 = *(a1 + 408);
  if (v1 != (*(a1 + 416) - v2) >> 3)
  {
    *(a1 + 416) = v2;
    std::vector<long long>::reserve((a1 + 408), v1);
    for (i = *(a1 + 384); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 408, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 408];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v67 = (a1 + 352);
    while (1)
    {
      v6 = *(a1 + 104);
      __p = *(a1 + 96);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - __p) >> 4);
      if (v7 == 1)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_93;
      }

      v8 = a2;
      v9 = a2;
      v10 = v5;
      v11 = *(a1 + 96);
      if (__p != v6)
      {
        do
        {
          v12 = v11->n128_f64[1];
          v13 = v11[1].n128_f64[0];
          if (v12 > v10 && v12 < v9)
          {
            v9 = v11->n128_f64[1];
          }

          if (v13 > v5)
          {
            v15 = v11[1].n128_f64[0];
          }

          else
          {
            v15 = v8;
          }

          if (v13 < v8)
          {
            v10 = v5;
            v8 = v15;
          }

          v11 += 3;
        }

        while (v11 != v6);
      }

      if (v8 >= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = v8;
      }

      v17 = *(a1 + 16);
      if (v17 > 0.0)
      {
        v18 = v17 * floor(v16 / v17);
        v19 = v17 * floor((v17 + v5) / v17);
        if (v18 >= v19)
        {
          v16 = v18;
        }

        else
        {
          v16 = v19;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (__p != v6)
      {
        if (v7 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v7);
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v21 = __clz(v7);
      if (WeakRetained)
      {
        *&v74.var0 = a1;
        v22 = 126 - 2 * v21;
        if (__p == v6)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(__p, v6, &v74, v23, 1);
      }

      else
      {
        v34 = 126 - 2 * v21;
        if (__p == v6)
        {
          v23 = 0;
        }

        else
        {
          v23 = v34;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(__p, v6, v23, 1);
      if (*(a1 + 25) == 1)
      {
        v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v68 = 0;
      }

      if (__p != v6)
      {
        v69 = 0;
        v35 = 0;
        for (i = __p; i != v6; i += 6)
        {
          v37 = *(i + 1);
          *&v73.var0 = *i;
          *&v73.var2 = v37;
          *&v73.var4 = i[4];
          var0 = v73.var0;
          v39 = *&v37;
          if (*&v37 - v73.var1 - (v16 - v73.var1) >= 0.01)
          {
            if (v16 - v73.var1 >= 0.01)
            {
              var3 = v73.var3;
              var4 = v73.var4;
              v73.var2 = v16;
              if (v73.var4)
              {
                var5 = v73.var5;
                v42 = v16;
LABEL_54:
                HDRawQuantitySample::applyMask(&v73, (a1 + 64));
                v43 = *(i + 42);
                v44 = *(i + 41);
                v71 = *(i + 40);
                if (!v73.var4)
                {
                  goto LABEL_72;
                }

                if (v35)
                {
                  v45 = v73.var3;
                  if (v69 == v73.var3 || *(a1 + 24) == 1)
                  {
                    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v73, v43 ^ 1u);
                    LOBYTE(v43) = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v73, v43 ^ 1u);
                  LOBYTE(v43) = 1;
                  v45 = v73.var3;
                  v69 = v73.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_71;
                }

                v46 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, v45);
                if (!v46)
                {
                  goto LABEL_70;
                }

                v47 = [v68 objectForKeyedSubscript:v46];
                v48 = v47;
                if (v47)
                {
                  if ([v47 longLongValue] != v45 && *(a1 + 24) != 1)
                  {
LABEL_69:

LABEL_70:
LABEL_71:
                    v35 = 1;
LABEL_72:
                    if (var4)
                    {
                      v74.var0 = var0;
                      v74.var1 = v42;
                      v74.var2 = v39;
                      v74.var3 = var3;
                      v74.var4 = var4;
                      v74.var5 = var5;
                      LOBYTE(v75) = v71;
                      BYTE1(v75) = v44;
                      BYTE2(v75) = v43;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v74);
                    }

                    continue;
                  }
                }

                else
                {
                  v66 = [MEMORY[0x277CCABB0] numberWithLongLong:v45];
                  [v68 setObject:v66 forKeyedSubscript:v46];
                }

                v49 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v45);
                v50 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v49);
                HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(v50, &v73, v44 ^ 1u);
                LOBYTE(v44) = 1;
                goto LABEL_69;
              }
            }

            else
            {
              v73.var4 = 0;
            }
          }

          else if (v73.var4)
          {
            var5 = 0;
            var4 = 0;
            var3 = 0;
            v39 = 0.0;
            v42 = 0.0;
            goto LABEL_54;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 296) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 272), v16) + *(a1 + 296);
      v51 = *(a1 + 344);
      if (v51 != v67)
      {
        do
        {
          *(v51 + 27) = HKIntervalMask<double>::removeIntervalsBefore(v51 + 24, v16) + *(v51 + 27);
          v52 = v51[1];
          if (v52)
          {
            do
            {
              v53 = v52;
              v52 = *v52;
            }

            while (v52);
          }

          else
          {
            do
            {
              v53 = v51[2];
              v54 = *v53 == v51;
              v51 = v53;
            }

            while (!v54);
          }

          v51 = v53;
        }

        while (v53 != v67);
      }

      *(a1 + 56) = v16;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_94:
      v63 = *(a1 + 56);
      if (v63 == v5)
      {
        v64 = [MEMORY[0x277CCA890] currentHandler];
        v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>, HDStatisticsTimeInterval>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>, HDStatisticsTimeInterval>>]"}];
        [v64 handleFailureInFunction:v65 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v63 = *(a1 + 56);
      }

      v5 = v63;
      if (v63 >= a2)
      {
        return;
      }
    }

    v24 = __p[1];
    v25 = __p[2];
    v26 = *(__p + 3);
    v27 = *(__p + 32);
    v28 = *(__p + 33);
    if (a2 - v24 >= 0.01)
    {
      if (v25 - v24 - (a2 - v24) < 0.01)
      {
        v32 = 0;
        v33 = 0;
        v31 = 0.0;
        v30 = __p[2];
        v29 = *(__p + 32);
        v25 = 0.0;
        v27 = 0;
LABEL_86:
        v55 = *(__p + 42);
        v56 = *(__p + 41);
        v57 = *(__p + 40);
        v58 = *__p;
        v74.var1 = __p[1];
        v74.var2 = v30;
        v74.var3 = v26;
        v74.var4 = v29;
        v74.var5 = v28;
        *(&v74.var5 + 1) = *(__p + 34);
        *(&v74.var5 + 5) = *(__p + 19);
        *(&v75 + 1) = v31;
        *&v76 = v25;
        *(&v76 + 1) = v32;
        LOBYTE(v77) = v27;
        HIBYTE(v77) = v33;
        v74.var0 = v58;
        *&v75 = v58;
        HDRawQuantitySample::applyMask(&v74, (a1 + 64));
        if (v74.var4)
        {
          HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v74, v55 ^ 1u);
          if (*(a1 + 25) == 1)
          {
            v59 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v74.var3);
            v60 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v59);
            HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(v60, &v74, v56 ^ 1u);
          }

          v57 = 1;
          LOBYTE(v56) = 1;
          LOBYTE(v55) = 1;
        }

        if (v77 == 1)
        {
          *&v73.var4 = v77;
          v61 = v76;
          v62 = *(a1 + 96);
          *v62 = v75;
          *(v62 + 16) = v61;
          *(v62 + 32) = *&v73.var4;
          *(v62 + 40) = v57;
          *(v62 + 41) = v56;
          *(v62 + 42) = v55;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_93:
        *(a1 + 56) = a2;
        goto LABEL_94;
      }

      v30 = a2;
      v29 = *(__p + 32);
      v31 = a2;
    }

    else
    {
      v29 = 0;
      v30 = __p[2];
      v31 = __p[1];
    }

    v32 = *(__p + 3);
    v33 = *(__p + 33);
    goto LABEL_86;
  }
}

uint64_t *HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(uint64_t *result, HDRawQuantitySample *a2, uint64_t a3)
{
  v3 = a3;
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
    if (v7 || result[5])
    {
      return result;
    }

    v16 = result + 1;
    goto LABEL_21;
  }

  if (v6 == 1)
  {
    if (v7)
    {
      return result;
    }

    v8 = 1;
LABEL_14:
    *(result + 1) = 0u;
    *result = v8;
    v13 = result + 19;
    v12 = result[19];
    *(v5 + 3) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 17) = 0u;
    if (v12)
    {
      v5[20] = v12;
      operator delete(v12);
      v14 = *(v5 + 80);
      *v13 = 0u;
      *(v5 + 21) = 0u;
      if (v14 && *(v5 + 7) > *(v5 + 24))
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v13 = 0uLL;
      *(v5 + 21) = 0uLL;
    }

    v15 = *(v5 + 25);
    *(v5 + 3) = *(v5 + 23);
    *(v5 + 4) = v15;
    *(v5 + 40) = *(v5 + 108);
LABEL_20:
    v16 = v5 + 1;
LABEL_21:
    HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(v16, &a2->var0, v3);
    v9 = v5 + 18;
    v10 = a2;
    v11 = v3;
    goto LABEL_22;
  }

  if (v7 != 2)
  {
    v8 = 2;
    goto LABEL_14;
  }

  HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample((result + 1), &a2->var0, 1);
  v9 = v5 + 18;
  v10 = a2;
  v11 = 1;
LABEL_22:

  return HDStatisticsTimeInterval::addSample(v9, v10, v11);
}

uint64_t **HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 352);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 352);
  v5 = (a1 + 352);
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 344), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 344), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 432), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 472), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 472), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 512), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 512), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(uint64_t result, double *a2, int a3)
{
  if (*(result + 112) != 1)
  {
    v10 = a2[2] - a2[1] + 22.5;
    v8 = *(result + 128) + v10;
    v9 = *(result + 120) + v10 * (*a2 - *(result + 120)) / v8;
    goto LABEL_5;
  }

  v3 = a2[1];
  v4 = v3 - *(result + 96);
  if (v4 > 45.0)
  {
    v5 = *(result + 128) + 22.5;
    v6 = *(result + 120) + (*(result + 80) - *(result + 120)) * 22.5 / v5;
    v7 = a2[2] - v3 + 22.5;
    v8 = v5 + v7;
    v9 = v6 + v7 * (*a2 - v6) / (v5 + v7);
LABEL_5:
    *(result + 128) = v8;
    goto LABEL_7;
  }

  v11 = v4 + *(result + 128);
  v12 = *(result + 120) + v4 * ((*a2 + *(result + 80)) * 0.5 - *(result + 120)) / v11;
  v13 = a2[2] - v3;
  v14 = v11 + v13;
  v9 = v12 + v13 * (*a2 - v12) / (v11 + v13);
  *(result + 128) = v14;
LABEL_7:
  *(result + 120) = v9;
  v15 = *a2;
  v16 = *(a2 + 1);
  *(result + 112) = *(a2 + 16);
  *(result + 80) = v15;
  *(result + 96) = v16;
  if (a3)
  {
    ++*(result + 32);
  }

  v17 = *(result + 24);
  if (v17)
  {
    v18 = *(result + 16);
    if (v18 >= *a2)
    {
      v18 = *a2;
    }

    *(result + 16) = v18;
    v19 = *(result + 8);
    if (*a2 >= v19)
    {
      v19 = *a2;
    }

    v20 = v17 + 1;
    *result = *result + (*a2 - *result) / v20;
    *(result + 8) = v19;
  }

  else
  {
    v21 = *a2;
    *(result + 8) = *a2;
    *(result + 16) = v21;
    *result = v21;
    v20 = 1;
  }

  *(result + 24) = v20;
  return result;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = a2 - 3;
    v11 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v11;
          v12 = a2 - v11;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 4);
          if (v13 > 2)
          {
            switch(v13)
            {
              case 3:

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
                return result;
            }
          }

          else
          {
            if (v13 < 2)
            {
              return result;
            }

            if (v13 == 2)
            {
              v102 = a2[-2].n128_u64[1];
              v103 = *(v11 + 24);
              if (v102 != v103)
              {
                v104 = *(*a3 + 408);
                v105 = *(*a3 + 416);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 408);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 408);
                  v107 = v106;
                  do
                  {
                    if (*v107 == v102)
                    {
                      goto LABEL_188;
                    }

                    v107 += 8;
                  }

                  while (v107 != v105);
                  v107 = *(*a3 + 416);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 416);
                      break;
                    }
                  }
                }

                if (v107 - v104 < v106 - v104)
                {
                  *v236 = *(v11 + 16);
                  *&v236[16] = *(v11 + 32);
                  v228 = *v11;
                  v220 = *v10;
                  v221 = a2[-2];
                  *(v11 + 27) = *(a2 - 21);
                  *v11 = v220;
                  *(v11 + 16) = v221;
                  result = v228;
                  *(a2 - 21) = *&v236[11];
                  *v10 = v228;
                  a2[-2] = *v236;
                }
              }

              return result;
            }
          }

          if (v12 <= 1151)
          {
            v108 = (v11 + 48);
            v110 = v11 == a2 || v108 == a2;
            if (a5)
            {
              if (!v110)
              {
                v111 = v11;
                do
                {
                  v112 = v111;
                  v111 = v108;
                  v113 = v112[4].n128_i64[1];
                  v114 = v112[1].n128_i64[1];
                  if (v113 != v114)
                  {
                    v115 = *(*a3 + 408);
                    v116 = *(*a3 + 416);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 408);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 408);
                      v118 = v117;
                      do
                      {
                        if (*v118 == v113)
                        {
                          goto LABEL_212;
                        }

                        v118 += 8;
                      }

                      while (v118 != v116);
                      v118 = *(*a3 + 416);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 416);
                          break;
                        }
                      }
                    }

                    if (v118 - v115 < v117 - v115)
                    {
                      v232 = v111[1].n128_u64[0];
                      v224 = *v111;
                      v242 = v112[5];
                      v119 = v111;
                      while (1)
                      {
                        v120 = v112[1];
                        *v119 = *v112;
                        *(v119 + 16) = v120;
                        *(v119 + 27) = *(v112 + 27);
                        if (v112 == v11)
                        {
                          break;
                        }

                        v119 = v112;
                        v121 = v112[-2].n128_i64[1];
                        if (v113 != v121)
                        {
                          v122 = *(*a3 + 408);
                          v123 = *(*a3 + 416);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 408);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 408);
                            v125 = v124;
                            do
                            {
                              if (*v125 == v113)
                              {
                                goto LABEL_225;
                              }

                              v125 += 8;
                            }

                            while (v125 != v123);
                            v125 = *(*a3 + 416);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 416);
                                break;
                              }
                            }
                          }

                          v112 = (v119 - 48);
                          if (v125 - v122 < v124 - v122)
                          {
                            continue;
                          }
                        }

                        goto LABEL_232;
                      }

                      v119 = v11;
LABEL_232:
                      result = v224;
                      *v119 = v224;
                      *(v119 + 16) = v232;
                      *(v119 + 24) = v113;
                      *(v119 + 32) = v242.n128_u64[0];
                      *(v119 + 39) = *(&v242.n128_u32[1] + 3);
                    }
                  }

                  v108 = v111 + 3;
                }

                while (&v111[3] != a2);
              }
            }

            else if (!v110)
            {
              do
              {
                v205 = a1;
                a1 = v108;
                v206 = *(v205 + 72);
                v207 = *(v205 + 24);
                if (v206 != v207)
                {
                  v208 = *(*a3 + 408);
                  v209 = *(*a3 + 416);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 408);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 408);
                    v211 = v210;
                    do
                    {
                      if (*v211 == v206)
                      {
                        goto LABEL_351;
                      }

                      v211 += 8;
                    }

                    while (v211 != v209);
                    v211 = *(*a3 + 416);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 416);
                        break;
                      }
                    }
                  }

                  if (v211 - v208 < v210 - v208)
                  {
                    v235 = *(a1 + 16);
                    v227 = *a1;
                    v245 = *(v205 + 80);
                    v212 = a1;
                    do
                    {
                      v213 = v212;
                      v212 = v205;
                      v214 = *(v205 + 16);
                      *v213 = *v205;
                      v213[1] = v214;
                      *(v213 + 27) = *(v205 + 27);
                      v215 = *(v205 - 24);
                      if (v206 == v215)
                      {
                        break;
                      }

                      v216 = *(*a3 + 408);
                      v217 = *(*a3 + 416);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 408);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 408);
                        v219 = v218;
                        do
                        {
                          if (*v219 == v206)
                          {
                            goto LABEL_363;
                          }

                          v219 += 8;
                        }

                        while (v219 != v217);
                        v219 = *(*a3 + 416);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 416);
                            break;
                          }
                        }
                      }

                      v205 = v212 - 48;
                    }

                    while (v219 - v216 < v218 - v216);
                    result = v227;
                    *v212 = v227;
                    *(v212 + 16) = v235;
                    *(v212 + 24) = v206;
                    *(v212 + 32) = v245;
                    *(v212 + 39) = *(&v245 + 7);
                  }
                }

                v108 = (a1 + 48);
              }

              while ((a1 + 48) != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v126 = (v13 - 2) >> 1;
              v127 = v126;
              do
              {
                v128 = v127;
                if (v126 >= v127)
                {
                  v129 = (2 * v127) | 1;
                  v130 = v11 + 48 * v129;
                  if (2 * v128 + 2 < v13)
                  {
                    v131 = *(v130 + 24);
                    v132 = *(v130 + 72);
                    if (v131 != v132)
                    {
                      v134 = *(*a3 + 408);
                      v133 = *(*a3 + 416);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 408);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 408);
                        v136 = v135;
                        do
                        {
                          if (*v136 == v131)
                          {
                            goto LABEL_245;
                          }

                          v136 += 8;
                        }

                        while (v136 != v133);
                        v136 = *(*a3 + 416);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 416);
                            break;
                          }
                        }
                      }

                      v137 = (v136 - v134);
                      v138 = (v135 - v134);
                      v139 = v137 < v138;
                      if (v137 >= v138)
                      {
                        v140 = 0;
                      }

                      else
                      {
                        v140 = 48;
                      }

                      v130 += v140;
                      if (v139)
                      {
                        v129 = 2 * v128 + 2;
                      }
                    }
                  }

                  v141 = v11 + 48 * v128;
                  v142 = *(v130 + 24);
                  v143 = *(v141 + 24);
                  if (v142 == v143)
                  {
                    goto LABEL_265;
                  }

                  v145 = *(*a3 + 408);
                  v144 = *(*a3 + 416);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 408);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 408);
                    v147 = v146;
                    do
                    {
                      if (*v147 == v142)
                      {
                        goto LABEL_260;
                      }

                      v147 += 8;
                    }

                    while (v147 != v144);
                    v147 = *(*a3 + 416);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 416);
                        break;
                      }
                    }
                  }

                  if (v147 - v145 >= v146 - v145)
                  {
LABEL_265:
                    v233 = *(v141 + 16);
                    v225 = *v141;
                    v243 = *(v141 + 32);
                    v148 = *v130;
                    v149 = *(v130 + 16);
                    *(v141 + 27) = *(v130 + 27);
                    *v141 = v148;
                    *(v141 + 16) = v149;
                    if (v126 >= v129)
                    {
                      while (1)
                      {
                        v151 = 2 * v129;
                        v129 = (2 * v129) | 1;
                        v150 = v11 + 48 * v129;
                        v152 = v151 + 2;
                        if (v152 < v13)
                        {
                          v153 = *(v150 + 24);
                          v154 = *(v150 + 72);
                          if (v153 != v154)
                          {
                            v155 = *(*a3 + 408);
                            v156 = *(*a3 + 416);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 408);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 408);
                              v158 = v157;
                              do
                              {
                                if (*v158 == v153)
                                {
                                  goto LABEL_274;
                                }

                                v158 += 8;
                              }

                              while (v158 != v156);
                              v158 = *(*a3 + 416);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 416);
                                  break;
                                }
                              }
                            }

                            v159 = (v158 - v155);
                            v160 = (v157 - v155);
                            v161 = v159 < v160;
                            if (v159 >= v160)
                            {
                              v162 = 0;
                            }

                            else
                            {
                              v162 = 48;
                            }

                            v150 += v162;
                            if (v161)
                            {
                              v129 = v152;
                            }
                          }
                        }

                        v163 = *(v150 + 24);
                        if (v163 != v143)
                        {
                          v165 = *(*a3 + 408);
                          v164 = *(*a3 + 416);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 408);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 408);
                            v167 = v166;
                            do
                            {
                              if (*v167 == v163)
                              {
                                goto LABEL_289;
                              }

                              v167 += 8;
                            }

                            while (v167 != v164);
                            v167 = *(*a3 + 416);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 416);
                                break;
                              }
                            }
                          }

                          if (v167 - v165 < v166 - v165)
                          {
                            break;
                          }
                        }

                        v168 = *v150;
                        v169 = *(v150 + 16);
                        *(v130 + 27) = *(v150 + 27);
                        *v130 = v168;
                        *(v130 + 16) = v169;
                        v130 = v150;
                        if (v126 < v129)
                        {
                          goto LABEL_295;
                        }
                      }
                    }

                    v150 = v130;
LABEL_295:
                    *v150 = v225;
                    *(v150 + 16) = v233;
                    *(v150 + 24) = v143;
                    *(v150 + 32) = v243;
                    *(v150 + 39) = *(&v243 + 7);
                  }
                }

                v127 = v128 - 1;
              }

              while (v128);
              v170 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
              do
              {
                v171 = 0;
                *v234 = *(v11 + 16);
                *&v234[16] = *(v11 + 32);
                v226 = *v11;
                v172 = v11;
                do
                {
                  v173 = v172;
                  v174 = v172 + 48 * v171;
                  v172 = v174 + 48;
                  v175 = 2 * v171;
                  v171 = (2 * v171) | 1;
                  v176 = v175 + 2;
                  if (v175 + 2 < v170)
                  {
                    v177 = *(v174 + 72);
                    v178 = *(v174 + 120);
                    if (v177 != v178)
                    {
                      v180 = *(*a3 + 408);
                      v179 = *(*a3 + 416);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 408);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 408);
                        v182 = v181;
                        do
                        {
                          if (*v182 == v177)
                          {
                            goto LABEL_306;
                          }

                          v182 += 8;
                        }

                        while (v182 != v179);
                        v182 = *(*a3 + 416);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 416);
                            break;
                          }
                        }
                      }

                      v183 = v174 + 96;
                      if (v182 - v180 < v181 - v180)
                      {
                        v172 = v183;
                        v171 = v176;
                      }
                    }
                  }

                  v184 = *v172;
                  v185 = *(v172 + 16);
                  *(v173 + 27) = *(v172 + 27);
                  *v173 = v184;
                  v173[1] = v185;
                }

                while (v171 <= (v170 - 2) / 2);
                a2 -= 3;
                if (v172 == a2)
                {
                  result = v226;
                  *(v172 + 27) = *&v234[11];
                  *v172 = v226;
                  *(v172 + 16) = *v234;
                }

                else
                {
                  v186 = *a2;
                  v187 = a2[1];
                  *(v172 + 27) = *(a2 + 27);
                  *v172 = v186;
                  *(v172 + 16) = v187;
                  result = v226;
                  *(a2 + 27) = *&v234[11];
                  *a2 = v226;
                  a2[1] = *v234;
                  v188 = v172 - v11 + 48;
                  if (v188 >= 49)
                  {
                    v189 = (0xAAAAAAAAAAAAAAABLL * (v188 >> 4) - 2) >> 1;
                    v190 = v11 + 48 * v189;
                    v191 = *(v190 + 24);
                    v192 = *(v172 + 24);
                    if (v191 != v192)
                    {
                      v194 = *(*a3 + 408);
                      v193 = *(*a3 + 416);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 408);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 408);
                        v196 = v195;
                        do
                        {
                          if (*v196 == v191)
                          {
                            goto LABEL_321;
                          }

                          v196 += 8;
                        }

                        while (v196 != v193);
                        v196 = *(*a3 + 416);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 416);
                            break;
                          }
                        }
                      }

                      if (v196 - v194 < v195 - v194)
                      {
                        v248 = *(v172 + 16);
                        v239 = *(v172 + 32);
                        v244 = *v172;
                        do
                        {
                          v197 = v172;
                          v172 = v190;
                          v198 = *v190;
                          v199 = *(v190 + 16);
                          *(v197 + 27) = *(v190 + 27);
                          *v197 = v198;
                          v197[1] = v199;
                          if (!v189)
                          {
                            break;
                          }

                          v189 = (v189 - 1) >> 1;
                          v190 = v11 + 48 * v189;
                          v200 = *(v190 + 24);
                          if (v200 == v192)
                          {
                            break;
                          }

                          v202 = *(*a3 + 408);
                          v201 = *(*a3 + 416);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 408);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 408);
                            v204 = v203;
                            do
                            {
                              if (*v204 == v200)
                              {
                                goto LABEL_338;
                              }

                              v204 += 8;
                            }

                            while (v204 != v201);
                            v204 = *(*a3 + 416);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 416);
                                break;
                              }
                            }
                          }
                        }

                        while (v204 - v202 < v203 - v202);
                        result = v244;
                        *v172 = v244;
                        *(v172 + 16) = v248;
                        *(v172 + 24) = v192;
                        *(v172 + 32) = v239;
                        *(v172 + 39) = *(&v239 + 7);
                      }
                    }
                  }
                }

                v139 = v170-- <= 2;
              }

              while (!v139);
            }

            return result;
          }

          v14 = v13 >> 1;
          v15 = (v11 + 48 * (v13 >> 1));
          if (v12 < 0x1801)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v17, v15, v18, a3);
            *v229 = *(a1 + 16);
            *&v229[16] = *(a1 + 32);
            v222 = *a1;
            v19 = *(v15 + 27);
            v20 = v15[1];
            *a1 = *v15;
            *(a1 + 16) = v20;
            *(a1 + 27) = v19;
            *(v15 + 27) = *&v229[11];
            *v15 = v222;
            v15[1] = *v229;
          }

          --a4;
          if (a5)
          {
            v21 = *(a1 + 24);
            v22 = *a3;
            break;
          }

          v23 = *(a1 - 24);
          v21 = *(a1 + 24);
          if (v23 != v21)
          {
            v22 = *a3;
            v24 = *(*a3 + 408);
            v25 = *(*a3 + 416);
            if (v24 == v25)
            {
              v27 = *(*a3 + 408);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 408);
              v27 = v26;
              do
              {
                if (*v27 == v23)
                {
                  goto LABEL_22;
                }

                v27 += 8;
              }

              while (v27 != v25);
              v27 = *(*a3 + 416);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 416);
                  break;
                }
              }
            }

            if (v27 - v24 < v26 - v24)
            {
              break;
            }
          }

          v247 = *(a1 + 16);
          v238 = *(a1 + 32);
          v241 = *a1;
          v66 = a2[-2].n128_u64[1];
          if (v21 == v66)
          {
            goto LABEL_122;
          }

          v67 = *(*a3 + 408);
          v68 = *(*a3 + 416);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 408);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 416);
                break;
              }
            }

            v70 = *(*a3 + 408);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 416);
                break;
              }
            }
          }

          if (v69 - v67 >= v70 - v67)
          {
LABEL_122:
            v11 = a1 + 48;
            if (a1 + 48 < a2)
            {
              v74 = *a3;
              v75 = a1;
              do
              {
                v76 = *(v75 + 72);
                v75 = v11;
                if (v21 != v76)
                {
                  v77 = *(v74 + 408);
                  v78 = *(v74 + 416);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 408);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 408);
                    v80 = v79;
                    do
                    {
                      if (*v80 == v21)
                      {
                        goto LABEL_130;
                      }

                      v80 += 8;
                    }

                    while (v80 != v78);
                    v80 = *(v74 + 416);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 416);
                        break;
                      }
                    }
                  }

                  if (v80 - v77 < v79 - v77)
                  {
                    break;
                  }
                }

                v11 += 48;
              }

              while (v75 + 48 < a2);
            }
          }

          else
          {
            v11 = a1;
            do
            {
              do
              {
                v71 = *(v11 + 72);
                v11 += 48;
              }

              while (v21 == v71);
              v72 = *(*a3 + 408);
              if (v67 == v68)
              {
                v73 = *(*a3 + 408);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 416);
                    break;
                  }
                }

                v73 = *(*a3 + 408);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 416);
                    break;
                  }
                }
              }
            }

            while (v72 - v67 >= v73 - v67);
          }

          v81 = a2;
          if (v11 < a2)
          {
            v82 = *a3;
            v81 = a2;
            do
            {
              v83 = v81[-2].n128_u64[1];
              v81 -= 3;
              if (v21 == v83)
              {
                break;
              }

              v84 = *(v82 + 408);
              v85 = *(v82 + 416);
              if (v84 == v85)
              {
                v87 = *(v82 + 408);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 408);
                v87 = v86;
                do
                {
                  if (*v87 == v21)
                  {
                    goto LABEL_144;
                  }

                  v87 += 8;
                }

                while (v87 != v85);
                v87 = *(v82 + 416);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 416);
                    break;
                  }
                }
              }
            }

            while (v87 - v84 < v86 - v84);
          }

          while (v11 < v81)
          {
            *v231 = *(v11 + 16);
            *&v231[16] = *(v11 + 32);
            v223 = *v11;
            v88 = *v81;
            v89 = v81[1];
            *(v11 + 27) = *(v81 + 27);
            *v11 = v88;
            *(v11 + 16) = v89;
            *(v81 + 27) = *&v231[11];
            *v81 = v223;
            v81[1] = *v231;
            v90 = *a3;
            do
            {
              do
              {
                v91 = *(v11 + 72);
                v11 += 48;
              }

              while (v21 == v91);
              v92 = *(v90 + 408);
              v93 = *(v90 + 416);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 408);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 416);
                    break;
                  }
                }

                v95 = *(v90 + 408);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 416);
                    break;
                  }
                }
              }
            }

            while (v94 - v92 >= v95 - v92);
            do
            {
              v96 = v81[-2].n128_u64[1];
              v81 -= 3;
              if (v21 == v96)
              {
                break;
              }

              v97 = v92;
              if (v92 == v93)
              {
                v98 = v92;
              }

              else
              {
                while (*v97 != v21)
                {
                  v97 += 8;
                  if (v97 == v93)
                  {
                    v97 = v93;
                    break;
                  }
                }

                v98 = v92;
                while (*v98 != v96)
                {
                  v98 += 8;
                  if (v98 == v93)
                  {
                    v98 = v93;
                    break;
                  }
                }
              }
            }

            while (v97 - v92 < v98 - v92);
          }

          v99 = (v11 - 48);
          if (v11 - 48 != a1)
          {
            v100 = *v99;
            v101 = *(v11 - 32);
            *(a1 + 27) = *(v11 - 21);
            *a1 = v100;
            *(a1 + 16) = v101;
          }

          a5 = 0;
          result = v241;
          *v99 = v241;
          *(v11 - 32) = v247;
          *(v11 - 24) = v21;
          *(v11 - 9) = *(&v238 + 7);
          *(v11 - 16) = v238;
        }

        v246 = *(a1 + 16);
        v237 = *(a1 + 32);
        v240 = *a1;
        v28 = a1;
        do
        {
          v29 = v28;
          v28 += 48;
          v30 = *(v29 + 72);
          if (v30 == v21)
          {
            break;
          }

          v31 = *(v22 + 408);
          v32 = *(v22 + 416);
          if (v31 == v32)
          {
            v34 = *(v22 + 408);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 408);
            v34 = v33;
            do
            {
              if (*v34 == v30)
              {
                goto LABEL_34;
              }

              v34 += 8;
            }

            while (v34 != v32);
            v34 = *(v22 + 416);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 416);
                break;
              }
            }
          }
        }

        while (v34 - v31 < v33 - v31);
        v35 = a2;
        if (v29 == a1)
        {
          v35 = a2;
          if (v28 < a2)
          {
            v35 = a2;
            do
            {
              v41 = v35[-2].n128_u64[1];
              v35 -= 3;
              if (v41 != v21)
              {
                v42 = *(v22 + 408);
                v43 = *(v22 + 416);
                if (v42 == v43)
                {
                  v45 = *(v22 + 408);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 408);
                  v45 = v44;
                  do
                  {
                    if (*v45 == v41)
                    {
                      goto LABEL_60;
                    }

                    v45 += 8;
                  }

                  while (v45 != v43);
                  v45 = *(v22 + 416);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 416);
                      break;
                    }
                  }
                }

                if (v45 - v42 < v44 - v42)
                {
                  break;
                }
              }
            }

            while (v28 < v35);
          }
        }

        else
        {
          do
          {
            do
            {
              v36 = v35[-2].n128_u64[1];
              v35 -= 3;
            }

            while (v36 == v21);
            v37 = *(v22 + 408);
            v38 = *(v22 + 416);
            if (v37 == v38)
            {
              v40 = *(v22 + 408);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 408);
              v40 = v39;
              do
              {
                if (*v40 == v36)
                {
                  goto LABEL_46;
                }

                v40 += 8;
              }

              while (v40 != v38);
              v40 = *(v22 + 416);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 416);
                  break;
                }
              }
            }
          }

          while (v40 - v37 >= v39 - v37);
        }

        v11 = v28;
        if (v28 < v35)
        {
          v46 = v35;
          do
          {
            *v230 = *(v11 + 16);
            *&v230[16] = *(v11 + 32);
            v47 = *v11;
            v49 = *v46;
            v48 = v46[1];
            *(v11 + 27) = *(v46 + 27);
            *v11 = v49;
            *(v11 + 16) = v48;
            *(v46 + 27) = *&v230[11];
            *v46 = v47;
            v46[1] = *v230;
            v50 = *a3;
            do
            {
              v51 = *(v11 + 72);
              v11 += 48;
              if (v51 == v21)
              {
                break;
              }

              v52 = *(v50 + 408);
              v53 = *(v50 + 416);
              if (v52 == v53)
              {
                v55 = *(v50 + 408);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 408);
                v55 = v54;
                do
                {
                  if (*v55 == v51)
                  {
                    goto LABEL_75;
                  }

                  v55 += 8;
                }

                while (v55 != v53);
                v55 = *(v50 + 416);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 416);
                    break;
                  }
                }
              }
            }

            while (v55 - v52 < v54 - v52);
            do
            {
              do
              {
                v56 = *(v46 - 3);
                v46 -= 3;
              }

              while (v56 == v21);
              v57 = *(v50 + 408);
              v58 = *(v50 + 416);
              if (v57 == v58)
              {
                v60 = *(v50 + 408);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 408);
                v60 = v59;
                do
                {
                  if (*v60 == v56)
                  {
                    goto LABEL_86;
                  }

                  v60 += 8;
                }

                while (v60 != v58);
                v60 = *(v50 + 416);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 416);
                    break;
                  }
                }
              }
            }

            while (v60 - v57 >= v59 - v57);
          }

          while (v11 < v46);
        }

        v61 = (v11 - 48);
        if (v11 - 48 != a1)
        {
          v62 = *v61;
          v63 = *(v11 - 32);
          *(a1 + 27) = *(v11 - 21);
          *a1 = v62;
          *(a1 + 16) = v63;
        }

        *v61 = v240;
        *(v11 - 32) = v246;
        *(v11 - 24) = v21;
        *(v11 - 9) = *(&v237 + 7);
        *(v11 - 16) = v237;
        if (v28 >= v35)
        {
          break;
        }

LABEL_97:
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(v11, a2, a3))
      {
        break;
      }

      if (!v64)
      {
        goto LABEL_97;
      }
    }

    a2 = (v11 - 48);
    if (!v64)
    {
      continue;
    }

    return result;
  }
}