__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 392);
    v14 = *(*a5 + 400);
    if (v13 == v14)
    {
      v16 = *(*a5 + 392);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 392);
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
      v16 = *(*a5 + 400);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 400);
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
        v22 = *(*a5 + 392);
        v23 = *(*a5 + 400);
        if (v22 == v23)
        {
          v25 = *(*a5 + 392);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 392);
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
          v25 = *(*a5 + 400);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 400);
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
            v31 = *(*a5 + 392);
            v32 = *(*a5 + 400);
            if (v31 == v32)
            {
              v34 = *(*a5 + 392);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 392);
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
              v34 = *(*a5 + 400);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 400);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 392);
    v16 = *(*a6 + 400);
    if (v15 == v16)
    {
      v18 = *(*a6 + 392);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 392);
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
      v18 = *(*a6 + 400);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 400);
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
        v24 = *(*a6 + 392);
        v25 = *(*a6 + 400);
        if (v24 == v25)
        {
          v27 = *(*a6 + 392);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 392);
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
          v27 = *(*a6 + 400);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 400);
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
            v33 = *(*a6 + 392);
            v34 = *(*a6 + 400);
            if (v33 == v34)
            {
              v36 = *(*a6 + 392);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 392);
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
              v36 = *(*a6 + 400);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 400);
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
                v42 = *(*a6 + 392);
                v43 = *(*a6 + 400);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 392);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 392);
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
                  v45 = *(*a6 + 400);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 400);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 392);
          v10 = *(*a3 + 400);
          if (v9 == v10)
          {
            v12 = *(*a3 + 392);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 392);
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
            v12 = *(*a3 + 400);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 400);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 392);
      v19 = *(*a3 + 400);
      if (v18 == v19)
      {
        v21 = *(*a3 + 392);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 392);
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
        v21 = *(*a3 + 400);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 400);
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
            v25 = *(*a3 + 392);
            v26 = *(*a3 + 400);
            if (v25 == v26)
            {
              v28 = *(*a3 + 392);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 392);
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
              v28 = *(*a3 + 400);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 400);
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>> const&)::{lambda(HDStatisticsRelative<HDStatisticsSleepStages> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>> const&)::{lambda(HDStatisticsRelative<HDStatisticsSleepStages> const&)#1}>,HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsSleepStages> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsSleepStages const& ()(HDStatisticsRelative<HDStatisticsSleepStages> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 688) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 688))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 664);
    v5 = *(a1 + 656);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::addSample(uint64_t a1, double *a2, int a3)
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
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 360), v16, &v39 + 1);
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
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(v11, v21);
    }
  }

LABEL_29:
  v34[0] = v38;
  v34[1] = v39;
  v35 = v40;
  v36 = 0;
  v37 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v34);
  if (!*(a1 + 328) || *(a1 + 304) <= v6)
  {
    *(a1 + 296) = v5;
    *(a1 + 304) = v6;
    *(a1 + 312) = v7;
    *(a1 + 320) = v8;
    *(a1 + 328) = v9;
    *(a1 + 329) = v10;
  }

  if (*(a1 + 33) == 1)
  {
    v27 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_canonicalSourceIDForSourceID(v11, v16);
    v28 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsForSource(v11, v27);
    if (!*(v28 + 200) || *(v28 + 22) <= v6)
    {
      v28[21] = v5;
      *(v28 + 22) = v6;
      *(v28 + 23) = v7;
      v28[24] = v8;
      *(v28 + 200) = v9;
      *(v28 + 201) = v10;
    }
  }

LABEL_36:
  if (v33 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 544, &v31);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 690) == 1)
  {
    *(a1 + 692) = 1;
  }

  else
  {
    *(a1 + 692) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 544), *(a1 + 552), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 552) - *(a1 + 544)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228FB543C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 568), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0;
  *(v8 + 128) = xmmword_229170D50;
  *(v8 + 144) = 0;
  *(v8 + 152) = xmmword_229170D60;
  *(v8 + 168) = 0;
  *(v8 + 176) = xmmword_229170D70;
  *(v8 + 192) = 0;
  *(v8 + 200) = xmmword_229170D80;
  *(v8 + 216) = 0;
  *(v8 + 224) = 0x7FFFFFFFFFFFFFFFLL;
  *(v8 + 232) = 5;
  *(v8 + 240) = 0;
  *(v8 + 248) = 0x7FFFFFFFFFFFFFFFLL;
  *(v8 + 288) = 0;
  *(v8 + 256) = 0u;
  *(v8 + 272) = 0u;
  if (*(v8 + 312))
  {
    v9 = *(a1 + 336);
    v10 = *(a1 + 344);
    *(a1 + 336) = a1 + 344;
    *(v10 + 16) = 0;
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
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

  objc_storeStrong(v8, *(a1 + 568));
  *(a1 + 552) = *(a1 + 544);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 692) == 1)
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

    *(a1 + 692) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 688))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228FB5728(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 688) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228FB5B78(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40A21595ACLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsSleepStages>>::advanceBucket(v15 + 112, v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 692) == 1)
          {
            *(v15 + 692) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 688) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsSleepStages>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsSleepStagesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsSleepStages>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsSleepStages>::archive(uint64_t a1, uint64_t a2)
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
  HDStatisticsSleepStages::archive((a2 + 8));
}

void sub_228FB63F4()
{
  statistics::Statistics::operator=(*(v0 + 128), v4);
  statistics::Statistics::~Statistics(v4);
  v3 = *v1;
  *(v0 + 204) |= 0x100u;
  *(v0 + 136) = v3;
  statistics::Statistics::makeMostRecentDatum(v0);
  v4[0] = &unk_283BEB0A8;
  v8 = 127;
  v5 = vextq_s8(*(v1 + 42), *(v1 + 42), 8uLL);
  v4[1] = *(v1 + 23);
  v4[2] = *(v1 + 24);
  v6 = 0;
  v7 = 0;
  statistics::RawQuantitySample::operator=(*v2, v4);
  PB::Base::~Base(v4);
}

double HDStatisticsRelative<HDStatisticsSleepStages>::unarchive(uint64_t a1, const statistics::Statistics *a2)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
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
  *(a1 + 200) = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    HDStatisticsSleepStages::unarchive(v4, a2);
  }

  *a1 = *(a2 + 17);
  v5 = *(a2 + 14);
  if (v5)
  {
    result = *(v5 + 8);
    v6 = *(v5 + 16);
    *(a1 + 168) = vextq_s8(*(v5 + 24), *(v5 + 24), 8uLL);
    *(a1 + 184) = result;
    *(a1 + 192) = v6;
    *(a1 + 200) = 1;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF1868;
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
  HDStatisticsBucket<HDStatisticsSleepStages>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF1868;
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

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 640) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::configureMergeAnchor(uint64_t a1, void *a2)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 82, a2);
  v7 = a2;
  v4 = a1[82];
  v5 = a1[79];
  a1[79] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[79]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 640))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsSleepStages>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsSleepStages>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsSleepStages>::_mergeThroughTime(v4, v5);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

void sub_228FB6A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 642) == 1)
    {
      if (*(a1 + 641))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 640))
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

      if (*(a1 + 643) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 672, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 642) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 642) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 641))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 664);
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

  [v9 sortUsingComparator:&__block_literal_global_1148];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 664);
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

  v30 = [v68 lastObject];
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveInvalidateInterval(a1, v49, v67);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveInvalidateInterval(a1, 0, v67))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 616) != *(a1 + 608))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsSleepStages>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsSleepStages>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsSleepStages>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_notifyForCurrentBucket(a1);
    }
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
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_notifyForCurrentBucket(a1);
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
  *(a1 + 642) = 0;
LABEL_81:

  return v7;
}

void sub_228FB733C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 642) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveInvalidateInterval(a1, v7, a3);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 640) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 640) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
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
  HDStatisticsSleepStages::archive((a1 + 240));
}

void sub_228FB7B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v22 = a2;
  *(a1 + 640) = [v22 decodeBoolForKey:@"needs_config"];
  v3 = v22;
  HDStatisticsBucket<HDStatisticsSleepStages>::HDStatisticsBucket(&v24.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v26 = 0u;
  v71 = 0;
  PB::Reader::Reader(v70, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v71]);
  v63 = &unk_283BF1A08;
  v64 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v69 = 0;
  statistics::StatisticsEngine::readFrom(&v63, v70);
  v24.n128_u64[0] = v65;
  if (v64)
  {
    v30 = 0;
    memset(v33, 0, sizeof(v33));
    memset(v34, 0, sizeof(v34));
    v36 = xmmword_229170D50;
    v35 = 0;
    v37 = 0;
    v38 = xmmword_229170D60;
    v40 = xmmword_229170D70;
    v39 = 0;
    v41 = 0;
    v42 = xmmword_229170D80;
    v44 = xmmword_229170D90;
    v43 = 0;
    v45 = 0;
    v48[1] = 0;
    v48[0] = 0;
    v46 = 0x7FFFFFFFFFFFFFFFLL;
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
    v27 = vextq_s8(*(v64 + 8), *(v64 + 8), 8uLL);
    v5 = *(v64 + 72);
    v28 = *(v64 + 64);
    LOWORD(v29) = *(v64 + 185);
    v31 = vextq_s8(*(v64 + 24), *(v64 + 24), 8uLL);
    v32 = v5;
    v6 = *(v64 + 80);
    v7 = *(v64 + 88);
    for (i = v64; v6 != v7; ++v6)
    {
      v8 = *v6;
      v75 = 1;
      v76 = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v72 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      v73 = v9;
      v74 = v10;
      v77 = *(v8 + 41);
      v78 = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v34, v72.i8);
    }

    v11 = i[13];
    if (v11)
    {
      HDStatisticsSleepStages::unarchive(v11, v4);
    }

    v12 = i[17];
    if (v12 != i[18])
    {
      HDStatisticsSleepStages::unarchive(*v12, v4);
    }

    v13 = i[5];
    for (j = i[6]; v13 != j; v13 += 8)
    {
      v16 = *(*v13 + 8);
      v15 = *(*v13 + 16);
      if (v16 >= v15)
      {
        v17 = *(*v13 + 16);
      }

      else
      {
        v17 = *(*v13 + 8);
      }

      if (v15 < v16)
      {
        v15 = *(*v13 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v33, v17, v15);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::operator=(&v24.n128_i64[1], &v27);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::~HDStatisticsBucket(&v27);
  }

  v18 = v66;
  for (k = v67; v18 != k; v18 += 8)
  {
    v20 = *(*v18 + 8);
    v21 = *(*v18 + 16);
    v27 = vextq_s8(*(*v18 + 24), *(*v18 + 24), 8uLL);
    v28 = v20;
    v29 = v21;
    LOWORD(v30) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v27.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v63);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::operator=((a1 + 112), &v24);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::~HDStatisticsBucket(&v24.n128_i64[1]);
}

void sub_228FB811C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v24 + 448);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a10);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v24 + 368);
  v26 = STACK[0x3E8];
  if (STACK[0x3E8])
  {
    STACK[0x3F0] = v26;
    operator delete(v26);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v24 + 304);
  std::__tree<long>::destroy(STACK[0x3B0]);
  v27 = STACK[0x2F0];
  if (STACK[0x2F0])
  {
    STACK[0x2F8] = v27;
    operator delete(v27);
  }

  objc_destroyWeak((v24 + 88));
  v28 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v28;
    operator delete(v28);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x480]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsSleepStages>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsSleepStages>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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
  HDStatisticsBucket<HDStatisticsSleepStages>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsSleepStages>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::~HDStatisticsBucket(v17);
  *(a1 + 640) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>>>::~HDStatisticsBucket(v21);
}

uint64_t HDStatisticsBucket<HDStatisticsSleepStages>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  v17 = (a1 + 288);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = a1 + 288;
  v18 = *(a2 + 280);
  if (v18 != (a2 + 288))
  {
    v19 = 0;
    v20 = (a1 + 288);
    while (1)
    {
      v21 = v18[4];
      v22 = (a1 + 288);
      if (v20 == v17)
      {
        goto LABEL_12;
      }

      v23 = v19;
      v24 = (a1 + 288);
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
          v26 = (a1 + 288);
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

      if (v30 == (a2 + 288))
      {
        break;
      }

      v19 = *v17;
      v20 = *(a1 + 280);
      v18 = v30;
    }
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

void sub_228FB8928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 408);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 368);
  v14 = *(v10 + 344);
  if (v14)
  {
    *(v10 + 352) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 304);
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

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v103 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v87 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v90 = a2;
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v87 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(a2 + 344);
      v16 = *(a2 + 352);
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

  v101[0] = &unk_283BF1938;
  v102 = v101;
  v88 = v12;
  v21 = *(v90 + 232);
  v97 = *(v90 + 216);
  v98 = v21;
  v22 = *(v90 + 264);
  v99 = *(v90 + 248);
  v100 = v22;
  v23 = *(v90 + 168);
  v93 = *(v90 + 152);
  v94 = v23;
  v24 = *(v90 + 200);
  v95 = *(v90 + 184);
  v96 = v24;
  v25 = *(v90 + 136);
  *__p = *(v90 + 120);
  v92 = v25;
  if (!v102)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v26 = ((*(*v102 + 48))(v102, __p) + 32);
  v27 = 0.0;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v29 = 144;
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v31 = *(v26 - 1);
    if (v31 > 2.22507386e-308 && v31 >= v27)
    {
      if (v31 <= v27)
      {
        if (*v26 < v28)
        {
          v30 = *(v26 - 2);
          v27 = *(v26 - 1);
          v28 = *v26;
        }
      }

      else
      {
        v30 = *(v26 - 2);
        v28 = *v26;
        v27 = *(v26 - 1);
      }
    }

    v26 += 3;
    v29 -= 24;
  }

  while (v29);
  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:{2.22507386e-308, v27}];
    [v88 setCategoryValue:v33];
  }

  v34 = *(v90 + 232);
  v97 = *(v90 + 216);
  v98 = v34;
  v35 = *(v90 + 264);
  v99 = *(v90 + 248);
  v100 = v35;
  v36 = *(v90 + 168);
  v93 = *(v90 + 152);
  v94 = v36;
  v37 = *(v90 + 200);
  v95 = *(v90 + 184);
  v96 = v37;
  v38 = *(v90 + 136);
  *__p = *(v90 + 120);
  v92 = v38;
  if (!v102)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  [v88 setDataCount:{*(*(*v102 + 48))(v102, __p)}];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_88;
  }

  v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = *(v90 + 344);
  v40 = *(v90 + 352);
  while (v39 != v40)
  {
    v41 = *v39;
    v42 = objc_loadWeakRetained((a1 + 48));
    v43 = [v42 sourceForSourceID:v41];

    if (v43 && ([v89 containsObject:v43] & 1) == 0)
    {
      [v89 addObject:v43];
    }

    ++v39;
  }

  v44 = objc_msgSend_copy(v89);
  [v88 _setSources:v44];

  v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v86 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v92 = 0u;
  LODWORD(v93) = 1065353216;
  v45 = *(v90 + 280);
  if (v45 == (v90 + 288))
  {
    goto LABEL_87;
  }

  v83 = &v92;
  do
  {
    v46 = HDStatisticsBucket<HDStatisticsSleepStages>::_bundleIdentifierForSourceID(v90, v45[4]);
    v47 = v46;
    if (!v46)
    {
      goto LABEL_63;
    }

    v48 = [v46 hash];
    v49 = v48;
    v50 = __p[1];
    if (!__p[1])
    {
      goto LABEL_61;
    }

    v51 = vcnt_s8(__p[1]);
    v51.i16[0] = vaddlv_u8(v51);
    v52 = v51.u32[0];
    if (v51.u32[0] > 1uLL)
    {
      v53 = v48;
      if (v48 >= __p[1])
      {
        v53 = v48 % __p[1];
      }
    }

    else
    {
      v53 = (__p[1] - 1) & v48;
    }

    v54 = *(__p[0] + v53);
    if (!v54 || (v55 = *v54) == 0)
    {
LABEL_61:
      operator new();
    }

    v85 = __p[1] - 1;
    while (1)
    {
      v56 = v55[1];
      if (v56 == v49)
      {
        break;
      }

      if (v52 > 1)
      {
        if (v56 >= v50)
        {
          v56 %= v50;
        }
      }

      else
      {
        v56 &= v85;
      }

      if (v56 != v53)
      {
        goto LABEL_61;
      }

LABEL_60:
      v55 = *v55;
      if (!v55)
      {
        goto LABEL_61;
      }
    }

    v57 = v55[2];
    v58 = v47;
    v59 = v58;
    if (v57 != v58)
    {
      v60 = [v57 isEqualToString:v58];

      if (v60)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

LABEL_62:
    v61 = *(v45 + 5);
    *(v55 + 5) = *(v45 + 7);
    *(v55 + 3) = v61;
    v62 = *(v45 + 9);
    v63 = *(v45 + 11);
    v64 = *(v45 + 13);
    *(v55 + 13) = *(v45 + 15);
    *(v55 + 11) = v64;
    *(v55 + 9) = v63;
    *(v55 + 7) = v62;
    v65 = *(v45 + 17);
    v66 = *(v45 + 19);
    v67 = *(v45 + 21);
    *(v55 + 21) = *(v45 + 23);
    *(v55 + 19) = v67;
    *(v55 + 17) = v66;
    *(v55 + 15) = v65;

LABEL_63:
    v68 = v45[1];
    if (v68)
    {
      do
      {
        v69 = v68;
        v68 = *v68;
      }

      while (v68);
    }

    else
    {
      do
      {
        v69 = v45[2];
        v70 = *v69 == v45;
        v45 = v69;
      }

      while (!v70);
    }

    v45 = v69;
  }

  while (v69 != (v90 + 288));
  for (i = v92; i; i = *i)
  {
    v72 = i[2];
    if (!v102)
    {
      goto LABEL_91;
    }

    v73 = ((*(*v102 + 48))(v102, i + 3) + 32);
    v74 = 0.0;
    v75 = 0x7FFFFFFFFFFFFFFFLL;
    v76 = 144;
    v77 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v78 = *(v73 - 1);
      if (v78 > 2.22507386e-308 && v78 >= v74)
      {
        if (v78 <= v74)
        {
          if (*v73 < v75)
          {
            v77 = *(v73 - 2);
            v74 = *(v73 - 1);
            v75 = *v73;
          }
        }

        else
        {
          v77 = *(v73 - 2);
          v75 = *v73;
          v74 = *(v73 - 1);
        }
      }

      v73 += 3;
      v76 -= 24;
    }

    while (v76);
    if (v77 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v80 = [MEMORY[0x277CCABB0] numberWithInteger:v74];
      [v84 setObject:v80 forKeyedSubscript:v72];
    }

    if (!v102)
    {
LABEL_91:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v81 = [MEMORY[0x277CCABB0] numberWithLongLong:{*(*(*v102 + 48))(v102, i + 3)}];
    [v86 setObject:v81 forKeyedSubscript:v72];
  }

LABEL_87:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  [v88 setCategoryValueBySource:v84];
  [v88 setDataCountBySource:v86];

LABEL_88:
  std::__function::__value_func<HDStatisticsSleepStages const& ()(HDStatisticsSleepStages const&)>::~__value_func[abi:ne200100](v101);

  return v88;
}

void HDStatisticsBucket<HDStatisticsSleepStages>::_updateSourceOrder(uint64_t a1)
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

void HDStatisticsBucket<HDStatisticsSleepStages>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v88 = a1 + 136;
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
        goto LABEL_106;
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

      HDStatisticsBucket<HDStatisticsSleepStages>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v22 = __clz(v8);
      if (WeakRetained)
      {
        *&v96 = a1;
        v23 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, &v96, v24, 1);
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
        v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v36 = 0;
      }

      __p = v6;
      if (v6 != v7)
      {
        v89 = 0;
        v37 = 0;
        v38 = v6;
        v86 = v36;
        do
        {
          v39 = *(v38 + 16);
          v93 = *v38;
          v94 = v39;
          v95 = *(v38 + 32);
          v40 = v93;
          v41 = *&v39;
          if (*&v39 - *(&v93 + 1) - (v17 - *(&v93 + 1)) >= 0.01)
          {
            if (v17 - *(&v93 + 1) >= 0.01)
            {
              v42 = v95;
              *&v94 = v17;
              if (v95)
              {
                v91 = *(&v94 + 1);
                v92 = BYTE1(v95);
                v43 = v17;
LABEL_54:
                HDRawQuantitySample::applyMask(&v93, (a1 + 64));
                v44 = *(v38 + 42);
                v45 = *(v38 + 41);
                v90 = *(v38 + 40);
                if (v95 == 1)
                {
                  if (v37)
                  {
                    v46 = *(&v94 + 1);
                    if (v89 == *(&v94 + 1) || *(a1 + 24) == 1)
                    {
                      if ((*(v38 + 42) & 1) == 0)
                      {
                        ++*(a1 + 120);
                      }

                      v47 = v88 + 24 * *&v93;
                      v48 = *(v47 + 8);
                      v49 = *(v47 + 16);
                      v50 = *(a1 + 128);
                      if (v50 < v49)
                      {
                        v49 = v50 + 1;
                        *(a1 + 128) = v50 + 1;
                      }

                      *(v47 + 8) = v48 + *&v94 - *(&v93 + 1);
                      *(v47 + 16) = v49;
                      v44 = 1;
                    }
                  }

                  else
                  {
                    if ((*(v38 + 42) & 1) == 0)
                    {
                      ++*(a1 + 120);
                    }

                    v51 = v88 + 24 * *&v93;
                    v52 = *(v51 + 8);
                    v53 = *(v51 + 16);
                    v54 = *(a1 + 128);
                    if (v54 < v53)
                    {
                      v53 = v54 + 1;
                      *(a1 + 128) = v54 + 1;
                    }

                    *(v51 + 8) = v52 + *&v94 - *(&v93 + 1);
                    *(v51 + 16) = v53;
                    v44 = 1;
                    v46 = *(&v94 + 1);
                    v89 = *(&v94 + 1);
                  }

                  if (*(a1 + 25) == 1)
                  {
                    v55 = HDStatisticsBucket<HDStatisticsSleepStages>::_bundleIdentifierForSourceID(a1, v46);
                    if (v55)
                    {
                      v56 = [v36 objectForKeyedSubscript:v55];
                      v57 = v56;
                      if (v56)
                      {
                        if ([v56 longLongValue] != v46 && *(a1 + 24) != 1)
                        {
                          goto LABEL_81;
                        }
                      }

                      else
                      {
                        v58 = [MEMORY[0x277CCABB0] numberWithLongLong:v46];
                        [v86 setObject:v58 forKeyedSubscript:v55];
                      }

                      v59 = HDStatisticsBucket<HDStatisticsSleepStages>::_canonicalSourceIDForSourceID(a1, v46);
                      v60 = HDStatisticsBucket<HDStatisticsSleepStages>::_statisticsForSource(a1, v59);
                      if ((v45 & 1) == 0)
                      {
                        *v60 = (*v60 + 1);
                      }

                      v61 = &v60[3 * *&v93];
                      v62 = *(v61 + 3);
                      v63 = v61[4];
                      v64 = v60[1];
                      if (v64 < v63)
                      {
                        v63 = (v64 + 1);
                        v60[1] = (v64 + 1);
                      }

                      *(v61 + 3) = v62 + *&v94 - *(&v93 + 1);
                      v61[4] = v63;
                      v45 = 1;
LABEL_81:

                      v36 = v86;
                    }
                  }

                  v37 = 1;
                }

                if (v42)
                {
                  *&v96 = v40;
                  *(&v96 + 1) = v43;
                  v97 = v41;
                  v98 = v91;
                  v99 = v42;
                  v100 = v92;
                  LOBYTE(v103) = v90;
                  BYTE1(v103) = v45;
                  BYTE2(v103) = v44;
                  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v96);
                }

                goto LABEL_86;
              }
            }

            else
            {
              LOBYTE(v95) = 0;
            }
          }

          else if (v95)
          {
            v92 = 0;
            v42 = 0;
            v91 = 0;
            v41 = 0.0;
            v43 = 0.0;
            goto LABEL_54;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v38);
LABEL_86:
          v38 += 48;
        }

        while (v38 != v7);
      }

      *(a1 + 56) = v17;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_107:
      v83 = *(a1 + 56);
      if (v83 == v5)
      {
        v84 = [MEMORY[0x277CCA890] currentHandler];
        v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsSleepStages>::_mergeThroughTime(double) [Statistics = HDStatisticsSleepStages]"];
        [v84 handleFailureInFunction:v85 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v83 = *(a1 + 56);
      }

      v5 = v83;
      if (v83 >= a2)
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
LABEL_91:
        v65 = *(v6 + 42);
        v66 = *(v6 + 41);
        v67 = *(v6 + 40);
        v68 = *v6;
        *(&v96 + 1) = *(v6 + 8);
        v97 = v31;
        v98 = v27;
        v99 = v30;
        v100 = v29;
        v101 = *(v6 + 34);
        v102 = *(v6 + 38);
        *(&v103 + 1) = v32;
        *&v104 = v26;
        *(&v104 + 1) = v33;
        LOBYTE(v105) = v28;
        HIBYTE(v105) = v34;
        *&v96 = v68;
        *&v103 = v68;
        HDRawQuantitySample::applyMask(&v96, (a1 + 64));
        if (v99 == 1)
        {
          if ((v65 & 1) == 0)
          {
            ++*(a1 + 120);
          }

          v69 = *&v96;
          v70 = v88 + 24 * *&v96;
          v71 = *(v70 + 8);
          v72 = *(v70 + 16);
          v73 = *(a1 + 128);
          if (v73 < v72)
          {
            v72 = v73 + 1;
            *(a1 + 128) = v73 + 1;
          }

          v74 = v97 - *(&v96 + 1);
          *(v70 + 8) = v71 + v97 - *(&v96 + 1);
          *(v70 + 16) = v72;
          if (*(a1 + 25) == 1)
          {
            v75 = HDStatisticsBucket<HDStatisticsSleepStages>::_canonicalSourceIDForSourceID(a1, v98);
            v76 = HDStatisticsBucket<HDStatisticsSleepStages>::_statisticsForSource(a1, v75);
            if ((v66 & 1) == 0)
            {
              *v76 = (*v76 + 1);
            }

            v77 = &v76[3 * v69];
            v78 = *(v77 + 3);
            v79 = v77[4];
            v80 = v76[1];
            if (v80 < v79)
            {
              v79 = (v80 + 1);
              v76[1] = (v80 + 1);
            }

            *(v77 + 3) = v74 + v78;
            v77[4] = v79;
          }

          v67 = 1;
          v66 = 1;
          v65 = 1;
        }

        if (v105 == 1)
        {
          LOWORD(v95) = v105;
          v81 = v104;
          v82 = *(a1 + 96);
          *v82 = v103;
          *(v82 + 16) = v81;
          *(v82 + 32) = v95;
          *(v82 + 40) = v67;
          *(v82 + 41) = v66;
          *(v82 + 42) = v65;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_106:
        *(a1 + 56) = a2;
        goto LABEL_107;
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
    goto LABEL_91;
  }
}

uint64_t **HDStatisticsBucket<HDStatisticsSleepStages>::_statisticsForSource(uint64_t a1, uint64_t a2)
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
    std::__tree<std::__value_type<long long,HDStatisticsSleepStages>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsSleepStages>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsSleepStages>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 280), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsSleepStages>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsSleepStages>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsSleepStages>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 280), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsSleepStages>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
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
      v6 = HDStatisticsBucket<HDStatisticsSleepStages>::_bundleIdentifierForSourceID(a1, a2);
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

id HDStatisticsBucket<HDStatisticsSleepStages>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
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

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsSleepStages>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsSleepStages>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsSleepStages>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages>(HKStatistics *,HDStatisticsBucket<HDStatisticsSleepStages> const&)::{lambda(HDStatisticsSleepStages const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_addStatisticsFromFinishedBucket<HDStatisticsSleepStages>(HKStatistics *,HDStatisticsBucket<HDStatisticsSleepStages> const&)::{lambda(HDStatisticsSleepStages const&)#1}>,HDStatisticsSleepStages const& ()(HDStatisticsSleepStages const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsSleepStages const& ()(HDStatisticsSleepStages const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 640) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_configureForStartTime(a1);
  }

  v8 = a2[1];
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsSleepStages>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_advanceToTime(uint64_t a1, double a2)
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

      HDStatisticsBucket<HDStatisticsSleepStages>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsSleepStages>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsSleepStages>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsSleepStages>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsSleepStages>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsSleepStages>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsSleepStages>::addSample(uint64_t a1, double *a2, int a3)
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
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 312), v8, &v33 + 1);
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
      HDStatisticsBucket<HDStatisticsSleepStages>::_mergeThroughTime(v11, v16);
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
    v22 = HDStatisticsBucket<HDStatisticsSleepStages>::_canonicalSourceIDForSourceID(v11, v8);
    HDStatisticsBucket<HDStatisticsSleepStages>::_statisticsForSource(v11, v22);
  }

LABEL_32:
  if (v27 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 496, &v25);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_notifyForCurrentBucket(uint64_t a1)
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

void HDStatisticsCollectionEngine<HDStatisticsSleepStages>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 496), *(a1 + 504), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 504) - *(a1 + 496)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsSleepStages>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsSleepStages>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228FBAC9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsSleepStages>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 520), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
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
  if (*(v8 + 264))
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_didChangeBucket(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228FBAF28(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
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
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228FBB378(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4045BC4A20);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsSleepStages>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsSleepStages>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsSleepStages>::advanceBucket(v15 + 112, v23, v25);

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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 640) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsSleepStages>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsSleepStagesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsSleepStages>::_primitiveAddSample(v10, v14, a3, a4);
}

void sub_228FBCCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v39 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__162(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t statistics::StatisticsEngine::StatisticsEngine(uint64_t this)
{
  *this = &unk_283BF1A08;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_283BF1A08;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  return this;
}

void statistics::StatisticsEngine::~StatisticsEngine(statistics::StatisticsEngine *this)
{
  *this = &unk_283BF1A08;
  v3 = (this + 24);
  std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  statistics::StatisticsEngine::~StatisticsEngine(this);

  JUMPOUT(0x22AAC8590);
}

statistics::StatisticsEngine *statistics::StatisticsEngine::StatisticsEngine(statistics::StatisticsEngine *this, const statistics::StatisticsEngine *a2)
{
  *this = &unk_283BF1A08;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  if (*(a2 + 48))
  {
    v2 = *(a2 + 2);
    *(this + 48) = 1;
    *(this + 2) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v3 = *(a2 + 3);
  if (v3 != *(a2 + 4))
  {
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample const&>(this + 3, *v3);
  }

  return this;
}

uint64_t statistics::StatisticsEngine::operator=(uint64_t a1, const statistics::StatisticsEngine *a2)
{
  if (a1 != a2)
  {
    statistics::StatisticsEngine::StatisticsEngine(v10, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v6;
    v11 = v5;
    v12 = v4;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v8;
    statistics::StatisticsEngine::~StatisticsEngine(v10);
  }

  return a1;
}

uint64_t statistics::swap(uint64_t this, statistics::StatisticsEngine *a2, statistics::StatisticsEngine *a3)
{
  v3 = *(this + 48);
  *(this + 48) = *(a2 + 12);
  *(a2 + 12) = v3;
  v5 = *(this + 8);
  v4 = *(this + 16);
  v6 = *(a2 + 2);
  *(this + 8) = *(a2 + 1);
  *(this + 16) = v6;
  *(a2 + 1) = v5;
  *(a2 + 2) = v4;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v9;
  return this;
}

uint64_t statistics::StatisticsEngine::StatisticsEngine(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *a1 = &unk_283BF1A08;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__vdeallocate(v4);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

uint64_t statistics::StatisticsEngine::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    statistics::StatisticsEngine::StatisticsEngine(v10, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v3;
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v6;
    v11 = v5;
    v12 = v4;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v8;
    statistics::StatisticsEngine::~StatisticsEngine(v10);
  }

  return a1;
}

uint64_t statistics::StatisticsEngine::formatText(statistics::StatisticsEngine *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "currentBucket");
  }

  if (*(this + 48))
  {
    PB::TextFormatter::format(a2, "currentBucketIndex");
  }

  v6 = *(this + 3);
  v7 = *(this + 4);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "remainders");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t statistics::StatisticsEngine::readFrom(const void **this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_48;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        PB::PtrVector<statistics::RawQuantitySample>::emplace_back<>(this + 3);
      }

      if (v22 == 2)
      {
        operator new();
      }

      if (v22 == 1)
      {
        *(this + 48) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v34 = (v25 + v24);
          v18 = v23 >= v24;
          v35 = v23 - v24;
          if (!v18)
          {
            v35 = 0;
          }

          v36 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              v28 = 0;
              *(a2 + 24) = 1;
              goto LABEL_43;
            }

            v37 = *v34;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_39:
              v28 = 0;
              goto LABEL_43;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_43:
        this[2] = v28;
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_48;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_48:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t statistics::StatisticsEngine::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 48))
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v4 = v3[1];
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v6 = v3[3];
  v5 = v3[4];
  while (v6 != v5)
  {
    v7 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

BOOL statistics::StatisticsEngine::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 48))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !statistics::StatisticsBucket::operator==(v4, v5) && *(a1 + 8) | *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return PB::PtrVector<statistics::RawQuantitySample>::operator==((a1 + 24), a2 + 24);
}

unint64_t statistics::StatisticsEngine::hash_value(statistics::StatisticsEngine *this)
{
  if (*(this + 48))
  {
    v2 = *(this + 2);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = statistics::StatisticsBucket::hash_value(v3);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(this + 3);
  v5 = *(this + 4);
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v6++;
      v7 ^= statistics::RawQuantitySample::hash_value(v8);
    }

    while (v6 != v5);
  }

  return v4 ^ v2 ^ v7;
}

void *statistics::StatisticsEngine::makeCurrentBucket(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

uint64_t HDCodableUserDomainConceptCollectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableUserDomainConcept);
        [a1 addConcepts:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableUserDomainConceptReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableSyncStateVersionedDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 100)
      {
        v22 = PBReaderReadData();
        v23 = *(a1 + 8);
        *(a1 + 8) = v22;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(HDCodableSyncStateOrigin);
        objc_storeStrong((a1 + 16), v21);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSyncStateOriginReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_38:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228FC5B3C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__163(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableVerifiableDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__n128 HDStatisticsAverageSampleDuration::splitSampleAtTime@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

double *HDStatisticsAverageSampleDuration::splitSampleAtTime(double *result, _OWORD *a2, int a3, double a4)
{
  v4 = (result + 4);
  if ((result[4] & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = result[1];
  v6 = v5 <= a4;
  if (a3)
  {
    v6 = v5 < a4;
  }

  if (!v6)
  {
    v7 = *result;
    v8 = *(result + 1);
    *(a2 + 16) = *(result + 16);
    *a2 = v7;
    a2[1] = v8;
  }

  else
  {
LABEL_5:
    v4 = a2 + 2;
  }

  *v4 = 0;
  return result;
}

uint64_t HDStatisticsAverageSampleDuration::applyMaskToSample(uint64_t result, double **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(result + 8);
    while (v4 >= *v2)
    {
      if (v4 < v2[1])
      {
        *(result + 32) = 0;
        return result;
      }

      v2 += 2;
      if (v2 == v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t HDStatisticsAverageSampleDuration::addSample(uint64_t this, const HDRawQuantitySample *a2)
{
  v2 = a2->var2 - a2->var1;
  v3 = *(this + 8);
  if (v3)
  {
    v4 = v3 + 1;
    v2 = *this + (v2 - *this) / v4;
  }

  else
  {
    v4 = 1;
  }

  *this = v2;
  *(this + 8) = v4;
  return this;
}

__n128 HDStatisticsAverageSampleDuration::updateMostRecentSample(__n128 *this, const HDRawQuantitySample *a2)
{
  if (!this[3].n128_u8[0] || (result.n128_u64[0] = this[1].n128_u64[1], result.n128_f64[0] <= a2->var1))
  {
    result = *&a2->var0;
    v3 = *&a2->var2;
    this[3].n128_u16[0] = *&a2->var4;
    this[1] = result;
    this[2] = v3;
  }

  return result;
}

double HDStatisticsAverageSampleDuration::unarchive@<D0>(HDStatisticsAverageSampleDuration *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 8) = *(this + 3);
  result = *(this + 12);
  *a2 = result;
  v3 = *(this + 14);
  if (v3)
  {
    result = *(v3 + 8);
    v4 = *(v3 + 16);
    *(a2 + 16) = vextq_s8(*(v3 + 24), *(v3 + 24), 8uLL);
    *(a2 + 32) = result;
    *(a2 + 40) = v4;
    *(a2 + 48) = 1;
  }

  return result;
}

void HDStatisticsAverageSampleDuration::archive(int8x16_t *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 112) = 0;
  v4 = (a2 + 112);
  *(a2 + 160) = 0;
  *a2 = &unk_283BE6208;
  *(a2 + 8) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v5 = this->i64[1];
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  v6 = this->i64[0];
  *(a2 + 204) = 65;
  *(a2 + 96) = v6;
  statistics::Statistics::makeMostRecentDatum(a2);
  v7 = &unk_283BEB0A8;
  v12 = 127;
  v9 = vextq_s8(this[1], this[1], 8uLL);
  v8 = this[2];
  v10 = 0;
  v11 = 0;
  statistics::RawQuantitySample::operator=(*v4, &v7);
  PB::Base::~Base(&v7);
}

id HDPredicateForContainerIdentifierAndDatabaseScope(uint64_t a1, uint64_t a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = _HDSQLiteValueForString();
  v5 = [v3 predicateWithProperty:@"container_id" equalToValue:v4];

  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v8 = [v6 predicateWithProperty:@"database_scope" equalToValue:v7];

  v9 = MEMORY[0x277D10B20];
  v13[0] = v5;
  v13[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v9 predicateMatchingAllPredicates:v10];

  return v11;
}

void sub_228FC9154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__164(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228FCA098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__165(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228FCA264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FCA448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FCA62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FCA7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FCA994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FCAB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *health::POSIXMappedFileExtent::POSIXMappedFileExtent(void *this, uint64_t a2, uint64_t a3, void *a4)
{
  this[1] = a2;
  this[2] = a3;
  *this = &unk_283BF1AD8;
  this[3] = a4;
  return this;
}

{
  this[1] = a2;
  this[2] = a3;
  *this = &unk_283BF1AD8;
  this[3] = a4;
  return this;
}

void health::POSIXMappedFileExtent::~POSIXMappedFileExtent(health::POSIXMappedFileExtent *this)
{
  *this = &unk_283BF1AD8;
  munmap(*(this + 3), *(this + 2));
}

{
  health::POSIXMappedFileExtent::~POSIXMappedFileExtent(this);

  JUMPOUT(0x22AAC8590);
}

uint64_t health::POSIXFile::POSIXFile(uint64_t this, int a2)
{
  *this = &unk_283BF1B00;
  *(this + 8) = a2;
  return this;
}

{
  *this = &unk_283BF1B00;
  *(this + 8) = a2;
  return this;
}

void health::POSIXFile::~POSIXFile(health::POSIXFile *this)
{
  *this = &unk_283BF1B00;
  health::POSIXFile::close(this);
}

{
  health::POSIXFile::~POSIXFile(this);

  JUMPOUT(0x22AAC8590);
}

void health::FormatString<int &,char *>(std::string *a1, std::string *a2, char **a3, char **a4)
{
  v4[0] = a4;
  v4[1] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<int &,char *>(a2, a1, 0, v4);
}

void sub_228FCC7C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatString<unsigned long &,long long &,int &,char *>(std::string *a1, std::string *a2, char **a3, char **a4, char **a5, char **a6)
{
  v6[0] = a6;
  v6[1] = a5;
  v6[2] = a4;
  v6[3] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<unsigned long &,long long &,int &,char *>(a2, a1, 0, v6);
}

void sub_228FCC830(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::POSIXFile::mmap(health::POSIXFile *this, char *a2, char *a3)
{
  v11 = a3;
  v12 = a2;
  if (mmap(0, a3, 1, 2, *(this + 2), a2) != -1)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v5 = *__error();
  v6 = std::system_category();
  v7 = __error();
  v8 = __error();
  v9 = strerror(*v8);
  health::FormatString<unsigned long &,long long &,int &,char *>(&v10, "Error occurred attempting to mmap {0} bytes at {1}: {2} {3}", &v11, &v12, v7, &v9);
  MEMORY[0x22AAC8340](exception, v5, v6, &v10);
  __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
}

void health::FormatString<long long &,int &,char *>(std::string *a1, char **a2, char **a3, char **a4)
{
  v4[0] = a4;
  v4[1] = a3;
  v4[2] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<long long &,int &,char *>("Error occurred while attempting to truncate file to length {0}: {1} {2}", a1, 0, v4);
}

void sub_228FCCA60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::POSIXFile::close(uint64_t this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(this + 8) != -1)
  {
    v1 = this;
    v2 = 3;
    v27 = 3;
    while (1)
    {
      this = close(*(v1 + 8));
      if (!this)
      {
        break;
      }

      if (*__error() != 4)
      {
        _HKInitializeLogging();
        v3 = MEMORY[0x277CCC2A0];
        v4 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          v15 = *__error();
          v16 = __error();
          v17 = strerror(*v16);
          *buf = 67109378;
          *&buf[4] = v15;
          LOWORD(v29) = 2082;
          *(&v29 + 2) = v17;
          _os_log_fault_impl(&dword_228986000, v4, OS_LOG_TYPE_FAULT, "Unexpected errno value for file close: %d %{public}s", buf, 0x12u);
          v4 = *v3;
        }

        std::string::basic_string[abi:ne200100]<0>(v26, "false");
        std::string::basic_string[abi:ne200100]<0>(v25, "close");
        std::string::basic_string[abi:ne200100]<0>(v24, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDVirtualFilesystem.cpp");
        v5 = __error();
        v6 = __error();
        *buf = strerror(*v6);
        health::FormatString<int &,char *>(&__p, "Unexpected errno value for file close: {0} {1}", v5, buf);
        health::_HDAssertImplementation<std::logic_error>(v4, v26, v25, v24, 137, &__p);
      }

      if (!--v2)
      {
        _HKInitializeLogging();
        v7 = MEMORY[0x277CCC2A0];
        v8 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          v12 = *__error();
          v13 = __error();
          v14 = strerror(*v13);
          *buf = 67109634;
          *&buf[4] = 3;
          LOWORD(v29) = 1024;
          *(&v29 + 2) = v12;
          WORD3(v29) = 2082;
          *(&v29 + 1) = v14;
          _os_log_fault_impl(&dword_228986000, v8, OS_LOG_TYPE_FAULT, "Reached max retry count (%d) for file close: %d %{public}s", buf, 0x18u);
          v8 = *v7;
        }

        std::string::basic_string[abi:ne200100]<0>(v22, "false");
        std::string::basic_string[abi:ne200100]<0>(v21, "close");
        std::string::basic_string[abi:ne200100]<0>(v20, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDVirtualFilesystem.cpp");
        v10 = __error();
        v11 = __error();
        v18 = strerror(*v11);
        memset(&v19, 0, sizeof(v19));
        *buf = &v18;
        *&v29 = v10;
        *(&v29 + 1) = &v27;
        health::FormatImplementation<int const&,int &,char *>("Reached max retry count ({0}) for file close: {1} {2}", &v19, 0, buf);
        health::_HDAssertImplementation<std::logic_error>(v8, v22, v21, v20, 142, &v19);
      }
    }

    *(v1 + 8) = -1;
  }

  return this;
}

void sub_228FCCDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 113) < 0)
  {
    operator delete(*(v45 - 136));
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  _Unwind_Resume(exception_object);
}

int *health::POSIXFilesystem::open@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v4 = a3;
  v8 = a3 & 1;
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = open(v9, (a3 >> 1) & 2 | ((a3 & 1) << 9) | (32 * ((a3 >> 1) & 1)), 384);
  if ((v10 & 0x80000000) != 0)
  {
    if (v8 || (result = __error(), *result != 2))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v15 = *__error();
      v16 = std::system_category();
      v17 = __error();
      v18 = __error();
      v24 = strerror(*v18);
      health::FormatString<std::string const&,int &,char *>(&v25, "Error occurred opening file at '{0}': {1} {2}", a2, v17, &v24);
      MEMORY[0x22AAC8340](exception, v15, v16, &v25);
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v11 = v10;
    if (!_HDIsUnitTesting)
    {
      v12 = fcntl(v10, 63);
      if ((v12 & 0x80000000) == 0 && v12 != 2 && fcntl(v11, 64, 2) == -1)
      {
        v19 = __cxa_allocate_exception(0x20uLL);
        v20 = *__error();
        v21 = std::system_category();
        v22 = __error();
        v23 = __error();
        v24 = strerror(*v23);
        health::FormatString<std::string const&,int &,char *>(&v25, "Failed to set protection class when creating file at '{0}': {1} {2}", a2, v22, &v24);
        MEMORY[0x22AAC8340](v19, v20, v21, &v25);
        __cxa_throw(v19, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }
    }

    result = (*(*a1 + 32))(a1, v11);
    if ((~v4 & 0xC) == 0)
    {
      return (*(**a4 + 56))(*a4, 0);
    }
  }

  return result;
}

void sub_228FCD100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void health::FormatString<std::string const&,int &,char *>(std::string *a1, std::string *a2, char **a3, char **a4, char **a5)
{
  v5[0] = a5;
  v5[1] = a4;
  v5[2] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<std::string const&,int &,char *>(a2, a1, 0, v5);
}

void sub_228FCD1B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

int *health::POSIXFilesystem::unlink(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  result = unlink(v3);
  if (result)
  {
    result = __error();
    if (*result != 2)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = *__error();
      v7 = std::system_category();
      v8 = __error();
      v9 = __error();
      v10 = strerror(*v9);
      health::FormatString<std::string const&,int &,char *>(&v11, "Error occurred unlinking file at '{0}': {1} {2}", a2, v8, &v10);
      MEMORY[0x22AAC8340](exception, v6, v7, &v11);
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }

  return result;
}

void sub_228FCD2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *health::InMemoryMappedFileExtent::InMemoryMappedFileExtent(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  result[1] = a2;
  result[2] = a3;
  *result = &unk_283BF1B58;
  v4 = a4[1];
  result[3] = *a4;
  result[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  result[1] = a2;
  result[2] = a3;
  *result = &unk_283BF1B58;
  v4 = a4[1];
  result[3] = *a4;
  result[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void health::InMemoryMappedFileExtent::~InMemoryMappedFileExtent(health::InMemoryMappedFileExtent *this)
{
  *this = &unk_283BF1B58;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_283BF1B58;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_283BF1B58;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t health::InMemoryFile::InMemoryFile(uint64_t result, void *a2)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_283BF1B80;
  v2 = a2[1];
  *(result + 24) = *a2;
  *(result + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = 0;
  return result;
}

{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_283BF1B80;
  v2 = a2[1];
  *(result + 24) = *a2;
  *(result + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = 0;
  return result;
}

void *health::InMemoryFile::write(health::InMemoryFile *this, uint64_t a2, const unsigned __int8 *__src, size_t __n)
{
  v4 = *(this + 10);
  if (v4 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Read-only file.");
    goto LABEL_16;
  }

  if (v4 == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "File has been failed.");
LABEL_16:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = __n + a2;
  v10 = *(this + 3);
  v11 = *v10;
  if (__n + a2 > v10[1] - *v10)
  {
    v12 = (v9 & 0xFFFFFFFFFFF00000) + 0x100000;
    if (v10[2] - v11 < v12)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v13 = *(this + 3);
    v11 = *v13;
    v14 = *(v13 + 8) - *v13;
    if (v9 <= v14)
    {
      if (v9 < v14)
      {
        *(v13 + 8) = &v11[v9];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(v13, v9 - v14);
      v11 = **(this + 3);
    }
  }

  return memcpy(&v11[a2], __src, __n);
}

size_t health::InMemoryFile::read(health::InMemoryFile *this, unint64_t a2, unsigned __int8 *__dst, size_t a4)
{
  if (*(this + 10) == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "File has been failed.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = **(this + 3);
  v5 = *(*(this + 3) + 8) - v4;
  v6 = v5 > a2;
  v7 = v5 - a2;
  if (!v6)
  {
    return 0;
  }

  if (v7 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7;
  }

  memcpy(__dst, (v4 + a2), v8);
  return v8;
}

uint64_t health::InMemoryFile::size(health::InMemoryFile *this)
{
  if (*(this + 10) == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "File has been failed.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*(this + 3) + 8) - **(this + 3);
}

void health::InMemoryFile::truncate(health::InMemoryFile *this, unint64_t a2)
{
  if (*(this + 10) == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "File has been failed.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *(this + 3);
  v3 = *(v2 + 8) - *v2;
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {

    std::vector<unsigned char>::__append(v2, v5);
  }

  else if (!v4)
  {
    *(v2 + 8) = *v2 + a2;
  }
}

void health::InMemoryFilesystem::open(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v5 = a3;
  v10 = a2;
  v7 = std::__tree<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), a2, &v10);
  v9 = v7[7];
  v8 = v7[8];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    *a5 = v9;
    a5[1] = v8;
  }

  else
  {
    if (v5)
    {
      operator new();
    }

    *a5 = 0;
    a5[1] = 0;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_228FCDC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void health::InMemoryFilesystem::unlink(void *a1, char *a2)
{
  v2 = a1 + 2;
  v3 = a1[2];
  if (v3)
  {
    v6 = a1 + 2;
    do
    {
      v7 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
      if ((v7 & 0x80u) == 0)
      {
        v6 = v3;
      }

      v3 = *(v3 + ((v7 >> 4) & 8));
    }

    while (v3);
    if (v6 != v2 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v6 + 32) & 0x80) == 0)
    {
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        v10 = v6;
        do
        {
          v9 = v10[2];
          v11 = *v9 == v10;
          v10 = v9;
        }

        while (!v11);
      }

      if (a1[1] == v6)
      {
        a1[1] = v9;
      }

      v12 = a1[2];
      --a1[3];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v12, v6);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<health::InMemoryFile>>,0>((v6 + 4));

      operator delete(v6);
    }
  }
}

void health::InMemoryFile::~InMemoryFile(health::InMemoryFile *this)
{
  *this = &unk_283BF1B80;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  *this = &unk_283BF1B80;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x22AAC8590);
}

void health::InMemoryFilesystem::~InMemoryFilesystem(health::InMemoryFilesystem *this)
{
  *this = &unk_283BF1CB8;
  std::__tree<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>>>::destroy(*(this + 2));
}

{
  *this = &unk_283BF1CB8;
  std::__tree<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>>>::destroy(*(this + 2));

  JUMPOUT(0x22AAC8590);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<health::InMemoryFile>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<health::InMemoryFile>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<health::POSIXFilesystem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1D08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

void health::FormatImplementation<int &,char *>(std::string *a1, std::string *a2, std::string::size_type a3, char ***a4)
{
  v30 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v30 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    --v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 - v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v30 = &v11->__r_.__value_.__s.__data_[2];
    v21 = v11->__r_.__value_.__s.__data_[2];
    if ((v21 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v22 = 0;
      v23 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v30 = v23;
        v22 = (v21 & 0xF) + 10 * v22;
        v24 = *v23++;
        LOBYTE(v21) = v24;
      }

      while ((v24 - 58) >= 0xFFFFFFF6);
      v30 = v23;
      if (*(v23 - 1) == 125)
      {
        health::FormatterParameters<0ul,int &,char *>::formatOptionsAtIndex<int &,char *>(v22);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_49;
  }

  health::FormatOptions::FormatOptions(&v26, &v30);
  v13 = v30;
  if (*(&v26 + 1))
  {
    if (*(&v26 + 1) == 1)
    {
      v14 = **a4;
      __p = v14;
      if (v14)
      {
        v14 = strlen(v14);
      }

      v32 = v14;
      v33 = v26;
      v34 = v27;
      v35 = v28;
      v36 = v29;
      v15 = *(&v27 + 1);
      if (*(&v27 + 1) <= v14)
      {
        v15 = v14;
      }

      if (v27)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      health::FormatImplementation<int &,char *>(v30, a2, v16 + a3 - v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = a2->__r_.__value_.__r.__words[0];
      }

      health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v26, v17 + a3 - v9, &__p);
      goto LABEL_39;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_49:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::TypeFormatter<int &,void>::TypeFormatter(&__p, a4[1], &v26);
  v18 = BYTE7(v33);
  if (SBYTE7(v33) < 0)
  {
    v18 = v32;
  }

  v19 = *(&v27 + 1);
  if (*(&v27 + 1) <= v18)
  {
    v19 = v18;
  }

  if (v27)
  {
    v18 = v19;
  }

  health::FormatImplementation<int &,char *>(v13, a2, v18 + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v26, v20 + a3 - v9, &__p);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p);
  }

LABEL_39:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,int &,char *>::formatOptionsAtIndex<int &,char *>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<unsigned long &,long long &,int &,char *>(std::string *a1, std::string *a2, std::string::size_type a3, char ***a4)
{
  v34 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v34 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v34 = &v11->__r_.__value_.__s.__data_[2];
    v25 = v11->__r_.__value_.__s.__data_[2];
    if ((v25 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v26 = 0;
      v27 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v34 = v27;
        v26 = (v25 & 0xF) + 10 * v26;
        v28 = *v27++;
        LOBYTE(v25) = v28;
      }

      while ((v28 - 58) >= 0xFFFFFFF6);
      v34 = v27;
      if (*(v27 - 1) == 125)
      {
        health::FormatterParameters<0ul,unsigned long &,long long &,int &,char *>::formatOptionsAtIndex<unsigned long &,long long &,int &,char *>(v26);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_70;
  }

  health::FormatOptions::FormatOptions(&v30, &v34);
  v13 = v34;
  if (*(&v30 + 1) > 1)
  {
    if (*(&v30 + 1) == 2)
    {
      health::TypeFormatter<int &,void>::TypeFormatter(&__p, a4[1], &v30);
      v23 = BYTE7(v37);
      if (SBYTE7(v37) < 0)
      {
        v23 = v36;
      }

      v24 = *(&v31 + 1);
      if (*(&v31 + 1) <= v23)
      {
        v24 = v23;
      }

      if (v31)
      {
        v23 = v24;
      }

      health::FormatImplementation<unsigned long &,long long &,int &,char *>(v13, a2, v23 + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }

      goto LABEL_58;
    }

    if (*(&v30 + 1) != 3)
    {
      goto LABEL_71;
    }

    v17 = **a4;
    __p = v17;
    if (v17)
    {
      v17 = strlen(v17);
    }

    v36 = v17;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v18 = *(&v31 + 1);
    if (*(&v31 + 1) <= v17)
    {
      v18 = v17;
    }

    if (v31)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    health::FormatImplementation<unsigned long &,long long &,int &,char *>(v34, a2, v19 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v30, v20 + a3 + v9, &__p);
  }

  else
  {
    if (*(&v30 + 1))
    {
      if (*(&v30 + 1) == 1)
      {
        health::TypeFormatter<long long &,void>::TypeFormatter(&__p, a4[2], &v30);
        v14 = BYTE7(v37);
        if (SBYTE7(v37) < 0)
        {
          v14 = v36;
        }

        v15 = *(&v31 + 1);
        if (*(&v31 + 1) <= v14)
        {
          v15 = v14;
        }

        if (v31)
        {
          v14 = v15;
        }

        health::FormatImplementation<unsigned long &,long long &,int &,char *>(v13, a2, v14 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

        goto LABEL_58;
      }

LABEL_71:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_70:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<unsigned long &,void>::TypeFormatter(&__p, a4[3], &v30);
    v21 = BYTE7(v37);
    if (SBYTE7(v37) < 0)
    {
      v21 = v36;
    }

    v22 = *(&v31 + 1);
    if (*(&v31 + 1) <= v21)
    {
      v22 = v21;
    }

    if (v31)
    {
      v21 = v22;
    }

    health::FormatImplementation<unsigned long &,long long &,int &,char *>(v13, a2, v21 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

LABEL_58:
    health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v30, v16 + a3 + v9, &__p);
    if (SBYTE7(v37) < 0)
    {
      operator delete(__p);
    }
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,unsigned long &,long long &,int &,char *>::formatOptionsAtIndex<unsigned long &,long long &,int &,char *>(uint64_t a1)
{
  if (!a1 || a1 == 1 || a1 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  }

  else
  {
    v3 = __cxa_allocate_exception(0x10uLL);
    exception = v3;
    if (a1 == 3)
    {
      std::runtime_error::runtime_error(v3, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(v3, "Parameter index out of bounds.");
    }
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::TypeFormatter<unsigned long &,void>::TypeFormatter(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v6 = v16;
  if (*(a3 + 16) == 1)
  {
    *(v19 + *(v16 - 24)) = *(a3 + 24);
  }

  if (*(a3 + 32) == 1)
  {
    *(&v18 + *(v6 - 24)) = *(a3 + 40);
  }

  v7 = (&v16 + *(v6 - 24));
  v8 = *(a3 + 52);
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v9 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v14);
  }

  v7[1].__fmtflags_ = v8;
  MEMORY[0x22AAC83C0](&v16, *a2);
  if ((v24 & 0x10) != 0)
  {
    v11 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v11 = v20;
    }

    v12 = v19[3];
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v15) = 0;
      goto LABEL_20;
    }

    v12 = v19[0];
    v11 = v19[2];
  }

  v10 = v11 - v12;
  if (v11 - v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v11 - v12;
  if (v10)
  {
    memmove(&v14, v12, v10);
  }

LABEL_20:
  *(&v14 + v10) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  v16 = *MEMORY[0x277D82828];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
  v17 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v18);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&v25);
  return a1;
}

void sub_228FCEF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(va);
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<health::POSIXMappedFileExtent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1D58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

void health::FormatImplementation<long long &,int &,char *>(std::string *a1, std::string *a2, std::string::size_type a3, char ***a4)
{
  v32 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v32 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v32 = &v11->__r_.__value_.__s.__data_[2];
    v23 = v11->__r_.__value_.__s.__data_[2];
    if ((v23 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v24 = 0;
      v25 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v32 = v25;
        v24 = (v23 & 0xF) + 10 * v24;
        v26 = *v25++;
        LOBYTE(v23) = v26;
      }

      while ((v26 - 58) >= 0xFFFFFFF6);
      v32 = v25;
      if (*(v25 - 1) == 125)
      {
        health::FormatterParameters<0ul,long long &,int &,char *>::formatOptionsAtIndex<long long &,int &,char *>(v24);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_59;
  }

  health::FormatOptions::FormatOptions(&v28, &v32);
  v13 = v32;
  if (*(&v28 + 1))
  {
    if (*(&v28 + 1) != 1)
    {
      if (*(&v28 + 1) == 2)
      {
        v14 = **a4;
        __p = v14;
        if (v14)
        {
          v14 = strlen(v14);
        }

        v34 = v14;
        v35 = v28;
        v36 = v29;
        v37 = v30;
        v38 = v31;
        v15 = *(&v29 + 1);
        if (*(&v29 + 1) <= v14)
        {
          v15 = v14;
        }

        if (v29)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        health::FormatImplementation<long long &,int &,char *>(v32, a2, v16 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = a2->__r_.__value_.__r.__words[0];
        }

        health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v28, v17 + a3 + v9, &__p);
        goto LABEL_49;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_59:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<int &,void>::TypeFormatter(&__p, a4[1], &v28);
    v18 = BYTE7(v35);
    if (SBYTE7(v35) < 0)
    {
      v18 = v34;
    }

    v19 = *(&v29 + 1);
    if (*(&v29 + 1) <= v18)
    {
      v19 = v18;
    }

    if (v29)
    {
      v18 = v19;
    }

    health::FormatImplementation<long long &,int &,char *>(v13, a2, v18 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    health::TypeFormatter<long long &,void>::TypeFormatter(&__p, a4[2], &v28);
    v21 = BYTE7(v35);
    if (SBYTE7(v35) < 0)
    {
      v21 = v34;
    }

    v22 = *(&v29 + 1);
    if (*(&v29 + 1) <= v21)
    {
      v22 = v21;
    }

    if (v29)
    {
      v21 = v22;
    }

    health::FormatImplementation<long long &,int &,char *>(v13, a2, v21 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v28, v20 + a3 + v9, &__p);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_49:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,long long &,int &,char *>::formatOptionsAtIndex<long long &,int &,char *>(uint64_t a1)
{
  if (a1 && a1 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v2 = exception;
    if (a1 == 2)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v2, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<int const&,int &,char *>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v55 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v55 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v55 = &v11->__r_.__value_.__s.__data_[2];
    v45 = v11->__r_.__value_.__s.__data_[2];
    if ((v45 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v46 = 0;
      v47 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v55 = v47;
        v46 = (v45 & 0xF) + 10 * v46;
        v48 = *v47++;
        LOBYTE(v45) = v48;
      }

      while ((v48 - 58) >= 0xFFFFFFF6);
      v55 = v47;
      if (*(v47 - 1) == 125)
      {
        health::FormatterParameters<0ul,int const&,int &,char *>::formatOptionsAtIndex<int const&,int &,char *>(v46);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_125;
  }

  health::FormatOptions::FormatOptions(&v51, &v55);
  v13 = v55;
  if (!*(&v51 + 1))
  {
    v22 = *(a4 + 16);
    __p[1] = 0;
    v57 = 0;
    __p[0] = 0;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v60);
    v23 = v60;
    if (v52 == 1)
    {
      *(&v62 + *(v60 - 3) + 8) = *(&v52 + 1);
    }

    v50 = v13;
    if (v53 == 1)
    {
      *(&v62 + *(v23 - 3)) = *(&v53 + 1);
    }

    v24 = (&v60 + *(v23 - 3));
    v25 = SLOBYTE(__c[1]);
    if (v24[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v24);
      v26 = std::locale::use_facet(__dst, MEMORY[0x277D82680]);
      (v26->__vftable[2].~facet_0)(v26, 32);
      std::locale::~locale(__dst);
    }

    v24[1].__fmtflags_ = v25;
    MEMORY[0x22AAC83A0](&v60, *v22);
    if ((v69 & 0x10) != 0)
    {
      v28 = v68;
      if (v68 < *(&__src + 1))
      {
        v68 = *(&__src + 1);
        v28 = *(&__src + 1);
      }

      v29 = __src;
    }

    else
    {
      if ((v69 & 8) == 0)
      {
        v27 = 0;
        HIBYTE(v59) = 0;
        goto LABEL_59;
      }

      v29 = *(&v62 + 1);
      v28 = *(&v63 + 1);
    }

    v27 = v28 - v29;
    if (v28 - v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v27 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v59) = v28 - v29;
    if (v27)
    {
      memmove(__dst, v29, v27);
    }

LABEL_59:
    *(&__dst[0].__locale_ + v27) = 0;
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *&__dst[0].__locale_;
    v57 = v59;
    v60 = *MEMORY[0x277D82828];
    *(&v60 + *(v60 - 3)) = *(MEMORY[0x277D82828] + 24);
    v61 = MEMORY[0x277D82878] + 16;
    if (v67 < 0)
    {
      operator delete(v66);
    }

    v61 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v62);
    std::ostream::~ostream();
    MEMORY[0x22AAC8550](&v70);
    v30 = SHIBYTE(v57);
    if (v57 >= 0)
    {
      v31 = HIBYTE(v57);
    }

    else
    {
      v31 = __p[1];
    }

    v32 = *(&v52 + 1);
    if (*(&v52 + 1) <= v31)
    {
      v32 = v31;
    }

    if (v52)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    health::FormatImplementation<int const&,int &,char *>(v50, a2, v33 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = a2;
    }

    else
    {
      v34 = a2->__r_.__value_.__r.__words[0];
    }

    v35 = v34 + a3 + v9;
    if (v52 == 1)
    {
      v36 = *(&v52 + 1) - v31;
      if (*(&v52 + 1) > v31)
      {
        if (v51)
        {
          if (v51 != 1)
          {
            if (v51 != 2 || (memset(v35, LOBYTE(__c[1]), *(&v52 + 1) - v31), !v31))
            {
LABEL_90:
              if ((v30 & 0x80000000) == 0)
              {
                goto LABEL_93;
              }

              goto LABEL_91;
            }

            if (v30 >= 0)
            {
              v37 = __p;
            }

            else
            {
              v37 = __p[0];
            }

            v38 = &v35[v36];
LABEL_89:
            memmove(v38, v37, v31);
            goto LABEL_90;
          }

          if (v36 >= 2)
          {
            if (v36 >> 1 <= 1)
            {
              v39 = 1;
            }

            else
            {
              v39 = v36 >> 1;
            }

            memset(v35, LOBYTE(__c[1]), v39);
            v35 += v39;
          }

          if (v31)
          {
            if (v30 >= 0)
            {
              v40 = __p;
            }

            else
            {
              v40 = __p[0];
            }

            memmove(v35, v40, v31);
          }

          if (v36 - (v36 >> 1) <= 1)
          {
            v41 = 1;
          }

          else
          {
            v41 = v36 - (v36 >> 1);
          }

          v42 = LOBYTE(__c[1]);
          v43 = &v35[v31];
        }

        else
        {
          if (v31)
          {
            if (v30 >= 0)
            {
              v44 = __p;
            }

            else
            {
              v44 = __p[0];
            }

            memmove(v35, v44, v31);
          }

          v42 = LOBYTE(__c[1]);
          v43 = &v35[v31];
          v41 = v36;
        }

        memset(v43, v42, v41);
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_93;
        }

LABEL_91:
        v21 = __p[0];
        goto LABEL_92;
      }
    }

    if (!v31)
    {
      goto LABEL_90;
    }

    if (v30 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    v38 = v34 + a3 + v9;
    goto LABEL_89;
  }

  if (*(&v51 + 1) != 1)
  {
    if (*(&v51 + 1) == 2)
    {
      v14 = **a4;
      v60 = v14;
      if (v14)
      {
        v14 = strlen(v14);
      }

      v62 = v51;
      v63 = v52;
      __src = v53;
      v61 = v14;
      v65 = *__c;
      v15 = *(&v52 + 1);
      if (*(&v52 + 1) <= v14)
      {
        v15 = v14;
      }

      if (v52)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      health::FormatImplementation<int const&,int &,char *>(v55, a2, v16 + a3 + v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = a2->__r_.__value_.__r.__words[0];
      }

      health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v51, v17 + a3 + v9, &v60);
      goto LABEL_93;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_125:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::TypeFormatter<int &,void>::TypeFormatter(&v60, *(a4 + 8), &v51);
  v18 = BYTE7(v62);
  if (SBYTE7(v62) < 0)
  {
    v18 = v61;
  }

  v19 = *(&v52 + 1);
  if (*(&v52 + 1) <= v18)
  {
    v19 = v18;
  }

  if (v52)
  {
    v18 = v19;
  }

  health::FormatImplementation<int const&,int &,char *>(v13, a2, v18 + a3 + v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v51, v20 + a3 + v9, &v60);
  if (SBYTE7(v62) < 0)
  {
    v21 = v60;
LABEL_92:
    operator delete(v21);
  }

LABEL_93:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,int const&,int &,char *>::formatOptionsAtIndex<int const&,int &,char *>(uint64_t a1)
{
  if (a1 && a1 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v2 = exception;
    if (a1 == 2)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v2, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatImplementation<std::string const&,int &,char *>(std::string *a1, std::string *a2, std::string::size_type a3, char ***a4)
{
  v32 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v32 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    ++v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 + v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v32 = &v11->__r_.__value_.__s.__data_[2];
    v23 = v11->__r_.__value_.__s.__data_[2];
    if ((v23 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v24 = 0;
      v25 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v32 = v25;
        v24 = (v23 & 0xF) + 10 * v24;
        v26 = *v25++;
        LOBYTE(v23) = v26;
      }

      while ((v26 - 58) >= 0xFFFFFFF6);
      v32 = v25;
      if (*(v25 - 1) == 125)
      {
        health::FormatterParameters<0ul,std::string const&,int &,char *>::formatOptionsAtIndex<std::string const&,int &,char *>(v24);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_59;
  }

  health::FormatOptions::FormatOptions(&v28, &v32);
  v13 = v32;
  if (*(&v28 + 1))
  {
    if (*(&v28 + 1) != 1)
    {
      if (*(&v28 + 1) == 2)
      {
        v14 = **a4;
        __p = v14;
        if (v14)
        {
          v14 = strlen(v14);
        }

        v34 = v14;
        v35 = v28;
        v36 = v29;
        v37 = v30;
        v38 = v31;
        v15 = *(&v29 + 1);
        if (*(&v29 + 1) <= v14)
        {
          v15 = v14;
        }

        if (v29)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        health::FormatImplementation<std::string const&,int &,char *>(v32, a2, v16 + a3 + v9, a4);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = a2->__r_.__value_.__r.__words[0];
        }

        health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v28, v17 + a3 + v9, &__p);
        goto LABEL_49;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_59:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    health::TypeFormatter<int &,void>::TypeFormatter(&__p, a4[1], &v28);
    v18 = BYTE7(v35);
    if (SBYTE7(v35) < 0)
    {
      v18 = v34;
    }

    v19 = *(&v29 + 1);
    if (*(&v29 + 1) <= v18)
    {
      v19 = v18;
    }

    if (v29)
    {
      v18 = v19;
    }

    health::FormatImplementation<std::string const&,int &,char *>(v13, a2, v18 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    health::TypeFormatter<std::string &,void>::TypeFormatter(&__p, a4[2], &v28);
    v21 = BYTE7(v35);
    if (SBYTE7(v35) < 0)
    {
      v21 = v34;
    }

    v22 = *(&v29 + 1);
    if (*(&v29 + 1) <= v21)
    {
      v22 = v21;
    }

    if (v29)
    {
      v21 = v22;
    }

    health::FormatImplementation<std::string const&,int &,char *>(v13, a2, v21 + a3 + v9, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v28, v20 + a3 + v9, &__p);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

LABEL_49:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,std::string const&,int &,char *>::formatOptionsAtIndex<std::string const&,int &,char *>(uint64_t a1)
{
  if (a1 && a1 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v2 = exception;
    if (a1 == 2)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v2, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void std::__shared_ptr_emplace<health::POSIXFile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1DA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<health::InMemoryMappedFileExtent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, __int128 **a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = (v6 + 1);
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4;
}

void sub_228FD059C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<health::InMemoryFile>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<health::InMemoryFile>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<health::InMemoryFile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BF1E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

uint64_t HDCodableWorkoutConfigurationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v42 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v43 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v43 & 0x7F) << v23;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_59:
          v38 = 32;
LABEL_68:
          *(a1 + v38) = v22;
          break;
        case 4:
          *(a1 + 48) |= 4u;
          v41 = 0;
          v29 = [a2 position] + 8;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 24) = v41;
          break;
        case 5:
          v14 = PBReaderReadString();
          v15 = *(a1 + 40);
          *(a1 + 40) = v14;

          break;
        default:
          goto LABEL_54;
      }

LABEL_71:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 48) |= 1u;
      while (1)
      {
        v45 = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v45 & 0x7F) << v31;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v11 = v32++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v33;
      }

LABEL_63:
      v38 = 8;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_54:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_71;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 48) |= 2u;
      while (1)
      {
        v44 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v44 & 0x7F) << v16;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_67;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_67:
      v38 = 16;
    }

    goto LABEL_68;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableRoutineLocationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228FD39F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_228FD55B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

uint64_t statistics::Interval::Interval(uint64_t this)
{
  *this = &unk_283BF1F08;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_283BF1F08;
  *(this + 24) = 0;
  return this;
}

void statistics::Interval::~Interval(statistics::Interval *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x22AAC8590);
}

double statistics::Interval::Interval(statistics::Interval *this, const statistics::Interval *a2)
{
  *this = &unk_283BF1F08;
  *(this + 6) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 24) = 2;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    result = *(a2 + 1);
    *(this + 24) = v2;
    *(this + 1) = result;
  }

  return result;
}

uint64_t statistics::Interval::operator=(uint64_t a1, const statistics::Interval *a2)
{
  if (a1 != a2)
  {
    statistics::Interval::Interval(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double statistics::swap(statistics *this, statistics::Interval *a2, statistics::Interval *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double statistics::Interval::Interval(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_283BF1F08;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_283BF1F08;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t statistics::Interval::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_283BF1F08;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t statistics::Interval::formatText(statistics::Interval *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "end", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "start", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t statistics::Interval::readFrom(statistics::Interval *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_18;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_30:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 24) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t statistics::Interval::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL statistics::Interval::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t statistics::Interval::hash_value(statistics::Interval *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 24))
    {
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    return *&v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ *&v1;
}

void sub_228FE1BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose((v38 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__166(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228FE2A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__167(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228FE2DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE2FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE3364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE36E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE3ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE3F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE4498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE4854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228FE6070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t health::DataStore::DataStore(uint64_t a1, __int128 *a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return health::DataStore::DataStore(a1, a2, v3, 0);
}

{
  v3[0] = 0;
  v3[1] = 0;
  return health::DataStore::DataStore(a1, a2, v3, 0);
}

uint64_t health::DataStore::DataStore(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  health::BlockAccessFile::BlockAccessFile(a1, a2, v7, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *(a1 + 864) = 0u;
  v9[0] = &unk_283BF1FB8;
  v9[1] = a1;
  v9[3] = v9;
  health::BlockAccessFile::performReadTransactionWithLambda(a1, v9);
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v9);
  if (!*(a1 + 864))
  {
    v8[0] = &unk_283BF2038;
    v8[1] = a1;
    v8[3] = v8;
    health::BlockAccessFile::performWriteTransactionWithLambda(a1, v8);
    std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](v8);
  }

  return a1;
}

void sub_228FE74FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  health::TransactionalFile::~TransactionalFile(v7);
  _Unwind_Resume(a1);
}

uint64_t health::DataStore::performReadTransactionWithLambda(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_283BF20C8;
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = v3;
  health::BlockAccessFile::performReadTransactionWithLambda(a1, v3);
  return std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v3);
}

void sub_228FE75FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::DataStore::checkIntegrity(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_283BF21C8;
  v6[1] = a2;
  v6[3] = v6;
  health::BlockAccessFile::checkIntegrity(a1, v6);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::~__value_func[abi:ne200100](v6);
  v5[0] = &unk_283BF2258;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = v5;
  health::BlockAccessFile::performReadTransactionWithLambda(a1, v5);
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v5);
  return 1;
}

void sub_228FE76E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](&a17);
  if (a2 == 1)
  {
    v24 = *__cxa_begin_catch(a1);
    a10 = *(*(v24 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
    a9 = (*(v24 + 16))();
    health::FormatString<char const*,char const*>(&__p, &a10, &a9);
    v25 = *(v21 + 24);
    if (v25)
    {
      (*(*v25 + 48))(v25, &__p);
      if (a16 < 0)
      {
        operator delete(__p);
      }

      __cxa_end_catch();
      JUMPOUT(0x228FE76B0);
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  _Unwind_Resume(a1);
}

void health::FormatString<char const*,char const*>(std::string *a1, const char **a2, const char **a3)
{
  v3[0] = a3;
  v3[1] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<char const*,char const*>("Integrity checking failed due to caught exception: {0} {1}", a1, 0, v3);
}

void sub_228FE7860(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DataStore::rebuildIndex(health::DataStore *this)
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_283BF22D8;
  v2[1] = this;
  v2[3] = v2;
  health::BlockAccessFile::performWriteTransactionWithLambda(this, v2);
  return std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](v2);
}

void sub_228FE7900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::DataStore::enumerateObjectTreeForInspecting(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_283BF23E8;
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = v3;
  health::BlockAccessFile::performReadTransactionWithLambda(a1, v3);
  return std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](v3);
}

void sub_228FE7998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(health::BlockAccessFile::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void health::DataStore::checkIntegrityForInspecting(uint64_t a1, uint64_t a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 327) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a1 + 304), *(a1 + 312));
  }

  else
  {
    v21 = *(a1 + 304);
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v5 = v19;
  std::string::basic_string[abi:ne200100](v19, size + 4);
  if (v20 < 0)
  {
    v5 = v19[0];
  }

  if (size)
  {
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v21;
    }

    else
    {
      v6 = v21.__r_.__value_.__r.__words[0];
    }

    memmove(v5, v6, size);
  }

  strcpy(v5 + size, "-wal");
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v21;
  }

  else
  {
    v7 = v21.__r_.__value_.__r.__words[0];
  }

  v8 = stat(v7, &v18);
  st_size = v18.st_size;
  if (v20 >= 0)
  {
    v10 = v19;
  }

  else
  {
    v10 = v19[0];
  }

  v11 = stat(v10, &v16);
  if (v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = st_size;
  }

  v13 = v16.st_size;
  if (v11)
  {
    v13 = 0;
  }

  v14 = v13 + v12;
  v17 = v14;
  if (v14 < 0)
  {
    v22[0] = __error();
    v22[1] = &v21;
    memset(&__p, 0, sizeof(__p));
    health::FormatImplementation<std::string &,int &>("HFD file [{0}] size cannot be determined (error {1}).", &__p, 0, v22);
    std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(*(a2 + 24), 0, 0, 0, &__p);
  }

  else
  {
    if (v14)
    {
      goto LABEL_31;
    }

    health::FormatString<std::string &>(&__p, "HFD file [{0}] is empty.", &v21);
    std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(*(a2 + 24), 0, 0, 0, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_31:
  v23[0] = &unk_283BF2468;
  v23[1] = a2;
  v23[3] = v23;
  health::BlockAccessFile::checkIntegrity(a1, v23);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::IntegrityError,long long,long long,std::string const&)>::~__value_func[abi:ne200100](v23);
  v22[5] = 0;
  operator new();
}

void sub_228FE7C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 161) < 0)
  {
    operator delete(*(v15 - 184));
  }

  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

void health::FormatString<std::string &>(std::string *a1, std::string *a2, uint64_t *a3)
{
  v3 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<std::string &>(a2, a1, 0, &v3);
}

void sub_228FE7D70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStore::_checkBlockIntegrity(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t a7)
{
  v16 = a3;
  v17 = a4;
  if (a3 + a4 > a6)
  {
    health::FormatString<std::string &>(&__p, "HFD block [{0}] is not strictly within file bounds.", a5);
    std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(*(a7 + 24), 2, a3, a4, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (health::BlockAccessFile::isBlockUsingFreeSpace(a1, &v16, a2))
  {
    v13 = v16;
    v14 = v17;
    health::FormatString<std::string &>(&__p, "HFD block [{0}] is using space that is marked free.", a5);
    std::function<BOOL ()(health::DataStore::IntegrityError,health::BlockPointer,std::string const&)>::operator()(*(a7 + 24), 3, v13, v14, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}