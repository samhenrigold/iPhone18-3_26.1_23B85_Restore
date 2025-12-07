__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 408);
  v7 = *(*a4 + 416);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 408);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 416);
        break;
      }
    }

    v9 = *(*a4 + 408);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 416);
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
      v14 = *(*a4 + 408);
      v15 = *(*a4 + 416);
      if (v14 == v15)
      {
        v17 = *(*a4 + 408);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 408);
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
        v17 = *(*a4 + 416);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 416);
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
          v24 = *(*a4 + 408);
          v25 = *(*a4 + 416);
          if (v24 == v25)
          {
            v27 = *(*a4 + 408);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 408);
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
            v27 = *(*a4 + 416);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 416);
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
      v11 = *(*a4 + 408);
      if (v6 == v7)
      {
        v12 = *(*a4 + 408);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 416);
            break;
          }
        }

        v12 = *(*a4 + 408);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 416);
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
      v37 = *(*a4 + 408);
      v38 = *(*a4 + 416);
      if (v37 == v38)
      {
        v40 = *(*a4 + 408);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 408);
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
        v40 = *(*a4 + 416);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 416);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 408);
    v14 = *(*a5 + 416);
    if (v13 == v14)
    {
      v16 = *(*a5 + 408);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 408);
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
      v16 = *(*a5 + 416);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 416);
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
        v22 = *(*a5 + 408);
        v23 = *(*a5 + 416);
        if (v22 == v23)
        {
          v25 = *(*a5 + 408);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 408);
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
          v25 = *(*a5 + 416);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 416);
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
            v31 = *(*a5 + 408);
            v32 = *(*a5 + 416);
            if (v31 == v32)
            {
              v34 = *(*a5 + 408);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 408);
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
              v34 = *(*a5 + 416);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 416);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 408);
    v16 = *(*a6 + 416);
    if (v15 == v16)
    {
      v18 = *(*a6 + 408);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 408);
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
      v18 = *(*a6 + 416);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 416);
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
        v24 = *(*a6 + 408);
        v25 = *(*a6 + 416);
        if (v24 == v25)
        {
          v27 = *(*a6 + 408);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 408);
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
          v27 = *(*a6 + 416);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 416);
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
            v33 = *(*a6 + 408);
            v34 = *(*a6 + 416);
            if (v33 == v34)
            {
              v36 = *(*a6 + 408);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 408);
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
              v36 = *(*a6 + 416);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 416);
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
                v42 = *(*a6 + 408);
                v43 = *(*a6 + 416);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 408);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 408);
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
                  v45 = *(*a6 + 416);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 416);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 408);
          v10 = *(*a3 + 416);
          if (v9 == v10)
          {
            v12 = *(*a3 + 408);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 408);
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
            v12 = *(*a3 + 416);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 416);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 408);
      v19 = *(*a3 + 416);
      if (v18 == v19)
      {
        v21 = *(*a3 + 408);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 408);
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
        v21 = *(*a3 + 416);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 416);
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
            v25 = *(*a3 + 408);
            v26 = *(*a3 + 416);
            if (v25 == v26)
            {
              v28 = *(*a3 + 408);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 408);
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
              v28 = *(*a3 + 416);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 416);
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

__n128 HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 192);
  *(a1 + 88) = *(a2 + 208);
  v4 = *(a2 + 240);
  *(a1 + 104) = *(a2 + 224);
  *(a1 + 120) = v4;
  v5 = *(a2 + 128);
  *(a1 + 24) = *(a2 + 144);
  v6 = *(a2 + 176);
  *(a1 + 40) = *(a2 + 160);
  *(a1 + 56) = v6;
  *(a1 + 72) = v3;
  *a1 = *(a2 + 120);
  v7 = *(a2 + 264);
  *(a1 + 136) = *(a2 + 256);
  *(a1 + 8) = v5;
  *(a1 + 152) = 0;
  v8 = a1 + 152;
  *(a1 + 144) = v7;
  v9 = *(a2 + 272);
  v10 = *(a2 + 280);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 152), v9, v10, (v10 - v9) >> 4);
  *(v8 + 24) = *(a2 + 296);
  result = *(a2 + 304);
  v12 = *(a2 + 320);
  *(v8 + 32) = result;
  *(v8 + 48) = v12;
  *(v8 + 64) = *(a2 + 336);
  return result;
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  v2 = *(a2 + 344);
  v31 = (a2 + 352);
  if (v2 == (a2 + 352))
  {
    return;
  }

  v30 = a1 + 2;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
      goto LABEL_21;
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
LABEL_21:
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
        goto LABEL_21;
      }

LABEL_20:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
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
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v5 = v15;
LABEL_22:
    *(v12 + 6) = *(v2 + 10);
    *(v12 + 2) = *(v2 + 3);
    v19 = *(v2 + 4);
    v20 = *(v2 + 5);
    v21 = *(v2 + 6);
    *(v12 + 6) = *(v2 + 7);
    *(v12 + 5) = v21;
    *(v12 + 4) = v20;
    *(v12 + 3) = v19;
    v22 = *(v2 + 8);
    v23 = *(v2 + 9);
    v24 = *(v2 + 10);
    v12[20] = v2[22];
    *(v12 + 9) = v24;
    *(v12 + 8) = v23;
    *(v12 + 7) = v22;
    v12[21] = v2[23];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 22, v2[24], v2[25], (v2[25] - v2[24]) >> 4);
    }

    v12[25] = v2[27];
    v25 = *(v2 + 14);
    v26 = *(v2 + 15);
    *(v12 + 120) = *(v2 + 128);
    *(v12 + 13) = v25;
    *(v12 + 14) = v26;

LABEL_25:
    v27 = v2[1];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v28 = v2[2];
        v29 = *v28 == v2;
        v2 = v28;
      }

      while (!v29);
    }

    v2 = v28;
  }

  while (v28 != v31);
}

void sub_228F02D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::~__hash_table(v11);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEE118;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEE118;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 136;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEE1A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEE1A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 704) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 704))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t a1, double a2)
{
  if (*(a1 + 128) <= a2)
  {
    if (*(a1 + 680) != *(a1 + 672))
    {
      [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
    }

    v5 = 0;
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, double *a2, int a3)
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
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 376), v16, &v39 + 1);
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
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(v11, v21);
    }
  }

LABEL_29:
  v34[0] = v38;
  v34[1] = v39;
  v35 = v40;
  v36 = 0;
  v37 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v34);
  if (!*(a1 + 344) || *(a1 + 320) <= v6)
  {
    *(a1 + 312) = v5;
    *(a1 + 320) = v6;
    *(a1 + 328) = v7;
    *(a1 + 336) = v8;
    *(a1 + 344) = v9;
    *(a1 + 345) = v10;
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
    v27 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(v11, v16);
    v28 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsForSource(v11, v27);
    if (!*(v28 + 216) || *(v28 + 24) <= v6)
    {
      v28[23] = v5;
      *(v28 + 24) = v6;
      *(v28 + 25) = v7;
      v28[26] = v8;
      *(v28 + 216) = v9;
      *(v28 + 217) = v10;
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
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 560, &v31);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 706) == 1)
  {
    *(a1 + 708) = 1;
  }

  else
  {
    *(a1 + 708) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 560), *(a1 + 568), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 568) - *(a1 + 560)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F03E64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 584), *(a1 + 40));
  *(v8 - 4) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v9 = 0uLL;
  memset(v18, 0, sizeof(v18));
  *(a1 + 128) = 0;
  *(a1 + 216) = *&v18[84];
  *(a1 + 232) = *&v18[100];
  *(a1 + 248) = *&v18[116];
  *(a1 + 152) = *&v18[20];
  *(a1 + 168) = *&v18[36];
  *(a1 + 184) = *&v18[52];
  *(a1 + 200) = *&v18[68];
  *(a1 + 136) = *&v18[4];
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v10 = *(a1 + 280);
  if (v10)
  {
    *(a1 + 288) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(a1 + 344) = 0;
  *(a1 + 312) = v9;
  *(a1 + 328) = v9;
  *(a1 + 280) = v9;
  *(a1 + 296) = v9;
  if (*(a1 + 368))
  {
    v11 = *(a1 + 352);
    v12 = *(a1 + 360);
    *(a1 + 352) = a1 + 360;
    *(v12 + 16) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
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

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 584));
  *(a1 + 568) = *(a1 + 560);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 708) == 1)
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

    *(a1 + 708) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 704))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F041B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 704) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F04600(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C406C794F1BLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, (v15 + 120));
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 704) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::archive(uint64_t a1, int *a2)
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
  HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>::archive(v6, (a2 + 2));
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = *a2;
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(*(a2 + 46), *(a2 + 46), 8uLL);
  v6[1] = *(a2 + 25);
  v6[2] = *(a2 + 26);
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

void HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>::archive(uint64_t a1, uint64_t a2)
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
  HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::archive(v5, a2);
  statistics::Statistics::operator=(*(a1 + 128), v5);
  statistics::Statistics::~Statistics(v5);
  statistics::Statistics::makeAuxiliaryStatistics(a1);
  HDStatisticsTimeInterval::archive((a2 + 136), v5);
  statistics::Statistics::operator=(*v4, v5);
  statistics::Statistics::~Statistics(v5);
}

int8x16_t HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::archive(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  v4 = (a1 + 112);
  *(a1 + 160) = 0;
  *a1 = &unk_283BE6208;
  *(a1 + 8) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v5 = *(a2 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 88) = vextq_s8(*a2, *a2, 8uLL);
  v6 = *(a2 + 16);
  *(a1 + 204) = 225;
  *(a1 + 104) = v6;
  statistics::Statistics::makeMostRecentDatum(a1);
  v10 = &unk_283BEB0A8;
  v16 = 127;
  v13 = vextq_s8(*(a2 + 40), *(a2 + 40), 8uLL);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v14 = 0;
  v15 = 0;
  statistics::RawQuantitySample::operator=(*v4, &v10);
  PB::Base::~Base(&v10);
  if (*(a2 + 112) == 1)
  {
    statistics::Statistics::makeUnfinishedDatum(a1);
    v10 = &unk_283BEB0A8;
    v16 = 127;
    v13 = vextq_s8(*(a2 + 80), *(a2 + 80), 8uLL);
    v11 = *(a2 + 96);
    v12 = *(a2 + 104);
    v14 = 0;
    v15 = 0;
    statistics::RawQuantitySample::operator=(*(a1 + 160), &v10);
    PB::Base::~Base(&v10);
  }

  v7 = *(a1 + 204);
  result = vextq_s8(*(a2 + 120), *(a2 + 120), 8uLL);
  *(a1 + 184) = result;
  v9 = *(a2 + 32);
  *(a1 + 204) = v7 | 0x6002;
  *(a1 + 32) = v9;
  return result;
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 202) = 0u;
  v6 = a2[16];
  if (v6)
  {
    HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>::unarchive(v15, *(v6 + 8), *(v6 + 128));
    v7 = v17;
    *(v5 + 128) = v16;
    v8 = v15[7];
    *(v5 + 96) = v15[6];
    *(v5 + 112) = v8;
    v9 = v15[3];
    *(v5 + 32) = v15[2];
    *(v5 + 48) = v9;
    v10 = v15[5];
    *(v5 + 64) = v15[4];
    *(v5 + 80) = v10;
    v11 = v15[1];
    *v5 = v15[0];
    *(v5 + 16) = v11;
    *(a1 + 144) = v7;
    result = v20;
    v12 = v19;
    *(a1 + 152) = v18;
    *(a1 + 168) = v12;
    *(a1 + 176) = result;
  }

  *a1 = a2[17];
  v13 = a2[14];
  if (v13)
  {
    result = *(v13 + 8);
    v14 = *(v13 + 16);
    *(a1 + 184) = vextq_s8(*(v13 + 24), *(v13 + 24), 8uLL);
    *(a1 + 200) = result;
    *(a1 + 208) = v14;
    *(a1 + 216) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>::unarchive(uint64_t a1, HDStatisticsTimeInterval *this, uint64_t a3)
{
  *(a1 + 112) = 0;
  *&v5 = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 58) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  if (a3)
  {
    HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::unarchive(v11, a3);
    v6 = v17;
    *(a1 + 96) = v16;
    *(a1 + 112) = v6;
    *(a1 + 128) = v18;
    v7 = v13;
    *(a1 + 32) = v12;
    *(a1 + 48) = v7;
    v8 = v15;
    *(a1 + 64) = v14;
    *(a1 + 80) = v8;
    v5 = *&v11[16];
    *a1 = *v11;
    *(a1 + 16) = v5;
  }

  if (this)
  {
    HDStatisticsTimeInterval::unarchive(this, v11);
    *(a1 + 136) = *v11;
    *&v5 = v12;
    v9 = *&v11[24];
    *(a1 + 144) = *&v11[8];
    *(a1 + 160) = v9;
    *(a1 + 168) = v5;
  }

  return *&v5;
}

int8x16_t HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::unarchive(uint64_t a1, uint64_t a2)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = vextq_s8(*(a2 + 88), *(a2 + 88), 8uLL);
  *(a1 + 16) = *(a2 + 104);
  v2 = *(a2 + 112);
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    *(a1 + 40) = vextq_s8(*(v2 + 24), *(v2 + 24), 8uLL);
    *(a1 + 56) = v3;
    *(a1 + 64) = v4;
    *(a1 + 72) = 1;
  }

  v5 = *(a2 + 160);
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    *(a1 + 80) = vextq_s8(*(v5 + 24), *(v5 + 24), 8uLL);
    *(a1 + 96) = v6;
    *(a1 + 104) = v7;
    *(a1 + 112) = 1;
  }

  result = vextq_s8(*(a2 + 184), *(a2 + 184), 8uLL);
  *(a1 + 120) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEE2E8;
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 1;
  *(a1 + 658) = 0;
  *(a1 + 660) = 0;
  *(a1 + 664) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEE2E8;
  v2 = *(a1 + 688);
  if (v2)
  {
    *(a1 + 696) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 624);
  if (v3)
  {
    *(a1 + 632) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 656) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 664) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 84, a2);
  v7 = a2;
  v4 = a1[84];
  v5 = a1[81];
  a1[81] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[81]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 656) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v4);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228F058DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 658) == 1)
    {
      if (*(a1 + 657))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 656))
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

      if (*(a1 + 659) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 688, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 658) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 658) = 1;
  v60 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v59 = v6;
  if (*(a1 + 657))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 680);
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

  [v9 sortUsingComparator:&__block_literal_global_759];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = *(a1 + 680);
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
  v27 = *(a1 + 680);
  *(a1 + 680) = 0;

  *(a1 + 657) = 0;
  if (v8)
  {
    v28 = *(a1 + 688);
    *(a1 + 704) = 0;
    *(a1 + 696) = 0;
    *(a1 + 688) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v61 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 688);
      v39 = *(a1 + 696);
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
            v39 = *(a1 + 696);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 696) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 688);
  v29 = *(a1 + 696);
  *(a1 + 704) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v60);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v60))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
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

  if (*(a1 + 40) && *(a1 + 632) != *(a1 + 624))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 658) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 660) == 1)
    {
      *(a1 + 660) = 0;
      v6 = v59;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 658) = 0;
LABEL_81:

  return v7;
}

void sub_228F06194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 658) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 658))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 658) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 680);
    *(a1 + 680) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 657) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 657) & 1) == 0)
  {
    v8 = *(a1 + 680);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 680);
      *(a1 + 680) = v9;

      v8 = *(a1 + 680);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 656) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 656) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 656) forKey:@"needs_config"];
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
  HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>::archive(&v32, a1 + 240);
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 416);
  if (v9 != a1 + 424)
  {
    HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>::archive(&v32, v9 + 40);
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
  v12 = *(a1 + 624);
  if (v12 != *(a1 + 632))
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

void sub_228F069DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v32 = a2;
  *(a1 + 656) = [v32 decodeBoolForKey:@"needs_config"];
  v3 = v32;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v35.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v36 = 0u;
  v37 = 0u;
  v75 = 0;
  PB::Reader::Reader(v74, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v75]);
  v67 = &unk_283BF1A08;
  v68 = 0;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v73 = 0;
  statistics::StatisticsEngine::readFrom(&v67, v74);
  v35.n128_u64[0] = v69;
  if (v68)
  {
    v33 = v3;
    v41 = 0;
    memset(v44, 0, sizeof(v44));
    v46 = 0u;
    v47 = 0u;
    *v48 = 0;
    *&v48[8] = 0u;
    memset(__p, 0, sizeof(__p));
    v52[1] = 0;
    v52[0] = 0;
    memset(v45, 0, 98);
    v50 = 0;
    v51 = v52;
    v53 = 0u;
    v54 = 0u;
    v55 = 1065353216;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
    v60 = 1065353216;
    v61 = 0u;
    v62 = 0u;
    v63 = 1065353216;
    v64 = 0u;
    v65 = 0u;
    v66 = 1065353216;
    v38 = vextq_s8(*(v68 + 8), *(v68 + 8), 8uLL);
    v4 = *(v68 + 72);
    v39 = *(v68 + 64);
    LOWORD(v40) = *(v68 + 185);
    v42 = vextq_s8(*(v68 + 24), *(v68 + 24), 8uLL);
    v43 = v4;
    v5 = *(v68 + 80);
    v6 = *(v68 + 88);
    for (i = v68; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v78) = 1;
      BYTE8(v78) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v76 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v77 = v8;
      *(&v77 + 1) = v9;
      BYTE9(v78) = *(v7 + 41);
      BYTE10(v78) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v45, v76.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>::unarchive(&v76, *(v10 + 8), *(v10 + 128));
      v46 = v81;
      v47 = v82;
      *v48 = v83;
      *&v45[40] = v77;
      *&v45[56] = v78;
      *&v45[72] = v79;
      *&v45[88] = v80;
      *&v48[16] = v84;
      *&v45[24] = v76;
      __p[0] = v85;
      if (__p[1])
      {
        __p[2] = __p[1];
        operator delete(__p[1]);
      }

      *&__p[1] = v86;
      __p[3] = v87;
      v87 = 0;
      v86 = 0uLL;
      v50 = v88;
    }

    v11 = i[17];
    for (j = i[18]; v11 != j; ++v11)
    {
      v13 = *v11;
      HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>::unarchive(&v76, *(*v11 + 8), *(*v11 + 128));
      v14 = *(v13 + 144);
      v15 = v52[0];
      if (!v52[0])
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

      *(v16 + 13) = v80;
      v18 = v78;
      *(v16 + 11) = v79;
      *(v16 + 9) = v18;
      v19 = v76;
      *(v16 + 7) = v77;
      *(v16 + 19) = v83;
      v20 = v81;
      *(v16 + 17) = v82;
      v21 = v84;
      *(v16 + 15) = v20;
      v16[21] = v21;
      *(v16 + 5) = v19;
      v22 = v16[23];
      v16[22] = v85;
      if (v22)
      {
        v16[24] = v22;
        operator delete(v22);
        v16[23] = 0;
        v16[24] = 0;
        v16[25] = 0;
      }

      *(v16 + 23) = v86;
      v16[25] = v87;
      v87 = 0;
      v86 = 0uLL;
      v16[26] = v88;
    }

    v23 = i[5];
    for (k = i[6]; v23 != k; v23 += 8)
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

      HKIntervalMask<double>::_insertInterval(v44, v27, v25);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=(&v35.n128_i64[1], &v38);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v38);
    v3 = v33;
  }

  v28 = v70;
  for (m = v71; v28 != m; v28 += 8)
  {
    v30 = *(*v28 + 8);
    v31 = *(*v28 + 16);
    v38 = vextq_s8(*(*v28 + 24), *(*v28 + 24), 8uLL);
    v39 = v30;
    v40 = v31;
    LOWORD(v41) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v36, v38.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v67);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v35);
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v35.n128_i64[1]);
}

void sub_228F06FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v13 + 464);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a9);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 384);
  v15 = STACK[0x3B8];
  if (STACK[0x3B8])
  {
    STACK[0x3C0] = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 320);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(STACK[0x380]);
  v16 = STACK[0x358];
  if (STACK[0x358])
  {
    STACK[0x360] = v16;
    operator delete(v16);
  }

  v17 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v17;
    operator delete(v17);
  }

  objc_destroyWeak((v13 + 88));
  v18 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v18;
    operator delete(v18);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x450]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = a1 + 304;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 416) = 1065353216;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 1065353216;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2)
  {
    *(a1 + 520) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 464);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 424);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 384);
  v2 = *(a1 + 360);
  if (v2)
  {
    *(a1 + 368) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 320);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 304));
  v3 = *(a1 + 264);
  if (v3)
  {
    *(a1 + 272) = v3;
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

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    v2 = a1[23];
    if (v2)
    {
      a1[24] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  objc_storeStrong(&v26, *(a1 + 672));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 656) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 64), a2 + 32);
  v4 = a2[33].n128_u64[1];
  a2[33].n128_u64[1] = 0;
  v5 = a1[67];
  a1[67] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 264), *(a2 + 264), *(a2 + 272), (*(a2 + 272) - *(a2 + 264)) >> 4);
  *(a1 + 288) = *(a2 + 288);
  v16 = (a1 + 304);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = a1 + 304;
  v17 = *(a2 + 296);
  if (v17 != (a2 + 304))
  {
    v18 = 0;
    v19 = (a1 + 304);
    while (1)
    {
      v20 = (a1 + 304);
      if (v19 == v16)
      {
        goto LABEL_12;
      }

      v21 = v18;
      v22 = (a1 + 304);
      if (v18)
      {
        do
        {
          v20 = v21;
          v21 = v21[1];
        }

        while (v21);
      }

      else
      {
        do
        {
          v20 = v22[2];
          v23 = *v20 == v22;
          v22 = v20;
        }

        while (v23);
      }

      v24 = v17[4];
      if (v20[4] < v24)
      {
LABEL_12:
        if (v18)
        {
          v25 = v20 + 1;
        }

        else
        {
          v25 = (a1 + 304);
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
            if (v27 <= v24)
            {
              break;
            }

            v18 = *v26;
            if (!*v26)
            {
              goto LABEL_23;
            }
          }

          if (v27 >= v24)
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
          v23 = *v29 == v17;
          v17 = v29;
        }

        while (!v23);
      }

      if (v29 == (a2 + 304))
      {
        break;
      }

      v18 = *v16;
      v19 = *(a1 + 296);
      v17 = v29;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 320, a2 + 320);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 360), *(a2 + 360), *(a2 + 368), (*(a2 + 368) - *(a2 + 360)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 384, a2 + 384);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 424, a2 + 424);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 464, a2 + 464);
  return a1;
}

void sub_228F079A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 424);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 384);
  v14 = *(v10 + 360);
  if (v14)
  {
    *(v10 + 368) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 320);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(*v12);
  v15 = *(v10 + 264);
  if (v15)
  {
    *(v10 + 272) = v15;
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

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
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
  *(a1 + 256) = *(a2 + 256);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 264, (a2 + 264));
  *(a1 + 288) = *(a2 + 288);
  v16 = a1 + 304;
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 304));
  *(a1 + 296) = *(a2 + 296);
  v17 = *(a2 + 304);
  v18 = *(a2 + 312);
  *(a1 + 304) = v17;
  *(a1 + 312) = v18;
  if (v18)
  {
    *(v17 + 16) = v16;
    *(a2 + 296) = a2 + 304;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
  }

  else
  {
    *(a1 + 296) = v16;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 320, (a2 + 320));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 360, (a2 + 360));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 384, (a2 + 384));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 424, (a2 + 424));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 464, (a2 + 464));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = objc_alloc(MEMORY[0x277CBEAA8]);
  v5 = 40;
  if (v3 != -1.79769313e308)
  {
    v5 = 0;
  }

  v20 = [v4 initWithTimeIntervalSinceReferenceDate:*(a2 + v5)];
  if (*(a2 + 8) == 1.79769313e308)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v7 = v6;
  v8 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 16);
    if ([v9 shouldUseUnderlyingTypeForStatistics])
    {
      v10 = [v9 underlyingSampleType];

      v8 = v10;
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v8 startDate:v20 endDate:v7];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = *(a2 + 360);
      v15 = *(a2 + 368);
      while (v14 != v15)
      {
        v16 = *v14;
        v17 = objc_loadWeakRetained((a1 + 48));
        v18 = [v17 sourceForSourceID:v16];

        if (v18)
        {
          if (([v13 containsObject:v18] & 1) == 0)
          {
            [v13 addObject:v18];
          }
        }

        ++v14;
      }

      v19 = objc_msgSend_copy(v13);
      [v11 _setSources:v19];
    }
  }

  v22[0] = &unk_283BEE4D8;
  v22[3] = v22;
  v11;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v23, v22);
  v24 = 0;
  operator new();
}

void sub_228F088D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  std::__function::__value_func<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](v42 - 192);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](va);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 344);
  v2 = *(a1 + 360);
  if (v1 != (*(a1 + 368) - v2) >> 3)
  {
    *(a1 + 368) = v2;
    std::vector<long long>::reserve((a1 + 360), v1);
    for (i = *(a1 + 336); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 360, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 360];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v66 = (a1 + 304);
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

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
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

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(__p, v6, &v74, v23, 1);
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
        v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v67 = 0;
      }

      if (__p != v6)
      {
        v68 = 0;
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
              var4 = v73.var4;
              v73.var2 = v16;
              if (v73.var4)
              {
                var3 = v73.var3;
                var5 = v73.var5;
                v41 = v16;
LABEL_54:
                HDRawQuantitySample::applyMask(&v73, (a1 + 64));
                v42 = *(i + 42);
                v43 = *(i + 41);
                v70 = *(i + 40);
                if (!v73.var4)
                {
                  goto LABEL_72;
                }

                if (v35)
                {
                  v44 = v73.var3;
                  if (v68 == v73.var3 || *(a1 + 24) == 1)
                  {
                    HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(a1 + 120, &v73.var0, v42 ^ 1);
                    HDStatisticsTimeInterval::addSample((a1 + 256), &v73, v42 ^ 1);
                    LOBYTE(v42) = 1;
                  }
                }

                else
                {
                  HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(a1 + 120, &v73.var0, v42 ^ 1);
                  HDStatisticsTimeInterval::addSample((a1 + 256), &v73, v42 ^ 1);
                  LOBYTE(v42) = 1;
                  v44 = v73.var3;
                  v68 = v73.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_71;
                }

                v45 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, v44);
                if (!v45)
                {
                  goto LABEL_70;
                }

                v46 = [v67 objectForKeyedSubscript:v45];
                v47 = v46;
                if (v46)
                {
                  if ([v46 longLongValue] != v44 && *(a1 + 24) != 1)
                  {
LABEL_69:

LABEL_70:
LABEL_71:
                    v35 = 1;
LABEL_72:
                    if (var4)
                    {
                      v74.var0 = var0;
                      v74.var1 = v41;
                      v74.var2 = v39;
                      v74.var3 = var3;
                      v74.var4 = var4;
                      v74.var5 = var5;
                      LOBYTE(v75) = v70;
                      BYTE1(v75) = v43;
                      BYTE2(v75) = v42;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v74);
                    }

                    continue;
                  }
                }

                else
                {
                  v48 = [MEMORY[0x277CCABB0] numberWithLongLong:v44];
                  [v67 setObject:v48 forKeyedSubscript:v45];
                }

                v49 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v44);
                v50 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v49);
                HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(v50, &v73.var0, v43 ^ 1);
                HDStatisticsTimeInterval::addSample(v50 + 17, &v73, v43 ^ 1);
                LOBYTE(v43) = 1;
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
            v41 = 0.0;
            goto LABEL_54;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 288) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 264), v16) + *(a1 + 288);
      v51 = *(a1 + 296);
      if (v51 != v66)
      {
        do
        {
          *(v51 + 26) = HKIntervalMask<double>::removeIntervalsBefore(v51 + 23, v16) + *(v51 + 26);
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

        while (v53 != v66);
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
        v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>, HDStatisticsTimeInterval>]"}];
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
          HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(a1 + 120, &v74.var0, v55 ^ 1);
          HDStatisticsTimeInterval::addSample((a1 + 256), &v74, v55 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v59 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v74.var3);
            v60 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v59);
            HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>::addSample(v60, &v74.var0, v56 ^ 1);
            HDStatisticsTimeInterval::addSample(v60 + 17, &v74, v56 ^ 1);
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

uint64_t **HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 304);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 304);
  v5 = (a1 + 304);
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
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 296), a2, &v8);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 296), v7, &v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 384), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 424), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 424), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 464), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 464), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
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

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
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
                v104 = *(*a3 + 360);
                v105 = *(*a3 + 368);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 360);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 360);
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
                  v107 = *(*a3 + 368);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 368);
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
                    v115 = *(*a3 + 360);
                    v116 = *(*a3 + 368);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 360);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 360);
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
                      v118 = *(*a3 + 368);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 368);
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
                          v122 = *(*a3 + 360);
                          v123 = *(*a3 + 368);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 360);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 360);
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
                            v125 = *(*a3 + 368);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 368);
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
                  v208 = *(*a3 + 360);
                  v209 = *(*a3 + 368);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 360);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 360);
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
                    v211 = *(*a3 + 368);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 368);
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

                      v216 = *(*a3 + 360);
                      v217 = *(*a3 + 368);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 360);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 360);
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
                        v219 = *(*a3 + 368);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 368);
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
                      v134 = *(*a3 + 360);
                      v133 = *(*a3 + 368);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 360);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 360);
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
                        v136 = *(*a3 + 368);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 368);
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

                  v145 = *(*a3 + 360);
                  v144 = *(*a3 + 368);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 360);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 360);
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
                    v147 = *(*a3 + 368);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 368);
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
                            v155 = *(*a3 + 360);
                            v156 = *(*a3 + 368);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 360);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 360);
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
                              v158 = *(*a3 + 368);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 368);
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
                          v165 = *(*a3 + 360);
                          v164 = *(*a3 + 368);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 360);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 360);
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
                            v167 = *(*a3 + 368);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 368);
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
                      v180 = *(*a3 + 360);
                      v179 = *(*a3 + 368);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 360);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 360);
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
                        v182 = *(*a3 + 368);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 368);
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
                      v194 = *(*a3 + 360);
                      v193 = *(*a3 + 368);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 360);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 360);
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
                        v196 = *(*a3 + 368);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 368);
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

                          v202 = *(*a3 + 360);
                          v201 = *(*a3 + 368);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 360);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 360);
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
                            v204 = *(*a3 + 368);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 368);
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
            v24 = *(*a3 + 360);
            v25 = *(*a3 + 368);
            if (v24 == v25)
            {
              v27 = *(*a3 + 360);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 360);
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
              v27 = *(*a3 + 368);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 368);
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

          v67 = *(*a3 + 360);
          v68 = *(*a3 + 368);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 360);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 368);
                break;
              }
            }

            v70 = *(*a3 + 360);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 368);
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
                  v77 = *(v74 + 360);
                  v78 = *(v74 + 368);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 360);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 360);
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
                    v80 = *(v74 + 368);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 368);
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
              v72 = *(*a3 + 360);
              if (v67 == v68)
              {
                v73 = *(*a3 + 360);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 368);
                    break;
                  }
                }

                v73 = *(*a3 + 360);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 368);
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

              v84 = *(v82 + 360);
              v85 = *(v82 + 368);
              if (v84 == v85)
              {
                v87 = *(v82 + 360);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 360);
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
                v87 = *(v82 + 368);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 368);
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
              v92 = *(v90 + 360);
              v93 = *(v90 + 368);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 360);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 368);
                    break;
                  }
                }

                v95 = *(v90 + 360);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 368);
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

          v31 = *(v22 + 360);
          v32 = *(v22 + 368);
          if (v31 == v32)
          {
            v34 = *(v22 + 360);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 360);
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
            v34 = *(v22 + 368);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 368);
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
                v42 = *(v22 + 360);
                v43 = *(v22 + 368);
                if (v42 == v43)
                {
                  v45 = *(v22 + 360);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 360);
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
                  v45 = *(v22 + 368);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 368);
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
            v37 = *(v22 + 360);
            v38 = *(v22 + 368);
            if (v37 == v38)
            {
              v40 = *(v22 + 360);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 360);
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
              v40 = *(v22 + 368);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 368);
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

              v52 = *(v50 + 360);
              v53 = *(v50 + 368);
              if (v52 == v53)
              {
                v55 = *(v50 + 360);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 360);
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
                v55 = *(v50 + 368);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 368);
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
              v57 = *(v50 + 360);
              v58 = *(v50 + 368);
              if (v57 == v58)
              {
                v60 = *(v50 + 360);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 360);
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
                v60 = *(v50 + 368);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 368);
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
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*>(v11, a2, a3))
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

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 360);
  v7 = *(*a4 + 368);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 360);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 368);
        break;
      }
    }

    v9 = *(*a4 + 360);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 368);
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
      v14 = *(*a4 + 360);
      v15 = *(*a4 + 368);
      if (v14 == v15)
      {
        v17 = *(*a4 + 360);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 360);
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
        v17 = *(*a4 + 368);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 368);
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
          v24 = *(*a4 + 360);
          v25 = *(*a4 + 368);
          if (v24 == v25)
          {
            v27 = *(*a4 + 360);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 360);
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
            v27 = *(*a4 + 368);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 368);
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
      v11 = *(*a4 + 360);
      if (v6 == v7)
      {
        v12 = *(*a4 + 360);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 368);
            break;
          }
        }

        v12 = *(*a4 + 360);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 368);
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
      v37 = *(*a4 + 360);
      v38 = *(*a4 + 368);
      if (v37 == v38)
      {
        v40 = *(*a4 + 360);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 360);
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
        v40 = *(*a4 + 368);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 368);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 360);
    v14 = *(*a5 + 368);
    if (v13 == v14)
    {
      v16 = *(*a5 + 360);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 360);
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
      v16 = *(*a5 + 368);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 368);
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
        v22 = *(*a5 + 360);
        v23 = *(*a5 + 368);
        if (v22 == v23)
        {
          v25 = *(*a5 + 360);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 360);
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
          v25 = *(*a5 + 368);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 368);
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
            v31 = *(*a5 + 360);
            v32 = *(*a5 + 368);
            if (v31 == v32)
            {
              v34 = *(*a5 + 360);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 360);
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
              v34 = *(*a5 + 368);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 368);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 360);
    v16 = *(*a6 + 368);
    if (v15 == v16)
    {
      v18 = *(*a6 + 360);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 360);
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
      v18 = *(*a6 + 368);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 368);
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
        v24 = *(*a6 + 360);
        v25 = *(*a6 + 368);
        if (v24 == v25)
        {
          v27 = *(*a6 + 360);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 360);
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
          v27 = *(*a6 + 368);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 368);
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
            v33 = *(*a6 + 360);
            v34 = *(*a6 + 368);
            if (v33 == v34)
            {
              v36 = *(*a6 + 360);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 360);
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
              v36 = *(*a6 + 368);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 368);
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
                v42 = *(*a6 + 360);
                v43 = *(*a6 + 368);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 360);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 360);
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
                  v45 = *(*a6 + 368);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 368);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 360);
          v10 = *(*a3 + 368);
          if (v9 == v10)
          {
            v12 = *(*a3 + 360);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 360);
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
            v12 = *(*a3 + 368);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 368);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 360);
      v19 = *(*a3 + 368);
      if (v18 == v19)
      {
        v21 = *(*a3 + 360);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 360);
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
        v21 = *(*a3 + 368);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 368);
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
            v25 = *(*a3 + 360);
            v26 = *(*a3 + 368);
            if (v25 == v26)
            {
              v28 = *(*a3 + 360);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 360);
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
              v28 = *(*a3 + 368);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 368);
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

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  v2 = *(a2 + 296);
  v29 = (a2 + 304);
  if (v2 == (a2 + 304))
  {
    return;
  }

  v28 = a1 + 2;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
      goto LABEL_21;
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
LABEL_21:
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
        goto LABEL_21;
      }

LABEL_20:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
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
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v5 = v15;
LABEL_22:
    *(v12 + 3) = *(v2 + 5);
    v19 = *(v2 + 7);
    v20 = *(v2 + 9);
    v21 = *(v2 + 11);
    *(v12 + 11) = *(v2 + 13);
    *(v12 + 9) = v21;
    *(v12 + 7) = v20;
    *(v12 + 5) = v19;
    v22 = *(v2 + 15);
    v23 = *(v2 + 17);
    v24 = *(v2 + 19);
    v12[19] = v2[21];
    *(v12 + 17) = v24;
    *(v12 + 15) = v23;
    *(v12 + 13) = v22;
    v12[20] = v2[22];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 21, v2[23], v2[24], (v2[24] - v2[23]) >> 4);
    }

    v12[24] = v2[26];

LABEL_25:
    v25 = v2[1];
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
        v26 = v2[2];
        v27 = *v26 == v2;
        v2 = v26;
      }

      while (!v27);
    }

    v2 = v26;
  }

  while (v26 != v29);
}

void sub_228F0BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::~__hash_table(v11);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,0>(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEE3B8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEE3B8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 136;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEE448;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEE448;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 656) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v8 = a2[1];
  v9 = *(a1 + 40);
  if (v9)
  {
    if (*(a1 + 656))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v11 = (*(*a1 + 128))(a1, v13, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t a1, double a2)
{
  if (*(a1 + 128) <= a2)
  {
    if (*(a1 + 632) != *(a1 + 624))
    {
      [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
    }

    v5 = 0;
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(uint64_t a1, double *a2, int a3)
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
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 328), v16, &v39 + 1);
  if (*(a1 + 112) != *(a1 + 104) || *(a1 + 160) > 0)
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
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(v11, v21);
    }
  }

LABEL_29:
  v34[0] = v38;
  v34[1] = v39;
  v35 = v40;
  v36 = 0;
  v37 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v34);
  if (!*(a1 + 200) || *(a1 + 176) <= v6)
  {
    *(a1 + 168) = v5;
    *(a1 + 176) = v6;
    *(a1 + 184) = v7;
    *(a1 + 192) = v8;
    *(a1 + 200) = v9;
    *(a1 + 201) = v10;
  }

  if (*(a1 + 33) == 1)
  {
    v27 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(v11, v16);
    v28 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsForSource(v11, v27);
    if (!*(v28 + 72) || *(v28 + 6) <= v6)
    {
      v28[5] = v5;
      *(v28 + 6) = v6;
      *(v28 + 7) = v7;
      v28[8] = v8;
      *(v28 + 72) = v9;
      *(v28 + 73) = v10;
    }
  }

LABEL_36:
  if (v33 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 512, &v31);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 658) == 1)
  {
    *(a1 + 660) = 1;
  }

  else
  {
    *(a1 + 660) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 512), *(a1 + 520), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 520) - *(a1 + 512)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F0CD70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 536), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  v9 = 0uLL;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0u;
  *(v8 + 216) = 0u;
  v10 = *(v8 + 232);
  if (v10)
  {
    *(a1 + 280) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(v8 + 248) = v9;
  *(v8 + 232) = v9;
  if (*(a1 + 320))
  {
    v11 = *(a1 + 304);
    v12 = *(a1 + 312);
    *(a1 + 304) = a1 + 312;
    *(v12 + 16) = 0;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
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

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 536));
  *(a1 + 520) = *(a1 + 512);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 660) == 1)
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

    *(a1 + 660) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 656))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F0D038(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 656) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F0D488(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40101E088FLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v13, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 656) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEE588;
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 1;
  *(a1 + 666) = 0;
  *(a1 + 668) = 0;
  *(a1 + 672) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEE588;
  v2 = *(a1 + 696);
  if (v2)
  {
    *(a1 + 704) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 632);
  if (v3)
  {
    *(a1 + 640) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 664) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 672) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 85, a2);
  v7 = a2;
  v4 = a1[85];
  v5 = a1[82];
  a1[82] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[82]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 664))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 666) == 1)
    {
      if (*(a1 + 665))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 664))
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

      if (*(a1 + 667) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 696, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 666) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 666) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 665))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 688);
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

  [v9 sortUsingComparator:&__block_literal_global_768];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 688);
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
  v27 = *(a1 + 688);
  *(a1 + 688) = 0;

  *(a1 + 665) = 0;
  if (v8)
  {
    v28 = *(a1 + 696);
    *(a1 + 712) = 0;
    *(a1 + 704) = 0;
    *(a1 + 696) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v68 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 696);
      v39 = *(a1 + 704);
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
            v39 = *(a1 + 704);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 704) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 696);
  v29 = *(a1 + 704);
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveInvalidateInterval(a1, v49, v67);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveInvalidateInterval(a1, 0, v67))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 640) != *(a1 + 632))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 666) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 668) == 1)
    {
      *(a1 + 668) = 0;
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 666) = 0;
LABEL_81:

  return v7;
}

void sub_228F0EA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 666) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 666))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 666) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 688);
    *(a1 + 688) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 665) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 665) & 1) == 0)
  {
    v8 = *(a1 + 688);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 688);
      *(a1 + 688) = v9;

      v8 = *(a1 + 688);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 664) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI38HDStatisticsTemporallyWeightedDiscreteI48HDStatisticsTemporallyWeightedDiscreteParametersEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 664) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 664) forKey:@"needs_config"];
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
  HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::archive(&v32, (a1 + 240));
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 424);
  if (v9 != a1 + 432)
  {
    HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::archive(&v32, (v9 + 40));
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
  v12 = *(a1 + 632);
  if (v12 != *(a1 + 640))
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

void sub_228F0F258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v37 = a2;
  *(a1 + 664) = [v37 decodeBoolForKey:@"needs_config"];
  v3 = v37;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::HDStatisticsBucket(v42, 0, -1.79769313e308, 1.79769313e308);
  __p = 0u;
  v44 = 0u;
  v82 = 0;
  PB::Reader::Reader(v81, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v82]);
  v74 = &unk_283BF1A08;
  v75 = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v80 = 0;
  statistics::StatisticsEngine::readFrom(&v74, v81);
  v4 = v75;
  v41 = v76;
  if (v75)
  {
    v40 = v3;
    v48 = 0;
    memset(v51, 0, sizeof(v51));
    memset(&v53[88], 0, 34);
    memset(&v53[8], 0, 74);
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    LOWORD(v57) = 0;
    v59[1] = 0;
    memset(v52, 0, sizeof(v52));
    *v53 = 0;
    v59[0] = 0;
    v58 = v59;
    v60 = 0u;
    v61 = 0u;
    v62 = 1065353216;
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v67 = 1065353216;
    v68 = 0u;
    v69 = 0u;
    v70 = 1065353216;
    v71 = 0u;
    v72 = 0u;
    v73 = 1065353216;
    v45 = vextq_s8(*(v75 + 8), *(v75 + 8), 8uLL);
    v5 = *(v75 + 72);
    v46 = *(v75 + 64);
    LOWORD(v47) = *(v75 + 185);
    v49 = vextq_s8(*(v75 + 24), *(v75 + 24), 8uLL);
    v50 = v5;
    v6 = *(v75 + 80);
    for (i = *(v75 + 88); v6 != i; ++v6)
    {
      v8 = *v6;
      LOWORD(v85) = 1;
      BYTE8(v85) = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v83 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      *&v84 = v9;
      *(&v84 + 1) = v10;
      BYTE9(v85) = *(v8 + 41);
      BYTE10(v85) = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v52, v83.i8);
    }

    v39 = a1;
    v11 = v4[13];
    if (v11)
    {
      HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::unarchive(&v83, v11);
      v54 = v91;
      v55 = v92;
      v56 = v93;
      v57 = v94;
      *&v53[64] = v87;
      *&v53[80] = v88;
      *&v53[96] = v89;
      *&v53[112] = v90;
      *v53 = v83;
      *&v53[16] = v84;
      *&v53[32] = v85;
      *&v53[48] = v86;
    }

    v13 = v4[17];
    v12 = v4[18];
    v38 = v4;
    while (v13 != v12)
    {
      v14 = *v13;
      HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::unarchive(&v83, *v13);
      v15 = *(v14 + 144);
      v16 = v59[0];
      if (!v59[0])
      {
LABEL_15:
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
            goto LABEL_15;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_15;
        }
      }

      v19 = v94;
      v21 = v92;
      v20 = v93;
      *(v17 + 21) = v91;
      *(v17 + 23) = v21;
      *(v17 + 25) = v20;
      v23 = v89;
      v22 = v90;
      v24 = v88;
      *(v17 + 13) = v87;
      *(v17 + 15) = v24;
      *(v17 + 17) = v23;
      *(v17 + 19) = v22;
      v26 = v85;
      v25 = v86;
      v27 = v84;
      *(v17 + 5) = v83;
      v17[27] = v19;
      *(v17 + 7) = v27;
      *(v17 + 9) = v26;
      ++v13;
      *(v17 + 11) = v25;
    }

    a1 = v39;
    v28 = v38[5];
    for (j = v38[6]; v28 != j; v28 += 8)
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

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::operator=(v42, &v45);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsBucket(&v45);
    v3 = v40;
  }

  v33 = v77;
  for (k = v78; v33 != k; v33 += 8)
  {
    v35 = *(*v33 + 8);
    v36 = *(*v33 + 16);
    v45 = vextq_s8(*(*v33 + 24), *(*v33 + 24), 8uLL);
    v46 = v35;
    v47 = v36;
    LOWORD(v48) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&__p, v45.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v74);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::operator=((a1 + 112), &v41);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsBucket(v42);
}

void sub_228F0F7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x460]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 296) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 304) = a1 + 312;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 1065353216;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 1065353216;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 520);
  if (v2)
  {
    *(a1 + 528) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 472);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 432);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 392);
  v2 = *(a1 + 368);
  if (v2)
  {
    *(a1 + 376) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 328);
  std::__tree<long>::destroy(*(a1 + 312));
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

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

  objc_storeStrong(&v27, *(a1 + 680));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsBucket(v17);
  *(a1 + 664) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::~HDStatisticsBucket(v22);
}