void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 65), (a2 + 520));
  v4 = *(a2 + 544);
  *(a2 + 544) = 0;
  v5 = a1[68];
  a1[68] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  v13 = *(a2 + 184);
  v14 = *(a2 + 200);
  v15 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v15;
  *(a1 + 200) = v14;
  *(a1 + 184) = v13;
  v16 = *(a2 + 248);
  v17 = *(a2 + 280);
  v18 = *(a2 + 296);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = v17;
  *(a1 + 248) = v16;
  v19 = (a1 + 312);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 296) = v18;
  *(a1 + 304) = a1 + 312;
  v20 = *(a2 + 304);
  if (v20 != (a2 + 312))
  {
    v21 = 0;
    v22 = (a1 + 312);
    while (1)
    {
      v23 = v20[4];
      v24 = (a1 + 312);
      if (v22 == v19)
      {
        goto LABEL_12;
      }

      v25 = v21;
      v26 = (a1 + 312);
      if (v21)
      {
        do
        {
          v24 = v25;
          v25 = v25[1];
        }

        while (v25);
      }

      else
      {
        do
        {
          v24 = v26[2];
          v27 = *v24 == v26;
          v26 = v24;
        }

        while (v27);
      }

      if (v24[4] < v23)
      {
LABEL_12:
        if (v21)
        {
          v28 = v24 + 1;
        }

        else
        {
          v28 = (a1 + 312);
        }

        if (!*v28)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v21)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v29 = v21;
            v30 = v21[4];
            if (v30 <= v23)
            {
              break;
            }

            v21 = *v29;
            if (!*v29)
            {
              goto LABEL_23;
            }
          }

          if (v30 >= v23)
          {
            break;
          }

          v21 = v29[1];
          if (!v21)
          {
            goto LABEL_23;
          }
        }
      }

      v31 = v20[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v20[2];
          v27 = *v32 == v20;
          v20 = v32;
        }

        while (!v27);
      }

      if (v32 == (a2 + 312))
      {
        break;
      }

      v21 = *v19;
      v22 = *(a1 + 304);
      v20 = v32;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 328, a2 + 328);
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 368), *(a2 + 368), *(a2 + 376), (*(a2 + 376) - *(a2 + 368)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 392, a2 + 392);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 432, a2 + 432);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 472, a2 + 472);
  return a1;
}

void sub_228F100A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 432);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 392);
  v14 = *(v10 + 368);
  if (v14)
  {
    *(v10 + 376) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 328);
  std::__tree<long>::destroy(*v12);
  v15 = *a10;
  if (*a10)
  {
    *(v10 + 104) = v15;
    operator delete(v15);
  }

  objc_destroyWeak((v10 + 88));
  v16 = *v11;
  if (*v11)
  {
    *(v10 + 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::operator=(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 200);
  v11 = *(a2 + 216);
  v12 = *(a2 + 232);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 232) = v12;
  *(a1 + 216) = v11;
  *(a1 + 200) = v10;
  v13 = *(a2 + 264);
  v14 = *(a2 + 280);
  v15 = *(a2 + 296);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 296) = v15;
  *(a1 + 264) = v13;
  *(a1 + 280) = v14;
  v16 = *(a2 + 120);
  v17 = *(a2 + 136);
  v18 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v18;
  *(a1 + 136) = v17;
  *(a1 + 120) = v16;
  v19 = a1 + 312;
  std::__tree<long>::destroy(*(a1 + 312));
  *(a1 + 304) = *(a2 + 304);
  v20 = *(a2 + 312);
  v21 = *(a2 + 320);
  *(a1 + 312) = v20;
  *(a1 + 320) = v21;
  if (v21)
  {
    *(v20 + 16) = v19;
    *(a2 + 304) = a2 + 312;
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
  }

  else
  {
    *(a1 + 304) = v19;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 328, (a2 + 328));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 368, (a2 + 368));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 392, (a2 + 392));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 432, (a2 + 432));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 472, (a2 + 472));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v116 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v98 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v96 = a2;
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v98 endDate:v8];
  v13 = a1;
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 368);
      v17 = *(a2 + 376);
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

  v114[0] = &unk_283BEE658;
  v115 = v114;
  v99 = v12;
  v101 = *(v13 + 24);
  v21 = *(v96 + 264);
  v22 = *(v96 + 280);
  v110 = *(v96 + 248);
  v111 = v21;
  v112 = v22;
  v113 = *(v96 + 296);
  v23 = *(v96 + 200);
  v106 = *(v96 + 184);
  v107 = v23;
  v24 = *(v96 + 232);
  v108 = *(v96 + 216);
  v109 = v24;
  v25 = *(v96 + 136);
  *__p = *(v96 + 120);
  v103 = v25;
  v26 = *(v96 + 168);
  v104 = *(v96 + 152);
  v105 = v26;
  if (!v115)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v27 = (*(*v115 + 48))(v115, __p);
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  v30 = *(v27 + 32);
  v32 = *(v27 + 40);
  v31 = *(v27 + 48);
  v33 = *(v27 + 56);
  v34 = *(v27 + 80);
  v35 = *(v27 + 112);
  v36 = *(v27 + 120);
  v37 = *(v27 + 128);
  v38 = *(a1 + 24);
  v39 = _HKStatisticsOptionBaselineRelativeQuantities();
  v40 = *(a1 + 16);
  if ((v39 & v38) != 0)
  {
    [v40 _unitForChangeInCanonicalUnit];
  }

  else
  {
    [v40 canonicalUnit];
  }
  v100 = ;
  if ((v101 & 2) != 0)
  {
    if (v35)
    {
      v36 = v36 + (v34 - v36) * 22.5 / (v37 + 22.5);
    }

    v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v100 doubleValue:v36];
    [v99 setAverageQuantity:v12];
  }

  if ((v101 & 4) != 0)
  {
    v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v100 doubleValue:v29];
    [v99 setMinimumQuantity:v12];
  }

  if ((v101 & 8) != 0)
  {
    v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v100 doubleValue:v28];
    [v99 setMaximumQuantity:v12];
  }

  if ((v101 & 0x20) != 0)
  {
    v41 = [MEMORY[0x277CCD7E8] quantityWithUnit:v100 doubleValue:v32];
    [v99 setMostRecentQuantity:v41];

    v12 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v31 end:v33];
    [v99 setMostRecentQuantityDateInterval:v12];
  }

  [v99 setDataCount:v30];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_104;
  }

  if ((v101 & 2) != 0)
  {
    v93 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v93 = 0;
  }

  if ((v101 & 4) != 0)
  {
    v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v92 = 0;
  }

  if ((v101 & 8) != 0)
  {
    v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v90 = 0;
  }

  if ((v101 & 0x20) != 0)
  {
    v89 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v91 = 0;
    v89 = 0;
  }

  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v103 = 0u;
  LODWORD(v104) = 1065353216;
  v42 = *(v96 + 304);
  if (v42 == (v96 + 312))
  {
    goto LABEL_95;
  }

  do
  {
    v43 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_bundleIdentifierForSourceID(v96, v42[4]);
    v44 = v43;
    if (!v43)
    {
      goto LABEL_68;
    }

    v45 = [v43 hash];
    v46 = v45;
    v47 = __p[1];
    if (!__p[1])
    {
      goto LABEL_66;
    }

    v48 = vcnt_s8(__p[1]);
    v48.i16[0] = vaddlv_u8(v48);
    v49 = v48.u32[0];
    if (v48.u32[0] > 1uLL)
    {
      v50 = v45;
      if (v45 >= __p[1])
      {
        v50 = v45 % __p[1];
      }
    }

    else
    {
      v50 = (__p[1] - 1) & v45;
    }

    v51 = *(__p[0] + v50);
    if (!v51 || (v52 = *v51) == 0)
    {
LABEL_66:
      operator new();
    }

    v94 = __p[1] - 1;
    while (1)
    {
      v53 = v52[1];
      if (v53 == v46)
      {
        break;
      }

      if (v49 > 1)
      {
        if (v53 >= v47)
        {
          v53 %= v47;
        }
      }

      else
      {
        v53 &= v94;
      }

      if (v53 != v50)
      {
        goto LABEL_66;
      }

LABEL_65:
      v52 = *v52;
      if (!v52)
      {
        goto LABEL_66;
      }
    }

    v2 = v52[2];
    v54 = v44;
    v55 = v54;
    if (v2 != v54)
    {
      v12 = [v2 isEqualToString:v54];

      if (v12)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }

LABEL_67:
    v56 = *(v42 + 5);
    v57 = *(v42 + 7);
    v58 = *(v42 + 9);
    *(v52 + 9) = *(v42 + 11);
    *(v52 + 7) = v58;
    *(v52 + 5) = v57;
    *(v52 + 3) = v56;
    v59 = *(v42 + 13);
    v60 = *(v42 + 15);
    v61 = *(v42 + 17);
    *(v52 + 17) = *(v42 + 19);
    *(v52 + 15) = v61;
    *(v52 + 13) = v60;
    *(v52 + 11) = v59;
    v62 = *(v42 + 21);
    v63 = *(v42 + 23);
    v64 = *(v42 + 25);
    v52[25] = v42[27];
    *(v52 + 23) = v64;
    *(v52 + 21) = v63;
    *(v52 + 19) = v62;

LABEL_68:
    v65 = v42[1];
    if (v65)
    {
      do
      {
        v66 = v65;
        v65 = *v65;
      }

      while (v65);
    }

    else
    {
      do
      {
        v66 = v42[2];
        v67 = *v66 == v42;
        v42 = v66;
      }

      while (!v67);
    }

    v42 = v66;
  }

  while (v66 != (v96 + 312));
  v68 = v103;
  if (v103)
  {
    v2 = 0x277CCD000;
    do
    {
      v69 = v68[2];
      if ((v101 & 2) != 0)
      {
        if (!v115)
        {
          goto LABEL_122;
        }

        v70 = MEMORY[0x277CCD7E8];
        v71 = (*(*v115 + 48))(v115, v68 + 3);
        if (*(v71 + 112) == 1)
        {
          v72 = *(v71 + 120) + (*(v71 + 80) - *(v71 + 120)) * 22.5 / (*(v71 + 128) + 22.5);
        }

        else
        {
          v72 = *(v71 + 120);
        }

        v73 = [v70 quantityWithUnit:v100 doubleValue:v72];
        [v93 setObject:v73 forKeyedSubscript:v69];
      }

      if ((v101 & 4) != 0)
      {
        if (!v115)
        {
          goto LABEL_122;
        }

        v74 = [MEMORY[0x277CCD7E8] quantityWithUnit:v100 doubleValue:{*((*(*v115 + 48))(v115, v68 + 3) + 16)}];
        [v92 setObject:v74 forKeyedSubscript:v69];
      }

      if ((v101 & 8) != 0)
      {
        if (!v115)
        {
          goto LABEL_122;
        }

        v75 = [MEMORY[0x277CCD7E8] quantityWithUnit:v100 doubleValue:{*((*(*v115 + 48))(v115, v68 + 3) + 8)}];
        [v90 setObject:v75 forKeyedSubscript:v69];
      }

      if ((v101 & 0x20) != 0)
      {
        if (!v115)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v76 = (*(*v115 + 48))(v115, v68 + 3);
        v77 = *(v76 + 48);
        v78 = *(v76 + 56);
        v79 = [MEMORY[0x277CCD7E8] quantityWithUnit:v100 doubleValue:*(v76 + 40)];
        [v89 setObject:v79 forKeyedSubscript:v69];

        v80 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v77 end:v78];
        [v91 setObject:v80 forKeyedSubscript:v69];
      }

      if (!v115)
      {
LABEL_122:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v115 + 48))(v115, v68 + 3) + 32)}];
      [v95 setObject:v12 forKeyedSubscript:v69];

      v68 = *v68;
    }

    while (v68);
  }

LABEL_95:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  if ((v101 & 2) != 0)
  {
    [v99 setAverageQuantityBySource:v93];
  }

  if ((v101 & 4) != 0)
  {
    [v99 setMinimumQuantityBySource:v92];
  }

  if ((v101 & 8) != 0)
  {
    [v99 setMaximumQuantityBySource:v90];
  }

  if ((v101 & 0x20) != 0)
  {
    [v99 setMostRecentQuantityBySource:v89];
    [v99 setMostRecentQuantityDateIntervalBySource:v91];
  }

  [v99 setDataCountBySource:v95];

LABEL_104:
  std::__function::__value_func<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>> const&)>::~__value_func[abi:ne200100](v114);
  v81 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v82 = [v99 averageQuantity];
  if (v82)
  {
    v12 = [v99 averageQuantity];
    if (([v12 isCompatibleWithUnit:v81] & 1) == 0)
    {

      goto LABEL_118;
    }
  }

  v83 = [v99 minimumQuantity];
  if (v83)
  {
    v2 = [v99 minimumQuantity];
    if (![v2 isCompatibleWithUnit:v81])
    {
      v84 = 1;
      goto LABEL_112;
    }
  }

  v85 = [v99 maximumQuantity];
  if (v85)
  {
    v86 = [v99 maximumQuantity];
    v87 = [v86 isCompatibleWithUnit:v81];

    v84 = v87 ^ 1;
    if (v83)
    {
      goto LABEL_112;
    }

LABEL_116:
    if (!v82)
    {
      goto LABEL_117;
    }

LABEL_113:

    if ((v84 & 1) == 0)
    {
      goto LABEL_119;
    }

LABEL_118:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v81}];
    goto LABEL_119;
  }

  v84 = 0;
  if (!v83)
  {
    goto LABEL_116;
  }

LABEL_112:

  if (v82)
  {
    goto LABEL_113;
  }

LABEL_117:

  if (v84)
  {
    goto LABEL_118;
  }

LABEL_119:

  return v99;
}

void sub_228F111F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23)
{
  std::__function::__value_func<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>> const&)>::~__value_func[abi:ne200100](v23 - 192);

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 368);
  if (v1 != (*(a1 + 376) - v2) >> 3)
  {
    *(a1 + 376) = v2;
    std::vector<long long>::reserve((a1 + 368), v1);
    for (i = *(a1 + 344); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 368, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 368];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeThroughTime(uint64_t a1, double a2)
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
      v6 = *(a1 + 104);
      __p = *(a1 + 96);
      v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - __p);
      if (v7 == 1)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_85;
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

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v21 = __clz(v7);
      if (WeakRetained)
      {
        *&v71 = a1;
        v22 = 126 - 2 * v21;
        if (__p == v6)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,false>(__p, v6, &v71, v23, 1);
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
        v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v63 = 0;
      }

      if (__p != v6)
      {
        v64 = 0;
        v35 = 0;
        for (i = __p; i != v6; i += 3)
        {
          v37 = i[1];
          v68 = *i;
          v69 = v37;
          v70 = i[2].n128_u64[0];
          v38 = v68;
          v39 = v37.n128_f64[0];
          if (v37.n128_f64[0] - *(&v68 + 1) - (v16 - *(&v68 + 1)) >= 0.01)
          {
            if (v16 - *(&v68 + 1) >= 0.01)
            {
              v41 = v69.n128_u64[1];
              v40 = v70;
              v69.n128_f64[0] = v16;
              if (v70)
              {
                v67 = BYTE1(v70);
                v42 = v16;
LABEL_53:
                HDRawQuantitySample::applyMask(&v68, (a1 + 64));
                v43 = i[2].n128_u8[10];
                v44 = i[2].n128_u8[9];
                v66 = i[2].n128_u8[8];
                if (v70 != 1)
                {
                  goto LABEL_71;
                }

                if (v35)
                {
                  v45 = v69.n128_u64[1];
                  if (v64 == v69.n128_u64[1] || *(a1 + 24) == 1)
                  {
                    HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::addSample((a1 + 120), &v68, v43 ^ 1);
                    LOBYTE(v43) = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::addSample((a1 + 120), &v68, v43 ^ 1);
                  LOBYTE(v43) = 1;
                  v45 = v69.n128_u64[1];
                  v64 = v69.n128_i64[1];
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_70;
                }

                v46 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_bundleIdentifierForSourceID(a1, v45);
                if (!v46)
                {
                  goto LABEL_69;
                }

                v47 = [v63 objectForKeyedSubscript:v46];
                v48 = v47;
                if (v47)
                {
                  if ([v47 longLongValue] != v45 && *(a1 + 24) != 1)
                  {
LABEL_68:

LABEL_69:
LABEL_70:
                    v35 = 1;
LABEL_71:
                    if (v40)
                    {
                      *&v71 = v38;
                      *(&v71 + 1) = v42;
                      v72 = v39;
                      v73 = v41;
                      v74 = v40;
                      v75 = v67;
                      LOBYTE(v78) = v66;
                      BYTE1(v78) = v44;
                      BYTE2(v78) = v43;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v71);
                    }

                    continue;
                  }
                }

                else
                {
                  v62 = [MEMORY[0x277CCABB0] numberWithLongLong:v45];
                  [v63 setObject:v62 forKeyedSubscript:v46];
                }

                v49 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_canonicalSourceIDForSourceID(a1, v45);
                v50 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsForSource(a1, v49);
                HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::addSample(v50, &v68, v44 ^ 1);
                LOBYTE(v44) = 1;
                goto LABEL_68;
              }
            }

            else
            {
              LOBYTE(v70) = 0;
            }
          }

          else if (v70)
          {
            v67 = 0;
            v40 = 0;
            v41 = 0;
            v39 = 0.0;
            v42 = 0.0;
            goto LABEL_53;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 56) = v16;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_86:
      v59 = *(a1 + 56);
      if (v59 == v5)
      {
        v60 = [MEMORY[0x277CCA890] currentHandler];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>]"];
        [v60 handleFailureInFunction:v61 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v59 = *(a1 + 56);
      }

      v5 = v59;
      if (v59 >= a2)
      {
        return;
      }
    }

    v24 = __p->n128_f64[1];
    v25 = __p[1].n128_f64[0];
    v26 = __p[1].n128_u64[1];
    v27 = __p[2].n128_u8[0];
    v28 = __p[2].n128_u8[1];
    if (a2 - v24 >= 0.01)
    {
      if (v25 - v24 - (a2 - v24) < 0.01)
      {
        v32 = 0;
        v33 = 0;
        v31 = 0.0;
        v30 = __p[1].n128_f64[0];
        v29 = __p[2].n128_u8[0];
        v25 = 0.0;
        v27 = 0;
LABEL_78:
        v51 = __p[2].n128_u8[10];
        v52 = __p[2].n128_u8[9];
        v53 = __p[2].n128_i8[8];
        v54 = __p->n128_u64[0];
        *(&v71 + 1) = __p->n128_u64[1];
        v72 = v30;
        v73 = v26;
        v74 = v29;
        v75 = v28;
        v76 = *(__p[2].n128_i32 + 2);
        v77 = __p[2].n128_u16[3];
        *(&v78 + 1) = v31;
        *&v79 = v25;
        *(&v79 + 1) = v32;
        LOBYTE(v80) = v27;
        HIBYTE(v80) = v33;
        *&v71 = v54;
        *&v78 = v54;
        HDRawQuantitySample::applyMask(&v71, (a1 + 64));
        if (v74 == 1)
        {
          HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::addSample((a1 + 120), &v71, v51 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v55 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_canonicalSourceIDForSourceID(a1, v73);
            v56 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsForSource(a1, v55);
            HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::addSample(v56, &v71, v52 ^ 1);
          }

          v53 = 1;
          LOBYTE(v52) = 1;
          LOBYTE(v51) = 1;
        }

        if (v80 == 1)
        {
          LOWORD(v70) = v80;
          v57 = v79;
          v58 = *(a1 + 96);
          *v58 = v78;
          *(v58 + 16) = v57;
          *(v58 + 32) = v70;
          *(v58 + 40) = v53;
          *(v58 + 41) = v52;
          *(v58 + 42) = v51;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_85:
        *(a1 + 56) = a2;
        goto LABEL_86;
      }

      v30 = a2;
      v29 = __p[2].n128_u8[0];
      v31 = a2;
    }

    else
    {
      v29 = 0;
      v30 = __p[1].n128_f64[0];
      v31 = __p->n128_f64[1];
    }

    v32 = __p[1].n128_u64[1];
    v33 = __p[2].n128_u8[1];
    goto LABEL_78;
  }
}

int *HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::addSample(int *result, double *a2, int a3)
{
  if (*a2 == 1.79769313e308)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (*a2 != -1.79769313e308);
  }

  v4 = *result;
  if (v3)
  {
    if (v3 != 1)
    {
      if (v4 == 2)
      {
        v6 = (result + 2);
        a3 = 1;
        return HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(v6, a2, a3);
      }

      v5 = 2;
LABEL_15:
      *result = v5;
      *(result + 18) = 0u;
      *(result + 14) = 0u;
      *(result + 10) = 0u;
      *(result + 6) = 0u;
      *(result + 22) = 0u;
      *(result + 26) = 0u;
      *(result + 30) = 0u;
      *(result + 17) = 0;
      *(result + 2) = 0u;
      *(result + 40) = *(result + 88);
      v7 = *(result + 10);
      *(result + 3) = *(result + 9);
      *(result + 4) = v7;
      v6 = (result + 2);
      return HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(v6, a2, a3);
    }

    if (!v4)
    {
      v5 = 1;
      goto LABEL_15;
    }
  }

  else if (!v4 && !*(result + 5))
  {
    v6 = (result + 2);
    return HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(v6, a2, a3);
  }

  return result;
}

uint64_t **HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 312);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 312);
  v5 = (a1 + 312);
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 304), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 304), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 392), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 432), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 432), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 472), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 472), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
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

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
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
                v104 = *(*a3 + 368);
                v105 = *(*a3 + 376);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 368);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 368);
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
                  v107 = *(*a3 + 376);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 376);
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
                    v115 = *(*a3 + 368);
                    v116 = *(*a3 + 376);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 368);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 368);
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
                      v118 = *(*a3 + 376);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 376);
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
                          v122 = *(*a3 + 368);
                          v123 = *(*a3 + 376);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 368);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 368);
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
                            v125 = *(*a3 + 376);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 376);
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
                  v208 = *(*a3 + 368);
                  v209 = *(*a3 + 376);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 368);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 368);
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
                    v211 = *(*a3 + 376);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 376);
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

                      v216 = *(*a3 + 368);
                      v217 = *(*a3 + 376);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 368);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 368);
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
                        v219 = *(*a3 + 376);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 376);
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
                      v134 = *(*a3 + 368);
                      v133 = *(*a3 + 376);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 368);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 368);
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
                        v136 = *(*a3 + 376);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 376);
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

                  v145 = *(*a3 + 368);
                  v144 = *(*a3 + 376);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 368);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 368);
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
                    v147 = *(*a3 + 376);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 376);
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
                            v155 = *(*a3 + 368);
                            v156 = *(*a3 + 376);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 368);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 368);
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
                              v158 = *(*a3 + 376);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 376);
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
                          v165 = *(*a3 + 368);
                          v164 = *(*a3 + 376);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 368);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 368);
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
                            v167 = *(*a3 + 376);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 376);
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
                      v180 = *(*a3 + 368);
                      v179 = *(*a3 + 376);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 368);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 368);
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
                        v182 = *(*a3 + 376);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 376);
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
                      v194 = *(*a3 + 368);
                      v193 = *(*a3 + 376);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 368);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 368);
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
                        v196 = *(*a3 + 376);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 376);
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

                          v202 = *(*a3 + 368);
                          v201 = *(*a3 + 376);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 368);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 368);
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
                            v204 = *(*a3 + 376);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 376);
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
            v24 = *(*a3 + 368);
            v25 = *(*a3 + 376);
            if (v24 == v25)
            {
              v27 = *(*a3 + 368);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 368);
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
              v27 = *(*a3 + 376);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 376);
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

          v67 = *(*a3 + 368);
          v68 = *(*a3 + 376);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 368);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 376);
                break;
              }
            }

            v70 = *(*a3 + 368);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 376);
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
                  v77 = *(v74 + 368);
                  v78 = *(v74 + 376);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 368);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 368);
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
                    v80 = *(v74 + 376);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 376);
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
              v72 = *(*a3 + 368);
              if (v67 == v68)
              {
                v73 = *(*a3 + 368);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 376);
                    break;
                  }
                }

                v73 = *(*a3 + 368);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 376);
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

              v84 = *(v82 + 368);
              v85 = *(v82 + 376);
              if (v84 == v85)
              {
                v87 = *(v82 + 368);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 368);
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
                v87 = *(v82 + 376);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 376);
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
              v92 = *(v90 + 368);
              v93 = *(v90 + 376);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 368);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 376);
                    break;
                  }
                }

                v95 = *(v90 + 368);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 376);
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

          v31 = *(v22 + 368);
          v32 = *(v22 + 376);
          if (v31 == v32)
          {
            v34 = *(v22 + 368);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 368);
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
            v34 = *(v22 + 376);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 376);
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
                v42 = *(v22 + 368);
                v43 = *(v22 + 376);
                if (v42 == v43)
                {
                  v45 = *(v22 + 368);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 368);
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
                  v45 = *(v22 + 376);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 376);
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
            v37 = *(v22 + 368);
            v38 = *(v22 + 376);
            if (v37 == v38)
            {
              v40 = *(v22 + 368);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 368);
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
              v40 = *(v22 + 376);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 376);
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

              v52 = *(v50 + 368);
              v53 = *(v50 + 376);
              if (v52 == v53)
              {
                v55 = *(v50 + 368);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 368);
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
                v55 = *(v50 + 376);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 376);
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
              v57 = *(v50 + 368);
              v58 = *(v50 + 376);
              if (v57 == v58)
              {
                v60 = *(v50 + 368);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 368);
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
                v60 = *(v50 + 376);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 376);
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
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*>(v11, a2, a3))
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

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 368);
  v7 = *(*a4 + 376);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 368);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 376);
        break;
      }
    }

    v9 = *(*a4 + 368);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 376);
        break;
      }
    }
  }

  if (v8 - v6 >= v9 - v6)
  {
LABEL_21:
    v13 = *(a3 + 3);
    if (v13 != v4)
    {
      v14 = *(*a4 + 368);
      v15 = *(*a4 + 376);
      if (v14 == v15)
      {
        v17 = *(*a4 + 368);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 368);
        v17 = v16;
        do
        {
          if (*v17 == v13)
          {
            goto LABEL_27;
          }

          v17 += 8;
        }

        while (v17 != v15);
        v17 = *(*a4 + 376);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 376);
            break;
          }
        }
      }

      if (v17 - v14 < v16 - v14)
      {
        v18 = *a2;
        *v46 = a2[1];
        *&v46[16] = a2[2];
        v19 = *(a3 + 27);
        v20 = a3[1];
        *a2 = *a3;
        a2[1] = v20;
        *(a2 + 27) = v19;
        *a3 = v18;
        a3[1] = *v46;
        result = *&v46[11];
        *(a3 + 27) = *&v46[11];
        v22 = *(a2 + 3);
        v23 = *(a1 + 3);
        if (v22 != v23)
        {
          v24 = *(*a4 + 368);
          v25 = *(*a4 + 376);
          if (v24 == v25)
          {
            v27 = *(*a4 + 368);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 368);
            v27 = v26;
            do
            {
              if (*v27 == v22)
              {
                goto LABEL_38;
              }

              v27 += 8;
            }

            while (v27 != v25);
            v27 = *(*a4 + 376);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 376);
                break;
              }
            }
          }

          if (v27 - v24 < v26 - v24)
          {
            v41 = *a1;
            *v48 = a1[1];
            *&v48[16] = a1[2];
            v42 = *(a2 + 27);
            v43 = a2[1];
            *a1 = *a2;
            a1[1] = v43;
            *(a1 + 27) = v42;
            *a2 = v41;
            a2[1] = *v48;
            result = *&v48[11];
            *(a2 + 27) = *&v48[11];
          }
        }
      }
    }
  }

  else
  {
    v10 = *(a3 + 3);
    if (v10 != v4)
    {
      v11 = *(*a4 + 368);
      if (v6 == v7)
      {
        v12 = *(*a4 + 368);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 376);
            break;
          }
        }

        v12 = *(*a4 + 368);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 376);
            break;
          }
        }
      }

      if (v11 - v6 < v12 - v6)
      {
        v28 = a1[1];
        v29 = *a1;
        *v49 = *(&v28 + 1);
        *&v49[8] = a1[2];
        v30 = *(a3 + 27);
        v31 = a3[1];
        *a1 = *a3;
        a1[1] = v31;
        *(a1 + 27) = v30;
LABEL_59:
        *a3 = v29;
        a3[1] = v28;
        result = *&v49[3];
        *(a3 + 27) = *&v49[3];
        return result;
      }
    }

    v32 = *a1;
    *v47 = a1[1];
    *&v47[16] = a1[2];
    v33 = *(a2 + 27);
    v34 = a2[1];
    *a1 = *a2;
    a1[1] = v34;
    *(a1 + 27) = v33;
    *a2 = v32;
    a2[1] = *v47;
    result = *&v47[11];
    *(a2 + 27) = *&v47[11];
    v35 = *(a3 + 3);
    v36 = *(a2 + 3);
    if (v35 != v36)
    {
      v37 = *(*a4 + 368);
      v38 = *(*a4 + 376);
      if (v37 == v38)
      {
        v40 = *(*a4 + 368);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 368);
        v40 = v39;
        do
        {
          if (*v40 == v35)
          {
            goto LABEL_50;
          }

          v40 += 8;
        }

        while (v40 != v38);
        v40 = *(*a4 + 376);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 376);
            break;
          }
        }
      }

      if (v40 - v37 < v39 - v37)
      {
        v28 = a2[1];
        v29 = *a2;
        *v49 = *(&v28 + 1);
        *&v49[8] = a2[2];
        v44 = *(a3 + 27);
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *(a2 + 27) = v44;
        goto LABEL_59;
      }
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 368);
    v14 = *(*a5 + 376);
    if (v13 == v14)
    {
      v16 = *(*a5 + 368);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 368);
      v16 = v15;
      do
      {
        if (*v16 == v11)
        {
          goto LABEL_7;
        }

        v16 += 8;
      }

      while (v16 != v14);
      v16 = *(*a5 + 376);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 376);
          break;
        }
      }
    }

    if (v16 - v13 < v15 - v13)
    {
      v17 = *a3;
      *v38 = *(a3 + 16);
      *&v38[16] = *(a3 + 32);
      v18 = *(a4 + 27);
      v19 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v19;
      *(a3 + 27) = v18;
      *a4 = v17;
      *(a4 + 16) = *v38;
      result = *&v38[11];
      *(a4 + 27) = *&v38[11];
      v20 = *(a3 + 24);
      v21 = *(a2 + 24);
      if (v20 != v21)
      {
        v22 = *(*a5 + 368);
        v23 = *(*a5 + 376);
        if (v22 == v23)
        {
          v25 = *(*a5 + 368);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 368);
          v25 = v24;
          do
          {
            if (*v25 == v20)
            {
              goto LABEL_18;
            }

            v25 += 8;
          }

          while (v25 != v23);
          v25 = *(*a5 + 376);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 376);
              break;
            }
          }
        }

        if (v25 - v22 < v24 - v22)
        {
          v26 = *a2;
          *v39 = *(a2 + 16);
          *&v39[16] = *(a2 + 32);
          v27 = *(a3 + 27);
          v28 = *(a3 + 16);
          *a2 = *a3;
          *(a2 + 16) = v28;
          *(a2 + 27) = v27;
          *a3 = v26;
          *(a3 + 16) = *v39;
          result = *&v39[11];
          *(a3 + 27) = *&v39[11];
          v29 = *(a2 + 24);
          v30 = *(a1 + 24);
          if (v29 != v30)
          {
            v31 = *(*a5 + 368);
            v32 = *(*a5 + 376);
            if (v31 == v32)
            {
              v34 = *(*a5 + 368);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 368);
              v34 = v33;
              do
              {
                if (*v34 == v29)
                {
                  goto LABEL_29;
                }

                v34 += 8;
              }

              while (v34 != v32);
              v34 = *(*a5 + 376);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 376);
                  break;
                }
              }
            }

            if (v34 - v31 < v33 - v31)
            {
              v35 = *a1;
              *v40 = *(a1 + 16);
              *&v40[16] = *(a1 + 32);
              v36 = *(a2 + 27);
              v37 = *(a2 + 16);
              *a1 = *a2;
              *(a1 + 16) = v37;
              *(a1 + 27) = v36;
              *a2 = v35;
              *(a2 + 16) = *v40;
              result = *&v40[11];
              *(a2 + 27) = *&v40[11];
            }
          }
        }
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 368);
    v16 = *(*a6 + 376);
    if (v15 == v16)
    {
      v18 = *(*a6 + 368);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 368);
      v18 = v17;
      do
      {
        if (*v18 == v13)
        {
          goto LABEL_7;
        }

        v18 += 8;
      }

      while (v18 != v16);
      v18 = *(*a6 + 376);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 376);
          break;
        }
      }
    }

    if (v18 - v15 < v17 - v15)
    {
      v19 = *a4;
      *v49 = a4[1];
      *&v49[16] = a4[2];
      v20 = *(a5 + 27);
      v21 = a5[1];
      *a4 = *a5;
      a4[1] = v21;
      *(a4 + 27) = v20;
      *a5 = v19;
      a5[1] = *v49;
      result = *&v49[11];
      *(a5 + 27) = *&v49[11];
      v22 = *(a4 + 3);
      v23 = *(a3 + 3);
      if (v22 != v23)
      {
        v24 = *(*a6 + 368);
        v25 = *(*a6 + 376);
        if (v24 == v25)
        {
          v27 = *(*a6 + 368);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 368);
          v27 = v26;
          do
          {
            if (*v27 == v22)
            {
              goto LABEL_18;
            }

            v27 += 8;
          }

          while (v27 != v25);
          v27 = *(*a6 + 376);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 376);
              break;
            }
          }
        }

        if (v27 - v24 < v26 - v24)
        {
          v28 = *a3;
          *v50 = a3[1];
          *&v50[16] = a3[2];
          v29 = *(a4 + 27);
          v30 = a4[1];
          *a3 = *a4;
          a3[1] = v30;
          *(a3 + 27) = v29;
          *a4 = v28;
          a4[1] = *v50;
          result = *&v50[11];
          *(a4 + 27) = *&v50[11];
          v31 = *(a3 + 3);
          v32 = *(a2 + 3);
          if (v31 != v32)
          {
            v33 = *(*a6 + 368);
            v34 = *(*a6 + 376);
            if (v33 == v34)
            {
              v36 = *(*a6 + 368);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 368);
              v36 = v35;
              do
              {
                if (*v36 == v31)
                {
                  goto LABEL_29;
                }

                v36 += 8;
              }

              while (v36 != v34);
              v36 = *(*a6 + 376);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 376);
                  break;
                }
              }
            }

            if (v36 - v33 < v35 - v33)
            {
              v37 = *a2;
              *v51 = a2[1];
              *&v51[16] = a2[2];
              v38 = *(a3 + 27);
              v39 = a3[1];
              *a2 = *a3;
              a2[1] = v39;
              *(a2 + 27) = v38;
              *a3 = v37;
              a3[1] = *v51;
              result = *&v51[11];
              *(a3 + 27) = *&v51[11];
              v40 = *(a2 + 3);
              v41 = *(a1 + 3);
              if (v40 != v41)
              {
                v42 = *(*a6 + 368);
                v43 = *(*a6 + 376);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 368);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 368);
                  v45 = v44;
                  do
                  {
                    if (*v45 == v40)
                    {
                      goto LABEL_40;
                    }

                    v45 += 8;
                  }

                  while (v45 != v43);
                  v45 = *(*a6 + 376);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 376);
                      break;
                    }
                  }
                }

                if (v45 - v42 < v44 - v42)
                {
                  v46 = *a1;
                  *v52 = a1[1];
                  *&v52[16] = a1[2];
                  v47 = *(a2 + 27);
                  v48 = a2[1];
                  *a1 = *a2;
                  a1[1] = v48;
                  *(a1 + 27) = v47;
                  *a2 = v46;
                  a2[1] = *v52;
                  result = *&v52[11];
                  *(a2 + 27) = *&v52[11];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 24);
        v8 = *(a1 + 24);
        if (v7 != v8)
        {
          v9 = *(*a3 + 368);
          v10 = *(*a3 + 376);
          if (v9 == v10)
          {
            v12 = *(*a3 + 368);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 368);
            v12 = v11;
            do
            {
              if (*v12 == v7)
              {
                goto LABEL_10;
              }

              v12 += 8;
            }

            while (v12 != v10);
            v12 = *(*a3 + 376);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 376);
                break;
              }
            }
          }

          if (v12 - v9 < v11 - v9)
          {
            v30 = (a2 - 48);
            v31 = *a1;
            *v36 = *(a1 + 16);
            *&v36[16] = *(a1 + 32);
            v32 = *(a2 - 21);
            v33 = *(a2 - 32);
            *a1 = *(a2 - 48);
            *(a1 + 16) = v33;
            *(a1 + 27) = v32;
            *v30 = v31;
            v30[1] = *v36;
            *(v30 + 27) = *&v36[11];
          }
        }

        return 1;
      }

      goto LABEL_18;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
  v14 = a1 + 144;
  if (a1 + 144 == a2)
  {
    return 1;
  }

  v15 = 0;
  while (1)
  {
    v16 = *(v14 + 24);
    v17 = *(v13 + 24);
    if (v16 != v17)
    {
      v18 = *(*a3 + 368);
      v19 = *(*a3 + 376);
      if (v18 == v19)
      {
        v21 = *(*a3 + 368);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 368);
        v21 = v20;
        do
        {
          if (*v21 == v16)
          {
            goto LABEL_26;
          }

          v21 += 8;
        }

        while (v21 != v19);
        v21 = *(*a3 + 376);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 376);
            break;
          }
        }
      }

      if (v21 - v18 < v20 - v18)
      {
        v34 = *v14;
        v35 = *(v14 + 16);
        v37 = *(v14 + 32);
        v22 = v14;
        while (1)
        {
          v23 = *(v13 + 16);
          *v22 = *v13;
          *(v22 + 16) = v23;
          *(v22 + 27) = *(v13 + 27);
          if (v13 == a1)
          {
            break;
          }

          v22 = v13;
          v24 = *(v13 - 24);
          if (v16 != v24)
          {
            v25 = *(*a3 + 368);
            v26 = *(*a3 + 376);
            if (v25 == v26)
            {
              v28 = *(*a3 + 368);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 368);
              v28 = v27;
              do
              {
                if (*v28 == v16)
                {
                  goto LABEL_39;
                }

                v28 += 8;
              }

              while (v28 != v26);
              v28 = *(*a3 + 376);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 376);
                  break;
                }
              }
            }

            v13 -= 48;
            if (v28 - v25 < v27 - v25)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        v22 = a1;
LABEL_46:
        *v22 = v34;
        *(v22 + 16) = v35;
        *(v22 + 24) = v16;
        *(v22 + 32) = v37;
        *(v22 + 39) = *(&v37 + 7);
        if (++v15 == 8)
        {
          return v14 + 48 == a2;
        }
      }
    }

    v13 = v14;
    v14 += 48;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>> const&)#1}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 664) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 664))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 640);
    v5 = *(a1 + 632);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::addSample(uint64_t a1, double *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 3);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = a1 + 8;
  v12 = *(a1 + 8);
  *(&v38 + 1) = 0;
  v39 = 0uLL;
  v40 = 0;
  v13 = v6;
  if (v12 - v6 < 0.01 || (v13 = v12, v7 - v6 - (v12 - v6) >= 0.01))
  {
    *(&v38 + 1) = v13;
    *&v39 = v7;
    *(&v39 + 1) = v8;
    v14 = v10;
    LOBYTE(v40) = v9;
    v15 = v9;
    v16 = v8;
    v17 = v7;
    HIBYTE(v40) = v10;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    v13 = 0.0;
  }

  *&v38 = v5;
  v32 = 0uLL;
  *(&v31 + 1) = 0;
  v33 = 0;
  v18 = *(a1 + 16);
  v19 = v18 - v13;
  v20 = v17 - v13 - (v18 - v13);
  if (!*(a1 + 36))
  {
    if (v20 < 0.01)
    {
      goto LABEL_10;
    }

    if (v19 >= 0.01)
    {
      goto LABEL_14;
    }

LABEL_13:
    *(&v31 + 1) = *(&v38 + 1);
    v32 = v39;
    v33 = v40;
    *&v31 = v5;
    goto LABEL_40;
  }

  if (v19 < 0.01)
  {
    goto LABEL_13;
  }

  if (v20 >= 0.01)
  {
LABEL_14:
    *(&v31 + 1) = *(a1 + 16);
    *&v32 = v17;
    *(&v32 + 1) = v16;
    LOBYTE(v33) = v15;
    HIBYTE(v33) = v14;
    *&v39 = v18;
    *&v38 = v5;
    *&v31 = v5;
    if ((v15 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_15;
  }

LABEL_10:
  *&v38 = v5;
  *&v31 = v5;
  v18 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  v29 = v18;
  v30 = v13;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 336), v16, &v39 + 1);
  if (*(a1 + 112) != *(a1 + 104) || *(a1 + 168) > 0)
  {
    v21 = v30;
    if (v30 < *(a1 + 48))
    {
      v22 = *(a1 + 8);
      if (v30 >= v22)
      {
        v22 = v30;
      }

      *(a1 + 48) = v22;
    }

    if (v29 > *(a1 + 56))
    {
      v23 = *(a1 + 16);
      if (v23 >= v29)
      {
        v23 = v29;
      }

      *(a1 + 56) = v23;
    }

    if (!a3)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v24.f64[1] = *(a1 + 16);
  v21 = v30;
  v24.f64[0] = v30;
  v25.f64[0] = *(a1 + 8);
  v25.f64[1] = v29;
  v26 = vcgtq_f64(v25, v24);
  v25.f64[0] = v30;
  *(a1 + 48) = vbslq_s8(v26, *(a1 + 8), v25);
  if (a3)
  {
LABEL_26:
    if (v21 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeThroughTime(v11, v21);
    }
  }

LABEL_29:
  v34[0] = v38;
  v34[1] = v39;
  v35 = v40;
  v36 = 0;
  v37 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v34);
  if (!*(a1 + 304) || *(a1 + 280) <= v6)
  {
    *(a1 + 272) = v5;
    *(a1 + 280) = v6;
    *(a1 + 288) = v7;
    *(a1 + 296) = v8;
    *(a1 + 304) = v9;
    *(a1 + 305) = v10;
    if (!*(a1 + 208) || *(a1 + 184) <= v6)
    {
      *(a1 + 176) = v5;
      *(a1 + 184) = v6;
      *(a1 + 192) = v7;
      *(a1 + 200) = v8;
      *(a1 + 208) = v9;
      *(a1 + 209) = v10;
    }
  }

  if (*(a1 + 33) == 1)
  {
    v27 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_canonicalSourceIDForSourceID(v11, v16);
    v28 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsForSource(v11, v27);
    if (!*(v28 + 176) || *(v28 + 19) <= v6)
    {
      v28[18] = v5;
      *(v28 + 19) = v6;
      *(v28 + 20) = v7;
      v28[21] = v8;
      *(v28 + 176) = v9;
      *(v28 + 177) = v10;
      if (!*(v28 + 80) || *(v28 + 7) <= v6)
      {
        v28[6] = v5;
        *(v28 + 7) = v6;
        *(v28 + 8) = v7;
        v28[9] = v8;
        *(v28 + 80) = v9;
        *(v28 + 81) = v10;
      }
    }
  }

LABEL_40:
  if (v33 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 520, &v31);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_notifyForCurrentBucket(uint64_t a1)
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 520), *(a1 + 528), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 528) - *(a1 + 520)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F14988(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 544), *(a1 + 40));
  *(v8 - 4) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  memset(v16, 0, sizeof(v16));
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 210) = *(&v16[3] + 8);
  *(a1 + 226) = *(&v16[4] + 8);
  *(a1 + 242) = *(&v16[5] + 1);
  *(a1 + 250) = v16[0];
  *(a1 + 266) = v16[1];
  *(a1 + 282) = v16[2];
  *(a1 + 298) = *&v16[3];
  *(a1 + 310) = 0;
  *(a1 + 306) = 0;
  if (*(a1 + 328))
  {
    v9 = *(a1 + 312);
    v10 = *(a1 + 320);
    *(a1 + 312) = a1 + 320;
    *(v10 + 16) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
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

  objc_storeStrong(v8, *(a1 + 544));
  *(a1 + 528) = *(a1 + 520);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_didChangeBucket(uint64_t a1, void *a2)
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

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 664))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F14CCC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
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
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F1511C(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C408224355FLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::advanceBucket(v15 + 112, v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 668) == 1)
          {
            *(v15 + 668) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32) - a6;
  if (v9 >= 0.01)
  {
    if (a7 - a6 - v9 >= 0.01)
    {
      v10 = 1;
      a6 = *(a1 + 32);
    }

    else
    {
      a2 = 0;
      v10 = 0;
      a6 = 0.0;
      a7 = 0.0;
    }
  }

  else
  {
    v10 = 1;
  }

  v19 = v7;
  v20 = v8;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a2;
  v17 = v10;
  v18 = 0;
  if ((*(a1 + 56) & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (v11 - a6 < 0.01)
    {
      return 1;
    }

    if (a7 - a6 - (v11 - a6) < 0.01)
    {
      v11 = a7;
    }

    v14 = a6;
    v15 = v11;
    v17 = v10;
    if ((v10 & 1) == 0)
    {
      return 1;
    }

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 664) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::archive(uint64_t a1, int8x16_t *a2)
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
  HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::archive(&v6, &a2->i64[1]);
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

double HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::unarchive(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(v5 + 112) = 0;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 58) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0;
  v6 = a2[16];
  if (v6)
  {
    *&result = HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::unarchive(v5, v6).u64[0];
  }

  *a1 = a2[17];
  v7 = a2[14];
  if (v7)
  {
    result = *(v7 + 8);
    v8 = *(v7 + 16);
    *(a1 + 144) = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
    *(a1 + 160) = result;
    *(a1 + 168) = v8;
    *(a1 + 176) = 1;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEE708;
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
  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 1;
  *(a1 + 618) = 0;
  *(a1 + 620) = 0;
  *(a1 + 624) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEE708;
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

  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 616) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::configureMergeAnchor(uint64_t a1, void *a2)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 79, a2);
  v7 = a2;
  v4 = a1[79];
  v5 = a1[76];
  a1[76] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[76]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 616))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 618) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 618) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 617))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 640);
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

  [v9 sortUsingComparator:&__block_literal_global_777];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 640);
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

  v30 = [v68 lastObject];
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_primitiveInvalidateInterval(a1, v49, v67);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_primitiveInvalidateInterval(a1, 0, v67))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 592) != *(a1 + 584))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_notifyForCurrentBucket(a1);
    }
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
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 618) = 0;
LABEL_81:

  return v7;
}

void sub_228F16864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 618) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_primitiveInvalidateInterval(a1, v7, a3);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 616) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 616) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
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
  HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::archive(&v32, a1 + 240);
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 376);
  if (v9 != a1 + 384)
  {
    HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::archive(&v32, v9 + 40);
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

void sub_228F170AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::decodeInternalsWithDecoder(uint64_t j, void *a2)
{
  v34 = a2;
  *(j + 616) = [v34 decodeBoolForKey:@"needs_config"];
  v3 = v34;
  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::HDStatisticsBucket(v39, 0, -1.79769313e308, 1.79769313e308);
  __p = 0u;
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
  v38 = v72;
  if (v71)
  {
    v36 = v3;
    v45 = 0;
    memset(v48, 0, sizeof(v48));
    v50 = 0u;
    v51 = 0u;
    LOWORD(v52) = 0;
    v53 = 0;
    *(&v52 + 1) = 0;
    v55[1] = 0;
    memset(v49, 0, 98);
    v55[0] = 0;
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
    v42 = vextq_s8(*(v71 + 8), *(v71 + 8), 8uLL);
    v4 = *(v71 + 72);
    v43 = *(v71 + 64);
    LOWORD(v44) = *(v71 + 185);
    v46 = vextq_s8(*(v71 + 24), *(v71 + 24), 8uLL);
    v47 = v4;
    v5 = *(v71 + 80);
    v6 = *(v71 + 88);
    for (i = v71; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v81) = 1;
      BYTE8(v81) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v79 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v80 = v8;
      *(&v80 + 1) = v9;
      BYTE9(v81) = *(v7 + 41);
      BYTE10(v81) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v49, v79.i8);
    }

    v35 = j;
    v10 = i[13];
    if (v10)
    {
      HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::unarchive(&v79, v10);
      v50 = v84;
      v51 = v85;
      v52 = v86;
      *&v49[40] = v80;
      *&v49[56] = v81;
      *&v49[72] = v82;
      *&v49[88] = v83;
      v53 = v87;
      *&v49[24] = v79;
    }

    v12 = i[17];
    v11 = i[18];
    while (v12 != v11)
    {
      v13 = *v12;
      HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::unarchive(&v79, *v12);
      v14 = *(v13 + 144);
      v15 = v55[0];
      if (!v55[0])
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

      v18 = v87;
      v20 = v85;
      v19 = v86;
      v21 = v83;
      *(v16 + 15) = v84;
      *(v16 + 17) = v20;
      *(v16 + 19) = v19;
      v23 = v81;
      v22 = v82;
      v24 = v79;
      *(v16 + 7) = v80;
      *(v16 + 9) = v23;
      v16[21] = v18;
      *(v16 + 11) = v22;
      *(v16 + 13) = v21;
      ++v12;
      *(v16 + 5) = v24;
    }

    v25 = i[5];
    v26 = i[6];
    for (j = v35; v25 != v26; v25 += 8)
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

    HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::operator=(v39, &v42);
    HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsBucket(&v42);
    v3 = v36;
  }

  v30 = v73;
  for (k = v74; v30 != k; v30 += 8)
  {
    v32 = *(*v30 + 8);
    v33 = *(*v30 + 16);
    v42 = vextq_s8(*(*v30 + 24), *(*v30 + 24), 8uLL);
    v43 = v32;
    v44 = v33;
    LOWORD(v45) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&__p, v42.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v70);

  HDStatisticsCollectionEngine<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::operator=((j + 112), &v38);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsBucket(v39);
}

void sub_228F175D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x400]);
  HDStatisticsCollectionEngine<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
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

uint64_t HDStatisticsCollectionEngine<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    *(a1 + 480) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsBucket(uint64_t a1)
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
  std::__tree<long>::destroy(*(a1 + 264));
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

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

  objc_storeStrong(&v27, *(a1 + 632));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsBucket(v17);
  *(a1 + 616) = 0;
  return HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 59), (a2 + 472));
  v4 = *(a2 + 496);
  *(a2 + 496) = 0;
  v5 = a1[62];
  a1[62] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  *(a1 + 136) = v10;
  v13 = *(a2 + 200);
  v14 = *(a2 + 216);
  v15 = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v14;
  *(a1 + 200) = v13;
  v16 = (a1 + 264);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 248) = v15;
  *(a1 + 256) = a1 + 264;
  v17 = *(a2 + 256);
  if (v17 != (a2 + 264))
  {
    v18 = 0;
    v19 = (a1 + 264);
    while (1)
    {
      v20 = v17[4];
      v21 = (a1 + 264);
      if (v19 == v16)
      {
        goto LABEL_12;
      }

      v22 = v18;
      v23 = (a1 + 264);
      if (v18)
      {
        do
        {
          v21 = v22;
          v22 = v22[1];
        }

        while (v22);
      }

      else
      {
        do
        {
          v21 = v23[2];
          v24 = *v21 == v23;
          v23 = v21;
        }

        while (v24);
      }

      if (v21[4] < v20)
      {
LABEL_12:
        if (v18)
        {
          v25 = v21 + 1;
        }

        else
        {
          v25 = (a1 + 264);
        }

        if (!*v25)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v26 = v18;
            v27 = v18[4];
            if (v27 <= v20)
            {
              break;
            }

            v18 = *v26;
            if (!*v26)
            {
              goto LABEL_23;
            }
          }

          if (v27 >= v20)
          {
            break;
          }

          v18 = v26[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }
      }

      v28 = v17[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v17[2];
          v24 = *v29 == v17;
          v17 = v29;
        }

        while (!v24);
      }

      if (v29 == (a2 + 264))
      {
        break;
      }

      v18 = *v16;
      v19 = *(a1 + 256);
      v17 = v29;
    }
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

void sub_228F17E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 384);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 344);
  v14 = *(v10 + 320);
  if (v14)
  {
    *(v10 + 328) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 280);
  std::__tree<long>::destroy(*v12);
  v15 = *a10;
  if (*a10)
  {
    *(v10 + 104) = v15;
    operator delete(v15);
  }

  objc_destroyWeak((v10 + 88));
  v16 = *v11;
  if (*v11)
  {
    *(v10 + 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::operator=(uint64_t a1, uint64_t a2)
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
  v12 = *(a2 + 184);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  v15 = *(a2 + 248);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 248) = v15;
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  *(a1 + 120) = *(a2 + 120);
  v16 = a1 + 264;
  std::__tree<long>::destroy(*(a1 + 264));
  *(a1 + 256) = *(a2 + 256);
  v17 = *(a2 + 264);
  v18 = *(a2 + 272);
  *(a1 + 264) = v17;
  *(a1 + 272) = v18;
  if (v18)
  {
    *(v17 + 16) = v16;
    *(a2 + 256) = a2 + 264;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
  }

  else
  {
    *(a1 + 256) = v16;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 280, (a2 + 280));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 344, (a2 + 344));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 384, (a2 + 384));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 424, (a2 + 424));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 5;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v91 = [v5 initWithTimeIntervalSinceReferenceDate:a2[v6]];
  v93 = a2;
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v91 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(v93 + 40);
      v16 = *(v93 + 41);
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

  v105[0] = &unk_283BEE7D8;
  v106 = v105;
  v92 = v12;
  v95 = *(a1 + 24);
  v21 = *(v93 + 25);
  v22 = *(v93 + 29);
  v102 = *(v93 + 27);
  v103 = v22;
  v104 = *(v93 + 31);
  v23 = *(v93 + 17);
  v24 = *(v93 + 21);
  v98 = *(v93 + 19);
  v99 = v24;
  v100 = *(v93 + 23);
  v101 = v21;
  *__p = *(v93 + 15);
  v97 = v23;
  if (!v106)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v25 = (*(*v106 + 48))(v106, __p);
  v26 = *(v25 + 8);
  v27 = *(v25 + 16);
  v28 = *(v25 + 32);
  v30 = *(v25 + 40);
  v29 = *(v25 + 48);
  v31 = *(v25 + 56);
  v32 = *(v25 + 80);
  v33 = *(v25 + 112);
  v34 = *(v25 + 120);
  v35 = *(v25 + 128);
  v36 = *(a1 + 24);
  v37 = _HKStatisticsOptionBaselineRelativeQuantities();
  v38 = *(a1 + 16);
  if ((v37 & v36) != 0)
  {
    [v38 _unitForChangeInCanonicalUnit];
  }

  else
  {
    [v38 canonicalUnit];
  }
  v94 = ;
  if ((v95 & 2) != 0)
  {
    if (v33)
    {
      v34 = v34 + (v32 - v34) * 22.5 / (v35 + 22.5);
    }

    v39 = [MEMORY[0x277CCD7E8] quantityWithUnit:v94 doubleValue:v34];
    [v92 setAverageQuantity:v39];
  }

  if ((v95 & 4) != 0)
  {
    v40 = [MEMORY[0x277CCD7E8] quantityWithUnit:v94 doubleValue:v27];
    [v92 setMinimumQuantity:v40];
  }

  if ((v95 & 8) != 0)
  {
    v41 = [MEMORY[0x277CCD7E8] quantityWithUnit:v94 doubleValue:v26];
    [v92 setMaximumQuantity:v41];
  }

  if ((v95 & 0x20) != 0)
  {
    v42 = [MEMORY[0x277CCD7E8] quantityWithUnit:v94 doubleValue:v30];
    [v92 setMostRecentQuantity:v42];

    v43 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v29 end:v31];
    [v92 setMostRecentQuantityDateInterval:v43];
  }

  [v92 setDataCount:v28];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_103;
  }

  if ((v95 & 2) != 0)
  {
    v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v88 = 0;
  }

  if ((v95 & 4) != 0)
  {
    v87 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v87 = 0;
  }

  if ((v95 & 8) != 0)
  {
    v85 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v85 = 0;
  }

  if ((v95 & 0x20) != 0)
  {
    v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v86 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v86 = 0;
    v84 = 0;
  }

  v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v97 = 0u;
  LODWORD(v98) = 1065353216;
  v44 = *(v93 + 32);
  if (v44 == v93 + 33)
  {
    goto LABEL_94;
  }

  do
  {
    v45 = HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_bundleIdentifierForSourceID(v93, *(v44 + 4));
    v46 = v45;
    if (!v45)
    {
      goto LABEL_68;
    }

    v47 = [v45 hash];
    v48 = v47;
    v49 = __p[1];
    if (!__p[1])
    {
      goto LABEL_66;
    }

    v50 = vcnt_s8(__p[1]);
    v50.i16[0] = vaddlv_u8(v50);
    v51 = v50.u32[0];
    if (v50.u32[0] > 1uLL)
    {
      v52 = v47;
      if (v47 >= __p[1])
      {
        v52 = v47 % __p[1];
      }
    }

    else
    {
      v52 = (__p[1] - 1) & v47;
    }

    v53 = *(__p[0] + v52);
    if (!v53 || (v54 = *v53) == 0)
    {
LABEL_66:
      operator new();
    }

    v89 = __p[1] - 1;
    while (1)
    {
      v55 = v54[1];
      if (v55 == v48)
      {
        break;
      }

      if (v51 > 1)
      {
        if (v55 >= v49)
        {
          v55 %= v49;
        }
      }

      else
      {
        v55 &= v89;
      }

      if (v55 != v52)
      {
        goto LABEL_66;
      }

LABEL_65:
      v54 = *v54;
      if (!v54)
      {
        goto LABEL_66;
      }
    }

    v56 = v54[2];
    v57 = v46;
    v58 = v57;
    if (v56 != v57)
    {
      v59 = [v56 isEqualToString:v57];

      if (v59)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }

LABEL_67:
    *(v54 + 3) = *(v44 + 5);
    v60 = *(v44 + 7);
    v61 = *(v44 + 9);
    v62 = *(v44 + 11);
    *(v54 + 11) = *(v44 + 13);
    *(v54 + 9) = v62;
    *(v54 + 7) = v61;
    *(v54 + 5) = v60;
    v63 = *(v44 + 15);
    v64 = *(v44 + 17);
    v65 = *(v44 + 19);
    v54[19] = *(v44 + 21);
    *(v54 + 17) = v65;
    *(v54 + 15) = v64;
    *(v54 + 13) = v63;

LABEL_68:
    v66 = *(v44 + 1);
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
        v67 = *(v44 + 2);
        v68 = *v67 == v44;
        v44 = v67;
      }

      while (!v68);
    }

    v44 = v67;
  }

  while (v67 != v93 + 33);
  for (i = v97; i; i = *i)
  {
    v70 = i[2];
    if ((v95 & 2) != 0)
    {
      if (!v106)
      {
        goto LABEL_106;
      }

      v71 = MEMORY[0x277CCD7E8];
      v72 = (*(*v106 + 48))(v106, i + 3);
      if (*(v72 + 112) == 1)
      {
        v73 = *(v72 + 120) + (*(v72 + 80) - *(v72 + 120)) * 22.5 / (*(v72 + 128) + 22.5);
      }

      else
      {
        v73 = *(v72 + 120);
      }

      v74 = [v71 quantityWithUnit:v94 doubleValue:v73];
      [v88 setObject:v74 forKeyedSubscript:v70];
    }

    if ((v95 & 4) != 0)
    {
      if (!v106)
      {
        goto LABEL_106;
      }

      v75 = [MEMORY[0x277CCD7E8] quantityWithUnit:v94 doubleValue:{*((*(*v106 + 48))(v106, i + 3) + 16)}];
      [v87 setObject:v75 forKeyedSubscript:v70];
    }

    if ((v95 & 8) != 0)
    {
      if (!v106)
      {
        goto LABEL_106;
      }

      v76 = [MEMORY[0x277CCD7E8] quantityWithUnit:v94 doubleValue:{*((*(*v106 + 48))(v106, i + 3) + 8)}];
      [v85 setObject:v76 forKeyedSubscript:v70];
    }

    if ((v95 & 0x20) != 0)
    {
      if (!v106)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v77 = (*(*v106 + 48))(v106, i + 3);
      v78 = *(v77 + 48);
      v79 = *(v77 + 56);
      v80 = [MEMORY[0x277CCD7E8] quantityWithUnit:v94 doubleValue:*(v77 + 40)];
      [v84 setObject:v80 forKeyedSubscript:v70];

      v81 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v78 end:v79];
      [v86 setObject:v81 forKeyedSubscript:v70];
    }

    if (!v106)
    {
LABEL_106:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v82 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v106 + 48))(v106, i + 3) + 32)}];
    [v90 setObject:v82 forKeyedSubscript:v70];
  }

LABEL_94:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  if ((v95 & 2) != 0)
  {
    [v92 setAverageQuantityBySource:v88];
  }

  if ((v95 & 4) != 0)
  {
    [v92 setMinimumQuantityBySource:v87];
  }

  if ((v95 & 8) != 0)
  {
    [v92 setMaximumQuantityBySource:v85];
  }

  if ((v95 & 0x20) != 0)
  {
    [v92 setMostRecentQuantityBySource:v84];
    [v92 setMostRecentQuantityDateIntervalBySource:v86];
  }

  [v92 setDataCountBySource:v90];

LABEL_103:
  std::__function::__value_func<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const&)>::~__value_func[abi:ne200100](v105);

  return v92;
}

void sub_228F18E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21)
{
  std::__function::__value_func<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const&)>::~__value_func[abi:ne200100](v21 - 192);

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_updateSourceOrder(uint64_t a1)
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

void HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeThroughTime(uint64_t a1, double a2)
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
      v6 = *(a1 + 104);
      __p = *(a1 + 96);
      v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - __p);
      if (v7 == 1)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_85;
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

      HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v21 = __clz(v7);
      if (WeakRetained)
      {
        *&v71 = a1;
        v22 = 126 - 2 * v21;
        if (__p == v6)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,false>(__p, v6, &v71, v23, 1);
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
        v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v63 = 0;
      }

      if (__p != v6)
      {
        v64 = 0;
        v35 = 0;
        for (i = __p; i != v6; i += 3)
        {
          v37 = i[1];
          v68 = *i;
          v69 = v37;
          v70 = i[2].n128_u64[0];
          v38 = v68;
          v39 = v37.n128_f64[0];
          if (v37.n128_f64[0] - *(&v68 + 1) - (v16 - *(&v68 + 1)) >= 0.01)
          {
            if (v16 - *(&v68 + 1) >= 0.01)
            {
              v41 = v69.n128_u64[1];
              v40 = v70;
              v69.n128_f64[0] = v16;
              if (v70)
              {
                v67 = BYTE1(v70);
                v42 = v16;
LABEL_53:
                HDRawQuantitySample::applyMask(&v68, (a1 + 64));
                v43 = i[2].n128_u8[10];
                v44 = i[2].n128_u8[9];
                v66 = i[2].n128_u8[8];
                if (v70 != 1)
                {
                  goto LABEL_71;
                }

                if (v35)
                {
                  v45 = v69.n128_u64[1];
                  if (v64 == v69.n128_u64[1] || *(a1 + 24) == 1)
                  {
                    HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(a1 + 120, &v68, v43 ^ 1);
                    LOBYTE(v43) = 1;
                  }
                }

                else
                {
                  HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(a1 + 120, &v68, v43 ^ 1);
                  LOBYTE(v43) = 1;
                  v45 = v69.n128_u64[1];
                  v64 = v69.n128_i64[1];
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_70;
                }

                v46 = HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_bundleIdentifierForSourceID(a1, v45);
                if (!v46)
                {
                  goto LABEL_69;
                }

                v47 = [v63 objectForKeyedSubscript:v46];
                v48 = v47;
                if (v47)
                {
                  if ([v47 longLongValue] != v45 && *(a1 + 24) != 1)
                  {
LABEL_68:

LABEL_69:
LABEL_70:
                    v35 = 1;
LABEL_71:
                    if (v40)
                    {
                      *&v71 = v38;
                      *(&v71 + 1) = v42;
                      v72 = v39;
                      v73 = v41;
                      v74 = v40;
                      v75 = v67;
                      LOBYTE(v78) = v66;
                      BYTE1(v78) = v44;
                      BYTE2(v78) = v43;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v71);
                    }

                    continue;
                  }
                }

                else
                {
                  v62 = [MEMORY[0x277CCABB0] numberWithLongLong:v45];
                  [v63 setObject:v62 forKeyedSubscript:v46];
                }

                v49 = HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_canonicalSourceIDForSourceID(a1, v45);
                v50 = HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_statisticsForSource(a1, v49);
                HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(v50, &v68, v44 ^ 1);
                LOBYTE(v44) = 1;
                goto LABEL_68;
              }
            }

            else
            {
              LOBYTE(v70) = 0;
            }
          }

          else if (v70)
          {
            v67 = 0;
            v40 = 0;
            v41 = 0;
            v39 = 0.0;
            v42 = 0.0;
            goto LABEL_53;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 56) = v16;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_86:
      v59 = *(a1 + 56);
      if (v59 == v5)
      {
        v60 = [MEMORY[0x277CCA890] currentHandler];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeThroughTime(double) [Statistics = HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>]"];
        [v60 handleFailureInFunction:v61 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v59 = *(a1 + 56);
      }

      v5 = v59;
      if (v59 >= a2)
      {
        return;
      }
    }

    v24 = __p->n128_f64[1];
    v25 = __p[1].n128_f64[0];
    v26 = __p[1].n128_u64[1];
    v27 = __p[2].n128_u8[0];
    v28 = __p[2].n128_u8[1];
    if (a2 - v24 >= 0.01)
    {
      if (v25 - v24 - (a2 - v24) < 0.01)
      {
        v32 = 0;
        v33 = 0;
        v31 = 0.0;
        v30 = __p[1].n128_f64[0];
        v29 = __p[2].n128_u8[0];
        v25 = 0.0;
        v27 = 0;
LABEL_78:
        v51 = __p[2].n128_u8[10];
        v52 = __p[2].n128_u8[9];
        v53 = __p[2].n128_i8[8];
        v54 = __p->n128_u64[0];
        *(&v71 + 1) = __p->n128_u64[1];
        v72 = v30;
        v73 = v26;
        v74 = v29;
        v75 = v28;
        v76 = *(__p[2].n128_i32 + 2);
        v77 = __p[2].n128_u16[3];
        *(&v78 + 1) = v31;
        *&v79 = v25;
        *(&v79 + 1) = v32;
        LOBYTE(v80) = v27;
        HIBYTE(v80) = v33;
        *&v71 = v54;
        *&v78 = v54;
        HDRawQuantitySample::applyMask(&v71, (a1 + 64));
        if (v74 == 1)
        {
          HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(a1 + 120, &v71, v51 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v55 = HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_canonicalSourceIDForSourceID(a1, v73);
            v56 = HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_statisticsForSource(a1, v55);
            HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(v56, &v71, v52 ^ 1);
          }

          v53 = 1;
          LOBYTE(v52) = 1;
          LOBYTE(v51) = 1;
        }

        if (v80 == 1)
        {
          LOWORD(v70) = v80;
          v57 = v79;
          v58 = *(a1 + 96);
          *v58 = v78;
          *(v58 + 16) = v57;
          *(v58 + 32) = v70;
          *(v58 + 40) = v53;
          *(v58 + 41) = v52;
          *(v58 + 42) = v51;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_85:
        *(a1 + 56) = a2;
        goto LABEL_86;
      }

      v30 = a2;
      v29 = __p[2].n128_u8[0];
      v31 = a2;
    }

    else
    {
      v29 = 0;
      v30 = __p[1].n128_f64[0];
      v31 = __p->n128_f64[1];
    }

    v32 = __p[1].n128_u64[1];
    v33 = __p[2].n128_u8[1];
    goto LABEL_78;
  }
}

uint64_t **HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 264);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 264);
  v5 = (a1 + 264);
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
    std::__tree<std::__value_type<long long,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 256), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 256), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
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
      v6 = HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_bundleIdentifierForSourceID(a1, a2);
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

id HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
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

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
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

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
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
                v104 = *(*a3 + 320);
                v105 = *(*a3 + 328);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 320);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 320);
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
                  v107 = *(*a3 + 328);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 328);
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
                    v115 = *(*a3 + 320);
                    v116 = *(*a3 + 328);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 320);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 320);
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
                      v118 = *(*a3 + 328);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 328);
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
                          v122 = *(*a3 + 320);
                          v123 = *(*a3 + 328);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 320);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 320);
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
                            v125 = *(*a3 + 328);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 328);
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
                  v208 = *(*a3 + 320);
                  v209 = *(*a3 + 328);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 320);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 320);
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
                    v211 = *(*a3 + 328);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 328);
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

                      v216 = *(*a3 + 320);
                      v217 = *(*a3 + 328);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 320);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 320);
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
                        v219 = *(*a3 + 328);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 328);
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
                      v134 = *(*a3 + 320);
                      v133 = *(*a3 + 328);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 320);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 320);
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
                        v136 = *(*a3 + 328);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 328);
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

                  v145 = *(*a3 + 320);
                  v144 = *(*a3 + 328);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 320);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 320);
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
                    v147 = *(*a3 + 328);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 328);
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
                            v155 = *(*a3 + 320);
                            v156 = *(*a3 + 328);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 320);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 320);
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
                              v158 = *(*a3 + 328);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 328);
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
                          v165 = *(*a3 + 320);
                          v164 = *(*a3 + 328);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 320);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 320);
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
                            v167 = *(*a3 + 328);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 328);
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
                      v180 = *(*a3 + 320);
                      v179 = *(*a3 + 328);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 320);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 320);
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
                        v182 = *(*a3 + 328);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 328);
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
                      v194 = *(*a3 + 320);
                      v193 = *(*a3 + 328);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 320);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 320);
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
                        v196 = *(*a3 + 328);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 328);
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

                          v202 = *(*a3 + 320);
                          v201 = *(*a3 + 328);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 320);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 320);
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
                            v204 = *(*a3 + 328);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 328);
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
            v24 = *(*a3 + 320);
            v25 = *(*a3 + 328);
            if (v24 == v25)
            {
              v27 = *(*a3 + 320);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 320);
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
              v27 = *(*a3 + 328);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 328);
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

          v67 = *(*a3 + 320);
          v68 = *(*a3 + 328);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 320);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 328);
                break;
              }
            }

            v70 = *(*a3 + 320);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 328);
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
                  v77 = *(v74 + 320);
                  v78 = *(v74 + 328);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 320);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 320);
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
                    v80 = *(v74 + 328);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 328);
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
              v72 = *(*a3 + 320);
              if (v67 == v68)
              {
                v73 = *(*a3 + 320);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 328);
                    break;
                  }
                }

                v73 = *(*a3 + 320);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 328);
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

              v84 = *(v82 + 320);
              v85 = *(v82 + 328);
              if (v84 == v85)
              {
                v87 = *(v82 + 320);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 320);
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
                v87 = *(v82 + 328);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 328);
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
              v92 = *(v90 + 320);
              v93 = *(v90 + 328);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 320);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 328);
                    break;
                  }
                }

                v95 = *(v90 + 320);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 328);
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

          v31 = *(v22 + 320);
          v32 = *(v22 + 328);
          if (v31 == v32)
          {
            v34 = *(v22 + 320);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 320);
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
            v34 = *(v22 + 328);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 328);
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
                v42 = *(v22 + 320);
                v43 = *(v22 + 328);
                if (v42 == v43)
                {
                  v45 = *(v22 + 320);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 320);
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
                  v45 = *(v22 + 328);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 328);
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
            v37 = *(v22 + 320);
            v38 = *(v22 + 328);
            if (v37 == v38)
            {
              v40 = *(v22 + 320);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 320);
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
              v40 = *(v22 + 328);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 328);
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

              v52 = *(v50 + 320);
              v53 = *(v50 + 328);
              if (v52 == v53)
              {
                v55 = *(v50 + 320);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 320);
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
                v55 = *(v50 + 328);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 328);
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
              v57 = *(v50 + 320);
              v58 = *(v50 + 328);
              if (v57 == v58)
              {
                v60 = *(v50 + 320);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 320);
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
                v60 = *(v50 + 328);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 328);
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
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*>(v11, a2, a3))
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

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 320);
  v7 = *(*a4 + 328);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 320);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 328);
        break;
      }
    }

    v9 = *(*a4 + 320);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 328);
        break;
      }
    }
  }

  if (v8 - v6 >= v9 - v6)
  {
LABEL_21:
    v13 = *(a3 + 3);
    if (v13 != v4)
    {
      v14 = *(*a4 + 320);
      v15 = *(*a4 + 328);
      if (v14 == v15)
      {
        v17 = *(*a4 + 320);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 320);
        v17 = v16;
        do
        {
          if (*v17 == v13)
          {
            goto LABEL_27;
          }

          v17 += 8;
        }

        while (v17 != v15);
        v17 = *(*a4 + 328);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 328);
            break;
          }
        }
      }

      if (v17 - v14 < v16 - v14)
      {
        v18 = *a2;
        *v46 = a2[1];
        *&v46[16] = a2[2];
        v19 = *(a3 + 27);
        v20 = a3[1];
        *a2 = *a3;
        a2[1] = v20;
        *(a2 + 27) = v19;
        *a3 = v18;
        a3[1] = *v46;
        result = *&v46[11];
        *(a3 + 27) = *&v46[11];
        v22 = *(a2 + 3);
        v23 = *(a1 + 3);
        if (v22 != v23)
        {
          v24 = *(*a4 + 320);
          v25 = *(*a4 + 328);
          if (v24 == v25)
          {
            v27 = *(*a4 + 320);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 320);
            v27 = v26;
            do
            {
              if (*v27 == v22)
              {
                goto LABEL_38;
              }

              v27 += 8;
            }

            while (v27 != v25);
            v27 = *(*a4 + 328);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 328);
                break;
              }
            }
          }

          if (v27 - v24 < v26 - v24)
          {
            v41 = *a1;
            *v48 = a1[1];
            *&v48[16] = a1[2];
            v42 = *(a2 + 27);
            v43 = a2[1];
            *a1 = *a2;
            a1[1] = v43;
            *(a1 + 27) = v42;
            *a2 = v41;
            a2[1] = *v48;
            result = *&v48[11];
            *(a2 + 27) = *&v48[11];
          }
        }
      }
    }
  }

  else
  {
    v10 = *(a3 + 3);
    if (v10 != v4)
    {
      v11 = *(*a4 + 320);
      if (v6 == v7)
      {
        v12 = *(*a4 + 320);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 328);
            break;
          }
        }

        v12 = *(*a4 + 320);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 328);
            break;
          }
        }
      }

      if (v11 - v6 < v12 - v6)
      {
        v28 = a1[1];
        v29 = *a1;
        *v49 = *(&v28 + 1);
        *&v49[8] = a1[2];
        v30 = *(a3 + 27);
        v31 = a3[1];
        *a1 = *a3;
        a1[1] = v31;
        *(a1 + 27) = v30;
LABEL_59:
        *a3 = v29;
        a3[1] = v28;
        result = *&v49[3];
        *(a3 + 27) = *&v49[3];
        return result;
      }
    }

    v32 = *a1;
    *v47 = a1[1];
    *&v47[16] = a1[2];
    v33 = *(a2 + 27);
    v34 = a2[1];
    *a1 = *a2;
    a1[1] = v34;
    *(a1 + 27) = v33;
    *a2 = v32;
    a2[1] = *v47;
    result = *&v47[11];
    *(a2 + 27) = *&v47[11];
    v35 = *(a3 + 3);
    v36 = *(a2 + 3);
    if (v35 != v36)
    {
      v37 = *(*a4 + 320);
      v38 = *(*a4 + 328);
      if (v37 == v38)
      {
        v40 = *(*a4 + 320);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 320);
        v40 = v39;
        do
        {
          if (*v40 == v35)
          {
            goto LABEL_50;
          }

          v40 += 8;
        }

        while (v40 != v38);
        v40 = *(*a4 + 328);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 328);
            break;
          }
        }
      }

      if (v40 - v37 < v39 - v37)
      {
        v28 = a2[1];
        v29 = *a2;
        *v49 = *(&v28 + 1);
        *&v49[8] = a2[2];
        v44 = *(a3 + 27);
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *(a2 + 27) = v44;
        goto LABEL_59;
      }
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 320);
    v14 = *(*a5 + 328);
    if (v13 == v14)
    {
      v16 = *(*a5 + 320);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 320);
      v16 = v15;
      do
      {
        if (*v16 == v11)
        {
          goto LABEL_7;
        }

        v16 += 8;
      }

      while (v16 != v14);
      v16 = *(*a5 + 328);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 328);
          break;
        }
      }
    }

    if (v16 - v13 < v15 - v13)
    {
      v17 = *a3;
      *v38 = *(a3 + 16);
      *&v38[16] = *(a3 + 32);
      v18 = *(a4 + 27);
      v19 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v19;
      *(a3 + 27) = v18;
      *a4 = v17;
      *(a4 + 16) = *v38;
      result = *&v38[11];
      *(a4 + 27) = *&v38[11];
      v20 = *(a3 + 24);
      v21 = *(a2 + 24);
      if (v20 != v21)
      {
        v22 = *(*a5 + 320);
        v23 = *(*a5 + 328);
        if (v22 == v23)
        {
          v25 = *(*a5 + 320);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 320);
          v25 = v24;
          do
          {
            if (*v25 == v20)
            {
              goto LABEL_18;
            }

            v25 += 8;
          }

          while (v25 != v23);
          v25 = *(*a5 + 328);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 328);
              break;
            }
          }
        }

        if (v25 - v22 < v24 - v22)
        {
          v26 = *a2;
          *v39 = *(a2 + 16);
          *&v39[16] = *(a2 + 32);
          v27 = *(a3 + 27);
          v28 = *(a3 + 16);
          *a2 = *a3;
          *(a2 + 16) = v28;
          *(a2 + 27) = v27;
          *a3 = v26;
          *(a3 + 16) = *v39;
          result = *&v39[11];
          *(a3 + 27) = *&v39[11];
          v29 = *(a2 + 24);
          v30 = *(a1 + 24);
          if (v29 != v30)
          {
            v31 = *(*a5 + 320);
            v32 = *(*a5 + 328);
            if (v31 == v32)
            {
              v34 = *(*a5 + 320);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 320);
              v34 = v33;
              do
              {
                if (*v34 == v29)
                {
                  goto LABEL_29;
                }

                v34 += 8;
              }

              while (v34 != v32);
              v34 = *(*a5 + 328);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 328);
                  break;
                }
              }
            }

            if (v34 - v31 < v33 - v31)
            {
              v35 = *a1;
              *v40 = *(a1 + 16);
              *&v40[16] = *(a1 + 32);
              v36 = *(a2 + 27);
              v37 = *(a2 + 16);
              *a1 = *a2;
              *(a1 + 16) = v37;
              *(a1 + 27) = v36;
              *a2 = v35;
              *(a2 + 16) = *v40;
              result = *&v40[11];
              *(a2 + 27) = *&v40[11];
            }
          }
        }
      }
    }
  }

  return result;
}