BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 432);
          v10 = *(*a3 + 440);
          if (v9 == v10)
          {
            v12 = *(*a3 + 432);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 432);
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
            v12 = *(*a3 + 440);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 440);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 432);
      v19 = *(*a3 + 440);
      if (v18 == v19)
      {
        v21 = *(*a3 + 432);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 432);
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
        v21 = *(*a3 + 440);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 440);
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
            v25 = *(*a3 + 432);
            v26 = *(*a3 + 440);
            if (v25 == v26)
            {
              v28 = *(*a3 + 432);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 432);
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
              v28 = *(*a3 + 440);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 440);
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

__n128 HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 240);
  *(a1 + 104) = *(a2 + 224);
  *(a1 + 120) = v3;
  v4 = *(a2 + 272);
  *(a1 + 136) = *(a2 + 256);
  *(a1 + 152) = v4;
  v5 = *(a2 + 176);
  *(a1 + 40) = *(a2 + 160);
  *(a1 + 56) = v5;
  v6 = *(a2 + 208);
  *(a1 + 72) = *(a2 + 192);
  *(a1 + 88) = v6;
  v7 = *(a2 + 144);
  *(a1 + 8) = *(a2 + 128);
  *a1 = *(a2 + 120);
  *(a1 + 24) = v7;
  *(a1 + 176) = 0;
  v8 = a1 + 176;
  v10 = *(a2 + 288);
  v9 = *(a2 + 296);
  *(a1 + 168) = v10;
  v11 = *(a2 + 304);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 176), v9, v11, (v11 - v9) >> 4);
  *(v8 + 24) = *(a2 + 320);
  result = *(a2 + 328);
  v13 = *(a2 + 344);
  *(v8 + 32) = result;
  *(v8 + 48) = v13;
  *(v8 + 64) = *(a2 + 360);
  return result;
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  v2 = *(a2 + 368);
  v31 = (a2 + 376);
  if (v2 == (a2 + 376))
  {
    return;
  }

  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
    v33 = v9.u32[0];
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

      if (v33 > 1)
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
    v19 = *(v2 + 3);
    *(v12 + 3) = *(v2 + 4);
    *(v12 + 2) = v19;
    v20 = *(v2 + 5);
    v21 = *(v2 + 6);
    v22 = *(v2 + 7);
    *(v12 + 7) = *(v2 + 8);
    *(v12 + 6) = v22;
    *(v12 + 5) = v21;
    *(v12 + 4) = v20;
    v23 = *(v2 + 9);
    v24 = *(v2 + 10);
    v25 = *(v2 + 11);
    *(v12 + 11) = *(v2 + 12);
    *(v12 + 10) = v25;
    *(v12 + 9) = v24;
    *(v12 + 8) = v23;
    v12[24] = v2[26];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 25, v2[27], v2[28], (v2[28] - v2[27]) >> 4);
    }

    v12[28] = v2[30];
    v26 = *(v2 + 31);
    v27 = *(v2 + 33);
    *(v12 + 132) = *(v2 + 140);
    *(v12 + 31) = v27;
    *(v12 + 29) = v26;

LABEL_24:
    v28 = v2[1];
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
        v29 = v2[2];
        v30 = *v29 == v2;
        v2 = v29;
      }

      while (!v30);
    }

    v2 = v29;
  }

  while (v29 != v31);
}

void sub_228FA5AB8(_Unwind_Exception *a1)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100]((v3 - 112));

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1278;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1278;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 160;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1308;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1308;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 728) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 728))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t a1, double a2)
{
  if (*(a1 + 128) <= a2)
  {
    if (*(a1 + 704) != *(a1 + 696))
    {
      [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
    }

    v5 = 0;
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, double *a2, int a3)
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
    goto LABEL_36;
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
      goto LABEL_36;
    }

    goto LABEL_15;
  }

LABEL_10:
  *&v38 = v5;
  *&v31 = v5;
  v18 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_15:
  v29 = v18;
  v30 = v13;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 400), v16, &v39 + 1);
  if (*(a1 + 112) != *(a1 + 104) || *(a1 + 136) > 0)
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
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(v11, v21);
    }
  }

LABEL_29:
  v34[0] = v38;
  v34[1] = v39;
  v35 = v40;
  v36 = 0;
  v37 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v34);
  if (!*(a1 + 368) || *(a1 + 344) <= v6)
  {
    *(a1 + 336) = v5;
    *(a1 + 344) = v6;
    *(a1 + 352) = v7;
    *(a1 + 360) = v8;
    *(a1 + 368) = v9;
    *(a1 + 369) = v10;
  }

  if (*(a1 + 33) == 1)
  {
    v27 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(v11, v16);
    v28 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsForSource(v11, v27);
    if (!*(v28 + 240) || *(v28 + 27) <= v6)
    {
      v28[26] = v5;
      *(v28 + 27) = v6;
      *(v28 + 28) = v7;
      v28[29] = v8;
      *(v28 + 240) = v9;
      *(v28 + 241) = v10;
    }
  }

LABEL_36:
  if (v33 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 584, &v31);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 730) == 1)
  {
    *(a1 + 732) = 1;
  }

  else
  {
    *(a1 + 732) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 584), *(a1 + 592), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 592) - *(a1 + 584)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228FA6B9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 608), *(a1 + 40));
  *(v8 - 4) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  memset(v17, 0, sizeof(v17));
  *(a1 + 128) = 0;
  *(a1 + 136) = *&v17[4];
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = xmmword_229170D50;
  *(a1 + 184) = 0;
  *(a1 + 192) = xmmword_229170D60;
  *(a1 + 208) = 0;
  *(a1 + 216) = xmmword_229170D70;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_229170D80;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 272) = 5;
  *(a1 + 280) = 0;
  *(a1 + 288) = xmmword_229170DA0;
  v9 = *(a1 + 304);
  if (v9)
  {
    *(a1 + 312) = v9;
    operator delete(v9);
  }

  *(a1 + 368) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  if (*(a1 + 392))
  {
    v10 = *(a1 + 376);
    v11 = *(a1 + 384);
    *(a1 + 376) = a1 + 384;
    *(v11 + 16) = 0;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    if (v10[1])
    {
      v12 = v10[1];
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = v12[2];
      if (v13)
      {
        v14 = *v13;
        if (*v13 == v12)
        {
          *v13 = 0;
          while (1)
          {
            v16 = v13[1];
            if (!v16)
            {
              break;
            }

            do
            {
              v13 = v16;
              v16 = *v16;
            }

            while (v16);
          }
        }

        else
        {
          for (v13[1] = 0; v14; v14 = v13[1])
          {
            do
            {
              v13 = v14;
              v14 = *v14;
            }

            while (v14);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(v12);
        for (i = v13[2]; i; i = i[2])
        {
          v13 = i;
        }

        v12 = v13;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>>::destroy(v12);
  }

  objc_storeStrong(v8, *(a1 + 608));
  *(a1 + 592) = *(a1 + 584);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 732) == 1)
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

    *(a1 + 732) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 728))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228FA6EF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 728) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228FA7340(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4080798BF6);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 728) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::archive(uint64_t a1, uint64_t a2)
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
  HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::archive(&v3, (a2 + 8));
}

void sub_228FA7BBC()
{
  statistics::Statistics::operator=(*(v0 + 128), v4);
  statistics::Statistics::~Statistics(v4);
  v3 = v1->i32[0];
  *(v0 + 204) |= 0x100u;
  *(v0 + 136) = v3;
  statistics::Statistics::makeMostRecentDatum(v0);
  v4[0] = &unk_283BEB0A8;
  v8 = 127;
  v5 = vextq_s8(v1[13], v1[13], 8uLL);
  v4[1] = v1[14].i64[0];
  v4[2] = v1[14].i64[1];
  v6 = 0;
  v7 = 0;
  statistics::RawQuantitySample::operator=(*v2, v4);
  PB::Base::~Base(v4);
}

void HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::archive(uint64_t a1, HDStatisticsSleepStages *a2)
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
  HDStatisticsSleepStages::archive(a2);
}

void sub_228FA7CEC()
{
  statistics::Statistics::operator=(*(v0 + 128), v3);
  statistics::Statistics::~Statistics(v3);
  statistics::Statistics::makeAuxiliaryStatistics(v0);
  HDStatisticsTimeInterval::archive((v1 + 160), v3);
  statistics::Statistics::operator=(*v2, v3);
  statistics::Statistics::~Statistics(v3);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  *a1 = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = xmmword_229170D50;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_229170D60;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_229170D70;
  *(a1 + 104) = 0;
  *(a1 + 112) = xmmword_229170D80;
  *(a1 + 128) = 0;
  *(a1 + 136) = xmmword_229170D90;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 226) = 0u;
  v6 = a2[16];
  if (v6)
  {
    HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::unarchive(v14, v6);
    v7 = v14[7];
    v5[6] = v14[6];
    v5[7] = v7;
    v8 = v14[9];
    v5[8] = v14[8];
    v5[9] = v8;
    v9 = v14[3];
    v5[2] = v14[2];
    v5[3] = v9;
    v10 = v14[5];
    v5[4] = v14[4];
    v5[5] = v10;
    v11 = v14[1];
    *v5 = v14[0];
    v5[1] = v11;
    *(a1 + 168) = v15;
    *(a1 + 176) = v16;
    *(a1 + 192) = v17;
    result = v18;
    *(a1 + 200) = v18;
  }

  *a1 = a2[17];
  v12 = a2[14];
  if (v12)
  {
    result = *(v12 + 8);
    v13 = *(v12 + 16);
    *(a1 + 208) = vextq_s8(*(v12 + 24), *(v12 + 24), 8uLL);
    *(a1 + 224) = result;
    *(a1 + 232) = v13;
    *(a1 + 240) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::unarchive(uint64_t a1, const statistics::Statistics *a2)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = xmmword_229170D50;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_229170D60;
  *(a1 + 72) = 0;
  *(a1 + 80) = xmmword_229170D70;
  *(a1 + 96) = 0;
  *(a1 + 104) = xmmword_229170D80;
  *(a1 + 120) = 0;
  *(a1 + 128) = xmmword_229170D90;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    HDStatisticsSleepStages::unarchive(v4, a2);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    HDStatisticsTimeInterval::unarchive(v5, v7);
    *(a1 + 160) = v7[0];
    result = *&v7[4];
    v6 = v7[3];
    *(a1 + 168) = *&v7[1];
    *(a1 + 184) = v6;
    *(a1 + 192) = result;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF1448;
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF1448;
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

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 680) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 87, a2);
  v7 = a2;
  v4 = a1[87];
  v5 = a1[84];
  a1[84] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[84]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 240) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 680) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
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

  [v9 sortUsingComparator:&__block_literal_global_1130];
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v60);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v60))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
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

  if (*(a1 + 40) && *(a1 + 656) != *(a1 + 648))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
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

void sub_228FA8D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 682) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 680) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 680) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 680) forKey:@"needs_config"];
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
  HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::archive(v25, (a1 + 240));
}

void sub_228FA9564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v33 = a2;
  *(k + 680) = [v33 decodeBoolForKey:@"needs_config"];
  v3 = v33;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v38, 0, -1.79769313e308, 1.79769313e308);
  v39 = 0u;
  v40 = 0u;
  v81 = 0;
  PB::Reader::Reader(v80, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v81]);
  v73 = &unk_283BF1A08;
  v74 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v79 = 0;
  statistics::StatisticsEngine::readFrom(&v73, v80);
  v37 = v75;
  if (v74)
  {
    v44 = 0;
    memset(v47, 0, sizeof(v47));
    memset(v48, 0, sizeof(v48));
    v49 = xmmword_229170D50;
    *&v50[8] = xmmword_229170D60;
    *v50 = 0;
    *&v50[24] = 0;
    v51 = xmmword_229170D70;
    *&v52[8] = xmmword_229170D80;
    *v52 = 0;
    *&v52[24] = 0;
    v53 = xmmword_229170D90;
    *&v54 = 0;
    *(&v54 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    memset(v55, 0, sizeof(v55));
    v58[0] = 0;
    v58[1] = 0;
    v56 = 0;
    v57 = v58;
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
    v41 = vextq_s8(*(v74 + 8), *(v74 + 8), 8uLL);
    v4 = *(v74 + 72);
    v42 = *(v74 + 64);
    LOWORD(v43) = *(v74 + 185);
    v45 = vextq_s8(*(v74 + 24), *(v74 + 24), 8uLL);
    v46 = v4;
    v5 = *(v74 + 80);
    v6 = *(v74 + 88);
    v35 = v3;
    for (i = v74; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v84) = 1;
      BYTE8(v84) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v82 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v83 = v8;
      *(&v83 + 1) = v9;
      BYTE9(v84) = *(v7 + 41);
      BYTE10(v84) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v48, v82.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::unarchive(&v82, v10);
      *v52 = v88;
      *&v52[16] = v89;
      v53 = v90;
      v54 = v91;
      v49 = v84;
      *v50 = v85;
      *&v50[16] = v86;
      v51 = v87;
      *&v48[24] = v82;
      *&v48[40] = v83;
      v55[0] = v92;
      if (v55[1])
      {
        v55[2] = v55[1];
        operator delete(v55[1]);
      }

      *&v55[1] = v93;
      v55[3] = v94;
      v94 = 0;
      v93 = 0uLL;
      v56 = v95;
    }

    v34 = k;
    v12 = i[17];
    for (j = i[18]; v12 != j; ++v12)
    {
      v13 = *v12;
      HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>::unarchive(&v82, *v12);
      v14 = *(v13 + 18);
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

      v18 = v86;
      *(v16 + 15) = v87;
      *(v16 + 13) = v18;
      v19 = v84;
      *(v16 + 11) = v85;
      *(v16 + 9) = v19;
      v20 = v90;
      *(v16 + 23) = v91;
      *(v16 + 21) = v20;
      v21 = v88;
      *(v16 + 19) = v89;
      *(v16 + 17) = v21;
      v22 = v83;
      *(v16 + 5) = v82;
      *(v16 + 7) = v22;
      v23 = v16[26];
      v16[25] = v92;
      if (v23)
      {
        v16[27] = v23;
        operator delete(v23);
        v16[26] = 0;
        v16[27] = 0;
        v16[28] = 0;
      }

      *(v16 + 13) = v93;
      v16[28] = v94;
      v94 = 0;
      v93 = 0uLL;
      v16[29] = v95;
    }

    v3 = v35;
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

      HKIntervalMask<double>::_insertInterval(v47, v28, v26);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=(v38, &v41);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v41);
  }

  v29 = v76;
  for (m = v77; v29 != m; v29 += 8)
  {
    v31 = *(*v29 + 8);
    v32 = *(*v29 + 16);
    v41 = vextq_s8(*(*v29 + 24), *(*v29 + 24), 8uLL);
    v42 = v31;
    v43 = v32;
    LOWORD(v44) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v39, v41.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v73);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=((k + 112), &v37);
  if (v39)
  {
    *(&v39 + 1) = v39;
    operator delete(v39);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v38);
}

void sub_228FA9B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x490]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x468]);
  v29 = STACK[0x450];
  if (STACK[0x450])
  {
    STACK[0x458] = v29;
    operator delete(v29);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a11);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(STACK[0x418]);
  v30 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v30;
    operator delete(v30);
  }

  v31 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x338] = v31;
    operator delete(v31);
  }

  objc_destroyWeak(&STACK[0x328]);
  v32 = STACK[0x310];
  if (STACK[0x310])
  {
    STACK[0x318] = v32;
    operator delete(v32);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x4E0]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(&a28);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = xmmword_229170D50;
  *(a1 + 168) = 0;
  *(a1 + 176) = xmmword_229170D60;
  *(a1 + 192) = 0;
  *(a1 + 200) = xmmword_229170D70;
  *(a1 + 216) = 0;
  *(a1 + 224) = xmmword_229170D80;
  *(a1 + 240) = 0;
  *(a1 + 248) = xmmword_229170D90;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 312) = 0;
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

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    *(a1 + 544) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
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
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 328));
  v3 = *(a1 + 288);
  if (v3)
  {
    *(a1 + 296) = v3;
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

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    v2 = a1[26];
    if (v2)
    {
      a1[27] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 680) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 67), (a2 + 536));
  v4 = *(a2 + 560);
  *(a2 + 560) = 0;
  v5 = a1[70];
  a1[70] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v10;
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  v13 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v13;
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  v14 = *(a2 + 216);
  v15 = *(a2 + 232);
  v16 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = v16;
  *(a1 + 232) = v15;
  *(a1 + 216) = v14;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 288), *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 4);
  *(a1 + 312) = *(a2 + 312);
  v17 = (a1 + 328);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = a1 + 328;
  v18 = *(a2 + 320);
  if (v18 != (a2 + 328))
  {
    v19 = 0;
    v20 = (a1 + 328);
    while (1)
    {
      v21 = (a1 + 328);
      if (v20 == v17)
      {
        goto LABEL_12;
      }

      v22 = v19;
      v23 = (a1 + 328);
      if (v19)
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

      v25 = v18[4];
      if (v21[4] < v25)
      {
LABEL_12:
        if (v19)
        {
          v26 = v21 + 1;
        }

        else
        {
          v26 = (a1 + 328);
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
            if (v28 <= v25)
            {
              break;
            }

            v19 = *v27;
            if (!*v27)
            {
              goto LABEL_23;
            }
          }

          if (v28 >= v25)
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
          v24 = *v30 == v18;
          v18 = v30;
        }

        while (!v24);
      }

      if (v30 == (a2 + 328))
      {
        break;
      }

      v19 = *v17;
      v20 = *(a1 + 320);
      v18 = v30;
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

void sub_228FAA5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
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
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(*v12);
  v15 = *(v10 + 288);
  if (v15)
  {
    *(v10 + 296) = v15;
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

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
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
  *(a1 + 280) = *(a2 + 280);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 288, (a2 + 288));
  *(a1 + 312) = *(a2 + 312);
  v17 = a1 + 328;
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 328));
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
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
      v22 = v7;
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 384);
      v17 = *(a2 + 392);
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
      v7 = v22;
      [v13 _setSources:v21];
    }
  }

  v23[0] = &unk_283BF1638;
  v23[3] = v23;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
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

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v94 = a1 + 136;
    v90 = (a1 + 328);
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
        goto LABEL_113;
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

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v22 = __clz(v8);
      if (WeakRetained)
      {
        *&v99.var0 = a1;
        v23 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, &v99, v24, 1);
      }

      else
      {
        v35 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v35;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, v24, 1);
      if (*(a1 + 25) == 1)
      {
        v93 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v93 = 0;
      }

      v92 = v6;
      if (v6 != v7)
      {
        v95 = 0;
        v36 = 0;
        for (i = v6; i != v7; i += 48)
        {
          v38 = *(i + 16);
          *&v98.var0 = *i;
          *&v98.var2 = v38;
          *&v98.var4 = *(i + 32);
          var0 = v98.var0;
          v40 = *&v38;
          if (*&v38 - v98.var1 - (v17 - v98.var1) >= 0.01)
          {
            if (v17 - v98.var1 >= 0.01)
            {
              var3 = v98.var3;
              var4 = v98.var4;
              v98.var2 = v17;
              if (v98.var4)
              {
                var5 = v98.var5;
                v43 = v17;
LABEL_54:
                HDRawQuantitySample::applyMask(&v98, (a1 + 64));
                v44 = *(i + 42);
                v45 = *(i + 41);
                v96 = *(i + 40);
                if (v98.var4)
                {
                  if (v36)
                  {
                    v46 = v98.var3;
                    if (v95 == v98.var3 || *(a1 + 24) == 1)
                    {
                      if ((v44 & 1) == 0)
                      {
                        ++*(a1 + 120);
                      }

                      v47 = v94 + 24 * v98.var0;
                      v48 = *(v47 + 8);
                      v49 = *(v47 + 16);
                      v50 = *(a1 + 128);
                      if (v50 < v49)
                      {
                        v49 = v50 + 1;
                        *(a1 + 128) = v50 + 1;
                      }

                      *(v47 + 8) = v48 + v98.var2 - v98.var1;
                      *(v47 + 16) = v49;
                      HDStatisticsTimeInterval::addSample((a1 + 280), &v98, v44 ^ 1);
                      LOBYTE(v44) = 1;
                    }
                  }

                  else
                  {
                    if ((v44 & 1) == 0)
                    {
                      ++*(a1 + 120);
                    }

                    v51 = v94 + 24 * v98.var0;
                    v52 = *(v51 + 8);
                    v53 = *(v51 + 16);
                    v54 = *(a1 + 128);
                    if (v54 < v53)
                    {
                      v53 = v54 + 1;
                      *(a1 + 128) = v54 + 1;
                    }

                    *(v51 + 8) = v52 + v98.var2 - v98.var1;
                    *(v51 + 16) = v53;
                    HDStatisticsTimeInterval::addSample((a1 + 280), &v98, v44 ^ 1);
                    LOBYTE(v44) = 1;
                    v46 = v98.var3;
                    v95 = v98.var3;
                  }

                  if (*(a1 + 25) == 1)
                  {
                    v55 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, v46);
                    if (v55)
                    {
                      v56 = [v93 objectForKeyedSubscript:v55];
                      v91 = v56;
                      if (v56)
                      {
                        if ([v56 longLongValue] == v46 || *(a1 + 24) == 1)
                        {
                          v57 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v46);
                          v58 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v57);
                          goto LABEL_76;
                        }
                      }

                      else
                      {
                        v59 = [MEMORY[0x277CCABB0] numberWithLongLong:v46];
                        [v93 setObject:v59 forKeyedSubscript:v55];

                        v60 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v46);
                        v58 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v60);
LABEL_76:
                        if ((v45 & 1) == 0)
                        {
                          *v58 = (*v58 + 1);
                        }

                        v61 = &v58[3 * v98.var0];
                        v62 = *(v61 + 3);
                        v63 = v61[4];
                        v64 = v58[1];
                        if (v64 < v63)
                        {
                          v63 = (v64 + 1);
                          v58[1] = (v64 + 1);
                        }

                        *(v61 + 3) = v62 + v98.var2 - v98.var1;
                        v61[4] = v63;
                        HDStatisticsTimeInterval::addSample(v58 + 20, &v98, v45 ^ 1);
                        LOBYTE(v45) = 1;
                      }
                    }
                  }

                  v36 = 1;
                }

                if (var4)
                {
                  v99.var0 = var0;
                  v99.var1 = v43;
                  v99.var2 = v40;
                  v99.var3 = var3;
                  v99.var4 = var4;
                  v99.var5 = var5;
                  LOBYTE(v100) = v96;
                  BYTE1(v100) = v45;
                  BYTE2(v100) = v44;
                  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v99);
                }

                continue;
              }
            }

            else
            {
              v98.var4 = 0;
            }
          }

          else if (v98.var4)
          {
            var5 = 0;
            var4 = 0;
            var3 = 0;
            v40 = 0.0;
            v43 = 0.0;
            goto LABEL_54;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 312) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 288), v17) + *(a1 + 312);
      v65 = *(a1 + 320);
      if (v65 != v90)
      {
        do
        {
          *(v65 + 29) = HKIntervalMask<double>::removeIntervalsBefore(v65 + 26, v17) + *(v65 + 29);
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

        while (v67 != v90);
      }

      *(a1 + 56) = v17;

      if (v92)
      {
        operator delete(v92);
      }

LABEL_114:
      v87 = *(a1 + 56);
      if (v87 == v5)
      {
        v88 = [MEMORY[0x277CCA890] currentHandler];
        v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsSleepStages, HDStatisticsTimeInterval>]"}];
        [v88 handleFailureInFunction:v89 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v87 = *(a1 + 56);
      }

      v5 = v87;
      if (v87 >= a2)
      {
        return;
      }
    }

    v25 = *(v6 + 8);
    v26 = *(v6 + 16);
    v27 = *(v6 + 24);
    v28 = *(v6 + 32);
    v29 = *(v6 + 33);
    if (a2 - v25 >= 0.01)
    {
      if (v26 - v25 - (a2 - v25) < 0.01)
      {
        v33 = 0;
        v34 = 0;
        v32 = 0.0;
        v31 = *(v6 + 16);
        v30 = *(v6 + 32);
        v26 = 0.0;
        v28 = 0;
LABEL_98:
        v69 = *(v6 + 42);
        v70 = *(v6 + 41);
        v71 = *(v6 + 40);
        v72 = *v6;
        v99.var1 = *(v6 + 8);
        v99.var2 = v31;
        v99.var3 = v27;
        v99.var4 = v30;
        v99.var5 = v29;
        *(&v99.var5 + 1) = *(v6 + 34);
        *(&v99.var5 + 5) = *(v6 + 38);
        *(&v100 + 1) = v32;
        *&v101 = v26;
        *(&v101 + 1) = v33;
        LOBYTE(v102) = v28;
        HIBYTE(v102) = v34;
        v99.var0 = v72;
        *&v100 = v72;
        HDRawQuantitySample::applyMask(&v99, (a1 + 64));
        if (v99.var4)
        {
          if ((v69 & 1) == 0)
          {
            ++*(a1 + 120);
          }

          v73 = v99.var0;
          v74 = v94 + 24 * v99.var0;
          v75 = *(v74 + 8);
          v76 = *(v74 + 16);
          v77 = *(a1 + 128);
          if (v77 < v76)
          {
            v76 = v77 + 1;
            *(a1 + 128) = v77 + 1;
          }

          v78 = v99.var2 - v99.var1;
          *(v74 + 8) = v75 + v99.var2 - v99.var1;
          *(v74 + 16) = v76;
          HDStatisticsTimeInterval::addSample((a1 + 280), &v99, v69 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v79 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v99.var3);
            v80 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v79);
            if ((v70 & 1) == 0)
            {
              *v80 = (*v80 + 1);
            }

            v81 = &v80[3 * v73];
            v82 = *(v81 + 3);
            v83 = v81[4];
            v84 = v80[1];
            if (v84 < v83)
            {
              v83 = (v84 + 1);
              v80[1] = (v84 + 1);
            }

            *(v81 + 3) = v78 + v82;
            v81[4] = v83;
            HDStatisticsTimeInterval::addSample(v80 + 20, &v99, v70 ^ 1);
          }

          v71 = 1;
          LOBYTE(v70) = 1;
          LOBYTE(v69) = 1;
        }

        if (v102 == 1)
        {
          *&v98.var4 = v102;
          v85 = v101;
          v86 = *(a1 + 96);
          *v86 = v100;
          *(v86 + 16) = v85;
          *(v86 + 32) = *&v98.var4;
          *(v86 + 40) = v71;
          *(v86 + 41) = v70;
          *(v86 + 42) = v69;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_113:
        *(a1 + 56) = a2;
        goto LABEL_114;
      }

      v31 = a2;
      v30 = *(v6 + 32);
      v32 = a2;
    }

    else
    {
      v30 = 0;
      v31 = *(v6 + 16);
      v32 = *(v6 + 8);
    }

    v33 = *(v6 + 24);
    v34 = *(v6 + 33);
    goto LABEL_98;
  }
}

uint64_t **HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
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
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 320), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 320), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
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
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
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

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
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

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  v2 = *(a2 + 320);
  v29 = (a2 + 328);
  if (v2 == (a2 + 328))
  {
    return;
  }

  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
    v19 = *(v2 + 5);
    *(v12 + 5) = *(v2 + 7);
    *(v12 + 3) = v19;
    v20 = *(v2 + 9);
    v21 = *(v2 + 11);
    v22 = *(v2 + 13);
    *(v12 + 13) = *(v2 + 15);
    *(v12 + 11) = v22;
    *(v12 + 9) = v21;
    *(v12 + 7) = v20;
    v23 = *(v2 + 17);
    v24 = *(v2 + 19);
    v25 = *(v2 + 21);
    *(v12 + 21) = *(v2 + 23);
    *(v12 + 19) = v25;
    *(v12 + 17) = v24;
    *(v12 + 15) = v23;
    v12[23] = v2[25];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 24, v2[26], v2[27], (v2[27] - v2[26]) >> 4);
    }

    v12[27] = v2[29];

LABEL_24:
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

void sub_228FAC8E8(_Unwind_Exception *a1)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100]((v3 - 112));

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,0>(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1518;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF1518;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 160;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF15A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF15A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsSleepStages,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsSleepStages const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 680) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 680))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t a1, double a2)
{
  if (*(a1 + 128) <= a2)
  {
    if (*(a1 + 656) != *(a1 + 648))
    {
      [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
    }

    v5 = 0;
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(uint64_t a1, double *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 3);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = a1 + 8;
  v12 = *(a1 + 8);
  *(&v32 + 1) = 0;
  v33 = 0uLL;
  v34 = 0;
  if (v12 - v6 >= 0.01)
  {
    if (v7 - v6 - (v12 - v6) < 0.01)
    {
      v10 = 0;
      v9 = 0;
      v8 = 0;
      v7 = 0.0;
      v12 = 0.0;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = v6;
  }

  *(&v32 + 1) = v12;
  *&v33 = v7;
  *(&v33 + 1) = v8;
  LOBYTE(v34) = v9;
  HIBYTE(v34) = v10;
LABEL_6:
  *&v32 = v5;
  v26 = 0uLL;
  *(&v25 + 1) = 0;
  v27 = 0;
  v13 = *(a1 + 16);
  v14 = v13 - v12;
  v15 = v7 - v12 - (v13 - v12);
  if (!*(a1 + 36))
  {
    if (v15 < 0.01)
    {
      goto LABEL_11;
    }

    if (v14 >= 0.01)
    {
      goto LABEL_15;
    }

LABEL_14:
    *(&v25 + 1) = *(&v32 + 1);
    v26 = v33;
    v27 = v34;
    *&v25 = v5;
    goto LABEL_32;
  }

  if (v14 < 0.01)
  {
    goto LABEL_14;
  }

  if (v15 >= 0.01)
  {
LABEL_15:
    *(&v25 + 1) = *(a1 + 16);
    *&v26 = v7;
    *(&v26 + 1) = v8;
    LOBYTE(v27) = v9;
    HIBYTE(v27) = v10;
    *&v33 = v13;
    *&v32 = v5;
    *&v25 = v5;
    if ((v9 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_16;
  }

LABEL_11:
  *&v32 = v5;
  *&v25 = v5;
  v13 = v7;
  if ((v9 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v23 = v13;
  v24 = v12;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 352), v8, &v33 + 1);
  if (*(a1 + 112) != *(a1 + 104) || *(a1 + 128) > 0)
  {
    v16 = v24;
    if (v24 < *(a1 + 48))
    {
      v17 = *(a1 + 8);
      if (v24 >= v17)
      {
        v17 = v24;
      }

      *(a1 + 48) = v17;
    }

    if (v23 > *(a1 + 56))
    {
      v18 = *(a1 + 16);
      if (v18 >= v23)
      {
        v18 = v23;
      }

      *(a1 + 56) = v18;
    }

    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v19.f64[1] = *(a1 + 16);
  v16 = v24;
  v19.f64[0] = v24;
  v20.f64[0] = *(a1 + 8);
  v20.f64[1] = v23;
  v21 = vcgtq_f64(v20, v19);
  v20.f64[0] = v24;
  *(a1 + 48) = vbslq_s8(v21, *(a1 + 8), v20);
  if (a3)
  {
LABEL_27:
    if (v16 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(v11, v16);
    }
  }

LABEL_30:
  v28[0] = v32;
  v28[1] = v33;
  v29 = v34;
  v30 = 0;
  v31 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v28);
  if (*(a1 + 33) == 1)
  {
    v22 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(v11, v8);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsForSource(v11, v22);
  }

LABEL_32:
  if (v27 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 536, &v25);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 682) == 1)
  {
    *(a1 + 684) = 1;
  }

  else
  {
    *(a1 + 684) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 536), *(a1 + 544), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 544) - *(a1 + 536)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228FAD94C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 560), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  v9 = 0uLL;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = xmmword_229170D50;
  *(v8 + 136) = 0;
  *(v8 + 144) = xmmword_229170D60;
  *(v8 + 160) = 0;
  *(v8 + 168) = xmmword_229170D70;
  *(v8 + 184) = 0;
  *(v8 + 192) = xmmword_229170D80;
  *(v8 + 208) = 0;
  *(v8 + 216) = xmmword_229170D90;
  *(v8 + 232) = 0;
  *(v8 + 240) = 0x7FFFFFFFFFFFFFFFLL;
  *(v8 + 248) = 0;
  v10 = *(v8 + 256);
  if (v10)
  {
    *(a1 + 304) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(v8 + 256) = v9;
  *(v8 + 272) = v9;
  if (*(a1 + 344))
  {
    v11 = *(a1 + 328);
    v12 = *(a1 + 336);
    *(a1 + 328) = a1 + 336;
    *(v12 + 16) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    if (v11[1])
    {
      v13 = v11[1];
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = v13[2];
      if (v14)
      {
        v15 = *v14;
        if (*v14 == v13)
        {
          *v14 = 0;
          while (1)
          {
            v17 = v14[1];
            if (!v17)
            {
              break;
            }

            do
            {
              v14 = v17;
              v17 = *v17;
            }

            while (v17);
          }
        }

        else
        {
          for (v14[1] = 0; v15; v15 = v14[1])
          {
            do
            {
              v14 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 560));
  *(a1 + 544) = *(a1 + 536);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 684) == 1)
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

    *(a1 + 684) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228FADBF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 680) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228FAE044(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40A18ECEBDLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 680) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsSleepStages24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsSleepStages,HDStatisticsTimeInterval>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF16E8;
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 1;
  *(a1 + 690) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF16E8;
  v2 = *(a1 + 720);
  if (v2)
  {
    *(a1 + 728) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 656);
  if (v3)
  {
    *(a1 + 664) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 688) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 696) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 88, a2);
  v7 = a2;
  v4 = a1[88];
  v5 = a1[85];
  a1[85] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[85]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 688))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(v4, v5);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

void sub_228FAED0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 690) == 1)
    {
      if (*(a1 + 689))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 688))
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

      if (*(a1 + 691) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 720, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 690) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 690) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 689))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 712);
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

  [v9 sortUsingComparator:&__block_literal_global_1139];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 712);
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
  v27 = *(a1 + 712);
  *(a1 + 712) = 0;

  *(a1 + 689) = 0;
  if (v8)
  {
    v28 = *(a1 + 720);
    *(a1 + 736) = 0;
    *(a1 + 728) = 0;
    *(a1 + 720) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v68 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 720);
      v39 = *(a1 + 728);
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
            v39 = *(a1 + 728);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 728) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 720);
  v29 = *(a1 + 728);
  *(a1 + 736) = 0;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveInvalidateInterval(a1, v49, v67);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveInvalidateInterval(a1, 0, v67))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 664) != *(a1 + 656))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 690) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 692) == 1)
    {
      *(a1 + 692) = 0;
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 690) = 0;
LABEL_81:

  return v7;
}

void sub_228FAF5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 690) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 690))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 690) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 712);
    *(a1 + 712) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 689) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 689) & 1) == 0)
  {
    v8 = *(a1 + 712);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 712);
      *(a1 + 712) = v9;

      v8 = *(a1 + 712);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 688) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 688) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 688) forKey:@"needs_config"];
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
  HDStatisticsRelative<HDStatisticsSleepStages>::archive(v25, a1 + 240);
}

void sub_228FAFE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v37 = a2;
  *(a1 + 688) = [v37 decodeBoolForKey:@"needs_config"];
  v3 = v37;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(&v40.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v42 = 0u;
  v81 = 0;
  PB::Reader::Reader(v80, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v81]);
  v73 = &unk_283BF1A08;
  v74 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v79 = 0;
  statistics::StatisticsEngine::readFrom(&v73, v80);
  v40.n128_u64[0] = v75;
  if (v74)
  {
    v38 = v3;
    v46 = 0;
    memset(v49, 0, sizeof(v49));
    memset(v50, 0, sizeof(v50));
    *v51 = 0;
    memset(&v51[8], 0, 32);
    *&v51[40] = xmmword_229170D50;
    v52 = xmmword_229170D60;
    *&v51[56] = 0;
    *v53 = 0;
    *&v53[8] = xmmword_229170D70;
    v54 = xmmword_229170D80;
    *&v53[24] = 0;
    *v55 = 0;
    *&v55[8] = xmmword_229170D90;
    *&v55[24] = 0;
    *v56 = 0x7FFFFFFFFFFFFFFFLL;
    memset(&v56[8], 0, 34);
    v58[1] = 0;
    v58[0] = 0;
    v57 = v58;
    v60 = 0u;
    v59 = 0u;
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
    v43 = vextq_s8(*(v74 + 8), *(v74 + 8), 8uLL);
    v4 = *(v74 + 72);
    v44 = *(v74 + 64);
    LOWORD(v45) = *(v74 + 185);
    v47 = vextq_s8(*(v74 + 24), *(v74 + 24), 8uLL);
    v48 = v4;
    v5 = *(v74 + 80);
    v6 = *(v74 + 88);
    for (i = v74; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v84) = 1;
      BYTE8(v84) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v82 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v83 = v8;
      *(&v83 + 1) = v9;
      BYTE9(v84) = *(v7 + 41);
      BYTE10(v84) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v50, v82.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsRelative<HDStatisticsSleepStages>::unarchive(&v82, v10);
      *v56 = v92;
      *&v56[16] = v93;
      *&v56[32] = v94;
      *&v53[16] = v88;
      v54 = v89;
      *v55 = v90;
      *&v55[16] = v91;
      *&v51[32] = v84;
      *&v51[48] = v85;
      v52 = v86;
      *v53 = v87;
      *v51 = v82;
      *&v51[16] = v83;
    }

    v11 = i[17];
    for (j = i[18]; v11 != j; *(v16 + 5) = v27)
    {
      v13 = *v11;
      HDStatisticsRelative<HDStatisticsSleepStages>::unarchive(&v82, *v11);
      v14 = *(v13 + 18);
      v15 = v58[0];
      if (!v58[0])
      {
LABEL_13:
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
            goto LABEL_13;
          }
        }

        if (v17 >= v14)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_13;
        }
      }

      v18 = v94;
      v19 = v93;
      v20 = v92;
      v21 = v90;
      *(v16 + 23) = v91;
      *(v16 + 25) = v20;
      *(v16 + 27) = v19;
      *(v16 + 29) = v18;
      v22 = v89;
      v23 = v88;
      v24 = v86;
      *(v16 + 15) = v87;
      *(v16 + 17) = v23;
      *(v16 + 19) = v22;
      *(v16 + 21) = v21;
      v25 = v85;
      v26 = v84;
      v27 = v82;
      *(v16 + 7) = v83;
      *(v16 + 9) = v26;
      *(v16 + 11) = v25;
      *(v16 + 13) = v24;
      ++v11;
    }

    v28 = i[5];
    for (k = i[6]; v28 != k; v28 += 8)
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

      HKIntervalMask<double>::_insertInterval(v49, v32, v30);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=(&v40.n128_i64[1], &v43);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(&v43);
    v3 = v38;
  }

  v33 = v76;
  for (m = v77; v33 != m; v33 += 8)
  {
    v35 = *(*v33 + 8);
    v36 = *(*v33 + 16);
    v43 = vextq_s8(*(*v33 + 24), *(*v33 + 24), 8uLL);
    v44 = v35;
    v45 = v36;
    LOWORD(v46) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v43.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v73);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=((a1 + 112), &v40);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(&v40.n128_i64[1]);
}

void sub_228FB0428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v24 + 496);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a10);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v24 + 416);
  v26 = STACK[0x448];
  if (STACK[0x448])
  {
    STACK[0x450] = v26;
    operator delete(v26);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v24 + 352);
  std::__tree<long>::destroy(STACK[0x410]);
  v27 = STACK[0x320];
  if (STACK[0x320])
  {
    STACK[0x328] = v27;
    operator delete(v27);
  }

  objc_destroyWeak((v24 + 88));
  v28 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v28;
    operator delete(v28);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x4E0]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1065353216;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 1065353216;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 544);
  if (v2)
  {
    *(a1 + 552) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 496);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 456);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 416);
  v2 = *(a1 + 392);
  if (v2)
  {
    *(a1 + 400) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 352);
  std::__tree<long>::destroy(*(a1 + 336));
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  objc_storeStrong(&v26, *(a1 + 704));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(v17);
  *(a1 + 688) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 68), a2 + 34);
  v4 = a2[35].n128_u64[1];
  a2[35].n128_u64[1] = 0;
  v5 = a1[71];
  a1[71] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  v15 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v15;
  *(a1 + 216) = v14;
  *(a1 + 200) = v13;
  v16 = *(a2 + 264);
  v17 = *(a2 + 280);
  v18 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v18;
  *(a1 + 264) = v16;
  *(a1 + 280) = v17;
  v19 = (a1 + 336);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = a1 + 336;
  v20 = *(a2 + 328);
  if (v20 != (a2 + 336))
  {
    v21 = 0;
    v22 = (a1 + 336);
    while (1)
    {
      v23 = v20[4];
      v24 = (a1 + 336);
      if (v22 == v19)
      {
        goto LABEL_12;
      }

      v25 = v21;
      v26 = (a1 + 336);
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
          v28 = (a1 + 336);
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

      if (v32 == (a2 + 336))
      {
        break;
      }

      v21 = *v19;
      v22 = *(a1 + 328);
      v20 = v32;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 352, a2 + 352);
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 392), *(a2 + 392), *(a2 + 400), (*(a2 + 400) - *(a2 + 392)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 416, a2 + 416);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 456, a2 + 456);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 496, a2 + 496);
  return a1;
}

void sub_228FB0D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 456);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 416);
  v14 = *(v10 + 392);
  if (v14)
  {
    *(v10 + 400) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 352);
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

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::operator=(uint64_t a1, uint64_t a2)
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
  v16 = *(a2 + 312);
  v18 = *(a2 + 264);
  v17 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v16;
  *(a1 + 264) = v18;
  *(a1 + 280) = v17;
  *(a1 + 120) = *(a2 + 120);
  v19 = a1 + 336;
  std::__tree<long>::destroy(*(a1 + 336));
  *(a1 + 328) = *(a2 + 328);
  v20 = *(a2 + 336);
  v21 = *(a2 + 344);
  *(a1 + 336) = v20;
  *(a1 + 344) = v21;
  if (v21)
  {
    *(v20 + 16) = v19;
    *(a2 + 328) = a2 + 336;
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
  }

  else
  {
    *(a1 + 328) = v19;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 352, (a2 + 352));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 392, (a2 + 392));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 416, (a2 + 416));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 456, (a2 + 456));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 496, (a2 + 496));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v111 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v92 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v94 = a2;
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
      WeakRetained = [v10 underlyingSampleType];

      v9 = WeakRetained;
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v92 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      WeakRetained = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = *(a2 + 392);
      v13 = *(a2 + 400);
      while (v12 != v13)
      {
        v14 = *v12;
        v15 = objc_loadWeakRetained((a1 + 48));
        v16 = [v15 sourceForSourceID:v14];

        if (v16)
        {
          if (([WeakRetained containsObject:v16] & 1) == 0)
          {
            [WeakRetained addObject:v16];
          }
        }

        ++v12;
      }

      v17 = objc_msgSend_copy(WeakRetained);
      [v11 _setSources:v17];
    }
  }

  v109[0] = &unk_283BF17B8;
  v110 = v109;
  v93 = v11;
  v18 = *(v94 + 264);
  v19 = *(v94 + 296);
  v20 = *(v94 + 312);
  v106 = *(v94 + 280);
  v107 = v19;
  v108 = v20;
  v21 = *(v94 + 200);
  v22 = *(v94 + 232);
  v102 = *(v94 + 216);
  v103 = v22;
  v104 = *(v94 + 248);
  v105 = v18;
  v23 = *(v94 + 136);
  v24 = *(v94 + 168);
  v98 = *(v94 + 152);
  v99 = v24;
  v100 = *(v94 + 184);
  v101 = v21;
  *__p = *(v94 + 120);
  v97 = v23;
  if (!v110)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v25 = ((*(*v110 + 48))(v110, __p) + 32);
  v26 = 0.0;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v28 = 144;
  v29 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v30 = *(v25 - 1);
    if (v30 > 2.22507386e-308 && v30 >= v26)
    {
      if (v30 <= v26)
      {
        if (*v25 < v27)
        {
          v29 = *(v25 - 2);
          v26 = *(v25 - 1);
          v27 = *v25;
        }
      }

      else
      {
        v29 = *(v25 - 2);
        v27 = *v25;
        v26 = *(v25 - 1);
      }
    }

    v25 += 3;
    v28 -= 24;
  }

  while (v28);
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{2.22507386e-308, v26}];
    [v93 setCategoryValue:v32];
  }

  v33 = *(v94 + 296);
  v106 = *(v94 + 280);
  v107 = v33;
  v108 = *(v94 + 312);
  v34 = *(v94 + 232);
  v102 = *(v94 + 216);
  v103 = v34;
  v35 = *(v94 + 264);
  v104 = *(v94 + 248);
  v105 = v35;
  v36 = *(v94 + 168);
  v98 = *(v94 + 152);
  v99 = v36;
  v37 = *(v94 + 200);
  v100 = *(v94 + 184);
  v101 = v37;
  v38 = *(v94 + 136);
  *__p = *(v94 + 120);
  v97 = v38;
  if (!v110)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  [v93 setDataCount:{*(*(*v110 + 48))(v110, __p)}];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_87;
  }

  v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = *(v94 + 392);
  v40 = *(v94 + 400);
  while (v39 != v40)
  {
    v41 = *v39;
    v42 = objc_loadWeakRetained((a1 + 48));
    v43 = [v42 sourceForSourceID:v41];

    if (v43 && ([v91 containsObject:v43] & 1) == 0)
    {
      [v91 addObject:v43];
    }

    ++v39;
  }

  v9 = objc_msgSend_copy(v91);
  [v93 _setSources:v9];

  v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v97 = 0u;
  LODWORD(v98) = 1065353216;
  v44 = *(v94 + 328);
  if (v44 == (v94 + 336))
  {
    goto LABEL_86;
  }

  do
  {
    v45 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_bundleIdentifierForSourceID(v94, v44[4]);
    v46 = v45;
    if (!v45)
    {
      goto LABEL_62;
    }

    v47 = [v45 hash];
    v48 = v47;
    v49 = __p[1];
    if (!__p[1])
    {
      goto LABEL_60;
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
LABEL_60:
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
        goto LABEL_60;
      }

LABEL_59:
      v54 = *v54;
      if (!v54)
      {
        goto LABEL_60;
      }
    }

    v56 = v54[2];
    v57 = v46;
    v9 = v57;
    if (v56 != v57)
    {
      WeakRetained = [v56 isEqualToString:v57];

      if (WeakRetained)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

LABEL_61:
    *(v54 + 3) = *(v44 + 5);
    v58 = *(v44 + 7);
    v59 = *(v44 + 9);
    v60 = *(v44 + 11);
    *(v54 + 11) = *(v44 + 13);
    *(v54 + 9) = v60;
    *(v54 + 7) = v59;
    *(v54 + 5) = v58;
    v61 = *(v44 + 15);
    v62 = *(v44 + 17);
    v63 = *(v44 + 19);
    *(v54 + 19) = *(v44 + 21);
    *(v54 + 17) = v63;
    *(v54 + 15) = v62;
    *(v54 + 13) = v61;
    v64 = *(v44 + 23);
    v65 = *(v44 + 25);
    v66 = *(v44 + 27);
    *(v54 + 27) = *(v44 + 29);
    *(v54 + 25) = v66;
    *(v54 + 23) = v65;
    *(v54 + 21) = v64;

LABEL_62:
    v67 = v44[1];
    if (v67)
    {
      do
      {
        v68 = v67;
        v67 = *v67;
      }

      while (v67);
    }

    else
    {
      do
      {
        v68 = v44[2];
        v69 = *v68 == v44;
        v44 = v68;
      }

      while (!v69);
    }

    v44 = v68;
  }

  while (v68 != (v94 + 336));
  for (i = v97; i; i = *i)
  {
    v71 = i[2];
    if (!v110)
    {
      goto LABEL_105;
    }

    v72 = ((*(*v110 + 48))(v110, i + 3) + 32);
    v73 = 0.0;
    v74 = 0x7FFFFFFFFFFFFFFFLL;
    v75 = 144;
    v76 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v77 = *(v72 - 1);
      if (v77 > 2.22507386e-308 && v77 >= v73)
      {
        if (v77 <= v73)
        {
          if (*v72 < v74)
          {
            v76 = *(v72 - 2);
            v73 = *(v72 - 1);
            v74 = *v72;
          }
        }

        else
        {
          v76 = *(v72 - 2);
          v74 = *v72;
          v73 = *(v72 - 1);
        }
      }

      v72 += 3;
      v75 -= 24;
    }

    while (v75);
    if (v76 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v79 = [MEMORY[0x277CCABB0] numberWithInteger:v73];
      [v88 setObject:v79 forKeyedSubscript:v71];
    }

    if (!v110)
    {
LABEL_105:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{*(*(*v110 + 48))(v110, i + 3)}];
    [v90 setObject:v9 forKeyedSubscript:v71];
  }

LABEL_86:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  [v93 setCategoryValueBySource:v88];
  [v93 setDataCountBySource:v90];

LABEL_87:
  std::__function::__value_func<HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsSleepStages> const&)>::~__value_func[abi:ne200100](v109);
  v80 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v81 = [v93 averageQuantity];
  if (v81)
  {
    v9 = [v93 averageQuantity];
    if (([v9 isCompatibleWithUnit:v80] & 1) == 0)
    {

      goto LABEL_101;
    }
  }

  v82 = [v93 minimumQuantity];
  if (v82)
  {
    WeakRetained = [v93 minimumQuantity];
    if (![WeakRetained isCompatibleWithUnit:v80])
    {
      v83 = 1;
      goto LABEL_95;
    }
  }

  v84 = [v93 maximumQuantity];
  if (v84)
  {
    v85 = [v93 maximumQuantity];
    v86 = [v85 isCompatibleWithUnit:v80];

    v83 = v86 ^ 1;
    if (v82)
    {
      goto LABEL_95;
    }

LABEL_99:
    if (!v81)
    {
      goto LABEL_100;
    }

LABEL_96:

    if ((v83 & 1) == 0)
    {
      goto LABEL_102;
    }

LABEL_101:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v80}];
    goto LABEL_102;
  }

  v83 = 0;
  if (!v82)
  {
    goto LABEL_99;
  }

LABEL_95:

  if (v81)
  {
    goto LABEL_96;
  }

LABEL_100:

  if (v83)
  {
    goto LABEL_101;
  }

LABEL_102:

  return v93;
}

void sub_228FB1D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (v31)
  {
  }

  if (v29)
  {
  }

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 376);
  v2 = *(a1 + 392);
  if (v1 != (*(a1 + 400) - v2) >> 3)
  {
    *(a1 + 400) = v2;
    std::vector<long long>::reserve((a1 + 392), v1);
    for (i = *(a1 + 368); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 392, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 392];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(uint64_t a1, double a2)
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

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v21 = __clz(v7);
      if (WeakRetained)
      {
        *&v69.var0 = a1;
        v22 = 126 - 2 * v21;
        if (__p == v6)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,false>(__p, v6, &v69, v23, 1);
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
        for (i = __p; i != v6; i += 6)
        {
          v37 = *(i + 1);
          *&v68.var0 = *i;
          *&v68.var2 = v37;
          *&v68.var4 = i[4];
          var0 = v68.var0;
          v39 = *&v37;
          if (*&v37 - v68.var1 - (v16 - v68.var1) >= 0.01)
          {
            if (v16 - v68.var1 >= 0.01)
            {
              var3 = v68.var3;
              var4 = v68.var4;
              v68.var2 = v16;
              if (v68.var4)
              {
                var5 = v68.var5;
                v42 = v16;
LABEL_53:
                HDRawQuantitySample::applyMask(&v68, (a1 + 64));
                v43 = *(i + 42);
                v44 = *(i + 41);
                v66 = *(i + 40);
                if (!v68.var4)
                {
                  goto LABEL_71;
                }

                if (v35)
                {
                  v45 = v68.var3;
                  if (v64 == v68.var3 || *(a1 + 24) == 1)
                  {
                    HDStatisticsRelative<HDStatisticsSleepStages>::addSample((a1 + 120), &v68, v43 ^ 1);
                    LOBYTE(v43) = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsSleepStages>::addSample((a1 + 120), &v68, v43 ^ 1);
                  LOBYTE(v43) = 1;
                  v45 = v68.var3;
                  v64 = v68.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_70;
                }

                v46 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_bundleIdentifierForSourceID(a1, v45);
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
                    if (var4)
                    {
                      v69.var0 = var0;
                      v69.var1 = v42;
                      v69.var2 = v39;
                      v69.var3 = var3;
                      v69.var4 = var4;
                      v69.var5 = var5;
                      LOBYTE(v70) = v66;
                      BYTE1(v70) = v44;
                      BYTE2(v70) = v43;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v69);
                    }

                    continue;
                  }
                }

                else
                {
                  v62 = [MEMORY[0x277CCABB0] numberWithLongLong:v45];
                  [v63 setObject:v62 forKeyedSubscript:v46];
                }

                v49 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_canonicalSourceIDForSourceID(a1, v45);
                v50 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsForSource(a1, v49);
                HDStatisticsRelative<HDStatisticsSleepStages>::addSample(v50, &v68, v44 ^ 1);
                LOBYTE(v44) = 1;
                goto LABEL_68;
              }
            }

            else
            {
              v68.var4 = 0;
            }
          }

          else if (v68.var4)
          {
            var5 = 0;
            var4 = 0;
            var3 = 0;
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
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsSleepStages>]"];
        [v60 handleFailureInFunction:v61 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v59 = *(a1 + 56);
      }

      v5 = v59;
      if (v59 >= a2)
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
LABEL_78:
        v51 = *(__p + 42);
        v52 = *(__p + 41);
        v53 = *(__p + 40);
        v54 = *__p;
        v69.var1 = __p[1];
        v69.var2 = v30;
        v69.var3 = v26;
        v69.var4 = v29;
        v69.var5 = v28;
        *(&v69.var5 + 1) = *(__p + 34);
        *(&v69.var5 + 5) = *(__p + 19);
        *(&v70 + 1) = v31;
        *&v71 = v25;
        *(&v71 + 1) = v32;
        LOBYTE(v72) = v27;
        HIBYTE(v72) = v33;
        v69.var0 = v54;
        *&v70 = v54;
        HDRawQuantitySample::applyMask(&v69, (a1 + 64));
        if (v69.var4)
        {
          HDStatisticsRelative<HDStatisticsSleepStages>::addSample((a1 + 120), &v69, v51 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v55 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_canonicalSourceIDForSourceID(a1, v69.var3);
            v56 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsForSource(a1, v55);
            HDStatisticsRelative<HDStatisticsSleepStages>::addSample(v56, &v69, v52 ^ 1);
          }

          v53 = 1;
          LOBYTE(v52) = 1;
          LOBYTE(v51) = 1;
        }

        if (v72 == 1)
        {
          *&v68.var4 = v72;
          v57 = v71;
          v58 = *(a1 + 96);
          *v58 = v70;
          *(v58 + 16) = v57;
          *(v58 + 32) = *&v68.var4;
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
    goto LABEL_78;
  }
}

double HDStatisticsRelative<HDStatisticsSleepStages>::addSample(int *a1, const HDRawQuantitySample *a2, int a3)
{
  result = a2->var0;
  if (a2->var0 == 1.79769313e308)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (a2->var0 != -1.79769313e308);
  }

  v5 = *a1;
  if (v4)
  {
    if (v4 != 1)
    {
      if (v5 == 2)
      {
        v7 = (a1 + 2);
        a3 = 1;
        return HDStatisticsSleepStages::addSample(v7, a2, a3);
      }

      v6 = 2;
LABEL_15:
      *a1 = v6;
      *(a1 + 6) = 0u;
      *(a1 + 2) = 0u;
      *(a1 + 10) = xmmword_229170D50;
      *(a1 + 7) = 0;
      *(a1 + 4) = xmmword_229170D60;
      *(a1 + 10) = 0;
      *(a1 + 22) = xmmword_229170D70;
      *(a1 + 13) = 0;
      *(a1 + 7) = xmmword_229170D80;
      *(a1 + 16) = 0;
      *(a1 + 34) = xmmword_229170D90;
      *(a1 + 19) = 0;
      *(a1 + 20) = 0x7FFFFFFFFFFFFFFFLL;
      v7 = (a1 + 2);
      return HDStatisticsSleepStages::addSample(v7, a2, a3);
    }

    if (!v5)
    {
      v6 = 1;
      goto LABEL_15;
    }
  }

  else if (!v5)
  {
    v8 = *(a1 + 1);
    v7 = (a1 + 2);
    if (!v8)
    {
      return HDStatisticsSleepStages::addSample(v7, a2, a3);
    }
  }

  return result;
}

uint64_t **HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 336);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 336);
  v5 = (a1 + 336);
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsSleepStages>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsSleepStages>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsSleepStages>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 328), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsSleepStages>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsSleepStages>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsSleepStages>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 328), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 416), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 456), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 456), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 496), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 496), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsSleepStages>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsSleepStages>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsSleepStages>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
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

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
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
                v104 = *(*a3 + 392);
                v105 = *(*a3 + 400);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 392);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 392);
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
                  v107 = *(*a3 + 400);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 400);
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
                    v115 = *(*a3 + 392);
                    v116 = *(*a3 + 400);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 392);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 392);
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
                      v118 = *(*a3 + 400);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 400);
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
                          v122 = *(*a3 + 392);
                          v123 = *(*a3 + 400);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 392);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 392);
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
                            v125 = *(*a3 + 400);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 400);
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
                  v208 = *(*a3 + 392);
                  v209 = *(*a3 + 400);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 392);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 392);
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
                    v211 = *(*a3 + 400);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 400);
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

                      v216 = *(*a3 + 392);
                      v217 = *(*a3 + 400);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 392);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 392);
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
                        v219 = *(*a3 + 400);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 400);
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
                      v134 = *(*a3 + 392);
                      v133 = *(*a3 + 400);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 392);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 392);
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
                        v136 = *(*a3 + 400);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 400);
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

                  v145 = *(*a3 + 392);
                  v144 = *(*a3 + 400);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 392);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 392);
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
                    v147 = *(*a3 + 400);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 400);
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
                            v155 = *(*a3 + 392);
                            v156 = *(*a3 + 400);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 392);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 392);
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
                              v158 = *(*a3 + 400);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 400);
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
                          v165 = *(*a3 + 392);
                          v164 = *(*a3 + 400);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 392);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 392);
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
                            v167 = *(*a3 + 400);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 400);
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
                      v180 = *(*a3 + 392);
                      v179 = *(*a3 + 400);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 392);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 392);
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
                        v182 = *(*a3 + 400);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 400);
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
                      v194 = *(*a3 + 392);
                      v193 = *(*a3 + 400);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 392);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 392);
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
                        v196 = *(*a3 + 400);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 400);
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

                          v202 = *(*a3 + 392);
                          v201 = *(*a3 + 400);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 392);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 392);
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
                            v204 = *(*a3 + 400);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 400);
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
            v24 = *(*a3 + 392);
            v25 = *(*a3 + 400);
            if (v24 == v25)
            {
              v27 = *(*a3 + 392);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 392);
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
              v27 = *(*a3 + 400);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 400);
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

          v67 = *(*a3 + 392);
          v68 = *(*a3 + 400);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 392);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 400);
                break;
              }
            }

            v70 = *(*a3 + 392);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 400);
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
                  v77 = *(v74 + 392);
                  v78 = *(v74 + 400);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 392);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 392);
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
                    v80 = *(v74 + 400);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 400);
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
              v72 = *(*a3 + 392);
              if (v67 == v68)
              {
                v73 = *(*a3 + 392);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 400);
                    break;
                  }
                }

                v73 = *(*a3 + 392);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 400);
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

              v84 = *(v82 + 392);
              v85 = *(v82 + 400);
              if (v84 == v85)
              {
                v87 = *(v82 + 392);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 392);
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
                v87 = *(v82 + 400);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 400);
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
              v92 = *(v90 + 392);
              v93 = *(v90 + 400);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 392);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 400);
                    break;
                  }
                }

                v95 = *(v90 + 392);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 400);
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

          v31 = *(v22 + 392);
          v32 = *(v22 + 400);
          if (v31 == v32)
          {
            v34 = *(v22 + 392);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 392);
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
            v34 = *(v22 + 400);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 400);
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
                v42 = *(v22 + 392);
                v43 = *(v22 + 400);
                if (v42 == v43)
                {
                  v45 = *(v22 + 392);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 392);
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
                  v45 = *(v22 + 400);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 400);
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
            v37 = *(v22 + 392);
            v38 = *(v22 + 400);
            if (v37 == v38)
            {
              v40 = *(v22 + 392);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 392);
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
              v40 = *(v22 + 400);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 400);
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

              v52 = *(v50 + 392);
              v53 = *(v50 + 400);
              if (v52 == v53)
              {
                v55 = *(v50 + 392);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 392);
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
                v55 = *(v50 + 400);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 400);
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
              v57 = *(v50 + 392);
              v58 = *(v50 + 400);
              if (v57 == v58)
              {
                v60 = *(v50 + 392);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 392);
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
                v60 = *(v50 + 400);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 400);
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
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*>(v11, a2, a3))
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

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 392);
  v7 = *(*a4 + 400);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 392);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 400);
        break;
      }
    }

    v9 = *(*a4 + 392);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 400);
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
      v14 = *(*a4 + 392);
      v15 = *(*a4 + 400);
      if (v14 == v15)
      {
        v17 = *(*a4 + 392);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 392);
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
        v17 = *(*a4 + 400);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 400);
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
          v24 = *(*a4 + 392);
          v25 = *(*a4 + 400);
          if (v24 == v25)
          {
            v27 = *(*a4 + 392);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 392);
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
            v27 = *(*a4 + 400);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 400);
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
      v11 = *(*a4 + 392);
      if (v6 == v7)
      {
        v12 = *(*a4 + 392);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 400);
            break;
          }
        }

        v12 = *(*a4 + 392);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 400);
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
      v37 = *(*a4 + 392);
      v38 = *(*a4 + 400);
      if (v37 == v38)
      {
        v40 = *(*a4 + 392);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 392);
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
        v40 = *(*a4 + 400);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 400);
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