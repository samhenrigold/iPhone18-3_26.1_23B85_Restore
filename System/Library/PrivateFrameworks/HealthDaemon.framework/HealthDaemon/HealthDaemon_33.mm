void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 528) forKey:@"needs_config"];
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
  HDStatisticsPresence::archive((a1 + 240), &v32);
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 288);
  if (v9 != a1 + 296)
  {
    HDStatisticsPresence::archive((v9 + 40), &v32);
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
  v12 = *(a1 + 496);
  if (v12 != *(a1 + 504))
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

void sub_228F99360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v37 = a2;
  *(k + 528) = [v37 decodeBoolForKey:@"needs_config"];
  v3 = v37;
  HDStatisticsBucket<HDStatisticsPresence>::HDStatisticsBucket(&v42.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v44 = 0u;
  v81 = 0;
  PB::Reader::Reader(v80, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v81]);
  v73 = &unk_283BF1A08;
  v74 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v79 = 0;
  statistics::StatisticsEngine::readFrom(&v73, v80);
  v42.n128_u64[0] = v75;
  if (v74)
  {
    v38 = k;
    v48 = 0;
    memset(v51, 0, sizeof(v51));
    v58[1] = 0;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v58[0] = 0;
    v57 = v58;
    v59 = 0u;
    v60 = 0u;
    v61 = 1065353216;
    v64 = 0u;
    v65 = 0;
    v63 = 0u;
    v62 = 0u;
    v66 = 1065353216;
    v67 = 0u;
    v68 = 0u;
    v69 = 1065353216;
    v70 = 0u;
    v71 = 0u;
    v72 = 1065353216;
    v45 = vextq_s8(*(v74 + 8), *(v74 + 8), 8uLL);
    v4 = *(v74 + 72);
    v46 = *(v74 + 64);
    LOWORD(v47) = *(v74 + 185);
    v49 = vextq_s8(*(v74 + 24), *(v74 + 24), 8uLL);
    v50 = v4;
    v5 = *(v74 + 80);
    v6 = *(v74 + 88);
    v39 = v3;
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
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](&v52, v82.i8);
    }

    v10 = i[13];
    if (v10)
    {
      v11 = *(v10 + 24);
      v12 = *(v10 + 112);
      if (v12)
      {
        v13 = *(v12 + 24);
        v14 = *(v12 + 8);
        v15 = 1;
        v12 = *(v12 + 16);
      }

      else
      {
        v15 = 0;
        v13 = 0uLL;
        v14 = 0;
      }

      *(&v53 + 1) = v11;
      v54 = vextq_s8(v13, v13, 8uLL);
      *&v55 = v14;
      *(&v55 + 1) = v12;
      v56 = v15;
    }

    v16 = i[17];
    for (j = i[18]; v16 != j; ++v16)
    {
      v18 = *v16;
      v19 = *(*v16 + 112);
      if (v19)
      {
        v41 = *(v19 + 24);
        v20 = *(v19 + 8);
        v21 = 1;
        v22 = *(v19 + 16);
      }

      else
      {
        v22 = 0;
        v21 = 0;
        v20 = 0;
        v41 = 0u;
      }

      v23 = *(v18 + 24);
      v24 = *(v18 + 144);
      v25 = v58[0];
      if (!v58[0])
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v26 = v25;
          v27 = v25[2].i64[0];
          if (v27 <= v24)
          {
            break;
          }

          v25 = v26->i64[0];
          if (!v26->i64[0])
          {
            goto LABEL_19;
          }
        }

        if (v27 >= v24)
        {
          break;
        }

        v25 = v26->i64[1];
        if (!v25)
        {
          goto LABEL_19;
        }
      }

      v26[2].i64[1] = v23;
      v26[3] = vextq_s8(v41, v41, 8uLL);
      v26[4].i64[0] = v20;
      v26[4].i64[1] = v22;
      v26[5].i8[0] = v21;
      v26[5].i8[1] = 0;
    }

    v3 = v39;
    v28 = i[5];
    v29 = i[6];
    for (k = v38; v28 != v29; v28 += 8)
    {
      v31 = *(*v28 + 8);
      v30 = *(*v28 + 16);
      if (v31 >= v30)
      {
        v32 = *(*v28 + 16);
      }

      else
      {
        v32 = *(*v28 + 8);
      }

      if (v30 < v31)
      {
        v30 = *(*v28 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v51, v32, v30);
    }

    HDStatisticsBucket<HDStatisticsPresence>::operator=(&v42.n128_i64[1], &v45);
    HDStatisticsBucket<HDStatisticsPresence>::~HDStatisticsBucket(&v45);
  }

  v33 = v76;
  for (m = v77; v33 != m; v33 += 8)
  {
    v35 = *(*v33 + 8);
    v36 = *(*v33 + 16);
    v45 = vextq_s8(*(*v33 + 24), *(*v33 + 24), 8uLL);
    v46 = v35;
    v47 = v36;
    LOWORD(v48) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v45.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v73);

  HDStatisticsCollectionEngine<HDStatisticsPresence>::operator=((k + 112), &v42);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsPresence>::~HDStatisticsBucket(&v42.n128_i64[1]);
}

void sub_228F99864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  statistics::StatisticsEngine::~StatisticsEngine((v17 - 256));
  HDStatisticsCollectionEngine<HDStatisticsPresence>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsPresence>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 1065353216;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsPresence>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 384);
  if (v2)
  {
    *(a1 + 392) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsPresence>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsPresence>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 336);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 296);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 256);
  v2 = *(a1 + 232);
  if (v2)
  {
    *(a1 + 240) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 192);
  std::__tree<long>::destroy(*(a1 + 176));
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsPresence>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  objc_storeStrong(&v26, *(a1 + 544));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsPresence>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsPresence>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsPresence>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsPresence>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsPresence>::~HDStatisticsBucket(v17);
  *(a1 + 528) = 0;
  return HDStatisticsBucket<HDStatisticsPresence>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsPresence>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsPresence>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 48), a2 + 24);
  v4 = a2[25].n128_u64[1];
  a2[25].n128_u64[1] = 0;
  v5 = a1[51];
  a1[51] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsPresence>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  *(a1 + 176) = 0;
  v13 = (a1 + 176);
  *(a1 + 168) = a1 + 176;
  *(a1 + 136) = v11;
  *(a1 + 152) = v12;
  *(a1 + 120) = v10;
  *(a1 + 184) = 0;
  v14 = *(a2 + 168);
  if (v14 != (a2 + 176))
  {
    v15 = 0;
    v16 = (a1 + 176);
    while (1)
    {
      v17 = v14[4];
      v18 = (a1 + 176);
      if (v16 == v13)
      {
        goto LABEL_12;
      }

      v19 = v15;
      v20 = (a1 + 176);
      if (v15)
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

      if (v18[4] < v17)
      {
LABEL_12:
        if (v15)
        {
          v22 = v18 + 1;
        }

        else
        {
          v22 = (a1 + 176);
        }

        if (!*v22)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v23 = v15;
            v24 = v15[4];
            if (v24 <= v17)
            {
              break;
            }

            v15 = *v23;
            if (!*v23)
            {
              goto LABEL_23;
            }
          }

          if (v24 >= v17)
          {
            break;
          }

          v15 = v23[1];
          if (!v15)
          {
            goto LABEL_23;
          }
        }
      }

      v25 = v14[1];
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
          v26 = v14[2];
          v21 = *v26 == v14;
          v14 = v26;
        }

        while (!v21);
      }

      if (v26 == (a2 + 176))
      {
        break;
      }

      v15 = *v13;
      v16 = *(a1 + 168);
      v14 = v26;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 192, a2 + 192);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 232), *(a2 + 232), *(a2 + 240), (*(a2 + 240) - *(a2 + 232)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 256, a2 + 256);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 296, a2 + 296);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 336, a2 + 336);
  return a1;
}

void sub_228F9A0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 296);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 256);
  v14 = *v11;
  if (*v11)
  {
    *(v10 + 240) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 192);
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

uint64_t HDStatisticsBucket<HDStatisticsPresence>::operator=(uint64_t a1, uint64_t a2)
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
  v11 = *(a2 + 136);
  v13 = a1 + 176;
  v12 = *(a1 + 176);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v11;
  *(a1 + 152) = v10;
  std::__tree<long>::destroy(v12);
  *(a1 + 168) = *(a2 + 168);
  v15 = *(a2 + 176);
  v16 = *(a2 + 184);
  v14 = (a2 + 176);
  *(a1 + 176) = v15;
  *(a1 + 184) = v16;
  if (v16)
  {
    *(v15 + 16) = v13;
    *(a2 + 168) = v14;
    *v14 = 0;
    *(a2 + 184) = 0;
  }

  else
  {
    *(a1 + 168) = v13;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 192, (a2 + 192));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 232, (a2 + 232));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 256, (a2 + 256));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 296, (a2 + 296));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 336, (a2 + 336));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v50 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v52 = a2;
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v50 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(a2 + 232);
      v16 = *(a2 + 240);
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

  v56[0] = &unk_283BF10F8;
  v57 = v56;
  v51 = v12;
  v21 = *(v52 + 136);
  *__p = *(v52 + 120);
  v54 = v21;
  *v55 = *(v52 + 152);
  if (!v57)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  [v51 setDataCount:{*(*(*v57 + 48))(v57, __p)}];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_56;
  }

  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v54 = 0u;
  v55[0] = 1.0;
  v22 = *(v52 + 168);
  if (v22 == (v52 + 176))
  {
    goto LABEL_55;
  }

  v47 = &v54;
  do
  {
    v23 = HDStatisticsBucket<HDStatisticsPresence>::_bundleIdentifierForSourceID(v52, v22[4]);
    v24 = v23;
    if (!v23)
    {
      goto LABEL_44;
    }

    v25 = [v23 hash];
    v26 = v25;
    v27 = __p[1];
    if (!__p[1])
    {
      goto LABEL_42;
    }

    v28 = vcnt_s8(__p[1]);
    v28.i16[0] = vaddlv_u8(v28);
    v29 = v28.u32[0];
    if (v28.u32[0] > 1uLL)
    {
      v30 = v25;
      if (v25 >= __p[1])
      {
        v30 = v25 % __p[1];
      }
    }

    else
    {
      v30 = (__p[1] - 1) & v25;
    }

    v31 = *(__p[0] + v30);
    if (!v31 || (v32 = *v31) == 0)
    {
LABEL_42:
      operator new();
    }

    v48 = __p[1] - 1;
    while (1)
    {
      v33 = v32[1];
      if (v33 == v26)
      {
        break;
      }

      if (v29 > 1)
      {
        if (v33 >= v27)
        {
          v33 %= v27;
        }
      }

      else
      {
        v33 &= v48;
      }

      if (v33 != v30)
      {
        goto LABEL_42;
      }

LABEL_41:
      v32 = *v32;
      if (!v32)
      {
        goto LABEL_42;
      }
    }

    v34 = v32[2];
    v35 = v24;
    v36 = v35;
    if (v34 != v35)
    {
      v37 = [v34 isEqualToString:v35];

      if (v37)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

LABEL_43:
    v38 = *(v22 + 5);
    v39 = *(v22 + 7);
    *(v32 + 7) = *(v22 + 9);
    *(v32 + 5) = v39;
    *(v32 + 3) = v38;

LABEL_44:
    v40 = v22[1];
    if (v40)
    {
      do
      {
        v41 = v40;
        v40 = *v40;
      }

      while (v40);
    }

    else
    {
      do
      {
        v41 = v22[2];
        v42 = *v41 == v22;
        v22 = v41;
      }

      while (!v42);
    }

    v22 = v41;
  }

  while (v41 != (v52 + 176));
  for (i = v54; i; i = *i)
  {
    v44 = i[2];
    if (!v57)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v45 = [MEMORY[0x277CCABB0] numberWithLongLong:{*(*(*v57 + 48))(v57, i + 3)}];
    [v49 setObject:v45 forKeyedSubscript:v44];
  }

LABEL_55:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  [v51 setDataCountBySource:v49];

LABEL_56:
  std::__function::__value_func<HDStatisticsPresence const& ()(HDStatisticsPresence const&)>::~__value_func[abi:ne200100](v56);

  return v51;
}

void HDStatisticsBucket<HDStatisticsPresence>::_updateSourceOrder(uint64_t a1)
{
  v2 = a1 + 232;
  v1 = *(a1 + 232);
  v3 = *(a1 + 216);
  if (v3 != (*(a1 + 240) - v1) >> 3)
  {
    *(a1 + 240) = v1;
    std::vector<long long>::reserve((a1 + 232), v3);
    for (i = *(a1 + 208); i; i = *i)
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

void HDStatisticsBucket<HDStatisticsPresence>::_mergeThroughTime(uint64_t a1, double a2)
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
        goto LABEL_92;
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

      HDStatisticsBucket<HDStatisticsPresence>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v79 = a1;
        v21 = 126 - 2 * __clz(v7);
        if (__p == v6)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,false>(__p, v6, &v79, v22, 1);
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
        v70 = v23;
        v71 = 0;
        v37 = 0;
        for (i = __p; i != v6; i += 6)
        {
          v39 = *(i + 1);
          v76 = *i;
          v77 = v39;
          v78 = *(i + 4);
          v40 = *&v39;
          v41 = v16 - *(&v76 + 1);
          v42 = *&v39 - *(&v76 + 1);
          if (v42 - (v16 - *(&v76 + 1)) >= 0.01)
          {
            if (v41 < 0.01 || (v47 = *&v76, v44 = v78, v43 = BYTE1(v78), v48 = v41 / v42 * *&v76, *&v76 = v48, *&v77 = v16, (v78 & 1) == 0))
            {
LABEL_54:
              std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
              continue;
            }

            v74 = *(&v77 + 1);
            v45 = v47 - v48;
            v46 = v16;
          }

          else
          {
            if ((v78 & 1) == 0)
            {
              goto LABEL_54;
            }

            v43 = 0;
            v44 = 0;
            v74 = 0;
            v45 = 0.0;
            v40 = 0.0;
            v46 = 0.0;
          }

          HDRawQuantitySample::applyMask(&v76, (a1 + 64));
          v49 = *(i + 41);
          v73 = *(i + 40);
          v75 = v43;
          if (v78 != 1)
          {
            v51 = *(i + 42);
            if (!v44)
            {
              continue;
            }

LABEL_76:
            *&v79 = v45;
            *(&v79 + 1) = v46;
            v80 = v40;
            v81 = v74;
            v82 = v44;
            v83 = v75;
            LOBYTE(v86) = v73;
            BYTE1(v86) = v49;
            BYTE2(v86) = v51 & 1;
            std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v79);
            continue;
          }

          if (v37)
          {
            v50 = *(&v77 + 1);
            if (v71 == *(&v77 + 1))
            {
              if (*(i + 42))
              {
                v51 = 1;
                v50 = v71;
                goto LABEL_63;
              }

LABEL_62:
              ++*(a1 + 120);
              v51 = 1;
              goto LABEL_63;
            }

            v52 = *(a1 + 24);
            v51 = v52 | *(i + 42);
            if (v52 == 1 && (*(i + 42) & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            if ((*(i + 42) & 1) == 0)
            {
              ++*(a1 + 120);
            }

            v51 = 1;
            v50 = *(&v77 + 1);
            v71 = *(&v77 + 1);
          }

LABEL_63:
          if (*(a1 + 25) != 1)
          {
            goto LABEL_75;
          }

          v53 = HDStatisticsBucket<HDStatisticsPresence>::_bundleIdentifierForSourceID(a1, v50);
          if (v53)
          {
            v54 = [v23 objectForKeyedSubscript:v53];
            v55 = v54;
            if (v54)
            {
              if ([v54 longLongValue] != v50 && *(a1 + 24) != 1)
              {
LABEL_73:

                v23 = v70;
                goto LABEL_74;
              }
            }

            else
            {
              v56 = [MEMORY[0x277CCABB0] numberWithLongLong:v50];
              [v70 setObject:v56 forKeyedSubscript:v53];
            }

            v57 = HDStatisticsBucket<HDStatisticsPresence>::_canonicalSourceIDForSourceID(a1, v50);
            v58 = HDStatisticsBucket<HDStatisticsPresence>::_statisticsForSource(a1, v57);
            if ((v49 & 1) == 0)
            {
              *v58 = (*v58 + 1);
            }

            v49 = 1;
            goto LABEL_73;
          }

LABEL_74:

LABEL_75:
          v37 = 1;
          if (v44)
          {
            goto LABEL_76;
          }
        }
      }

      *(a1 + 56) = v16;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_93:
      v67 = *(a1 + 56);
      if (v67 == v5)
      {
        v68 = [MEMORY[0x277CCA890] currentHandler];
        v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsPresence>::_mergeThroughTime(double) [Statistics = HDStatisticsPresence]"];
        [v68 handleFailureInFunction:v69 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v67 = *(a1 + 56);
      }

      v5 = v67;
      if (v67 >= a2)
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
LABEL_82:
        v60 = *(__p + 42);
        v61 = *(__p + 41);
        v62 = *(__p + 40);
        *&v79 = v25;
        *(&v79 + 1) = v24;
        v80 = v32;
        v81 = v27;
        v82 = v31;
        v83 = v29;
        v84 = *(__p + 34);
        v85 = *(__p + 19);
        *&v86 = v33;
        *(&v86 + 1) = v34;
        *&v87 = v26;
        *(&v87 + 1) = v35;
        LOBYTE(v88) = v28;
        HIBYTE(v88) = v36;
        HDRawQuantitySample::applyMask(&v79, (a1 + 64));
        if (v82 == 1)
        {
          if ((v60 & 1) == 0)
          {
            ++*(a1 + 120);
          }

          if (*(a1 + 25) == 1)
          {
            v63 = HDStatisticsBucket<HDStatisticsPresence>::_canonicalSourceIDForSourceID(a1, v81);
            v64 = HDStatisticsBucket<HDStatisticsPresence>::_statisticsForSource(a1, v63);
            if ((v61 & 1) == 0)
            {
              *v64 = (*v64 + 1);
            }
          }

          v62 = 1;
          v61 = 1;
          v60 = 1;
        }

        if (v88 == 1)
        {
          LOWORD(v78) = v88;
          v65 = v87;
          v66 = *(a1 + 96);
          *v66 = v86;
          *(v66 + 16) = v65;
          *(v66 + 32) = v78;
          *(v66 + 40) = v62;
          *(v66 + 41) = v61;
          *(v66 + 42) = v60;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_92:
        *(a1 + 56) = a2;
        goto LABEL_93;
      }

      v59 = v25 * (v30 / (v26 - v24));
      v32 = a2;
      v31 = *(__p + 32);
      v33 = v25 - v59;
      v25 = v59;
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
    goto LABEL_82;
  }
}

uint64_t **HDStatisticsBucket<HDStatisticsPresence>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v4 = *(a1 + 176);
  v2 = (a1 + 176);
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
    std::__tree<std::__value_type<long long,HDStatisticsPresence>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPresence>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPresence>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v2 - 1, a2, &v9);
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsPresence>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPresence>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPresence>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v8, &v9);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsPresence>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 256), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsPresence>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 296), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 296), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsPresence>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 336), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 336), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsPresence>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPresence>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPresence>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
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

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
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
                v104 = *(*a3 + 232);
                v105 = *(*a3 + 240);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 232);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 232);
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
                  v107 = *(*a3 + 240);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 240);
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
                    v115 = *(*a3 + 232);
                    v116 = *(*a3 + 240);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 232);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 232);
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
                      v118 = *(*a3 + 240);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 240);
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
                          v122 = *(*a3 + 232);
                          v123 = *(*a3 + 240);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 232);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 232);
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
                            v125 = *(*a3 + 240);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 240);
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
                  v208 = *(*a3 + 232);
                  v209 = *(*a3 + 240);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 232);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 232);
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
                    v211 = *(*a3 + 240);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 240);
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

                      v216 = *(*a3 + 232);
                      v217 = *(*a3 + 240);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 232);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 232);
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
                        v219 = *(*a3 + 240);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 240);
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
                      v134 = *(*a3 + 232);
                      v133 = *(*a3 + 240);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 232);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 232);
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
                        v136 = *(*a3 + 240);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 240);
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

                  v145 = *(*a3 + 232);
                  v144 = *(*a3 + 240);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 232);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 232);
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
                    v147 = *(*a3 + 240);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 240);
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
                            v155 = *(*a3 + 232);
                            v156 = *(*a3 + 240);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 232);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 232);
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
                              v158 = *(*a3 + 240);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 240);
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
                          v165 = *(*a3 + 232);
                          v164 = *(*a3 + 240);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 232);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 232);
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
                            v167 = *(*a3 + 240);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 240);
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
                      v180 = *(*a3 + 232);
                      v179 = *(*a3 + 240);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 232);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 232);
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
                        v182 = *(*a3 + 240);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 240);
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
                      v194 = *(*a3 + 232);
                      v193 = *(*a3 + 240);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 232);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 232);
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
                        v196 = *(*a3 + 240);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 240);
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

                          v202 = *(*a3 + 232);
                          v201 = *(*a3 + 240);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 232);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 232);
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
                            v204 = *(*a3 + 240);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 240);
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
            v24 = *(*a3 + 232);
            v25 = *(*a3 + 240);
            if (v24 == v25)
            {
              v27 = *(*a3 + 232);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 232);
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
              v27 = *(*a3 + 240);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 240);
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

          v67 = *(*a3 + 232);
          v68 = *(*a3 + 240);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 232);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 240);
                break;
              }
            }

            v70 = *(*a3 + 232);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 240);
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
                  v77 = *(v74 + 232);
                  v78 = *(v74 + 240);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 232);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 232);
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
                    v80 = *(v74 + 240);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 240);
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
              v72 = *(*a3 + 232);
              if (v67 == v68)
              {
                v73 = *(*a3 + 232);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 240);
                    break;
                  }
                }

                v73 = *(*a3 + 232);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 240);
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

              v84 = *(v82 + 232);
              v85 = *(v82 + 240);
              if (v84 == v85)
              {
                v87 = *(v82 + 232);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 232);
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
                v87 = *(v82 + 240);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 240);
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
              v92 = *(v90 + 232);
              v93 = *(v90 + 240);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 232);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 240);
                    break;
                  }
                }

                v95 = *(v90 + 232);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 240);
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

          v31 = *(v22 + 232);
          v32 = *(v22 + 240);
          if (v31 == v32)
          {
            v34 = *(v22 + 232);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 232);
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
            v34 = *(v22 + 240);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 240);
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
                v42 = *(v22 + 232);
                v43 = *(v22 + 240);
                if (v42 == v43)
                {
                  v45 = *(v22 + 232);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 232);
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
                  v45 = *(v22 + 240);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 240);
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
            v37 = *(v22 + 232);
            v38 = *(v22 + 240);
            if (v37 == v38)
            {
              v40 = *(v22 + 232);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 232);
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
              v40 = *(v22 + 240);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 240);
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

              v52 = *(v50 + 232);
              v53 = *(v50 + 240);
              if (v52 == v53)
              {
                v55 = *(v50 + 232);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 232);
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
                v55 = *(v50 + 240);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 240);
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
              v57 = *(v50 + 232);
              v58 = *(v50 + 240);
              if (v57 == v58)
              {
                v60 = *(v50 + 232);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 232);
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
                v60 = *(v50 + 240);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 240);
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
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*>(v11, a2, a3))
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

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 232);
  v7 = *(*a4 + 240);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 232);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 240);
        break;
      }
    }

    v9 = *(*a4 + 232);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 240);
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
      v14 = *(*a4 + 232);
      v15 = *(*a4 + 240);
      if (v14 == v15)
      {
        v17 = *(*a4 + 232);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 232);
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
        v17 = *(*a4 + 240);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 240);
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
          v24 = *(*a4 + 232);
          v25 = *(*a4 + 240);
          if (v24 == v25)
          {
            v27 = *(*a4 + 232);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 232);
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
            v27 = *(*a4 + 240);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 240);
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
      v11 = *(*a4 + 232);
      if (v6 == v7)
      {
        v12 = *(*a4 + 232);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 240);
            break;
          }
        }

        v12 = *(*a4 + 232);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 240);
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
      v37 = *(*a4 + 232);
      v38 = *(*a4 + 240);
      if (v37 == v38)
      {
        v40 = *(*a4 + 232);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 232);
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
        v40 = *(*a4 + 240);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 240);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 232);
    v14 = *(*a5 + 240);
    if (v13 == v14)
    {
      v16 = *(*a5 + 232);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 232);
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
      v16 = *(*a5 + 240);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 240);
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
        v22 = *(*a5 + 232);
        v23 = *(*a5 + 240);
        if (v22 == v23)
        {
          v25 = *(*a5 + 232);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 232);
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
          v25 = *(*a5 + 240);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 240);
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
            v31 = *(*a5 + 232);
            v32 = *(*a5 + 240);
            if (v31 == v32)
            {
              v34 = *(*a5 + 232);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 232);
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
              v34 = *(*a5 + 240);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 240);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 232);
    v16 = *(*a6 + 240);
    if (v15 == v16)
    {
      v18 = *(*a6 + 232);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 232);
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
      v18 = *(*a6 + 240);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 240);
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
        v24 = *(*a6 + 232);
        v25 = *(*a6 + 240);
        if (v24 == v25)
        {
          v27 = *(*a6 + 232);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 232);
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
          v27 = *(*a6 + 240);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 240);
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
            v33 = *(*a6 + 232);
            v34 = *(*a6 + 240);
            if (v33 == v34)
            {
              v36 = *(*a6 + 232);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 232);
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
              v36 = *(*a6 + 240);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 240);
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
                v42 = *(*a6 + 232);
                v43 = *(*a6 + 240);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 232);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 232);
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
                  v45 = *(*a6 + 240);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 240);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 232);
          v10 = *(*a3 + 240);
          if (v9 == v10)
          {
            v12 = *(*a3 + 232);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 232);
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
            v12 = *(*a3 + 240);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 240);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsPresence>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsPresence>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 232);
      v19 = *(*a3 + 240);
      if (v18 == v19)
      {
        v21 = *(*a3 + 232);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 232);
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
        v21 = *(*a3 + 240);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 240);
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
            v25 = *(*a3 + 232);
            v26 = *(*a3 + 240);
            if (v25 == v26)
            {
              v28 = *(*a3 + 232);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 232);
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
              v28 = *(*a3 + 240);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 240);
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_addStatisticsFromFinishedBucket<HDStatisticsPresence>(HKStatistics *,HDStatisticsBucket<HDStatisticsPresence> const&)::{lambda(HDStatisticsPresence const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_addStatisticsFromFinishedBucket<HDStatisticsPresence>(HKStatistics *,HDStatisticsBucket<HDStatisticsPresence> const&)::{lambda(HDStatisticsPresence const&)#1}>,HDStatisticsPresence const& ()(HDStatisticsPresence const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsPresence const& ()(HDStatisticsPresence const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_primitiveAddSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 528) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_configureForStartTime(a1);
  }

  v8 = *(a2 + 8);
  if (v8 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsPresence>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v8 end:*(a2 + 16)];
    v10 = (*(*a1 + 128))(a1, v9, a4);
  }

  return v10;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 528) & 1) == 0)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v5 = *(a1 + 496);
    v4 = *(a1 + 504);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsPresence>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsPresence>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsPresence>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsPresence>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsPresence>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsPresence>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsPresence>::addSample(uint64_t a1, uint64_t a2, int a3)
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
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 200), v18, &v43 + 1);
  if (*(a1 + 112) == *(a1 + 104) && *(a1 + 128) <= 0)
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
    HDStatisticsBucket<HDStatisticsPresence>::_mergeThroughTime(v11, v24);
  }

  v38[0] = v42;
  v38[1] = v43;
  v39 = v44;
  v40 = 0;
  v41 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v38);
  if (!*(a1 + 168) || *(a1 + 144) <= v6)
  {
    *(a1 + 136) = v5;
    *(a1 + 144) = v6;
    *(a1 + 152) = v7;
    *(a1 + 160) = v8;
    *(a1 + 168) = v9;
    *(a1 + 169) = v10;
  }

  if (*(a1 + 33) == 1)
  {
    v31 = HDStatisticsBucket<HDStatisticsPresence>::_canonicalSourceIDForSourceID(v11, v18);
    v32 = HDStatisticsBucket<HDStatisticsPresence>::_statisticsForSource(v11, v31);
    if (!*(v32 + 40) || *(v32 + 2) <= v6)
    {
      *(v32 + 1) = v5;
      *(v32 + 2) = v6;
      *(v32 + 3) = v7;
      v32[4] = v8;
      *(v32 + 40) = v9;
      *(v32 + 41) = v10;
    }
  }

LABEL_41:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 384, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 530) == 1)
  {
    *(a1 + 532) = 1;
  }

  else
  {
    *(a1 + 532) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsPresence>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 384), *(a1 + 392), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 392) - *(a1 + 384)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsPresence>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsPresence>::addSample(a1, v8, 1);
      v8 += 40;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F9E0D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsPresence>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 408), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  if (*(v8 + 152))
  {
    v9 = *(a1 + 184);
    v10 = *(a1 + 176);
    *(a1 + 176) = a1 + 184;
    *(v9 + 16) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
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

  objc_storeStrong(v8, *(a1 + 408));
  *(a1 + 392) = *(a1 + 384);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 532) == 1)
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

    *(a1 + 532) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 528))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F9E370(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 528) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F9E7C0(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C405E2A77A1);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsPresence>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsPresence>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsPresence>::advanceBucket(v15 + 112, v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 532) == 1)
          {
            *(v15 + 532) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 528) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsPresence>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsPresenceE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPresence>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF11A8;
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 1;
  *(a1 + 730) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF11A8;
  v2 = *(a1 + 760);
  if (v2)
  {
    *(a1 + 768) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 696);
  if (v3)
  {
    *(a1 + 704) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 728) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 736) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 93, a2);
  v7 = a2;
  v4 = a1[93];
  v5 = a1[90];
  a1[90] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[90]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 728) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 730) == 1)
    {
      if (*(a1 + 729))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 728))
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

      if (*(a1 + 731) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 760, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 730) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 730) = 1;
  v60 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v59 = v6;
  if (*(a1 + 729))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 752);
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

  [v9 sortUsingComparator:&__block_literal_global_1107];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = *(a1 + 752);
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
  v27 = *(a1 + 752);
  *(a1 + 752) = 0;

  *(a1 + 729) = 0;
  if (v8)
  {
    v28 = *(a1 + 760);
    *(a1 + 776) = 0;
    *(a1 + 768) = 0;
    *(a1 + 760) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v61 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 760);
      v39 = *(a1 + 768);
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
            v39 = *(a1 + 768);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 768) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 760);
  v29 = *(a1 + 768);
  *(a1 + 776) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v49, v60);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, 0, v60))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, v55, 1, v51);
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

  if (*(a1 + 40) && *(a1 + 704) != *(a1 + 696))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 730) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 732) == 1)
    {
      *(a1 + 732) = 0;
      v6 = v59;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 730) = 0;
LABEL_81:

  return v7;
}

void sub_228F9FD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 730) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 730))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 730) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 752);
    *(a1 + 752) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 729) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 729) & 1) == 0)
  {
    v8 = *(a1 + 752);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 752);
      *(a1 + 752) = v9;

      v8 = *(a1 + 752);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 728) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 728) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 728) forKey:@"needs_config"];
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
  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::archive(v25, a1 + 240);
}

void sub_228FA05B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v37 = a2;
  *(k + 728) = [v37 decodeBoolForKey:@"needs_config"];
  v3 = v37;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v42, 0, -1.79769313e308, 1.79769313e308);
  v43 = 0u;
  v44 = 0u;
  v86 = 0;
  PB::Reader::Reader(v85, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v86]);
  v78 = &unk_283BF1A08;
  v79 = 0;
  v83 = 0;
  v81 = 0;
  v82 = 0;
  v84 = 0;
  statistics::StatisticsEngine::readFrom(&v78, v85);
  v41 = v80;
  if (v79)
  {
    v48 = 0;
    memset(v51, 0, sizeof(v51));
    memset(v52, 0, sizeof(v52));
    v53 = 0;
    v54 = 0u;
    v55 = 0u;
    v56 = xmmword_229170D50;
    *&v57[8] = xmmword_229170D60;
    *v57 = 0;
    *&v57[24] = 0;
    v58 = xmmword_229170D70;
    *&v59[8] = xmmword_229170D80;
    *v59 = 0;
    *&v59[24] = 0;
    v60 = xmmword_229170D90;
    *&v61 = 0;
    *(&v61 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    memset(v62, 0, 74);
    v63[1] = 0;
    v63[0] = 0;
    v62[10] = v63;
    v64 = 0u;
    v65 = 0u;
    v66 = 1065353216;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0;
    v71 = 1065353216;
    v72 = 0u;
    v73 = 0u;
    v74 = 1065353216;
    v75 = 0u;
    v76 = 0u;
    v77 = 1065353216;
    v45 = vextq_s8(*(v79 + 8), *(v79 + 8), 8uLL);
    v4 = *(v79 + 72);
    v46 = *(v79 + 64);
    LOWORD(v47) = *(v79 + 185);
    v49 = vextq_s8(*(v79 + 24), *(v79 + 24), 8uLL);
    v50 = v4;
    v5 = *(v79 + 80);
    v6 = *(v79 + 88);
    v39 = v3;
    for (i = v79; v5 != v6; ++v5)
    {
      v7 = *v5;
      WORD4(v88) = 1;
      LOBYTE(v89) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      *v87 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v87[16] = v8;
      *&v88 = v9;
      BYTE1(v89) = *(v7 + 41);
      BYTE2(v89) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v52, v87);
    }

    v10 = i;
    v11 = i[13];
    if (v11)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::unarchive(v87, v11);
      v53 = *v87;
      *v59 = v93;
      *&v59[16] = v94;
      v60 = v95;
      v61 = v96;
      v56 = v89;
      *v57 = v90;
      *&v57[16] = v91;
      v58 = v92;
      v54 = *&v87[8];
      v55 = v88;
      v62[0] = v97;
      if (v62[1])
      {
        v62[2] = v62[1];
        operator delete(v62[1]);
      }

      *&v62[1] = v98;
      v62[3] = v99;
      v99 = 0;
      v98 = 0uLL;
      v62[4] = v100;
      *&v62[5] = v101;
      *&v62[7] = v102;
      LOWORD(v62[9]) = v103;
      v10 = i;
    }

    v38 = k;
    v13 = v10[17];
    for (j = v10[18]; v13 != j; ++v13)
    {
      v14 = *v13;
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::unarchive(v87, *v13);
      v15 = *(v14 + 144);
      v16 = v63[0];
      if (!v63[0])
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

      v19 = v17;
      *(v17 + 10) = *v87;
      v20 = v92;
      *(v17 + 7) = v91;
      *(v17 + 8) = v20;
      v21 = v90;
      *(v17 + 5) = v89;
      *(v17 + 6) = v21;
      v22 = v96;
      *(v17 + 11) = v95;
      *(v17 + 12) = v22;
      v23 = v94;
      *(v17 + 9) = v93;
      *(v17 + 10) = v23;
      v24 = v88;
      *(v17 + 3) = *&v87[8];
      *(v17 + 4) = v24;
      v26 = v17 + 27;
      v25 = v19[27];
      v19[26] = v97;
      if (v25)
      {
        v19[28] = v25;
        operator delete(v25);
        *v26 = 0;
        v19[28] = 0;
        v19[29] = 0;
      }

      *(v19 + 27) = v98;
      v19[29] = v99;
      v19[30] = v100;
      v27 = v102;
      *(v19 + 31) = v101;
      v99 = 0;
      v98 = 0uLL;
      *(v19 + 33) = v27;
      *(v19 + 140) = v103;
    }

    v3 = v39;
    v28 = i[5];
    v29 = i[6];
    for (k = v38; v28 != v29; v28 += 8)
    {
      v31 = *(*v28 + 8);
      v30 = *(*v28 + 16);
      if (v31 >= v30)
      {
        v32 = *(*v28 + 16);
      }

      else
      {
        v32 = *(*v28 + 8);
      }

      if (v30 < v31)
      {
        v30 = *(*v28 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v51, v32, v30);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::operator=(v42, &v45);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v45);
  }

  v33 = v81;
  for (m = v82; v33 != m; v33 += 8)
  {
    v35 = *(*v33 + 8);
    v36 = *(*v33 + 16);
    v45 = vextq_s8(*(*v33 + 24), *(*v33 + 24), 8uLL);
    v46 = v35;
    v47 = v36;
    LOWORD(v48) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v43, v45.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v78);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::operator=((k + 112), &v41);
  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v42);
}

void sub_228FA0C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x4F0]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x4C8]);
  v29 = STACK[0x4B0];
  if (STACK[0x4B0])
  {
    STACK[0x4B8] = v29;
    operator delete(v29);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a11);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(STACK[0x478]);
  v30 = STACK[0x428];
  if (STACK[0x428])
  {
    STACK[0x430] = v30;
    operator delete(v30);
  }

  v31 = STACK[0x360];
  if (STACK[0x360])
  {
    STACK[0x368] = v31;
    operator delete(v31);
  }

  objc_destroyWeak(&STACK[0x358]);
  v32 = STACK[0x340];
  if (STACK[0x340])
  {
    STACK[0x348] = v32;
    operator delete(v32);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x540]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(&a28);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = xmmword_229170D50;
  *(a1 + 176) = 0;
  *(a1 + 184) = xmmword_229170D60;
  *(a1 + 200) = 0;
  *(a1 + 208) = xmmword_229170D70;
  *(a1 + 224) = 0;
  *(a1 + 232) = xmmword_229170D80;
  *(a1 + 248) = 0;
  *(a1 + 256) = xmmword_229170D90;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 346) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = a1 + 376;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = 1065353216;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 1065353216;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 584);
  if (v2)
  {
    *(a1 + 592) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 536);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 496);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 456);
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 392);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 376));
  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
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

void std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(a1[1]);
    v2 = a1[27];
    if (v2)
    {
      a1[28] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

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

  objc_storeStrong(&v27, *(a1 + 744));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v17);
  *(a1 + 728) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 73), (a2 + 584));
  v4 = *(a2 + 608);
  *(a2 + 608) = 0;
  v5 = a1[76];
  a1[76] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  v13 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v13;
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  v14 = *(a2 + 224);
  v15 = *(a2 + 240);
  v16 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v16;
  *(a1 + 224) = v14;
  *(a1 + 240) = v15;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 296), *(a2 + 296), *(a2 + 304), (*(a2 + 304) - *(a2 + 296)) >> 4);
  *(a1 + 320) = *(a2 + 320);
  v17 = *(a2 + 344);
  v18 = *(a2 + 360);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = v17;
  v19 = (a1 + 376);
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 360) = v18;
  *(a1 + 368) = a1 + 376;
  v20 = *(a2 + 368);
  if (v20 != (a2 + 376))
  {
    v21 = 0;
    v22 = (a1 + 376);
    while (1)
    {
      v23 = (a1 + 376);
      if (v22 == v19)
      {
        goto LABEL_12;
      }

      v24 = v21;
      v25 = (a1 + 376);
      if (v21)
      {
        do
        {
          v23 = v24;
          v24 = v24[1];
        }

        while (v24);
      }

      else
      {
        do
        {
          v23 = v25[2];
          v26 = *v23 == v25;
          v25 = v23;
        }

        while (v26);
      }

      v27 = v20[4];
      if (v23[4] < v27)
      {
LABEL_12:
        if (v21)
        {
          v28 = v23 + 1;
        }

        else
        {
          v28 = (a1 + 376);
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
            if (v30 <= v27)
            {
              break;
            }

            v21 = *v29;
            if (!*v29)
            {
              goto LABEL_23;
            }
          }

          if (v30 >= v27)
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
          v26 = *v32 == v20;
          v20 = v32;
        }

        while (!v26);
      }

      if (v32 == (a2 + 376))
      {
        break;
      }

      v21 = *v19;
      v22 = *(a1 + 368);
      v20 = v32;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 392, a2 + 392);
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 432), *(a2 + 432), *(a2 + 440), (*(a2 + 440) - *(a2 + 432)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 456, a2 + 456);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 496, a2 + 496);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 536, a2 + 536);
  return a1;
}

void sub_228FA16B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 496);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 456);
  v14 = *(v10 + 432);
  if (v14)
  {
    *(v10 + 440) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 392);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(*v12);
  v15 = *(v10 + 296);
  if (v15)
  {
    *(v10 + 304) = v15;
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

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::operator=(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  v13 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v13;
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  v14 = *(a2 + 224);
  v15 = *(a2 + 240);
  v16 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v16;
  *(a1 + 224) = v14;
  *(a1 + 240) = v15;
  *(a1 + 288) = *(a2 + 288);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 296, (a2 + 296));
  *(a1 + 320) = *(a2 + 320);
  v17 = *(a2 + 328);
  v18 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 328) = v17;
  *(a1 + 344) = v18;
  v19 = a1 + 376;
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 376));
  *(a1 + 368) = *(a2 + 368);
  v20 = *(a2 + 376);
  v21 = *(a2 + 384);
  *(a1 + 376) = v20;
  *(a1 + 384) = v21;
  if (v21)
  {
    *(v20 + 16) = v19;
    *(a2 + 368) = a2 + 376;
    *(a2 + 376) = 0;
    *(a2 + 384) = 0;
  }

  else
  {
    *(a1 + 368) = v19;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 392, (a2 + 392));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 432, (a2 + 432));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 456, (a2 + 456));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 496, (a2 + 496));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 536, (a2 + 536));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
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
      v16 = *(a2 + 432);
      v17 = *(a2 + 440);
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

  v22[0] = &unk_283BF1398;
  v22[3] = v22;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](v23, v22);
  v24 = 0;
  operator new();
}

void sub_228FA23DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (v39)
  {
  }

  if (v38)
  {
  }

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 416);
  v2 = *(a1 + 432);
  if (v1 != (*(a1 + 440) - v2) >> 3)
  {
    *(a1 + 440) = v2;
    std::vector<long long>::reserve((a1 + 432), v1);
    for (i = *(a1 + 408); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 432, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 432];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v67 = (a1 + 376);
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

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1);
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

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(__p, v6, &v74, v23, 1);
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
                    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v73, v43 ^ 1);
                    LOBYTE(v43) = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v73, v43 ^ 1);
                  LOBYTE(v43) = 1;
                  v45 = v73.var3;
                  v69 = v73.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_71;
                }

                v46 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, v45);
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

                v49 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v45);
                v50 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v49);
                HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(v50, &v73, v44 ^ 1);
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

      *(a1 + 320) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 296), v16) + *(a1 + 320);
      v51 = *(a1 + 368);
      if (v51 != v67)
      {
        do
        {
          *(v51 + 30) = HKIntervalMask<double>::removeIntervalsBefore(v51 + 27, v16) + *(v51 + 30);
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
        v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages, HDStatisticsTimeInterval>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages, HDStatisticsTimeInterval>>]"}];
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
          HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v74, v55 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v59 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v74.var3);
            v60 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v59);
            HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(v60, &v74, v56 ^ 1);
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

uint64_t *HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(uint64_t *result, HDRawQuantitySample *a2, int a3)
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

    ++result;
    if (v5[1])
    {
      return result;
    }

    goto LABEL_17;
  }

  if (v6 == 1)
  {
    if (v7)
    {
      return result;
    }

    v8 = 1;
    goto LABEL_14;
  }

  if (v7 != 2)
  {
    v8 = 2;
LABEL_14:
    *result = v8;
    v12 = 0uLL;
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *(result + 5) = xmmword_229170D50;
    result[7] = 0;
    *(result + 4) = xmmword_229170D60;
    result[10] = 0;
    *(result + 11) = xmmword_229170D70;
    result[13] = 0;
    *(result + 7) = xmmword_229170D80;
    result[16] = 0;
    *(result + 17) = xmmword_229170D90;
    result[19] = 0;
    *(result + 10) = xmmword_229170DA0;
    v13 = result[22];
    if (v13)
    {
      v5[23] = v13;
      operator delete(v13);
      v12 = 0uLL;
    }

    *(v5 + 11) = v12;
    *(v5 + 12) = v12;
    result = v5 + 1;
LABEL_17:
    HDStatisticsSleepStages::addSample(result, a2, a3);
    v9 = v5 + 21;
    v10 = a2;
    v11 = a3;
    goto LABEL_18;
  }

  HDStatisticsSleepStages::addSample((result + 1), a2, 1);
  v9 = v5 + 21;
  v10 = a2;
  v11 = 1;
LABEL_18:

  return HDStatisticsTimeInterval::addSample(v9, v10, v11);
}

uint64_t **HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 376);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 376);
  v5 = (a1 + 376);
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 368), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 368), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 456), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 496), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 496), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 536), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 536), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
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

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
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
                v104 = *(*a3 + 432);
                v105 = *(*a3 + 440);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 432);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 432);
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
                  v107 = *(*a3 + 440);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 440);
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
                    v115 = *(*a3 + 432);
                    v116 = *(*a3 + 440);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 432);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 432);
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
                      v118 = *(*a3 + 440);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 440);
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
                          v122 = *(*a3 + 432);
                          v123 = *(*a3 + 440);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 432);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 432);
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
                            v125 = *(*a3 + 440);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 440);
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
                  v208 = *(*a3 + 432);
                  v209 = *(*a3 + 440);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 432);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 432);
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
                    v211 = *(*a3 + 440);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 440);
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

                      v216 = *(*a3 + 432);
                      v217 = *(*a3 + 440);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 432);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 432);
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
                        v219 = *(*a3 + 440);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 440);
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
                      v134 = *(*a3 + 432);
                      v133 = *(*a3 + 440);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 432);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 432);
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
                        v136 = *(*a3 + 440);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 440);
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

                  v145 = *(*a3 + 432);
                  v144 = *(*a3 + 440);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 432);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 432);
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
                    v147 = *(*a3 + 440);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 440);
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
                            v155 = *(*a3 + 432);
                            v156 = *(*a3 + 440);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 432);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 432);
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
                              v158 = *(*a3 + 440);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 440);
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
                          v165 = *(*a3 + 432);
                          v164 = *(*a3 + 440);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 432);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 432);
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
                            v167 = *(*a3 + 440);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 440);
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
                      v180 = *(*a3 + 432);
                      v179 = *(*a3 + 440);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 432);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 432);
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
                        v182 = *(*a3 + 440);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 440);
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
                      v194 = *(*a3 + 432);
                      v193 = *(*a3 + 440);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 432);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 432);
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
                        v196 = *(*a3 + 440);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 440);
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

                          v202 = *(*a3 + 432);
                          v201 = *(*a3 + 440);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 432);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 432);
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
                            v204 = *(*a3 + 440);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 440);
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
            v24 = *(*a3 + 432);
            v25 = *(*a3 + 440);
            if (v24 == v25)
            {
              v27 = *(*a3 + 432);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 432);
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
              v27 = *(*a3 + 440);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 440);
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

          v67 = *(*a3 + 432);
          v68 = *(*a3 + 440);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 432);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 440);
                break;
              }
            }

            v70 = *(*a3 + 432);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 440);
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
                  v77 = *(v74 + 432);
                  v78 = *(v74 + 440);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 432);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 432);
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
                    v80 = *(v74 + 440);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 440);
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
              v72 = *(*a3 + 432);
              if (v67 == v68)
              {
                v73 = *(*a3 + 432);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 440);
                    break;
                  }
                }

                v73 = *(*a3 + 432);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 440);
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

              v84 = *(v82 + 432);
              v85 = *(v82 + 440);
              if (v84 == v85)
              {
                v87 = *(v82 + 432);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 432);
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
                v87 = *(v82 + 440);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 440);
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
              v92 = *(v90 + 432);
              v93 = *(v90 + 440);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 432);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 440);
                    break;
                  }
                }

                v95 = *(v90 + 432);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 440);
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

          v31 = *(v22 + 432);
          v32 = *(v22 + 440);
          if (v31 == v32)
          {
            v34 = *(v22 + 432);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 432);
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
            v34 = *(v22 + 440);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 440);
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
                v42 = *(v22 + 432);
                v43 = *(v22 + 440);
                if (v42 == v43)
                {
                  v45 = *(v22 + 432);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 432);
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
                  v45 = *(v22 + 440);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 440);
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
            v37 = *(v22 + 432);
            v38 = *(v22 + 440);
            if (v37 == v38)
            {
              v40 = *(v22 + 432);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 432);
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
              v40 = *(v22 + 440);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 440);
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

              v52 = *(v50 + 432);
              v53 = *(v50 + 440);
              if (v52 == v53)
              {
                v55 = *(v50 + 432);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 432);
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
                v55 = *(v50 + 440);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 440);
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
              v57 = *(v50 + 432);
              v58 = *(v50 + 440);
              if (v57 == v58)
              {
                v60 = *(v50 + 432);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 432);
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
                v60 = *(v50 + 440);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 440);
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
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*>(v11, a2, a3))
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

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 432);
  v7 = *(*a4 + 440);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 432);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 440);
        break;
      }
    }

    v9 = *(*a4 + 432);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 440);
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
      v14 = *(*a4 + 432);
      v15 = *(*a4 + 440);
      if (v14 == v15)
      {
        v17 = *(*a4 + 432);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 432);
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
        v17 = *(*a4 + 440);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 440);
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
          v24 = *(*a4 + 432);
          v25 = *(*a4 + 440);
          if (v24 == v25)
          {
            v27 = *(*a4 + 432);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 432);
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
            v27 = *(*a4 + 440);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 440);
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
      v11 = *(*a4 + 432);
      if (v6 == v7)
      {
        v12 = *(*a4 + 432);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 440);
            break;
          }
        }

        v12 = *(*a4 + 432);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 440);
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
      v37 = *(*a4 + 432);
      v38 = *(*a4 + 440);
      if (v37 == v38)
      {
        v40 = *(*a4 + 432);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 432);
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
        v40 = *(*a4 + 440);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 440);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 432);
    v14 = *(*a5 + 440);
    if (v13 == v14)
    {
      v16 = *(*a5 + 432);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 432);
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
      v16 = *(*a5 + 440);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 440);
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
        v22 = *(*a5 + 432);
        v23 = *(*a5 + 440);
        if (v22 == v23)
        {
          v25 = *(*a5 + 432);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 432);
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
          v25 = *(*a5 + 440);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 440);
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
            v31 = *(*a5 + 432);
            v32 = *(*a5 + 440);
            if (v31 == v32)
            {
              v34 = *(*a5 + 432);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 432);
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
              v34 = *(*a5 + 440);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 440);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 432);
    v16 = *(*a6 + 440);
    if (v15 == v16)
    {
      v18 = *(*a6 + 432);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 432);
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
      v18 = *(*a6 + 440);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 440);
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
        v24 = *(*a6 + 432);
        v25 = *(*a6 + 440);
        if (v24 == v25)
        {
          v27 = *(*a6 + 432);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 432);
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
          v27 = *(*a6 + 440);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 440);
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
            v33 = *(*a6 + 432);
            v34 = *(*a6 + 440);
            if (v33 == v34)
            {
              v36 = *(*a6 + 432);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 432);
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
              v36 = *(*a6 + 440);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 440);
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
                v42 = *(*a6 + 432);
                v43 = *(*a6 + 440);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 432);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 432);
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
                  v45 = *(*a6 + 440);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 440);
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