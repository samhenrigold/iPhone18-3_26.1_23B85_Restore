id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 5;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v69 = [v5 initWithTimeIntervalSinceReferenceDate:a2[v6]];
  v72 = a2;
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v69 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(v72 + 30);
      v16 = *(v72 + 31);
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

  v77[0] = &unk_283BED758;
  v78 = v77;
  v70 = v12;
  v71 = [*(a1 + 16) canonicalUnit];
  v21 = *(v72 + 17);
  *__p = *(v72 + 15);
  v74 = v21;
  v75 = *(v72 + 19);
  v76 = *(v72 + 21);
  if (!v78)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v22 = (*(*v78 + 48))(v78, __p);
  v23 = *(v22 + 8);
  v25 = *(v22 + 16);
  v24 = *(v22 + 24);
  v26 = *(v22 + 32);
  v27 = [MEMORY[0x277CCD7E8] quantityWithUnit:v71 doubleValue:*v22];
  [v70 setSumQuantity:v27];

  [v70 setDataCount:v23];
  v28 = *(a1 + 24);
  v68 = v28;
  if ((v28 & 0x20) != 0)
  {
    v29 = [MEMORY[0x277CCD7E8] quantityWithUnit:v71 doubleValue:v25];
    [v70 setMostRecentQuantity:v29];

    v30 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v24 end:v26];
    [v70 setMostRecentQuantityDateInterval:v30];

    v28 = *(a1 + 24);
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_66;
  }

  v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ((v68 & 0x20) != 0)
  {
    v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  *__p = 0u;
  v74 = 0u;
  LODWORD(v75) = 1065353216;
  v31 = *(v72 + 22);
  if (v31 == v72 + 23)
  {
    goto LABEL_63;
  }

  do
  {
    v32 = HDStatisticsBucket<HDStatisticsCumulative>::_bundleIdentifierForSourceID(v72, *(v31 + 4));
    v33 = v32;
    if (!v32)
    {
      goto LABEL_48;
    }

    v34 = [v32 hash];
    v35 = v34;
    v36 = __p[1];
    if (!__p[1])
    {
      goto LABEL_46;
    }

    v37 = vcnt_s8(__p[1]);
    v37.i16[0] = vaddlv_u8(v37);
    v38 = v37.u32[0];
    if (v37.u32[0] > 1uLL)
    {
      v39 = v34;
      if (v34 >= __p[1])
      {
        v39 = v34 % __p[1];
      }
    }

    else
    {
      v39 = (__p[1] - 1) & v34;
    }

    v40 = *(__p[0] + v39);
    if (!v40 || (v41 = *v40) == 0)
    {
LABEL_46:
      operator new();
    }

    v65 = __p[1] - 1;
    while (1)
    {
      v42 = v41[1];
      if (v42 == v35)
      {
        break;
      }

      if (v38 > 1)
      {
        if (v42 >= v36)
        {
          v42 %= v36;
        }
      }

      else
      {
        v42 &= v65;
      }

      if (v42 != v39)
      {
        goto LABEL_46;
      }

LABEL_45:
      v41 = *v41;
      if (!v41)
      {
        goto LABEL_46;
      }
    }

    v43 = v41[2];
    v44 = v33;
    v45 = v44;
    if (v43 != v44)
    {
      v46 = [v43 isEqualToString:v44];

      if (v46)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

LABEL_47:
    v47 = *(v31 + 5);
    v48 = *(v31 + 7);
    v49 = *(v31 + 9);
    v41[9] = *(v31 + 11);
    *(v41 + 7) = v49;
    *(v41 + 5) = v48;
    *(v41 + 3) = v47;

LABEL_48:
    v50 = *(v31 + 1);
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
        v51 = *(v31 + 2);
        v52 = *v51 == v31;
        v31 = v51;
      }

      while (!v52);
    }

    v31 = v51;
  }

  while (v51 != v72 + 23);
  for (i = v74; i; i = *i)
  {
    v54 = i[2];
    if (!v78 || ([MEMORY[0x277CCD7E8] quantityWithUnit:v71 doubleValue:{*(*(*v78 + 48))(v78, i + 3)}], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v67, "setObject:forKeyedSubscript:", v55, v54), v55, !v78))
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v56 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v78 + 48))(v78, i + 3) + 8)}];
    [v66 setObject:v56 forKeyedSubscript:v54];

    if ((v68 & 0x20) != 0)
    {
      if (!v78)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v57 = (*(*v78 + 48))(v78, i + 3);
      v58 = *(v57 + 24);
      v59 = *(v57 + 32);
      v60 = [MEMORY[0x277CCD7E8] quantityWithUnit:v71 doubleValue:*(v57 + 16)];
      [v63 setObject:v60 forKeyedSubscript:v54];

      v61 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v58 end:v59];
      [v64 setObject:v61 forKeyedSubscript:v54];
    }
  }

LABEL_63:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  [v70 setSumQuantityBySource:v67];
  [v70 setDataCountBySource:v66];
  if ((v68 & 0x20) != 0)
  {
    [v70 setMostRecentQuantityBySource:v63];
    [v70 setMostRecentQuantityDateIntervalBySource:v64];
  }

LABEL_66:
  std::__function::__value_func<HDStatisticsCumulative const& ()(HDStatisticsCumulative const&)>::~__value_func[abi:ne200100](v77);

  return v70;
}

void sub_228ED950C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  std::__function::__value_func<HDStatisticsCumulative const& ()(HDStatisticsCumulative const&)>::~__value_func[abi:ne200100](v19 - 160);

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsCumulative>::_updateSourceOrder(uint64_t a1)
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

void HDStatisticsBucket<HDStatisticsCumulative>::_mergeThroughTime(uint64_t a1, double a2)
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
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - __p) >> 4);
      if (v7 == 1)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_90;
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

      HDStatisticsBucket<HDStatisticsCumulative>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v78 = a1;
        v21 = 126 - 2 * __clz(v7);
        if (__p == v6)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,false>(__p, v6, &v78, v22, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v23 = 0;
      }

      if (__p != v6)
      {
        v69 = v23;
        v70 = 0;
        v37 = 0;
        for (i = __p; i != v6; i += 6)
        {
          v39 = *(i + 1);
          v75 = *i;
          v76 = v39;
          v77 = *(i + 4);
          v40 = *&v39;
          v41 = v16 - *(&v75 + 1);
          v42 = *&v39 - *(&v75 + 1);
          if (v42 - (v16 - *(&v75 + 1)) >= 0.01)
          {
            if (v41 >= 0.01)
            {
              v46 = *&v75;
              v43 = v77;
              v47 = v41 / v42 * *&v75;
              *&v75 = v47;
              *&v76 = v16;
              if (v77)
              {
                v73 = *(&v76 + 1);
                v74 = BYTE1(v77);
                v44 = v46 - v47;
                v45 = v16;
LABEL_49:
                HDRawQuantitySample::applyMask(&v75, (a1 + 64));
                v48 = *(i + 42);
                v49 = *(i + 41);
                v72 = *(i + 40);
                if (v77 == 1)
                {
                  if (v37)
                  {
                    v50 = *(&v76 + 1);
                    if (v70 == *(&v76 + 1) || *(a1 + 24) == 1)
                    {
                      *(a1 + 120) = *&v75 + *(a1 + 120);
                      if ((v48 & 1) == 0)
                      {
                        ++*(a1 + 128);
                      }

                      v48 = 1;
                    }
                  }

                  else
                  {
                    *(a1 + 120) = *&v75 + *(a1 + 120);
                    if ((v48 & 1) == 0)
                    {
                      ++*(a1 + 128);
                    }

                    v48 = 1;
                    v50 = *(&v76 + 1);
                    v70 = *(&v76 + 1);
                  }

                  if (*(a1 + 25) == 1)
                  {
                    v51 = HDStatisticsBucket<HDStatisticsCumulative>::_bundleIdentifierForSourceID(a1, v50);
                    if (v51)
                    {
                      v52 = [v23 objectForKeyedSubscript:v51];
                      v53 = v52;
                      if (v52)
                      {
                        if ([v52 longLongValue] != v50 && *(a1 + 24) != 1)
                        {
                          goto LABEL_70;
                        }
                      }

                      else
                      {
                        v54 = [MEMORY[0x277CCABB0] numberWithLongLong:v50];
                        [v69 setObject:v54 forKeyedSubscript:v51];
                      }

                      v55 = HDStatisticsBucket<HDStatisticsCumulative>::_canonicalSourceIDForSourceID(a1, v50);
                      v56 = HDStatisticsBucket<HDStatisticsCumulative>::_statisticsForSource(a1, v55);
                      *v56 = *&v75 + *v56;
                      if ((v49 & 1) == 0)
                      {
                        v56[1] = (v56[1] + 1);
                      }

                      v49 = 1;
LABEL_70:

                      v23 = v69;
                    }
                  }

                  v37 = 1;
                }

                if (v43)
                {
                  *&v78 = v44;
                  *(&v78 + 1) = v45;
                  v79 = v40;
                  v80 = v73;
                  v81 = v43;
                  v82 = v74;
                  LOBYTE(v85) = v72;
                  BYTE1(v85) = v49;
                  BYTE2(v85) = v48;
                  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v78);
                }

                continue;
              }
            }
          }

          else if (v77)
          {
            v74 = 0;
            v43 = 0;
            v73 = 0;
            v44 = 0.0;
            v40 = 0.0;
            v45 = 0.0;
            goto LABEL_49;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 56) = v16;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_91:
      v66 = *(a1 + 56);
      if (v66 == v5)
      {
        v67 = [MEMORY[0x277CCA890] currentHandler];
        v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsCumulative>::_mergeThroughTime(double) [Statistics = HDStatisticsCumulative]"];
        [v67 handleFailureInFunction:v68 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v66 = *(a1 + 56);
      }

      v5 = v66;
      if (v66 >= a2)
      {
        return;
      }
    }

    v25 = *__p;
    v24 = __p[1];
    v26 = __p[2];
    v27 = *(__p + 3);
    v28 = *(__p + 32);
    v29 = *(__p + 33);
    v30 = a2 - v24;
    if (a2 - v24 >= 0.01)
    {
      if (v26 - v24 - v30 < 0.01)
      {
        v35 = 0;
        v36 = 0;
        v33 = 0.0;
        v32 = __p[2];
        v31 = *(__p + 32);
        v34 = 0.0;
        v26 = 0.0;
        v28 = 0;
LABEL_80:
        v58 = *(__p + 42);
        v59 = *(__p + 41);
        v60 = *(__p + 40);
        *&v78 = v25;
        *(&v78 + 1) = v24;
        v79 = v32;
        v80 = v27;
        v81 = v31;
        v82 = v29;
        v83 = *(__p + 34);
        v84 = *(__p + 19);
        *&v85 = v33;
        *(&v85 + 1) = v34;
        *&v86 = v26;
        *(&v86 + 1) = v35;
        LOBYTE(v87) = v28;
        HIBYTE(v87) = v36;
        HDRawQuantitySample::applyMask(&v78, (a1 + 64));
        if (v81 == 1)
        {
          v61 = *&v78;
          *(a1 + 120) = *&v78 + *(a1 + 120);
          if ((v58 & 1) == 0)
          {
            ++*(a1 + 128);
          }

          if (*(a1 + 25) == 1)
          {
            v62 = HDStatisticsBucket<HDStatisticsCumulative>::_canonicalSourceIDForSourceID(a1, v80);
            v63 = HDStatisticsBucket<HDStatisticsCumulative>::_statisticsForSource(a1, v62);
            *v63 = v61 + *v63;
            if ((v59 & 1) == 0)
            {
              v63[1] = (v63[1] + 1);
            }
          }

          v60 = 1;
          v59 = 1;
          v58 = 1;
        }

        if (v87 == 1)
        {
          LOWORD(v77) = v87;
          v64 = v86;
          v65 = *(a1 + 96);
          *v65 = v85;
          *(v65 + 16) = v64;
          *(v65 + 32) = v77;
          *(v65 + 40) = v60;
          *(v65 + 41) = v59;
          *(v65 + 42) = v58;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_90:
        *(a1 + 56) = a2;
        goto LABEL_91;
      }

      v57 = v25 * (v30 / (v26 - v24));
      v32 = a2;
      v31 = *(__p + 32);
      v33 = v25 - v57;
      v25 = v57;
      v34 = a2;
    }

    else
    {
      v31 = 0;
      v32 = __p[2];
      v33 = *__p;
      v34 = __p[1];
    }

    v35 = *(__p + 3);
    v36 = *(__p + 33);
    goto LABEL_80;
  }
}

uint64_t **HDStatisticsBucket<HDStatisticsCumulative>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v4 = *(a1 + 184);
  v2 = (a1 + 184);
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
    std::__tree<std::__value_type<long long,HDStatisticsCumulative>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCumulative>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCumulative>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v2 - 1, a2, &v9);
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCumulative>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCumulative>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCumulative>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v8, &v9);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCumulative>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
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
      v6 = HDStatisticsBucket<HDStatisticsCumulative>::_bundleIdentifierForSourceID(a1, a2);
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

id HDStatisticsBucket<HDStatisticsCumulative>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
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

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsCumulative>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCumulative>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCumulative>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
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

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
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
                v104 = *(*a3 + 240);
                v105 = *(*a3 + 248);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 240);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 240);
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
                  v107 = *(*a3 + 248);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 248);
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
                    v115 = *(*a3 + 240);
                    v116 = *(*a3 + 248);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 240);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 240);
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
                      v118 = *(*a3 + 248);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 248);
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
                          v122 = *(*a3 + 240);
                          v123 = *(*a3 + 248);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 240);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 240);
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
                            v125 = *(*a3 + 248);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 248);
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
                  v208 = *(*a3 + 240);
                  v209 = *(*a3 + 248);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 240);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 240);
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
                    v211 = *(*a3 + 248);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 248);
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

                      v216 = *(*a3 + 240);
                      v217 = *(*a3 + 248);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 240);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 240);
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
                        v219 = *(*a3 + 248);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 248);
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
                      v134 = *(*a3 + 240);
                      v133 = *(*a3 + 248);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 240);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 240);
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
                        v136 = *(*a3 + 248);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 248);
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

                  v145 = *(*a3 + 240);
                  v144 = *(*a3 + 248);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 240);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 240);
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
                    v147 = *(*a3 + 248);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 248);
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
                            v155 = *(*a3 + 240);
                            v156 = *(*a3 + 248);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 240);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 240);
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
                              v158 = *(*a3 + 248);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 248);
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
                          v165 = *(*a3 + 240);
                          v164 = *(*a3 + 248);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 240);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 240);
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
                            v167 = *(*a3 + 248);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 248);
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
                      v180 = *(*a3 + 240);
                      v179 = *(*a3 + 248);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 240);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 240);
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
                        v182 = *(*a3 + 248);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 248);
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
                      v194 = *(*a3 + 240);
                      v193 = *(*a3 + 248);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 240);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 240);
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
                        v196 = *(*a3 + 248);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 248);
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

                          v202 = *(*a3 + 240);
                          v201 = *(*a3 + 248);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 240);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 240);
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
                            v204 = *(*a3 + 248);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 248);
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
            v24 = *(*a3 + 240);
            v25 = *(*a3 + 248);
            if (v24 == v25)
            {
              v27 = *(*a3 + 240);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 240);
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
              v27 = *(*a3 + 248);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 248);
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

          v67 = *(*a3 + 240);
          v68 = *(*a3 + 248);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 240);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 248);
                break;
              }
            }

            v70 = *(*a3 + 240);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 248);
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
                  v77 = *(v74 + 240);
                  v78 = *(v74 + 248);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 240);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 240);
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
                    v80 = *(v74 + 248);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 248);
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
              v72 = *(*a3 + 240);
              if (v67 == v68)
              {
                v73 = *(*a3 + 240);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 248);
                    break;
                  }
                }

                v73 = *(*a3 + 240);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 248);
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

              v84 = *(v82 + 240);
              v85 = *(v82 + 248);
              if (v84 == v85)
              {
                v87 = *(v82 + 240);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 240);
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
                v87 = *(v82 + 248);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 248);
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
              v92 = *(v90 + 240);
              v93 = *(v90 + 248);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 240);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 248);
                    break;
                  }
                }

                v95 = *(v90 + 240);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 248);
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

          v31 = *(v22 + 240);
          v32 = *(v22 + 248);
          if (v31 == v32)
          {
            v34 = *(v22 + 240);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 240);
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
            v34 = *(v22 + 248);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 248);
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
                v42 = *(v22 + 240);
                v43 = *(v22 + 248);
                if (v42 == v43)
                {
                  v45 = *(v22 + 240);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 240);
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
                  v45 = *(v22 + 248);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 248);
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
            v37 = *(v22 + 240);
            v38 = *(v22 + 248);
            if (v37 == v38)
            {
              v40 = *(v22 + 240);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 240);
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
              v40 = *(v22 + 248);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 248);
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

              v52 = *(v50 + 240);
              v53 = *(v50 + 248);
              if (v52 == v53)
              {
                v55 = *(v50 + 240);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 240);
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
                v55 = *(v50 + 248);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 248);
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
              v57 = *(v50 + 240);
              v58 = *(v50 + 248);
              if (v57 == v58)
              {
                v60 = *(v50 + 240);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 240);
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
                v60 = *(v50 + 248);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 248);
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
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*>(v11, a2, a3))
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

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 240);
  v7 = *(*a4 + 248);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 240);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 248);
        break;
      }
    }

    v9 = *(*a4 + 240);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 248);
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
      v14 = *(*a4 + 240);
      v15 = *(*a4 + 248);
      if (v14 == v15)
      {
        v17 = *(*a4 + 240);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 240);
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
        v17 = *(*a4 + 248);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 248);
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
          v24 = *(*a4 + 240);
          v25 = *(*a4 + 248);
          if (v24 == v25)
          {
            v27 = *(*a4 + 240);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 240);
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
            v27 = *(*a4 + 248);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 248);
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
      v11 = *(*a4 + 240);
      if (v6 == v7)
      {
        v12 = *(*a4 + 240);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 248);
            break;
          }
        }

        v12 = *(*a4 + 240);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 248);
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
      v37 = *(*a4 + 240);
      v38 = *(*a4 + 248);
      if (v37 == v38)
      {
        v40 = *(*a4 + 240);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 240);
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
        v40 = *(*a4 + 248);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 248);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 240);
    v14 = *(*a5 + 248);
    if (v13 == v14)
    {
      v16 = *(*a5 + 240);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 240);
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
      v16 = *(*a5 + 248);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 248);
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
        v22 = *(*a5 + 240);
        v23 = *(*a5 + 248);
        if (v22 == v23)
        {
          v25 = *(*a5 + 240);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 240);
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
          v25 = *(*a5 + 248);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 248);
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
            v31 = *(*a5 + 240);
            v32 = *(*a5 + 248);
            if (v31 == v32)
            {
              v34 = *(*a5 + 240);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 240);
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
              v34 = *(*a5 + 248);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 248);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 240);
    v16 = *(*a6 + 248);
    if (v15 == v16)
    {
      v18 = *(*a6 + 240);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 240);
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
      v18 = *(*a6 + 248);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 248);
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
        v24 = *(*a6 + 240);
        v25 = *(*a6 + 248);
        if (v24 == v25)
        {
          v27 = *(*a6 + 240);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 240);
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
          v27 = *(*a6 + 248);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 248);
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
            v33 = *(*a6 + 240);
            v34 = *(*a6 + 248);
            if (v33 == v34)
            {
              v36 = *(*a6 + 240);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 240);
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
              v36 = *(*a6 + 248);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 248);
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
                v42 = *(*a6 + 240);
                v43 = *(*a6 + 248);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 240);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 240);
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
                  v45 = *(*a6 + 248);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 248);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 240);
          v10 = *(*a3 + 248);
          if (v9 == v10)
          {
            v12 = *(*a3 + 240);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 240);
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
            v12 = *(*a3 + 248);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 248);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCumulative>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCumulative>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 240);
      v19 = *(*a3 + 248);
      if (v18 == v19)
      {
        v21 = *(*a3 + 240);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 240);
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
        v21 = *(*a3 + 248);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 248);
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
            v25 = *(*a3 + 240);
            v26 = *(*a3 + 248);
            if (v25 == v26)
            {
              v28 = *(*a3 + 240);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 240);
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
              v28 = *(*a3 + 248);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 248);
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative>(HKStatistics *,HDStatisticsBucket<HDStatisticsCumulative> const&)::{lambda(HDStatisticsCumulative const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative>(HKStatistics *,HDStatisticsBucket<HDStatisticsCumulative> const&)::{lambda(HDStatisticsCumulative const&)#1}>,HDStatisticsCumulative const& ()(HDStatisticsCumulative const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCumulative const& ()(HDStatisticsCumulative const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveAddSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 536) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_configureForStartTime(a1);
  }

  v8 = *(a2 + 8);
  if (v8 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsCumulative>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v8 end:*(a2 + 16)];
    v10 = (*(*a1 + 128))(a1, v9, a4);
  }

  return v10;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 536) & 1) == 0)
    {
      v1 = *(a1 + 176);
      result = *(a1 + 120);
      if (v1 <= result)
      {
        v1 = -1.79769313e308;
      }

      else if (*(a1 + 144))
      {
        v1 = -1.79769313e308;
      }

      if (v1 >= result)
      {
        return v1;
      }

      return result;
    }

    return -1.79769313e308;
  }

  result = *(a1 + 176);
  if (result <= *(a1 + 120))
  {
    return -1.79769313e308;
  }

  if (*(a1 + 144))
  {
    return -1.79769313e308;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_advanceToTime(uint64_t a1, double a2)
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

      HDStatisticsBucket<HDStatisticsCumulative>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsCumulative>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_statisticsFromFinishedBucket(a1, (a1 + 120));
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
      HDStatisticsBucket<HDStatisticsCumulative>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsCumulative>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsCumulative>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsCumulative>::addSample(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = a1 + 8;
  v12 = *(a1 + 8);
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v13 = v12 - v6;
  v14 = v5;
  v15 = v6;
  if (v12 - v6 >= 0.01)
  {
    if (v7 - v6 - v13 < 0.01)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v14 = 0.0;
      v19 = 0.0;
      v15 = 0.0;
      goto LABEL_6;
    }

    v14 = v5 - v5 * (v13 / (v7 - v6));
    v15 = v12;
  }

  *&v42 = v14;
  *(&v42 + 1) = v15;
  *&v43 = v7;
  *(&v43 + 1) = v8;
  v16 = v10;
  LOBYTE(v44) = v9;
  v17 = v9;
  v18 = v8;
  v19 = v7;
  HIBYTE(v44) = v10;
LABEL_6:
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v20 = *(a1 + 16);
  v21 = v20 - v15;
  v22 = v19 - v15;
  v23 = v19 - v15 - (v20 - v15);
  if (!*(a1 + 36))
  {
    if (v23 < 0.01)
    {
LABEL_11:
      v20 = v19;
      if ((v17 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_16;
    }

    if (v21 >= 0.01)
    {
      goto LABEL_15;
    }

LABEL_14:
    v35 = v42;
    v36 = v43;
    v37 = v44;
    goto LABEL_41;
  }

  if (v21 < 0.01)
  {
    goto LABEL_14;
  }

  if (v23 < 0.01)
  {
    goto LABEL_11;
  }

LABEL_15:
  *&v35 = v14 - v21 / v22 * v14;
  *(&v35 + 1) = v20;
  *&v36 = v19;
  *(&v36 + 1) = v18;
  LOBYTE(v37) = v17;
  HIBYTE(v37) = v16;
  *&v42 = v21 / v22 * v14;
  *&v43 = v20;
  if ((v17 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_16:
  v33 = v20;
  v34 = v15;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 208), v18, &v43 + 1);
  if (*(a1 + 112) == *(a1 + 104) && *(a1 + 136) <= 0)
  {
    v27.f64[1] = *(a1 + 16);
    v24 = v34;
    v27.f64[0] = v34;
    v28.f64[0] = *(a1 + 8);
    v28.f64[1] = v33;
    v29 = vcgtq_f64(v28, v27);
    v28.f64[0] = v34;
    *(a1 + 48) = vbslq_s8(v29, *(a1 + 8), v28);
  }

  else
  {
    v24 = v34;
    if (v34 < *(a1 + 48))
    {
      v25 = *(a1 + 8);
      if (v34 >= v25)
      {
        v25 = v34;
      }

      *(a1 + 48) = v25;
    }

    if (v33 > *(a1 + 56))
    {
      v26 = *(a1 + 16);
      if (v26 >= v33)
      {
        v26 = v33;
      }

      *(a1 + 56) = v26;
    }
  }

  if (*(a1 + 32) == 1)
  {
    v30 = *(a1 + 64);
    if (v24 < v30)
    {
      v30 = v24;
    }

    *(a1 + 64) = v30;
  }

  if (a3 && v24 < *(a1 + 16))
  {
    HDStatisticsBucket<HDStatisticsCumulative>::_mergeThroughTime(v11, v24);
  }

  v38[0] = v42;
  v38[1] = v43;
  v39 = v44;
  v40 = 0;
  v41 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v38);
  if (!*(a1 + 176) || *(a1 + 152) <= v6)
  {
    *(a1 + 144) = v5;
    *(a1 + 152) = v6;
    *(a1 + 160) = v7;
    *(a1 + 168) = v8;
    *(a1 + 176) = v9;
    *(a1 + 177) = v10;
  }

  if (*(a1 + 33) == 1)
  {
    v31 = HDStatisticsBucket<HDStatisticsCumulative>::_canonicalSourceIDForSourceID(v11, v18);
    v32 = HDStatisticsBucket<HDStatisticsCumulative>::_statisticsForSource(v11, v31);
    if (!*(v32 + 48) || *(v32 + 3) <= v6)
    {
      *(v32 + 2) = v5;
      *(v32 + 3) = v6;
      *(v32 + 4) = v7;
      v32[5] = v8;
      *(v32 + 48) = v9;
      *(v32 + 49) = v10;
    }
  }

LABEL_41:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 392, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_notifyForCurrentBucket(uint64_t a1)
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

void HDStatisticsCollectionEngine<HDStatisticsCumulative>::advanceBucket(uint64_t a1, double a2, double a3)
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
      HDStatisticsCollectionEngine<HDStatisticsCumulative>::addSample(a1, v8, 1);
      v8 += 40;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228EDCB54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCumulative>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 416), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  if (*(v8 + 160))
  {
    v9 = *(a1 + 192);
    v10 = *(a1 + 184);
    *(a1 + 184) = a1 + 192;
    *(v9 + 16) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
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

  objc_storeStrong(v8, *(a1 + 416));
  *(a1 + 400) = *(a1 + 392);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_didChangeBucket(uint64_t a1, void *a2)
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

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 536))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228EDCDF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
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
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228EDD240(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40C88B5054);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsCumulative>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsCumulative>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_statisticsFromFinishedBucket(v15, (v15 + 120));
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsCumulative>::advanceBucket(v15 + 112, v23, v25);

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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32) - a6;
  if (v9 >= 0.01)
  {
    v11 = a7 - a6;
    if (v11 - v9 >= 0.01)
    {
      a5 = a5 - v9 / v11 * a5;
      v10 = 1;
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
    v10 = 1;
  }

  v21 = v7;
  v22 = v8;
  *v16 = a5;
  *&v16[1] = a6;
  v17 = a7;
  v18 = a2;
  v19 = v10;
  v20 = 0;
  if ((*(a1 + 56) & 1) == 0)
  {
    v12 = *(a1 + 40);
    v13 = v12 - a6;
    if (v12 - a6 < 0.01)
    {
      return 1;
    }

    v14 = a7 - a6;
    if (v14 - v13 >= 0.01)
    {
      a5 = a5 * (v13 / v14);
    }

    else
    {
      v12 = a7;
    }

    *v16 = a5;
    v17 = v12;
    v19 = v10;
    if ((v10 & 1) == 0)
    {
      return 1;
    }

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 536) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCumulative>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BED808;
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 1;
  *(a1 + 682) = 0;
  *(a1 + 684) = 0;
  *(a1 + 688) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BED808;
  v2 = *(a1 + 712);
  if (v2)
  {
    *(a1 + 720) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 648);
  if (v3)
  {
    *(a1 + 656) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 680) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 688) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 87, a2);
  v7 = a2;
  v4 = a1[87];
  v5 = a1[84];
  a1[84] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[84]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 312) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 680) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 682) == 1)
    {
      if (*(a1 + 681))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 680))
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

      if (*(a1 + 683) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 712, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 682) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 682) = 1;
  v60 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v59 = v6;
  if (*(a1 + 681))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 704);
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

  [v9 sortUsingComparator:&__block_literal_global_672];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = *(a1 + 704);
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
  v27 = *(a1 + 704);
  *(a1 + 704) = 0;

  *(a1 + 681) = 0;
  if (v8)
  {
    v28 = *(a1 + 712);
    *(a1 + 728) = 0;
    *(a1 + 720) = 0;
    *(a1 + 712) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v61 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 712);
      v39 = *(a1 + 720);
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
            v39 = *(a1 + 720);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 720) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 712);
  v29 = *(a1 + 720);
  *(a1 + 728) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v49, v60);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, 0, v60))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, v55, 1, v51);
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

  if (*(a1 + 40) && *(a1 + 656) != *(a1 + 648))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
  }

  *(a1 + 682) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 684) == 1)
    {
      *(a1 + 684) = 0;
      v6 = v59;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 682) = 0;
LABEL_81:

  return v7;
}

void sub_228EDE7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 682) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 682))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 682) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 704);
    *(a1 + 704) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 681) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 681) & 1) == 0)
  {
    v8 = *(a1 + 704);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 704);
      *(a1 + 704) = v9;

      v8 = *(a1 + 704);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 680) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 680) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 680) forKey:@"needs_config"];
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
  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::archive(&v32, (a1 + 240));
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 440);
  if (v9 != a1 + 448)
  {
    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::archive(&v32, (v9 + 40));
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
  v12 = *(a1 + 648);
  if (v12 != *(a1 + 656))
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

void sub_228EDF034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v34 = a2;
  *(k + 680) = [v34 decodeBoolForKey:@"needs_config"];
  v3 = v34;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v39, 0, -1.79769313e308, 1.79769313e308);
  v40 = 0u;
  v41 = 0u;
  v81 = 0;
  PB::Reader::Reader(v80, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v81]);
  v73 = &unk_283BF1A08;
  v74 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v79 = 0;
  statistics::StatisticsEngine::readFrom(&v73, v80);
  v38 = v75;
  if (v74)
  {
    v45 = 0;
    memset(v48, 0, sizeof(v48));
    memset(v49, 0, sizeof(v49));
    v50 = 0;
    v51 = xmmword_229170D40;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    memset(v56, 0, 26);
    memset(&v56[2], 0, 32);
    memset(v57, 0, 42);
    v58[1] = 0;
    v58[0] = 0;
    v57[6] = v58;
    v59 = 0u;
    v60 = 0u;
    v61 = 1065353216;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
    v66 = 1065353216;
    v67 = 0u;
    v68 = 0u;
    v69 = 1065353216;
    v70 = 0u;
    v71 = 0u;
    v72 = 1065353216;
    v42 = vextq_s8(*(v74 + 8), *(v74 + 8), 8uLL);
    v4 = *(v74 + 72);
    v43 = *(v74 + 64);
    LOWORD(v44) = *(v74 + 185);
    v46 = vextq_s8(*(v74 + 24), *(v74 + 24), 8uLL);
    v47 = v4;
    v5 = *(v74 + 80);
    v6 = *(v74 + 88);
    v36 = v3;
    for (i = v74; v5 != v6; ++v5)
    {
      v7 = *v5;
      WORD4(v83) = 1;
      LOBYTE(v84) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      *v82 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v82[16] = v8;
      *&v83 = v9;
      BYTE1(v84) = *(v7 + 41);
      BYTE2(v84) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v49, v82);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::unarchive(v82, v10);
      v50 = *v82;
      v55 = v86;
      v56[0] = v87;
      v56[1] = v88;
      v51 = *&v82[8];
      v52 = v83;
      v53 = v84;
      v54 = v85;
      *&v56[2] = v89;
      if (*(&v56[2] + 1))
      {
        *&v56[3] = *(&v56[2] + 1);
        operator delete(*(&v56[2] + 1));
      }

      *(&v56[2] + 8) = v90;
      *(&v56[3] + 1) = v91;
      v91 = 0;
      v90 = 0uLL;
      v57[0] = v92;
      *&v57[1] = v93;
      *&v57[3] = v94;
      LOWORD(v57[5]) = v95;
    }

    v35 = k;
    v12 = i[17];
    for (j = i[18]; v12 != j; ++v12)
    {
      v13 = *v12;
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::unarchive(v82, *v12);
      v14 = *(v13 + 144);
      v15 = v58[0];
      if (!v58[0])
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

      *(v16 + 10) = *v82;
      v18 = v83;
      v19 = v84;
      *(v16 + 3) = *&v82[8];
      *(v16 + 4) = v18;
      v20 = v88;
      v21 = v87;
      v22 = v85;
      *(v16 + 7) = v86;
      *(v16 + 8) = v21;
      *(v16 + 9) = v20;
      *(v16 + 5) = v19;
      *(v16 + 6) = v22;
      v16[20] = v89;
      v23 = v16[21];
      if (v23)
      {
        v16[22] = v23;
        operator delete(v23);
        v16[21] = 0;
        v16[22] = 0;
        v16[23] = 0;
      }

      *(v16 + 21) = v90;
      v16[23] = v91;
      v16[24] = v92;
      v24 = v94;
      *(v16 + 25) = v93;
      v91 = 0;
      v90 = 0uLL;
      *(v16 + 27) = v24;
      *(v16 + 116) = v95;
    }

    v3 = v36;
    v25 = i[5];
    v26 = i[6];
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

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=(v39, &v42);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v42);
  }

  v30 = v76;
  for (m = v77; v30 != m; v30 += 8)
  {
    v32 = *(*v30 + 8);
    v33 = *(*v30 + 16);
    v42 = vextq_s8(*(*v30 + 24), *(*v30 + 24), 8uLL);
    v43 = v32;
    v44 = v33;
    LOWORD(v45) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v40, v42.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v73);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=((k + 112), &v38);
  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v39);
}

void sub_228EDF660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a9);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x430]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x408]);
  v16 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v16;
    operator delete(v16);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a10);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(STACK[0x3B8]);
  v17 = STACK[0x368];
  if (STACK[0x368])
  {
    STACK[0x370] = v17;
    operator delete(v17);
  }

  v18 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v18;
    operator delete(v18);
  }

  objc_destroyWeak(&STACK[0x2C8]);
  v19 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v19;
    operator delete(v19);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x480]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = xmmword_229170D40;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = a1 + 328;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1065353216;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    *(a1 + 544) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 488);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 448);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 408);
  v2 = *(a1 + 384);
  if (v2)
  {
    *(a1 + 392) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 344);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 328));
  v3 = *(a1 + 248);
  if (v3)
  {
    *(a1 + 256) = v3;
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

void std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(a1[1]);
    v2 = a1[21];
    if (v2)
    {
      a1[22] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

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

  objc_storeStrong(&v27, *(a1 + 696));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v17);
  *(a1 + 680) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 67), (a2 + 536));
  v4 = *(a2 + 560);
  *(a2 + 560) = 0;
  v5 = a1[70];
  a1[70] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 128);
  v11 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v11;
  *(a1 + 128) = v10;
  v12 = *(a2 + 176);
  v13 = *(a2 + 192);
  v14 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v14;
  *(a1 + 176) = v12;
  *(a1 + 192) = v13;
  v15 = *(a2 + 240);
  *(a1 + 248) = 0;
  *(a1 + 240) = v15;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 248), *(a2 + 248), *(a2 + 256), (*(a2 + 256) - *(a2 + 248)) >> 4);
  *(a1 + 272) = *(a2 + 272);
  v16 = *(a2 + 296);
  v17 = *(a2 + 312);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = v16;
  v18 = (a1 + 328);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 312) = v17;
  *(a1 + 320) = a1 + 328;
  v19 = *(a2 + 320);
  if (v19 != (a2 + 328))
  {
    v20 = 0;
    v21 = (a1 + 328);
    while (1)
    {
      v22 = (a1 + 328);
      if (v21 == v18)
      {
        goto LABEL_12;
      }

      v23 = v20;
      v24 = (a1 + 328);
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
          v27 = (a1 + 328);
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

      if (v31 == (a2 + 328))
      {
        break;
      }

      v20 = *v18;
      v21 = *(a1 + 320);
      v19 = v31;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 344, a2 + 344);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 384), *(a2 + 384), *(a2 + 392), (*(a2 + 392) - *(a2 + 384)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 408, a2 + 408);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 448, a2 + 448);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 488, a2 + 488);
  return a1;
}

void sub_228EE004C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 448);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 408);
  v14 = *(v10 + 384);
  if (v14)
  {
    *(v10 + 392) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 344);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(*v12);
  v15 = *v11;
  if (*v11)
  {
    *(v10 + 256) = v15;
    operator delete(v15);
  }

  v16 = *a9;
  if (*a9)
  {
    *(v10 + 104) = v16;
    operator delete(v16);
  }

  objc_destroyWeak((v10 + 88));
  v17 = *a10;
  if (*a10)
  {
    *(v10 + 72) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::operator=(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 128);
  v11 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v11;
  *(a1 + 128) = v10;
  v12 = *(a2 + 176);
  v13 = *(a2 + 192);
  v14 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v14;
  *(a1 + 176) = v12;
  *(a1 + 192) = v13;
  *(a1 + 240) = *(a2 + 240);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 248, (a2 + 248));
  *(a1 + 272) = *(a2 + 272);
  v15 = *(a2 + 280);
  v16 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 280) = v15;
  *(a1 + 296) = v16;
  v17 = a1 + 328;
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 328));
  *(a1 + 320) = *(a2 + 320);
  v18 = *(a2 + 328);
  v19 = *(a2 + 336);
  *(a1 + 328) = v18;
  *(a1 + 336) = v19;
  if (v19)
  {
    *(v18 + 16) = v17;
    *(a2 + 320) = a2 + 328;
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
  }

  else
  {
    *(a1 + 320) = v17;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 344, (a2 + 344));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 384, (a2 + 384));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 408, (a2 + 408));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 448, (a2 + 448));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 488, (a2 + 488));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
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
      v16 = *(v22 + 48);
      v17 = *(v22 + 49);
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

  v23[0] = &unk_283BED9F8;
  v23[3] = v23;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void sub_228EE0F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);

  std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](v43 - 176);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](v43 - 240);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 368);
  v2 = *(a1 + 384);
  if (v1 != (*(a1 + 392) - v2) >> 3)
  {
    *(a1 + 392) = v2;
    std::vector<long long>::reserve((a1 + 384), v1);
    for (i = *(a1 + 360); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 384, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 384];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v72 = (a1 + 328);
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
        goto LABEL_86;
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

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v22 = __clz(v8);
      if (WeakRetained)
      {
        *&v75.var0 = a1;
        v23 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, &v75, v24, 1);
      }

      else
      {
        v49 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v49;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, v24, 1);
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
        v50 = 0;
        v51 = 0;
        v52 = v6;
        while (1)
        {
          v53 = *(v52 + 1);
          *&v75.var0 = *v52;
          *&v75.var2 = v53;
          *&v75.var4 = v52[4];
          if (v75.var4 && v75.var1 <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v52);
LABEL_121:
          v52 += 6;
          if (v52 == v7)
          {
            goto LABEL_122;
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
            goto LABEL_121;
          }
        }

        v56 = *(v52 + 42);
        v57 = *(v52 + 41);
        if (v51)
        {
          var3 = v75.var3;
          if (v50 == v75.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v75, v56 ^ 1);
          }
        }

        else
        {
          HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v75, v56 ^ 1);
          var3 = v75.var3;
          v50 = v75.var3;
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_120;
        }

        v59 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, var3);
        if (!v59)
        {
          goto LABEL_119;
        }

        v60 = [v73 objectForKeyedSubscript:v59];
        v61 = v60;
        if (v60)
        {
          if ([v60 longLongValue] != var3 && *(a1 + 24) != 1)
          {
LABEL_118:

LABEL_119:
LABEL_120:
            v51 = 1;
            goto LABEL_121;
          }
        }

        else
        {
          v62 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
          [v73 setObject:v62 forKeyedSubscript:v59];
        }

        v63 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, var3);
        v64 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v63);
        HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(v64, &v75, v57 ^ 1);
        goto LABEL_118;
      }

LABEL_122:
      *(a1 + 272) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 248), v17) + *(a1 + 272);
      v65 = *(a1 + 320);
      if (v65 != v72)
      {
        do
        {
          *(v65 + 24) = HKIntervalMask<double>::removeIntervalsBefore(v65 + 21, v17) + *(v65 + 24);
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

LABEL_131:
      v69 = *(a1 + 56);
      if (v69 == v5)
      {
        v70 = [MEMORY[0x277CCA890] currentHandler];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>, HDStatisticsTimeInterval>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>, HDStatisticsTimeInterval>>]"}];
        [v70 handleFailureInFunction:v71 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v69 = *(a1 + 56);
      }

      v5 = v69;
      if (v69 >= a2)
      {
        return;
      }
    }

    v25 = *(v6 + 42);
    v26 = *(v6 + 41);
    v27 = *(v6 + 40);
    v28 = v6[1];
    v29 = v6[2];
    v30 = *(v6 + 3);
    v31 = *(v6 + 33);
    if (v29 <= a2)
    {
      v32 = v6[2];
    }

    else
    {
      v32 = a2;
    }

    if (v28 < a2)
    {
      v33 = *(v6 + 32);
    }

    else
    {
      v33 = 0;
    }

    if (v28 < a2)
    {
      v34 = 0;
    }

    else
    {
      v34 = *(v6 + 33);
    }

    if (v28 < a2)
    {
      v35 = 0;
    }

    else
    {
      v32 = v6[2];
      v35 = *(v6 + 3);
    }

    if (v28 < a2)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v6[2];
    }

    if (v28 < a2)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *v6;
    }

    if (v28 < a2)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = v6[1];
    }

    if (v28 < a2)
    {
      v39 = 0;
    }

    else
    {
      v39 = *(v6 + 32);
    }

    if (v6[4])
    {
      v29 = v32;
    }

    else
    {
      v33 = *(v6 + 32);
      v34 = 0;
      v35 = 0;
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
      v42 = 0.0;
    }

    if (v6[4])
    {
      v43 = v39;
    }

    else
    {
      v43 = 0;
    }

    v75.var0 = *v6;
    v75.var1 = v28;
    v75.var2 = v29;
    v75.var3 = v30;
    v75.var4 = v33;
    v75.var5 = v31;
    *(&v75.var5 + 1) = *(v6 + 34);
    *(&v75.var5 + 5) = *(v6 + 19);
    *&v76 = v41;
    *(&v76 + 1) = v42;
    *&v77 = v40;
    *(&v77 + 1) = v35;
    LOBYTE(v78) = v43;
    HIBYTE(v78) = v34;
    for (j = *(a1 + 64); j != *(a1 + 72) && v28 >= *j; j += 2)
    {
      if (v28 < j[1])
      {
        goto LABEL_83;
      }
    }

    if (v33)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v75, v25 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v45 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v30);
        v46 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v45);
        HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(v46, &v75, v26 ^ 1);
      }

      v27 = 1;
      LOBYTE(v26) = 1;
      LOBYTE(v25) = 1;
    }

LABEL_83:
    if (v43)
    {
      LOWORD(v74) = v78;
      v47 = v77;
      v48 = *(a1 + 96);
      *v48 = v76;
      *(v48 + 16) = v47;
      *(v48 + 32) = v74;
      *(v48 + 40) = v27;
      *(v48 + 41) = v26;
      *(v48 + 42) = v25;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_86:
    *(a1 + 56) = a2;
    goto LABEL_131;
  }
}

uint64_t *HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(uint64_t *result, HDRawQuantitySample *a2, int a3)
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
    if (v7 || result[9])
    {
      return result;
    }

    HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample((result + 1), &a2->var0);
    v9 = v5 + 15;
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
    *result = v8;
    *(result + 1) = xmmword_229170D40;
    result[15] = 0;
    v13 = result + 16;
    v12 = result[16];
    *(v5 + 3) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 13) = 0u;
    if (v12)
    {
      v5[17] = v12;
      operator delete(v12);
      v14 = *(v5 + 112);
      *v13 = 0u;
      *(v5 + 9) = 0u;
      if (v14 && *(v5 + 11) > *(v5 + 21))
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v13 = 0uLL;
      *(v5 + 9) = 0uLL;
    }

    v15 = *(v5 + 11);
    *(v5 + 5) = *(v5 + 10);
    *(v5 + 6) = v15;
    *(v5 + 56) = *(v5 + 96);
LABEL_20:
    HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample((v5 + 1), &a2->var0);
    v9 = v5 + 15;
LABEL_21:
    v10 = a2;
    v11 = a3;
    goto LABEL_22;
  }

  if (v7 != 2)
  {
    v8 = 2;
    goto LABEL_14;
  }

  HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample((result + 1), &a2->var0);
  v9 = v5 + 15;
  v10 = a2;
  v11 = 1;
LABEL_22:

  return HDStatisticsTimeInterval::addSample(v9, v10, v11);
}

uint64_t **HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 328);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 328);
  v5 = (a1 + 328);
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 320), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 320), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 408), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 448), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 448), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 488), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 488), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

double HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(uint64_t a1, double *a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = v3 + floor((a2[1] - v3) / 60.0) * 60.0;
    if (v4 == v3)
    {
      v10 = *(a1 + 32);
      v7 = *a1;
      v6 = *(a1 + 16);
      v11 = *(a1 + 24) + 1;
    }

    else
    {
      v5 = *(a1 + 16);
      if (v5)
      {
        v6 = v5 + 1;
        v7 = *a1 + (*(a1 + 32) - *a1) / v6;
      }

      else
      {
        v7 = *(a1 + 32);
        v6 = 1;
      }

      *a1 = v7;
      *(a1 + 8) = v4;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      v10 = 0.0;
      v11 = 1;
      *(a1 + 16) = v6;
    }

    v12 = *a2;
    v13 = *(a1 + 48);
    if (*(a1 + 56) < *a2)
    {
      v12 = *(a1 + 56);
    }

    *(a1 + 56) = v12;
    v14 = *a2;
    if (*a2 >= v13)
    {
      v15 = *a2;
    }

    else
    {
      v15 = v13;
    }

    *(a1 + 64) = v2 + 1;
    v16 = v10 + (v14 - v10) / v11;
    *(a1 + 24) = v11;
    result = v7 + (v16 - v7) / (v6 + 1);
    *(a1 + 32) = v16;
    *(a1 + 40) = result;
    *(a1 + 48) = v15;
  }

  else
  {
    v8 = *a2;
    *(a1 + 32) = *a2;
    *(a1 + 40) = v8;
    *(a1 + 48) = v8;
    *(a1 + 56) = v8;
    *(a1 + 64) = 1;
    *a1 = 0;
    *(a1 + 16) = xmmword_22916E7F0;
    result = *(a1 + 8);
    if (result == -1.79769313e308)
    {
      result = a2[1];
      *(a1 + 8) = result;
    }
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
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

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
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
                v104 = *(*a3 + 384);
                v105 = *(*a3 + 392);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 384);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 384);
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
                  v107 = *(*a3 + 392);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 392);
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
                    v115 = *(*a3 + 384);
                    v116 = *(*a3 + 392);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 384);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 384);
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
                      v118 = *(*a3 + 392);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 392);
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
                          v122 = *(*a3 + 384);
                          v123 = *(*a3 + 392);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 384);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 384);
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
                            v125 = *(*a3 + 392);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 392);
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
                  v208 = *(*a3 + 384);
                  v209 = *(*a3 + 392);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 384);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 384);
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
                    v211 = *(*a3 + 392);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 392);
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

                      v216 = *(*a3 + 384);
                      v217 = *(*a3 + 392);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 384);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 384);
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
                        v219 = *(*a3 + 392);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 392);
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
                      v134 = *(*a3 + 384);
                      v133 = *(*a3 + 392);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 384);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 384);
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
                        v136 = *(*a3 + 392);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 392);
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

                  v145 = *(*a3 + 384);
                  v144 = *(*a3 + 392);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 384);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 384);
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
                    v147 = *(*a3 + 392);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 392);
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
                            v155 = *(*a3 + 384);
                            v156 = *(*a3 + 392);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 384);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 384);
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
                              v158 = *(*a3 + 392);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 392);
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
                          v165 = *(*a3 + 384);
                          v164 = *(*a3 + 392);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 384);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 384);
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
                            v167 = *(*a3 + 392);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 392);
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
                      v180 = *(*a3 + 384);
                      v179 = *(*a3 + 392);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 384);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 384);
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
                        v182 = *(*a3 + 392);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 392);
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
                      v194 = *(*a3 + 384);
                      v193 = *(*a3 + 392);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 384);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 384);
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
                        v196 = *(*a3 + 392);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 392);
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

                          v202 = *(*a3 + 384);
                          v201 = *(*a3 + 392);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 384);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 384);
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
                            v204 = *(*a3 + 392);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 392);
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
            v24 = *(*a3 + 384);
            v25 = *(*a3 + 392);
            if (v24 == v25)
            {
              v27 = *(*a3 + 384);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 384);
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
              v27 = *(*a3 + 392);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 392);
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

          v67 = *(*a3 + 384);
          v68 = *(*a3 + 392);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 384);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 392);
                break;
              }
            }

            v70 = *(*a3 + 384);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 392);
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
                  v77 = *(v74 + 384);
                  v78 = *(v74 + 392);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 384);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 384);
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
                    v80 = *(v74 + 392);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 392);
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
              v72 = *(*a3 + 384);
              if (v67 == v68)
              {
                v73 = *(*a3 + 384);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 392);
                    break;
                  }
                }

                v73 = *(*a3 + 384);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 392);
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

              v84 = *(v82 + 384);
              v85 = *(v82 + 392);
              if (v84 == v85)
              {
                v87 = *(v82 + 384);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 384);
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
                v87 = *(v82 + 392);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 392);
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
              v92 = *(v90 + 384);
              v93 = *(v90 + 392);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 384);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 392);
                    break;
                  }
                }

                v95 = *(v90 + 384);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 392);
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

          v31 = *(v22 + 384);
          v32 = *(v22 + 392);
          if (v31 == v32)
          {
            v34 = *(v22 + 384);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 384);
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
            v34 = *(v22 + 392);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 392);
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
                v42 = *(v22 + 384);
                v43 = *(v22 + 392);
                if (v42 == v43)
                {
                  v45 = *(v22 + 384);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 384);
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
                  v45 = *(v22 + 392);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 392);
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
            v37 = *(v22 + 384);
            v38 = *(v22 + 392);
            if (v37 == v38)
            {
              v40 = *(v22 + 384);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 384);
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
              v40 = *(v22 + 392);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 392);
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

              v52 = *(v50 + 384);
              v53 = *(v50 + 392);
              if (v52 == v53)
              {
                v55 = *(v50 + 384);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 384);
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
                v55 = *(v50 + 392);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 392);
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
              v57 = *(v50 + 384);
              v58 = *(v50 + 392);
              if (v57 == v58)
              {
                v60 = *(v50 + 384);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 384);
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
                v60 = *(v50 + 392);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 392);
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
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(v11, a2, a3))
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

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 384);
  v7 = *(*a4 + 392);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 384);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 392);
        break;
      }
    }

    v9 = *(*a4 + 384);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 392);
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
      v14 = *(*a4 + 384);
      v15 = *(*a4 + 392);
      if (v14 == v15)
      {
        v17 = *(*a4 + 384);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 384);
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
        v17 = *(*a4 + 392);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 392);
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
          v24 = *(*a4 + 384);
          v25 = *(*a4 + 392);
          if (v24 == v25)
          {
            v27 = *(*a4 + 384);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 384);
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
            v27 = *(*a4 + 392);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 392);
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
      v11 = *(*a4 + 384);
      if (v6 == v7)
      {
        v12 = *(*a4 + 384);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 392);
            break;
          }
        }

        v12 = *(*a4 + 384);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 392);
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
      v37 = *(*a4 + 384);
      v38 = *(*a4 + 392);
      if (v37 == v38)
      {
        v40 = *(*a4 + 384);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 384);
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
        v40 = *(*a4 + 392);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 392);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 384);
    v14 = *(*a5 + 392);
    if (v13 == v14)
    {
      v16 = *(*a5 + 384);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 384);
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
      v16 = *(*a5 + 392);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 392);
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
        v22 = *(*a5 + 384);
        v23 = *(*a5 + 392);
        if (v22 == v23)
        {
          v25 = *(*a5 + 384);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 384);
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
          v25 = *(*a5 + 392);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 392);
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
            v31 = *(*a5 + 384);
            v32 = *(*a5 + 392);
            if (v31 == v32)
            {
              v34 = *(*a5 + 384);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 384);
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
              v34 = *(*a5 + 392);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 392);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 384);
    v16 = *(*a6 + 392);
    if (v15 == v16)
    {
      v18 = *(*a6 + 384);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 384);
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
      v18 = *(*a6 + 392);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 392);
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
        v24 = *(*a6 + 384);
        v25 = *(*a6 + 392);
        if (v24 == v25)
        {
          v27 = *(*a6 + 384);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 384);
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
          v27 = *(*a6 + 392);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 392);
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
            v33 = *(*a6 + 384);
            v34 = *(*a6 + 392);
            if (v33 == v34)
            {
              v36 = *(*a6 + 384);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 384);
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
              v36 = *(*a6 + 392);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 392);
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
                v42 = *(*a6 + 384);
                v43 = *(*a6 + 392);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 384);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 384);
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
                  v45 = *(*a6 + 392);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 392);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 384);
          v10 = *(*a3 + 392);
          if (v9 == v10)
          {
            v12 = *(*a3 + 384);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 384);
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
            v12 = *(*a3 + 392);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 392);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 384);
      v19 = *(*a3 + 392);
      if (v18 == v19)
      {
        v21 = *(*a3 + 384);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 384);
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
        v21 = *(*a3 + 392);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 392);
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
            v25 = *(*a3 + 384);
            v26 = *(*a3 + 392);
            if (v25 == v26)
            {
              v28 = *(*a3 + 384);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 384);
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
              v28 = *(*a3 + 392);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 392);
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

void std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(unint64_t result, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = result;
  while (1)
  {
    result = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 4);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a2 - 5) < *(v11 + 8))
        {
          *v253 = *(v11 + 16);
          *&v253[16] = *(v11 + 32);
          v219 = *v11;
          v115 = *(a2 - 3);
          v116 = *(a2 - 2);
          *(v11 + 27) = *(a2 - 21);
          *v11 = v115;
          *(v11 + 16) = v116;
          *(a2 - 21) = *&v253[11];
          *(a2 - 3) = v219;
          *(a2 - 2) = *v253;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v123 = *(v11 + 56);
      v124 = *(v11 + 104);
      if (v123 >= *(v11 + 8))
      {
        if (v124 < v123)
        {
          v176 = *(v11 + 48);
          *v258 = *(v11 + 64);
          *&v258[16] = *(v11 + 80);
          v177 = *(v11 + 112);
          *(v11 + 48) = *(v11 + 96);
          *(v11 + 64) = v177;
          *(v11 + 75) = *(v11 + 123);
          *(v11 + 96) = v176;
          *(v11 + 112) = *v258;
          *(v11 + 123) = *&v258[11];
          if (*(v11 + 56) < *(v11 + 8))
          {
            *v259 = *(v11 + 16);
            *&v259[16] = *(v11 + 32);
            v225 = *v11;
            v178 = *(v11 + 64);
            *v11 = *(v11 + 48);
            *(v11 + 16) = v178;
            *(v11 + 27) = *(v11 + 75);
            *(v11 + 48) = v225;
            *(v11 + 64) = *v259;
            *(v11 + 75) = *&v259[11];
          }
        }
      }

      else
      {
        if (v124 < v123)
        {
          *v255 = *(v11 + 16);
          *&v255[16] = *(v11 + 32);
          v221 = *v11;
          v125 = *(v11 + 112);
          *v11 = *(v11 + 96);
          *(v11 + 16) = v125;
          *(v11 + 27) = *(v11 + 123);
          *(v11 + 96) = v221;
          *(v11 + 112) = *v255;
          goto LABEL_183;
        }

        *v261 = *(v11 + 16);
        *&v261[16] = *(v11 + 32);
        v228 = *v11;
        v188 = *(v11 + 64);
        *v11 = *(v11 + 48);
        *(v11 + 16) = v188;
        *(v11 + 27) = *(v11 + 75);
        *(v11 + 48) = v228;
        *(v11 + 64) = *v261;
        *(v11 + 75) = *&v261[11];
        if (v124 < *(v11 + 56))
        {
          v189 = *(v11 + 48);
          *v255 = *(v11 + 64);
          *&v255[16] = *(v11 + 80);
          v190 = *(v11 + 112);
          *(v11 + 48) = *(v11 + 96);
          *(v11 + 64) = v190;
          *(v11 + 75) = *(v11 + 123);
          *(v11 + 96) = v189;
          *(v11 + 112) = *v255;
LABEL_183:
          *(v11 + 123) = *&v255[11];
        }
      }

      if (*(a2 - 5) >= *(v11 + 104))
      {
        return;
      }

      *v262 = *(v11 + 112);
      *&v262[16] = *(v11 + 128);
      v191 = *(v11 + 96);
      v193 = *v8;
      v192 = *(a2 - 2);
      *(v11 + 123) = *(a2 - 21);
      *(v11 + 96) = v193;
      *(v11 + 112) = v192;
      *(a2 - 21) = *&v262[11];
      *v8 = v191;
      *(a2 - 2) = *v262;
      if (*(v11 + 104) >= *(v11 + 56))
      {
        return;
      }

      v194 = *(v11 + 48);
      *v263 = *(v11 + 64);
      *&v263[16] = *(v11 + 80);
      v195 = *(v11 + 112);
      *(v11 + 48) = *(v11 + 96);
      *(v11 + 64) = v195;
      *(v11 + 75) = *(v11 + 123);
      *(v11 + 96) = v194;
      *(v11 + 112) = *v263;
      *(v11 + 123) = *&v263[11];
LABEL_187:
      if (*(v11 + 56) < *(v11 + 8))
      {
        *v264 = *(v11 + 16);
        *&v264[16] = *(v11 + 32);
        v229 = *v11;
        v196 = *(v11 + 64);
        *v11 = *(v11 + 48);
        *(v11 + 16) = v196;
        *(v11 + 27) = *(v11 + 75);
        *(v11 + 48) = v229;
        *(v11 + 64) = *v264;
        *(v11 + 75) = *&v264[11];
      }

      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), a2 - 3);
      return;
    }

LABEL_9:
    if (v12 <= 1151)
    {
      v126 = (v11 + 48);
      v128 = v11 == a2 || v126 == a2;
      if (a4)
      {
        if (!v128)
        {
          v129 = 0;
          v130 = v11;
          do
          {
            v131 = v126;
            v132 = *(v130 + 56);
            if (v132 < *(v130 + 8))
            {
              v133 = *v126;
              *v222 = *(v130 + 64);
              *&v222[16] = *(v130 + 80);
              v134 = v129;
              while (1)
              {
                v135 = (v11 + v134);
                v136 = *(v11 + v134 + 16);
                v135[3] = *(v11 + v134);
                v135[4] = v136;
                *(v135 + 75) = *(v11 + v134 + 27);
                if (!v134)
                {
                  break;
                }

                v134 -= 48;
                if (v132 >= *(v135 - 5))
                {
                  v137 = v11 + v134 + 48;
                  goto LABEL_129;
                }
              }

              v137 = v11;
LABEL_129:
              *v137 = v133;
              *(v137 + 8) = v132;
              *(v137 + 16) = *v222;
              *(v137 + 27) = *&v222[11];
            }

            v126 = v131 + 3;
            v129 += 48;
            v130 = v131;
          }

          while (v131 + 3 != a2);
        }
      }

      else if (!v128)
      {
        do
        {
          v179 = v126;
          v180 = *(result + 56);
          if (v180 < *(result + 8))
          {
            v181 = *v126;
            *v226 = *(result + 64);
            *&v226[16] = *(result + 80);
            v182 = v126;
            do
            {
              v183 = *(v182 - 2);
              *v182 = *(v182 - 3);
              v182[1] = v183;
              *(v182 + 27) = *(v182 - 21);
              v184 = *(v182 - 11);
              v182 -= 3;
            }

            while (v180 < v184);
            *v182 = v181;
            *(v182 + 1) = v180;
            *(v182 + 27) = *&v226[11];
            v182[1] = *v226;
          }

          v126 += 3;
          result = v179;
        }

        while ((v179 + 48) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v138 = (v13 - 2) >> 1;
        v139 = v138;
        do
        {
          v140 = v139;
          if (v138 >= v139)
          {
            v141 = (2 * v139) | 1;
            v142 = v11 + 48 * v141;
            if (2 * v140 + 2 < v13 && *(v142 + 8) < *(v142 + 56))
            {
              v142 += 48;
              v141 = 2 * v140 + 2;
            }

            v143 = v11 + 48 * v140;
            v144 = *(v143 + 8);
            if (*(v142 + 8) >= v144)
            {
              v145 = *v143;
              *v223 = *(v143 + 16);
              *&v223[16] = *(v143 + 32);
              do
              {
                v146 = v143;
                v143 = v142;
                v147 = *v142;
                v148 = *(v142 + 16);
                *(v146 + 27) = *(v142 + 27);
                *v146 = v147;
                v146[1] = v148;
                if (v138 < v141)
                {
                  break;
                }

                v149 = 2 * v141;
                v141 = (2 * v141) | 1;
                v142 = v11 + 48 * v141;
                v150 = v149 + 2;
                if (v150 < v13 && *(v142 + 8) < *(v142 + 56))
                {
                  v142 += 48;
                  v141 = v150;
                }
              }

              while (*(v142 + 8) >= v144);
              *v143 = v145;
              *(v143 + 8) = v144;
              *(v143 + 16) = *v223;
              *(v143 + 27) = *&v223[11];
            }
          }

          v139 = v140 - 1;
        }

        while (v140);
        v151 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
        do
        {
          v152 = 0;
          *v256 = *(v11 + 16);
          *&v256[16] = *(v11 + 32);
          v224 = *v11;
          v153 = v11;
          do
          {
            v154 = &v153[3 * v152];
            v155 = (v154 + 6);
            v156 = (2 * v152) | 1;
            v152 = 2 * v152 + 2;
            if (v152 >= v151)
            {
              v152 = v156;
            }

            else
            {
              v157 = v154[7];
              v158 = v154[13];
              v159 = (v154 + 12);
              if (v157 >= v158)
              {
                v152 = v156;
              }

              else
              {
                v155 = v159;
              }
            }

            v160 = *v155;
            v161 = v155[1];
            *(v153 + 27) = *(v155 + 27);
            *v153 = v160;
            v153[1] = v161;
            v153 = v155;
          }

          while (v152 <= ((v151 - 2) >> 1));
          a2 -= 3;
          if (v155 == a2)
          {
            *(v155 + 27) = *&v256[11];
            *v155 = v224;
            v155[1] = *v256;
          }

          else
          {
            v162 = *a2;
            v163 = a2[1];
            *(v155 + 27) = *(a2 + 27);
            *v155 = v162;
            v155[1] = v163;
            *(a2 + 27) = *&v256[11];
            *a2 = v224;
            a2[1] = *v256;
            v164 = v155 - v11 + 48;
            if (v164 >= 49)
            {
              v165 = (-2 - 0x5555555555555555 * (v164 >> 4)) >> 1;
              v166 = v11 + 48 * v165;
              v167 = *(v155 + 1);
              if (*(v166 + 8) < v167)
              {
                v168 = *v155;
                *v199 = v155[1];
                *&v199[16] = v155[2];
                do
                {
                  v169 = v155;
                  v155 = v166;
                  v170 = *v166;
                  v171 = *(v166 + 16);
                  *(v169 + 27) = *(v166 + 27);
                  *v169 = v170;
                  v169[1] = v171;
                  if (!v165)
                  {
                    break;
                  }

                  v165 = (v165 - 1) >> 1;
                  v166 = v11 + 48 * v165;
                }

                while (*(v166 + 8) < v167);
                *v155 = v168;
                *(v155 + 1) = v167;
                v155[1] = *v199;
                *(v155 + 27) = *&v199[11];
              }
            }
          }
        }

        while (v151-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v11 + 48 * (v13 >> 1);
    v16 = *(a2 - 5);
    if (v12 >= 0x1801)
    {
      v17 = *(v15 + 8);
      if (v17 >= *(v11 + 8))
      {
        if (v16 < v17)
        {
          *v232 = *(v15 + 16);
          *&v232[16] = *(v15 + 32);
          v202 = *v15;
          v23 = *v8;
          v24 = *(a2 - 2);
          *(v15 + 27) = *(a2 - 21);
          *v15 = v23;
          *(v15 + 16) = v24;
          *(a2 - 21) = *&v232[11];
          *v8 = v202;
          *(a2 - 2) = *v232;
          if (*(v15 + 8) < *(v11 + 8))
          {
            *v233 = *(v11 + 16);
            *&v233[16] = *(v11 + 32);
            v203 = *v11;
            v25 = *v15;
            v26 = *(v15 + 16);
            *(v11 + 27) = *(v15 + 27);
            *v11 = v25;
            *(v11 + 16) = v26;
            *(v15 + 27) = *&v233[11];
            *v15 = v203;
            *(v15 + 16) = *v233;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          *v230 = *(v11 + 16);
          *&v230[16] = *(v11 + 32);
          v200 = *v11;
          v18 = *v8;
          v19 = *(a2 - 2);
          *(v11 + 27) = *(a2 - 21);
          *v11 = v18;
          *(v11 + 16) = v19;
          goto LABEL_26;
        }

        *v236 = *(v11 + 16);
        *&v236[16] = *(v11 + 32);
        v206 = *v11;
        v31 = *v15;
        v32 = *(v15 + 16);
        *(v11 + 27) = *(v15 + 27);
        *v11 = v31;
        *(v11 + 16) = v32;
        *(v15 + 27) = *&v236[11];
        *v15 = v206;
        *(v15 + 16) = *v236;
        if (*(a2 - 5) < *(v15 + 8))
        {
          *v230 = *(v15 + 16);
          *&v230[16] = *(v15 + 32);
          v200 = *v15;
          v33 = *v8;
          v34 = *(a2 - 2);
          *(v15 + 27) = *(a2 - 21);
          *v15 = v33;
          *(v15 + 16) = v34;
LABEL_26:
          *(a2 - 21) = *&v230[11];
          *v8 = v200;
          *(a2 - 2) = *v230;
        }
      }

      v35 = v11 + 48 * v14;
      v36 = (v35 - 48);
      v37 = *(v35 - 40);
      v38 = *(a2 - 11);
      if (v37 >= *(v11 + 56))
      {
        if (v38 < v37)
        {
          *v238 = *(v35 - 32);
          *&v238[16] = *(v35 - 16);
          v207 = *v36;
          v43 = *v9;
          v44 = *(a2 - 5);
          *(v35 - 21) = *(a2 - 69);
          *v36 = v43;
          *(v35 - 32) = v44;
          *(a2 - 69) = *&v238[11];
          *v9 = v207;
          *(a2 - 5) = *v238;
          if (*(v35 - 40) < *(v11 + 56))
          {
            *v239 = *(v11 + 64);
            *&v239[16] = *(v11 + 80);
            v45 = *(v11 + 48);
            v47 = *v36;
            v46 = *(v35 - 32);
            *(v11 + 75) = *(v35 - 21);
            *(v11 + 48) = v47;
            *(v11 + 64) = v46;
            *(v35 - 21) = *&v239[11];
            *v36 = v45;
            *(v35 - 32) = *v239;
          }
        }
      }

      else
      {
        if (v38 < v37)
        {
          v39 = *(v11 + 64);
          *&v237[8] = *(&v39 + 1);
          *&v237[16] = *(v11 + 80);
          v40 = *(v11 + 48);
          v42 = *v9;
          v41 = *(a2 - 5);
          *(v11 + 75) = *(a2 - 69);
          *(v11 + 48) = v42;
          *(v11 + 64) = v41;
          goto LABEL_38;
        }

        *v241 = *(v11 + 64);
        *&v241[16] = *(v11 + 80);
        v52 = *(v11 + 48);
        v54 = *v36;
        v53 = *(v35 - 32);
        *(v11 + 75) = *(v35 - 21);
        *(v11 + 48) = v54;
        *(v11 + 64) = v53;
        *(v35 - 21) = *&v241[11];
        *v36 = v52;
        *(v35 - 32) = *v241;
        if (*(a2 - 11) < *(v35 - 40))
        {
          *v237 = *(v35 - 32);
          *&v237[16] = *(v35 - 16);
          v209 = *v36;
          v55 = *v9;
          v56 = *(a2 - 5);
          *(v35 - 21) = *(a2 - 69);
          *v36 = v55;
          *(v35 - 32) = v56;
          v40 = v209;
          v39 = *v237;
LABEL_38:
          *(a2 - 69) = *&v237[11];
          *v9 = v40;
          *(a2 - 5) = v39;
        }
      }

      v57 = v11 + 48 * v14;
      v58 = *(v57 + 56);
      v59 = *(a2 - 17);
      if (v58 >= *(v11 + 104))
      {
        if (v59 < v58)
        {
          *v243 = *(v57 + 64);
          *&v243[16] = *(v57 + 80);
          v210 = *(v57 + 48);
          v64 = *v10;
          v65 = *(a2 - 8);
          *(v57 + 75) = *(a2 - 117);
          *(v57 + 48) = v64;
          *(v57 + 64) = v65;
          *(a2 - 117) = *&v243[11];
          *v10 = v210;
          *(a2 - 8) = *v243;
          if (*(v57 + 56) < *(v11 + 104))
          {
            *v244 = *(v11 + 112);
            *&v244[16] = *(v11 + 128);
            v66 = *(v11 + 96);
            v68 = *(v57 + 48);
            v67 = *(v57 + 64);
            *(v11 + 123) = *(v57 + 75);
            *(v11 + 96) = v68;
            *(v11 + 112) = v67;
            *(v57 + 75) = *&v244[11];
            *(v57 + 48) = v66;
            *(v57 + 64) = *v244;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v60 = *(v11 + 112);
          *&v242[8] = *(&v60 + 1);
          *&v242[16] = *(v11 + 128);
          v61 = *(v11 + 96);
          v63 = *v10;
          v62 = *(a2 - 8);
          *(v11 + 123) = *(a2 - 117);
          *(v11 + 96) = v63;
          *(v11 + 112) = v62;
          goto LABEL_47;
        }

        *v245 = *(v11 + 112);
        *&v245[16] = *(v11 + 128);
        v69 = *(v11 + 96);
        v71 = *(v57 + 48);
        v70 = *(v57 + 64);
        *(v11 + 123) = *(v57 + 75);
        *(v11 + 96) = v71;
        *(v11 + 112) = v70;
        *(v57 + 75) = *&v245[11];
        *(v57 + 48) = v69;
        *(v57 + 64) = *v245;
        if (*(a2 - 17) < *(v57 + 56))
        {
          *v242 = *(v57 + 64);
          *&v242[16] = *(v57 + 80);
          v211 = *(v57 + 48);
          v72 = *v10;
          v73 = *(a2 - 8);
          *(v57 + 75) = *(a2 - 117);
          *(v57 + 48) = v72;
          *(v57 + 64) = v73;
          v61 = v211;
          v60 = *v242;
LABEL_47:
          *(a2 - 117) = *&v242[11];
          *v10 = v61;
          *(a2 - 8) = v60;
        }
      }

      v74 = *(v15 + 8);
      v75 = *(v57 + 56);
      if (v74 >= *(v35 - 40))
      {
        if (v75 < v74)
        {
          *v247 = *(v15 + 16);
          *&v247[16] = *(v15 + 32);
          v213 = *v15;
          v77 = *(v57 + 64);
          *v15 = *(v57 + 48);
          *(v15 + 16) = v77;
          *(v15 + 27) = *(v57 + 75);
          *(v57 + 75) = *&v247[11];
          *(v57 + 48) = v213;
          *(v57 + 64) = *v247;
          if (*(v15 + 8) < *(v35 - 40))
          {
            *v248 = *(v35 - 32);
            *&v248[16] = *(v35 - 16);
            v214 = *v36;
            v78 = *(v15 + 16);
            *v36 = *v15;
            *(v35 - 32) = v78;
            *(v35 - 21) = *(v15 + 27);
            *(v15 + 27) = *&v248[11];
            *v15 = v214;
            *(v15 + 16) = *v248;
          }
        }
      }

      else
      {
        if (v75 < v74)
        {
          *v246 = *(v35 - 32);
          *&v246[16] = *(v35 - 16);
          v212 = *v36;
          v76 = *(v57 + 64);
          *v36 = *(v57 + 48);
          *(v35 - 32) = v76;
          *(v35 - 21) = *(v57 + 75);
          goto LABEL_56;
        }

        *v249 = *(v35 - 32);
        *&v249[16] = *(v35 - 16);
        v215 = *v36;
        v79 = *(v15 + 16);
        *v36 = *v15;
        *(v35 - 32) = v79;
        *(v35 - 21) = *(v15 + 27);
        *(v15 + 27) = *&v249[11];
        *v15 = v215;
        *(v15 + 16) = *v249;
        if (*(v57 + 56) < *(v15 + 8))
        {
          *v246 = *(v15 + 16);
          *&v246[16] = *(v15 + 32);
          v212 = *v15;
          v80 = *(v57 + 64);
          *v15 = *(v57 + 48);
          *(v15 + 16) = v80;
          *(v15 + 27) = *(v57 + 75);
LABEL_56:
          *(v57 + 75) = *&v246[11];
          *(v57 + 48) = v212;
          *(v57 + 64) = *v246;
        }
      }

      *v250 = *(v11 + 16);
      *&v250[16] = *(v11 + 32);
      v216 = *v11;
      v81 = *v15;
      v82 = *(v15 + 16);
      *(v11 + 27) = *(v15 + 27);
      *v11 = v81;
      *(v11 + 16) = v82;
      *(v15 + 27) = *&v250[11];
      *v15 = v216;
      *(v15 + 16) = *v250;
      goto LABEL_58;
    }

    v20 = *(v11 + 8);
    if (v20 >= *(v15 + 8))
    {
      if (v16 < v20)
      {
        *v234 = *(v11 + 16);
        *&v234[16] = *(v11 + 32);
        v204 = *v11;
        v27 = *v8;
        v28 = *(a2 - 2);
        *(v11 + 27) = *(a2 - 21);
        *v11 = v27;
        *(v11 + 16) = v28;
        *(a2 - 21) = *&v234[11];
        *v8 = v204;
        *(a2 - 2) = *v234;
        if (*(v11 + 8) < *(v15 + 8))
        {
          *v235 = *(v15 + 16);
          *&v235[16] = *(v15 + 32);
          v205 = *v15;
          v29 = *v11;
          v30 = *(v11 + 16);
          *(v15 + 27) = *(v11 + 27);
          *v15 = v29;
          *(v15 + 16) = v30;
          *(v11 + 27) = *&v235[11];
          *v11 = v205;
          *(v11 + 16) = *v235;
        }
      }

      goto LABEL_58;
    }

    if (v16 < v20)
    {
      *v231 = *(v15 + 16);
      *&v231[16] = *(v15 + 32);
      v201 = *v15;
      v21 = *v8;
      v22 = *(a2 - 2);
      *(v15 + 27) = *(a2 - 21);
      *v15 = v21;
      *(v15 + 16) = v22;
LABEL_35:
      *(a2 - 21) = *&v231[11];
      *v8 = v201;
      *(a2 - 2) = *v231;
      goto LABEL_58;
    }

    *v240 = *(v15 + 16);
    *&v240[16] = *(v15 + 32);
    v208 = *v15;
    v48 = *v11;
    v49 = *(v11 + 16);
    *(v15 + 27) = *(v11 + 27);
    *v15 = v48;
    *(v15 + 16) = v49;
    *(v11 + 27) = *&v240[11];
    *v11 = v208;
    *(v11 + 16) = *v240;
    if (*(a2 - 5) < *(v11 + 8))
    {
      *v231 = *(v11 + 16);
      *&v231[16] = *(v11 + 32);
      v201 = *v11;
      v50 = *v8;
      v51 = *(a2 - 2);
      *(v11 + 27) = *(a2 - 21);
      *v11 = v50;
      *(v11 + 16) = v51;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v83 = *(v11 + 8);
LABEL_61:
      v84 = 0;
      v85 = *v11;
      *v197 = *(v11 + 16);
      *&v197[16] = *(v11 + 32);
      do
      {
        v86 = *(v11 + v84 + 56);
        v84 += 48;
      }

      while (v86 < v83);
      v87 = v11 + v84;
      v88 = a2;
      if (v84 == 48)
      {
        v91 = a2;
        while (v87 < v91)
        {
          v89 = v91 - 6;
          v92 = *(v91 - 5);
          v91 -= 6;
          if (v92 < v83)
          {
            goto LABEL_71;
          }
        }

        v89 = v91;
      }

      else
      {
        do
        {
          v89 = v88 - 6;
          v90 = *(v88 - 5);
          v88 -= 6;
        }

        while (v90 >= v83);
      }

LABEL_71:
      v11 = v87;
      if (v87 < v89)
      {
        v93 = v89;
        do
        {
          *v251 = *(v11 + 16);
          *&v251[16] = *(v11 + 32);
          v217 = *v11;
          v94 = *v93;
          v95 = v93[1];
          *(v11 + 27) = *(v93 + 27);
          *v11 = v94;
          *(v11 + 16) = v95;
          *(v93 + 27) = *&v251[11];
          *v93 = v217;
          v93[1] = *v251;
          do
          {
            v96 = *(v11 + 56);
            v11 += 48;
          }

          while (v96 < v83);
          do
          {
            v97 = *(v93 - 5);
            v93 -= 3;
          }

          while (v97 >= v83);
        }

        while (v11 < v93);
      }

      if (v11 - 48 != result)
      {
        v98 = *(v11 - 48);
        v99 = *(v11 - 32);
        *(result + 27) = *(v11 - 21);
        *result = v98;
        *(result + 16) = v99;
      }

      *(v11 - 48) = v85;
      *(v11 - 40) = v83;
      *(v11 - 21) = *&v197[11];
      *(v11 - 32) = *v197;
      if (v87 < v89)
      {
        goto LABEL_82;
      }

      v100 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(result, (v11 - 48));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(v11, a2))
      {
        a2 = (v11 - 48);
        if (!v100)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v100)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(result, (v11 - 48), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v83 = *(v11 + 8);
      if (*(v11 - 40) < v83)
      {
        goto LABEL_61;
      }

      v101 = *v11;
      *v198 = *(v11 + 16);
      *&v198[16] = *(v11 + 32);
      if (v83 >= *(a2 - 5))
      {
        v104 = v11 + 48;
        do
        {
          v11 = v104;
          if (v104 >= a2)
          {
            break;
          }

          v105 = *(v104 + 8);
          v104 += 48;
        }

        while (v83 >= v105);
      }

      else
      {
        v102 = v11;
        do
        {
          v11 = v102 + 48;
          v103 = *(v102 + 56);
          v102 += 48;
        }

        while (v83 >= v103);
      }

      v106 = a2;
      if (v11 < a2)
      {
        v107 = a2;
        do
        {
          v106 = (v107 - 6);
          v108 = *(v107 - 5);
          v107 -= 6;
        }

        while (v83 < v108);
      }

      while (v11 < v106)
      {
        *v252 = *(v11 + 16);
        *&v252[16] = *(v11 + 32);
        v218 = *v11;
        v109 = *v106;
        v110 = v106[1];
        *(v11 + 27) = *(v106 + 27);
        *v11 = v109;
        *(v11 + 16) = v110;
        *(v106 + 27) = *&v252[11];
        *v106 = v218;
        v106[1] = *v252;
        do
        {
          v111 = *(v11 + 56);
          v11 += 48;
        }

        while (v83 >= v111);
        do
        {
          v112 = *(v106 - 5);
          v106 -= 3;
        }

        while (v83 < v112);
      }

      if (v11 - 48 != result)
      {
        v113 = *(v11 - 48);
        v114 = *(v11 - 32);
        *(result + 27) = *(v11 - 21);
        *result = v113;
        *(result + 16) = v114;
      }

      a4 = 0;
      *(v11 - 48) = v101;
      *(v11 - 40) = v83;
      *(v11 - 21) = *&v198[11];
      *(v11 - 32) = *v198;
    }
  }

  v117 = *(v11 + 56);
  v118 = *(a2 - 5);
  if (v117 >= *(v11 + 8))
  {
    if (v118 >= v117)
    {
      return;
    }

    *v257 = *(v11 + 64);
    *&v257[16] = *(v11 + 80);
    v173 = *(v11 + 48);
    v175 = *v8;
    v174 = *(a2 - 2);
    *(v11 + 75) = *(a2 - 21);
    *(v11 + 48) = v175;
    *(v11 + 64) = v174;
    *(a2 - 21) = *&v257[11];
    *v8 = v173;
    *(a2 - 2) = *v257;
    goto LABEL_187;
  }

  if (v118 >= v117)
  {
    *v260 = *(v11 + 16);
    *&v260[16] = *(v11 + 32);
    v227 = *v11;
    v185 = *(v11 + 64);
    *v11 = *(v11 + 48);
    *(v11 + 16) = v185;
    *(v11 + 27) = *(v11 + 75);
    *(v11 + 48) = v227;
    *(v11 + 64) = *v260;
    *(v11 + 75) = *&v260[11];
    if (*(a2 - 5) >= *(v11 + 56))
    {
      return;
    }

    v122 = *(v11 + 64);
    *&v254[8] = *(&v122 + 1);
    *&v254[16] = *(v11 + 80);
    v121 = *(v11 + 48);
    v187 = *v8;
    v186 = *(a2 - 2);
    *(v11 + 75) = *(a2 - 21);
    *(v11 + 48) = v187;
    *(v11 + 64) = v186;
  }

  else
  {
    *v254 = *(v11 + 16);
    *&v254[16] = *(v11 + 32);
    v220 = *v11;
    v119 = *v8;
    v120 = *(a2 - 2);
    *(v11 + 27) = *(a2 - 21);
    *v11 = v119;
    *(v11 + 16) = v120;
    v121 = v220;
    v122 = *v254;
  }

  *(a2 - 21) = *&v254[11];
  *v8 = v121;
  *(a2 - 2) = v122;
}