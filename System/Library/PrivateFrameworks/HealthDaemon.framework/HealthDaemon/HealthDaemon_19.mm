__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 280);
  v7 = *(*a4 + 288);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 280);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 288);
        break;
      }
    }

    v9 = *(*a4 + 280);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 288);
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
      v14 = *(*a4 + 280);
      v15 = *(*a4 + 288);
      if (v14 == v15)
      {
        v17 = *(*a4 + 280);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 280);
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
        v17 = *(*a4 + 288);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 288);
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
          v24 = *(*a4 + 280);
          v25 = *(*a4 + 288);
          if (v24 == v25)
          {
            v27 = *(*a4 + 280);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 280);
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
            v27 = *(*a4 + 288);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 288);
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
      v11 = *(*a4 + 280);
      if (v6 == v7)
      {
        v12 = *(*a4 + 280);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 288);
            break;
          }
        }

        v12 = *(*a4 + 280);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 288);
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
      v37 = *(*a4 + 280);
      v38 = *(*a4 + 288);
      if (v37 == v38)
      {
        v40 = *(*a4 + 280);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 280);
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
        v40 = *(*a4 + 288);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 288);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 280);
    v14 = *(*a5 + 288);
    if (v13 == v14)
    {
      v16 = *(*a5 + 280);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 280);
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
      v16 = *(*a5 + 288);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 288);
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
        v22 = *(*a5 + 280);
        v23 = *(*a5 + 288);
        if (v22 == v23)
        {
          v25 = *(*a5 + 280);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 280);
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
          v25 = *(*a5 + 288);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 288);
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
            v31 = *(*a5 + 280);
            v32 = *(*a5 + 288);
            if (v31 == v32)
            {
              v34 = *(*a5 + 280);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 280);
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
              v34 = *(*a5 + 288);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 288);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 280);
    v16 = *(*a6 + 288);
    if (v15 == v16)
    {
      v18 = *(*a6 + 280);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 280);
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
      v18 = *(*a6 + 288);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 288);
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
        v24 = *(*a6 + 280);
        v25 = *(*a6 + 288);
        if (v24 == v25)
        {
          v27 = *(*a6 + 280);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 280);
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
          v27 = *(*a6 + 288);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 288);
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
            v33 = *(*a6 + 280);
            v34 = *(*a6 + 288);
            if (v33 == v34)
            {
              v36 = *(*a6 + 280);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 280);
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
              v36 = *(*a6 + 288);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 288);
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
                v42 = *(*a6 + 280);
                v43 = *(*a6 + 288);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 280);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 280);
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
                  v45 = *(*a6 + 288);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 288);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 280);
          v10 = *(*a3 + 288);
          if (v9 == v10)
          {
            v12 = *(*a3 + 280);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 280);
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
            v12 = *(*a3 + 288);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 288);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 280);
      v19 = *(*a3 + 288);
      if (v18 == v19)
      {
        v21 = *(*a3 + 280);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 280);
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
        v21 = *(*a3 + 288);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 288);
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
            v25 = *(*a3 + 280);
            v26 = *(*a3 + 288);
            if (v25 == v26)
            {
              v28 = *(*a3 + 280);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 280);
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
              v28 = *(*a3 + 288);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 288);
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

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  v2 = *(a2 + 216);
  v26 = (a2 + 224);
  if (v2 == (a2 + 224))
  {
    return;
  }

  v25 = a1 + 2;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
    v28 = v9.u32[0];
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

      if (v28 > 1)
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
    v19 = *(v2 + 5);
    v20 = *(v2 + 7);
    v21 = *(v2 + 9);
    v12[9] = v2[11];
    *(v12 + 7) = v21;
    *(v12 + 5) = v20;
    *(v12 + 3) = v19;
    v12[10] = v2[12];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 11, v2[13], v2[14], (v2[14] - v2[13]) >> 4);
    }

    v12[14] = v2[16];

LABEL_25:
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

  while (v23 != v26);
}

void sub_228ECCA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::~__hash_table(v11);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,0>(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED338;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED338;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 56;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED3C8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED3C8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCumulative const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 576) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v8 = *(a2 + 8);
  if (v8 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v8 end:*(a2 + 16)];
    v10 = (*(*a1 + 128))(a1, v9, a4);
  }

  return v10;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 576) & 1) == 0)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t a1, double a2)
{
  if (*(a1 + 128) <= a2)
  {
    if (*(a1 + 552) != *(a1 + 544))
    {
      [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
    }

    v5 = 0;
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, int a3)
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
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 248), v18, &v43 + 1);
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
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeThroughTime(v11, v24);
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
    v31 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(v11, v18);
    v32 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsForSource(v11, v31);
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
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 432, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 578) == 1)
  {
    *(a1 + 580) = 1;
  }

  else
  {
    *(a1 + 580) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 432), *(a1 + 440), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 440) - *(a1 + 432)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 40;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228ECDBBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 456), *(a1 + 40));
  v9 = *(a1 + 192);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v10 = 0uLL;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  if (v9)
  {
    *(a1 + 200) = v9;
    operator delete(v9);
    v10 = 0uLL;
  }

  *(a1 + 192) = v10;
  *(a1 + 208) = v10;
  if (*(a1 + 240))
  {
    v11 = *(a1 + 232);
    v12 = *(a1 + 224);
    *(a1 + 224) = a1 + 232;
    *(v11 + 16) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    if (v12[1])
    {
      v13 = v12[1];
    }

    else
    {
      v13 = v12;
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

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 456));
  *(a1 + 440) = *(a1 + 432);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 580) == 1)
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

    *(a1 + 580) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 576))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228ECDE6C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 576) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228ECE2BC(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C409A2B2ECELL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 576) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BED508;
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 1;
  *(a1 + 586) = 0;
  *(a1 + 588) = 0;
  *(a1 + 592) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BED508;
  v2 = *(a1 + 616);
  if (v2)
  {
    *(a1 + 624) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 552);
  if (v3)
  {
    *(a1 + 560) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 584) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 592) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 75, a2);
  v7 = a2;
  v4 = a1[75];
  v5 = a1[72];
  a1[72] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[72]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 256) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 584))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 586) == 1)
    {
      if (*(a1 + 585))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 587) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 616, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 586) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 586) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 585))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 608);
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

  [v9 sortUsingComparator:&__block_literal_global_640];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 608);
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
  v27 = *(a1 + 608);
  *(a1 + 608) = 0;

  *(a1 + 585) = 0;
  if (v8)
  {
    v28 = *(a1 + 616);
    *(a1 + 632) = 0;
    *(a1 + 624) = 0;
    *(a1 + 616) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v68 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 616);
      v39 = *(a1 + 624);
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
            v39 = *(a1 + 624);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 624) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 616);
  v29 = *(a1 + 624);
  *(a1 + 632) = 0;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveInvalidateInterval(a1, v49, v67);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveInvalidateInterval(a1, 0, v67))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 560) != *(a1 + 552))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 586) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 588) == 1)
    {
      *(a1 + 588) = 0;
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 586) = 0;
LABEL_81:

  return v7;
}

void sub_228ECF81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 586) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 586))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 586) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 608);
    *(a1 + 608) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 585) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 585) & 1) == 0)
  {
    v8 = *(a1 + 608);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 608);
      *(a1 + 608) = v9;

      v8 = *(a1 + 608);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 584) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 584) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 584) forKey:@"needs_config"];
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
  HDStatisticsRelative<HDStatisticsCumulative>::archive(&v32, (a1 + 240));
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 344);
  if (v9 != a1 + 352)
  {
    HDStatisticsRelative<HDStatisticsCumulative>::archive(&v32, (v9 + 40));
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
  v12 = *(a1 + 552);
  if (v12 != *(a1 + 560))
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

void sub_228ED0064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::decodeInternalsWithDecoder(uint64_t j, void *a2)
{
  v32 = a2;
  *(j + 584) = [v32 decodeBoolForKey:@"needs_config"];
  v3 = v32;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::HDStatisticsBucket(v37, 0, -1.79769313e308, 1.79769313e308);
  __p = 0u;
  v39 = 0u;
  v76 = 0;
  PB::Reader::Reader(v75, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v76]);
  v68 = &unk_283BF1A08;
  v69 = 0;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v74 = 0;
  statistics::StatisticsEngine::readFrom(&v68, v75);
  v36 = v70;
  if (v69)
  {
    v34 = v3;
    v43 = 0;
    memset(v46, 0, sizeof(v46));
    memset(v47, 0, sizeof(v47));
    memset(&v48[8], 0, 50);
    v49 = 0u;
    v50 = 0u;
    LOWORD(v51) = 0;
    v53[1] = 0;
    *v48 = 0;
    v53[0] = 0;
    v52 = v53;
    v55 = 0u;
    v54 = 0u;
    v56 = 1065353216;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    v61 = 1065353216;
    v62 = 0u;
    v63 = 0u;
    v64 = 1065353216;
    v65 = 0u;
    v66 = 0u;
    v67 = 1065353216;
    v40 = vextq_s8(*(v69 + 8), *(v69 + 8), 8uLL);
    v4 = *(v69 + 72);
    v41 = *(v69 + 64);
    LOWORD(v42) = *(v69 + 185);
    v44 = vextq_s8(*(v69 + 24), *(v69 + 24), 8uLL);
    v45 = v4;
    v5 = *(v69 + 80);
    v6 = *(v69 + 88);
    for (i = v69; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v79) = 1;
      BYTE8(v79) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v77 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v78 = v8;
      *(&v78 + 1) = v9;
      BYTE9(v79) = *(v7 + 41);
      BYTE10(v79) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v47, v77.i8);
    }

    v33 = j;
    v10 = i[13];
    if (v10)
    {
      HDStatisticsRelative<HDStatisticsCumulative>::unarchive(&v77, v10);
      *&v48[48] = v80;
      v49 = v81;
      v50 = v82;
      v51 = v83;
      *v48 = v77;
      *&v48[16] = v78;
      *&v48[32] = v79;
    }

    v12 = i[17];
    v11 = i[18];
    while (v12 != v11)
    {
      v13 = *v12;
      HDStatisticsRelative<HDStatisticsCumulative>::unarchive(&v77, *v12);
      v14 = *(v13 + 144);
      v15 = v53[0];
      if (!v53[0])
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

      v18 = v83;
      v20 = v81;
      v19 = v82;
      v21 = v79;
      *(v16 + 11) = v80;
      *(v16 + 13) = v20;
      *(v16 + 15) = v19;
      v22 = v78;
      *(v16 + 5) = v77;
      v16[17] = v18;
      *(v16 + 7) = v22;
      ++v12;
      *(v16 + 9) = v21;
    }

    v23 = i[5];
    v24 = i[6];
    for (j = v33; v23 != v24; v23 += 8)
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

      HKIntervalMask<double>::_insertInterval(v46, v27, v25);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::operator=(v37, &v40);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsBucket(&v40);
    v3 = v34;
  }

  v28 = v71;
  for (k = v72; v28 != k; v28 += 8)
  {
    v30 = *(*v28 + 8);
    v31 = *(*v28 + 16);
    v40 = vextq_s8(*(*v28 + 24), *(*v28 + 24), 8uLL);
    v41 = v30;
    v42 = v31;
    LOWORD(v43) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&__p, v40.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v68);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::operator=((j + 112), &v36);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsBucket(v37);
}

void sub_228ED0574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3C0]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 440);
  if (v2)
  {
    *(a1 + 448) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 392);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 352);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 312);
  v2 = *(a1 + 288);
  if (v2)
  {
    *(a1 + 296) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 248);
  std::__tree<long>::destroy(*(a1 + 232));
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

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

  objc_storeStrong(&v27, *(a1 + 600));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsBucket(v17);
  *(a1 + 584) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 55), (a2 + 440));
  v4 = *(a2 + 464);
  *(a2 + 464) = 0;
  v5 = a1[58];
  a1[58] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  *(a1 + 232) = 0;
  v17 = (a1 + 232);
  *(a1 + 224) = a1 + 232;
  *(a1 + 152) = v16;
  *(a1 + 136) = v15;
  *(a1 + 120) = v14;
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  *(a1 + 240) = 0;
  v18 = *(a2 + 224);
  if (v18 != (a2 + 232))
  {
    v19 = 0;
    v20 = (a1 + 232);
    while (1)
    {
      v21 = v18[4];
      v22 = (a1 + 232);
      if (v20 == v17)
      {
        goto LABEL_12;
      }

      v23 = v19;
      v24 = (a1 + 232);
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
          v26 = (a1 + 232);
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

      if (v30 == (a2 + 232))
      {
        break;
      }

      v19 = *v17;
      v20 = *(a1 + 224);
      v18 = v30;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 248, a2 + 248);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 288), *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 312, a2 + 312);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 352, a2 + 352);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 392, a2 + 392);
  return a1;
}

void sub_228ED0E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 352);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 312);
  v13 = *(v10 + 288);
  if (v13)
  {
    *(v10 + 296) = v13;
    operator delete(v13);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 248);
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

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::operator=(uint64_t a1, uint64_t a2)
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
  v12 = *(a2 + 168);
  v14 = a1 + 232;
  v13 = *(a1 + 232);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 184) = v10;
  *(a1 + 200) = v11;
  *(a1 + 168) = v12;
  v15 = *(a2 + 152);
  v16 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v16;
  *(a1 + 152) = v15;
  std::__tree<long>::destroy(v13);
  *(a1 + 224) = *(a2 + 224);
  v18 = *(a2 + 232);
  v19 = *(a2 + 240);
  v17 = (a2 + 232);
  *(a1 + 232) = v18;
  *(a1 + 240) = v19;
  if (v19)
  {
    *(v18 + 16) = v14;
    *(a2 + 224) = v17;
    *v17 = 0;
    *(a2 + 240) = 0;
  }

  else
  {
    *(a1 + 224) = v14;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 248, (a2 + 248));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 288, (a2 + 288));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 312, (a2 + 312));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 352, (a2 + 352));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 392, (a2 + 392));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = objc_alloc(MEMORY[0x277CBEAA8]);
  v7 = 40;
  if (v5 != -1.79769313e308)
  {
    v7 = 0;
  }

  v76 = a2;
  v77 = [v6 initWithTimeIntervalSinceReferenceDate:*(a2 + v7)];
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
      WeakRetained = [v11 underlyingSampleType];

      v10 = WeakRetained;
    }
  }

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v10 startDate:v77 endDate:v9];
  v13 = a1;
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      WeakRetained = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = *(a2 + 288);
      v15 = *(a2 + 296);
      while (v14 != v15)
      {
        v16 = *v14;
        v17 = objc_loadWeakRetained((a1 + 48));
        v18 = [v17 sourceForSourceID:v16];

        if (v18)
        {
          if (([WeakRetained containsObject:v18] & 1) == 0)
          {
            [WeakRetained addObject:v18];
          }
        }

        ++v14;
      }

      v19 = objc_msgSend_copy(WeakRetained);
      [v12 _setSources:v19];

      v13 = a1;
    }
  }

  v86[0] = &unk_283BED5D8;
  v87 = v86;
  v78 = v12;
  v75 = [*(v13 + 16) canonicalUnit];
  v20 = *(v76 + 168);
  v21 = *(v76 + 200);
  v83 = *(v76 + 184);
  v84 = v21;
  v85 = *(v76 + 216);
  v22 = *(v76 + 136);
  *__p = *(v76 + 120);
  v80 = v22;
  v81 = *(v76 + 152);
  v82 = v20;
  if (!v87)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v23 = (*(*v87 + 48))(v87, __p);
  v24 = *(v23 + 8);
  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  v27 = *(v23 + 32);
  v28 = [MEMORY[0x277CCD7E8] quantityWithUnit:v75 doubleValue:*v23];
  [v78 setSumQuantity:v28];

  [v78 setDataCount:v24];
  v29 = *(a1 + 24);
  v73 = v29;
  if ((v29 & 0x20) != 0)
  {
    v30 = [MEMORY[0x277CCD7E8] quantityWithUnit:v75 doubleValue:v26];
    [v78 setMostRecentQuantity:v30];

    v31 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v25 end:v27];
    [v78 setMostRecentQuantityDateInterval:v31];

    v29 = *(a1 + 24);
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_66;
  }

  v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ((v73 & 0x20) != 0)
  {
    v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  *__p = 0u;
  v80 = 0u;
  LODWORD(v81) = 1065353216;
  v32 = *(v76 + 224);
  if (v32 == (v76 + 232))
  {
    goto LABEL_63;
  }

  do
  {
    v33 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_bundleIdentifierForSourceID(v76, v32[4]);
    v34 = v33;
    if (!v33)
    {
      goto LABEL_48;
    }

    v35 = [v33 hash];
    v36 = v35;
    v37 = __p[1];
    if (!__p[1])
    {
      goto LABEL_46;
    }

    v38 = vcnt_s8(__p[1]);
    v38.i16[0] = vaddlv_u8(v38);
    v2 = v38.u32[0];
    if (v38.u32[0] > 1uLL)
    {
      WeakRetained = v35;
      if (v35 >= __p[1])
      {
        WeakRetained = v35 % __p[1];
      }
    }

    else
    {
      WeakRetained = (__p[1] - 1) & v35;
    }

    v39 = *(__p[0] + WeakRetained);
    if (!v39 || (v40 = *v39) == 0)
    {
LABEL_46:
      operator new();
    }

    v70 = __p[1] - 1;
    while (1)
    {
      v41 = v40[1];
      if (v41 == v36)
      {
        break;
      }

      if (v2 > 1)
      {
        if (v41 >= v37)
        {
          v41 %= v37;
        }
      }

      else
      {
        v41 &= v70;
      }

      if (v41 != WeakRetained)
      {
        goto LABEL_46;
      }

LABEL_45:
      v40 = *v40;
      if (!v40)
      {
        goto LABEL_46;
      }
    }

    v42 = v40[2];
    v43 = v34;
    v44 = v43;
    if (v42 != v43)
    {
      v45 = [v42 isEqualToString:v43];

      if (v45)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

LABEL_47:
    v46 = *(v32 + 5);
    v47 = *(v32 + 7);
    *(v40 + 7) = *(v32 + 9);
    *(v40 + 5) = v47;
    *(v40 + 3) = v46;
    v48 = *(v32 + 11);
    v49 = *(v32 + 13);
    v50 = *(v32 + 15);
    v40[15] = v32[17];
    *(v40 + 13) = v50;
    *(v40 + 11) = v49;
    *(v40 + 9) = v48;

LABEL_48:
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

  while (v52 != (v76 + 232));
  for (i = v80; i; i = *i)
  {
    v2 = i[2];
    if (!v87 || ([MEMORY[0x277CCD7E8] quantityWithUnit:v75 doubleValue:{*(*(*v87 + 48))(v87, i + 3)}], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v72, "setObject:forKeyedSubscript:", v55, v2), v55, !v87))
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    WeakRetained = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v87 + 48))(v87, i + 3) + 8)}];
    [v71 setObject:WeakRetained forKeyedSubscript:v2];

    if ((v73 & 0x20) != 0)
    {
      if (!v87)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v56 = (*(*v87 + 48))(v87, i + 3);
      v57 = *(v56 + 24);
      v58 = *(v56 + 32);
      v59 = [MEMORY[0x277CCD7E8] quantityWithUnit:v75 doubleValue:*(v56 + 16)];
      [v68 setObject:v59 forKeyedSubscript:v2];

      WeakRetained = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v57 end:v58];
      [v69 setObject:WeakRetained forKeyedSubscript:v2];
    }
  }

LABEL_63:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  [v78 setSumQuantityBySource:v72];
  [v78 setDataCountBySource:v71];
  if ((v73 & 0x20) != 0)
  {
    [v78 setMostRecentQuantityBySource:v68];
    [v78 setMostRecentQuantityDateIntervalBySource:v69];
  }

LABEL_66:
  std::__function::__value_func<HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCumulative> const&)>::~__value_func[abi:ne200100](v86);
  v60 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v61 = [v78 averageQuantity];
  if (v61)
  {
    v2 = [v78 averageQuantity];
    if (([v2 isCompatibleWithUnit:v60] & 1) == 0)
    {

      goto LABEL_80;
    }
  }

  v62 = [v78 minimumQuantity];
  if (v62)
  {
    WeakRetained = [v78 minimumQuantity];
    if (![WeakRetained isCompatibleWithUnit:v60])
    {
      v63 = 1;
      goto LABEL_74;
    }
  }

  v64 = [v78 maximumQuantity];
  if (v64)
  {
    v65 = [v78 maximumQuantity];
    v66 = [v65 isCompatibleWithUnit:v60];

    v63 = v66 ^ 1;
    if (v62)
    {
      goto LABEL_74;
    }

LABEL_78:
    if (!v61)
    {
      goto LABEL_79;
    }

LABEL_75:

    if ((v63 & 1) == 0)
    {
      goto LABEL_81;
    }

LABEL_80:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v60}];
    goto LABEL_81;
  }

  v63 = 0;
  if (!v62)
  {
    goto LABEL_78;
  }

LABEL_74:

  if (v61)
  {
    goto LABEL_75;
  }

LABEL_79:

  if (v63)
  {
    goto LABEL_80;
  }

LABEL_81:

  return v78;
}

void sub_228ED1C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22)
{
  std::__function::__value_func<HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCumulative> const&)>::~__value_func[abi:ne200100](v22 - 160);

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 272);
  v2 = *(a1 + 288);
  if (v1 != (*(a1 + 296) - v2) >> 3)
  {
    *(a1 + 296) = v2;
    std::vector<long long>::reserve((a1 + 288), v1);
    for (i = *(a1 + 264); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 288, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 288];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeThroughTime(uint64_t a1, double a2)
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
        goto LABEL_81;
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

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v76 = a1;
        v21 = 126 - 2 * __clz(v7);
        if (__p == v6)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,false>(__p, v6, &v76, v22, 1);
      }

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
        v36 = 0;
        for (i = __p; i != v6; i += 6)
        {
          v38 = *(i + 1);
          v73 = *i;
          v74 = v38;
          v75 = *(i + 4);
          v39 = *&v38;
          v40 = v16 - *(&v73 + 1);
          v41 = *&v38 - *(&v73 + 1);
          if (v41 - (v16 - *(&v73 + 1)) >= 0.01)
          {
            if (v40 >= 0.01)
            {
              v46 = *&v73;
              v43 = *(&v74 + 1);
              v42 = v75;
              v47 = v40 / v41 * *&v73;
              *&v73 = v47;
              *&v74 = v16;
              if (v75)
              {
                v72 = BYTE1(v75);
                v44 = v46 - v47;
                v45 = v16;
LABEL_49:
                HDRawQuantitySample::applyMask(&v73, (a1 + 64));
                v48 = *(i + 42);
                v49 = *(i + 41);
                v71 = *(i + 40);
                if (v75 != 1)
                {
                  goto LABEL_67;
                }

                if (v36)
                {
                  v50 = *(&v74 + 1);
                  if (v69 == *(&v74 + 1) || *(a1 + 24) == 1)
                  {
                    HDStatisticsRelative<HDStatisticsCumulative>::addSample((a1 + 120), &v73, v48 ^ 1);
                    LOBYTE(v48) = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsCumulative>::addSample((a1 + 120), &v73, v48 ^ 1);
                  LOBYTE(v48) = 1;
                  v50 = *(&v74 + 1);
                  v69 = *(&v74 + 1);
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_66;
                }

                v51 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_bundleIdentifierForSourceID(a1, v50);
                if (!v51)
                {
                  goto LABEL_65;
                }

                v52 = [v68 objectForKeyedSubscript:v51];
                v53 = v52;
                if (v52)
                {
                  if ([v52 longLongValue] != v50 && *(a1 + 24) != 1)
                  {
LABEL_64:

LABEL_65:
LABEL_66:
                    v36 = 1;
LABEL_67:
                    if (v42)
                    {
                      *&v76 = v44;
                      *(&v76 + 1) = v45;
                      v77 = v39;
                      v78 = v43;
                      v79 = v42;
                      v80 = v72;
                      LOBYTE(v83) = v71;
                      BYTE1(v83) = v49;
                      BYTE2(v83) = v48;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v76);
                    }

                    continue;
                  }
                }

                else
                {
                  v67 = [MEMORY[0x277CCABB0] numberWithLongLong:v50];
                  [v68 setObject:v67 forKeyedSubscript:v51];
                }

                v54 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_canonicalSourceIDForSourceID(a1, v50);
                v55 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsForSource(a1, v54);
                HDStatisticsRelative<HDStatisticsCumulative>::addSample(v55, &v73, v49 ^ 1);
                LOBYTE(v49) = 1;
                goto LABEL_64;
              }
            }
          }

          else if (v75)
          {
            v72 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0.0;
            v39 = 0.0;
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

LABEL_82:
      v64 = *(a1 + 56);
      if (v64 == v5)
      {
        v65 = [MEMORY[0x277CCA890] currentHandler];
        v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsCumulative>]"];
        [v65 handleFailureInFunction:v66 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v64 = *(a1 + 56);
      }

      v5 = v64;
      if (v64 >= a2)
      {
        return;
      }
    }

    v24 = *__p;
    v23 = __p[1];
    v25 = __p[2];
    v26 = *(__p + 3);
    v27 = *(__p + 32);
    v28 = *(__p + 33);
    v29 = a2 - v23;
    if (a2 - v23 >= 0.01)
    {
      if (v25 - v23 - v29 < 0.01)
      {
        v34 = 0;
        v35 = 0;
        v32 = 0.0;
        v31 = __p[2];
        v30 = *(__p + 32);
        v33 = 0.0;
        v25 = 0.0;
        v27 = 0;
LABEL_74:
        v57 = *(__p + 42);
        v58 = *(__p + 41);
        v59 = *(__p + 40);
        *&v76 = v24;
        *(&v76 + 1) = v23;
        v77 = v31;
        v78 = v26;
        v79 = v30;
        v80 = v28;
        v81 = *(__p + 34);
        v82 = *(__p + 19);
        *&v83 = v32;
        *(&v83 + 1) = v33;
        *&v84 = v25;
        *(&v84 + 1) = v34;
        LOBYTE(v85) = v27;
        HIBYTE(v85) = v35;
        HDRawQuantitySample::applyMask(&v76, (a1 + 64));
        if (v79 == 1)
        {
          HDStatisticsRelative<HDStatisticsCumulative>::addSample((a1 + 120), &v76, v57 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v60 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_canonicalSourceIDForSourceID(a1, v78);
            v61 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsForSource(a1, v60);
            HDStatisticsRelative<HDStatisticsCumulative>::addSample(v61, &v76, v58 ^ 1);
          }

          v59 = 1;
          LOBYTE(v58) = 1;
          LOBYTE(v57) = 1;
        }

        if (v85 == 1)
        {
          LOWORD(v75) = v85;
          v62 = v84;
          v63 = *(a1 + 96);
          *v63 = v83;
          *(v63 + 16) = v62;
          *(v63 + 32) = v75;
          *(v63 + 40) = v59;
          *(v63 + 41) = v58;
          *(v63 + 42) = v57;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_81:
        *(a1 + 56) = a2;
        goto LABEL_82;
      }

      v56 = v24 * (v29 / (v25 - v23));
      v31 = a2;
      v30 = *(__p + 32);
      v32 = v24 - v56;
      v24 = v56;
      v33 = a2;
    }

    else
    {
      v30 = 0;
      v31 = __p[2];
      v32 = *__p;
      v33 = __p[1];
    }

    v34 = *(__p + 3);
    v35 = *(__p + 33);
    goto LABEL_74;
  }
}

int *HDStatisticsRelative<HDStatisticsCumulative>::addSample(int *result, double *a2, int a3)
{
  v3 = *a2;
  if (*a2 == 1.79769313e308)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (*a2 != -1.79769313e308);
  }

  v5 = *result;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v5)
      {
        return result;
      }

      v8 = 1;
    }

    else
    {
      if (v5 == 2)
      {
        *(result + 1) = v3 + *(result + 1);
        v7 = *(result + 2) + 1;
LABEL_18:
        *(result + 2) = v7;
        return result;
      }

      v8 = 2;
    }

    *result = v8;
    *(result + 7) = 0;
    *(result + 2) = 0u;
    *(result + 28) = *(result + 48);
    v9 = *(result + 4);
    *(result + 10) = *(result + 5);
    *(result + 6) = v9;
    v3 = *a2;
    v6 = 0.0;
  }

  else
  {
    if (v5 || *(result + 2))
    {
      return result;
    }

    v6 = *(result + 1);
  }

  *(result + 1) = v3 + v6;
  if (a3)
  {
    v7 = 1;
    goto LABEL_18;
  }

  return result;
}

uint64_t **HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v4 = *(a1 + 232);
  v2 = (a1 + 232);
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCumulative>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCumulative>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCumulative>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v2 - 1, a2, &v9);
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCumulative>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCumulative>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCumulative>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v8, &v9);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
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
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_bundleIdentifierForSourceID(a1, a2);
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

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
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

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCumulative>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCumulative>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCumulative>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
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

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
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
                v104 = *(*a3 + 288);
                v105 = *(*a3 + 296);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 288);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 288);
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
                  v107 = *(*a3 + 296);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 296);
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
                    v115 = *(*a3 + 288);
                    v116 = *(*a3 + 296);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 288);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 288);
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
                      v118 = *(*a3 + 296);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 296);
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
                          v122 = *(*a3 + 288);
                          v123 = *(*a3 + 296);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 288);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 288);
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
                            v125 = *(*a3 + 296);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 296);
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
                  v208 = *(*a3 + 288);
                  v209 = *(*a3 + 296);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 288);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 288);
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
                    v211 = *(*a3 + 296);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 296);
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

                      v216 = *(*a3 + 288);
                      v217 = *(*a3 + 296);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 288);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 288);
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
                        v219 = *(*a3 + 296);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 296);
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
                      v134 = *(*a3 + 288);
                      v133 = *(*a3 + 296);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 288);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 288);
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
                        v136 = *(*a3 + 296);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 296);
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

                  v145 = *(*a3 + 288);
                  v144 = *(*a3 + 296);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 288);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 288);
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
                    v147 = *(*a3 + 296);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 296);
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
                            v155 = *(*a3 + 288);
                            v156 = *(*a3 + 296);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 288);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 288);
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
                              v158 = *(*a3 + 296);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 296);
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
                          v165 = *(*a3 + 288);
                          v164 = *(*a3 + 296);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 288);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 288);
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
                            v167 = *(*a3 + 296);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 296);
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
                      v180 = *(*a3 + 288);
                      v179 = *(*a3 + 296);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 288);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 288);
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
                        v182 = *(*a3 + 296);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 296);
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
                      v194 = *(*a3 + 288);
                      v193 = *(*a3 + 296);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 288);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 288);
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
                        v196 = *(*a3 + 296);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 296);
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

                          v202 = *(*a3 + 288);
                          v201 = *(*a3 + 296);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 288);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 288);
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
                            v204 = *(*a3 + 296);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 296);
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
            v24 = *(*a3 + 288);
            v25 = *(*a3 + 296);
            if (v24 == v25)
            {
              v27 = *(*a3 + 288);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 288);
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
              v27 = *(*a3 + 296);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 296);
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

          v67 = *(*a3 + 288);
          v68 = *(*a3 + 296);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 288);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 296);
                break;
              }
            }

            v70 = *(*a3 + 288);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 296);
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
                  v77 = *(v74 + 288);
                  v78 = *(v74 + 296);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 288);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 288);
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
                    v80 = *(v74 + 296);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 296);
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
              v72 = *(*a3 + 288);
              if (v67 == v68)
              {
                v73 = *(*a3 + 288);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 296);
                    break;
                  }
                }

                v73 = *(*a3 + 288);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 296);
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

              v84 = *(v82 + 288);
              v85 = *(v82 + 296);
              if (v84 == v85)
              {
                v87 = *(v82 + 288);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 288);
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
                v87 = *(v82 + 296);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 296);
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
              v92 = *(v90 + 288);
              v93 = *(v90 + 296);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 288);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 296);
                    break;
                  }
                }

                v95 = *(v90 + 288);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 296);
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

          v31 = *(v22 + 288);
          v32 = *(v22 + 296);
          if (v31 == v32)
          {
            v34 = *(v22 + 288);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 288);
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
            v34 = *(v22 + 296);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 296);
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
                v42 = *(v22 + 288);
                v43 = *(v22 + 296);
                if (v42 == v43)
                {
                  v45 = *(v22 + 288);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 288);
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
                  v45 = *(v22 + 296);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 296);
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
            v37 = *(v22 + 288);
            v38 = *(v22 + 296);
            if (v37 == v38)
            {
              v40 = *(v22 + 288);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 288);
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
              v40 = *(v22 + 296);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 296);
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

              v52 = *(v50 + 288);
              v53 = *(v50 + 296);
              if (v52 == v53)
              {
                v55 = *(v50 + 288);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 288);
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
                v55 = *(v50 + 296);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 296);
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
              v57 = *(v50 + 288);
              v58 = *(v50 + 296);
              if (v57 == v58)
              {
                v60 = *(v50 + 288);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 288);
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
                v60 = *(v50 + 296);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 296);
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
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*>(v11, a2, a3))
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

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 288);
  v7 = *(*a4 + 296);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 288);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 296);
        break;
      }
    }

    v9 = *(*a4 + 288);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 296);
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
      v14 = *(*a4 + 288);
      v15 = *(*a4 + 296);
      if (v14 == v15)
      {
        v17 = *(*a4 + 288);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 288);
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
        v17 = *(*a4 + 296);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 296);
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
          v24 = *(*a4 + 288);
          v25 = *(*a4 + 296);
          if (v24 == v25)
          {
            v27 = *(*a4 + 288);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 288);
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
            v27 = *(*a4 + 296);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 296);
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
      v11 = *(*a4 + 288);
      if (v6 == v7)
      {
        v12 = *(*a4 + 288);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 296);
            break;
          }
        }

        v12 = *(*a4 + 288);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 296);
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
      v37 = *(*a4 + 288);
      v38 = *(*a4 + 296);
      if (v37 == v38)
      {
        v40 = *(*a4 + 288);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 288);
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
        v40 = *(*a4 + 296);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 296);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 288);
    v14 = *(*a5 + 296);
    if (v13 == v14)
    {
      v16 = *(*a5 + 288);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 288);
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
      v16 = *(*a5 + 296);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 296);
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
        v22 = *(*a5 + 288);
        v23 = *(*a5 + 296);
        if (v22 == v23)
        {
          v25 = *(*a5 + 288);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 288);
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
          v25 = *(*a5 + 296);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 296);
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
            v31 = *(*a5 + 288);
            v32 = *(*a5 + 296);
            if (v31 == v32)
            {
              v34 = *(*a5 + 288);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 288);
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
              v34 = *(*a5 + 296);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 296);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 288);
    v16 = *(*a6 + 296);
    if (v15 == v16)
    {
      v18 = *(*a6 + 288);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 288);
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
      v18 = *(*a6 + 296);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 296);
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
        v24 = *(*a6 + 288);
        v25 = *(*a6 + 296);
        if (v24 == v25)
        {
          v27 = *(*a6 + 288);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 288);
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
          v27 = *(*a6 + 296);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 296);
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
            v33 = *(*a6 + 288);
            v34 = *(*a6 + 296);
            if (v33 == v34)
            {
              v36 = *(*a6 + 288);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 288);
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
              v36 = *(*a6 + 296);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 296);
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
                v42 = *(*a6 + 288);
                v43 = *(*a6 + 296);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 288);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 288);
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
                  v45 = *(*a6 + 296);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 296);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 288);
          v10 = *(*a3 + 296);
          if (v9 == v10)
          {
            v12 = *(*a3 + 288);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 288);
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
            v12 = *(*a3 + 296);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 296);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 288);
      v19 = *(*a3 + 296);
      if (v18 == v19)
      {
        v21 = *(*a3 + 288);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 288);
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
        v21 = *(*a3 + 296);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 296);
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
            v25 = *(*a3 + 288);
            v26 = *(*a3 + 296);
            if (v25 == v26)
            {
              v28 = *(*a3 + 288);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 288);
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
              v28 = *(*a3 + 296);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 296);
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCumulative> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCumulative> const&)#1}>,HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCumulative> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCumulative> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveAddSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 584) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_configureForStartTime(a1);
  }

  v8 = *(a2 + 8);
  if (v8 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v8 end:*(a2 + 16)];
    v10 = (*(*a1 + 128))(a1, v9, a4);
  }

  return v10;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 584) & 1) == 0)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_advanceToTime(uint64_t a1, double a2)
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

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsFromFinishedBucket(a1, a1 + 120);
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
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::advanceBucket(a1 + 112, v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::addSample(uint64_t a1, uint64_t a2, int a3)
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
        goto LABEL_45;
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
    goto LABEL_45;
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
    goto LABEL_45;
  }

LABEL_16:
  v33 = v20;
  v34 = v15;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 256), v18, &v43 + 1);
  if (*(a1 + 112) == *(a1 + 104) && *(a1 + 144) <= 0)
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
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeThroughTime(v11, v24);
  }

  v38[0] = v42;
  v38[1] = v43;
  v39 = v44;
  v40 = 0;
  v41 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v38);
  if (!*(a1 + 224) || *(a1 + 200) <= v6)
  {
    *(a1 + 192) = v5;
    *(a1 + 200) = v6;
    *(a1 + 208) = v7;
    *(a1 + 216) = v8;
    *(a1 + 224) = v9;
    *(a1 + 225) = v10;
    if (!*(a1 + 184) || *(a1 + 160) <= v6)
    {
      *(a1 + 152) = v5;
      *(a1 + 160) = v6;
      *(a1 + 168) = v7;
      *(a1 + 176) = v8;
      *(a1 + 184) = v9;
      *(a1 + 185) = v10;
    }
  }

  if (*(a1 + 33) == 1)
  {
    v31 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_canonicalSourceIDForSourceID(v11, v18);
    v32 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsForSource(v11, v31);
    if (!*(v32 + 96) || *(v32 + 9) <= v6)
    {
      *(v32 + 8) = v5;
      *(v32 + 9) = v6;
      *(v32 + 10) = v7;
      v32[11] = v8;
      *(v32 + 96) = v9;
      *(v32 + 97) = v10;
      if (!*(v32 + 56) || *(v32 + 4) <= v6)
      {
        *(v32 + 3) = v5;
        *(v32 + 4) = v6;
        *(v32 + 5) = v7;
        v32[6] = v8;
        *(v32 + 56) = v9;
        *(v32 + 57) = v10;
      }
    }
  }

LABEL_45:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 440, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_notifyForCurrentBucket(uint64_t a1)
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::advanceBucket(uint64_t a1, double a2, double a3)
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
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::addSample(a1, v8, 1);
      v8 += 40;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228ED5434(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 464), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 184) = 0;
  if (*(v8 + 208))
  {
    v9 = *(a1 + 240);
    v10 = *(a1 + 232);
    *(a1 + 232) = a1 + 240;
    *(v9 + 16) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
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

  objc_storeStrong(v8, *(a1 + 464));
  *(a1 + 448) = *(a1 + 440);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_didChangeBucket(uint64_t a1, void *a2)
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

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 584))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228ED56DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
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
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228ED5B2C(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40081539FBLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCumulative>>::advanceBucket(v15 + 112, v23, v25);

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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 584) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCumulative>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsCumulativeEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCumulative>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCumulative>::archive(uint64_t a1, int *a2)
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
  HDStatisticsCumulative::archive((a2 + 2), v6);
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = *a2;
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(*(a2 + 4), *(a2 + 4), 8uLL);
  v6[1] = *(a2 + 10);
  v6[2] = *(a2 + 11);
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

double HDStatisticsRelative<HDStatisticsCumulative>::unarchive(uint64_t a1, void *a2)
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
    *&v2 = v3[19];
    *(a1 + 8) = v2;
    *(a1 + 16) = v3[3];
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BED688;
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
  HDStatisticsBucket<HDStatisticsCumulative>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BED688;
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 536) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::configureMergeAnchor(uint64_t a1, void *a2)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 69, a2);
  v7 = a2;
  v4 = a1[69];
  v5 = a1[66];
  a1[66] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[66]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 536))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsCumulative>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsCumulative>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsCumulative>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(v4);
  }

  return v1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
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

  [v9 sortUsingComparator:&__block_literal_global_649];
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveInvalidateInterval(a1, v49, v67);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveInvalidateInterval(a1, 0, v67))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 512) != *(a1 + 504))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsCumulative>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsCumulative>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsCumulative>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_notifyForCurrentBucket(a1);
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_notifyForCurrentBucket(a1);
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

void sub_228ED725C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 538) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_primitiveInvalidateInterval(a1, v7, a3);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 536) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsCumulativeE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 536) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
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
  HDStatisticsCumulative::archive((a1 + 240), &v32);
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 296);
  if (v9 != a1 + 304)
  {
    HDStatisticsCumulative::archive((v9 + 40), &v32);
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

void sub_228ED7AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::decodeInternalsWithDecoder(uint64_t j, void *a2)
{
  v39 = a2;
  *(j + 536) = [v39 decodeBoolForKey:@"needs_config"];
  v3 = v39;
  HDStatisticsBucket<HDStatisticsCumulative>::HDStatisticsBucket(v45, 0, -1.79769313e308, 1.79769313e308);
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
      v11 = v10[19];
      v12 = v10[3];
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

      *(&v56 + 1) = v11;
      v57[0] = v12;
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

      v24 = v19[19];
      v25 = v19[3];
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

      v28[5] = v24;
      v28[6] = v25;
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

void sub_228ED7FB8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  statistics::StatisticsEngine::~StatisticsEngine((v18 - 256));
  HDStatisticsCollectionEngine<HDStatisticsCumulative>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCumulative>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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

uint64_t HDStatisticsCollectionEngine<HDStatisticsCumulative>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 392);
  if (v2)
  {
    *(a1 + 400) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCumulative>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 344);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 304);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 264);
  v2 = *(a1 + 240);
  if (v2)
  {
    *(a1 + 248) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 200);
  std::__tree<long>::destroy(*(a1 + 184));
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCumulative>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsCumulative>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

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
  HDStatisticsBucket<HDStatisticsCumulative>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsCumulative>::HDStatisticsBucket(v19, v17);
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

void *HDStatisticsCollectionEngine<HDStatisticsCumulative>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsCumulative>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 49), (a2 + 392));
  v4 = *(a2 + 416);
  *(a2 + 416) = 0;
  v5 = a1[52];
  a1[52] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCumulative>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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

void sub_228ED8848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
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

uint64_t HDStatisticsBucket<HDStatisticsCumulative>::operator=(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 120);
  v14 = a1 + 184;
  v13 = *(a1 + 184);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 136) = v10;
  *(a1 + 152) = v11;
  *(a1 + 120) = v12;
  std::__tree<long>::destroy(v13);
  *(a1 + 176) = *(a2 + 176);
  v16 = *(a2 + 184);
  v17 = *(a2 + 192);
  v15 = (a2 + 184);
  *(a1 + 184) = v16;
  *(a1 + 192) = v17;
  if (v17)
  {
    *(v16 + 16) = v14;
    *(a2 + 176) = v15;
    *v15 = 0;
    *(a2 + 192) = 0;
  }

  else
  {
    *(a1 + 176) = v14;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 200, (a2 + 200));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 240, (a2 + 240));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 264, (a2 + 264));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 304, (a2 + 304));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 344, (a2 + 344));
  return a1;
}