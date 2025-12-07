uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(float **a1, float **a2, float **a3, float **a4, float **a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a2, a3, a4);
  v11 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    v13 = 0;
    v14 = *a5;
    while (1)
    {
      v15 = &v14[v13];
      if (&v14[v13] == a5[1])
      {
        break;
      }

      v16 = v11[v13];
      if (*v15 < v16)
      {
        break;
      }

      ++v13;
      if (v16 < *v15 || &v11[v13] == v12)
      {
        return result;
      }
    }

    *a4 = v14;
    *a5 = v11;
    v18 = a4[1];
    a4[1] = a5[1];
    a5[1] = v18;
    v19 = a4[2];
    a4[2] = a5[2];
    a5[2] = v19;
    v20 = *a3;
    v21 = a3[1];
    if (*a3 != v21)
    {
      v22 = 0;
      v23 = *a4;
      while (1)
      {
        v24 = &v23[v22];
        if (&v23[v22] == a4[1])
        {
          break;
        }

        v25 = v20[v22];
        if (*v24 < v25)
        {
          break;
        }

        ++v22;
        if (v25 < *v24 || &v20[v22] == v21)
        {
          return result;
        }
      }

      *a3 = v23;
      *a4 = v20;
      v27 = a3[1];
      a3[1] = a4[1];
      a4[1] = v27;
      v28 = a3[2];
      a3[2] = a4[2];
      a4[2] = v28;
      v29 = *a2;
      v30 = a2[1];
      if (*a2 != v30)
      {
        v31 = 0;
        v32 = *a3;
        while (1)
        {
          v33 = &v32[v31];
          if (&v32[v31] == a3[1])
          {
            break;
          }

          v34 = v29[v31];
          if (*v33 < v34)
          {
            break;
          }

          ++v31;
          if (v34 < *v33 || &v29[v31] == v30)
          {
            return result;
          }
        }

        *a2 = v32;
        *a3 = v29;
        v36 = a2[1];
        a2[1] = a3[1];
        a3[1] = v36;
        v37 = a2[2];
        a2[2] = a3[2];
        a3[2] = v37;
        v38 = *a1;
        v39 = a1[1];
        if (*a1 != v39)
        {
          v40 = 0;
          v41 = *a2;
          while (1)
          {
            v42 = &v41[v40];
            if (&v41[v40] == a2[1])
            {
              break;
            }

            v43 = v38[v40];
            if (*v42 < v43)
            {
              break;
            }

            ++v40;
            if (v43 < *v42 || &v38[v40] == v39)
            {
              return result;
            }
          }

          *a1 = v41;
          *a2 = v38;
          v45 = a1[1];
          a1[1] = a2[1];
          a2[1] = v45;
          v46 = a1[2];
          a1[2] = a2[2];
          a2[2] = v46;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(std::vector<unsigned int> *__c, std::vector<unsigned int> *a2)
{
  if (__c != a2)
  {
    v4 = __c + 1;
    if (&__c[1] != a2)
    {
      v5 = __c;
      do
      {
        v6 = v5;
        v5 = v4;
        v7 = v6->n128_u64[1];
        if (v6->n128_u64[0] != v7)
        {
          v8 = v6[1].n128_u64[1];
          v9 = v6[2].n128_u64[0];
          v10 = v6->n128_u64[0] + 4;
          v11 = v8;
          while (v11 != v9)
          {
            v12 = *v11;
            v13 = *(v10 - 4);
            if (*v11 < v13)
            {
              break;
            }

            ++v11;
            v14 = v13 < v12 || v10 == v7;
            v10 += 4;
            if (v14)
            {
              goto LABEL_32;
            }
          }

          v15 = v6[2].n128_u64[1];
          v5->__begin_ = 0;
          v5->__end_ = 0;
          v5->__end_cap_.__value_ = 0;
          std::vector<float>::__move_assign(v5, v6);
          v16 = __c;
          if (v6 != __c)
          {
            v17 = v6;
            while (1)
            {
              v19 = v17[-2].n128_u64[1];
              v18 = v17[-1].n128_u64[0];
              v17 = (v17 - 24);
              if (v19 == v18)
              {
                break;
              }

              v20 = v19 + 4;
              v21 = v8;
              while (v21 != v9)
              {
                v22 = *v21;
                v23 = *(v20 - 4);
                if (*v21 < v23)
                {
                  break;
                }

                ++v21;
                v24 = v23 < v22 || v20 == v18;
                v20 += 4;
                if (v24)
                {
                  goto LABEL_28;
                }
              }

              std::vector<float>::__move_assign(v6, v17);
              v6 = v17;
              if (v17 == __c)
              {
                v16 = __c;
                goto LABEL_29;
              }
            }

LABEL_28:
            v16 = v6;
          }

LABEL_29:
          begin = v16->__begin_;
          if (v16->__begin_)
          {
            v16->__end_ = begin;
            operator delete(begin);
          }

          v16->__begin_ = v8;
          v16->__end_ = v9;
          v16->__end_cap_.__value_ = v15;
        }

LABEL_32:
        v4 = v5 + 1;
      }

      while (&v5[1] != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(std::vector<unsigned int> *__c, std::vector<unsigned int> *a2)
{
  if (__c != a2)
  {
    v3 = __c;
LABEL_3:
    while (&v3[1] != a2)
    {
      v4 = v3++;
      v5 = v4->n128_u64[1];
      if (v4->n128_u64[0] != v5)
      {
        v6 = v4[1].n128_u64[1];
        v7 = v4[2].n128_u64[0];
        v8 = v4->n128_u64[0] + 4;
        v9 = v6;
        while (v9 != v7)
        {
          v10 = *v9;
          v11 = *(v8 - 4);
          if (*v9 < v11)
          {
            break;
          }

          ++v9;
          v12 = v11 < v10 || v8 == v5;
          v8 += 4;
          if (v12)
          {
            goto LABEL_3;
          }
        }

        v13 = v4[2].n128_u64[1];
        v3->__begin_ = 0;
        v3->__end_ = 0;
        v3->__end_cap_.__value_ = 0;
        v14 = v3;
        while (1)
        {
          std::vector<float>::__move_assign(v14, v4);
          v16 = v4[-2].n128_u64[1];
          v15 = v4[-1].n128_u64[0];
          if (v16 == v15)
          {
            break;
          }

          v14 = v4;
          v4 = (v4 - 24);
          v17 = v16 + 4;
          v18 = v6;
          while (v18 != v7)
          {
            v19 = *v18;
            v20 = *(v17 - 4);
            if (*v18 < v20)
            {
              break;
            }

            ++v18;
            v21 = v20 < v19 || v17 == v15;
            v17 += 4;
            if (v21)
            {
              v4 = v14;
              goto LABEL_25;
            }
          }
        }

LABEL_25:
        v22 = v4->n128_u64[0];
        if (v4->n128_u64[0])
        {
          v4->n128_u64[1] = v22;
          operator delete(v22);
        }

        v4->n128_u64[0] = v6;
        v4->n128_u64[1] = v7;
        v4[1].n128_u64[0] = v13;
      }
    }
  }
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<float> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = *(a2 - 3);
  v4 = *(a2 - 2);
  v6 = v2;
  v52 = v2;
  if (v5 == v4)
  {
LABEL_10:
    v12 = a1 + 3;
    if (a1 + 3 < a2)
    {
      v13 = a1;
      while (1)
      {
        v15 = *(v13 + 24);
        v14 = *(v13 + 32);
        v13 = v12;
        if (v15 != v14)
        {
          break;
        }

LABEL_21:
        v12 += 3;
        if (v13 + 24 >= a2)
        {
          goto LABEL_34;
        }
      }

      v16 = v15 + 4;
      v17 = v6;
      while (v17 != *(&v2 + 1))
      {
        v18 = *v17;
        v19 = *(v16 - 4);
        if (*v17 < v19)
        {
          break;
        }

        ++v17;
        v20 = v19 < v18 || v16 == v14;
        v16 += 4;
        if (v20)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v7 = v5 + 4;
    v8 = v2;
    while (v8 != *(&v2 + 1))
    {
      v9 = *v8;
      v10 = *(v7 - 4);
      if (*v8 < v10)
      {
        break;
      }

      ++v8;
      v11 = v10 < v9 || v7 == v4;
      v7 += 4;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v12 = a1;
    do
    {
LABEL_24:
      v22 = v12[3];
      v21 = v12[4];
      v12 += 3;
    }

    while (v22 == v21);
    v23 = v22 + 4;
    v24 = v6;
    while (v24 != *(&v2 + 1))
    {
      v25 = *v24;
      v26 = *(v23 - 4);
      if (*v24 < v26)
      {
        break;
      }

      ++v24;
      v27 = v26 < v25 || v23 == v21;
      v23 += 4;
      if (v27)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_34:
  if (v12 < a2)
  {
    a2 -= 3;
    while (v5 != v4)
    {
      v28 = v5 + 4;
      v29 = v6;
      while (v29 != *(&v2 + 1))
      {
        v30 = *v29;
        v31 = *(v28 - 4);
        if (*v29 < v31)
        {
          break;
        }

        ++v29;
        v32 = v31 < v30 || v28 == v4;
        v28 += 4;
        if (v32)
        {
          goto LABEL_47;
        }
      }

      v5 = *(a2 - 3);
      v4 = *(a2 - 2);
      a2 -= 3;
    }
  }

LABEL_47:
  if (v12 < a2)
  {
    v33 = *v12;
    v34 = *a2;
    do
    {
      *v12 = v34;
      *a2 = v33;
      v35 = v12[1];
      v12[1] = a2[1];
      a2[1] = v35;
      v36 = v12[2];
      v12[2] = a2[2];
      a2[2] = v36;
      do
      {
LABEL_50:
        v33 = v12[3];
        v37 = v12[4];
        v12 += 3;
      }

      while (v33 == v37);
      v38 = v33 + 4;
      v39 = v6;
      while (v39 != *(&v2 + 1))
      {
        v40 = *v39;
        v41 = *(v38 - 4);
        if (*v39 < v41)
        {
          break;
        }

        ++v39;
        v42 = v41 < v40 || v38 == v37;
        v38 += 4;
        if (v42)
        {
          goto LABEL_50;
        }
      }

      while (1)
      {
        v34 = *(a2 - 3);
        v48 = *(a2 - 2);
        a2 -= 3;
        if (v34 == v48)
        {
          break;
        }

        v43 = v34 + 4;
        v44 = v6;
        while (v44 != *(&v2 + 1))
        {
          v45 = *v44;
          v46 = *(v43 - 4);
          if (*v44 < v46)
          {
            break;
          }

          ++v44;
          v47 = v46 < v45 || v43 == v48;
          v43 += 4;
          if (v47)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_70:
      ;
    }

    while (v12 < a2);
  }

  v49 = (v12 - 3);
  if (v12 - 3 != a1)
  {
    std::vector<float>::__move_assign(a1, (v12 - 3));
  }

  v50 = *v49;
  if (*v49)
  {
    *(v12 - 2) = v50;
    operator delete(v50);
  }

  *(v12 - 3) = v52;
  *(v12 - 1) = v3;
  return v12;
}

float **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<float> *,std::__less<void,void> &>(float **a1, float **a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = v3;
  v49 = v3;
  v6 = (a1 + 3);
  v7 = a1[3];
  if (v3 != *(&v3 + 1))
  {
    v8 = a1[4];
    v9 = a1;
LABEL_3:
    v10 = v6;
    v11 = v5 + 4;
    do
    {
      if (v7 == v8 || (v12 = *v7, v13 = *(v11 - 4), *v7 < v13))
      {
        v7 = v10[3];
        v8 = v10[4];
        v6 = (v10 + 3);
        v9 = v10;
        goto LABEL_3;
      }

      ++v7;
      v14 = v13 < v12 || v11 == *(&v3 + 1);
      v11 += 4;
    }

    while (!v14);
    if (v9 != a1)
    {
      do
      {
LABEL_14:
        v16 = *(v2 - 3);
        v2 -= 3;
        v15 = v16;
      }

      while (v5 == *(&v3 + 1));
      v17 = v5 + 4;
      while (v15 != v2[1])
      {
        v18 = *v15;
        v19 = *(v17 - 4);
        if (*v15 < v19)
        {
          break;
        }

        ++v15;
        v20 = v19 < v18 || v17 == *(&v3 + 1);
        v17 += 4;
        if (v20)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_37;
    }

    v6 = v10;
  }

  if (v6 < a2)
  {
    while (1)
    {
      v22 = *(v2 - 3);
      v2 -= 3;
      v21 = v22;
      if (v5 != *(&v3 + 1))
      {
        break;
      }

LABEL_35:
      if (v6 >= v2)
      {
        goto LABEL_36;
      }
    }

    v23 = v5 + 4;
    while (v21 != v2[1])
    {
      v24 = *v21;
      v25 = *(v23 - 4);
      if (*v21 < v25)
      {
        break;
      }

      ++v21;
      v26 = v25 < v24 || v23 == *(&v3 + 1);
      v23 += 4;
      if (v26)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  v10 = v6;
LABEL_37:
  v27 = v10;
  if (v10 < v2)
  {
    v28 = *v10;
    v29 = *v2;
    v27 = v10;
    v30 = v2;
    do
    {
      *v27 = v29;
      *v30 = v28;
      v31 = v27[1];
      v27[1] = v30[1];
      v30[1] = v31;
      v32 = v27[2];
      v27[2] = v30[2];
      v30[2] = v32;
      v33 = v27[3];
      v27 += 3;
      v28 = v33;
      if (v5 != *(&v3 + 1))
      {
        while (1)
        {
          v34 = v5 + 4;
          v35 = v28;
          while (v35 != v27[1])
          {
            v36 = *v35;
            v37 = *(v34 - 4);
            if (*v35 < v37)
            {
              break;
            }

            ++v35;
            v38 = v37 < v36 || v34 == *(&v3 + 1);
            v34 += 4;
            if (v38)
            {
              goto LABEL_50;
            }
          }

          v39 = v27[3];
          v27 += 3;
          v28 = v39;
        }
      }

      do
      {
LABEL_50:
        v40 = *(v30 - 3);
        v30 -= 3;
        v29 = v40;
      }

      while (v5 == *(&v3 + 1));
      v41 = v5 + 4;
      v42 = v29;
      while (v42 != v30[1])
      {
        v43 = *v42;
        v44 = *(v41 - 4);
        if (*v42 < v44)
        {
          break;
        }

        ++v42;
        v45 = v44 < v43 || v41 == *(&v3 + 1);
        v41 += 4;
        if (v45)
        {
          goto LABEL_50;
        }
      }
    }

    while (v27 < v30);
  }

  v46 = (v27 - 3);
  if (v27 - 3 != a1)
  {
    std::vector<float>::__move_assign(a1, (v27 - 3));
  }

  v47 = *v46;
  if (*v46)
  {
    *(v27 - 2) = v47;
    operator delete(v47);
  }

  *(v27 - 3) = v49;
  *(v27 - 1) = v4;
  return v27 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(float **a1, float **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        v6 = a1[1];
        if (*a1 != v6)
        {
          v7 = 0;
          v8 = *(a2 - 3);
          result = 1;
          while (1)
          {
            v10 = &v8[v7];
            if (&v8[v7] == *(a2 - 2))
            {
              break;
            }

            v11 = v5[v7];
            if (*v10 < v11)
            {
              break;
            }

            ++v7;
            if (v11 < *v10 || &v5[v7] == v6)
            {
              return result;
            }
          }

          *a1 = v8;
          *(a2 - 3) = v5;
          v34 = a1[1];
          a1[1] = *(a2 - 2);
          *(a2 - 2) = v34;
          v35 = a1[2];
          a1[2] = *(a2 - 1);
          *(a2 - 1) = v35;
        }

        return 1;
      }

      goto LABEL_19;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a1 + 3, a2 - 3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
      return 1;
  }

LABEL_19:
  v13 = (a1 + 6);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a1 + 3, a1 + 6);
  v14 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v15 = 0;
  while (1)
  {
    v16 = v13->n128_u64[1];
    if (v13->n128_u64[0] != v16)
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = v13->n128_u64[0] + 4;
      v20 = *v14;
      while (v20 != v18)
      {
        v21 = *v20;
        v22 = *(v19 - 4);
        if (*v20 < v22)
        {
          break;
        }

        ++v20;
        v23 = v22 < v21 || v19 == v16;
        v19 += 4;
        if (v23)
        {
          goto LABEL_47;
        }
      }

      v24 = v14[2];
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      std::vector<float>::__move_assign(v14, v13);
      v25 = v13;
      while (1)
      {
        v27 = v25[-2].n128_u64[1];
        v26 = v25[-1].n128_u64[0];
        v25 = (v25 - 24);
        if (v27 == v26)
        {
          break;
        }

        v28 = v27 + 4;
        v29 = v17;
        while (v29 != v18)
        {
          v30 = *v29;
          v31 = *(v28 - 4);
          if (*v29 < v31)
          {
            break;
          }

          ++v29;
          v32 = v31 < v30 || v28 == v26;
          v28 += 4;
          if (v32)
          {
            goto LABEL_44;
          }
        }

        std::vector<float>::__move_assign(v13, v25);
        v13 = v25;
        if (v25 == a1)
        {
          v13 = a1;
          break;
        }
      }

LABEL_44:
      v33 = v13->n128_u64[0];
      if (v13->n128_u64[0])
      {
        v13->n128_u64[1] = v33;
        operator delete(v33);
      }

      v13->n128_u64[0] = v17;
      v13->n128_u64[1] = v18;
      v13[1].n128_u64[0] = v24;
      if (++v15 == 8)
      {
        return v14 + 3 == a2;
      }
    }

LABEL_47:
    v13 = v14;
    v14 += 3;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

std::vector<unsigned int> *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,std::vector<float> *>(std::vector<unsigned int> *a1, std::vector<unsigned int> *a2, std::vector<unsigned int> *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(a1, a4, v9, v12--);
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        begin = a1->__begin_;
        end = a1->__end_;
        if (a1->__begin_ != end)
        {
          v16 = 0;
          v17 = v13->__begin_;
          while (1)
          {
            v18 = &v17[v16];
            if (&v17[v16] == v13->__end_)
            {
              break;
            }

            v19 = *&begin[v16];
            if (*v18 < v19)
            {
              break;
            }

            ++v16;
            if (v19 < *v18 || &begin[v16] == end)
            {
              goto LABEL_18;
            }
          }

          v13->__begin_ = begin;
          a1->__begin_ = v17;
          v21 = v13->__end_;
          v13->__end_ = a1->__end_;
          a1->__end_ = v21;
          value = v13->__end_cap_.__value_;
          v13->__end_cap_.__value_ = a1->__end_cap_.__value_;
          a1->__end_cap_.__value_ = value;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(a1, a4, v9, a1);
        }

LABEL_18:
        ++v13;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<float> *>(a1, v6--, a4, v23);
      }

      while (v23-- > 2);
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(uint64_t a1, int a2, uint64_t a3, std::vector<unsigned int> *this)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((this - a1) >> 3)))
    {
      v8 = (0x5555555555555556 * ((this - a1) >> 3)) | 1;
      v9 = (a1 + 24 * v8);
      if (0x5555555555555556 * ((this - a1) >> 3) + 2 < a3)
      {
        v10 = v9[1].n128_u64[1];
        v11 = v9[2].n128_u64[0];
        if (v10 != v11)
        {
          v12 = v9->n128_u64[0];
          v13 = v10 + 4;
          while (v12 != v9->n128_u64[1])
          {
            v14 = *v12;
            v15 = *(v13 - 4);
            if (*v12 < v15)
            {
              break;
            }

            ++v12;
            v16 = v15 < v14 || v13 == v11;
            v13 += 4;
            if (v16)
            {
              goto LABEL_15;
            }
          }

          v9 = (v9 + 24);
          v8 = 0x5555555555555556 * ((this - a1) >> 3) + 2;
        }
      }

LABEL_15:
      begin = this->__begin_;
      end = this->__end_;
      if (this->__begin_ == end)
      {
LABEL_24:
        value = this->__end_cap_.__value_;
        this->__begin_ = 0;
        this->__end_ = 0;
        this->__end_cap_.__value_ = 0;
        std::vector<float>::__move_assign(this, v9);
        if (v6 >= v8)
        {
          while (1)
          {
            v27 = 2 * v8;
            v8 = (2 * v8) | 1;
            v25 = (a1 + 24 * v8);
            v28 = v27 + 2;
            if (v28 < a3)
            {
              v29 = v25[1].n128_u64[1];
              v30 = v25[2].n128_u64[0];
              if (v29 != v30)
              {
                v31 = v25->n128_u64[0];
                v32 = v29 + 4;
                while (v31 != v25->n128_u64[1])
                {
                  v33 = *v31;
                  v34 = *(v32 - 4);
                  if (*v31 < v34)
                  {
                    break;
                  }

                  ++v31;
                  v35 = v34 < v33 || v32 == v30;
                  v32 += 4;
                  if (v35)
                  {
                    goto LABEL_42;
                  }
                }

                v25 = (v25 + 24);
                v8 = v28;
              }
            }

LABEL_42:
            if (begin != end)
            {
              break;
            }

LABEL_51:
            std::vector<float>::__move_assign(v9, v25);
            v9 = v25;
            if (v6 < v8)
            {
              goto LABEL_26;
            }
          }

          v36 = v25->n128_u64[0];
          v37 = begin + 1;
          while (v36 != v25->n128_u64[1])
          {
            v38 = *v36;
            v39 = *(v37 - 1);
            if (*v36 < v39)
            {
              break;
            }

            ++v36;
            if (v39 < v38 || v37++ == end)
            {
              goto LABEL_51;
            }
          }
        }

        v25 = v9;
LABEL_26:
        v26 = v25->n128_u64[0];
        if (v25->n128_u64[0])
        {
          v25->n128_u64[1] = v26;
          operator delete(v26);
        }

        v25->n128_u64[0] = begin;
        v25->n128_u64[1] = end;
        v25[1].n128_u64[0] = value;
      }

      else
      {
        v19 = v9->n128_u64[0];
        v20 = begin + 1;
        while (v19 != v9->n128_u64[1])
        {
          v21 = *v19;
          v22 = *(v20 - 1);
          if (*v19 < v22)
          {
            break;
          }

          ++v19;
          if (v22 < v21 || v20++ == end)
          {
            goto LABEL_24;
          }
        }
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<float> *>(std::vector<unsigned int> *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    begin = a1->__begin_;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    a1->__end_ = 0;
    a1->__end_cap_.__value_ = 0;
    a1->__begin_ = 0;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 24);
    if (v10 == (a2 - 24))
    {
      v15 = v10->__begin_;
      if (v11->__begin_)
      {
        v11->__end_ = v15;
        operator delete(v15);
        v11->__begin_ = 0;
        v11->__end_ = 0;
        v11->__end_cap_.__value_ = 0;
      }

      v11->__begin_ = begin;
      v11->__end_ = end;
      v11->__end_cap_.__value_ = value;
    }

    else
    {
      std::vector<float>::__move_assign(v10, (a2 - 24));
      v13 = &v11[1];
      v14 = *v12;
      if (*v12)
      {
        *(a2 - 16) = v14;
        operator delete(v14);
        *v12 = 0;
        *(a2 - 16) = 0;
        *(a2 - 8) = 0;
      }

      *(a2 - 24) = begin;
      *(a2 - 16) = end;
      *(a2 - 8) = value;

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(a1, v13, a3, 0xAAAAAAAAAAAAAAABLL * ((v13 - a1) >> 3));
    }
  }
}

void sub_218051BD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

std::vector<unsigned int> *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(std::vector<unsigned int> *this, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = this;
    v8 = &this[v5];
    this = v8 + 1;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v10 < a3)
    {
      begin = v8[2].__begin_;
      end = v8[2].__end_;
      v11 = v8 + 2;
      if (begin != end)
      {
        v14 = v11[-1].__begin_;
        v15 = begin + 1;
        while (v14 != v11[-1].__end_)
        {
          v16 = *v14;
          v17 = *(v15 - 1);
          if (*v14 < v17)
          {
            break;
          }

          ++v14;
          if (v17 < v16 || v15++ == end)
          {
            goto LABEL_14;
          }
        }

        this = v11;
        v5 = v10;
      }
    }

LABEL_14:
    std::vector<float>::__move_assign(v7, this);
  }

  while (v5 <= v6);
  return this;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = *(a2 - 24);
    v8 = *(a2 - 16);
    v6 = (a2 - 24);
    if (v7 != v8)
    {
      v9 = v4 >> 1;
      v10 = a1 + 24 * (v4 >> 1);
      v11 = *v10;
      v12 = v7 + 4;
      while (v11 != *(v10 + 8))
      {
        v13 = *v11;
        v14 = *(v12 - 4);
        if (*v11 < v14)
        {
          break;
        }

        ++v11;
        v15 = v14 < v13 || v12 == v8;
        v12 += 4;
        if (v15)
        {
          return;
        }
      }

      v16 = *(a2 - 8);
      *v6 = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      std::vector<float>::__move_assign(v6, (a1 + 24 * (v4 >> 1)));
      if (v4 >= 2)
      {
        do
        {
          v17 = v10;
          v18 = v9 - 1;
          v9 = (v9 - 1) >> 1;
          v10 = a1 + 24 * v9;
          v19 = *v10;
          v20 = v7 + 4;
          while (v19 != *(v10 + 8))
          {
            v21 = *v19;
            v22 = *(v20 - 4);
            if (*v19 < v22)
            {
              break;
            }

            ++v19;
            v23 = v22 < v21 || v20 == v8;
            v20 += 4;
            if (v23)
            {
              v10 = v17;
              goto LABEL_23;
            }
          }

          std::vector<float>::__move_assign(v17, (a1 + 24 * v9));
        }

        while (v18 > 1);
      }

LABEL_23:
      v24 = *v10;
      if (*v10)
      {
        *(v10 + 8) = v24;
        operator delete(v24);
      }

      *v10 = v7;
      *(v10 + 8) = v8;
      *(v10 + 16) = v16;
    }
  }
}

uint64_t *std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t *std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_218052120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<unsigned long long>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

float **std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> const*>,std::vector<float>,std::__identity,std::__less<void,void>>(float **result, void *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a2[1];
    do
    {
      v4 = a3 >> 1;
      if (*a2 != v3)
      {
        v5 = &result[3 * v4];
        v6 = *v5;
        v7 = *a2 + 4;
        while (v6 != v5[1])
        {
          v8 = *v6;
          v9 = *(v7 - 4);
          if (*v6 < v9)
          {
            break;
          }

          ++v6;
          v10 = v9 < v8 || v7 == v3;
          v7 += 4;
          if (v10)
          {
            goto LABEL_14;
          }
        }

        result = v5 + 3;
        v4 = a3 + ~v4;
      }

LABEL_14:
      a3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2180522DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218052360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218052494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7;
      v7 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t *std::vector<unsigned long long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_218052798(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<MIL::ValueInference::Tensor<unsigned char>>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_21805285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MIL::ValueInference::Tensor<unsigned char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MIL::ValueInference::Tensor<unsigned char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<MIL::ValueInference::Tensor<unsigned char>>::__emplace_back_slow_path<MIL::ValueInference::Tensor<unsigned char>>(a1, a2);
  }

  else
  {
    std::vector<MIL::ValueInference::Tensor<unsigned char>>::__construct_one_at_end[abi:ne200100]<MIL::ValueInference::Tensor<unsigned char>>(a1, a2);
    result = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<MIL::ValueInference::Tensor<float>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MIL::ValueInference::Tensor<float>>::__emplace_back_slow_path<MIL::ValueInference::Tensor<float>>(a1, a2);
  }

  else
  {
    std::vector<MIL::ValueInference::Tensor<float>>::__construct_one_at_end[abi:ne200100]<MIL::ValueInference::Tensor<float>>(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>,MIL::ValueInference::Tensor<unsigned char>*>(uint64_t a1, void (***a2)(void), void (***a3)(void), void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4;
    v7 = a2;
    do
    {
      *a4 = &unk_2829E5F20;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v7 + 1);
      a4[3] = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      a4[6] = 0;
      *(a4 + 2) = *(v7 + 2);
      v8 = v7[7];
      a4[6] = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      a4[7] = v8;
      v7 += 8;
      a4 += 8;
      v6 += 8;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 8;
        (*v11)(v5);
        v9 += 8;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<MIL::ValueInference::Tensor<unsigned char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::vector<MIL::ValueInference::Tensor<unsigned char>>::__construct_one_at_end[abi:ne200100]<MIL::ValueInference::Tensor<unsigned char>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *v2 = &unk_2829E5F20;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 1) = *(a2 + 8);
  v2[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  result = *(a2 + 32);
  *(v2 + 2) = result;
  v4 = *(a2 + 56);
  v2[6] = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v2[7] = v4;
  *(a1 + 8) = v2 + 8;
  return result;
}

uint64_t std::vector<MIL::ValueInference::Tensor<unsigned char>>::__emplace_back_slow_path<MIL::ValueInference::Tensor<unsigned char>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>>(a1, v7);
  }

  v8 = (v2 << 6);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = &unk_2829E5F20;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *(v8 + 1) = *(a2 + 8);
  v8[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0;
  *(v8 + 2) = *(a2 + 32);
  v9 = *(a2 + 56);
  v8[6] = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v8[7] = v9;
  *&v18 = (v2 << 6) + 64;
  v10 = *(a1 + 8);
  v11 = ((v2 << 6) + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>,MIL::ValueInference::Tensor<unsigned char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<MIL::ValueInference::Tensor<unsigned char>>::~__split_buffer(&v16);
  return v15;
}

void sub_218052C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MIL::ValueInference::Tensor<unsigned char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::vector<MIL::ValueInference::Tensor<float>>::__construct_one_at_end[abi:ne200100]<MIL::ValueInference::Tensor<float>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *v2 = &unk_2829E5E60;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 1) = *(a2 + 8);
  v2[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  result = *(a2 + 32);
  *(v2 + 2) = result;
  v4 = *(a2 + 56);
  v2[6] = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v2[7] = v4;
  *(a1 + 8) = v2 + 8;
  return result;
}

uint64_t std::vector<MIL::ValueInference::Tensor<float>>::__emplace_back_slow_path<MIL::ValueInference::Tensor<float>>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<float>>>(a1, v7);
  }

  v8 = (v2 << 6);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = &unk_2829E5E60;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *(v8 + 1) = *(a2 + 8);
  v8[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0;
  *(v8 + 2) = *(a2 + 32);
  v9 = *(a2 + 56);
  v8[6] = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v8[7] = v9;
  *&v18 = (v2 << 6) + 64;
  v10 = a1[1];
  v11 = ((v2 << 6) + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<float>>,MIL::ValueInference::Tensor<float>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<MIL::ValueInference::Tensor<float>>::~__split_buffer(&v16);
  return v15;
}

void sub_218052E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MIL::ValueInference::Tensor<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<float>>,MIL::ValueInference::Tensor<float>*>(uint64_t a1, void (***a2)(void), void (***a3)(void), void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4;
    v7 = a2;
    do
    {
      *a4 = &unk_2829E5E60;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v7 + 1);
      a4[3] = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      a4[6] = 0;
      *(a4 + 2) = *(v7 + 2);
      v8 = v7[7];
      a4[6] = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      a4[7] = v8;
      v7 += 8;
      a4 += 8;
      v6 += 8;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 8;
        (*v11)(v5);
        v9 += 8;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<MIL::ValueInference::Tensor<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<MIL::ValueInference::Tensor<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 8;
      v7 = v4 - 8;
      v8 = v4 - 8;
      do
      {
        v9 = *v8;
        v8 -= 8;
        (*v9)(v7);
        v6 -= 8;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<MIL::ValueInference::Tensor<unsigned char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 8;
      v7 = v4 - 8;
      v8 = v4 - 8;
      do
      {
        v9 = *v8;
        v8 -= 8;
        (*v9)(v7);
        v6 -= 8;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<float (*)(float,float),std::allocator<float (*)(float,float)>,float ()(float,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829E6000;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<float (*)(float,float),std::allocator<float (*)(float,float)>,float ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218053328(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<float (*)(float),std::allocator<float (*)(float)>,float ()(float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829E60B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<float (*)(float),std::allocator<float (*)(float)>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_218053514(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(void **result, char *__src, char *a3, unint64_t a4)
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

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::__function::__func<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0,std::allocator<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0>,float ()(float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829E6150;
  a2[1] = v2;
  return result;
}

float std::__function::__func<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0,std::allocator<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  result = *a2;
  if (fabsf(*a2) <= **(a1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t std::__function::__func<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0,std::allocator<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(float *result, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - result;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = result[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(result + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(result + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *result)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *result;
      }

      if (v40 < *result)
      {
        v40 = *result;
      }

      *(a3 - 1) = v40;
      v42 = result[1];
      if (v41 < v42)
      {
        v41 = result[1];
      }

      else
      {
        *result = v42;
      }

      result[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *result;
      if (v43 < *result)
      {
        *result = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(result, a3, a4);
      return;
    }

    v5 = &result[(a3 - result) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *result;
    if (*v6 < *result)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *result;
    }

    if (*v6 < *result)
    {
      v14 = *result;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *result = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *result;
    if (*result >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != result)
      {
        if (*v18 < v16)
        {
          *result = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = result + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *result;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      result = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = result + 1;
      if (result + 1 >= v18)
      {
        v23 = result + 1;
      }

      else
      {
        v20 = result + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        result = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

float **std::set<float>::set[abi:ne200100]<float const*>(float **a1, float *a2, float *a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<float>::__emplace_hint_unique_key_args<float,float const&>(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<float>::__emplace_hint_unique_key_args<float,float const&>(float **a1, float *a2, float *a3, _DWORD *a4)
{
  v4 = *std::__tree<float>::__find_equal<float>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

float *std::__tree<float>::__find_equal<float>(float **a1, float *a2, float **a3, float *a4, float *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[7], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 2;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[7] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[7];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v16 + 2;
        v16 = *(v16 + 1);
      }

      while (v16);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[7])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[7];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 2;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 2;
  }

  return a4;
}

void std::__tree<float>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<float>::destroy(a1, *a2);
    std::__tree<float>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

float *std::__hash_table<std::__hash_value_type<float,unsigned char>,std::__unordered_map_hasher<float,std::__hash_value_type<float,unsigned char>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,unsigned char>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,unsigned char>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(void *a1, float *a2, uint64_t a3, _DWORD **a4)
{
  if (*a2 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a2;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_21;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = v4 & (*&v5 + 0xFFFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v10 = *(v9 + 1);
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_21;
    }

LABEL_20:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_21;
    }
  }

  if (v9[4] != *a2)
  {
    goto LABEL_20;
  }

  return v9;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::vector<unsigned char>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned char> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v3, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<unsigned char>>::__emplace_back_slow_path<std::vector<unsigned char> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((24 * v2), *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_2180541C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void MIL::Passes::AddOperationIdAttributes(MIL::Passes *this, MIL::Transform::ProgramTransformer *a2)
{
  MIL::Transform::ProgramTransformer::GetProgramBuilder(&v26, this);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v2 = *(MIL::Builder::ProgramBuilder::GetFunctions(v26) + 16);
  if (v2)
  {
    v3 = v24;
    do
    {
      if (v3 >= v25)
      {
        v3 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v23, v2 + 1);
      }

      else
      {
        if (*(v2 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(v3, *(v2 + 2), *(v2 + 3));
        }

        else
        {
          v4 = v2[1];
          v3->__r_.__value_.__r.__words[2] = *(v2 + 4);
          *&v3->__r_.__value_.__l.__data_ = v4;
        }

        ++v3;
      }

      v24 = v3;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v3 = v24;
  }

  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v23) >> 3));
  if (v3 == v23)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(&v23->__r_.__value_.__l.__data_, &v3->__r_.__value_.__l.__data_, &v21, v6, 1);
  v7 = v23;
  v8 = v24;
  if (v23 != v24)
  {
    do
    {
      MIL::Builder::ProgramBuilder::GetFunction(v26, v7, &v21);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v9 = *(MIL::Builder::FunctionBuilder::GetSpecializations(v21) + 16);
      for (i = v19; v9; v9 = *v9)
      {
        if (i >= v20)
        {
          i = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v18, v9 + 1);
        }

        else
        {
          if (*(v9 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(i, *(v9 + 2), *(v9 + 3));
          }

          else
          {
            v11 = v9[1];
            i->__r_.__value_.__r.__words[2] = *(v9 + 4);
            *&i->__r_.__value_.__l.__data_ = v11;
          }

          ++i;
        }

        v19 = i;
      }

      v12 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((i - v18) >> 3));
      if (i == v18)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(&v18->__r_.__value_.__l.__data_, &i->__r_.__value_.__l.__data_, &v16, v13, 1);
      v14 = v18;
      if (v18 != v19)
      {
        MIL::Builder::FunctionBuilder::GetContext(v21, &v17);
        v15 = v17;
        MIL::Builder::FunctionBuilder::GetBlock(v21, v14, &v16);
      }

      v17 = &v18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v7 += 3;
    }

    while (v7 != v8);
  }

  v18 = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_21805444C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  a13 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

void sub_2180547C4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a13, MEMORY[0x277D82828]);
      MEMORY[0x21CEAFDA0](va);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      a10 = (v29 - 112);
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

void MIL::Passes::TypeInferenceResult::~TypeInferenceResult(void **this)
{
  MIL::MILResult::~MILResult(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Passes::TypeInferenceResult::TypeInferenceResult(MIL::Passes::TypeInferenceResult *this)
{
  result = MIL::MILResult::MILResult(this);
  *result = &unk_2829E61D0;
  *(result + 48) = 2;
  return result;
}

{
  result = MIL::MILResult::MILResult(this);
  *result = &unk_2829E61D0;
  *(result + 48) = 2;
  return result;
}

uint64_t MIL::Passes::TypeInferenceResult::TypeInferenceResult(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v9 = *a2;
  *a2 = 0uLL;
  *__p = *a4;
  v8 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  MIL::MILResult::MILResult(a1, &v9, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  *a1 = &unk_2829E61D0;
  *(a1 + 48) = a3;
  return a1;
}

void sub_218054A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Passes::PropagateValueTypes(MIL::Transform::ProgramTransformer *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>, unsigned int a5@<W3>)
{
  v33 = 0;
  if (*(a4 + 12) == 2)
  {
    MIL::MILResult::~MILResult(a4);
    v10 = (a3 + 16);
    v11 = v33;
    v12 = v10;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (!MIL::Builder::FunctionBuilder::TryGetInput(v11, (v12 + 2)))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v27);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "No input named ", 15);
        v14 = *(v12 + 39);
        if (v14 >= 0)
        {
          v15 = (v12 + 2);
        }

        else
        {
          v15 = v12[2];
        }

        if (v14 >= 0)
        {
          v16 = *(v12 + 39);
        }

        else
        {
          v16 = v12[3];
        }

        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " in function ", 13);
        v19 = *(a2 + 23);
        if (v19 >= 0)
        {
          v20 = a2;
        }

        else
        {
          v20 = *a2;
        }

        if (v19 >= 0)
        {
          v21 = *(a2 + 23);
        }

        else
        {
          v21 = a2[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
        LocationPtr = MIL::Builder::FunctionBuilder::GetLocationPtr(v11);
        v23 = LocationPtr[1];
        *&v26 = *LocationPtr;
        *(&v26 + 1) = v23;
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v26, 3, &__p);
        if (v25 < 0)
        {
          operator delete(__p);
        }

        if (*(&v26 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
        }

        *&v27 = *MEMORY[0x277D82828];
        *(&v27 + *(v27 - 24)) = *(MEMORY[0x277D82828] + 24);
        *(&v27 + 1) = MEMORY[0x277D82878] + 16;
        if (v31 < 0)
        {
          operator delete(v30);
        }

        *(&v27 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v28);
        std::ostream::~ostream();
        MEMORY[0x21CEAFDA0](&v32);
        return;
      }
    }

    v27 = 0u;
    v28 = 0u;
    v29 = 1065353216;
    if (*v10)
    {
      MIL::IRTypedArgument::Make();
    }

    if (*(a4 + 12) == 2)
    {
      MIL::MILResult::~MILResult(a4);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v27);
  }
}

void sub_218054DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::ostringstream::~ostringstream(&a18);
  _Unwind_Resume(a1);
}

void anonymous namespace::GetFuncBuilder(MIL::Transform::ProgramTransformer *a1@<X0>, uint64_t a2@<X1>, MIL::Builder::FunctionBuilder **a3@<X2>, uint64_t a4@<X8>)
{
  MIL::Transform::ProgramTransformer::GetProgramBuilder(&v37, a1);
  Functions = MIL::Builder::ProgramBuilder::GetFunctions(v37);
  v8 = std::unordered_map<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>::unordered_map(v36, Functions);
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v8, a2))
  {
    MIL::Builder::ProgramBuilder::GetFunction(v37, a2, &v31);
    v9 = v31;
    v10 = v32;
    *a3 = v31;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v9 = *a3;
    }

    if (*(MIL::Builder::FunctionBuilder::GetSpecializations(v9) + 24) == 1)
    {
      LocationPtr = MIL::Builder::ProgramBuilder::GetLocationPtr(v37);
      v12 = LocationPtr[1];
      *&v24 = *LocationPtr;
      *(&v24 + 1) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Success");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v24, 2, __p);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = *(&v24 + 1);
      if (!*(&v24 + 1))
      {
        goto LABEL_32;
      }

LABEL_31:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_32;
    }

    v20 = MIL::Builder::FunctionBuilder::GetLocationPtr(*a3);
    v21 = v20[1];
    *&v27 = *v20;
    *(&v27 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v25, "Only support exactly 1 IRFunction specialization");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v27, 4, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    v13 = *(&v27 + 1);
    if (*(&v27 + 1))
    {
      goto LABEL_31;
    }
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v31);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "No function named ", 18);
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v15 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    v18 = MIL::Builder::ProgramBuilder::GetLocationPtr(v37);
    v19 = v18[1];
    *&v30 = *v18;
    *(&v30 + 1) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    std::stringbuf::str();
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v30, 3, &v28);
    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    v31 = *MEMORY[0x277D82828];
    *(&v31 + *(v31 - 3)) = *(MEMORY[0x277D82828] + 24);
    v32 = MEMORY[0x277D82878] + 16;
    if (v34 < 0)
    {
      operator delete(v33[7].__locale_);
    }

    v32 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v33);
    std::ostream::~ostream();
    MEMORY[0x21CEAFDA0](&v35);
  }

LABEL_32:
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v36);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }
}

void sub_218055110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v34 - 88);
  v36 = *(v34 - 40);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::IRTypedArgument>::operator=[abi:ne200100]<MIL::IRTypedArgument,std::default_delete<MIL::IRTypedArgument>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRTypedArgument>::shared_ptr[abi:ne200100]<MIL::IRTypedArgument,std::default_delete<MIL::IRTypedArgument>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void anonymous namespace::InferValueTypesFromFunction(MIL::Transform::ProgramTransformer *a1@<X0>, MIL::Builder::FunctionBuilder *this@<X1>, void *a3@<X2>, unsigned int a4@<W3>, MIL::MILResult *a5@<X8>)
{
  v10 = MIL::Builder::FunctionBuilder::SelectedSpecialization(this);
  MIL::Builder::FunctionBuilder::GetBlock(this, v10, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_2180552A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ModifyFunctionWithTypes(MIL::Builder::FunctionBuilder *a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  v6 = MIL::Builder::FunctionBuilder::SelectedSpecialization(a1);
  MIL::Builder::FunctionBuilder::GetBlock(a1, v6, &v19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (*(a3 + 12) == 2)
  {
    MIL::MILResult::~MILResult(a3);
    MIL::Builder::FunctionBuilder::GetInputs(a1, &v19);
    for (i = v21; i; i = *i)
    {
      Name = MIL::Builder::Variable::GetName(i[2]);
      if (*(Name + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *Name, *(Name + 8));
      }

      else
      {
        v9 = *Name;
        v18.__r_.__value_.__r.__words[2] = *(Name + 16);
        *&v18.__r_.__value_.__l.__data_ = v9;
      }

      if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v18))
      {
        MIL::Builder::FunctionBuilder::RemoveInput(a1, &v18.__r_.__value_.__l.__data_);
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = v18;
        }

        v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v18);
        if (!v10)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        ValueType = MIL::IRTypedArgument::GetValueType(v10[5]);
        MIL::Builder::FunctionBuilder::AddInput(a1, &v17, ValueType);
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v19);
    LocationPtr = MIL::Builder::FunctionBuilder::GetLocationPtr(a1);
    v13 = LocationPtr[1];
    *&v16 = *LocationPtr;
    *(&v16 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Success");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a3, &v16, 2, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }
  }
}

void sub_21805548C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Passes::PropagateInputTensorShapes(MIL::Transform::ProgramTransformer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>, unsigned int a5@<W3>)
{
  v114 = 0;
  if (*(a4 + 12) == 2)
  {
    MIL::MILResult::~MILResult(a4);
    memset(v112, 0, sizeof(v112));
    v113 = 1065353216;
    v10 = *(a3 + 16);
    if (v10)
    {
      while (1)
      {
        Input = MIL::Builder::FunctionBuilder::TryGetInput(v114, (v10 + 2));
        if (!Input)
        {
          break;
        }

        Type = MIL::Builder::Variable::TryGetType(Input);
        v14 = Type;
        if (!Type)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
          v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "PropagateInputTensorShapes cannot detect the type of ", 53);
          v59 = *(v10 + 39);
          if (v59 >= 0)
          {
            v60 = (v10 + 2);
          }

          else
          {
            v60 = v10[2];
          }

          if (v59 >= 0)
          {
            v61 = *(v10 + 39);
          }

          else
          {
            v61 = v10[3];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v60, v61);
          LocationPtr = MIL::Builder::FunctionBuilder::GetLocationPtr(v114);
          v63 = LocationPtr[1];
          *&v102 = *LocationPtr;
          *(&v102 + 1) = v63;
          if (v63)
          {
            atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v102, 3, &v100);
          if (v101 < 0)
          {
            operator delete(v100);
          }

          v57 = *(&v102 + 1);
          if (!*(&v102 + 1))
          {
            goto LABEL_51;
          }

LABEL_50:
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          goto LABEL_51;
        }

        if (MIL::IsTensor(Type, v13))
        {
          v15 = MIL::IRValueType::AsTensorType(v14);
          v16 = (*(*v15 + 88))(v15);
          __p = 0uLL;
          v87 = 0;
          std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, v10[5], v10[6], v10[6] - v10[5]);
          v17 = (*(*v15 + 80))(v15);
          std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v106, v17);
          MIL::Builder::FunctionBuilder::GetContext(v114, &v91);
          MIL::IRTensorValueType::MakeWithShape(v91.__r_.__value_.__l.__data_, v16, &__p, &v106);
        }

        if (!MIL::IRValueType::TryCastAsStateType(v14))
        {
          if (MIL::IsTensorBuffer(v14, v18))
          {
            MIL::Builder::FunctionBuilder::GetContext(v114, &v93);
            memset(v92, 0, sizeof(v92));
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v92, v10[5], v10[6], v10[6] - v10[5]);
          }

          if (MIL::IsPixelBuffer(v14, v27))
          {
            v35 = MIL::IRValueType::AsMemoryLayoutType(v14);
            v36 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v35);
            PixelFormatType = MIL::IRPixelBufferValueType::GetPixelFormatType(v36);
            __p = 0uLL;
            v87 = 0;
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, v10[5], v10[6], v10[6] - v10[5]);
            BytesPerRow = MIL::IRPixelBufferValueType::TryGetBytesPerRow(v36);
            Attributes = MIL::IRPixelBufferValueType::GetAttributes(v36);
            std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v106, Attributes);
            if (BytesPerRow)
            {
              v40 = MIL::IRPixelBufferValueType::GetBytesPerRow(v36);
              memset(&v91, 0, sizeof(v91));
              std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&v91, *v40, *(v40 + 8), (*(v40 + 8) - *v40) >> 3);
              MIL::Builder::FunctionBuilder::GetContext(v114, &v99);
              MIL::IRPixelBufferValueType::MakeWithShape(v99, PixelFormatType, &__p, &v91, &v106);
            }

            MIL::Builder::FunctionBuilder::GetContext(v114, &v91);
            MIL::IRPixelBufferValueType::MakeWithShape(v91.__r_.__value_.__l.__data_, PixelFormatType, &__p, &v106);
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
          v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "PropagateInputTensorShapes: Unsupported input type for: ", 56);
          v78 = *(v10 + 39);
          if (v78 >= 0)
          {
            v79 = (v10 + 2);
          }

          else
          {
            v79 = v10[2];
          }

          if (v78 >= 0)
          {
            v80 = *(v10 + 39);
          }

          else
          {
            v80 = v10[3];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v79, v80);
          v81 = MIL::Builder::FunctionBuilder::GetLocationPtr(v114);
          v82 = v81[1];
          *&v90 = *v81;
          *(&v90 + 1) = v82;
          if (v82)
          {
            atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v90, 3, &v88);
          if (v89 < 0)
          {
            operator delete(v88);
          }

          v76 = *(&v90 + 1);
          if (!*(&v90 + 1))
          {
            goto LABEL_97;
          }

LABEL_96:
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
LABEL_97:
          std::ostringstream::~ostringstream(&v106);
          goto LABEL_54;
        }

        v19 = MIL::IRValueType::AsStateType(v14);
        WrappedType = MIL::IRStateValueType::GetWrappedType(v19);
        if ((*(*WrappedType + 24))(WrappedType))
        {
          v21 = MIL::IRValueType::AsStateType(v14);
          v22 = MIL::IRStateValueType::GetWrappedType(v21);
          v23 = MIL::IRValueType::AsTensorType(v22);
          v24 = (*(*v23 + 88))(v23);
          __p = 0uLL;
          v87 = 0;
          std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, v10[5], v10[6], v10[6] - v10[5]);
          v25 = (*(*v23 + 80))(v23);
          std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v106, v25);
          v26 = v114;
          MIL::Builder::FunctionBuilder::GetContext(v114, &v91);
          MIL::Builder::FunctionBuilder::GetContext(v26, &v99);
          MIL::IRTensorValueType::MakeWithShape(v99, v24, &__p, &v106);
        }

        v28 = MIL::IRValueType::AsStateType(v14);
        v29 = MIL::IRStateValueType::GetWrappedType(v28);
        if (!MIL::IRValueType::TryCastAsMemoryLayoutType(v29))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
          v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "PropagateInputTensorShapes: State input ", 40);
          v70 = *(v10 + 39);
          if (v70 >= 0)
          {
            v71 = (v10 + 2);
          }

          else
          {
            v71 = v10[2];
          }

          if (v70 >= 0)
          {
            v72 = *(v10 + 39);
          }

          else
          {
            v72 = v10[3];
          }

          v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v71, v72);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, " wraps an invalid type.", 23);
          v74 = MIL::Builder::FunctionBuilder::GetLocationPtr(v114);
          v75 = v74[1];
          *&v96 = *v74;
          *(&v96 + 1) = v75;
          if (v75)
          {
            atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v96, 3, &v94);
          if (v95 < 0)
          {
            operator delete(v94);
          }

          v76 = *(&v96 + 1);
          if (*(&v96 + 1))
          {
            goto LABEL_96;
          }

          goto LABEL_97;
        }

        v30 = MIL::IRValueType::AsStateType(v14);
        v31 = MIL::IRStateValueType::GetWrappedType(v30);
        v32 = MIL::IRValueType::AsMemoryLayoutType(v31);
        if (MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v32))
        {
          v33 = MIL::IRValueType::AsStateType(v14);
          v34 = MIL::IRStateValueType::GetWrappedType(v33);
          MIL::Builder::FunctionBuilder::GetContext(v114, &v98);
          memset(v97, 0, sizeof(v97));
          std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v97, v10[5], v10[6], v10[6] - v10[5]);
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_21;
        }
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "No input named ", 15);
      v47 = *(v10 + 39);
      if (v47 >= 0)
      {
        v48 = (v10 + 2);
      }

      else
      {
        v48 = v10[2];
      }

      if (v47 >= 0)
      {
        v49 = *(v10 + 39);
      }

      else
      {
        v49 = v10[3];
      }

      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " in function ", 13);
      v52 = *(a2 + 23);
      if (v52 >= 0)
      {
        v53 = a2;
      }

      else
      {
        v53 = *a2;
      }

      if (v52 >= 0)
      {
        v54 = *(a2 + 23);
      }

      else
      {
        v54 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
      v55 = MIL::Builder::FunctionBuilder::GetLocationPtr(v114);
      v56 = v55[1];
      *&v105 = *v55;
      *(&v105 + 1) = v56;
      if (v56)
      {
        atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
      }

      std::stringbuf::str();
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v105, 3, &v103);
      if (v104 < 0)
      {
        operator delete(v103);
      }

      v57 = *(&v105 + 1);
      if (*(&v105 + 1))
      {
        goto LABEL_50;
      }

LABEL_51:
      v106 = *MEMORY[0x277D82828];
      *(&v106 + *(v106 - 3)) = *(MEMORY[0x277D82828] + 24);
      v107 = MEMORY[0x277D82878] + 16;
      if (v110 < 0)
      {
        operator delete(v109);
      }

      v107 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v108);
      std::ostream::~ostream();
      MEMORY[0x21CEAFDA0](v111);
    }

    else
    {
LABEL_21:
      v41 = v114;
      MIL::Builder::FunctionBuilder::GetInputs(v114, &__p);
      v42 = v87;
      if (v87)
      {
        while (1)
        {
          v43 = v42[2];
          Name = MIL::Builder::Variable::GetName(v43);
          if (*(Name + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v91, *Name, *(Name + 8));
          }

          else
          {
            v45 = *Name;
            v91.__r_.__value_.__r.__words[2] = *(Name + 16);
            *&v91.__r_.__value_.__l.__data_ = v45;
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v112, &v91))
          {
            break;
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          v42 = *v42;
          if (!v42)
          {
            goto LABEL_31;
          }
        }

        if (MIL::Builder::Variable::TryGetType(v43))
        {
          MIL::IRTypedArgument::Make();
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
        v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "PropagateInputTensorShapes cannot detect the type of ", 53);
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = &v91;
        }

        else
        {
          v65 = v91.__r_.__value_.__r.__words[0];
        }

        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v91.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, size);
        v67 = MIL::Builder::FunctionBuilder::GetLocationPtr(v41);
        v68 = v67[1];
        *&v85 = *v67;
        *(&v85 + 1) = v68;
        if (v68)
        {
          atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v85, 3, &v83);
        if (v84 < 0)
        {
          operator delete(v83);
        }

        if (*(&v85 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v85 + 1));
        }

        v106 = *MEMORY[0x277D82828];
        *(&v106 + *(v106 - 3)) = *(MEMORY[0x277D82828] + 24);
        v107 = MEMORY[0x277D82878] + 16;
        if (v110 < 0)
        {
          operator delete(v109);
        }

        v107 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v108);
        std::ostream::~ostream();
        MEMORY[0x21CEAFDA0](v111);
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&__p);
      }

      else
      {
LABEL_31:
        std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&__p);
        if (*(a4 + 12) == 2)
        {
          MIL::MILResult::~MILResult(a4);
        }
      }
    }

LABEL_54:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v112);
  }
}

void sub_218056290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  std::ostringstream::~ostringstream(&a59);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v59 - 160);
  _Unwind_Resume(a1);
}

void anonymous namespace::GetTensorBufferArgumentHelper(uint64_t *a1, MIL::IRValueType *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v13, 0, sizeof(v13));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v13, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  v6 = MIL::IRValueType::AsMemoryLayoutType(a2);
  v7 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v6);
  DataType = MIL::IRTensorBufferValueType::GetDataType(v7);
  InterleaveFactors = MIL::IRTensorBufferValueType::GetInterleaveFactors(v7);
  memset(v16, 0, sizeof(v16));
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(v16, *InterleaveFactors, *(InterleaveFactors + 8), (*(InterleaveFactors + 8) - *InterleaveFactors) >> 3);
  Attributes = MIL::IRTensorBufferValueType::GetAttributes(v7);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v15, Attributes);
  memset(__p, 0, sizeof(__p));
  if (MIL::IRTensorBufferValueType::TryGetStrides(v7))
  {
    Strides = MIL::IRTensorBufferValueType::GetStrides(v7);
    if (__p != Strides)
    {
      std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(__p, *Strides, Strides[1], (Strides[1] - *Strides) >> 3);
    }

    MIL::IRTensorBufferValueType::MakeWithShape(v5, DataType, v13, __p, v16, v15);
  }

  RowAlignmentInBytes = MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(v7);
  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(v5, DataType, v13, RowAlignmentInBytes, v16, v15);
}

void sub_2180567FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::Builder::FunctionBuilder>> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::Builder::FunctionBuilder>> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::Builder::FunctionBuilder>> const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_218056B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::InferValueTypesFromBlock@<X0>(MIL::Builder::BlockBuilder *this@<X2>, MIL::Transform::ProgramTransformer *a2@<X0>, uint64_t a3@<X1>, void *a4@<X3>, unsigned int a5@<W4>, MIL::MILResult *a6@<X8>)
{
  memset(v354, 0, sizeof(v354));
  v355 = 1065353216;
  memset(v352, 0, sizeof(v352));
  v353 = 1065353216;
  MIL::Builder::BlockBuilder::GetOperations(&v350, this);
  v8 = v350;
  v313 = v351;
  if (v350 == v351)
  {
LABEL_584:
    ValueType = &v350;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
    LocationPtr = MIL::Builder::BlockBuilder::GetLocationPtr(this);
    v306 = LocationPtr[1];
    *&v321 = *LocationPtr;
    *(&v321 + 1) = v306;
    if (v306)
    {
      atomic_fetch_add_explicit((v306 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v319, "Success");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v321, 2, v319);
    if (v320 < 0)
    {
      operator delete(v319[0]);
    }

    if (*(&v321 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v321 + 1));
    }

    goto LABEL_590;
  }

  v311 = *(MEMORY[0x277D82828] + 24);
  v312 = *MEMORY[0x277D82828];
  while (2)
  {
    v316 = v8;
    v9 = *v8;
    v10 = *(v8 + 8);
    v348 = v9;
    v349 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Operator = MIL::Builder::OperationBuilder::GetOperator(v9);
    if ((*(*Operator + 104))(Operator))
    {
      v12 = 3;
      goto LABEL_529;
    }

    v13 = MIL::Builder::OperationBuilder::GetOperator(v348);
    v14 = (*(*v13 + 16))(v13);
    if (*(v14 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v344, *v14, *(v14 + 8));
    }

    else
    {
      v15 = *v14;
      v344.__r_.__value_.__r.__words[2] = *(v14 + 16);
      *&v344.__r_.__value_.__l.__data_ = v15;
    }

    if (SHIBYTE(v344.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v344.__r_.__value_.__l.__data_);
    }

    v17 = v347;
    if (v347 < 0)
    {
      if (v346 == 14)
      {
        v18 = v345;
        goto LABEL_17;
      }
    }

    else if (v347 == 14)
    {
      v18 = &v345;
LABEL_17:
      v19 = *v18;
      v20 = *(v18 + 6);
      v21 = v19 == 0x6172745F766E6F63 && v20 == 0x65736F70736E6172;
      if (v21)
      {
        MIL::Builder::OperationBuilder::GetParameterNames(v348, &ValueType);
        std::string::basic_string[abi:ne200100]<0>(&__src, "output_shape");
        v61 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(&ValueType, &__src);
        if (SBYTE7(v367) < 0)
        {
          operator delete(__src);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&ValueType);
        if (v61)
        {
          v62 = MIL::Builder::OperationBuilder::GetLocationPtr(v348);
          v63 = v62[1];
          *&v343 = *v62;
          *(&v343 + 1) = v63;
          if (v63)
          {
            atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v341, "Could not infer a new output shape for conv_transpose when output_shape is given as an input. If you would like the op output shape to change according to the new input, try removing output_shape with caution.");
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v343, 3, v341);
          if (v342 < 0)
          {
            operator delete(v341[0]);
          }

          if (*(&v343 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v343 + 1));
          }

          v12 = 1;
          goto LABEL_527;
        }
      }
    }

    v310 = v17;
    v338 = 0u;
    v339 = 0u;
    v340 = 1065353216;
    v314 = v348;
    Parameters = MIL::BuilderPrivate::OperationBuilderPrivate::GetParameters(v348, v16);
    v24 = Parameters + 1;
    v23 = *Parameters;
    if (*Parameters == Parameters + 1)
    {
LABEL_90:
      v58 = MIL::Builder::OperationBuilder::GetLocationPtr(v314);
      v59 = v58[1];
      *&__src = *v58;
      *(&__src + 1) = v59;
      if (v59)
      {
        atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__src, 2, &ValueType);
      if (SHIBYTE(v384.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      if (*(&__src + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&__src + 1));
      }
    }

    else
    {
      while (1)
      {
        __src = 0uLL;
        *&v367 = 0;
        if (*(v23 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v365, v23[4], v23[5]);
        }

        else
        {
          v365 = *(v23 + 4);
        }

        v26 = v23[7];
        v25 = v23[8];
        while (v26 != v25)
        {
          v28 = *v26;
          v27 = *(v26 + 8);
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v28 + 24))(v28))
          {
            (*(*v28 + 48))(v362, v28);
            MIL::IRTypedArgument::Make();
          }

          Name = MIL::IRArgument::GetName(v28);
          Variable = MIL::Builder::BlockBuilder::TryGetVariable(this, Name);
          v31 = Variable;
          if (!Variable)
          {
            goto LABEL_600;
          }

          MIL::Builder::Variable::TryGetValueSharedPtr(&ValueType, Variable);
          v32 = ValueType;
          if (v383)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v383);
          }

          if (v32)
          {
            MIL::Builder::Variable::TryGetValueSharedPtr(v357, v31);
            MIL::IRTypedArgument::Make();
          }

          if (!MIL::Builder::Variable::TryGetType(v31))
          {
LABEL_600:
            Input = MIL::Builder::FunctionBuilder::TryGetInput(a3, Name);
            if (!Input || !MIL::Builder::Variable::TryGetType(Input))
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
              v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Could not deduce type of arg: ", 30);
              v52 = *(Name + 23);
              if (v52 >= 0)
              {
                v53 = Name;
              }

              else
              {
                v53 = *Name;
              }

              if (v52 >= 0)
              {
                v54 = *(Name + 23);
              }

              else
              {
                v54 = *(Name + 8);
              }

              v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ".", 1);
              v56 = MIL::Builder::OperationBuilder::GetLocationPtr(v314);
              v57 = v56[1];
              *&v336 = *v56;
              *(&v336 + 1) = v57;
              if (v57)
              {
                atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
              }

              std::stringbuf::str();
              MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v336, 3, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (*(&v336 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v336 + 1));
              }

              ValueType = v312;
              *(&ValueType + *(v312 - 3)) = v311;
              v383 = (MEMORY[0x277D82878] + 16);
              if (v388 < 0)
              {
                operator delete(v387);
              }

              v383 = (MEMORY[0x277D82868] + 16);
              std::locale::~locale(&v384);
              std::ostream::~ostream();
              MEMORY[0x21CEAFDA0](v389);
              if (v27)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              }

              v48 = 0;
              goto LABEL_63;
            }
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a4, Name))
          {
            MIL::IRTypedArgument::Make();
          }

          v34 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a4, Name);
          if (!v34)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v35 = *(&__src + 1);
          if (*(&__src + 1) >= v367)
          {
            v38 = (*(&__src + 1) - __src) >> 4;
            v39 = v38 + 1;
            if ((v38 + 1) >> 60)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v40 = v367 - __src;
            if ((v367 - __src) >> 3 > v39)
            {
              v39 = v40 >> 3;
            }

            if (v40 >= 0x7FFFFFFFFFFFFFF0)
            {
              v41 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v39;
            }

            p_src = &__src;
            if (v41)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(&__src, v41);
            }

            v42 = 16 * v38;
            v43 = *(v34 + 5);
            *(16 * v38) = v43;
            if (*(&v43 + 1))
            {
              atomic_fetch_add_explicit((*(&v43 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v37 = v42 + 16;
            v44 = (v42 - (*(&__src + 1) - __src));
            memcpy(v44, __src, *(&__src + 1) - __src);
            v45 = __src;
            v46 = v367;
            *&__src = v44;
            *(&__src + 1) = v37;
            *&v367 = 0;
            v384.__locale_ = v45;
            v385 = v46;
            v383 = v45;
            ValueType = v45;
            std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&ValueType);
          }

          else
          {
            **(&__src + 1) = v34[5];
            v36 = v34[6];
            *(v35 + 8) = v36;
            if (v36)
            {
              atomic_fetch_add_explicit(v36 + 1, 1uLL, memory_order_relaxed);
            }

            v37 = v35 + 16;
          }

          *(&__src + 1) = v37;
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          v26 += 16;
        }

        ValueType = &v365;
        v47 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v338, &v365, &std::piecewise_construct, &ValueType, &p_p) + 5);
        if (v47 != &__src)
        {
          std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(v47, __src, *(&__src + 1), (*(&__src + 1) - __src) >> 4);
        }

        v48 = 1;
LABEL_63:
        if (SHIBYTE(v365.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v365.__r_.__value_.__l.__data_);
        }

        ValueType = &__src;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
        if (!v48)
        {
          break;
        }

        v49 = v23[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          do
          {
            v50 = v23[2];
            v21 = *v50 == v23;
            v23 = v50;
          }

          while (!v21);
        }

        v23 = v50;
        if (v50 == v24)
        {
          goto LABEL_90;
        }
      }
    }

    if (*(a6 + 12) != 2)
    {
      v12 = 1;
      goto LABEL_526;
    }

    MIL::MILResult::~MILResult(a6);
    v336 = 0uLL;
    v337 = 0;
    if ((v310 & 0x80) != 0)
    {
      if (v346 != 10)
      {
        goto LABEL_117;
      }

      v60 = v345;
    }

    else
    {
      if (v310 != 10)
      {
        goto LABEL_117;
      }

      v60 = &v345;
    }

    v64 = *v60;
    v65 = v60[4];
    if (v64 != 0x6F6C5F656C696877 || v65 != 28783)
    {
LABEL_117:
      v67 = a6;
      goto LABEL_118;
    }

    v75 = v348;
    __src = 0uLL;
    *&v367 = 0;
    memset(&v365, 0, sizeof(v365));
    std::string::basic_string[abi:ne200100]<0>(&ValueType, "loop_vars");
    NumArguments = MIL::Builder::OperationBuilder::GetNumArguments(v75, &ValueType);
    v77 = NumArguments;
    if (SHIBYTE(v384.__locale_) < 0)
    {
      operator delete(ValueType);
      if (!v77)
      {
LABEL_166:
        v87 = MIL::Builder::OperationBuilder::GetLocationPtr(v75);
        v88 = v87[1];
        __p.__r_.__value_.__r.__words[0] = *v87;
        __p.__r_.__value_.__l.__size_ = v88;
        if (v88)
        {
          atomic_fetch_add_explicit((v88 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__p, 2, &ValueType);
        goto LABEL_190;
      }
    }

    else if (!NumArguments)
    {
      goto LABEL_166;
    }

    v83 = 0;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&ValueType, "loop_vars");
      ArgumentForParameter = MIL::Builder::OperationBuilder::GetArgumentForParameter(v75, &ValueType, v83);
      if (SHIBYTE(v384.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      v85 = MIL::Builder::Variable::TryGetName(ArgumentForParameter);
      if (!v85 || !std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, v85))
      {
        break;
      }

      v86 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, v85);
      if (!v86)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      ValueType = MIL::IRTypedArgument::TryGetValueType(v86[5]);
      if (!ValueType)
      {
        break;
      }

      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__src, &ValueType);
LABEL_165:
      if (v77 == ++v83)
      {
        goto LABEL_166;
      }
    }

    v362[0] = MIL::Builder::Variable::TryGetType(ArgumentForParameter);
    if (v362[0])
    {
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__src, v362);
      goto LABEL_165;
    }

    v94 = MIL::Builder::OperationBuilder::GetLocationPtr(v75);
    v95 = v94[1];
    __p.__r_.__value_.__r.__words[0] = *v94;
    __p.__r_.__value_.__l.__size_ = v95;
    if (v95)
    {
      atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&ValueType, "Could not get the type for a while_loop var");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__p, 5, &ValueType);
LABEL_190:
    if (SHIBYTE(v384.__locale_) < 0)
    {
      operator delete(ValueType);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    if (*(a6 + 12) == 2)
    {
      MIL::MILResult::~MILResult(a6);
      if (*(a6 + 12) == 2)
      {
        MIL::MILResult::~MILResult(a6);
        v97 = *(&__src + 1);
        v98 = __src;
        v99 = (*(&__src + 1) - __src) >> 3;
        v100 = v365.__r_.__value_.__r.__words[0];
        v383 = 0;
        ValueType = 0;
        v384.__locale_ = 0;
        std::vector<std::string const*>::reserve(&ValueType, v99);
        if (v97 == v98)
        {
LABEL_421:
          std::vector<std::vector<MIL::IRValueType const*>>::__assign_with_size[abi:ne200100]<std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(&v336, v365.__r_.__value_.__l.__data_, v365.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v365.__r_.__value_.__l.__size_ - v365.__r_.__value_.__r.__words[0]) >> 3));
LABEL_422:
          v244 = MIL::Builder::OperationBuilder::GetLocationPtr(v75);
          v245 = *(v244 + 8);
          v362[0] = *v244;
          v362[1] = v245;
          if (v245)
          {
            atomic_fetch_add_explicit(v245 + 1, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "Success");
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v362, 2, &__p);
LABEL_440:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v362[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v362[1]);
          }
        }

        else
        {
          v101 = 0;
          v102 = 0;
          if (v99 <= 1)
          {
            v103 = 1;
          }

          else
          {
            v103 = v99;
          }

          do
          {
            v104 = *(__src + 8 * v101);
            MIL::Builder::FunctionBuilder::GetContext(a3, &__p);
            v106 = *(v100 + 24);
            if (v101 >= (*(v100 + 32) - v106) >> 3)
            {
              std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
            }

            StrongestCompatibleType = MIL::GetStrongestCompatibleType(__p.__r_.__value_.__l.__data_, v104, *(v106 + 8 * v101), v105);
            if (__p.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
            }

            v357[0] = StrongestCompatibleType;
            if (!StrongestCompatibleType)
            {
              v249 = MIL::Builder::OperationBuilder::GetLocationPtr(v75);
              v250 = *(v249 + 8);
              v362[0] = *v249;
              v362[1] = v250;
              if (v250)
              {
                atomic_fetch_add_explicit(v250 + 1, 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, "Could not reconcile loop_var types & body block output types");
              MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v362, 5, &__p);
              goto LABEL_440;
            }

            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&ValueType, v357);
            v102 |= StrongestCompatibleType != v104;
            ++v101;
          }

          while (v103 != v101);
          if ((v102 & 1) == 0)
          {
            goto LABEL_421;
          }

          memset(&__p, 0, sizeof(__p));
          if (*(a6 + 12) == 2)
          {
            MIL::MILResult::~MILResult(a6);
            if (v100 != __p.__r_.__value_.__r.__words[0])
            {
              std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>((v100 + 24), *(__p.__r_.__value_.__r.__words[0] + 24), *(__p.__r_.__value_.__r.__words[0] + 32), (*(__p.__r_.__value_.__r.__words[0] + 32) - *(__p.__r_.__value_.__r.__words[0] + 24)) >> 3);
            }

            v109 = 0;
            while (1)
            {
              if (v109 >= (v383 - ValueType) >> 3 || (v110 = *(v100 + 24), v109 >= (*(v100 + 32) - v110) >> 3))
              {
                std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
              }

              if ((MIL::IsEqualOrStrongerType(*(ValueType + v109), *(v110 + 8 * v109), v108) & 1) == 0)
              {
                break;
              }

              if (v103 == ++v109)
              {
                std::vector<std::vector<MIL::IRValueType const*>>::__assign_with_size[abi:ne200100]<std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(&v336, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3));
                v362[0] = &__p;
                std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v362);
                goto LABEL_422;
              }
            }

            v285 = MIL::Builder::OperationBuilder::GetLocationPtr(v75);
            v286 = *(v285 + 8);
            v357[0] = *v285;
            v357[1] = v286;
            if (v286)
            {
              atomic_fetch_add_explicit(v286 + 1, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v362, "Unable to find compatible nested block input types for while_loop");
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v357, 5, v362);
            if (v363 < 0)
            {
              operator delete(v362[0]);
            }

            if (v357[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v357[1]);
            }
          }

          p_p = &__p;
          std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&p_p);
        }

        if (ValueType)
        {
          v383 = ValueType;
          operator delete(ValueType);
        }
      }
    }

    ValueType = &v365;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
    if (__src)
    {
      *(&__src + 1) = __src;
      operator delete(__src);
    }

    v67 = a6;
LABEL_118:
    if (*(v67 + 12) != 2)
    {
      v12 = 1;
      goto LABEL_525;
    }

    MIL::MILResult::~MILResult(v67);
    v315 = MIL::Builder::OperationBuilder::GetOperator(v348);
    MIL::Builder::OperationBuilder::GetOutputs(v348, &p_p);
    if (!(*(*v315 + 128))(v315))
    {
      __src = 0u;
      v367 = 0u;
      v368 = 1065353216;
      v72 = v348;
      v73 = (*(*v315 + 16))(v315);
      if (*(v73 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v365, *v73, *(v73 + 8));
      }

      else
      {
        v74 = *v73;
        v365.__r_.__value_.__r.__words[2] = *(v73 + 16);
        *&v365.__r_.__value_.__l.__data_ = v74;
      }

      if (SHIBYTE(v384.__locale_) < 0)
      {
        v79 = v383 != 5 || *ValueType != 1885431923 || *(ValueType + 4) != 101;
        operator delete(ValueType);
      }

      else
      {
        v79 = SHIBYTE(v384.__locale_) != 5 || ValueType != 1885431923 || BYTE4(ValueType) != 101;
      }

      if (SHIBYTE(v365.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v365.__r_.__value_.__l.__data_);
        if (v79)
        {
LABEL_219:
          v111 = MIL::Builder::OperationBuilder::GetLocationPtr(v72);
          v112 = v111[1];
          __p.__r_.__value_.__r.__words[0] = *v111;
          __p.__r_.__value_.__l.__size_ = v112;
          if (v112)
          {
            atomic_fetch_add_explicit((v112 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__p, 2, &ValueType);
          if (SHIBYTE(v384.__locale_) < 0)
          {
            operator delete(ValueType);
          }

          if (__p.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
          }

LABEL_275:
          v139 = 0;
LABEL_276:
          if (*(a6 + 12) != 2)
          {
            goto LABEL_285;
          }

          MIL::MILResult::~MILResult(a6);
          if (v139)
          {
            if (v336 == *(&v336 + 1))
            {
              MIL::Builder::FunctionBuilder::GetContext(a3, &__p);
              v246 = MIL::Builder::OperationBuilder::GetLocationPtr(v348);
              v247 = v246[1];
              v329 = *v246;
              v330 = v247;
              if (v247)
              {
                atomic_fetch_add_explicit(&v247->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              MIL::Builder::OperationBuilder::GetAttributes(v348);
              v383 = 0;
              ValueType = 0;
              v384.__locale_ = 0;
              (*(*v315 + 208))(&v365);
              v362[0] = &ValueType;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v362);
              if (v330)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v330);
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
              }

              if ((v335 - p_p) >> 3 == (v365.__r_.__value_.__l.__size_ - v365.__r_.__value_.__r.__words[0]) >> 4)
              {
                if (v335 != p_p)
                {
                  v248 = *v365.__r_.__value_.__l.__data_;
                  v325 = v248;
                  if (*(&v248 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v248 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  MIL::IRTypedArgument::Make();
                }

                v12 = 3;
              }

              else
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
                v253 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Invalid number of outputs values inferred from: ", 48);
                v254 = (*(*v315 + 16))(v315);
                v255 = *(v254 + 23);
                if (v255 >= 0)
                {
                  v256 = v254;
                }

                else
                {
                  v256 = *v254;
                }

                if (v255 >= 0)
                {
                  v257 = *(v254 + 23);
                }

                else
                {
                  v257 = *(v254 + 8);
                }

                v258 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v253, v256, v257);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v258, ".", 1);
                v259 = MIL::Builder::OperationBuilder::GetLocationPtr(v348);
                v260 = v259[1];
                *&v328 = *v259;
                *(&v328 + 1) = v260;
                if (v260)
                {
                  atomic_fetch_add_explicit((v260 + 8), 1uLL, memory_order_relaxed);
                }

                std::stringbuf::str();
                MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v328, 3, &v326);
                if (v327 < 0)
                {
                  operator delete(v326);
                }

                if (*(&v328 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v328 + 1));
                }

                ValueType = v312;
                *(&ValueType + *(v312 - 3)) = v311;
                v383 = (MEMORY[0x277D82878] + 16);
                if (v388 < 0)
                {
                  operator delete(v387);
                }

                v383 = (MEMORY[0x277D82868] + 16);
                std::locale::~locale(&v384);
                std::ostream::~ostream();
                MEMORY[0x21CEAFDA0](v389);
                v12 = 1;
              }

              ValueType = &v365;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
              goto LABEL_286;
            }

            v142 = MIL::Builder::OperationBuilder::GetLocationPtr(v348);
            v143 = v142[1];
            *&v333 = *v142;
            *(&v333 + 1) = v143;
            if (v143)
            {
              atomic_fetch_add_explicit((v143 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v331, "Found nested blocks on shape op");
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v333, 3, v331);
            if (v332 < 0)
            {
              operator delete(v331[0]);
            }

            if (*(&v333 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v333 + 1));
            }

LABEL_285:
            v12 = 1;
LABEL_286:
            std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&__src);
            goto LABEL_523;
          }

          MIL::Builder::FunctionBuilder::GetContext(a3, &ValueType);
          v144 = MIL::Builder::OperationBuilder::GetLocationPtr(v348);
          v145 = v144[1];
          v323[2] = *v144;
          v324 = v145;
          if (v145)
          {
            atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Builder::OperationBuilder::GetAttributes(v348);
          (*(*v315 + 192))(v362);
          if (v324)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v324);
          }

          if (v383)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v383);
          }

          v146 = v348;
          v147 = v349;
          if (v349)
          {
            atomic_fetch_add_explicit(&v349->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Builder::OperationBuilder::GetOutputs(v146, &v390);
          v148 = v390;
          v149 = v391;
          if (v391 - v390 != v362[1] - v362[0])
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
            v177 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Invalid number of outputs types inferred from: ", 47);
            v178 = MIL::Builder::OperationBuilder::GetOperator(v146);
            v179 = (*(*v178 + 16))(v178);
            v180 = *(v179 + 23);
            if (v180 >= 0)
            {
              v181 = v179;
            }

            else
            {
              v181 = *v179;
            }

            if (v180 >= 0)
            {
              v182 = *(v179 + 23);
            }

            else
            {
              v182 = *(v179 + 8);
            }

            v183 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v177, v181, v182);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v183, ".", 1);
            v184 = MIL::Builder::OperationBuilder::GetLocationPtr(v146);
            v185 = v184[1];
            *&v381 = *v184;
            *(&v381 + 1) = v185;
            if (v185)
            {
              atomic_fetch_add_explicit((v185 + 8), 1uLL, memory_order_relaxed);
            }

            std::stringbuf::str();
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v381, 3, &v379);
            if (v380 < 0)
            {
              operator delete(v379);
            }

            if (*(&v381 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v381 + 1));
            }

            ValueType = v312;
            *(&ValueType + *(v312 - 3)) = v311;
            v383 = (MEMORY[0x277D82878] + 16);
            if (v388 < 0)
            {
              operator delete(v387);
            }

            v383 = (MEMORY[0x277D82868] + 16);
            std::locale::~locale(&v384);
            std::ostream::~ostream();
            MEMORY[0x21CEAFDA0](v389);
LABEL_351:
            if (v390)
            {
              v391 = v390;
              operator delete(v390);
            }

            if (v147)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v147);
            }

            if (*(a6 + 12) == 2)
            {
              MIL::MILResult::~MILResult(a6);
              if (v335 != p_p)
              {
                OutputType = MIL::Builder::OperationBuilder::GetOutputType(v348, 0);
                v187 = *v362[0];
                MIL::Builder::Variable::GetName(*p_p);
                if (MIL::IsTensor(OutputType, v188) && MIL::IsTensor(v187, v189))
                {
                  v190 = MIL::IRValueType::AsTensorType(OutputType);
                  v191 = MIL::IRValueType::AsTensorType(v187);
                  v192 = (*(*v191 + 88))(v191);
                  v193 = (*(*v191 + 96))(v191);
                  memset(&v365, 0, sizeof(v365));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v365, *v193, *(v193 + 8), (*(v193 + 8) - *v193) >> 3);
                  v194 = (*(*v190 + 80))(v190);
                  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&ValueType, v194);
                  MIL::Builder::FunctionBuilder::GetContext(a3, &v390);
                  MIL::IRTensorValueType::MakeWithShape(v390, v192, &v365, &ValueType);
                }

                if (MIL::IsTensorBuffer(OutputType, v189) && MIL::IsTensorBuffer(v187, v195))
                {
                  v196 = MIL::IRValueType::AsMemoryLayoutType(v187);
                  v197 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v196);
                  Shape = MIL::IRTensorBufferValueType::GetShape(v197);
                  v383 = 0;
                  ValueType = 0;
                  v384.__locale_ = 0;
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&ValueType, *Shape, *(Shape + 8), (*(Shape + 8) - *Shape) >> 3);
                  MIL::Builder::FunctionBuilder::GetContext(a3, v323);
                  memset(v322, 0, sizeof(v322));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v322, ValueType, v383, (v383 - ValueType) >> 3);
                }

                if (MIL::IsPixelBuffer(OutputType, v195) && MIL::IsPixelBuffer(v187, v199))
                {
                  v200 = MIL::IRValueType::AsMemoryLayoutType(OutputType);
                  v201 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v200);
                  PixelFormatType = MIL::IRPixelBufferValueType::GetPixelFormatType(v201);
                  v203 = MIL::IRValueType::AsMemoryLayoutType(v187);
                  v204 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v203);
                  v205 = MIL::IRPixelBufferValueType::GetShape(v204);
                  memset(&v365, 0, sizeof(v365));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v365, *v205, *(v205 + 8), (*(v205 + 8) - *v205) >> 3);
                  BytesPerRow = MIL::IRPixelBufferValueType::TryGetBytesPerRow(v201);
                  Attributes = MIL::IRPixelBufferValueType::GetAttributes(v201);
                  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&ValueType, Attributes);
                  if (BytesPerRow)
                  {
                    v208 = MIL::IRPixelBufferValueType::GetBytesPerRow(v201);
                    v390 = 0;
                    v391 = 0;
                    v392 = 0;
                    std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&v390, *v208, *(v208 + 8), (*(v208 + 8) - *v208) >> 3);
                    MIL::Builder::FunctionBuilder::GetContext(a3, &v379);
                    MIL::IRPixelBufferValueType::MakeWithShape(v379, PixelFormatType, &v365, &v390, &ValueType);
                  }

                  MIL::Builder::FunctionBuilder::GetContext(a3, &v390);
                  MIL::IRPixelBufferValueType::MakeWithShape(v390, PixelFormatType, &v365, &ValueType);
                }

                MIL::IRTypedArgument::Make();
              }

              v12 = 0;
            }

            else
            {
              v12 = 1;
            }

            if (v362[0])
            {
              v362[1] = v362[0];
              operator delete(v362[0]);
            }

            goto LABEL_286;
          }

          v150 = v339;
          if (!v339)
          {
LABEL_317:
            if (v149 != v148)
            {
              for (i = 0; i < v391 - v390; ++i)
              {
                Type = MIL::Builder::Variable::TryGetType(v148[i]);
                if ((*(*Type + 24))(Type) && (*(**(v362[0] + i) + 24))(*(v362[0] + i)))
                {
                  v168 = MIL::Builder::Variable::TryGetType(v390[i]);
                  v169 = (*(*v168 + 24))(v168);
                  v170 = (*(*v169 + 96))(v169);
                  memset(&v365, 0, sizeof(v365));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v365, *v170, *(v170 + 8), (*(v170 + 8) - *v170) >> 3);
                  v171 = (*(**(v362[0] + i) + 24))(*(v362[0] + i));
                  v172 = (*(*v171 + 96))(v171);
                  memset(&__p, 0, sizeof(__p));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v172, *(v172 + 8), (*(v172 + 8) - *v172) >> 3);
                  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&v365))
                  {
                    v173 = __p.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    HasVariadicUnknownDims = MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&__p);
                    v173 = __p.__r_.__value_.__r.__words[0];
                    if (!HasVariadicUnknownDims && v365.__r_.__value_.__l.__size_ - v365.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0])
                    {
                      std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
                      v289 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Invalid tensor rank ", 20);
                      v290 = MEMORY[0x21CEAFB40](v289, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
                      v291 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v290, " inferred from: ", 16);
                      v292 = MIL::Builder::OperationBuilder::GetOperator(v146);
                      v293 = (*(*v292 + 16))(v292);
                      v294 = *(v293 + 23);
                      if (v294 >= 0)
                      {
                        v295 = v293;
                      }

                      else
                      {
                        v295 = *v293;
                      }

                      if (v294 >= 0)
                      {
                        v296 = *(v293 + 23);
                      }

                      else
                      {
                        v296 = *(v293 + 8);
                      }

                      v297 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v291, v295, v296);
                      v298 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v297, ", expecting ", 12);
                      v299 = MEMORY[0x21CEAFB40](v298, (v365.__r_.__value_.__l.__size_ - v365.__r_.__value_.__r.__words[0]) >> 3);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v299, ".", 1);
                      v300 = MIL::Builder::OperationBuilder::GetLocationPtr(v146);
                      v301 = v300[1];
                      *&v377 = *v300;
                      *(&v377 + 1) = v301;
                      if (v301)
                      {
                        atomic_fetch_add_explicit((v301 + 8), 1uLL, memory_order_relaxed);
                      }

                      std::stringbuf::str();
                      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v377, 3, &v375);
                      if (v376 < 0)
                      {
                        operator delete(v375);
                      }

                      if (*(&v377 + 1))
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v377 + 1));
                      }

                      ValueType = v312;
                      *(&ValueType + *(v312 - 3)) = v311;
                      v383 = (MEMORY[0x277D82878] + 16);
                      if (v388 < 0)
                      {
                        operator delete(v387);
                      }

                      v383 = (MEMORY[0x277D82868] + 16);
                      std::locale::~locale(&v384);
                      std::ostream::~ostream();
                      MEMORY[0x21CEAFDA0](v389);
                      if (__p.__r_.__value_.__r.__words[0])
                      {
                        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (v365.__r_.__value_.__r.__words[0])
                      {
                        v365.__r_.__value_.__l.__size_ = v365.__r_.__value_.__r.__words[0];
                        operator delete(v365.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_351;
                    }
                  }

                  if (v173)
                  {
                    __p.__r_.__value_.__l.__size_ = v173;
                    operator delete(v173);
                  }

                  if (v365.__r_.__value_.__r.__words[0])
                  {
                    v365.__r_.__value_.__l.__size_ = v365.__r_.__value_.__r.__words[0];
                    operator delete(v365.__r_.__value_.__l.__data_);
                  }
                }

                v148 = v390;
              }
            }

LABEL_330:
            v175 = MIL::Builder::OperationBuilder::GetLocationPtr(v146);
            v176 = v175[1];
            *&v374 = *v175;
            *(&v374 + 1) = v176;
            if (v176)
            {
              atomic_fetch_add_explicit((v176 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v372, "Success");
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v374, 2, v372);
            if (v373 < 0)
            {
              operator delete(v372[0]);
            }

            if (*(&v374 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v374 + 1));
            }

            goto LABEL_351;
          }

LABEL_297:
          if (v150[6] == v150[5])
          {
            goto LABEL_315;
          }

          v151 = 0;
          v152 = 0;
          v153 = 1;
          while (1)
          {
            v154 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v146, (v150 + 2), v152);
            v155 = MIL::Builder::Variable::TryGetType(v154);
            if (!(*(*v155 + 24))(v155))
            {
              goto LABEL_330;
            }

            v156 = MIL::IRTypedArgument::TryGetValueType(*(v150[5] + v151));
            if (!(*(*v156 + 24))(v156))
            {
              goto LABEL_330;
            }

            v157 = MIL::Builder::Variable::TryGetType(v154);
            v158 = (*(*v157 + 24))(v157);
            v159 = (*(*v158 + 96))(v158);
            v383 = 0;
            ValueType = 0;
            v384.__locale_ = 0;
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&ValueType, *v159, *(v159 + 8), (*(v159 + 8) - *v159) >> 3);
            v160 = MIL::IRTypedArgument::TryGetValueType(*(v150[5] + v151));
            v161 = (*(*v160 + 24))(v160);
            v162 = (*(*v161 + 96))(v161);
            memset(&v365, 0, sizeof(v365));
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v365, *v162, *(v162 + 8), (*(v162 + 8) - *v162) >> 3);
            if (!MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&ValueType))
            {
              break;
            }

            v153 = 0;
            LOBYTE(v163) = 0;
            v164 = v365.__r_.__value_.__r.__words[0];
            if (v365.__r_.__value_.__r.__words[0])
            {
              goto LABEL_303;
            }

LABEL_304:
            if (ValueType)
            {
              v383 = ValueType;
              operator delete(ValueType);
            }

            if (v163)
            {
              ++v152;
              v151 += 16;
              if (v152 < (v150[6] - v150[5]) >> 4)
              {
                continue;
              }
            }

            if (!v153)
            {
              goto LABEL_330;
            }

LABEL_315:
            v150 = *v150;
            if (!v150)
            {
              v148 = v390;
              v149 = v391;
              goto LABEL_317;
            }

            goto LABEL_297;
          }

          v165 = MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&v365);
          v164 = v365.__r_.__value_.__r.__words[0];
          if (v165)
          {
            v153 = 0;
            LOBYTE(v163) = 0;
            if (!v365.__r_.__value_.__r.__words[0])
            {
              goto LABEL_304;
            }
          }

          else
          {
            v163 = v383 - ValueType == v365.__r_.__value_.__l.__size_ - v365.__r_.__value_.__r.__words[0];
            v153 &= v163;
            if (!v365.__r_.__value_.__r.__words[0])
            {
              goto LABEL_304;
            }
          }

LABEL_303:
          v365.__r_.__value_.__l.__size_ = v164;
          operator delete(v164);
          goto LABEL_304;
        }
      }

      else if (v79)
      {
        goto LABEL_219;
      }

      v113 = v339;
      if (v339)
      {
        while (2)
        {
          memset(&__p, 0, sizeof(__p));
          v114 = v113[5];
          v115 = v113[6];
          while (v114 != v115)
          {
            if (!MIL::IRTypedArgument::IsValue(*v114))
            {
              v117 = MIL::IRTypedArgument::GetValueType(*v114);
              v118 = (*(*v117 + 24))(v117);
              v119 = v118;
              if (v118 && ((*(*v118 + 104))(v118) & 1) != 0)
              {
                v120 = (*(*v119 + 96))(v119);
                v121 = *v120;
                v122 = v120[1];
                while (v121 != v122)
                {
                  if ((*(**v121 + 24))())
                  {
                    v140 = MIL::Builder::OperationBuilder::GetLocationPtr(v72);
                    v141 = *(v140 + 8);
                    v362[0] = *v140;
                    v362[1] = v141;
                    if (v141)
                    {
                      atomic_fetch_add_explicit(v141 + 1, 1uLL, memory_order_relaxed);
                    }

                    goto LABEL_269;
                  }

                  v121 += 8;
                }

                v123 = (*(*v119 + 16))(v119);
                v124 = (*(*v119 + 88))(v119);
                if (v124 > 4)
                {
                  if (v124 == 11)
                  {
                    LODWORD(v362[0]) = 0;
                    std::vector<int>::vector[abi:ne200100](&ValueType, v123, v362);
                    MIL::IRTensorValueType::MakeInt32Value();
                  }

                  if (v124 == 5)
                  {
                    LODWORD(v362[0]) = 0;
                    std::vector<float>::vector[abi:ne200100](&ValueType, v123, v362);
                    MIL::IRTensorValueType::MakeFloat32Value();
                  }
                }

                else
                {
                  if (v124 == 2)
                  {
                    LOBYTE(v362[0]) = 0;
                    std::vector<BOOL>::vector(&ValueType, v123, v362);
                    MIL::IRTensorValueType::MakeBoolValue(v119, &ValueType);
                  }

                  if (v124 == 4)
                  {
                    LOWORD(v362[0]) = MIL::Fp16::FromFloat(v124, 0.0);
                    std::vector<MIL::Fp16>::vector[abi:ne200100](&ValueType, v123, v362);
                    MIL::IRTensorValueType::MakeFloat16Value();
                  }
                }

                v287 = MIL::Builder::OperationBuilder::GetLocationPtr(v72);
                v288 = *(v287 + 8);
                v362[0] = *v287;
                v362[1] = v288;
                if (v288)
                {
                  atomic_fetch_add_explicit(v288 + 1, 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&ValueType, "Unhandled data type for shape");
                MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v362, 4, &ValueType);
              }

              else
              {
                v251 = MIL::Builder::OperationBuilder::GetLocationPtr(v72);
                v252 = *(v251 + 8);
                v362[0] = *v251;
                v362[1] = v252;
                if (v252)
                {
                  atomic_fetch_add_explicit(v252 + 1, 1uLL, memory_order_relaxed);
                }

LABEL_269:
                std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
                MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v362, 2, &ValueType);
              }

              if (SHIBYTE(v384.__locale_) < 0)
              {
                operator delete(ValueType);
              }

              if (v362[1])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v362[1]);
              }

              v357[0] = &__p;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v357);
              goto LABEL_275;
            }

            MIL::IRTypedArgument::TryGetValueSharedPtr(*v114, v362);
            size = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
            {
              v125 = __p.__r_.__value_.__r.__words[0];
              v126 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
              v127 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4;
              v128 = v127 + 1;
              if ((v127 + 1) >> 60)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v129 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
              if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3 > v128)
              {
                v128 = v129 >> 3;
              }

              v130 = v129 >= 0x7FFFFFFFFFFFFFF0;
              v131 = 0xFFFFFFFFFFFFFFFLL;
              if (!v130)
              {
                v131 = v128;
              }

              p_src = &__p;
              if (v131)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(&__p, v131);
              }

              v132 = (16 * v127);
              v133 = &v132[-((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4)];
              *v132++ = *v362;
              v362[1] = 0;
              v362[0] = 0;
              memcpy(v133, v125, v126);
              v134 = __p.__r_.__value_.__r.__words[0];
              v135 = __p.__r_.__value_.__r.__words[2];
              __p.__r_.__value_.__r.__words[0] = v133;
              *&__p.__r_.__value_.__r.__words[1] = v132;
              v384.__locale_ = v134;
              v385 = v135;
              v383 = v134;
              ValueType = v134;
              std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&ValueType);
              __p.__r_.__value_.__l.__size_ = v132;
              if (v362[1])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v362[1]);
              }
            }

            else
            {
              *__p.__r_.__value_.__l.__size_ = *v362;
              __p.__r_.__value_.__l.__size_ = size + 16;
            }

            v114 += 2;
          }

          ValueType = v113 + 2;
          v136 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__src, v113 + 2, &std::piecewise_construct, &ValueType, v362) + 5);
          if (v136 != &__p)
          {
            std::vector<std::shared_ptr<MIL::IRValue const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRValue const>*,std::shared_ptr<MIL::IRValue const>*>(v136, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4);
          }

          v357[0] = &__p;
          std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v357);
          v113 = *v113;
          if (v113)
          {
            continue;
          }

          break;
        }
      }

      v137 = MIL::Builder::OperationBuilder::GetLocationPtr(v72);
      v138 = v137[1];
      __p.__r_.__value_.__r.__words[0] = *v137;
      __p.__r_.__value_.__l.__size_ = v138;
      if (v138)
      {
        atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__p, 2, &ValueType);
      if (SHIBYTE(v384.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      v139 = 1;
      goto LABEL_276;
    }

    v68 = v348;
    std::string::basic_string[abi:ne200100]<0>(&ValueType, "function");
    MIL::Builder::OperationBuilder::TryGetAttribute(v68, &ValueType, &v370);
    if (SHIBYTE(v384.__locale_) < 0)
    {
      operator delete(ValueType);
    }

    if (!v370)
    {
      v80 = MIL::Builder::OperationBuilder::GetLocationPtr(v68);
      v81 = v80[1];
      *&__src = *v80;
      *(&__src + 1) = v81;
      if (v81)
      {
        atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&ValueType, "Found call op with no function name");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__src, 3, &ValueType);
      if (SHIBYTE(v384.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      if (*(&__src + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&__src + 1));
      }

      goto LABEL_518;
    }

    v69 = MIL::IRValue::AsTensor(v370);
    v70 = MIL::IRTensorValue::GetDataView<std::string>(v69);
    if (*(v70 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v70, *(v70 + 8));
    }

    else
    {
      v71 = *v70;
      __p.__r_.__value_.__r.__words[2] = *(v70 + 16);
      *&__p.__r_.__value_.__l.__data_ = v71;
    }

    v369 = 0;
    if (*(a6 + 12) != 2)
    {
      goto LABEL_516;
    }

    MIL::MILResult::~MILResult(a6);
    if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v352, &__p))
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v352, &__p, &__p);
      __src = 0u;
      v367 = 0u;
      v368 = 1065353216;
      MIL::Builder::OperationBuilder::GetParameterNames(v68, &v365);
      v209 = v365.__r_.__value_.__r.__words[2];
      if (v365.__r_.__value_.__r.__words[2])
      {
        while (MIL::Builder::FunctionBuilder::TryGetInput(v369, (v209 + 2)))
        {
          if (MIL::Builder::OperationBuilder::GetNumArguments(v68, v209 + 2) >= 2)
          {
            v271 = MIL::Builder::OperationBuilder::GetLocationPtr(v68);
            v272 = *(v271 + 8);
            v362[0] = *v271;
            v362[1] = v272;
            if (v272)
            {
              atomic_fetch_add_explicit(v272 + 1, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(&ValueType, "Don't yet support >1 args for called function params");
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v362, 4, &ValueType);
            if (SHIBYTE(v384.__locale_) < 0)
            {
              operator delete(ValueType);
            }

            if (v362[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v362[1]);
            }

            goto LABEL_514;
          }

          v210 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v68, (v209 + 2), 0);
          v211 = MIL::Builder::Variable::TryGetName(v210);
          if (!v211)
          {
            v217 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v68, (v209 + 2), 0);
            MIL::Builder::Variable::TryGetValueSharedPtr(v362, v217);
            if (v362[0])
            {
              v360 = v362[0];
              v361 = v362[1];
              if (v362[1])
              {
                atomic_fetch_add_explicit(v362[1] + 1, 1uLL, memory_order_relaxed);
              }

              MIL::IRTypedArgument::Make();
            }

            std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
            v218 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Could not build TypedArgument for ", 34);
            v219 = *(v209 + 39);
            if (v219 >= 0)
            {
              v220 = (v209 + 2);
            }

            else
            {
              v220 = v209[2];
            }

            if (v219 >= 0)
            {
              v221 = *(v209 + 39);
            }

            else
            {
              v221 = v209[3];
            }

            v222 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v218, v220, v221);
            v223 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v222, " in called function ", 20);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v224 = &__p;
            }

            else
            {
              v224 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v225 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v225 = __p.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v223, v224, v225);
            v226 = MIL::Builder::OperationBuilder::GetLocationPtr(v68);
            v227 = v226[1];
            *&v359 = *v226;
            *(&v359 + 1) = v227;
            if (v227)
            {
              atomic_fetch_add_explicit((v227 + 8), 1uLL, memory_order_relaxed);
            }

            std::stringbuf::str();
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v359, 3, v357);
            if (v358 < 0)
            {
              operator delete(v357[0]);
            }

            if (*(&v359 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v359 + 1));
            }

            ValueType = v312;
            *(&ValueType + *(v312 - 3)) = v311;
            v383 = (MEMORY[0x277D82878] + 16);
            if (v388 < 0)
            {
              operator delete(v387);
            }

            v383 = (MEMORY[0x277D82868] + 16);
            std::locale::~locale(&v384);
            std::ostream::~ostream();
            MEMORY[0x21CEAFDA0](v389);
            if (v362[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v362[1]);
            }

            goto LABEL_514;
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, v211))
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
            v273 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "No inferred type for param ", 27);
            v274 = *(v209 + 39);
            if (v274 >= 0)
            {
              v275 = (v209 + 2);
            }

            else
            {
              v275 = v209[2];
            }

            if (v274 >= 0)
            {
              v276 = *(v209 + 39);
            }

            else
            {
              v276 = v209[3];
            }

            v277 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v273, v275, v276);
            v278 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v277, " in called function ", 20);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v279 = &__p;
            }

            else
            {
              v279 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v280 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v280 = __p.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v278, v279, v280);
            v281 = MIL::Builder::OperationBuilder::GetLocationPtr(v68);
            v282 = v281[1];
            *&v364 = *v281;
            *(&v364 + 1) = v282;
            if (v282)
            {
              atomic_fetch_add_explicit((v282 + 8), 1uLL, memory_order_relaxed);
            }

            std::stringbuf::str();
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v364, 3, v362);
            if (v363 < 0)
            {
              operator delete(v362[0]);
            }

            if (*(&v364 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v364 + 1));
            }

            std::ostringstream::~ostringstream(&ValueType);
            goto LABEL_514;
          }

          ValueType = v211;
          v212 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, v211, &std::piecewise_construct, &ValueType, v362);
          ValueType = v209 + 2;
          v213 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__src, v209 + 2, &std::piecewise_construct, &ValueType, v362);
          v215 = v212[5];
          v214 = v212[6];
          if (v214)
          {
            atomic_fetch_add_explicit(v214 + 1, 1uLL, memory_order_relaxed);
          }

          v216 = v213[6];
          v213[5] = v215;
          v213[6] = v214;
          if (v216)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v216);
          }

          v209 = *v209;
          if (!v209)
          {
            goto LABEL_407;
          }
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
        v261 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "No input ", 9);
        v262 = *(v209 + 39);
        if (v262 >= 0)
        {
          v263 = (v209 + 2);
        }

        else
        {
          v263 = v209[2];
        }

        if (v262 >= 0)
        {
          v264 = *(v209 + 39);
        }

        else
        {
          v264 = v209[3];
        }

        v265 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v261, v263, v264);
        v266 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v265, " in called function ", 20);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v267 = &__p;
        }

        else
        {
          v267 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v268 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v268 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v266, v267, v268);
        v269 = MIL::Builder::OperationBuilder::GetLocationPtr(v68);
        v270 = v269[1];
        *&v364 = *v269;
        *(&v364 + 1) = v270;
        if (v270)
        {
          atomic_fetch_add_explicit((v270 + 8), 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v364, 3, v362);
        if (v363 < 0)
        {
          operator delete(v362[0]);
        }

        if (*(&v364 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v364 + 1));
        }

        ValueType = v312;
        *(&ValueType + *(v312 - 3)) = v311;
        v383 = (MEMORY[0x277D82878] + 16);
        if (v388 < 0)
        {
          operator delete(v387);
        }

        v383 = (MEMORY[0x277D82868] + 16);
        std::locale::~locale(&v384);
        std::ostream::~ostream();
        MEMORY[0x21CEAFDA0](v389);
LABEL_514:
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v365.__r_.__value_.__l.__data_);
        goto LABEL_515;
      }

LABEL_407:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v365.__r_.__value_.__l.__data_);
      v228 = v369;
      {
LABEL_515:
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&__src);
        goto LABEL_516;
      }

      MIL::MILResult::~MILResult(a6);
      v229 = MIL::Builder::FunctionBuilder::SelectedSpecialization(v228);
      MIL::Builder::FunctionBuilder::GetBlock(v228, v229, &v364);
      MIL::Builder::BlockBuilder::GetOutputNames(v364, &v365);
      v230 = v365.__r_.__value_.__l.__size_;
      v231 = v365.__r_.__value_.__r.__words[0];
      if (0xAAAAAAAAAAAAAAABLL * ((v230 - v231) >> 3) == MIL::Builder::OperationBuilder::GetNumOutputs(v68))
      {
        v232 = v365.__r_.__value_.__r.__words[0];
        if (v365.__r_.__value_.__l.__size_ != v365.__r_.__value_.__r.__words[0])
        {
          v233 = 0;
          v234 = 0;
          while (1)
          {
            v235 = (v232 + v233);
            if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(&__src, (v232 + v233)))
            {
              break;
            }

            ValueType = v235;
            v236 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__src, v235, &std::piecewise_construct, &ValueType, v362);
            MIL::Builder::OperationBuilder::GetOutputName(v68, v234);
            ValueType = v237;
            v238 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, v237, &std::piecewise_construct, &ValueType, v362);
            v240 = v236[5];
            v239 = v236[6];
            if (v239)
            {
              atomic_fetch_add_explicit(v239 + 1, 1uLL, memory_order_relaxed);
            }

            v241 = v238[6];
            v238[5] = v240;
            v238[6] = v239;
            if (v241)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v241);
            }

            ++v234;
            v232 = v365.__r_.__value_.__r.__words[0];
            v233 += 24;
            if (v234 >= 0xAAAAAAAAAAAAAAABLL * ((v365.__r_.__value_.__l.__size_ - v365.__r_.__value_.__r.__words[0]) >> 3))
            {
              goto LABEL_418;
            }
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
          v302 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Could not infer type for output at index ", 41);
          MEMORY[0x21CEAFB40](v302, v234);
          v303 = MIL::Builder::OperationBuilder::GetLocationPtr(v68);
          v304 = v303[1];
          *&v356 = *v303;
          *(&v356 + 1) = v304;
          if (v304)
          {
            atomic_fetch_add_explicit((v304 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v356, 3, v362);
          if (v363 < 0)
          {
            operator delete(v362[0]);
          }

          if (*(&v356 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v356 + 1));
          }

          ValueType = v312;
          *(&ValueType + *(v312 - 3)) = v311;
          v383 = (MEMORY[0x277D82878] + 16);
          if (v388 < 0)
          {
            operator delete(v387);
          }

          v383 = (MEMORY[0x277D82868] + 16);
          std::locale::~locale(&v384);
          std::ostream::~ostream();
          MEMORY[0x21CEAFDA0](v389);
          goto LABEL_579;
        }

LABEL_418:
        v242 = MIL::Builder::OperationBuilder::GetLocationPtr(v68);
        v243 = *(v242 + 8);
        v362[0] = *v242;
        v362[1] = v243;
        if (v243)
        {
          atomic_fetch_add_explicit(v243 + 1, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v362, 2, &ValueType);
      }

      else
      {
        v283 = MIL::Builder::OperationBuilder::GetLocationPtr(v68);
        v284 = *(v283 + 8);
        v362[0] = *v283;
        v362[1] = v284;
        if (v284)
        {
          atomic_fetch_add_explicit(v284 + 1, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&ValueType, "Num outputs mismatch between call op & callee");
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v362, 3, &ValueType);
      }

      if (SHIBYTE(v384.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      if (v362[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v362[1]);
      }

LABEL_579:
      v393 = &v365;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v393);
      if (*(&v364 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v364 + 1));
      }

      goto LABEL_515;
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
    v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Found multiple call ops calling ", 32);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = &__p;
    }

    else
    {
      v90 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v91 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, v90, v91);
    v92 = MIL::Builder::OperationBuilder::GetLocationPtr(v68);
    v93 = v92[1];
    v365.__r_.__value_.__r.__words[0] = *v92;
    v365.__r_.__value_.__l.__size_ = v93;
    if (v93)
    {
      atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
    }

    std::stringbuf::str();
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v365, 3, &__src);
    if (SBYTE7(v367) < 0)
    {
      operator delete(__src);
    }

    if (v365.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v365.__r_.__value_.__l.__size_);
    }

    ValueType = v312;
    *(&ValueType + *(v312 - 3)) = v311;
    v383 = (MEMORY[0x277D82878] + 16);
    if (v388 < 0)
    {
      operator delete(v387);
    }

    v383 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(&v384);
    std::ostream::~ostream();
    MEMORY[0x21CEAFDA0](v389);
LABEL_516:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_518:
    if (v371)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v371);
    }

    if (*(a6 + 12) == 2)
    {
      MIL::MILResult::~MILResult(a6);
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

LABEL_523:
    if (p_p)
    {
      v335 = p_p;
      operator delete(p_p);
    }

LABEL_525:
    ValueType = &v336;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
LABEL_526:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&v338);
LABEL_527:
    if (v347 < 0)
    {
      operator delete(v345);
    }

LABEL_529:
    if (v349)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v349);
    }

    if (v12 == 3 || !v12)
    {
      v8 = v316 + 16;
      if (v316 + 16 == v313)
      {
        goto LABEL_584;
      }

      continue;
    }

    break;
  }

  ValueType = &v350;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
LABEL_590:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v352);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v354);
}

void sub_21805B128()
{
  std::ostringstream::~ostringstream(&STACK[0x4B8]);
  __cxa_end_catch();
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&v1);
  if (v0)
  {
    JUMPOUT(0x21805BA0CLL);
  }

  JUMPOUT(0x21805BA10);
}

void sub_21805B278()
{
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (STACK[0x340])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x340]);
  }

  std::ostringstream::~ostringstream(&STACK[0x4B8]);
  *(v0 - 104) = &STACK[0x3B0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v0 - 104));
  if (STACK[0x3A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3A8]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&STACK[0x3E0]);
  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (STACK[0x418])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x418]);
  }

  if (v1)
  {
    JUMPOUT(0x21805BA0CLL);
  }

  JUMPOUT(0x21805BA10);
}

void sub_21805B894()
{
  if (STACK[0x478])
  {
    JUMPOUT(0x21805B8A4);
  }

  JUMPOUT(0x21805B8A8);
}

void sub_21805B8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60)
{
  v60 = STACK[0x4B8];
  STACK[0x4B8] = 0;
  if (v60)
  {
    MIL::Passes::PropagateValueTypes();
  }

  if (a60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a60);
  }

  STACK[0x4B8] = &STACK[0x3B0];
  JUMPOUT(0x21805B94CLL);
}

void sub_21805B910(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x4CF]) < 0)
  {
    operator delete(STACK[0x4B8]);
  }

  if (STACK[0x3E8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3E8]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v2);
  if (v3 < 0)
  {
    operator delete(v2[14]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v2[0] = &v5;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v6);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v7);
  _Unwind_Resume(a1);
}

void sub_21805B93C()
{
  STACK[0x348] = &STACK[0x470];
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x348]);
  JUMPOUT(0x21805B950);
}

void sub_21805B980()
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    JUMPOUT(0x21805BB98);
  }

  JUMPOUT(0x21805BB9CLL);
}

void sub_21805B994(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v2);
  if (v3 < 0)
  {
    operator delete(v2[14]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v2[0] = &v5;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v6);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v7);
  _Unwind_Resume(a1);
}

void sub_21805B99C()
{
  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (STACK[0x220])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x220]);
  }

  std::ostringstream::~ostringstream(&STACK[0x4B8]);
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  STACK[0x3B0] = &STACK[0x3E0];
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);
  JUMPOUT(0x21805BB84);
}

void sub_21805B9E0()
{
  STACK[0x3E8] = v1;
  v2 = STACK[0x4B8];
  STACK[0x4B8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  STACK[0x3B0] = &STACK[0x3E0];
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);
  JUMPOUT(0x21805BB84);
}

void sub_21805BA6C()
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v2 = STACK[0x200];
  STACK[0x200] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (STACK[0x350])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x350]);
  }

  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  STACK[0x3B0] = &STACK[0x3E0];
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);
  JUMPOUT(0x21805BB84);
}

void anonymous namespace::GetOperatorType(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    size = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = a1;
  }

  v6 = v17;
  if ((v17 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = __p[1];
  }

  if (v8)
  {
    if (size >= v8)
    {
      v9 = v5 + size;
      v10 = *v7;
      v11 = v5;
      do
      {
        v12 = size - v8;
        if (v12 == -1)
        {
          break;
        }

        v13 = memchr(v11, v10, v12 + 1);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if (!memcmp(v13, v7, v8))
        {
          if (v14 != v9)
          {
            v15 = v14 - v5;
            if (v14 - v5 != -1)
            {
              goto LABEL_19;
            }
          }

          break;
        }

        v11 = (v14 + 1);
        size = v9 - (v14 + 1);
      }

      while (size >= v8);
    }
  }

  else
  {
    v15 = 0;
LABEL_19:
    std::string::erase(a1, 0, v15 + v8);
    v6 = v17;
  }

  *a2 = *&a1->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&a1->__r_.__value_.__l + 2);
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  if ((v6 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21805BD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::InferOutputsForNestedBlocks(MIL::Builder::OperationBuilder *this@<X2>, MIL::Transform::ProgramTransformer *a2@<X0>, uint64_t a3@<X1>, void *a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, MIL::MILResult *a7@<X8>)
{
  MIL::Builder::OperationBuilder::GetBlocks(&v72, this);
  v12 = v72;
  v13 = v73;
  if (v72 != v73)
  {
    v45 = *MEMORY[0x277D82828];
    v44 = *(MEMORY[0x277D82828] + 24);
    v51 = a6;
    v49 = a2;
    v50 = a3;
    v48 = v73;
    do
    {
      v15 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a7 + 12) != 2)
      {
        LOBYTE(v31) = 0;
        goto LABEL_58;
      }

      MIL::MILResult::~MILResult(a7);
      v69 = 0;
      v70 = 0;
      v71 = 0;
      MIL::Builder::BlockBuilder::GetOutputs(v15, &v67);
      v17 = v67;
      v16 = v68;
      if (v67 == v68)
      {
        v31 = 1;
        if (!v67)
        {
          goto LABEL_54;
        }
      }

      else
      {
        while (1)
        {
          v18 = *v17;
          if (!*v17)
          {
            break;
          }

          Name = MIL::Builder::Variable::GetName(*v17);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, Name))
          {
            v20 = MIL::Builder::Variable::GetName(v18);
            v21 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, v20);
            if (!v21)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            ValueType = MIL::IRTypedArgument::GetValueType(v21[5]);
            v23 = v70;
            if (v70 >= v71)
            {
              v25 = (v70 - v69) >> 3;
              if ((v25 + 1) >> 61)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v26 = (v71 - v69) >> 2;
              if (v26 <= v25 + 1)
              {
                v26 = v25 + 1;
              }

              if (v71 - v69 >= 0x7FFFFFFFFFFFFFF8)
              {
                v27 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v27 = v26;
              }

              if (v27)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&v69, v27);
              }

              v28 = (8 * v25);
              *v28 = ValueType;
              v24 = 8 * v25 + 8;
              v29 = v28 - (v70 - v69);
              memcpy(v29, v69, v70 - v69);
              v30 = v69;
              v69 = v29;
              v70 = v24;
              v71 = 0;
              if (v30)
              {
                operator delete(v30);
              }
            }

            else
            {
              *v70 = ValueType;
              v24 = (v23 + 8);
            }

            v70 = v24;
          }

          else
          {
            Type = MIL::Builder::Variable::TryGetType(v18);
            if (!Type)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&v58);
              v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "Could not deduce type of nested block output: ", 46);
              v35 = MIL::Builder::Variable::GetName(v18);
              v36 = *(v35 + 23);
              if (v36 >= 0)
              {
                v37 = v35;
              }

              else
              {
                v37 = *v35;
              }

              if (v36 >= 0)
              {
                v38 = *(v35 + 23);
              }

              else
              {
                v38 = *(v35 + 8);
              }

              v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v37, v38);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ".", 1);
              LocationPtr = MIL::Builder::BlockBuilder::GetLocationPtr(v15);
              v41 = LocationPtr[1];
              *&v57 = *LocationPtr;
              *(&v57 + 1) = v41;
              if (v41)
              {
                atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
              }

              std::stringbuf::str();
              MIL::Passes::TypeInferenceResult::TypeInferenceResult(a7, &v57, 3, &__p);
              if (v56 < 0)
              {
                operator delete(__p);
              }

              if (*(&v57 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v57 + 1));
              }

              v58 = v45;
              *(&v58 + *(v45 - 3)) = v44;
              v59 = MEMORY[0x277D82878] + 16;
              if (v61 < 0)
              {
                operator delete(v60[7].__locale_);
              }

              v59 = MEMORY[0x277D82868] + 16;
              std::locale::~locale(v60);
              std::ostream::~ostream();
              MEMORY[0x21CEAFDA0](&v62);
              goto LABEL_51;
            }

            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v69, &Type);
          }

          if (++v17 == v16)
          {
            v31 = 1;
            goto LABEL_52;
          }
        }

        v32 = MIL::Builder::BlockBuilder::GetLocationPtr(v15);
        v33 = v32[1];
        *&v66 = *v32;
        *(&v66 + 1) = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v64, "No Variable for Block output.");
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a7, &v66, 3, v64);
        if (v65 < 0)
        {
          operator delete(v64[0]);
        }

        if (*(&v66 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v66 + 1));
        }

LABEL_51:
        v31 = 0;
LABEL_52:
        v17 = v67;
        if (!v67)
        {
          goto LABEL_54;
        }
      }

      v68 = v17;
      operator delete(v17);
LABEL_54:
      if (v31)
      {
        std::vector<std::vector<MIL::IRValueType const*>>::push_back[abi:ne200100](a5, &v69);
      }

      a6 = v51;
      a2 = v49;
      a3 = v50;
      v13 = v48;
      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

LABEL_58:
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if ((v31 & 1) == 0)
      {
        v58 = &v72;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v58);
        return;
      }

      v12 += 16;
    }

    while (v12 != v13);
  }

  v58 = &v72;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v58);
  v42 = MIL::Builder::OperationBuilder::GetLocationPtr(this);
  v43 = v42[1];
  *&v54 = *v42;
  *(&v54 + 1) = v43;
  if (v43)
  {
    atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v52, "Success");
  MIL::Passes::TypeInferenceResult::TypeInferenceResult(a7, &v54, 2, v52);
  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (*(&v54 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v54 + 1));
  }
}

void sub_21805C25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  std::ostringstream::~ostringstream(&a34);
  v37 = *(v35 - 160);
  if (v37)
  {
    *(v35 - 152) = v37;
    operator delete(v37);
  }

  v38 = *(v35 - 136);
  if (v38)
  {
    *(v35 - 128) = v38;
    operator delete(v38);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  a34 = v35 - 112;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void anonymous namespace::AttemptTypeInferenceWithValues(uint64_t a1, MIL::Builder::OperationBuilder **a2, void *a3, void *a4, uint64_t a5)
{
  if ((MIL::Builder::OperationBuilder::IsVisited(*a2) & 1) == 0)
  {
    MIL::Builder::OperationBuilder::SetVisited(*a2, 1);
    OwningBlock = MIL::Builder::OperationBuilder::GetOwningBlock(*a2);
    MIL::Builder::OperationBuilder::GetInputArguments(*a2, v27);
    v11 = v28;
    if (v28)
    {
      while (1)
      {
        v12 = v11[2];
        if (MIL::Builder::Variable::TryGetName(v12))
        {
          break;
        }

LABEL_41:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_42;
        }
      }

      Name = MIL::Builder::Variable::GetName(v12);
      MIL::Builder::BlockBuilder::TryGetOperation(OwningBlock, Name, &v25);
      if (!v25)
      {
LABEL_39:
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        goto LABEL_41;
      }

      Operator = MIL::Builder::OperationBuilder::GetOperator(v25);
      v15 = (*(*Operator + 16))(Operator);
      MIL::ValueTypeInferenceUtils::GetOperatorType(v15, &v24);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v24.__r_.__value_.__l.__size_ != 5)
        {
          goto LABEL_14;
        }

        v16 = v24.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) != 5)
        {
          goto LABEL_14;
        }

        v16 = &v24;
      }

      data = v16->__r_.__value_.__l.__data_;
      v18 = v16->__r_.__value_.__s.__data_[4];
      if (data == 1885431923 && v18 == 101)
      {
        v21 = 1;
        if ((*(&v24.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_37;
      }

LABEL_14:
      MIL::ValueTypeInferenceUtils::GetOperatorType(v15, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v21 = __p.__r_.__value_.__l.__size_ == 5 && *__p.__r_.__value_.__l.__data_ == 1936617315 && *(__p.__r_.__value_.__r.__words[0] + 4) == 116;
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      else
      {
        v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 5 && LODWORD(__p.__r_.__value_.__l.__data_) == 1936617315 && __p.__r_.__value_.__s.__data_[4] == 116;
      }

      if ((*(&v24.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_35:
        if (v21)
        {
LABEL_36:
          MIL::ValueTypeInferenceUtils::MixedOpTypeinference(a1, &v25, a3, a4, a5);
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_37:
      operator delete(v24.__r_.__value_.__l.__data_);
      if (v21)
      {
        goto LABEL_36;
      }

LABEL_38:
      goto LABEL_39;
    }

LABEL_42:
    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v27);
    MIL::ValueTypeInferenceUtils::MixedOpTypeinference(a1, a2, a3, a4, a5);
  }
}

void sub_21805C5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

char *std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__emplace_back_slow_path<std::unique_ptr<MIL::IRTypedArgument>>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  std::shared_ptr<MIL::IRTypedArgument>::shared_ptr[abi:ne200100]<MIL::IRTypedArgument,std::default_delete<MIL::IRTypedArgument>,0>((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&v14);
  return v8;
}

void sub_21805C6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<MIL::IRTypedArgument>::shared_ptr[abi:ne200100]<MIL::IRTypedArgument,std::default_delete<MIL::IRTypedArgument>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void anonymous namespace::PropagateNewTypesThroughWhileBlocks(MIL::Builder::OperationBuilder *this@<X2>, MIL::Transform::ProgramTransformer *a2@<X0>, uint64_t a3@<X1>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, unsigned int a7@<W6>, MIL::MILResult *a8@<X8>)
{
  MIL::Builder::OperationBuilder::GetBlocks(&v39, this);
  v10 = v39;
  v28 = v40;
  if (v39 == v40)
  {
LABEL_18:
    v38.__begin_ = &v39;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v38);
    if (*(a8 + 12) != 2)
    {
      return;
    }

    MIL::MILResult::~MILResult(a8);
    v17 = a6[1] - *a6;
    LocationPtr = MIL::Builder::OperationBuilder::GetLocationPtr(this);
    if (v17 == 48)
    {
      v19 = LocationPtr[1];
      *&v31 = *LocationPtr;
      *(&v31 + 1) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v29, "Success");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a8, &v31, 2, v29);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      v20 = *(&v31 + 1);
      if (!*(&v31 + 1))
      {
        return;
      }
    }

    else
    {
      v21 = LocationPtr[1];
      *&v34 = *LocationPtr;
      *(&v34 + 1) = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v32, "Invalid number of nested blocks from while_loop");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a8, &v34, 3, v32);
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }

      v20 = *(&v34 + 1);
      if (!*(&v34 + 1))
      {
        return;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    return;
  }

  while (1)
  {
    v11 = *v10;
    v12 = *(v10 + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::Builder::BlockBuilder::GetInputNames(v11, &v38);
    v13 = (a4[1] - *a4) >> 3;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v38.__end_ - v38.__begin_) >> 3);
    if (v13 == v14)
    {
      if (v38.__end_ != v38.__begin_)
      {
        if ((a4[1] - *a4) >> 3)
        {
          MIL::IRTypedArgument::Make();
        }

        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      v15 = MIL::Builder::OperationBuilder::GetLocationPtr(this);
      v16 = v15[1];
      *&v37 = *v15;
      *(&v37 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Mismatch between while block input size and types to propagate");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a8, &v37, 5, __p);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(&v37 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
      }
    }

    v41 = &v38;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v13 != v14)
    {
      break;
    }

    v10 += 16;
    if (v10 == v28)
    {
      goto LABEL_18;
    }
  }

  v38.__begin_ = &v39;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v38);
}

void sub_21805CAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

void std::vector<std::vector<MIL::IRValueType const*>>::__assign_with_size[abi:ne200100]<std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(uint64_t **a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * (a1[2] - *a1);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<MIL::IRValueType const*>>,std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(a1, a2 + v11, a3, a1[1]);
  }
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<MIL::IRValueType const*>>,std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<MIL::IRValueType const*>>,std::vector<MIL::IRValueType const*>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21805CF48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<MIL::IRValueType const*>>,std::vector<MIL::IRValueType const*>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *>(int a1, char **a2, char **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::vector<std::vector<MIL::IRValueType const*>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<MIL::IRValueType const*>>::__emplace_back_slow_path<std::vector<MIL::IRValueType const*> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<MIL::IRValueType const*>>::__construct_one_at_end[abi:ne200100]<std::vector<MIL::IRValueType const*> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *std::vector<std::vector<MIL::IRValueType const*>>::__construct_one_at_end[abi:ne200100]<std::vector<MIL::IRValueType const*> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<MIL::IRValueType const*>>::__emplace_back_slow_path<std::vector<MIL::IRValueType const*> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_21805D1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::shared_ptr<MIL::IRValue const>>::__emplace_back_slow_path<std::unique_ptr<MIL::IRTensorValue const>>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&v14);
  return v8;
}

void sub_21805D2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<MIL::Fp16>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, __int16 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_21805D450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_21805D564(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_21805DA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<MIL::IRValue const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRValue const>*,std::shared_ptr<MIL::IRValue const>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<MIL::IRValue const>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRValue const>>,std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void anonymous namespace::ModifyBlockWithTypes(MIL::Builder::BlockBuilder *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::Builder::BlockBuilder::GetOperations(v36, a1);
  MIL::Builder::BlockBuilder::GetOutputNames(a1, &v34);
  MIL::Builder::BlockBuilder::GetContext(a1, &v32);
  MIL::Builder::BlockBuilder::GetInputNames(a1, &__p);
  begin = __p.__begin_;
  end = __p.__end_;
  while (begin != end)
  {
    if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, begin))
    {
      v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, begin);
      if (!v8)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      ValueType = MIL::IRTypedArgument::GetValueType(v8[5]);
      MIL::Builder::BlockBuilder::ReplaceInput(a1, &begin->__r_.__value_.__l.__data_, begin, ValueType);
    }

    ++begin;
  }

  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v36[1] != v36[0])
  {
    v10 = *(v36[0] + 8);
    v18 = v10;
    v19 = *v36[0];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = v10;
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v31 = 0;
    }

    v30 = v19;
    MIL::Builder::BlockBuilder::RemoveOperation(a1, &v30);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    MIL::Builder::OperationBuilder::TryGetOperatorSharedPtr(v19, &v28);
    if (v28)
    {
      v24[0] = v28;
      v24[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Builder::OperationBuilder::Make(v24);
    }

    LocationPtr = MIL::Builder::OperationBuilder::GetLocationPtr(v19);
    v17 = LocationPtr[1];
    *&v27 = *LocationPtr;
    *(&v27 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v25, "No operator associated with operation");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a3, &v27, 3, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    if (*(&v27 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v15 = v18;
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    goto LABEL_28;
  }

  v11 = v34;
  v12 = v35;
  if (v34 != v35)
  {
    do
    {
      MIL::Builder::BlockBuilder::RemoveOutput(a1, v11);
      v11 += 3;
    }

    while (v11 != v12);
    v11 = v34;
    v12 = v35;
  }

  while (v11 != v12)
  {
    MIL::Builder::BlockBuilder::AddOutput(a1, v11);
    v11 += 3;
  }

  MIL::Builder::BlockBuilder::UpdateStateDependencyMap(a1);
  v13 = MIL::Builder::BlockBuilder::GetLocationPtr(a1);
  v14 = v13[1];
  *&v22 = *v13;
  *(&v22 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v20, "Success");
  MIL::Passes::TypeInferenceResult::TypeInferenceResult(a3, &v22, 2, v20);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  __p.__begin_ = &v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__begin_ = v36;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_21805F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  if (STACK[0x4A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x4A8]);
  }

  v23 = *(v21 - 248);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v24 = *(v21 - 216);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *(v21 - 120) = v21 - 200;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v21 - 120));
  *(v21 - 120) = v21 - 176;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v21 - 120));
  _Unwind_Resume(a1);
}

BOOL anonymous namespace::HasFullyUnknownStrideProperty(MIL::IRValueType *a1)
{
  v1 = MIL::IRValueType::AsMemoryLayoutType(a1);
  v2 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v1);
  if (!MIL::IRTensorBufferValueType::TryGetStrides(v2))
  {
    return 0;
  }

  Strides = MIL::IRTensorBufferValueType::GetStrides(v2);
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&v9, *Strides, *(Strides + 8), (*(Strides + 8) - *Strides) >> 3);
  v4 = v9;
  if (v10 == v9)
  {
    v7 = 1;
    if (!v9)
    {
      return v7;
    }

LABEL_10:
    v10 = v4;
    operator delete(v4);
    return v7;
  }

  v5 = 0;
  do
  {
    v6 = MIL::IRProperty::TryAsUnknown(*&v4[8 * v5]);
    v7 = v6 != 0;
    v4 = v9;
    if (!v6)
    {
      break;
    }

    ++v5;
  }

  while (v5 < (v10 - v9) >> 3);
  if (v9)
  {
    goto LABEL_10;
  }

  return v7;
}

void sub_21805F688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::UpdateTensorBufferStride(MIL::IRConstantProperty **a1, MIL::IRValueType *this, uint64_t *a3)
{
  v5 = MIL::IRValueType::AsMemoryLayoutType(this);
  v6 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v5);
  DataType = MIL::IRTensorBufferValueType::GetDataType(v6);
  InterleaveFactors = MIL::IRTensorBufferValueType::GetInterleaveFactors(v6);
  memset(v12, 0, sizeof(v12));
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(v12, *InterleaveFactors, *(InterleaveFactors + 8), (*(InterleaveFactors + 8) - *InterleaveFactors) >> 3);
  MIL::Util::GetRowAlignedStrides(*a1, DataType, a3, v12, 0x40uLL, &__p);
  Attributes = MIL::IRTensorBufferValueType::GetAttributes(v6);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v10, Attributes);
  MIL::IRTensorBufferValueType::MakeWithShape(*a1, DataType, a3, &__p, v12, v10);
}

void sub_21805F790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_21805FA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::MILResult::~MILResult(void **this)
{
  *this = &unk_2829E6218;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t MIL::MILResult::MILResult(uint64_t this)
{
  *this = &unk_2829E6218;
  *(this + 8) = 0;
  *(this + 16) = 0;
  strcpy((this + 24), "Not an error.");
  *(this + 47) = 13;
  return this;
}

__n128 MIL::MILResult::MILResult(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a1 = &unk_2829E6218;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *a3;
  *(a1 + 40) = a3[1].n128_u64[0];
  *(a1 + 24) = result;
  *(a3 + 8) = 0uLL;
  a3->n128_u64[0] = 0;
  return result;
}

char *MIL::MILResult::GetLocationSharedPtr(MIL::MILResult *this)
{
  if (!*(this + 1))
  {
    MIL::UnknownLocation::Make();
  }

  return this + 8;
}

void sub_21805FC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImpl(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<MIL::Location const>::operator=[abi:ne200100]<MIL::UnknownLocation,std::default_delete<MIL::UnknownLocation>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::Location const>::shared_ptr[abi:ne200100]<MIL::UnknownLocation,std::default_delete<MIL::UnknownLocation>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void MIL::MILResult::GetMessageWithLocation(const std::string::value_type **this@<X0>, std::string *a2@<X8>)
{
  LocationSharedPtr = MIL::MILResult::GetLocationSharedPtr(this);
  (*(**LocationSharedPtr + 24))(&v14);
  v5 = std::string::append(&v14, ": ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v9 = this[3];
  v8 = this + 3;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = v8[1];
  }

  v13 = std::string::append(&v15, v11, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_21805FDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<MIL::Location const>::shared_ptr[abi:ne200100]<MIL::UnknownLocation,std::default_delete<MIL::UnknownLocation>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

MIL::ParserContext *MIL::ParserContext::ParserContext(MIL::ParserContext *this, const MIL::ParserOptions *a2)
{
  (*(*a2 + 16))(a2);
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 10) = 1065353216;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 1065353216;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 80) = 1065353216;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 90) = 1065353216;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 1065353216;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 1065353216;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 120) = 1065353216;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 130) = 1065353216;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 140) = 1065353216;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 150) = 1065353216;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 160) = 1065353216;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 170) = 1065353216;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 180) = 1065353216;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 190) = 1065353216;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 200) = 1065353216;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 210) = 1065353216;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 220) = 1065353216;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 230) = 1065353216;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 240) = 1065353216;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 250) = 1065353216;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 260) = 1065353216;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 270) = 1065353216;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 280) = 1065353216;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 290) = 1065353216;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 300) = 1065353216;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 310) = 1065353216;
  *(this + 79) = 0u;
  *(this + 78) = 0u;
  *(this + 320) = 1065353216;
  *(this + 1288) = 0u;
  *(this + 1304) = 0u;
  *(this + 330) = 1065353216;
  *(this + 84) = 0u;
  *(this + 83) = 0u;
  *(this + 340) = 1065353216;
  *(this + 1368) = 0u;
  *(this + 1384) = 0u;
  *(this + 350) = 1065353216;
  *(this + 89) = 0u;
  *(this + 88) = 0u;
  *(this + 360) = 1065353216;
  *(this + 1448) = 0u;
  *(this + 1464) = 0u;
  *(this + 370) = 1065353216;
  *(this + 94) = 0u;
  *(this + 93) = 0u;
  *(this + 380) = 1065353216;
  *(this + 1528) = 0u;
  *(this + 1544) = 0u;
  *(this + 390) = 1065353216;
  *(this + 99) = 0u;
  *(this + 98) = 0u;
  *(this + 400) = 1065353216;
  *(this + 1608) = 0u;
  *(this + 1624) = 0u;
  *(this + 410) = 1065353216;
  *(this + 104) = 0u;
  *(this + 103) = 0u;
  *(this + 420) = 1065353216;
  *(this + 1688) = 0u;
  *(this + 1704) = 0u;
  *(this + 430) = 1065353216;
  *(this + 109) = 0u;
  *(this + 108) = 0u;
  *(this + 440) = 1065353216;
  *(this + 1768) = 0u;
  *(this + 1784) = 0u;
  *(this + 450) = 1065353216;
  *(this + 114) = 0u;
  *(this + 113) = 0u;
  *(this + 460) = 1065353216;
  *(this + 1848) = 0u;
  *(this + 1864) = 0u;
  *(this + 470) = 1065353216;
  *(this + 119) = 0u;
  *(this + 118) = 0u;
  *(this + 480) = 1065353216;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 490) = 1065353216;
  *(this + 124) = 0u;
  *(this + 123) = 0u;
  *(this + 500) = 1065353216;
  *(this + 2008) = 0u;
  *(this + 2024) = 0u;
  *(this + 510) = 1065353216;
  *(this + 129) = 0u;
  *(this + 128) = 0u;
  *(this + 520) = 1065353216;
  *(this + 3464) = 0u;
  *(this + 3480) = 0u;
  *(this + 3448) = 0u;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 530) = 1065353216;
  *(this + 134) = 0u;
  *(this + 133) = 0u;
  *(this + 540) = 1065353216;
  *(this + 550) = 1065353216;
  *(this + 560) = 1065353216;
  *(this + 570) = 1065353216;
  *(this + 580) = 1065353216;
  *(this + 590) = 1065353216;
  *(this + 600) = 1065353216;
  *(this + 610) = 1065353216;
  *(this + 620) = 1065353216;
  *(this + 630) = 1065353216;
  *(this + 640) = 1065353216;
  *(this + 650) = 1065353216;
  *(this + 660) = 1065353216;
  *(this + 670) = 1065353216;
  *(this + 680) = 1065353216;
  *(this + 690) = 1065353216;
  *(this + 700) = 1065353216;
  *(this + 710) = 1065353216;
  *(this + 720) = 1065353216;
  *(this + 730) = 1065353216;
  *(this + 740) = 1065353216;
  *(this + 750) = 1065353216;
  *(this + 760) = 1065353216;
  *(this + 770) = 1065353216;
  *(this + 780) = 1065353216;
  *(this + 790) = 1065353216;
  *(this + 800) = 1065353216;
  *(this + 810) = 1065353216;
  *(this + 820) = 1065353216;
  *(this + 830) = 1065353216;
  *(this + 840) = 1065353216;
  *(this + 850) = 1065353216;
  *(this + 860) = 1065353216;
  *(this + 874) = 1065353216;
  *(this + 884) = 1065353216;
  *(this + 2168) = 0u;
  *(this + 2184) = 0u;
  *(this + 139) = 0u;
  *(this + 138) = 0u;
  *(this + 2248) = 0u;
  *(this + 2264) = 0u;
  *(this + 144) = 0u;
  *(this + 143) = 0u;
  *(this + 2328) = 0u;
  *(this + 2344) = 0u;
  *(this + 149) = 0u;
  *(this + 148) = 0u;
  *(this + 2408) = 0u;
  *(this + 2424) = 0u;
  *(this + 154) = 0u;
  *(this + 153) = 0u;
  *(this + 2488) = 0u;
  *(this + 2504) = 0u;
  *(this + 159) = 0u;
  *(this + 158) = 0u;
  *(this + 2568) = 0u;
  *(this + 2584) = 0u;
  *(this + 164) = 0u;
  *(this + 163) = 0u;
  *(this + 2648) = 0u;
  *(this + 2664) = 0u;
  *(this + 169) = 0u;
  *(this + 168) = 0u;
  *(this + 2728) = 0u;
  *(this + 2744) = 0u;
  *(this + 174) = 0u;
  *(this + 173) = 0u;
  *(this + 2808) = 0u;
  *(this + 2824) = 0u;
  *(this + 179) = 0u;
  *(this + 178) = 0u;
  *(this + 2888) = 0u;
  *(this + 2904) = 0u;
  *(this + 184) = 0u;
  *(this + 183) = 0u;
  *(this + 2968) = 0u;
  *(this + 2984) = 0u;
  *(this + 189) = 0u;
  *(this + 188) = 0u;
  *(this + 3048) = 0u;
  *(this + 3064) = 0u;
  *(this + 194) = 0u;
  *(this + 193) = 0u;
  *(this + 3128) = 0u;
  *(this + 3144) = 0u;
  *(this + 199) = 0u;
  *(this + 198) = 0u;
  *(this + 3208) = 0u;
  *(this + 3224) = 0u;
  *(this + 204) = 0u;
  *(this + 203) = 0u;
  *(this + 3288) = 0u;
  *(this + 3304) = 0u;
  *(this + 209) = 0u;
  *(this + 208) = 0u;
  *(this + 3368) = 0u;
  *(this + 3384) = 0u;
  *(this + 214) = 0u;
  *(this + 213) = 0u;
  *(this + 220) = 0u;
  *(this + 219) = 0u;
  MIL::ParserContext::InitializeFirstSets(this, a2);
  MIL::ParserContext::InitializeMILKeywords(this);
  return this;
}

void sub_2180603CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *(v44 - 96) = a1;
  std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,std::string>>>::~__hash_table(v34 + 438);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 433));
  v45 = v34[432];
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((v34 + 426));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v38);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 416));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v37);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 406));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v41);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 396));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v35);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 386));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v43);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 376));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 366));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v40);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 356));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v36);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 346));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v39);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 336));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a10);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 326));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a11);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 316));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a12);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 306));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a13);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 296));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a14);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 286));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a15);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 276));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a16);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 266));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a17);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 256));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a18);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 246));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a19);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 236));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a20);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 226));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a21);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 216));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a22);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 206));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a23);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 196));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a24);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 186));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a25);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 176));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a26);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 166));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a27);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 156));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a28);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 146));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a29);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 136));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a30);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 126));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a31);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 116));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a32);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 106));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a33);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 96));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a34);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 86));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 192));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 76));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 184));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 66));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 176));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 56));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 168));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 46));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 160));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 36));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 152));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 144));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 136));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 128));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 120));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 112));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 104));
  v46 = *v34;
  *v34 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  _Unwind_Resume(*(v44 - 96));
}

uint64_t MIL::ParserContext::InitializeFirstSets(MIL::ParserContext *this, const MIL::ParserOptions *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  LODWORD(v9) = 16;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 8, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 17;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 48, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 17;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 88, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 1;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 128, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 1;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 168, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 5;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 208, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 248, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 288, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v7[2] = xmmword_218588780;
  v7[3] = unk_218588790;
  v8[0] = xmmword_2185887A0;
  *(v8 + 12) = *(&xmmword_2185887A0 + 12);
  v7[0] = xmmword_218588760;
  v7[1] = unk_218588770;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(&v9, v7, 23);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 328, &v9);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v9);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 368, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 408, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 448, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 488, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 528, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 568, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 0;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 608, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 648, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 7;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 688, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 1;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 728, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 5;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 768, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 808, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 848, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v9);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 888, v5);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v5);
  LODWORD(v9) = 7;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 928, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 7;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 968, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1008, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v9 = 0xD00000012;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 2);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1048, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v9 = 0xD00000012;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 2);
  v6 = 15;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(&v9, &v6, 1);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v9);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1088, v5);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v5);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1128, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v9 = 0x1200000036;
  v10 = 13;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 3);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1168, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1208, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1248, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1288, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1328, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1368, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1408, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1448, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1488, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1528, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1568, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1608, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1648, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1688, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1728, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1768, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1808, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1848, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1888, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1928, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1968, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2008, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2048, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 31;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2088, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 32;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2128, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 33;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2168, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 36;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2208, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 35;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2248, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 34;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2288, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 37;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2328, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 38;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2368, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 39;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2408, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 40;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2448, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 41;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2488, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 42;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2528, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 43;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2568, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 44;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2608, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 45;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2648, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 46;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2688, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 47;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2728, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 48;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2768, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 49;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2808, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 50;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2848, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 51;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2888, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 52;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2928, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 53;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2968, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 19;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3008, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 19;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3048, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3088, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3128, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3168, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3208, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v9 = 0x1600000015;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 2);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3248, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 20;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3288, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 19;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3328, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3368, v7);
  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
}