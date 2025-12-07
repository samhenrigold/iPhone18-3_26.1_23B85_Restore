uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 2);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 2);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 2) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a2 - 2);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 2))
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= *(i + 2)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v2 < v4 || v4 >= v2 && v3 < *(a2 + 2); a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[2];
      i += 2;
      v9 = v11;
      v12 = *(i - 2);
      *(i - 2) = *(a2 + 2);
      *(a2 + 2) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 2)))
      {
        v13 = i[2];
        i += 2;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 2);
          a2 -= 2;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 2));
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    *(a1 + 2) = *(i - 2);
  }

  *(i - 2) = v2;
  *(i - 2) = v3;
  return i;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v3 < v5 || SLODWORD(a1[v2 + 3]) >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 2);
      *(v13 + 2) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 2) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    *(a1 + 2) = *(v13 - 2);
  }

  *(v13 - 2) = v3;
  *(v13 - 2) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
        v25 = *(a2 - 16);
        v26 = *(a1 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return 1;
          }

          v28 = *(a2 - 8);
          v27 = *(a1 + 40);
          if (v28 >= v27)
          {
            return 1;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
        }

        *(a1 + 32) = v25;
        *(a2 - 16) = v26;
        *(a1 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(a1 + 32);
        v30 = *(a1 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return 1;
          }

          v32 = *(a1 + 40);
          v31 = *(a1 + 24);
          if (v32 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
        }

        *(a1 + 16) = v29;
        *(a1 + 32) = v30;
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        v33 = *a1;
        if (v29 >= *a1)
        {
          if (v33 < v29)
          {
            return 1;
          }

          v34 = *(a1 + 8);
          if (v32 >= v34)
          {
            return 1;
          }
        }

        else
        {
          v34 = *(a1 + 8);
        }

        *a1 = v29;
        *(a1 + 16) = v33;
        *(a1 + 8) = v32;
        *(a1 + 24) = v34;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *(a2 - 16);
      v5 = *a1;
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          return 1;
        }

        v7 = *(a2 - 8);
        v6 = *(a1 + 8);
        if (v7 >= v6)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
      }

      *a1 = v4;
      *(a2 - 16) = v5;
      *(a1 + 8) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v15 = *v11;
    v16 = *v8;
    if (*v11 >= *v8)
    {
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
      if (v17 >= v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
    }

    *v11 = v16;
    *(v11 + 8) = v18;
    v14 = a1;
    if (v8 == a1)
    {
      goto LABEL_16;
    }

    v19 = v12;
    while (1)
    {
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 16);
      if (v15 < v22)
      {
        v20 = *(v21 + 24);
        goto LABEL_23;
      }

      if (v22 < v15)
      {
        break;
      }

      v20 = *(a1 + v19 + 24);
      if (v17 >= v20)
      {
        v14 = a1 + v19 + 32;
        goto LABEL_16;
      }

LABEL_23:
      v8 -= 16;
      *(v21 + 32) = v22;
      *(a1 + v19 + 40) = v20;
      v19 -= 16;
      if (v19 == -32)
      {
        v14 = a1;
        goto LABEL_16;
      }
    }

    v14 = v8;
LABEL_16:
    *v14 = v15;
    *(v14 + 8) = v17;
    if (++v13 != 8)
    {
LABEL_17:
      v8 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 8) < *(v8 + 24))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          v13 = *(a4 + 2);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 2);
          v14 = *(v8 + 8);
        }

        *a4 = v11;
        *(a4 + 2) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 16 * v7;
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = *(v15 + 16);
              if (*v15 < v19 || v19 >= *v15 && *(v15 + 8) < *(v15 + 24))
              {
                v15 += 16;
                v7 = v18;
              }
            }

            v20 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            if (v12 < v20)
            {
              v16 = *(v15 + 8);
            }

            else
            {
              v16 = *(v15 + 8);
              if (v16 < v13)
              {
                break;
              }
            }

            *v8 = v20;
            *(v8 + 8) = v16;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<long long,int> *>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 2);
    v7 = result;
    do
    {
      v8 = v7;
      v9 = &v7[2 * v4];
      v7 = v9 + 2;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v11 < a4)
      {
        v12 = v9[4];
        v13 = v9[2];
        if (v13 < v12 || v12 >= v13 && *(v9 + 6) < *(v9 + 10))
        {
          v7 = v9 + 4;
          v4 = v11;
        }
      }

      *v8 = *v7;
      *(v8 + 2) = *(v7 + 2);
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v7 == (a2 - 16))
    {
      *v7 = v5;
      *(v7 + 2) = v6;
      return result;
    }

    *v7 = *(a2 - 16);
    *(v7 + 2) = *(a2 - 8);
    *(a2 - 16) = v5;
    *(a2 - 8) = v6;
    v14 = (v7 - result + 16) >> 4;
    v15 = v14 - 2;
    if (v14 < 2)
    {
      return result;
    }

    v16 = v15 >> 1;
    v17 = &result[2 * (v15 >> 1)];
    v18 = *v17;
    v19 = *v7;
    if (*v17 >= *v7)
    {
      if (v19 < v18)
      {
        return result;
      }

      v21 = *(v17 + 2);
      v20 = *(v7 + 2);
      if (v21 >= v20)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
    }

    *v7 = v18;
    *(v7 + 2) = v21;
    if (v15 >= 2)
    {
      while (1)
      {
        v24 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v22 = &result[2 * v16];
        v25 = *v22;
        if (*v22 < v19)
        {
          v23 = *(v22 + 2);
        }

        else
        {
          if (v19 < v25)
          {
            break;
          }

          v23 = *(v22 + 2);
          if (v23 >= v20)
          {
            break;
          }
        }

        *v17 = v25;
        *(v17 + 2) = v23;
        v17 = &result[2 * v16];
        if (v24 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v22 = v17;
LABEL_16:
    *v22 = v19;
    *(v22 + 2) = v20;
  }

  return result;
}

char **std::vector<operations_research::sat::LinearExpressionProto>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v3 - 80));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::vector<operations_research::sat::LinearExpressionProto>::__emplace_back_slow_path<operations_research::sat::LinearExpressionProto const&>(void **a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  operations_research::sat::LinearExpressionProto::LinearExpressionProto(v11, 0, a2);
  v6 = (80 * v2 + 80);
  v7 = a1[1];
  v8 = (80 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::LinearExpressionProto>,operations_research::sat::LinearExpressionProto*>(a1, *a1, v7, (v11 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_23CA310D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::LinearExpressionProto>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::LinearExpressionProto>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    operations_research::sat::LinearExpressionProto::~LinearExpressionProto((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::LinearExpressionProto>,operations_research::sat::LinearExpressionProto*>(uint64_t a1, operations_research::sat::LinearExpressionProto *a2, operations_research::sat::LinearExpressionProto *a3, operations_research::sat::LinearExpressionProto *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    while (1)
    {
      operations_research::sat::LinearExpressionProto::LinearExpressionProto(a4, 0);
      if (a4 == v7)
      {
        goto LABEL_4;
      }

      v8 = *(a4 + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        v9 = *(v7 + 1);
        if (v9)
        {
LABEL_11:
          if (v8 != *(v9 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_9:
            operations_research::sat::LinearExpressionProto::CopyFrom(a4, v7);
            goto LABEL_4;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v9 = *(v7 + 1);
        if (v9)
        {
          goto LABEL_11;
        }
      }

      if (v8 != v9)
      {
        goto LABEL_9;
      }

LABEL_3:
      operations_research::sat::LinearExpressionProto::InternalSwap(a4, v7);
LABEL_4:
      v7 = (v7 + 80);
      a4 = (a4 + 80);
      if (v7 == a3)
      {
        while (v6 != a3)
        {
          operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v6);
          v6 = (v6 + 80);
        }

        return;
      }
    }
  }
}

void std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::__append(unint64_t *a1, unint64_t a2, __n128 a3)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 > (v4 - v5) >> 5)
  {
    v6 = v5 - *a1;
    v7 = v6 >> 5;
    v8 = (v6 >> 5) + a2;
    if (v8 >> 59)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = 32 * v7;
    if ((a2 & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v21 + 32 * a2;
      if (((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) != 0 && v21 + 32 * (a2 - 1) >= v21)
      {
        v12 = v21;
        if (v6 + 8 + 32 * (a2 - 1) >= v6 + 8)
        {
          v13 = ((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
          v12 = (v21 + 32 * (v13 & 0xFFFFFFFFFFFFFFELL));
          v14 = (v21 + 32);
          v15 = v13 & 0xFFFFFFFFFFFFFFELL;
          do
          {
            *(v14 - 2) = xmmword_23CE306D0;
            *v14 = xmmword_23CE306D0;
            v14 += 4;
            v15 -= 2;
          }

          while (v15);
          if (v13 == (v13 & 0xFFFFFFFFFFFFFFELL))
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v12 = v21;
      }

      do
      {
        *v12 = xmmword_23CE306D0;
        v12 += 2;
      }

      while (v12 != v11);
    }

    else
    {
      v11 = 32 * v7;
    }

LABEL_32:
    v22 = *a1;
    v23 = a1[1];
    v24 = v21 + *a1 - v23;
    if (v23 != *a1)
    {
      v25 = (v21 + *a1 - v23);
      v26 = *a1;
      do
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(v25, v26);
        v26 += 2;
        v25 = (v27 + 32);
      }

      while (v26 != v23);
      do
      {
        if (*v22 >= 2uLL)
        {
          operator delete((v22[2] - (v22[1] & 1) - 8));
        }

        v22 += 4;
      }

      while (v22 != v23);
      v22 = *a1;
    }

    *a1 = v24;
    a1[1] = v11;
    a1[2] = 0;
    if (v22)
    {

      operator delete(v22);
    }

    return;
  }

  if ((a2 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = &v5[2 * a2];
    if (((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_49;
    }

    if (&v5[2 * a2 - 2] < v5)
    {
      goto LABEL_49;
    }

    if (&v5[2 * a2 - 2] + 8 < v5 + 8)
    {
      goto LABEL_49;
    }

    v17 = ((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v18 = &v5[2 * (v17 & 0xFFFFFFFFFFFFFFELL)];
    v19 = v5 + 2;
    v20 = v17 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = xmmword_23CE306D0;
      *v19 = xmmword_23CE306D0;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    v5 = v18;
    if (v17 != (v17 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_49:
      do
      {
        *v5 = xmmword_23CE306D0;
        v5 += 2;
      }

      while (v5 != v16);
    }

    v5 = v16;
  }

  a1[1] = v5;
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(_OWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  *&result = 1;
  *a2 = xmmword_23CE306D0;
  return result;
}

void OUTLINED_FUNCTION_0_7(uint64_t a1)
{
  v2 = (*(a1 + 16) - (*(a1 + 8) & 1) - 8);

  operator delete(v2);
}

operations_research::sat::NeighborhoodGeneratorHelper *operations_research::sat::NeighborhoodGeneratorHelper::NeighborhoodGeneratorHelper(operations_research::sat::NeighborhoodGeneratorHelper *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::SatParameters *a3, operations_research::sat::SharedResponseManager *a4, operations_research::sat::SharedBoundsManager *a5)
{
  v10 = operations_research::sat::SubSolver::SubSolver(this, "neighborhood_helper", 0x13uLL, 3);
  *v10 = &unk_284F3C930;
  v10[32] = 0;
  v10[33] = a3;
  v10[34] = a2;
  v10[36] = a5;
  v10[37] = a4;
  operations_research::sat::CpModelProto::CpModelProto((v10 + 38), 0);
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  operations_research::sat::CpModelProto::CpModelProto(this + 512, 0);
  *(this + 120) = 0;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  if (!*(this + 37))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_lns.cc", 75);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v16);
  }

  v12 = *(this + 36);
  if (v12)
  {
    *(this + 70) = operations_research::sat::SharedBoundsManager::RegisterNewId(v12, v11);
  }

  v13 = *(this + 34);
  if ((this + 328) != (v13 + 24))
  {
    if (*(this + 84) >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 82);
    }

    if (*(v13 + 32))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((this + 328), (v13 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
    }
  }

  operations_research::sat::NeighborhoodGeneratorHelper::InitializeHelperData(this);
  operations_research::sat::NeighborhoodGeneratorHelper::RecomputeHelperData(this, v14);
  (*(*this + 16))(this);
  return this;
}

void sub_23CA31680(_Unwind_Exception *a1)
{
  v3 = *(v1 + 488);
  if (v3)
  {
    operator delete(v3);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 464));
  operations_research::sat::CpModelProto::~CpModelProto((v1 + 304));
  absl::lts_20240722::Mutex::~Mutex((v1 + 256));
  operations_research::sat::SubSolver::~SubSolver(v1);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SubSolver::SubSolver(uint64_t a1, const void *a2, size_t __len, int a4)
{
  *a1 = &unk_284F3CEE8;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  v7 = (a1 + 8);
  if (__len)
  {
    memmove(v7, a2, __len);
  }

  *(v7 + __len) = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  operations_research::DistributionStat::DistributionStat(a1 + 48, "task time", 9uLL);
  *(a1 + 48) = &unk_284F44CD0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  operations_research::DistributionStat::DistributionStat(a1 + 152, "task dtime", 0xAuLL);
  *(a1 + 152) = &unk_284F44CD0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  return a1;
}

void sub_23CA318CC(_Unwind_Exception *exception_object)
{
  *(v1 + 48) = &unk_284F3A5F8;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::InitializeHelperData(operations_research::sat::NeighborhoodGeneratorHelper *this)
{
  v3 = *(this + 58);
  v2 = *(this + 59);
  if (v2 != v3)
  {
    v4 = *(this + 59);
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 59) = v3;
  v7 = *(this + 34);
  v8 = *(v7 + 56);
  v31 = 0;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; v31 = i)
    {
      v10 = *(this + 34);
      v12 = *(v10 + 48);
      v11 = v10 + 48;
      v13 = v12 + 8 * i + 7;
      if ((v12 & 1) == 0)
      {
        v13 = v11;
      }

      v14 = *(*v13 + 60);
      v16 = *(this + 58);
      v15 = *(this + 59);
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      if (v17 <= v14)
      {
        v18 = v14 + 1;
        if (v18 > v17)
        {
          std::vector<std::vector<int>>::__append(this + 464, v18 - v17);
        }

        else if (v18 < v17)
        {
          v19 = v16 + 24 * v18;
          if (v15 != v19)
          {
            v20 = *(this + 59);
            do
            {
              v22 = *(v20 - 24);
              v20 -= 24;
              v21 = v22;
              if (v22)
              {
                *(v15 - 16) = v21;
                operator delete(v21);
              }

              v15 = v20;
            }

            while (v20 != v19);
          }

          *(this + 59) = v19;
        }
      }

      std::vector<int>::push_back[abi:ne200100](*(this + 58) + 24 * v14, &v31);
      i = v31 + 1;
    }

    v7 = *(this + 34);
  }

  std::vector<BOOL>::resize(this + 488, *(v7 + 32), 0);
  v23 = *(this + 34);
  if (*(v23 + 16))
  {
    v24 = *(v23 + 128);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = *(v24 + 24);
      v27 = *(this + 61);
      v28 = 4 * v25;
      do
      {
        v30 = *v26++;
        v29 = v30;
        if (~v30 > v30)
        {
          v29 = ~v29;
        }

        *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v28 -= 4;
      }

      while (v28);
    }
  }
}

void operations_research::sat::NeighborhoodGeneratorHelper::RecomputeHelperData(operations_research::sat::NeighborhoodGeneratorHelper *this, uint64_t a2)
{
  v171 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(this + 32, a2);
  absl::lts_20240722::Mutex::ReaderLock(this + 120);
  v164 = 0;
  v165 = 0;
  v167 = xmmword_23CE306D0;
  v166 = 0;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  operations_research::sat::CpModelProto::CpModelProto(v162, 0);
  operations_research::sat::CpModelProto::Clear((this + 512));
  if (*(this + 136) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 134);
  }

  v3 = (this + 328);
  if (*(this + 84))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((this + 536), (this + 328), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
  }

  operations_research::sat::PresolveContext::PresolveContext(__u, &v164, (this + 512), v162);
  operations_research::sat::ModelCopy::ModelCopy(v125, __u);
  operations_research::sat::ModelCopy::ImportAndSimplifyConstraints(v125, *(this + 34), 0);
  if (v137 >= 2)
  {
    operator delete((v139 - (v138 & 1) - 8));
  }

  if (__p)
  {
    v136 = __p;
    operator delete(__p);
  }

  if (v132 >= 2)
  {
    operator delete((v134 - (v133 & 1) - 8));
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (*&v127[8] >= 2uLL)
  {
    operator delete((*&v127[24] - (v127[16] & 1) - 8));
  }

  if (v126[0])
  {
    v126[1] = v126[0];
    operator delete(v126[0]);
  }

  if (*&v125[8])
  {
    *&v125[16] = *&v125[8];
    operator delete(*&v125[8]);
  }

  operations_research::sat::PresolveContext::~PresolveContext(__u);
  operations_research::sat::CpModelProto::~CpModelProto(v162);
  operations_research::sat::Model::~Model(&v164);
  *(this + 85) = *(this + 84);
  *(this + 88) = *(this + 87);
  *(this + 91) = *(this + 90);
  operations_research::sat::CompactVectorVector<int,int>::reserve(this + 84, *(this + 142));
  v4 = (this + 696);
  v115 = (this + 720);
  if (*(this + 142) < 1)
  {
    goto LABEL_101;
  }

  v5 = 0;
  v119 = (this + 560);
  while (2)
  {
    v117 = v5;
    v6 = *v119 + 8 * v5 + 7;
    if (*v119)
    {
      v7 = v6;
    }

    else
    {
      v7 = (this + 560);
    }

    if (*(*v7 + 15) == 19)
    {
      goto LABEL_21;
    }

    *(this + 118) = *(this + 117);
    operations_research::sat::UsedVariables(__u, *v7);
    v8 = *__u;
    v9 = v146;
    if (*__u == v146)
    {
      if (!*__u)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    do
    {
      v38 = *v8;
      if (*v3)
      {
        v39 = (*v3 + 8 * v38 + 7);
      }

      else
      {
        v39 = (this + 328);
      }

      v40 = *v39;
      if (*(v40 + 16) != 2 || **(v40 + 24) != *(*(v40 + 24) + 8))
      {
        v41 = *(this + 118);
        v42 = *(this + 119);
        if (v41 < v42)
        {
          *v41 = v38;
          v37 = v41 + 4;
        }

        else
        {
          v43 = *(this + 117);
          v44 = v41 - v43;
          v45 = (v41 - v43) >> 2;
          v46 = v45 + 1;
          if ((v45 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v47 = v42 - v43;
          if (v47 >> 1 > v46)
          {
            v46 = v47 >> 1;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v48 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            if (!(v48 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v49 = (v41 - v43) >> 2;
          v50 = (4 * v45);
          v51 = (4 * v45 - 4 * v49);
          *v50 = v38;
          v37 = v50 + 1;
          memcpy(v51, v43, v44);
          *(this + 117) = v51;
          *(this + 118) = v37;
          *(this + 119) = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        *(this + 118) = v37;
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = *__u;
    if (*__u)
    {
LABEL_28:
      v146 = v8;
      operator delete(v8);
    }

LABEL_29:
    if (*v119)
    {
      v10 = (*v119 + 8 * v117 + 7);
    }

    else
    {
      v10 = (this + 560);
    }

    operations_research::sat::UsedIntervals(__u, *v10);
    v11 = *__u;
    v12 = *__u;
    v116 = *__u;
    v118 = v146;
    if (*__u == v146)
    {
      if (*__u)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    do
    {
      v19 = (*v119 + 8 * *v12 + 7);
      if ((*v119 & 1) == 0)
      {
        v19 = (this + 560);
      }

      operations_research::sat::UsedVariables(v125, *v19);
      v21 = *v125;
      v20 = *&v125[8];
      if (*v125 == *&v125[8])
      {
        if (*v125)
        {
          goto LABEL_69;
        }
      }

      else
      {
        do
        {
          v23 = *v21;
          if (*v3)
          {
            v24 = (*v3 + 8 * v23 + 7);
          }

          else
          {
            v24 = (this + 328);
          }

          v25 = *v24;
          if (*(v25 + 16) != 2 || **(v25 + 24) != *(*(v25 + 24) + 8))
          {
            v26 = *(this + 118);
            v27 = *(this + 119);
            if (v26 < v27)
            {
              *v26 = v23;
              v22 = v26 + 4;
            }

            else
            {
              v28 = *(this + 117);
              v29 = v26 - v28;
              v30 = (v26 - v28) >> 2;
              v31 = v30 + 1;
              if ((v30 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v32 = v27 - v28;
              if (v32 >> 1 > v31)
              {
                v31 = v32 >> 1;
              }

              if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v33 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v31;
              }

              if (v33)
              {
                if (!(v33 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v34 = (v26 - v28) >> 2;
              v35 = (4 * v30);
              v36 = (4 * v30 - 4 * v34);
              *v35 = v23;
              v22 = v35 + 1;
              memcpy(v36, v28, v29);
              *(this + 117) = v36;
              *(this + 118) = v22;
              *(this + 119) = 0;
              if (v28)
              {
                operator delete(v28);
              }
            }

            *(this + 118) = v22;
          }

          ++v21;
        }

        while (v21 != v20);
        v21 = *v125;
        if (*v125)
        {
LABEL_69:
          *&v125[8] = v21;
          operator delete(v21);
        }
      }

      ++v12;
    }

    while (v12 != v118);
    v11 = *__u;
    if (!*__u)
    {
      goto LABEL_35;
    }

LABEL_34:
    v146 = v11;
    operator delete(v11);
LABEL_35:
    v13 = *(this + 118);
    v14 = *(this + 117);
    v4 = (this + 696);
    if ((v13 - v14) >= 5)
    {
      if (v116 != v118)
      {
        std::__sort<std::__less<int,int> &,int *>();
        v14 = *(this + 117);
        v13 = *(this + 118);
        if (v14 != v13)
        {
          v15 = v14 + 4;
          while (v15 != v13)
          {
            v16 = *(v15 - 1);
            v17 = *v15;
            v15 += 4;
            if (v16 == v17)
            {
              v18 = v15 - 8;
              while (v15 != v13)
              {
                v52 = v16;
                v16 = *v15;
                if (v52 != *v15)
                {
                  *(v18 + 1) = v16;
                  v18 += 4;
                }

                v15 += 4;
              }

              if (v18 + 4 != v13)
              {
                v13 = v18 + 4;
                *(this + 118) = v18 + 4;
              }

              break;
            }
          }
        }
      }

      __u[0] = (*(this + 91) - *(this + 90)) >> 2;
      std::vector<int>::push_back[abi:ne200100](this + 672, __u);
      __u[0] = (v13 - v14) >> 2;
      std::vector<int>::push_back[abi:ne200100](this + 696, __u);
      std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v115, *(this + 91), v14, v13, (v13 - v14) >> 2);
    }

LABEL_21:
    v5 = v117 + 1;
    if (v117 + 1 < *(this + 142))
    {
      continue;
    }

    break;
  }

LABEL_101:
  operations_research::sat::CompactVectorVector<int,int>::ResetFromTranspose(this + 31, this + 84, *(*(this + 34) + 32));
  *(this + 112) = *(this + 111);
  v53 = *(*(this + 34) + 32);
  v54 = (this + 864);
  LOBYTE(__u[0]) = 0;
  std::vector<BOOL>::assign(this + 864, v53, __u);
  __u[0] = 0;
  if (v53 >= 1)
  {
    v55 = 0;
    do
    {
      if (*v3)
      {
        v56 = (*v3 + 8 * v55 + 7);
      }

      else
      {
        v56 = (this + 328);
      }

      v57 = *v56;
      if (*(v57 + 16) != 2 || **(v57 + 24) != *(*(v57 + 24) + 8))
      {
        std::vector<int>::push_back[abi:ne200100](this + 888, __u);
        v55 = __u[0];
        *(*v54 + ((__u[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << SLOBYTE(__u[0]);
      }

      __u[0] = ++v55;
    }

    while (v55 < v53);
  }

  *(this + 115) = *(this + 114);
  v58 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  if (*(*(this + 34) + 128))
  {
    v59 = *(*(this + 34) + 128);
  }

  else
  {
    v59 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  }

  v60 = *(v59 + 4);
  if (v60)
  {
    v61 = v59[3];
    v62 = 4 * v60;
    do
    {
      __u[0] = *v61;
      if ((*(*v54 + ((__u[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SLOBYTE(__u[0])))
      {
        std::vector<int>::push_back[abi:ne200100](this + 912, __u);
      }

      ++v61;
      v62 -= 4;
    }

    while (v62);
  }

  *v126 = 0u;
  memset(v127, 0, 28);
  memset(v125, 0, sizeof(v125));
  v129 = 0;
  v130 = 0;
  v128 = 0;
  LODWORD(v131) = 0;
  DenseConnectedComponentsFinder::SetNumberOfNodes(v125, v53);
  v64 = *(this + 85);
  v65 = *(this + 84);
  if (v64 != v65)
  {
    v66 = 0;
    v67 = 0;
    do
    {
      v68 = *(*v4 + 4 * v66);
      if (v68 >= 2)
      {
        v69 = (*v115 + 4 * *(v65 + 4 * v66));
        for (i = 1; i != v68; ++i)
        {
          DenseConnectedComponentsFinder::AddEdge(v125, *v69, v69[i]);
        }

        v64 = *(this + 85);
        v65 = *(this + 84);
      }

      v66 = ++v67;
    }

    while (v67 < ((v64 - v65) >> 2));
  }

  if (operations_research::sat::NeighborhoodGeneratorHelper::ObjectiveDomainIsConstraining(this, v63))
  {
    if (*(*(this + 34) + 128))
    {
      v58 = *(*(this + 34) + 128);
    }

    v71 = *(v58 + 4);
    if (v71 >= 2)
    {
      v72 = 4 * v71;
      v73 = 4;
      do
      {
        v74 = v58[3];
        if (~*v74 <= *v74)
        {
          v75 = *v74;
        }

        else
        {
          v75 = ~*v74;
        }

        v76 = v74[v73 / 4];
        if (~v76 <= v76)
        {
          v77 = v76;
        }

        else
        {
          v77 = ~v76;
        }

        DenseConnectedComponentsFinder::AddEdge(v125, v75, v77);
        v73 += 4;
      }

      while (v72 != v73);
    }
  }

  v78 = *(this + 103);
  v79 = *(this + 102);
  if (v78 != v79)
  {
    v80 = *(this + 103);
    do
    {
      v82 = *(v80 - 24);
      v80 -= 24;
      v81 = v82;
      if (v82)
      {
        *(v78 - 16) = v81;
        operator delete(v81);
      }

      v78 = v80;
    }

    while (v80 != v79);
  }

  *(this + 103) = v79;
  __u[0] = -1;
  std::vector<int>::assign(this + 35, v53, __u);
  __u[0] = 0;
  if (v53 >= 1)
  {
    LODWORD(v83) = 0;
    do
    {
      if (*v3)
      {
        v84 = (*v3 + 8 * v83 + 7);
      }

      else
      {
        v84 = (this + 328);
      }

      v85 = *v84;
      if (*(v85 + 16) != 2 || **(v85 + 24) != *(*(v85 + 24) + 8))
      {
        Root = DenseConnectedComponentsFinder::FindRoot(v125, v83);
        v87 = Root;
        v88 = *(this + 105);
        v89 = *(v88 + 4 * Root);
        v90 = *(this + 102);
        if (v89 == -1)
        {
          v92 = *(this + 103);
          v93 = v92 - v90;
          v94 = 0xAAAAAAAAAAAAAAABLL * ((v92 - v90) >> 3);
          *(v88 + 4 * Root) = v94;
          v95 = *(this + 104);
          if (v92 >= v95)
          {
            v97 = v94 + 1;
            if (v94 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v98 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v90) >> 3);
            if (2 * v98 > v97)
            {
              v97 = 2 * v98;
            }

            if (v98 >= 0x555555555555555)
            {
              v99 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v99 = v97;
            }

            if (v99)
            {
              if (v99 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v100 = 24 * v94;
            v96 = 24 * v94 + 24;
            v101 = 24 * v94 - v93;
            *v100 = 0;
            *(v100 + 8) = 0;
            *(v100 + 16) = 0;
            memcpy((v100 - v93), v90, v93);
            *(this + 102) = v101;
            *(this + 103) = v96;
            *(this + 104) = 0;
            if (v90)
            {
              operator delete(v90);
            }
          }

          else
          {
            v96 = (v92 + 24);
            *v92 = 0;
            *(v92 + 1) = 0;
            *(v92 + 2) = 0;
          }

          *(this + 103) = v96;
          v89 = *(v88 + 4 * v87);
          v91 = *(this + 105);
          v90 = *(this + 102);
        }

        else
        {
          v91 = *(this + 105);
        }

        *(v91 + 4 * __u[0]) = v89;
        std::vector<int>::push_back[abi:ne200100](&v90[24 * *(v88 + 4 * v87)], __u);
        LODWORD(v83) = __u[0];
      }

      v83 = (v83 + 1);
      __u[0] = v83;
    }

    while (v83 < v53);
  }

  if (operations_research::sat::SharedResponseManager::LoggingIsEnabled(*(this + 37), v83))
  {
    v102 = *(this + 102);
    v103 = *(this + 103);
    if (v102 != v103)
    {
      operator new();
    }

    std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(0, 0, __u, 0, 1);
    v123[0] = 0;
    v123[1] = 0;
    v124 = 0;
    v104 = *(this + 37);
    v122 = 5;
    strcpy(v121, "Model");
    v106 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(this + 112) - *(this + 111)) >> 2, &v144, v105);
    *&v143 = &v144;
    *(&v143 + 1) = v106 - &v144;
    v108 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v53, v142, v107) - v142;
    v140 = v142;
    v141 = v108;
    v109 = *(this + 142);
    v110 = *(*(this + 34) + 56);
    *__u = "var:";
    v146 = 4;
    v147 = v143;
    v148 = "/";
    v149 = 1;
    v150 = v142;
    v151 = v108;
    v152 = " constraints:";
    v153 = 13;
    v112 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v109, v163, v111);
    v162[0] = v163;
    v162[1] = v112 - v163;
    v154 = v163;
    v155 = v112 - v163;
    v156 = "/";
    v157 = 1;
    v114 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v110, &v166, v113);
    v164 = &v166;
    v165 = v114 - &v166;
    v158 = &v166;
    v159 = v114 - &v166;
    v160 = v123;
    v161 = 0;
    absl::lts_20240722::strings_internal::CatPieces(__u, 9, &v120);
    operations_research::sat::SharedResponseManager::LogMessageWithThrottling(v104, v121, &v120);
    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
      if (v122 < 0)
      {
        goto LABEL_183;
      }

LABEL_172:
      if (SHIBYTE(v124) < 0)
      {
LABEL_184:
        operator delete(v123[0]);
      }
    }

    else
    {
      if ((v122 & 0x80000000) == 0)
      {
        goto LABEL_172;
      }

LABEL_183:
      operator delete(v121[0]);
      if (SHIBYTE(v124) < 0)
      {
        goto LABEL_184;
      }
    }
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (*v127)
  {
    *&v127[8] = *v127;
    operator delete(*v127);
  }

  if (*&v125[24])
  {
    v126[0] = *&v125[24];
    operator delete(*&v125[24]);
  }

  if (*v125)
  {
    *&v125[8] = *v125;
    operator delete(*v125);
  }

  absl::lts_20240722::Mutex::ReaderUnlock(this + 120);
  absl::lts_20240722::Mutex::Unlock(this + 32);
}

void sub_23CA32A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v60)
  {
    operator delete(v60);
  }

  DenseConnectedComponentsFinder::~DenseConnectedComponentsFinder(&a28);
  absl::lts_20240722::Mutex::ReaderUnlock((v59 + 960));
  absl::lts_20240722::Mutex::Unlock((v59 + 256));
  _Unwind_Resume(a1);
}

void operations_research::sat::SubSolver::~SubSolver(operations_research::sat::SubSolver *this)
{
  *this = &unk_284F3CEE8;
  *(this + 19) = &unk_284F3A5F8;
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(*(this + 1));
      return;
    }
  }

  else
  {
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 7));
  if (*(this + 31) < 0)
  {
    goto LABEL_7;
  }
}

void operations_research::sat::NeighborhoodGeneratorHelper::Synchronize(operations_research::sat::NeighborhoodGeneratorHelper *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    operations_research::sat::SharedBoundsManager::GetChangedBounds(v2, *(this + 70), &v40, &v37, &v34);
    absl::lts_20240722::Mutex::Lock(this + 120, v3);
    v5 = v40;
    if (v41 == v40)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = (this + 328);
      v9 = 1;
      do
      {
        v10 = v5[v6];
        v11 = *(v37 + v6);
        v12 = v10;
        v13 = *(v34 + v6);
        if (dword_2810BFB90 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&_MergedGlobals_6, dword_2810BFB90))
        {
          v16 = (*v8 & 1) != 0 ? (*v8 + 8 * v10 + 7) : (this + 328);
          v17 = *v16;
          v18 = *(v17 + 24);
          v19 = *v18;
          v20 = v18[*(v17 + 16) - 1];
          if (dword_2810BFBA8 >= 3)
          {
            v28 = v20;
            v29 = v19;
            if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFBA0, dword_2810BFBA8))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_lns.cc", 108);
              v27 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v33, 3);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, "Variable: ", 0xAuLL);
              LODWORD(v32[0]) = v10;
              v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v27, v32);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " old domain: [", 0xEuLL);
              v32[0] = v29;
              v22 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v21, v32);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, ", ", 2uLL);
              v32[0] = v28;
              v23 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v22, v32);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "] new domain: [", 0xFuLL);
              v32[0] = v11;
              v24 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v23, v32);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, ", ", 2uLL);
              v32[0] = v13;
              v25 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v24, v32);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "]", 1uLL);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v33);
            }
          }
        }

        if (*v8)
        {
          v14 = (*v8 + 8 * v12 + 7);
        }

        else
        {
          v14 = this + 328;
        }

        operations_research::Domain::FromFlatSpanOfIntervals(*(*v14 + 24), *(*v14 + 16), v33, v4);
        operations_research::Domain::Domain(v30, v11, v13);
        operations_research::Domain::IntersectionWith(v32, v33, v30);
        if (v30[0])
        {
          operator delete(__p);
        }

        if (!operations_research::Domain::IsEmpty(v32))
        {
          if (*v8)
          {
            v15 = (*v8 + 8 * v12 + 7);
          }

          else
          {
            v15 = (this + 328);
          }

          operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v32, *v15);
          v7 |= operations_research::Domain::IsFixed(v32);
        }

        if (v32[0])
        {
          operator delete(v32[1]);
        }

        if (v33[0])
        {
          operator delete(v33[1]);
        }

        v6 = v9;
        v5 = v40;
        ++v9;
      }

      while (v6 < v41 - v40);
    }

    absl::lts_20240722::Mutex::Unlock(this + 120);
    if (v7)
    {
      operations_research::sat::NeighborhoodGeneratorHelper::RecomputeHelperData(this, v26);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }
}

void sub_23CA33074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a18);
  absl::lts_20240722::Mutex::Unlock((v25 + 960));
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    v28 = a24;
    if (!a24)
    {
LABEL_3:
      v29 = *(v26 - 112);
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  a25 = v28;
  operator delete(v28);
  v29 = *(v26 - 112);
  if (!v29)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v26 - 104) = v29;
  operator delete(v29);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::NeighborhoodGeneratorHelper::ObjectiveDomainIsConstraining(operations_research::sat::NeighborhoodGeneratorHelper *this, __n128 a2)
{
  v2 = *(this + 34);
  if ((*(v2 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v2 + 128);
  v4 = *(v3 + 64);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 16);
  if (v5 < 1)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_40;
  }

  v6 = *(v3 + 48);
  v7 = *(this + 41);
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    v15 = *(v3 + 24);
    v16 = v7 + 7;
    do
    {
      v18 = *v15++;
      v17 = v18;
      v19 = ~v18 <= v18;
      v21 = *v6++;
      v20 = v21;
      if (!v19)
      {
        v17 = ~v17;
      }

      v22 = *(v16 + 8 * v17);
      v23 = *(v22 + 24);
      v24 = *v23 * v20;
      v25 = v23[*(v22 + 16) - 1] * v20;
      if (v25 >= v24)
      {
        v26 = *v23 * v20;
      }

      else
      {
        v26 = v25;
      }

      v12 += v26;
      if (v24 > v25)
      {
        v25 = v24;
      }

      v13 += v25;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = *(v7 + 24);
    v9 = *v8;
    v10 = v8[*(v7 + 16) - 1];
    if (v5 == 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
LABEL_33:
      v40 = &v6[v11];
      v41 = v5 - v11;
      do
      {
        v42 = *v40++;
        v43 = v9 * v42;
        v44 = v10 * v42;
        if (v10 * v42 >= v9 * v42)
        {
          v45 = v43;
        }

        else
        {
          v45 = v44;
        }

        v12 += v45;
        if (v43 > v44)
        {
          v44 = v43;
        }

        v13 += v44;
        --v41;
      }

      while (v41);
      goto LABEL_40;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v11 = v5 & 0x7FFFFFFE;
    v31 = v6 + 1;
    v32 = v11;
    do
    {
      v33 = *(v31 - 1);
      v34 = v9 * v33;
      v35 = v9 * *v31;
      v36 = v10 * v33;
      v37 = v10 * *v31;
      if (v36 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v36;
      }

      if (v37 >= v35)
      {
        v39 = v9 * *v31;
      }

      else
      {
        v39 = v10 * *v31;
      }

      v27 += v38;
      v28 += v39;
      if (v34 > v36)
      {
        v36 = v34;
      }

      if (v35 > v37)
      {
        v37 = v9 * *v31;
      }

      v29 += v36;
      v30 += v37;
      v31 += 2;
      v32 -= 2;
    }

    while (v32);
    v12 = v28 + v27;
    v13 = v30 + v29;
    if (v11 != v5)
    {
      goto LABEL_33;
    }
  }

LABEL_40:
  operations_research::Domain::FromFlatSpanOfIntervals(*(v3 + 72), v4, v53, a2);
  operations_research::Domain::Domain(v51, v12, v13);
  v46 = operations_research::Domain::Max(v53);
  operations_research::Domain::Domain(v50, 0x8000000000000000, v46);
  operations_research::Domain::IntersectionWith(v52, v51, v50);
  if (v50[0])
  {
    operator delete(v50[1]);
  }

  if (v51[0])
  {
    operator delete(v51[1]);
  }

  IsIncludedIn = operations_research::Domain::IsIncludedIn(v52, v53);
  v48 = IsIncludedIn;
  if (v52[0])
  {
    operator delete(v52[1]);
    result = v48 ^ 1u;
    if (v53[0])
    {
LABEL_48:
      v49 = result;
      operator delete(v53[1]);
      return v49;
    }
  }

  else
  {
    result = IsIncludedIn ^ 1u;
    if (v53[0])
    {
      goto LABEL_48;
    }
  }

  return result;
}

void sub_23CA333C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, void *__p)
{
  if (a15)
  {
    operator delete(__p);
  }

  if (*(v16 - 40))
  {
    operator delete(*(v16 - 32));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CompactVectorVector<int,int>::ResetFromTranspose(std::vector<int> *this, uint64_t *a2, std::vector<int>::size_type __n)
{
  v3 = __n;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    this->__end_ = this->__begin_;
    this[1].__end_ = this[1].__begin_;
    this[2].__end_ = this[2].__begin_;
    if (__n >= 1)
    {
      v50 = __n;
      __u = 0;
      std::vector<int>::assign(this, __n, &__u);
      __u = 0;
      std::vector<int>::assign(this + 1, v50, &__u);
    }

    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = (v6 - v5) >> 2;
  v11 = a2[3];
  v12 = a2[6];
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  do
  {
    v14 = *(v11 + 4 * v8);
    if (!v14)
    {
      goto LABEL_3;
    }

    v15 = *(v5 + 4 * v8);
    v16 = v12 + 4 * v15;
    v17 = (v14 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v17 > 6)
    {
      v19 = v17 + 1;
      v20 = (v17 + 1) & 0x7FFFFFFFFFFFFFF8;
      v18 = (v16 + 4 * v20);
      v21 = vdupq_n_s32(v3);
      v22 = (v12 + 16 + 4 * v15);
      v23 = v20;
      v24 = v21;
      do
      {
        v21 = vmaxq_s32(v21, vaddq_s32(v22[-1], v13));
        v24 = vmaxq_s32(v24, vaddq_s32(*v22, v13));
        v22 += 2;
        v23 -= 8;
      }

      while (v23);
      v3 = vmaxvq_s32(vmaxq_s32(v21, v24));
      if (v19 == v20)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v18 = (v12 + 4 * v15);
    }

    v25 = (v16 + 4 * v14);
    do
    {
      v27 = *v18++;
      v26 = v27;
      if (v3 <= v27 + 1)
      {
        v3 = v26 + 1;
      }
    }

    while (v18 != v25);
LABEL_3:
    v8 = ++v9;
  }

  while (v10 > v9);
  __u = 0;
  std::vector<int>::assign(this + 1, v3, &__u);
  v28 = *a2;
  v29 = a2[1];
  v30 = v29 - *a2;
  if (v29 != *a2)
  {
    v31 = 0;
    v32 = 0;
    v33 = v30 >> 2;
    v34 = a2[3];
    v35 = a2[6];
    do
    {
      v36 = *(v34 + 4 * v31);
      if (v36)
      {
        v37 = (v35 + 4 * *(v28 + 4 * v31));
        begin = this[1].__begin_;
        v39 = 4 * v36;
        do
        {
          v40 = *v37++;
          ++begin[v40];
          v39 -= 4;
        }

        while (v39);
      }

      v31 = ++v32;
    }

    while (v33 > v32);
  }

  __u = 0;
  std::vector<int>::assign(this, v3, &__u);
  v41 = (v3 - 2);
  if (v3 >= 2)
  {
    v42 = this[1].__begin_;
    v43 = this->__begin_ + 1;
    v44 = *this->__begin_;
    v45 = v3 - 1;
    do
    {
      v46 = *v42++;
      v44 += v46;
      *v43++ = v44;
      --v45;
    }

    while (v45);
  }

  v47 = this[2].__begin_;
  v48 = a2[7] - a2[6];
  v49 = this[2].__end_ - v47;
  if (v48 >> 2 <= v49)
  {
    if (v48 >> 2 < v49)
    {
      this[2].__end_ = (v47 + v48);
    }
  }

  else
  {
    std::vector<int>::__append(this + 2, (v48 >> 2) - v49);
  }

  v51 = *a2;
  v52 = a2[1];
  v53 = v52 - *a2;
  if (v52 != *a2)
  {
    v54 = 0;
    v55 = 0;
    v56 = v53 >> 2;
    v57 = a2[3];
    v58 = a2[6];
    do
    {
      v59 = *(v57 + 4 * v54);
      if (v59)
      {
        v60 = (v58 + 4 * *(v51 + 4 * v54));
        v61 = this->__begin_;
        v62 = this[2].__begin_;
        v63 = 4 * v59;
        do
        {
          v64 = *v60++;
          v65 = v61[v64];
          v61[v64] = v65 + 1;
          v62[v65] = v55;
          v63 -= 4;
        }

        while (v63);
      }

      v54 = ++v55;
    }

    while (v56 > v55);
  }

  v66 = (v3 - 1);
  v67 = this->__begin_;
  if (v66 >= 1)
  {
    if (v66 > 0x23 && (v73 = 4 * (v66 - 1), &v67[v41 + v73 / 0xFFFFFFFFFFFFFFFCLL] <= &v67[v41]) && &v67[v66 + v73 / 0xFFFFFFFFFFFFFFFCLL] <= &v67[v66] && ((v41 - v66) & 0x3FFFFFFFFFFFFFF8) != 0)
    {
      v68 = v3 - (v66 & 0x7FFFFFF8);
      v69 = (v3 - 1) & 7;
      v74 = &v67[v66 - 3];
      v75 = v3 + 4294967294;
      v76 = v66 & 0x7FFFFFF8;
      do
      {
        v77 = &v67[v75];
        v78 = *(v77 - 3);
        *(v74 - 1) = *(v77 - 7);
        *v74 = v78;
        v74 -= 8;
        v75 -= 8;
        v76 -= 8;
      }

      while (v76);
      if ((v66 & 0x7FFFFFF8) == v66)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v68 = v3;
      v69 = (v3 - 1);
    }

    v70 = v68 + 4294967294u;
    v71 = v69 + 1;
    v72 = &v67[v69];
    do
    {
      *v72-- = v67[v70--];
      --v71;
    }

    while (v71 > 1);
  }

LABEL_44:
  *v67 = 0;
}

void DenseConnectedComponentsFinder::~DenseConnectedComponentsFinder(DenseConnectedComponentsFinder *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(atomic_ullong *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 0;
  operations_research::sat::CpModelProto::CpModelProto(a2 + 8, 0);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 199) = 0u;
  *(a2 + 215) = 0u;
  *(a2 + 231) = 0;
  *a2 = 1;
  absl::lts_20240722::Mutex::ReaderLock(this + 120);
  if ((a2 + 32) != this + 41)
  {
    if (*(a2 + 40) >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((a2 + 32));
    }

    if (*(this + 84))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a2 + 32), (this + 41), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
    }
  }

  absl::lts_20240722::Mutex::ReaderUnlock(this + 120);
}

void sub_23CA33900(_Unwind_Exception *a1)
{
  absl::lts_20240722::Mutex::ReaderUnlock((v2 + 960));
  operations_research::sat::Neighborhood::~Neighborhood(v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::Neighborhood::~Neighborhood(operations_research::sat::Neighborhood *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  operations_research::sat::CpModelProto::~CpModelProto((this + 8));
}

BOOL operations_research::sat::NeighborhoodGeneratorHelper::IntervalIsActive(operations_research::sat::NeighborhoodGeneratorHelper *this, int a2, const operations_research::sat::CpSolverResponse *a3)
{
  v3 = *(this + 34);
  v5 = *(v3 + 48);
  v4 = (v3 + 48);
  v6 = v5 + 8 * a2 + 7;
  if (v5)
  {
    v4 = v6;
  }

  v7 = *v4;
  if (*(v7 + 16) == 1)
  {
    v8 = **(v7 + 24);
    v9 = ~v8 <= v8 ? **(v7 + 24) : ~v8;
    if (v8 >= 0 != (*(*(a3 + 4) + 8 * v9) != 0))
    {
      return 0;
    }
  }

  v11 = *(v7 + 60);
  if (v11 == 19)
  {
    v12 = *(v7 + 48);
  }

  else
  {
    v12 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  v13 = v12[3];
  if (!v13)
  {
    v13 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v14 = *(v13 + 4);
  if (v14)
  {
    v15 = *(this + 41);
    if (v15)
    {
      v16 = v13[3];
      v17 = v15 + 7;
      v18 = 4 * v14;
      while (1)
      {
        v19 = *(v17 + 8 * *v16);
        if (*(v19 + 16) != 2 || **(v19 + 24) != *(*(v19 + 24) + 8))
        {
          return 1;
        }

        ++v16;
        v18 -= 4;
        if (!v18)
        {
          goto LABEL_23;
        }
      }
    }

    if (*(v15 + 16) != 2 || **(v15 + 24) != *(*(v15 + 24) + 8))
    {
      return 1;
    }
  }

LABEL_23:
  if (v11 == 19)
  {
    v20 = *(*(v7 + 48) + 40);
    if (!v20)
    {
      v20 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v21 = *(v20 + 4);
    if (!v21)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v20 = qword_2810BECA8;
    if (!qword_2810BECA8)
    {
      v20 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v21 = *(v20 + 4);
    if (!v21)
    {
      goto LABEL_39;
    }
  }

  v22 = *(this + 41);
  if (v22)
  {
    v23 = v20[3];
    v24 = v22 + 7;
    v25 = 4 * v21;
    while (1)
    {
      v26 = *(v24 + 8 * *v23);
      if (*(v26 + 16) != 2 || **(v26 + 24) != *(*(v26 + 24) + 8))
      {
        return 1;
      }

      ++v23;
      v25 -= 4;
      if (!v25)
      {
        goto LABEL_39;
      }
    }
  }

  if (*(v22 + 16) == 2 && **(v22 + 24) == *(*(v22 + 24) + 8))
  {
LABEL_39:
    if (v11 == 19)
    {
      v27 = *(*(v7 + 48) + 32);
      if (!v27)
      {
        v27 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v28 = *(v27 + 4);
      if (v28)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v27 = qword_2810BECA0;
      if (!qword_2810BECA0)
      {
        v27 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v28 = *(v27 + 4);
      if (v28)
      {
LABEL_43:
        v29 = *(this + 41);
        if (v29)
        {
          v30 = v27[3];
          v31 = v29 + 7;
          v32 = 4 * v28;
          while (1)
          {
            v33 = *(v31 + 8 * *v30);
            if (*(v33 + 16) != 2 || **(v33 + 24) != *(*(v33 + 24) + 8))
            {
              break;
            }

            result = 0;
            ++v30;
            v32 -= 4;
            if (!v32)
            {
              return result;
            }
          }
        }

        else if (*(v29 + 16) == 2)
        {
          return **(v29 + 24) != *(*(v29 + 24) + 8);
        }

        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(atomic_ullong *a1@<X0>, unint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  absl::lts_20240722::Mutex::ReaderLock(a1 + 120);
  absl::lts_20240722::Mutex::ReaderUnlock(a1 + 120);
}

void sub_23CA33CD4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::GetActiveRectangles(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X8>)
{
  v4 = *(this + 58);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v4) >> 3) < 0x14)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*(v4 + 464) - *(v4 + 456)) >> 2;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(this, v5, &__p);
  v7 = __p;
  v6 = v56;
  if (v56 - __p == 28)
  {
    v8 = 8;
  }

  else
  {
    v8 = (((v56 - __p) >> 2) - 1) / 7 + ((v56 - __p) >> 2);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(&v51, v8);
  while (v7 != v6)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v51, v7, v57);
    if (v59 == 1)
    {
      *v58 = *v7;
    }

    ++v7;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = *(this + 58);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v9) >> 3) >= 0x16)
  {
    v10 = *(v9 + 504);
    v48 = *(v9 + 512);
    if (v48 != v10)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(this + 34);
        v14 = *(v12 + 48);
        v13 = (v12 + 48);
        v15 = (v14 + 8 * *v10 + 7);
        if ((v14 & 1) == 0)
        {
          v15 = v13;
        }

        v16 = *v15;
        v17 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
        if (*(v16 + 60) == 21)
        {
          v17 = *(v16 + 48);
        }

        v50 = v10;
        v18 = *(v17 + 4);
        if (v18 >= 1)
        {
          break;
        }

LABEL_15:
        *a3 = 0;
        v10 = v50 + 1;
        if (v50 + 1 == v48)
        {
          goto LABEL_57;
        }
      }

      v19 = 0;
      while (1)
      {
        v20 = *(v17[3] + v19);
        v21 = *(v17[6] + v19);
        if (v51 > 1)
        {
          break;
        }

        v23 = v53 == v20 || v53 == v21;
        if (v52 >= 2 && v23)
        {
          goto LABEL_34;
        }

LABEL_24:
        if (++v19 >= v18)
        {
          goto LABEL_15;
        }
      }

      v29 = 0;
      _X10 = v53;
      __asm { PRFM            #4, [X10] }

      v35 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20));
      v36 = vdup_n_s8(v35 & 0x7F);
      v37 = ((v53 >> 12) ^ (v35 >> 7)) & v51;
      v38 = *(v53 + v37);
      v39 = vceq_s8(v38, v36);
      if (!v39)
      {
        goto LABEL_47;
      }

LABEL_45:
      while (*(v54 + 4 * ((v37 + (__clz(__rbit64(v39)) >> 3)) & v51)) != v20)
      {
        v39 &= ((v39 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v39)
        {
LABEL_47:
          while (!*&vceq_s8(v38, 0x8080808080808080))
          {
            v29 += 8;
            v37 = (v29 + v37) & v51;
            v38 = *(v53 + v37);
            v39 = vceq_s8(v38, v36);
            if (v39)
            {
              goto LABEL_45;
            }
          }

          v40 = 0;
          __asm { PRFM            #4, [X10] }

          v42 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v21) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v21));
          v43 = vdup_n_s8(v42 & 0x7F);
          v44 = ((v53 >> 12) ^ (v42 >> 7)) & v51;
          v45 = *(v53 + v44);
          v46 = vceq_s8(v45, v43);
          if (!v46)
          {
            goto LABEL_53;
          }

LABEL_51:
          while (*(v54 + 4 * ((v44 + (__clz(__rbit64(v46)) >> 3)) & v51)) != v21)
          {
            v46 &= ((v46 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v46)
            {
LABEL_53:
              while (!*&vceq_s8(v45, 0x8080808080808080))
              {
                v40 += 8;
                v44 = (v40 + v44) & v51;
                v45 = *(v53 + v44);
                v46 = vceq_s8(v45, v43);
                if (v46)
                {
                  goto LABEL_51;
                }
              }

              goto LABEL_24;
            }
          }

          break;
        }
      }

LABEL_34:
      v24 = a3[2];
      if (v11 < v24)
      {
        *v11 = v20 | (v21 << 32);
        v11 += 8;
      }

      else
      {
        v25 = v11;
        v26 = v11 >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          *a3 = 0;
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v24 >> 2 > v27)
        {
          v27 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          if (!(v28 >> 61))
          {
            operator new();
          }

          *a3 = 0;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v47 = (8 * v26);
        *v47 = v20 | (v21 << 32);
        v11 = (v47 + 1);
        memcpy(0, 0, v25);
        a3[1] = v11;
        a3[2] = 0;
      }

      a3[1] = v11;
      v18 = *(v17 + 4);
      goto LABEL_24;
    }
  }

LABEL_57:
  if (v51 >= 2)
  {
    operator delete((v53 - (v52 & 1) - 8));
  }

  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }
}

void sub_23CA34194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets@<X0>(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v38[0] = 0;
  v38[1] = 0;
  v38[2] = &unk_23CE31C20;
  v37[0] = a2;
  v37[1] = v38;
  v2 = *(this + 58);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v2) >> 3);
  if (v3 >= 0x15)
  {
    v5 = v2[60];
    v6 = v2[61];
    if (v6 != v5)
    {
      do
      {
        v7 = *(this + 34);
        v9 = *(v7 + 48);
        v8 = (v7 + 48);
        v10 = (v9 + 8 * *v5 + 7);
        if ((v9 & 1) == 0)
        {
          v10 = v8;
        }

        v11 = *v10;
        v12 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
        if (*(v11 + 60) == 20)
        {
          v12 = *(v11 + 48);
        }

        operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(v37, *(v12 + 4), v12[3]);
        ++v5;
      }

      while (v5 != v6);
      v2 = *(this + 58);
      v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v2) >> 3);
    }

    if (v3 >= 0x17)
    {
      v13 = v2[66];
      v14 = v2[67];
      if (v14 != v13)
      {
        do
        {
          v15 = *(this + 34);
          v17 = *(v15 + 48);
          v16 = (v15 + 48);
          v18 = (v17 + 8 * *v13 + 7);
          if ((v17 & 1) == 0)
          {
            v18 = v16;
          }

          v19 = *v18;
          v20 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
          if (*(v19 + 60) == 22)
          {
            v20 = *(v19 + 48);
          }

          operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(v37, *(v20 + 6), v20[4]);
          ++v13;
        }

        while (v13 != v14);
        v2 = *(this + 58);
        v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v2) >> 3);
      }
    }

    if (v3 >= 0x16)
    {
      v21 = v2[63];
      for (i = v2[64]; v21 != i; ++v21)
      {
        v23 = *v21;
        v24 = *(this + 34);
        v26 = *(v24 + 48);
        v25 = (v24 + 48);
        v27 = v26 + 8 * v23 + 7;
        if (v26)
        {
          v25 = v27;
        }

        v28 = *v25;
        v29 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
        if (*(v28 + 60) == 21)
        {
          v29 = *(v28 + 48);
        }

        operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(v37, *(v29 + 4), v29[3]);
        v30 = *(this + 34);
        v32 = *(v30 + 48);
        v31 = (v30 + 48);
        v33 = v32 + 8 * v23 + 7;
        if (v32)
        {
          v31 = v33;
        }

        v34 = *v31;
        v35 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
        if (*(v34 + 60) == 21)
        {
          v35 = *(v34 + 48);
        }

        operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(v37, *(v35 + 10), v35[6]);
      }
    }
  }

  return absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::~raw_hash_set(v38);
}

void sub_23CA3444C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::~raw_hash_set(va);
  std::vector<std::vector<int>>::~vector[abi:ne200100](v5);
  _Unwind_Resume(a1);
}

void operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(uint64_t *a1, int a2, const void *a3)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  std::__sort<std::__less<int,int> &,int *>();
  v13 = a1[1];
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::EmplaceDecomposable::operator()<std::vector<int>,std::vector<int> const&>(&v13, &__p, &__p, v9, v4, v5);
  if (v9[16] == 1)
  {
    v6 = *a1;
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 16))
    {
      v8 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(v6, &__p);
    }

    else
    {
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      if (v11 != __p)
      {
        if (((v11 - __p) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v8 = v7 + 3;
      *(v6 + 8) = v7 + 3;
    }

    *(v6 + 8) = v8;
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_23CA34650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  *(v14 + 8) = v15;
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::GetSchedulingPrecedences(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void (***a6)(operations_research::sat::IntervalConstraintProto *__hidden this)@<X5>, void (***a7)(operations_research::sat::LinearExpressionProto *__hidden this)@<X6>, uint64_t *a8@<X8>)
{
  v413 = a3;
  v8 = xmmword_23CE306D0;
  v432 = xmmword_23CE306D0;
  v9 = a1[58];
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a1[59] - v9) >> 3);
  if (v10 >= 0x15)
  {
    v11 = a2;
    v12 = v9[60];
    v428 = v9[61];
    if (v428 != v12)
    {
      do
      {
        v13 = a1[34];
        v15 = *(v13 + 48);
        v14 = (v13 + 48);
        v16 = v15 + 8 * *v12 + 7;
        if ((v15 & 1) == 0)
        {
          v16 = v14;
        }

        v17 = *v16;
        v18 = *(*v16 + 60);
        v19 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
        if (v18 == 20)
        {
          v19 = *(v17 + 48);
        }

        __p = v12;
        v20 = *(v19 + 4);
        if (v20)
        {
          v21 = v19[3];
          v22 = &v21[v20];
          do
          {
            v28 = *v21;
            v29 = *v11;
            if (*v11 > 1uLL)
            {
              v26 = 0;
              _X10 = v11[2];
              __asm { PRFM            #4, [X10] }

              v53 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v28) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v28));
              v27 = (_X10 >> 12) ^ (v53 >> 7);
              v54 = vdup_n_s8(v53 & 0x7F);
              while (1)
              {
                v23 = v27 & v29;
                v24 = *(_X10 + v23);
                v25 = vceq_s8(v24, v54);
                if (v25)
                {
                  break;
                }

LABEL_14:
                if (vceq_s8(v24, 0x8080808080808080))
                {
                  goto LABEL_21;
                }

                v26 += 8;
                v27 = v26 + v23;
              }

              while (*(v11[3] + 4 * ((v23 + (__clz(__rbit64(v25)) >> 3)) & v29)) != v28)
              {
                v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v25)
                {
                  goto LABEL_14;
                }
              }
            }

            else if (v11[1] < 2uLL || *(v11 + 4) != v28)
            {
LABEL_21:
              v31 = *v14 + 8 * v28 + 7;
              if ((*v14 & 1) == 0)
              {
                v31 = v14;
              }

              v32 = *v31;
              v33 = *(*v31 + 16);
              v34 = v413[4];
              if (v33 != 1 || ((v35 = **(v32 + 24), ~v35 <= v35) ? (v36 = **(v32 + 24)) : (v36 = ~v35), (_NF = v35 < 0, v38 = *(v34 + 8 * v36), _NF) ? (v39 = 0) : (v39 = 1), v39 != (v38 != 1)))
              {
                v40 = *(v32 + 60);
                v41 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
                if (v40 == 19)
                {
                  v41 = *(v32 + 48);
                }

                v42 = v41[3];
                if (v42)
                {
                  v43 = v42;
                }

                else
                {
                  v43 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                }

                v44 = v43[8];
                v45 = *(v43 + 4);
                if (v45 >= 1)
                {
                  v46 = v43[6];
                  v47 = v43[3];
                  if (v45 == 1)
                  {
                    v48 = 0;
                    goto LABEL_43;
                  }

                  v55 = 0;
                  v48 = v45 & 0x7FFFFFFE;
                  v56 = v46 + 1;
                  v57 = v47 + 1;
                  v58 = v48;
                  do
                  {
                    v44 = (v44 + *(v34 + 8 * *(v57 - 1)) * *(v56 - 1));
                    v55 += *(v34 + 8 * *v57) * *v56;
                    v56 += 2;
                    v57 += 2;
                    v58 -= 2;
                  }

                  while (v58);
                  v44 = (v44 + v55);
                  if (v48 != v45)
                  {
LABEL_43:
                    v59 = v45 - v48;
                    v60 = v47 + v48;
                    v61 = &v46[v48];
                    do
                    {
                      v63 = *v61++;
                      v62 = v63;
                      v64 = *v60++;
                      v44 = (v44 + *(v34 + 8 * v64) * v62);
                      --v59;
                    }

                    while (v59);
                  }
                }

                v65 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
                if (v40 == 19)
                {
                  v65 = *(v32 + 48);
                }

                if (v65[4])
                {
                  v66 = v65[4];
                }

                else
                {
                  v66 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                }

                v67 = v66[8];
                v68 = *(v66 + 4);
                if (v68 >= 1)
                {
                  v69 = v66[6];
                  v70 = v66[3];
                  if (v68 == 1)
                  {
                    v71 = 0;
                    goto LABEL_56;
                  }

                  v72 = 0;
                  v71 = v68 & 0x7FFFFFFE;
                  v73 = v69 + 1;
                  v74 = v70 + 1;
                  v75 = v71;
                  do
                  {
                    v67 = (v67 + *(v34 + 8 * *(v74 - 1)) * *(v73 - 1));
                    v72 += *(v34 + 8 * *v74) * *v73;
                    v73 += 2;
                    v74 += 2;
                    v75 -= 2;
                  }

                  while (v75);
                  v67 = (v67 + v72);
                  if (v71 != v68)
                  {
LABEL_56:
                    v76 = v68 - v71;
                    v77 = v70 + v71;
                    v78 = &v69[v71];
                    do
                    {
                      v80 = *v78++;
                      v79 = v80;
                      v81 = *v77++;
                      v67 = (v67 + *(v34 + 8 * v81) * v79);
                      --v76;
                    }

                    while (v76);
                  }
                }

                operator new();
              }
            }

            ++v21;
          }

          while (v21 != v22);
        }

        v12 = __p + 1;
      }

      while (__p + 1 != v428);
      v9 = a1[58];
      v10 = 0xAAAAAAAAAAAAAAABLL * ((a1[59] - v9) >> 3);
    }

    if (v10 >= 0x17)
    {
      v408 = v9[67];
      if (v408 != v9[66])
      {
        v82 = v9[66];
        v83 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
        while (1)
        {
          v84 = v83;
          v410 = v82;
          v85 = a1[34];
          v87 = *(v85 + 48);
          v86 = (v85 + 48);
          v88 = (v87 + 8 * *v82 + 7);
          if ((v87 & 1) == 0)
          {
            v88 = v86;
          }

          v89 = *v88;
          v90 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
          if (*(v89 + 60) == 22)
          {
            v90 = *(v89 + 48);
          }

          v416 = *a4;
          v415 = a4[1];
          v412 = a4[2];
          v439 = 0uLL;
          v440 = 0;
          if (*(v90 + 6) >= 1)
          {
            v91 = 0;
            v92 = v90 + 6;
            while (1)
            {
              v98 = *(v90[4] + v91);
              v99 = *v11;
              if (*v11 > 1uLL)
              {
                v96 = 0;
                _X10 = v11[2];
                __asm { PRFM            #4, [X10] }

                v120 = (((v84 + v98) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v84 + v98));
                v97 = (_X10 >> 12) ^ (v120 >> 7);
                v121 = vdup_n_s8(v120 & 0x7F);
                while (1)
                {
                  v93 = v97 & v99;
                  v94 = *(_X10 + v93);
                  v95 = vceq_s8(v94, v121);
                  if (v95)
                  {
                    break;
                  }

LABEL_75:
                  if (vceq_s8(v94, 0x8080808080808080))
                  {
                    goto LABEL_82;
                  }

                  v96 += 8;
                  v97 = v96 + v93;
                }

                while (*(v11[3] + 4 * ((v93 + (__clz(__rbit64(v95)) >> 3)) & v99)) != v98)
                {
                  v95 &= ((v95 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v95)
                  {
                    goto LABEL_75;
                  }
                }

                goto LABEL_133;
              }

              if (v11[1] < 2uLL || *(v11 + 4) != v98)
              {
                break;
              }

LABEL_133:
              if (++v91 >= *(v90 + 6))
              {
                v439.n128_u64[1] = 0;
                v440 = 0;
                goto LABEL_136;
              }
            }

LABEL_82:
            v101 = *v86 + 8 * v98 + 7;
            if ((*v86 & 1) == 0)
            {
              v101 = v86;
            }

            v102 = *v101;
            v103 = *(*v101 + 16);
            v104 = v413[4];
            if (v103 == 1)
            {
              v105 = **(v102 + 24);
              v106 = ~v105 <= v105 ? **(v102 + 24) : ~v105;
              _NF = v105 < 0;
              v107 = *(v104 + 8 * v106);
              v108 = !_NF;
              if (v108 == (v107 != 1))
              {
                goto LABEL_133;
              }
            }

            v109 = *(v102 + 60);
            v110 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v109 == 19)
            {
              v110 = *(v102 + 48);
            }

            v111 = v110[3];
            if (v111)
            {
              v112 = v111;
            }

            else
            {
              v112 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v113 = v112[8];
            v114 = *(v112 + 4);
            if (v114 >= 1)
            {
              v115 = v112[6];
              v116 = v112[3];
              if (v114 == 1)
              {
                v117 = 0;
LABEL_104:
                v126 = v114 - v117;
                v127 = v116 + v117;
                v128 = &v115[v117];
                do
                {
                  v130 = *v128++;
                  v129 = v130;
                  v131 = *v127++;
                  v113 = (v113 + *(v104 + 8 * v131) * v129);
                  --v126;
                }

                while (v126);
                goto LABEL_106;
              }

              v122 = 0;
              v117 = v114 & 0x7FFFFFFE;
              v123 = v115 + 1;
              v124 = v116 + 1;
              v125 = v117;
              do
              {
                v113 = (v113 + *(v104 + 8 * *(v124 - 1)) * *(v123 - 1));
                v122 += *(v104 + 8 * *v124) * *v123;
                v123 += 2;
                v124 += 2;
                v125 -= 2;
              }

              while (v125);
              v113 = (v113 + v122);
              if (v117 != v114)
              {
                goto LABEL_104;
              }
            }

LABEL_106:
            v132 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v109 == 19)
            {
              v132 = *(v102 + 48);
            }

            if (v132[4])
            {
              v133 = v132[4];
            }

            else
            {
              v133 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v134 = v133[8];
            v135 = *(v133 + 4);
            if (v135 >= 1)
            {
              v136 = v133[6];
              v137 = v133[3];
              if (v135 == 1)
              {
                v138 = 0;
              }

              else
              {
                v139 = 0;
                v138 = v135 & 0x7FFFFFFE;
                v140 = v136 + 1;
                v141 = v137 + 1;
                v142 = v138;
                do
                {
                  v134 = (v134 + *(v104 + 8 * *(v141 - 1)) * *(v140 - 1));
                  v139 += *(v104 + 8 * *v141) * *v140;
                  v140 += 2;
                  v141 += 2;
                  v142 -= 2;
                }

                while (v142);
                v134 = (v134 + v139);
                if (v138 == v135)
                {
                  goto LABEL_119;
                }
              }

              v143 = v135 - v138;
              v144 = v137 + v138;
              v145 = &v136[v138];
              do
              {
                v147 = *v145++;
                v146 = v147;
                v148 = *v144++;
                v134 = (v134 + *(v104 + 8 * v148) * v146);
                --v143;
              }

              while (v143);
            }

LABEL_119:
            if (*v92)
            {
              v149 = *v92 + 8 * v91 + 7;
            }

            else
            {
              v149 = (v90 + 6);
            }

            v150 = *v149;
            v151 = *(*v149 + 64);
            v152 = *(*v149 + 16);
            if (v152 < 1)
            {
              goto LABEL_130;
            }

            v153 = *(v150 + 48);
            v154 = *(v150 + 24);
            if (v152 == 1)
            {
              v155 = 0;
            }

            else
            {
              v156 = 0;
              v155 = v152 & 0x7FFFFFFE;
              v157 = (v153 + 8);
              v158 = (v154 + 4);
              v159 = v155;
              do
              {
                v151 += *(v104 + 8 * *(v158 - 1)) * *(v157 - 1);
                v156 += *(v104 + 8 * *v158) * *v157;
                v157 += 2;
                v158 += 2;
                v159 -= 2;
              }

              while (v159);
              v151 += v156;
              if (v155 == v152)
              {
                goto LABEL_130;
              }
            }

            v160 = v152 - v155;
            v161 = (v154 + 4 * v155);
            v162 = (v153 + 8 * v155);
            do
            {
              v164 = *v162++;
              v163 = v164;
              v165 = *v161++;
              v151 += *(v104 + 8 * v165) * v163;
              --v160;
            }

            while (v160);
LABEL_130:
            if (v113 != v134 && v151)
            {
              operator new();
            }

            v11 = a2;
            goto LABEL_133;
          }

LABEL_136:
          v439.n128_u64[0] = 0;
          if (v90[9])
          {
            v166 = v90[9];
          }

          else
          {
            v166 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v167 = v166[8];
          v168 = *(v166 + 4);
          if (v168 < 1)
          {
            v83 = v84;
            goto LABEL_148;
          }

          v169 = v413[4];
          v170 = v166[6];
          v171 = v166[3];
          v83 = v84;
          if (v168 == 1)
          {
            break;
          }

          v173 = 0;
          v172 = v168 & 0x7FFFFFFE;
          v174 = v170 + 1;
          v175 = v171 + 1;
          v176 = v172;
          do
          {
            v167 += *(v169 + 8 * *(v175 - 1)) * *(v174 - 1);
            v173 += *(v169 + 8 * *v175) * *v174;
            v174 += 2;
            v175 += 2;
            v176 -= 2;
          }

          while (v176);
          v167 += v173;
          if (v172 != v168)
          {
            goto LABEL_146;
          }

LABEL_148:
          v438 = v167;
          v436 = 0u;
          v437 = 0u;
          v435 = 0u;
          if (*(&v437 + 1))
          {
            v183 = v437;
            do
            {
              v184 = (*(*(&v435 + 1) + ((v183 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v183 & 0x7F));
              v185 = *v184;
              v186 = v184[1];
              if (v186 - *v184 >= 0x21)
              {
                v187 = v184[3];
                if (v187 < 2)
                {
                  goto LABEL_165;
                }

                if (v185 == v186)
                {
                  goto LABEL_163;
                }

                v188 = 0x7FFFFFFFFFFFFFFFLL;
                v189 = 0x7FFFFFFFFFFFFFFFLL;
                v190 = *v184;
                do
                {
                  v191 = *(v190 + 24);
                  if (v191 < v189)
                  {
                    v189 = *(v190 + 24);
                  }

                  if (v191 <= v188)
                  {
                    v189 = v188;
                  }

                  if (v191 < v188)
                  {
                    v188 = *(v190 + 24);
                  }

                  v190 += 32;
                }

                while (v190 != v186);
                if (v189 + v188 <= v187)
                {
LABEL_163:
                  if (v185 != v186)
                  {
                    operator new();
                  }

                  v216 = v187 / 2;
                  v444 = v187 / 2;
                  v447 = 0uLL;
                  v448 = 0;
                  v426 = (v187 - v187 / 2);
                  v443 = v426;
                  v83 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
                  v441 = 0uLL;
                  v442 = 0;
                  v217 = *v184;
                  v424 = v184[1];
                  if (*v184 != v424)
                  {
                    v421 = v216;
                    while (1)
                    {
                      v219 = (v216 - MEMORY[0]);
                      v220 = &v426[-MEMORY[0]];
                      if (v219 == &v426[-MEMORY[0]])
                      {
                        v446 = 0x3FE0000000000000;
                        v445 = 0;
                        if (v415 == absl::lts_20240722::BitGenRef::NotAMock)
                        {
                          v224 = 0.5;
                          goto LABEL_205;
                        }

                        if ((v415)(v416, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v446, &v445))
                        {
                          v221 = v445;
                        }

                        else
                        {
                          v224 = *&v446;
LABEL_205:
                          while (1)
                          {
                            v225 = v412(v416);
                            v226 = vcvtd_n_s64_f64(v224, 0x20uLL);
                            if (v225 != v226)
                            {
                              break;
                            }

                            v221 = 0;
                            v224 = (v224 + v226 * -2.32830644e-10) * 4294967300.0;
                            if (v224 == 0.0)
                            {
                              goto LABEL_209;
                            }
                          }

                          v221 = v225 < v226;
                        }

LABEL_209:
                        v222 = *(v217 + 3);
                      }

                      else
                      {
                        v222 = *(v217 + 3);
                        v223 = v220 >= v219 ? v219 : &v426[-MEMORY[0]];
                        v221 = v222 <= v223 ? v220 < v219 : v220 >= v219;
                      }

                      if (v221)
                      {
                        v227 = &v441;
                      }

                      else
                      {
                        v227 = &v447;
                      }

                      if (v221)
                      {
                        v228 = &v447;
                      }

                      else
                      {
                        v228 = &v441;
                      }

                      if (v221)
                      {
                        v219 = v220;
                      }

                      v229 = v222 >= v219 ? v219 : v222;
                      v230 = *v217;
                      v231 = *(v217 + 1);
                      v232 = *(v217 + 2);
                      v233 = v221 ? &v441 : &v447;
                      v234 = v233->n128_u64[1];
                      v235 = v233[1].n128_u64[0];
                      if (v234 >= v235)
                      {
                        break;
                      }

                      *v234 = v230;
                      *(v234 + 8) = v231;
                      *(v234 + 16) = v232;
                      *(v234 + 24) = v229;
                      v233->n128_u64[1] = v234 + 32;
                      v236 = *(v217 + 3);
                      v237 = v236 - v219;
                      if (v236 > v219)
                      {
                        goto LABEL_239;
                      }

LABEL_192:
                      v217 += 8;
                      v216 = v421;
                      if (v217 == v424)
                      {
                        v83 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
                        if (v447.n128_u64[1] - v447.n128_u64[0] > 0x20)
                        {
                        }

                        goto LABEL_257;
                      }
                    }

                    v238 = v227->n128_u64[0];
                    v239 = v234 - v227->n128_u64[0];
                    v240 = v239 >> 5;
                    v241 = (v239 >> 5) + 1;
                    if (v241 >> 59)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v242 = v235 - v238;
                    if (v242 >> 4 > v241)
                    {
                      v241 = v242 >> 4;
                    }

                    if (v242 >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v243 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v243 = v241;
                    }

                    v419 = v228;
                    v417 = v221;
                    if (v243)
                    {
                      if (!(v243 >> 59))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v244 = v227;
                    v245 = 32 * v240;
                    *v245 = v230;
                    *(v245 + 8) = v231;
                    *(v245 + 16) = v232;
                    *(v245 + 24) = v229;
                    v246 = 32 * v240 + 32;
                    memcpy(0, v238, v239);
                    v244->n128_u64[0] = 0;
                    v233->n128_u64[1] = v246;
                    v233[1].n128_u64[0] = 0;
                    if (v238)
                    {
                      operator delete(v238);
                    }

                    v228 = v419;
                    v221 = v417;
                    v233->n128_u64[1] = v246;
                    v247 = *(v217 + 3);
                    v237 = v247 - v219;
                    if (v247 <= v219)
                    {
                      goto LABEL_192;
                    }

LABEL_239:
                    v248 = *v217;
                    v250 = *(v217 + 1);
                    v249 = *(v217 + 2);
                    if (v221)
                    {
                      v251 = &v447;
                    }

                    else
                    {
                      v251 = &v441;
                    }

                    v252 = v251->n128_u64[1];
                    v253 = v251[1].n128_u64[0];
                    if (v252 < v253)
                    {
                      *v252 = v248;
                      *(v252 + 8) = v250;
                      *(v252 + 16) = v249;
                      v218 = v252 + 32;
                      *(v252 + 24) = v237;
                    }

                    else
                    {
                      v254 = v228->n128_u64[0];
                      v255 = v252 - v228->n128_u64[0];
                      v256 = v255 >> 5;
                      v257 = (v255 >> 5) + 1;
                      if (v257 >> 59)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      v258 = v253 - v254;
                      if (v258 >> 4 > v257)
                      {
                        v257 = v258 >> 4;
                      }

                      if (v258 >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v259 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v259 = v257;
                      }

                      if (v259)
                      {
                        if (!(v259 >> 59))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v260 = v228;
                      v261 = 32 * v256;
                      *v261 = v248;
                      *(v261 + 8) = v250;
                      *(v261 + 16) = v249;
                      *(v261 + 24) = v237;
                      v218 = 32 * v256 + 32;
                      memcpy(0, v254, v255);
                      v260->n128_u64[0] = 0;
                      v251->n128_u64[1] = v218;
                      v251[1].n128_u64[0] = 0;
                      if (v254)
                      {
                        operator delete(v254);
                      }
                    }

                    v251->n128_u64[1] = v218;
                    goto LABEL_192;
                  }

LABEL_257:
                  v262 = v441.n128_u64[0];
                  if (v441.n128_u64[1] - v441.n128_u64[0] >= 0x21)
                  {
                    v262 = v441.n128_u64[0];
                  }

                  if (v262)
                  {
                    operator delete(v262);
                  }

                  if (v447.n128_u64[0])
                  {
                    operator delete(v447.n128_u64[0]);
                  }
                }

                else
                {
LABEL_165:
                  v192 = 0;
                  v193 = 1;
                  v194 = 1;
                  v83 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
                  do
                  {
                    v206 = 8 * v192;
                    v192 = v194;
                    v207 = v185[v206];
                    v208 = v185[8 * v193];
                    if (v432 > 1)
                    {
                      v203 = 0;
                      _X9 = v433;
                      __asm { PRFM            #4, [X9] }

                      v211 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v207) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v207))) + v208;
                      v212 = ((v211 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v211);
                      v204 = (v433 >> 12) ^ (v212 >> 7);
                      v213 = vdup_n_s8(v212 & 0x7F);
                      while (1)
                      {
                        v195 = v204 & v432;
                        v196 = *(v433 + v195);
                        v197 = vceq_s8(v196, v213);
                        if (v197)
                        {
                          break;
                        }

LABEL_172:
                        v202 = vceq_s8(v196, 0x8080808080808080);
                        if (v202)
                        {
                          inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v432, v212, (v195 + (__clz(__rbit64(v202)) >> 3)) & v432, v203, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::GetPolicyFunctions(void)::value);
                          v215 = &v434[inserted];
                          goto LABEL_184;
                        }

                        v203 += 8;
                        v204 = v203 + v195;
                      }

                      while (1)
                      {
                        v198 = &v434[(v195 + (__clz(__rbit64(v197)) >> 3)) & v432];
                        v200 = *v198;
                        v199 = *(v198 + 1);
                        if (v200 == v207 && v199 == v208)
                        {
                          break;
                        }

                        v197 &= ((v197 & 0x8080808080808080) - 1) & 0x8080808080808080;
                        if (!v197)
                        {
                          goto LABEL_172;
                        }
                      }
                    }

                    else if (*(&v432 + 1) > 1uLL)
                    {
                      if (v433 != v207 || HIDWORD(v433) != v208)
                      {
                        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::resize_impl(&v432, 3);
                      }
                    }

                    else
                    {
                      *(&v432 + 1) = 2;
                      v215 = &v433;
LABEL_184:
                      *v215 = v207 | (v208 << 32);
                      v185 = *v184;
                      v186 = v184[1];
                    }

                    v194 = v192 + 1;
                    v193 = v192 + 1;
                  }

                  while (v193 < (v186 - v185) >> 5);
                }
              }

              v263 = v437;
              v264 = *(*(&v435 + 1) + ((v437 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v437 & 0x7F);
              v265 = *v264;
              if (*v264)
              {
                *(v264 + 8) = v265;
                operator delete(v265);
                v263 = v437;
              }

              v11 = a2;
              v266 = *(&v437 + 1) - 1;
              v183 = v263 + 1;
              v437 = __PAIR128__(*(&v437 + 1), v183) + __PAIR128__(-1, 0);
              if (v183 >= 0x100)
              {
                operator delete(**(&v435 + 1));
                v266 = *(&v437 + 1);
                v183 = v437 - 128;
                *(&v435 + 1) += 8;
                *&v437 = v437 - 128;
              }
            }

            while (v266);
          }

          if (v439.n128_u64[0])
          {
            operator delete(v439.n128_u64[0]);
          }

          v82 = v410 + 1;
          if (v410 + 1 == v408)
          {
            v9 = a1[58];
            v10 = 0xAAAAAAAAAAAAAAABLL * ((a1[59] - v9) >> 3);
            goto LABEL_270;
          }
        }

        v172 = 0;
LABEL_146:
        v177 = v168 - v172;
        v178 = v171 + v172;
        v179 = &v170[v172];
        do
        {
          v181 = *v179++;
          v180 = v181;
          v182 = *v178++;
          v167 += *(v169 + 8 * v182) * v180;
          --v177;
        }

        while (v177);
        goto LABEL_148;
      }
    }

LABEL_270:
    if (v10 >= 0x16)
    {
      v267 = v9[63];
      v418 = v9[64];
      if (v418 != v267)
      {
        while (1)
        {
          v268 = a1[34];
          v270 = *(v268 + 48);
          v269 = (v268 + 48);
          v271 = (v270 + 8 * *v267 + 7);
          if ((v270 & 1) == 0)
          {
            v271 = v269;
          }

          v272 = *v271;
          v273 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
          if (*(v272 + 60) == 21)
          {
            v273 = *(v272 + 48);
          }

          v435 = 0uLL;
          *&v436 = 0;
          v447 = 0uLL;
          v448 = 0;
          if (*(v273 + 4) > 0)
          {
            break;
          }

LABEL_273:
          if (++v267 == v418)
          {
            goto LABEL_409;
          }
        }

        v274 = 0;
        v431 = 0;
        v275 = 0;
        v276 = 0;
        v425 = v269;
        v427 = 0;
        v420 = v267;
        while (1)
        {
          v282 = *(v273[3] + v274);
          v283 = *v11;
          if (*v11 > 1uLL)
          {
            v280 = 0;
            _X11 = v11[2];
            __asm { PRFM            #4, [X11] }

            v312 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v282) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v282));
            v281 = (_X11 >> 12) ^ (v312 >> 7);
            v8.n128_u64[0] = vdup_n_s8(v312 & 0x7F);
            while (1)
            {
              v277 = v281 & v283;
              v278 = *(_X11 + v277);
              v279 = vceq_s8(v278, v8.n128_u64[0]);
              if (v279)
              {
                break;
              }

LABEL_283:
              if (vceq_s8(v278, 0x8080808080808080))
              {
                goto LABEL_290;
              }

              v280 += 8;
              v281 = v280 + v277;
            }

            while (*(v11[3] + 4 * ((v277 + (__clz(__rbit64(v279)) >> 3)) & v283)) != v282)
            {
              v279 &= ((v279 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v279)
              {
                goto LABEL_283;
              }
            }

            goto LABEL_377;
          }

          LODWORD(_X11) = *(v11 + 4);
          if (v11[1] >= 2uLL && _X11 == v282)
          {
            goto LABEL_377;
          }

LABEL_290:
          v286 = *v269 + 7;
          v287 = (v286 + 8 * v282);
          if ((*v269 & 1) == 0)
          {
            v287 = v269;
          }

          v288 = *v287;
          v289 = *(*v287 + 16);
          v290 = v413[4];
          if (v289 == 1)
          {
            v291 = **(v288 + 24);
            v292 = ~v291 <= v291 ? **(v288 + 24) : ~v291;
            _NF = v291 < 0;
            v293 = *(v290 + 8 * v292);
            v294 = !_NF;
            if (v294 == (v293 != 1))
            {
              goto LABEL_377;
            }
          }

          v295 = *(v273[6] + v274);
          if (v283 > 1)
          {
            v313 = 0;
            _X14 = v11[2];
            __asm { PRFM            #4, [X14] }

            v316 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v295) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v295));
            v8.n128_u64[0] = vdup_n_s8(v316 & 0x7F);
            v317 = ((_X14 >> 12) ^ (v316 >> 7)) & v283;
            v318 = *(_X14 + v317);
            v319 = vceq_s8(v318, v8.n128_u64[0]);
            if (!v319)
            {
              goto LABEL_325;
            }

LABEL_323:
            while (*(v11[3] + 4 * ((v317 + (__clz(__rbit64(v319)) >> 3)) & v283)) != v295)
            {
              v319 &= ((v319 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v319)
              {
LABEL_325:
                while (!*&vceq_s8(v318, 0x8080808080808080))
                {
                  v313 += 8;
                  v317 = (v313 + v317) & v283;
                  v318 = *(_X14 + v317);
                  v319 = vceq_s8(v318, v8.n128_u64[0]);
                  if (v319)
                  {
                    goto LABEL_323;
                  }
                }

                goto LABEL_303;
              }
            }

            goto LABEL_377;
          }

          if (v11[1] >= 2uLL && _X11 == v295)
          {
LABEL_377:
            if (++v274 >= *(v273 + 4))
            {
              goto LABEL_402;
            }
          }

          else
          {
LABEL_303:
            v296 = (v286 + 8 * v295);
            if ((*v269 & 1) == 0)
            {
              v296 = v269;
            }

            v297 = *v296;
            if (*(v297 + 16) == 1)
            {
              v298 = **(v297 + 24);
              v299 = ~v298 <= v298 ? **(v297 + 24) : ~v298;
              _NF = v298 < 0;
              v300 = *(v290 + 8 * v299);
              v301 = !_NF;
              if (v301 == (v300 != 1))
              {
                goto LABEL_377;
              }
            }

            v302 = *(v288 + 60);
            v303 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v302 == 19)
            {
              v303 = *(v288 + 48);
            }

            v304 = v303[3];
            if (v304)
            {
              v305 = v304;
            }

            else
            {
              v305 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v306 = v305[8];
            v307 = *(v305 + 4);
            if (v307 >= 1)
            {
              v308 = v305[6];
              v309 = v305[3];
              if (v307 == 1)
              {
                v310 = 0;
LABEL_331:
                v325 = v307 - v310;
                v326 = v309 + v310;
                v327 = &v308[v310];
                do
                {
                  v329 = *v327++;
                  v328 = v329;
                  v330 = *v326++;
                  v306 = (v306 + *(v290 + 8 * v330) * v328);
                  --v325;
                }

                while (v325);
                goto LABEL_333;
              }

              v320 = v275;
              v321 = 0;
              v310 = v307 & 0x7FFFFFFE;
              v322 = v308 + 1;
              v323 = v309 + 1;
              v324 = v310;
              do
              {
                a3 = *(v290 + 8 * *(v323 - 1));
                v306 = (v306 + a3 * *(v322 - 1));
                v321 += *(v290 + 8 * *v323) * *v322;
                v322 += 2;
                v323 += 2;
                v324 -= 2;
              }

              while (v324);
              v306 = (v306 + v321);
              v269 = v425;
              v275 = v320;
              if (v310 != v307)
              {
                goto LABEL_331;
              }
            }

LABEL_333:
            v429 = *(v273[6] + v274);
            v331 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v302 == 19)
            {
              v331 = *(v288 + 48);
            }

            if (v331[4])
            {
              v332 = v331[4];
            }

            else
            {
              v332 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v333 = v332[8];
            v334 = *(v332 + 4);
            if (v334 >= 1)
            {
              v335 = v332[6];
              v336 = v332[3];
              if (v334 == 1)
              {
                v337 = 0;
LABEL_344:
                v342 = v334 - v337;
                v343 = v336 + v337;
                v344 = &v335[v337];
                do
                {
                  v346 = *v344++;
                  v345 = v346;
                  v347 = *v343++;
                  v333 = (v333 + *(v290 + 8 * v347) * v345);
                  --v342;
                }

                while (v342);
                goto LABEL_346;
              }

              v338 = 0;
              v337 = v334 & 0x7FFFFFFE;
              v339 = v335 + 1;
              v340 = v336 + 1;
              v341 = v337;
              do
              {
                a3 = *(v339 - 1);
                v333 = (v333 + *(v290 + 8 * *(v340 - 1)) * a3);
                v338 += *(v290 + 8 * *v340) * *v339;
                v339 += 2;
                v340 += 2;
                v341 -= 2;
              }

              while (v341);
              v333 = (v333 + v338);
              if (v337 != v334)
              {
                goto LABEL_344;
              }
            }

LABEL_346:
            v348 = *(v297 + 60);
            v349 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v348 == 19)
            {
              v349 = *(v297 + 48);
            }

            v350 = v349[3];
            if (v350)
            {
              v351 = v350;
            }

            else
            {
              v351 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v352 = v351[8];
            v353 = *(v351 + 4);
            if (v353 >= 1)
            {
              v354 = v351[6];
              v355 = v351[3];
              if (v353 == 1)
              {
                v356 = 0;
LABEL_357:
                v361 = v353 - v356;
                v362 = v355 + v356;
                v363 = &v354[v356];
                do
                {
                  v365 = *v363++;
                  v364 = v365;
                  v366 = *v362++;
                  v352 = (v352 + *(v290 + 8 * v366) * v364);
                  --v361;
                }

                while (v361);
                goto LABEL_359;
              }

              v357 = 0;
              v356 = v353 & 0x7FFFFFFE;
              v358 = v354 + 1;
              v359 = v355 + 1;
              v360 = v356;
              do
              {
                a3 = *(v290 + 8 * *v359);
                v352 = (v352 + *(v290 + 8 * *(v359 - 1)) * *(v358 - 1));
                v357 += a3 * *v358;
                v358 += 2;
                v359 += 2;
                v360 -= 2;
              }

              while (v360);
              v352 = (v352 + v357);
              if (v356 != v353)
              {
                goto LABEL_357;
              }
            }

LABEL_359:
            v367 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v348 == 19)
            {
              v367 = *(v297 + 48);
            }

            if (v367[4])
            {
              v368 = v367[4];
            }

            else
            {
              v368 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v369 = v368[8];
            v370 = *(v368 + 4);
            if (v370 >= 1)
            {
              v371 = v368[6];
              v372 = v368[3];
              if (v370 == 1)
              {
                v373 = 0;
LABEL_370:
                v378 = v370 - v373;
                v379 = v372 + v373;
                v380 = &v371[v373];
                do
                {
                  v382 = *v380++;
                  v381 = v382;
                  v383 = *v379++;
                  v369 = (v369 + *(v290 + 8 * v383) * v381);
                  --v378;
                }

                while (v378);
                goto LABEL_372;
              }

              v374 = 0;
              v373 = v370 & 0x7FFFFFFE;
              v375 = (v371 + 1);
              v376 = v372 + 1;
              v377 = v373;
              do
              {
                a3 = *v375;
                v369 = (v369 + *(v290 + 8 * *(v376 - 1)) * *(v375 - 1));
                v374 += *(v290 + 8 * *v376) * *v375;
                v375 += 2;
                v376 += 2;
                v377 -= 2;
              }

              while (v377);
              v369 = (v369 + v374);
              if (v373 != v370)
              {
                goto LABEL_370;
              }
            }

LABEL_372:
            if (v306 == v333)
            {
              v11 = a2;
              goto LABEL_377;
            }

            if (v352 == v369)
            {
              v11 = a2;
              if (++v274 >= *(v273 + 4))
              {
                goto LABEL_402;
              }
            }

            else
            {
              v384 = v275 - v276;
              v385 = v276;
              v386 = 0xCCCCCCCCCCCCCCCDLL * ((v275 - v276) >> 3);
              v387 = v386 + 1;
              v422 = v385;
              if (v386 + 1 > 0x666666666666666)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v388 = 0xCCCCCCCCCCCCCCCDLL * (-v385 >> 3);
              if (2 * v388 > v387)
              {
                v387 = 2 * v388;
              }

              if (v388 >= 0x333333333333333)
              {
                v389 = 0x666666666666666;
              }

              else
              {
                v389 = v387;
              }

              if (v389)
              {
                if (v389 <= 0x666666666666666)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v390 = 40 * v386;
              *v390 = v282;
              *(v390 + 8) = v306;
              *(v390 + 16) = v333;
              *(v390 + 24) = v352;
              *(v390 + 32) = v369;
              memcpy((40 * v386 - v384), v422, v384);
              if (v422)
              {
                operator delete(v422);
              }

              v391 = 40 * v386 + 40;
              v423 = (40 * v386 - v384);
              v392 = &v431[-v427];
              v393 = 0xCCCCCCCCCCCCCCCDLL * (&v431[-v427] >> 3);
              v394 = v393 + 1;
              if (v393 + 1 > 0x666666666666666)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (0x999999999999999ALL * (-v427 >> 3) > v394)
              {
                v394 = 0x999999999999999ALL * (-v427 >> 3);
              }

              if (0xCCCCCCCCCCCCCCCDLL * (-v427 >> 3) >= 0x333333333333333)
              {
                v395 = 0x666666666666666;
              }

              else
              {
                v395 = v394;
              }

              if (v395)
              {
                if (v395 <= 0x666666666666666)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v396 = v391;
              v397 = 8 * (&v431[-v427] >> 3);
              *v397 = v429;
              *(v397 + 8) = v352;
              *(v397 + 16) = v369;
              *(v397 + 24) = v306;
              *(v397 + 32) = v333;
              v431 = (v397 + 40);
              v398 = 40 * v393 - v392;
              memcpy((v397 - v392), v427, v392);
              if (v427)
              {
                operator delete(v427);
              }

              v427 = v398;
              v11 = a2;
              v276 = v423;
              v269 = v425;
              v275 = v396;
              v267 = v420;
              if (++v274 >= *(v273 + 4))
              {
LABEL_402:
                *(&v435 + 1) = v275;
                *&v436 = 0;
                *&v435 = v276;
                v447.n128_u64[1] = v431;
                v448 = 0;
                v447.n128_u64[0] = v427;
                if (v276 != v275 && v427 != v431)
                {
                }

                if (v427)
                {
                  operator delete(v427);
                }

                if (v276)
                {
                  operator delete(v276);
                }

                goto LABEL_273;
              }
            }
          }
        }
      }
    }
  }

LABEL_409:
  if (*(&v432 + 1) < 2uLL)
  {
    v401 = 0;
    v400 = a8;
  }

  else
  {
    v400 = a8;
    if (v432 >= 2)
    {
      v401 = v433;
      a3 = v434;
      if (*v433 <= -2)
      {
        do
        {
          v402 = __clz(__rbit64((*v401 | ~(*v401 >> 7)) & 0x101010101010101)) >> 3;
          v401 = (v401 + v402);
          a3 += v402;
        }

        while (*v401 < -1);
      }
    }

    else
    {
      a3 = &v433;
      v401 = &absl::lts_20240722::container_internal::kSooControl;
    }
  }

  v403 = v400;
  std::vector<std::pair<int,int>>::vector[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::iterator,0>(v400, v401, a3, 0);
  v404 = v403[1];
  v405 = 126 - 2 * __clz(&v404[-*v403] >> 3);
  if (v404 == *v403)
  {
    v406 = 0;
  }

  else
  {
    v406 = v405;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(*v403, v404, &v435, v406, 1);
  if (v432 >= 2)
  {
    operator delete((v433 - (BYTE8(v432) & 1) - 8));
  }
}

void sub_23CA36884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, void *a32, void *a33, uint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v41 = *v39;
  if (*v39)
  {
    *(a10 + 8) = v41;
    operator delete(v41);
  }

  if (a35 >= 2)
  {
    operator delete((a37 - (a36 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v82 = xmmword_23CE306D0;
  v3 = *(this + 58);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v3) >> 3);
  if (v4 >= 0x10)
  {
    v5 = a2;
    v6 = v3[45];
    __src = v3[46];
    if (__src != v6)
    {
      do
      {
        v7 = *(this + 34);
        v9 = *(v7 + 48);
        v8 = (v7 + 48);
        v10 = (v9 + 8 * *v6 + 7);
        if ((v9 & 1) == 0)
        {
          v10 = v8;
        }

        v11 = *v10;
        v12 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
        if (*(v11 + 60) == 15)
        {
          v12 = *(v11 + 48);
        }

        if (v82 > 1)
        {
          absl::lts_20240722::container_internal::ClearBackingArray(&v82, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::GetPolicyFunctions(void)::value, v82 < 0x80, 1u);
        }

        else
        {
          *(&v82 + 1) = 0;
        }

        v79 = v6;
        v13 = *(v12 + 16);
        if (v13 < 1)
        {
          v15 = 0x7FFFFFFF;
          if (*(&v82 + 1) >= 2uLL)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v14 = 0;
          v15 = 0x7FFFFFFF;
          do
          {
            v24 = *(v12[9] + v14);
            if (~v24 <= v24)
            {
              v25 = *(v12[9] + v14);
            }

            else
            {
              v25 = ~v24;
            }

            if (v24 >= 0 == (*(*(v5 + 4) + 8 * v25) != 0))
            {
              v26 = *(v12[6] + v14);
              v27 = *(v12[3] + v14);
              if (v26 != v27)
              {
                if (v82 > 1)
                {
                  v21 = 0;
                  _X9 = v83;
                  __asm { PRFM            #4, [X9] }

                  v34 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27));
                  v22 = (v34 >> 7) ^ (v83 >> 12);
                  v35 = vdup_n_s8(v34 & 0x7F);
                  while (1)
                  {
                    v16 = v22 & v82;
                    v17 = *(v83 + v16);
                    v18 = vceq_s8(v17, v35);
                    if (v18)
                    {
                      break;
                    }

LABEL_17:
                    v20 = vceq_s8(v17, 0x8080808080808080);
                    if (v20)
                    {
                      inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v82, v34, (v16 + (__clz(__rbit64(v20)) >> 3)) & v82, v21, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::GetPolicyFunctions(void)::value);
                      v19 = (v84 + 12 * inserted);
                      goto LABEL_31;
                    }

                    v21 += 8;
                    v22 = v21 + v16;
                  }

                  while (1)
                  {
                    v19 = (v84 + 12 * ((v16 + (__clz(__rbit64(v18)) >> 3)) & v82));
                    if (*v19 == v27)
                    {
                      break;
                    }

                    v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
                    if (!v18)
                    {
                      goto LABEL_17;
                    }
                  }
                }

                else if (*(&v82 + 1) > 1uLL)
                {
                  v19 = &v83;
                  if (v83 != v27)
                  {
                    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::resize_impl(&v82, 3uLL);
                  }
                }

                else
                {
                  *(&v82 + 1) = 2;
                  v19 = &v83;
LABEL_31:
                  *v19 = v27;
                  *(v19 + 4) = 0;
                }

                *(v19 + 1) = v26;
                *(v19 + 2) = v25;
                if (v15 >= v27)
                {
                  v15 = v27;
                }

                v13 = *(v12 + 16);
              }
            }

            ++v14;
          }

          while (v14 < v13);
          if (*(&v82 + 1) >= 2uLL)
          {
LABEL_39:
            if (v82 > 1)
            {
              v38 = 0;
              _X9 = v83;
              __asm { PRFM            #4, [X9] }

              v41 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15));
              v42 = vdup_n_s8(v41 & 0x7F);
              v43 = ((v41 >> 7) ^ (v83 >> 12)) & v82;
              v44 = *(v83 + v43);
              v45 = vceq_s8(v44, v42);
              if (!v45)
              {
                goto LABEL_50;
              }

LABEL_48:
              while (1)
              {
                v46 = (v43 + (__clz(__rbit64(v45)) >> 3)) & v82;
                if (*(v84 + 12 * v46) == v15)
                {
                  break;
                }

                v45 &= ((v45 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v45)
                {
LABEL_50:
                  while (!*&vceq_s8(v44, 0x8080808080808080))
                  {
                    v38 += 8;
                    v43 = (v38 + v43) & v82;
                    v44 = *(v83 + v43);
                    v45 = vceq_s8(v44, v42);
                    if (v45)
                    {
                      goto LABEL_48;
                    }
                  }

LABEL_102:
                  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v81, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_lns.cc", 951);
                  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v81);
                }
              }

              if (!(v83 + v46))
              {
                goto LABEL_102;
              }
            }

            else
            {
              v36 = v83 == v15 && *(&v82 + 1) > 1uLL;
              v37 = &absl::lts_20240722::container_internal::kSooControl;
              if (!v36)
              {
                v37 = 0;
              }

              if (!v37)
              {
                goto LABEL_102;
              }
            }

            operator new();
          }
        }

        v6 = v79 + 1;
      }

      while (v79 + 1 != __src);
      v3 = *(this + 58);
      v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v3) >> 3);
    }

    if (v4 >= 0x18)
    {
      v47 = v3[69];
      v48 = v3[70];
      if (v48 != v47)
      {
        v75 = v3[70];
        while (1)
        {
          v49 = *(this + 34);
          v51 = *(v49 + 48);
          v50 = (v49 + 48);
          v52 = (v51 + 8 * *v47 + 7);
          if ((v51 & 1) == 0)
          {
            v52 = v50;
          }

          v53 = *v52;
          v54 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
          if (*(v53 + 60) == 23)
          {
            v54 = *(v53 + 48);
          }

          if (v82 > 1)
          {
            absl::lts_20240722::container_internal::ClearBackingArray(&v82, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::GetPolicyFunctions(void)::value, v82 < 0x80, 1u);
          }

          else
          {
            *(&v82 + 1) = 0;
          }

          if (*(v54 + 16) >= 1)
          {
            break;
          }

LABEL_61:
          if (++v47 == v48)
          {
            goto LABEL_103;
          }
        }

        v76 = v47;
        v55 = 0;
        v56 = 0;
        while (1)
        {
          while (1)
          {
            v65 = *(v54[9] + v55);
            v66 = ~v65 <= v65 ? v65 : ~v65;
            if (v65 >= 0 == (*(*(v5 + 4) + 8 * v66) != 0))
            {
              v67 = *(v54[6] + v55);
              v68 = *(v54[3] + v55);
              if (v67 != v68)
              {
                break;
              }
            }

LABEL_96:
            if (++v55 >= *(v54 + 16))
            {
              goto LABEL_99;
            }
          }

          if (v68)
          {
            if (v82 > 1)
            {
              v62 = 0;
              _X9 = v83;
              __asm { PRFM            #4, [X9] }

              v71 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v68) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v68));
              v63 = (v71 >> 7) ^ (v83 >> 12);
              v72 = vdup_n_s8(v71 & 0x7F);
              while (1)
              {
                v57 = v63 & v82;
                v58 = *(v83 + v57);
                v59 = vceq_s8(v58, v72);
                if (v59)
                {
                  break;
                }

LABEL_74:
                v61 = vceq_s8(v58, 0x8080808080808080);
                if (v61)
                {
                  v64 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v82, v71, (v57 + (__clz(__rbit64(v61)) >> 3)) & v82, v62, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::GetPolicyFunctions(void)::value);
                  v60 = (v84 + 12 * v64);
                  goto LABEL_94;
                }

                v62 += 8;
                v63 = v62 + v57;
              }

              while (1)
              {
                v60 = (v84 + 12 * ((v57 + (__clz(__rbit64(v59)) >> 3)) & v82));
                if (*v60 == v68)
                {
                  break;
                }

                v59 &= ((v59 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v59)
                {
                  goto LABEL_74;
                }
              }
            }

            else if (*(&v82 + 1) > 1uLL)
            {
              v60 = &v83;
              if (v83 != v68)
              {
                absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::resize_impl(&v82, 3uLL);
              }
            }

            else
            {
              *(&v82 + 1) = 2;
              v60 = &v83;
LABEL_94:
              *v60 = v68;
              *(v60 + 4) = 0;
            }

            *(v60 + 1) = v67;
            *(v60 + 2) = v66;
            goto LABEL_96;
          }

          v73 = v56;
          v74 = v56 >> 3;
          if (((v56 >> 3) + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v56 >> 3 != -1)
          {
            if (!(((v56 >> 3) + 1) >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v74) = v67 | (v66 << 32);
          v56 = 8 * v74 + 8;
          memcpy(0, 0, v73);
          v5 = a2;
          if (++v55 >= *(v54 + 16))
          {
LABEL_99:
            if (v56)
            {
              operator new();
            }

            v5 = a2;
            v48 = v75;
            v47 = v76;
            goto LABEL_61;
          }
        }
      }
    }
  }

LABEL_103:
  if (v82 >= 2)
  {
    operator delete((v83 - (BYTE8(v82) & 1) - 8));
  }
}

void sub_23CA37778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19 >= 2)
  {
    operator delete((a21 - (a20 & 1) - 8));
  }

  if (*a14)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(a14, *a14);
  }

  _Unwind_Resume(exception_object);
}

operations_research::sat::PartialVariableAssignment *operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables@<X0>(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 2) = 0;
  operations_research::sat::CpModelProto::CpModelProto(a4 + 8, 0);
  *(a4 + 168) = 0;
  *(a4 + 176) = 0;
  *(a4 + 199) = 0u;
  *(a4 + 215) = 0u;
  *(a4 + 231) = 0;
  v7 = *(a1 + 272);
  if ((*(v7 + 16) & 1) != 0 && (v8 = *(v7 + 128), *(v8 + 16) == 1))
  {
    v9 = **(v8 + 24);
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  v67 = v9;
  absl::lts_20240722::Mutex::ReaderLock((a1 + 960));
  v10 = *(a1 + 336);
  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a4 + 32), *(a1 + 336));
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = (a1 + 328);
    do
    {
      if (*v12)
      {
        v13 = (*v12 + 8 * v11 + 7);
      }

      else
      {
        v13 = (a1 + 328);
      }

      v14 = *v13;
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a4 + 32), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
      operations_research::Domain::FromFlatSpanOfIntervals(*(v14 + 24), *(v14 + 16), &v70, v16);
      v17 = *(*(a2 + 4) + 8 * v11);
      v18 = *a3;
      if (*a3 > 1uLL)
      {
        v19 = 0;
        _X10 = a3[2];
        __asm { PRFM            #4, [X10] }

        v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11));
        v27 = vdup_n_s8(v26 & 0x7F);
        v28 = ((v26 >> 7) ^ (_X10 >> 12)) & v18;
        v29 = *(_X10 + v28);
        v30 = vceq_s8(v29, v27);
        if (!v30)
        {
          goto LABEL_18;
        }

LABEL_16:
        while (v11 != *(a3[3] + 4 * ((v28 + (__clz(__rbit64(v30)) >> 3)) & v18)))
        {
          v30 &= ((v30 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v30)
          {
LABEL_18:
            while (!*&vceq_s8(v29, 0x8080808080808080))
            {
              v19 += 8;
              v28 = (v19 + v28) & v18;
              v29 = *(_X10 + v28);
              v30 = vceq_s8(v29, v27);
              if (v30)
              {
                goto LABEL_16;
              }
            }

            goto LABEL_26;
          }
        }
      }

      else if (a3[1] < 2uLL || v11 != *(a3 + 4))
      {
LABEL_26:
        operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(&v70, v15);
        goto LABEL_27;
      }

      if (v11 == v67)
      {
        goto LABEL_26;
      }

      if (!operations_research::Domain::Contains(&v70, *(*(a2 + 4) + 8 * v11)))
      {
        v35 = operations_research::Domain::Min(&v70);
        v36 = v35;
        p_p = __p;
        if ((v70 & 1) == 0)
        {
          p_p = &__p;
        }

        if ((v70 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v38 = &p_p[2 * (v70 >> 1)];
          v39 = v35 - v17;
          if (v35 - v17 < 0)
          {
            v39 = v17 - v35;
          }

          do
          {
            v40 = *p_p;
            v41 = p_p[1];
            p_p += 2;
            v42 = v40 - v17;
            if (v40 - v17 < 0)
            {
              v42 = v17 - v40;
            }

            if (v42 >= v39)
            {
              v40 = v36;
            }

            else
            {
              v39 = v42;
            }

            v43 = v41 - v17;
            if (v41 - v17 < 0)
            {
              v43 = v17 - v41;
            }

            if (v43 >= v39)
            {
              v36 = v40;
            }

            else
            {
              v39 = v43;
              v36 = v41;
            }
          }

          while (p_p != v38);
        }

        operations_research::Domain::Domain(v69, v36, v36);
        operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v69, v15);
        if (v69[0])
        {
          operator delete(v69[1]);
        }

        goto LABEL_27;
      }

      v32 = *(v15 + 16);
      v31 = *(v15 + 20);
      if (v32 == v31)
      {
        google::protobuf::RepeatedField<long long>::Grow(v15 + 16, v31, (v31 + 1));
        v44 = *(v15 + 16);
        v31 = *(v15 + 20);
        v33 = *(v15 + 24);
        v34 = v44 + 1;
        *(v15 + 16) = v44 + 1;
        *(v33 + 8 * v44) = v17;
        if (v44 + 1 == v31)
        {
LABEL_48:
          google::protobuf::RepeatedField<long long>::Grow(v15 + 16, v31, (v31 + 1));
          v34 = *(v15 + 16);
          v33 = *(v15 + 24);
        }
      }

      else
      {
        v33 = *(v15 + 24);
        v34 = v32 + 1;
        *(v15 + 16) = v32 + 1;
        *(v33 + 8 * v32) = v17;
        if (v32 + 1 == v31)
        {
          goto LABEL_48;
        }
      }

      *(v15 + 16) = v34 + 1;
      *(v33 + 8 * v34) = v17;
LABEL_27:
      if (v70)
      {
        operator delete(__p);
      }

      ++v11;
    }

    while (v11 != v10);
  }

  absl::lts_20240722::Mutex::ReaderUnlock((a1 + 960));
  absl::lts_20240722::Mutex::ReaderLock((a1 + 256));
  v45 = *(a1 + 824) - *(a1 + 816);
  if (v45)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v45 >> 3)) >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v46 = *(a4 + 40);
  if (v46 >= 1)
  {
    v47 = 0;
    v48 = *(a4 + 32);
    v49 = (v48 + 7);
    v50 = *(a4 + 200);
    v51 = *(a4 + 204);
    do
    {
      if (v48)
      {
        v52 = v49;
      }

      else
      {
        v52 = (a4 + 32);
      }

      v53 = *v52;
      if (*(v53 + 16) != 2 || **(v53 + 24) != *(*(v53 + 24) + 8))
      {
        *(a4 + 200) = ++v50;
        if ((*(*(a1 + 488) + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47))
        {
          *(a4 + 204) = ++v51;
        }

        v54 = *(*(a1 + 840) + 4 * v47);
        if (v54 != -1)
        {
          ++*(4 * v54);
        }
      }

      ++v47;
      ++v49;
    }

    while (v46 != v47);
  }

  v55 = *(a1 + 824);
  v56 = *(a1 + 816);
  if (v55 != v56)
  {
    v57 = 0;
    v58 = 1;
    do
    {
      v59 = *(4 * v57);
      v60 = (v56 + 24 * v57);
      v61 = v60[1];
      if (v59 == (v61 - *v60) >> 2)
      {
        std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>((a4 + 208), *(a4 + 216), *v60, v61, v59);
        v55 = *(a1 + 824);
        v56 = *(a1 + 816);
      }

      v57 = v58++;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v55 - v56) >> 3) > v57);
    operator delete(0);
  }

  absl::lts_20240722::Mutex::ReaderUnlock((a1 + 256));
  v64 = *(a1 + 272);
  if (*(v64 + 16))
  {
    if (*(*(v64 + 128) + 64) != 2)
    {
      goto LABEL_76;
    }

    InnerObjectiveLowerBound = operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(*(a1 + 296), v63);
    v65 = *(*(a1 + 272) + 128);
    if (!v65)
    {
      v65 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    if (InnerObjectiveLowerBound < *v65[9])
    {
LABEL_76:
      *(a4 + 216) = *(a4 + 208);
    }
  }

  result = operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(InnerObjectiveLowerBound, a2, (a4 + 8));
  *a4 = 1;
  *(a4 + 1) = a3[1] > 1uLL;
  *(a4 + 2) = 1;
  return result;
}

void sub_23CA37E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, char a16, void *a17)
{
  absl::lts_20240722::Mutex::ReaderUnlock((v18 + 256));
  operations_research::sat::Neighborhood::~Neighborhood(v17);
  _Unwind_Resume(a1);
}

operations_research::sat::PartialVariableAssignment *operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(operations_research::sat::NeighborhoodGeneratorHelper *this, const operations_research::sat::CpSolverResponse *a2, operations_research::sat::CpModelProto *a3)
{
  result = *(a3 + 17);
  if (result)
  {
    result = operations_research::sat::PartialVariableAssignment::Clear(result);
  }

  *(a3 + 4) &= ~2u;
  v6 = *(a3 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = (a3 + 24);
    v9 = 8;
    do
    {
      if (*v8)
      {
        v15 = (*v8 + v9 - 1);
      }

      else
      {
        v15 = (a3 + 24);
      }

      v16 = *v15;
      if (*(v16 + 16) != 2 || **(v16 + 24) != *(*(v16 + 24) + 8))
      {
        *(a3 + 4) |= 2u;
        v17 = *(a3 + 17);
        if (!v17)
        {
          v18 = *(a3 + 1);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::PartialVariableAssignment>(v18);
          *(a3 + 17) = v17;
        }

        v19 = (v17 + 2);
        v20 = v17[2];
        v21 = v20;
        if (v20 == HIDWORD(v20))
        {
          v25 = v17;
          google::protobuf::RepeatedField<int>::Grow((v17 + 2), HIDWORD(v20), (HIDWORD(v20) + 1));
          v17 = v25;
          v21 = *v19;
        }

        v22 = v17[3];
        *(v17 + 4) = v21 + 1;
        *(v22 + 4 * v21) = v7;
        *(a3 + 4) |= 2u;
        result = *(a3 + 17);
        if (!result)
        {
          v23 = *(a3 + 1);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::PartialVariableAssignment>(v23);
          *(a3 + 17) = result;
        }

        v10 = *(*(a2 + 4) + 8 * v7);
        v12 = *(result + 10);
        v11 = *(result + 11);
        v13 = (result + 40);
        if (v12 == v11)
        {
          v24 = result;
          google::protobuf::RepeatedField<long long>::Grow(result + 40, v11, (v11 + 1));
          result = v24;
          v12 = *v13;
        }

        v14 = *(result + 6);
        *(result + 10) = v12 + 1;
        *(v14 + 8 * v12) = v10;
        v6 = *(a3 + 8);
      }

      ++v7;
      v9 += 8;
    }

    while (v7 < v6);
  }

  return result;
}

void operations_research::sat::NeighborhoodGeneratorHelper::RelaxGivenVariables(atomic_ullong *a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1[34] + 32);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    do
    {
      v10 = *v8++;
      *((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v10;
    }

    while (v8 != v9);
  }

  v16 = xmmword_23CE306D0;
  absl::lts_20240722::Mutex::ReaderLock(a1 + 32);
  v11 = a1[111];
  v12 = a1[112];
  while (v11 != v12)
  {
    v15 = *v11;
    if (((*((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v15) & 1) == 0)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v16, &v15, v13);
      if (v14 == 1)
      {
        *v13[1] = v15;
      }
    }

    ++v11;
  }

  absl::lts_20240722::Mutex::ReaderUnlock(a1 + 32);
  operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables(a1, a2, &v16, a4);
  if (v16 >= 2)
  {
    operator delete((v17 - (BYTE8(v16) & 1) - 8));
  }
}

void sub_23CA381F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a13 >= 2)
  {
    operator delete((a15 - (a14 & 1) - 8));
    if (!v15)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::ActiveVariables(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  absl::lts_20240722::Mutex::ReaderLock(this + 32);
  if ((this + 888) != a2)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(a2, *(this + 111), *(this + 112), (*(this + 112) - *(this + 111)) >> 2);
  }

  absl::lts_20240722::Mutex::ReaderUnlock(this + 32);
}

void sub_23CA382C0(_Unwind_Exception *a1)
{
  absl::lts_20240722::Mutex::ReaderUnlock((v2 + 256));
  operations_research::sat::NeighborhoodGeneratorHelper::ActiveVariables(v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::NeighborhoodGeneratorHelper::UpdatedModelProtoCopy(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, uint64_t a2@<X8>)
{
  operations_research::sat::CpModelProto::CpModelProto(a2, 0, *(this + 34));
  absl::lts_20240722::Mutex::Lock(this + 120, v4);
  if ((a2 + 24) != (this + 328))
  {
    if (*(a2 + 32) >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((a2 + 24));
    }

    if (*(this + 84))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a2 + 24), (this + 328), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
    }
  }

  absl::lts_20240722::Mutex::Unlock(this + 120);
}

void sub_23CA38378(_Unwind_Exception *a1)
{
  absl::lts_20240722::Mutex::Unlock((v2 + 960));
  operations_research::sat::CpModelProto::~CpModelProto(v1);
  _Unwind_Resume(a1);
}

BOOL operations_research::sat::NeighborhoodGenerator::ReadyToGenerate(operations_research::sat::NeighborhoodGenerator *this, uint64_t a2)
{
  v2 = *(*(this + 4) + 296);
  absl::lts_20240722::Mutex::Lock(v2 + 15, a2);
  v4 = v2[23];
  v3 = v2[24];
  absl::lts_20240722::Mutex::Unlock(v2 + 15);
  return ((v3 - v4) >> 6) > 0;
}

double operations_research::sat::NeighborhoodGenerator::Synchronize(operations_research::sat::NeighborhoodGenerator *this, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock(this + 5, a2);
  v3 = *(this + 6);
  v4 = *(this + 7);
  v5 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 3));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,false>(v3, v4, &v36, v6, 1);
  v7 = *(this + 6);
  v8 = *(this + 7);
  if (v7 == v8)
  {
    v10 = 0;
    v13 = 0.0;
LABEL_29:
    *(this + 10) += 2 * v10;
    v29 = *(this + 15);
    if (v29 <= *(this + 16))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(this + 17);
  v12 = *(this + 12) + 1;
  v13 = 0.0;
  v14 = *(this + 6);
  do
  {
    while (1)
    {
      *(this + 12) = v12;
      if ((*v14 - 3) > 1)
      {
        ++v10;
      }

      else
      {
        ++*(this + 13);
        ++v9;
      }

      v15 = *(v14 + 32);
      v16 = *(v14 + 48);
      v17 = (v15 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v18 = __OFSUB__(v15, v16);
      v19 = v15 - v16;
      if (v18)
      {
        v19 = v17;
      }

      if (v19 >= 1)
      {
        *(this + 120) = xmmword_23CE405F0;
        if (*(v14 + 40) <= *(v14 + 48))
        {
          goto LABEL_15;
        }

LABEL_14:
        ++*(this + 14);
        goto LABEL_15;
      }

      ++*(this + 15);
      if (*(v14 + 40) > *(v14 + 48))
      {
        goto LABEL_14;
      }

LABEL_15:
      v20 = *(v14 + 24);
      v21 = fmax(v19, 0.0) / (v20 + 1.0);
      if (v12 <= 100)
      {
        break;
      }

      v11 = v21 * 0.1 + v11 * 0.9;
      v13 = v13 + v20;
      v14 += 56;
      ++v12;
      if (v14 == v8)
      {
        goto LABEL_20;
      }
    }

    v11 = v11 + (v21 - v11) / v12;
    v13 = v13 + v20;
    v14 += 56;
    ++v12;
  }

  while (v14 != v8);
LABEL_20:
  *(this + 17) = v11;
  v22 = v10 - v9;
  if (v10 == v9)
  {
    goto LABEL_29;
  }

  if (v10 < v9)
  {
    v23 = *(this + 10);
    v24 = *(this + 9);
    v25 = v9 - v10;
    do
    {
      v26 = v23 + 1;
      v27 = 1.0 / sqrt((v23 + 2)) + 1.0;
      v28 = 1.0 - (1.0 - v24) / v27;
      v24 = v24 * v27;
      if (v24 >= v28)
      {
        v24 = v28;
      }

      ++v23;
      --v25;
    }

    while (v25);
    *(this + 9) = v24;
    *(this + 10) = v26 + 2 * v10;
    v29 = *(this + 15);
    if (v29 <= *(this + 16))
    {
      goto LABEL_31;
    }

LABEL_30:
    *(this + 16) = v29 + 50;
    *(this + 11) = fmin(*(this + 11) * 1.02, 60.0);
    goto LABEL_31;
  }

  v31 = *(this + 10);
  if (v9 < v10)
  {
    v32 = *(this + 9);
    do
    {
      v33 = v31 + 2;
      ++v31;
      v34 = 1.0 / sqrt(v33) + 1.0;
      v35 = v32 / v34;
      v32 = 1.0 - (1.0 - v32) * v34;
      if (v35 >= v32)
      {
        v32 = v35;
      }

      --v22;
    }

    while (v22);
    *(this + 9) = v32;
  }

  *(this + 10) = v31 + 2 * v9;
  v29 = *(this + 15);
  if (v29 > *(this + 16))
  {
    goto LABEL_30;
  }

LABEL_31:
  *(this + 7) = v7;
  absl::lts_20240722::Mutex::Unlock(this + 5);
  return v13;
}

void operations_research::sat::RelaxRandomVariablesGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::ActiveVariables(*(a1 + 32), &__p);
  v14 = *a3;
  v15 = *(a3 + 2);
  begin = __p.__begin_;
  end = __p.__end_;
  if ((__p.__end_ - __p.__begin_) == 28)
  {
    v12 = 8;
  }

  else
  {
    v12 = (__p.__end_ - __p.__begin_ - 1) / 7 + __p.__end_ - __p.__begin_;
  }

  v13 = *(a1 + 32);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(&v14, v12);
  while (begin != end)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v14, begin, v17);
    if (v19 == 1)
    {
      *v18 = *begin;
    }

    ++begin;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables(v13, a2, &v14, a4);
  if (v14 >= 2)
  {
    operator delete((v15 - (BYTE8(v14) & 1) - 8));
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_23CA38854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (a11 >= 2)
  {
    operations_research::sat::PropagateAutomaton(&a11);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::GetRandomSubset<int>(std::vector<int> *this, void *a2, double a3)
{
  end = this->__end_;
  begin = this->__begin_;
  if (this->__begin_ == end)
  {
    return;
  }

  v7 = end - begin;
  if (v7 < 2)
  {
    goto LABEL_22;
  }

  v8 = end - 1;
  if (end - 1 <= begin)
  {
    goto LABEL_22;
  }

  do
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }

    if (!v7)
    {
      v15 = (a2[2])(*a2);
      if (!v15)
      {
        goto LABEL_5;
      }

LABEL_20:
      v16 = *begin;
      *begin = begin[v15];
      begin[v15] = v16;
      goto LABEL_5;
    }

    v10 = __clz(v7);
    if (((v7 << v10) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 64;
    }

    else
    {
      v11 = 63;
    }

    v12 = v11 - v10;
    v13 = v12 >> 6;
    if ((v12 & 0x3F) != 0)
    {
      ++v13;
    }

    if (v13 <= v12)
    {
      v14 = 0xFFFFFFFFFFFFFFFFLL >> -(v12 / v13);
    }

    else
    {
      v14 = 0;
    }

    do
    {
      v15 = (a2[2])(*a2) & v14;
    }

    while (v15 >= v7);
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_5:
    ++begin;
    --v7;
  }

  while (begin < v8);
  begin = this->__begin_;
  v7 = this->__end_ - this->__begin_;
LABEL_22:
  v17 = llround(v7 * a3);
  if (v17 <= v7)
  {
    if (v17 < v7)
    {
      this->__end_ = &begin[v17];
    }
  }

  else
  {

    std::vector<int>::__append(this, v17 - v7);
  }
}

void operations_research::sat::RelaxRandomConstraintsGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *(a1 + 32);
  absl::lts_20240722::Mutex::ReaderLock(v8 + 32);
  v9 = v8[112];
  v10 = v8[111];
  absl::lts_20240722::Mutex::ReaderUnlock(v8 + 32);
  if ((v9 - v10) >> 2 == vcvtpd_s64_f64(((v9 - v10) >> 2) * a5))
  {
    v11 = *(a1 + 32);

    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v11, a4);
    return;
  }

  memset(v28, 0, sizeof(v28));
  v12 = *(a1 + 32);
  absl::lts_20240722::Mutex::ReaderLock((v12 + 256));
  v13 = *(*(a1 + 32) + 680) - *(*(a1 + 32) + 672);
  if (v13 << 30)
  {
    if (((v13 << 30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if ((v13 >> 2) >= 1)
  {
    v14 = (v13 >> 2) & 0x7FFFFFFF;
    if (v14 > 7)
    {
      v16 = (v13 >> 2) & 7;
      v15 = v14 - v16;
      v17 = xmmword_23CE38660;
      v18 = 16;
      v19.i64[0] = 0x400000004;
      v19.i64[1] = 0x400000004;
      v20.i64[0] = 0x800000008;
      v20.i64[1] = 0x800000008;
      v21 = v14 - v16;
      do
      {
        *(v18 - 16) = v17;
        *v18 = vaddq_s32(v17, v19);
        v17 = vaddq_s32(v17, v20);
        v18 += 32;
        v21 -= 8;
      }

      while (v21);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    do
    {
      *(4 * v15) = v15;
      ++v15;
    }

    while (v14 != v15);
  }

LABEL_15:
  v22 = *(a1 + 32);
  v23 = *(v22[34] + 32);
  if (v23)
  {
    if ((v23 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v24 = (v22[112] - v22[111]) >> 2;
  v26 = vcvtpd_s64_f64(v24 * a5);
  v25 = v24;
  if (v26 == v24)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v22, a4);
  }

  absl::lts_20240722::Mutex::ReaderUnlock((v12 + 256));
  if (v26 != v25)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::RelaxGivenVariables(*(a1 + 32), a2, v28, a4);
  }
}

void sub_23CA38F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::VariableGraphNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *(*(*(a1 + 32) + 272) + 32);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(v48, 0, sizeof(v48));
  v9 = *(a1 + 32);
  v10 = *(*(v9 + 272) + 56);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  absl::lts_20240722::Mutex::ReaderLock((v9 + 256));
  v11 = *(a1 + 32);
  v12 = *(v11 + 896);
  v13 = *(v11 + 888);
  __p = 0;
  v43 = 0;
  v44 = 0;
  if ((v11 + 912) == &__p)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&__p, *(v11 + 912), *(v11 + 920), (*(v11 + 920) - *(v11 + 912)) >> 2);
    v14 = (v43 - __p) >> 2;
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }
  }

  v15 = (v12 - v13) >> 2;
  v40 = vcvtpd_s64_f64(v15 * a5);
  if (v40 != v15)
  {
    if (v14 >= 1)
    {
      v16 = *(a1 + 32);
      v43 = 0;
      v44 = 0;
      __p = 0;
      if ((v16 + 912) != &__p)
      {
        std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&__p, *(v16 + 912), *(v16 + 920), (*(v16 + 920) - *(v16 + 912)) >> 2);
      }

      v49 = 0;
      v50 = v14;
      v17 = a3[1];
      if (v17 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        v22 = 0;
        v23 = v14;
      }

      else
      {
        if ((v17)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v49 + 4, &v49))
        {
          v18 = v49;
LABEL_30:
          v29 = *(__p + v18);
          if (__p)
          {
            v43 = __p;
            operator delete(__p);
          }

LABEL_42:
          *((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v29;
          operator new();
        }

        v22 = HIDWORD(v49);
        v23 = v50;
      }

      v24 = (a3[2])(*a3);
      v25 = v23 - v22 - (v23 != 0x80000000);
      v26 = v25 + 1;
      if (((v25 + 1) & v25) != 0)
      {
        v27 = v24 * v26;
        if (v26 > v27)
        {
            ;
          }
        }

        v28 = HIDWORD(v27);
      }

      else
      {
        LODWORD(v28) = v24 & v25;
      }

      v18 = v22 + v28;
      goto LABEL_30;
    }

    v19 = *(a1 + 32);
    if ((v15 - (v15 != 0x80000000)) < 0)
    {
      v29 = **(v19 + 888);
      goto LABEL_42;
    }

    LODWORD(__p) = 0;
    HIDWORD(__p) = v15;
    HIDWORD(v49) = 0;
    v20 = a3[1];
    if (v20 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v30 = 0;
      v31 = v15;
    }

    else
    {
      if ((v20)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &__p, &v49 + 4))
      {
        v21 = HIDWORD(v49);
LABEL_39:
        v29 = *(*(v19 + 888) + 4 * v21);
        goto LABEL_42;
      }

      v30 = __p;
      v31 = HIDWORD(__p);
    }

    v32 = (a3[2])(*a3);
    v33 = v31 - v30 - (v31 != 0x80000000);
    v34 = v33 + 1;
    if (((v33 + 1) & v33) != 0)
    {
      v35 = v32 * v34;
      if (v34 > v35)
      {
          ;
        }
      }

      v36 = HIDWORD(v35);
    }

    else
    {
      LODWORD(v36) = v32 & v33;
    }

    v21 = v30 + v36;
    goto LABEL_39;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(*(a1 + 32), a4);
  absl::lts_20240722::Mutex::ReaderUnlock((v9 + 256));
  if (v40 != v15)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::RelaxGivenVariables(*(a1 + 32), a2, v48, a4);
  }

  if (v45)
  {
    operator delete(v45);
  }

  if (v48[0])
  {
    operator delete(v48[0]);
  }
}

void sub_23CA39AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  if (v26 >= 1 && __p)
  {
    operator delete(__p);
  }

  absl::lts_20240722::Mutex::ReaderUnlock((v27 + 256));
  if (a26)
  {
    operator delete(a26);
  }

  v30 = *(v28 - 144);
  if (v30)
  {
    operator delete(v30);
    if (!a22)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!a22)
  {
    goto LABEL_8;
  }

  operator delete(a22);
  _Unwind_Resume(a1);
}

void operations_research::sat::ArcGraphNeighborhoodGenerator::Generate(uint64_t a1@<X0>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = *(a1 + 32);
  v7 = *(*(v6 + 272) + 32);
  if (!v7)
  {
    *a4 = 0;
    *(a4 + 2) = 0;
    operations_research::sat::CpModelProto::CpModelProto(a4 + 8, 0);
    *(a4 + 168) = 0;
    *(a4 + 176) = 0;
    *(a4 + 199) = 0u;
    *(a4 + 215) = 0u;
    *(a4 + 231) = 0;
    *a4 = 0;
    return;
  }

  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  *v31 = 0u;
  *v28 = 0u;
  *v29 = 0u;
  absl::lts_20240722::Mutex::ReaderLock((v6 + 256));
  v10 = *(a1 + 32);
  v11 = *(v10 + 896);
  v12 = *(v10 + 888);
  __p = 0;
  v26 = 0;
  v27 = 0;
  if ((v10 + 912) != &__p)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&__p, *(v10 + 912), *(v10 + 920), (*(v10 + 920) - *(v10 + 912)) >> 2);
    v13 = v26;
    v22 = __p;
    v10 = *(a1 + 32);
    if (v28 == (v10 + 672))
    {
      goto LABEL_4;
    }

LABEL_8:
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v28, *(v10 + 672), *(v10 + 680), (*(v10 + 680) - *(v10 + 672)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v29[1], *(v10 + 696), *(v10 + 704), (*(v10 + 704) - *(v10 + 696)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v31, *(v10 + 720), *(v10 + 728), (*(v10 + 728) - *(v10 + 720)) >> 2);
    v10 = *(a1 + 32);
    if (&v33 == (v10 + 744))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = 0;
  v22 = 0;
  if (v28 != (v10 + 672))
  {
    goto LABEL_8;
  }

LABEL_4:
  if (&v33 != (v10 + 744))
  {
LABEL_9:
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v33, *(v10 + 744), *(v10 + 752), (*(v10 + 752) - *(v10 + 744)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v34 + 1, *(v10 + 768), *(v10 + 776), (*(v10 + 776) - *(v10 + 768)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v36, *(v10 + 792), *(v10 + 800), (*(v10 + 800) - *(v10 + 792)) >> 2);
  }

LABEL_10:
  absl::lts_20240722::Mutex::ReaderUnlock((v6 + 256));
  if (vcvtpd_s64_f64(((v11 - v12) >> 2) * a5))
  {
    v14 = (v13 - v22) >> 2;
    if (v14)
    {
      if ((v14 - (v14 != 0x80000000)) >= 0)
      {
        LODWORD(__p) = 0;
        HIDWORD(__p) = (v13 - v22) >> 2;
        LODWORD(v24) = 0;
        v15 = a3[1];
        if (v15 == absl::lts_20240722::BitGenRef::NotAMock)
        {
          v16 = 0;
        }

        else
        {
          if ((v15)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &__p, &v24))
          {
            goto LABEL_22;
          }

          v16 = __p;
          LODWORD(v14) = HIDWORD(__p);
        }

        v17 = (a3[2])(*a3);
        v18 = v14 - v16 - (v14 != 0x80000000);
        v19 = v18 + 1;
        if (((v18 + 1) & v18) != 0 && v19 > v17 * v19)
        {
          v20 = ~v18 % v19;
          if (v20 > v17 * v19)
          {
              ;
            }
          }
        }
      }

LABEL_22:
      __p = 0;
      v26 = 0;
      v27 = 0;
      if ((v7 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  *a4 = 0;
  *(a4 + 2) = 0;
  operations_research::sat::CpModelProto::CpModelProto(a4 + 8, 0);
  *(a4 + 168) = 0;
  *(a4 + 176) = 0;
  *(a4 + 199) = 0u;
  *(a4 + 215) = 0u;
  *(a4 + 231) = 0;
  *a4 = 0;
  if (v22)
  {
    operator delete(v22);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  if (v29[1])
  {
    *&v30 = v29[1];
    operator delete(v29[1]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v36)
  {
    *(&v36 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v34 + 1))
  {
    *&v35 = *(&v34 + 1);
    operator delete(*(&v34 + 1));
  }

  if (v33)
  {
    *(&v33 + 1) = v33;
    operator delete(v33);
  }
}

void sub_23CA3A730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(va);
  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(v28 - 192);
  _Unwind_Resume(a1);
}

void operations_research::sat::ConstraintGraphNeighborhoodGenerator::Generate(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 32);
  v7 = v6[34];
  v8 = *(v7 + 56);
  if (v8)
  {
    v9 = *(v7 + 32);
    if (v9)
    {
      if ((v9 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v6, a4);
}

void sub_23CA3B080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  absl::lts_20240722::Mutex::ReaderUnlock((a13 + 256));
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
    v29 = a27;
    if (!a27)
    {
LABEL_5:
      if (!v27)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v29 = a27;
    if (!a27)
    {
      goto LABEL_5;
    }
  }

  operator delete(v29);
  if (!v27)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v27);
  _Unwind_Resume(a1);
}

void operations_research::sat::DecompositionGraphNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a4@<X8>, double a5@<D0>)
{
  memset(v17, 0, sizeof(v17));
  v16 = *(a1 + 32);
  absl::lts_20240722::Mutex::ReaderLock((v16 + 256));
  v7 = *(a1 + 32);
  v8 = (v7[112] - v7[111]) >> 2;
  if (vcvtpd_s64_f64(v8 * a5) == v8)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v7, a4);
    absl::lts_20240722::Mutex::ReaderUnlock((v16 + 256));
  }

  else
  {
    v9 = (v7[94] - v7[93]) >> 2;
    v10 = (v7[85] - v7[84]) >> 2;
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    v13 = v12;
    if (!v11)
    {
      if (v10 + v9)
      {
        if (((v10 + v9) & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      operator new();
    }

    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v7, a4);
    absl::lts_20240722::Mutex::ReaderUnlock((v16 + 256));
    if (v13)
    {
      operations_research::sat::NeighborhoodGeneratorHelper::RelaxGivenVariables(*(a1 + 32), a2, v17, a4);
    }
  }

  if (v17[0])
  {
    operator delete(v17[0]);
  }
}

void sub_23CA3C6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(&a27);
  if (a24)
  {
    operator delete(a24);
    v36 = a34;
    if (!a34)
    {
LABEL_5:
      v37 = *(v34 - 192);
      if (!v37)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v36 = a34;
    if (!a34)
    {
      goto LABEL_5;
    }
  }

  operator delete(v36);
  v37 = *(v34 - 192);
  if (!v37)
  {
LABEL_7:
    absl::lts_20240722::Mutex::ReaderUnlock((a13 + 256));
    v38 = *(v34 - 168);
    if (v38)
    {
      operator delete(v38);
    }

    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(v37);
  goto LABEL_7;
}

void operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::ActiveVariables(*(a1 + 32), &v111);
  v7 = v111;
  v94 = v112;
  if (v111 == v112)
  {
    goto LABEL_28;
  }

  v8 = 0;
  v91 = 0;
  v9 = 0;
  do
  {
    v10 = *v7;
    v11 = *(*(a1 + 32) + 272);
    v13 = *(v11 + 24);
    v12 = (v11 + 24);
    v14 = v13 + 8 * *v7 + 7;
    if (v13)
    {
      v12 = v14;
    }

    v15 = *v12;
    if (*(v15 + 16) == 2 && (v16 = *(v15 + 24), !*v16) && v16[1] == 1)
    {
      v89 = v9;
      v19 = v8 >> 2;
      if (((v8 >> 2) + 1) >> 62)
      {
LABEL_109:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v8 >> 2 != -1)
      {
        if (!(((v8 >> 2) + 1) >> 62))
        {
          operator new();
        }

LABEL_111:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v19) = v10;
      memcpy(0, 0, v8);
      v8 = 4 * v19 + 4;
      v20 = *(*(a2 + 4) + 8 * v10);
      v21 = v91;
      v22 = v91 >> 3;
      if (((v91 >> 3) + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v91 >> 3 != -1)
      {
        if (!(((v91 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v22) = v20;
      v91 = 8 * v22 + 8;
      memcpy(0, 0, v21);
      v9 = v89;
    }

    else
    {
      v17 = v9;
      v18 = v9 >> 2;
      if (((v9 >> 2) + 1) >> 62)
      {
        goto LABEL_109;
      }

      if (v9 >> 2 != -1)
      {
        if (!(((v9 >> 2) + 1) >> 62))
        {
          operator new();
        }

        goto LABEL_111;
      }

      *(4 * v18) = v10;
      v9 = 4 * v18 + 4;
      memcpy(0, 0, v17);
    }

    ++v7;
  }

  while (v7 != v94);
  if (!v8)
  {
LABEL_28:
    *a4 = 0;
    *(a4 + 2) = 0;
    operations_research::sat::CpModelProto::CpModelProto(a4 + 8, 0);
    *(a4 + 168) = 0;
    *(a4 + 176) = 0;
    *(a4 + 199) = 0u;
    *(a4 + 215) = 0u;
    *(a4 + 231) = 0;
    *a4 = 0;
    goto LABEL_29;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::UpdatedModelProtoCopy(*(a1 + 32), v109);
  operations_research::sat::ConstraintProto::ConstraintProto(v101, 0);
  v23 = v101[1];
  if (v101[1])
  {
    v23 = *(v101[1] & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(&v104, "local_branching", 0xFuLL, v23);
  if (HIDWORD(v106) == 12)
  {
    v24 = v8;
    v25 = v105;
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v101);
    HIDWORD(v106) = 12;
    v26 = v101[1];
    if (v101[1])
    {
      v26 = *(v101[1] & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v26);
    v24 = v8;
    v105 = v25;
  }

  v27 = 0;
  v28 = 0;
  v29 = v24 >> 2;
  v92 = vcvtpd_s64_f64((v24 >> 2) * a5);
  v30 = 1;
  do
  {
    while (1)
    {
      v32 = *(v25 + 10);
      v31 = *(v25 + 11);
      if (!*(8 * v27))
      {
        break;
      }

      if (v32 == v31)
      {
        google::protobuf::RepeatedField<long long>::Grow((v25 + 5), v31, (v31 + 1));
        v32 = *(v25 + 10);
      }

      v33 = v25[6];
      *(v25 + 10) = v32 + 1;
      *(v33 + 8 * v32) = -1;
      v34 = *(4 * v27);
      v35 = v25[2];
      v36 = v35;
      if (v35 == HIDWORD(v35))
      {
        google::protobuf::RepeatedField<int>::Grow((v25 + 2), HIDWORD(v35), (HIDWORD(v35) + 1));
        v36 = *(v25 + 4);
      }

      v37 = v25[3];
      *(v25 + 4) = v36 + 1;
      *(v37 + 4 * v36) = v34;
      ++v28;
      v27 = v30++;
      if (v29 <= v27)
      {
        goto LABEL_48;
      }
    }

    if (v32 == v31)
    {
      google::protobuf::RepeatedField<long long>::Grow((v25 + 5), v31, (v31 + 1));
      v32 = *(v25 + 10);
    }

    v38 = v25[6];
    *(v25 + 10) = v32 + 1;
    *(v38 + 8 * v32) = 1;
    v39 = *(4 * v27);
    v40 = v25[2];
    v41 = v40;
    if (v40 == HIDWORD(v40))
    {
      google::protobuf::RepeatedField<int>::Grow((v25 + 2), HIDWORD(v40), (HIDWORD(v40) + 1));
      v41 = *(v25 + 4);
    }

    v42 = v25[3];
    *(v25 + 4) = v41 + 1;
    *(v42 + 4 * v41) = v39;
    v27 = v30++;
  }

  while (v29 > v27);
LABEL_48:
  v44 = *(v25 + 16);
  v43 = *(v25 + 17);
  if (v44 == v43)
  {
    google::protobuf::RepeatedField<long long>::Grow((v25 + 8), v43, (v43 + 1));
    v44 = *(v25 + 16);
    v43 = *(v25 + 17);
  }

  v45 = v25[9];
  v46 = v44 + 1;
  *(v25 + 16) = v44 + 1;
  *(v45 + 8 * v44) = -v28;
  if (v44 + 1 == v43)
  {
    google::protobuf::RepeatedField<long long>::Grow((v25 + 8), v43, (v43 + 1));
    v46 = *(v25 + 16);
    v45 = v25[9];
  }

  *(v25 + 16) = v46 + 1;
  *(v45 + 8 * v46) = (v92 - v28);
  v47 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v110, google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  if (v47 != v101)
  {
    v48 = *(v47 + 1);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      v49 = v101[1];
      if ((v101[1] & 1) == 0)
      {
LABEL_55:
        if (v48 != v49)
        {
LABEL_56:
          operations_research::sat::ConstraintProto::CopyFrom(v47, v101);
          goto LABEL_60;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v49 = v101[1];
      if ((v101[1] & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    if (v48 != *(v49 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_56;
    }

LABEL_59:
    operations_research::sat::ConstraintProto::InternalSwap(v47, v101);
  }

LABEL_60:
  operations_research::sat::ConstraintProto::~ConstraintProto(v101);
  strcpy(v101, "lb_relax_lns_lp");
  v102 = 15;
  v103 = xmmword_23CE306D0;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v50 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v101);
  *(v50 + 83) = 1;
  *(v50 + 143) = 2;
  *(v50 + 294) = 1;
  *(v50 + 726) = 0;
  *(v50 + 570) = 0;
  *(v50 + 147) = 0;
  *(v50 + 207) = 100000;
  *(v50 + 36) = vorr_s8(*(v50 + 36), 0x800000000800);
  v50[67] = 0x4024000000000000;
  *(v50 + 20) = vorrq_s8(*(v50 + 20), xmmword_23CE40600);
  v51 = *(a1 + 176);
  if (v51)
  {
    v52 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(v101);
    absl::lts_20240722::Mutex::Lock(v51, v53);
    operations_research::TimeLimit::MergeWithGlobalTimeLimit(v52, *(v51 + 8));
    absl::lts_20240722::Mutex::Unlock(v51);
  }

  operations_research::sat::CpModelProto::CpModelProto(v100, 0, v109);
  __p = v101;
  v54 = *(a1 + 168);
  if (!v54)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v54 + 48))(v54, v100, &__p);
  operations_research::sat::CpModelProto::~CpModelProto(v100);
  v55 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(v101);
  v56 = *v55;
  v57 = *(v55 + 1);
  if (*v55 == v57)
  {
LABEL_66:
    v58 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v101);
    v59 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(v101);
    v60 = 0;
    v61 = 0;
    __p = 0;
    v98 = 0;
    v99 = 0;
    v93 = v58;
    while (1)
    {
      v62 = *(4 * v60);
      if (~v62 <= v62)
      {
        v63 = *(4 * v60);
      }

      else
      {
        v63 = ~v62;
      }

      v64 = (*(*v58 + 4 * v63) ^ (v62 >> 31));
      if (v64 >= (v59[1] - *v59) >> 3)
      {
        std::vector<double>::__throw_out_of_range[abi:ne200100]();
      }

      v65 = *(*v59 + 8 * v64);
      v66 = *(8 * v60);
      *&v96.__begin_ = xmmword_23CE40610;
      v113[0] = 0.0;
      v67 = a3[1];
      if (v67 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        break;
      }

      if (!(v67)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, &v96, v113))
      {
        v69 = *&v96.__begin_;
        v71 = *&v96.__end_;
        v70 = *&v96.__end_ - *&v96.__begin_;
LABEL_77:
        v72 = (*&v70 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v73 = ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (v70 >= 0.0)
        {
          v73 = 0;
          v72 = 0;
        }

        if ((*&v70 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v72 = 1;
        }

        v74 = (*&v70 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v72;
        if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
        {
          v74 = 1;
        }

        if ((v74 | v73))
        {
          v75 = (a3[2])(*a3);
          v76 = __clz(v75);
          *&v77 = ((v75 << v76 >> 11) & 0xFFFFFFFFFFFFFLL) - (v76 << 52) + 0x3FE0000000000000;
          if (!v75)
          {
            v77 = 0.0;
          }

          v68 = v69 + v77 * v70;
        }

        else
        {
          do
          {
            while (1)
            {
              v78 = (a3[2])(*a3);
              if (v78)
              {
                break;
              }

              v68 = v69 + 0.0 * v70;
              if (v68 < v71)
              {
                goto LABEL_93;
              }
            }

            v79 = __clz(v78);
            v68 = v69 + COERCE_DOUBLE(((v78 << v79 >> 11) & 0xFFFFFFFFFFFFFLL) - (v79 << 52) + 0x3FE0000000000000) * v70;
          }

          while (v68 >= v71);
        }

        goto LABEL_93;
      }

      v68 = v113[0];
LABEL_93:
      v80 = vabdd_f64(v65, v66) + v68;
      v81 = v98;
      if (v98 < v99)
      {
        *v98 = v80;
        v98 = v81 + 1;
        v60 = ++v61;
        if (v29 <= v61)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v82 = __p;
        v83 = v98 - __p;
        v84 = (v98 - __p) >> 3;
        v85 = v84 + 1;
        if ((v84 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v86 = v99 - __p;
        if ((v99 - __p) >> 2 > v85)
        {
          v85 = v86 >> 2;
        }

        if (v86 >= 0x7FFFFFFFFFFFFFF8)
        {
          v87 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v85;
        }

        if (v87)
        {
          if (!(v87 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v84) = v80;
        memcpy(0, v82, v83);
        __p = 0;
        v98 = (8 * v84 + 8);
        v99 = 0;
        if (v82)
        {
          operator delete(v82);
        }

        v58 = v93;
        v98 = (8 * v84 + 8);
        v60 = ++v61;
        if (v29 <= v61)
        {
LABEL_106:
          memset(&v96, 0, sizeof(v96));
          if (!(v29 >> 62))
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }
      }
    }

    v69 = 0.0;
    v70 = 0.000001;
    v71 = 0.000001;
    goto LABEL_77;
  }

  while ((*(*v56 + 24260) & 1) != 0)
  {
    v56 += 8;
    if (v56 == v57)
    {
      goto LABEL_66;
    }
  }

  *a4 = 0;
  *(a4 + 2) = 0;
  operations_research::sat::CpModelProto::CpModelProto(a4 + 8, 0);
  *(a4 + 168) = 0;
  *(a4 + 176) = 0;
  *(a4 + 199) = 0u;
  *(a4 + 215) = 0u;
  *(a4 + 231) = 0;
  *a4 = 0;
  operations_research::sat::Model::~Model(v101);
  operations_research::sat::CpModelProto::~CpModelProto(v109);
LABEL_29:
  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }
}

void sub_23CA3D57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  operations_research::sat::ConstraintProto::~ConstraintProto(&a49);
  operations_research::sat::CpModelProto::~CpModelProto(va);
  if (a21)
  {
    operator delete(a21);
    if (!__p)
    {
LABEL_3:
      if (!a22)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if (!a22)
  {
LABEL_4:
    v60 = *(v58 - 192);
    if (!v60)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a22);
  v60 = *(v58 - 192);
  if (!v60)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v58 - 184) = v60;
  operator delete(v60);
  _Unwind_Resume(a1);
}

operations_research::sat::LinearProgrammingConstraintCollection *operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void *operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::GenerateSchedulingNeighborhoodFromIntervalPrecedences(atomic_ullong *this@<X3>, int *a2@<X0>, uint64_t a3@<X1>, const operations_research::sat::CpSolverResponse *a4@<X2>, _BYTE *a5@<X8>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(this, a5);
  a5[1] = a3 != 0;
  if (a3)
  {
    v74 = a4;
    v78 = xmmword_23CE306D0;
    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = a2 + 1;
      v13 = 8 * a3;
      do
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v78, v12 - 1, &v75);
        if (v77 == 1)
        {
          *v76 = *(v12 - 1);
        }

        v10 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v78, v12, &v75);
        if (v77 == 1)
        {
          *v76 = *v12;
        }

        v12 += 2;
        v13 -= 8;
      }

      while (v13);
    }

    v72 = a3 & 0x1FFFFFFFFFFFFFFFLL;
    v71 = a3;
    v14 = this[58];
    v15 = v74;
    if (0xAAAAAAAAAAAAAAABLL * ((this[59] - v14) >> 3) >= 0x14)
    {
      v16 = *(v14 + 456);
      v17 = *(v14 + 464);
      if (v17 != v16)
      {
        v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
        v73 = a5 + 32;
        do
        {
          v23 = *v16;
          v24 = v23;
          if (v78 > 1)
          {
            v21 = 0;
            _X11 = v79;
            __asm { PRFM            #4, [X11] }

            v55 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23));
            v22 = (v55 >> 7) ^ (v79 >> 12);
            v56 = vdup_n_s8(v55 & 0x7F);
            while (1)
            {
              v18 = v22 & v78;
              v19 = *(v79 + v18);
              v20 = vceq_s8(v19, v56);
              if (v20)
              {
                break;
              }

LABEL_15:
              if (vceq_s8(v19, 0x8080808080808080))
              {
                goto LABEL_22;
              }

              v21 += 8;
              v22 = v21 + v18;
            }

            while (*(v80 + 4 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v78)) != v24)
            {
              v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v20)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
            _ZF = *(&v78 + 1) >= 2uLL && v79 == v23;
            if (!_ZF)
            {
LABEL_22:
              v26 = this[34];
              v28 = *(v26 + 48);
              v27 = (v26 + 48);
              v29 = (v28 + 8 * v24 + 7);
              if ((v28 & 1) == 0)
              {
                v29 = v27;
              }

              v30 = *v29;
              if (*(v30 + 16))
              {
                v31 = **(v30 + 24);
                v32 = ~v31 <= v31 ? **(v30 + 24) : ~v31;
                v33 = *(*(v15 + 4) + 8 * v32);
                if (v31 >= 0 == (v33 != 0))
                {
                  v34 = v32;
                  v35 = *v73 - 1;
                  v36 = *v73 & 1;
                  v37 = (v35 + 8 * v34 + 8);
                  if (!v36)
                  {
                    v37 = (a5 + 32);
                  }

                  v38 = *v37;
                  v39 = *v37;
                  *(v39 + 16) = 0;
                  v40 = (v39 + 16);
                  if (*(v38 + 20))
                  {
                    v41 = 0;
                  }

                  else
                  {
                    google::protobuf::RepeatedField<long long>::Grow(v40, 0, 1);
                    v41 = *v40;
                    v36 = *v73 & 1;
                    v35 = *v73 - 1;
                  }

                  v42 = *(v38 + 24);
                  *(v38 + 16) = v41 + 1;
                  *(v42 + 8 * v41) = v33;
                  v43 = v35 + 8 * v34 + 8;
                  _ZF = v36 == 0;
                  v44 = a5 + 32;
                  if (!_ZF)
                  {
                    v44 = v43;
                  }

                  v45 = *v44;
                  v47 = (*v44 + 16);
                  v46 = *v47;
                  v48 = *(v45 + 20);
                  if (*v47 == v48)
                  {
                    google::protobuf::RepeatedField<long long>::Grow(v47, v48, (v48 + 1));
                    v46 = *v47;
                  }

                  v49 = *(v45 + 24);
                  *(v45 + 16) = v46 + 1;
                  *(v49 + 8 * v46) = v33;
                  v15 = v74;
                  v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
                }
              }
            }
          }

          ++v16;
        }

        while (v16 != v17);
      }
    }

    if (v72)
    {
      v57 = &a2[2 * v71];
      do
      {
        v58 = this[34];
        v61 = *(v58 + 48);
        v59 = (v58 + 48);
        v60 = v61;
        v62 = v61 + 7;
        v63 = (v61 + 7 + 8 * *a2);
        if ((v61 & 1) == 0)
        {
          v63 = v59;
        }

        v64 = *v63;
        v65 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (*(v64 + 60) == 19)
        {
          v65 = *(v64 + 48);
        }

        if (v65[4])
        {
          v66 = v65[4];
        }

        else
        {
          v66 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v67 = (v62 + 8 * a2[1]);
        if (v60)
        {
          v59 = v67;
        }

        v68 = *v59;
        v69 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (*(v68 + 60) == 19)
        {
          v69 = *(v68 + 48);
        }

        if (v69[3])
        {
          v70 = v69[3];
        }

        else
        {
          v70 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        a2 += 2;
      }

      while (a2 != v57);
    }

    operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(v10, v74, (a5 + 8));
    *a5 = 1;
    if (v78 >= 2)
    {
      operator delete((v79 - (BYTE8(v78) & 1) - 8));
    }
  }

  else
  {
    operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(v10, a4, (a5 + 8));
    *a5 = 1;
  }
}

void sub_23CA3E0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a17 >= 2)
  {
    operator delete((a19 - (a18 & 1) - 8));
  }

  operations_research::sat::Neighborhood::~Neighborhood(v19);
  _Unwind_Resume(a1);
}

void *operations_research::sat::anonymous namespace::AddPrecedence(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::LinearExpressionProto *a2, const operations_research::sat::LinearExpressionProto *a3, operations_research::sat::CpModelProto *a4)
{
  v6 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v7 = v6;
  if (*(v6 + 60) == 12)
  {
    result = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v7 + 60) = 12;
    v9 = *(v7 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v9);
    *(v7 + 48) = result;
  }

  v11 = *(result + 16);
  v10 = *(result + 17);
  v12 = result + 8;
  if (v11 == v10)
  {
    v26 = result;
    google::protobuf::RepeatedField<long long>::Grow((result + 8), v10, (v10 + 1));
    result = v26;
    v11 = *(v26 + 16);
    v10 = *(v26 + 17);
  }

  v13 = result[9];
  *(result + 16) = v11 + 1;
  *(v13 + 8 * v11) = 0x8000000000000000;
  v14 = *(a2 + 8) - *(this + 8);
  if (v11 + 1 == v10)
  {
    v27 = result;
    google::protobuf::RepeatedField<long long>::Grow(v12, v10, (v10 + 1));
    result = v27;
    v28 = *(v27 + 16);
    v29 = v27[9];
    *v12 = v28 + 1;
    *(v29 + 8 * v28) = v14;
    if (*(this + 4) < 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v12 = v11 + 2;
    *(v13 + 8 * (v11 + 1)) = v14;
    if (*(this + 4) < 1)
    {
      goto LABEL_18;
    }
  }

  v15 = 0;
  do
  {
    v16 = *(*(this + 3) + 4 * v15);
    v17 = result[2];
    v18 = v17;
    if (v17 == HIDWORD(v17))
    {
      v24 = result;
      google::protobuf::RepeatedField<int>::Grow((result + 2), HIDWORD(v17), (HIDWORD(v17) + 1));
      result = v24;
      v18 = *(v24 + 4);
    }

    v19 = result[3];
    *(result + 4) = v18 + 1;
    *(v19 + 4 * v18) = v16;
    v20 = *(*(this + 6) + 8 * v15);
    v22 = *(result + 10);
    v21 = *(result + 11);
    if (v22 == v21)
    {
      v25 = result;
      google::protobuf::RepeatedField<long long>::Grow((result + 5), v21, (v21 + 1));
      result = v25;
      v22 = *(v25 + 10);
    }

    v23 = result[6];
    *(result + 10) = v22 + 1;
    *(v23 + 8 * v22) = v20;
    ++v15;
  }

  while (v15 < *(this + 4));
LABEL_18:
  if (*(a2 + 4) >= 1)
  {
    v30 = 0;
    do
    {
      v31 = *(*(a2 + 3) + 4 * v30);
      v32 = result[2];
      v33 = v32;
      if (v32 == HIDWORD(v32))
      {
        v39 = result;
        google::protobuf::RepeatedField<int>::Grow((result + 2), HIDWORD(v32), (HIDWORD(v32) + 1));
        result = v39;
        v33 = *(v39 + 4);
      }

      v34 = result[3];
      *(result + 4) = v33 + 1;
      *(v34 + 4 * v33) = v31;
      v35 = *(*(a2 + 6) + 8 * v30);
      v37 = *(result + 10);
      v36 = *(result + 11);
      if (v37 == v36)
      {
        v40 = result;
        google::protobuf::RepeatedField<long long>::Grow((result + 5), v36, (v36 + 1));
        result = v40;
        v37 = *(v40 + 10);
      }

      v38 = result[6];
      *(result + 10) = v37 + 1;
      *(v38 + 8 * v37) = -v35;
      ++v30;
    }

    while (v30 < *(a2 + 4));
  }

  return result;
}

void operations_research::sat::GenerateSchedulingNeighborhoodFromRelaxedIntervals(atomic_ullong *this@<X6>, int *a2@<X0>, uint64_t a3@<X1>, int *a4@<X2>, uint64_t a5@<X3>, const operations_research::sat::CpSolverResponse *a6@<X4>, __int128 *a7@<X5>, _BYTE *a8@<X8>)
{
  v8 = this;
  operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(this, a8);
  v16 = 4 * a3;
  if (4 * a3 == 28)
  {
    v17 = 8;
  }

  else
  {
    v17 = ((v16 >> 2) - 1) / 7 + (v16 >> 2);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(&v110, v17);
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    do
    {
      v18 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v110, a2, &__p);
      if (v116 == 1)
      {
        *v115 = *a2;
      }

      ++a2;
      v16 -= 4;
    }

    while (v16);
  }

  v22 = v8[58];
  if (0xAAAAAAAAAAAAAAABLL * ((v8[59] - v22) >> 3) <= 0x13)
  {
LABEL_79:
    operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(v18, a6, (a8 + 8));
    *a8 = 1;
    goto LABEL_80;
  }

  v107 = a6;
  v23 = *(v22 + 456);
  v24 = *(v22 + 464);
  if (v24 == v23)
  {
    a6 = v107;
    goto LABEL_48;
  }

  v104 = a7;
  v105 = a5;
  v25 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v106 = v8;
  v26 = a8 + 32;
  do
  {
    while (1)
    {
      v32 = *v23;
      v33 = v32;
      LODWORD(v108) = *v23;
      if (v110 > 1)
      {
        v30 = 0;
        _X11 = v112;
        __asm { PRFM            #4, [X11] }

        v48 = (((v25 + v32) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v25 + v32));
        v31 = (v48 >> 7) ^ (v112 >> 12);
        v49 = vdup_n_s8(v48 & 0x7F);
        while (1)
        {
          v27 = v31 & v110;
          v28 = *(v112 + v27);
          v29 = vceq_s8(v28, v49);
          if (v29)
          {
            break;
          }

LABEL_14:
          if (vceq_s8(v28, 0x8080808080808080))
          {
            goto LABEL_21;
          }

          v30 += 8;
          v31 = v30 + v27;
        }

        while (*(v113 + 4 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v110)) != v33)
        {
          v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v29)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_30;
      }

      if (v111 < 2 || v112 != v32)
      {
        break;
      }

LABEL_30:
      if (++v23 == v24)
      {
        goto LABEL_45;
      }
    }

LABEL_21:
    v35 = v8[34];
    v37 = *(v35 + 48);
    v36 = (v35 + 48);
    v38 = (v37 + 8 * v33 + 7);
    if ((v37 & 1) == 0)
    {
      v38 = v36;
    }

    v39 = *v38;
    if (!*(v39 + 16))
    {
      goto LABEL_30;
    }

    v40 = **(v39 + 24);
    if (~v40 <= v40)
    {
      v41 = **(v39 + 24);
    }

    else
    {
      v41 = ~v40;
    }

    v42 = *(*(v107 + 4) + 8 * v41);
    if (v40 >= 0 != (v42 != 0))
    {
      v18 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v110, &v108, &__p);
      if (v116 == 1)
      {
        *v115 = v108;
      }

      goto LABEL_30;
    }

    v50 = v25;
    v51 = v41;
    v52 = *v26 - 1;
    v53 = *v26 & 1;
    v54 = (v52 + 8 * v51 + 8);
    v55 = v26;
    if (!v53)
    {
      v54 = v26;
    }

    v56 = *v54;
    v57 = *v54;
    *(v57 + 16) = 0;
    v58 = (v57 + 16);
    if (*(v56 + 20))
    {
      v59 = 0;
    }

    else
    {
      v18 = google::protobuf::RepeatedField<long long>::Grow(v58, 0, 1);
      v59 = *v58;
      v53 = *v55 & 1;
      v52 = *v55 - 1;
    }

    v60 = *(v56 + 24);
    *(v56 + 16) = v59 + 1;
    *(v60 + 8 * v59) = v42;
    v61 = v52 + 8 * v51 + 8;
    v26 = v55;
    if (v53)
    {
      v62 = v61;
    }

    else
    {
      v62 = v55;
    }

    v63 = *v62;
    v65 = (*v62 + 16);
    v64 = *v65;
    v66 = *(v63 + 20);
    if (*v65 == v66)
    {
      v18 = google::protobuf::RepeatedField<long long>::Grow(v65, v66, (v66 + 1));
      v64 = *v65;
      v26 = v55;
    }

    v67 = *(v63 + 24);
    *(v63 + 16) = v64 + 1;
    *(v67 + 8 * v64) = v42;
    v25 = v50;
    v8 = v106;
    ++v23;
  }

  while (v23 != v24);
LABEL_45:
  v22 = v8[58];
  a5 = v105;
  a7 = v104;
  a6 = v107;
  if (0xAAAAAAAAAAAAAAABLL * ((v8[59] - v22) >> 3) <= 0x13)
  {
    goto LABEL_79;
  }

LABEL_48:
  if (v111 >> 1 >= (*(v22 + 464) - *(v22 + 456)) >> 2)
  {
    goto LABEL_79;
  }

  a8[1] = 1;
  v108 = *a7;
  v109 = *(a7 + 2);
  operations_research::sat::NeighborhoodGeneratorHelper::GetSchedulingPrecedences(v8, &v110, a6, &v108, v19, v20, v21, &__p);
  v70 = __p;
  v71 = v115;
  if (__p != v115)
  {
    do
    {
      v72 = v8[34];
      v75 = *(v72 + 48);
      v73 = (v72 + 48);
      v74 = v75;
      v76 = v75 + 7;
      v77 = (v75 + 7 + 8 * *v70);
      if ((v75 & 1) == 0)
      {
        v77 = v73;
      }

      v78 = *v77;
      v79 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
      if (*(v78 + 60) == 19)
      {
        v79 = *(v78 + 48);
      }

      if (v79[4])
      {
        v80 = v79[4];
      }

      else
      {
        v80 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v81 = (v76 + 8 * v70[1]);
      if (v74)
      {
        v73 = v81;
      }

      v82 = *v73;
      v83 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
      if (*(v82 + 60) == 19)
      {
        v83 = *(v82 + 48);
      }

      if (v83[3])
      {
        v84 = v83[3];
      }

      else
      {
        v84 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v70 += 2;
    }

    while (v70 != v71);
  }

  if ((a5 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v85 = a8 + 32;
    v86 = 4 * a5;
    do
    {
      v87 = *a4;
      v88 = *(*(a6 + 4) + 8 * v87);
      v89 = *v85 - 1;
      v90 = *v85 & 1;
      v91 = (v89 + 8 * v87 + 8);
      if (!v90)
      {
        v91 = (a8 + 32);
      }

      v92 = *v91;
      v93 = *v91;
      *(v93 + 16) = 0;
      v94 = (v93 + 16);
      if (*(v92 + 20))
      {
        v95 = 0;
      }

      else
      {
        v68 = google::protobuf::RepeatedField<long long>::Grow(v94, 0, 1);
        v95 = *v94;
        v90 = *v85 & 1;
        v89 = *v85 - 1;
      }

      v96 = *(v92 + 24);
      *(v92 + 16) = v95 + 1;
      *(v96 + 8 * v95) = v88;
      v97 = v89 + 8 * v87 + 8;
      if (v90)
      {
        v98 = v97;
      }

      else
      {
        v98 = a8 + 32;
      }

      v99 = *v98;
      v101 = (*v98 + 16);
      v100 = *v101;
      v102 = *(v99 + 20);
      if (*v101 == v102)
      {
        v68 = google::protobuf::RepeatedField<long long>::Grow(v101, v102, (v102 + 1));
        v100 = *v101;
      }

      v103 = *(v99 + 24);
      *(v99 + 16) = v100 + 1;
      *(v103 + 8 * v100) = v88;
      ++a4;
      v86 -= 4;
    }

    while (v86);
  }

  operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(v68, a6, (a8 + 8));
  *a8 = 1;
  if (__p)
  {
    v115 = __p;
    operator delete(__p);
  }

LABEL_80:
  if (v110 >= 2)
  {
    operator delete((v112 - (v111 & 1) - 8));
  }
}

void sub_23CA3E998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, operations_research::sat::Neighborhood *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (a19 >= 2)
  {
    operator delete((a21 - (a20 & 1) - 8));
    operations_research::sat::Neighborhood::~Neighborhood(a12);
    _Unwind_Resume(a1);
  }

  operations_research::sat::Neighborhood::~Neighborhood(a12);
  _Unwind_Resume(a1);
}

void operations_research::sat::RandomIntervalSchedulingNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, double a5@<D0>)
{
  v10 = *(a1 + 32);
  v11 = v10[58];
  if (0xAAAAAAAAAAAAAAABLL * ((v10[59] - v11) >> 3) < 0x14)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(v11 + 464) - *(v11 + 456)) >> 2;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(v10, v12, &__p);
  v13 = *a3;
  v14 = *(a3 + 16);
  v13 = *a3;
  v14 = *(a3 + 16);
  operations_research::sat::GenerateSchedulingNeighborhoodFromRelaxedIntervals(*(a1 + 32), __p.__begin_, __p.__end_ - __p.__begin_, 0, 0, a2, &v13, a4);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_23CA3EB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::RandomPrecedenceSchedulingNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void (***a5)(operations_research::sat::IntervalConstraintProto *__hidden this)@<X5>, void (***a6)(operations_research::sat::LinearExpressionProto *__hidden this)@<X6>, _BYTE *a7@<X8>, double a8@<D0>)
{
  v13 = *(a1 + 32);
  v16 = xmmword_23CE306D0;
  v14 = *a3;
  v15 = *(a3 + 16);
  operations_research::sat::NeighborhoodGeneratorHelper::GetSchedulingPrecedences(v13, &v16, a2, &v14, a4, a5, a6, &__p);
  v16 = *a3;
  v17 = *(a3 + 16);
  operations_research::sat::GenerateSchedulingNeighborhoodFromIntervalPrecedences(*(a1 + 32), __p, (v19 - __p) >> 3, a2, a7);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_23CA3EC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::GetRandomSubset<std::pair<int,int>>(int **a1, void *a2, double a3)
{
  v4 = a1[1];
  v5 = *a1;
  if (*a1 == v4)
  {
    return;
  }

  v7 = (v4 - v5) >> 3;
  if (v7 < 2)
  {
    goto LABEL_22;
  }

  v8 = v4 - 2;
  if (v4 - 2 <= v5)
  {
    goto LABEL_22;
  }

  do
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }

    if (!v7)
    {
      v15 = (a2[2])(*a2);
      if (!v15)
      {
        goto LABEL_5;
      }

LABEL_20:
      v16 = &v5[8 * v15];
      v17 = *v5;
      *v5 = *v16;
      *v16 = v17;
      v18 = *(v5 + 1);
      *(v5 + 1) = *(v16 + 1);
      *(v16 + 1) = v18;
      goto LABEL_5;
    }

    v10 = __clz(v7);
    if (((v7 << v10) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 64;
    }

    else
    {
      v11 = 63;
    }

    v12 = v11 - v10;
    v13 = v12 >> 6;
    if ((v12 & 0x3F) != 0)
    {
      ++v13;
    }

    if (v13 <= v12)
    {
      v14 = 0xFFFFFFFFFFFFFFFFLL >> -(v12 / v13);
    }

    else
    {
      v14 = 0;
    }

    do
    {
      v15 = (a2[2])(*a2) & v14;
    }

    while (v15 >= v7);
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_5:
    v5 += 8;
    --v7;
  }

  while (v5 < v8);
  v5 = *a1;
  v7 = (a1[1] - *a1) >> 3;
LABEL_22:
  v19 = llround(v7 * a3);
  if (v19 <= v7)
  {
    if (v19 < v7)
    {
      a1[1] = &v5[8 * v19];
    }
  }

  else
  {

    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1, v19 - v7);
  }
}

void operations_research::sat::SchedulingTimeWindowNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, double a5@<D0>)
{
  v10 = *(a1 + 32);
  v11 = v10[58];
  if (0xAAAAAAAAAAAAAAABLL * ((v10[59] - v11) >> 3) < 0x14)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(v10, 0, &v39);
    if (v39 != v40)
    {
      goto LABEL_3;
    }

LABEL_7:
    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(*(a1 + 32), a4);
    goto LABEL_42;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(v10, (*(v11 + 464) - *(v11 + 456)) >> 2, &v39);
  if (v39 == v40)
  {
    goto LABEL_7;
  }

LABEL_3:
  v12 = *(*(a1 + 32) + 272);
  *__dst = *a3;
  v32 = *(a3 + 16);
  __dst[0] = 0;
  __dst[1] = 0;
  v32 = 0;
  if (v36 != v35)
  {
    if (((v36 - v35) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  __p = 0;
  v29 = 0;
  v30 = 0;
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(__dst, 0, v35, v36, (v36 - v35) >> 2);
  if (*(*(*(a1 + 32) + 264) + 327) == 1)
  {
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(__dst, __dst[1], v33, v34, (v34 - v33) >> 2);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v13 = __dst[1];
  if (__dst[0] != __dst[1])
  {
    v14 = (__dst[0] + 4);
    while (v14 != __dst[1])
    {
      v15 = *(v14 - 1);
      v16 = *v14++;
      if (v15 == v16)
      {
        v17 = v14 - 2;
        while (v14 != v13)
        {
          v18 = v15;
          v15 = *v14;
          if (v18 != *v14)
          {
            v17[1] = v15;
            ++v17;
          }

          ++v14;
        }

        if (v17 + 1 != v13)
        {
          __dst[1] = v17 + 1;
        }

        break;
      }
    }
  }

  std::__sort<std::__less<int,int> &,int *>();
  v19 = __p;
  v20 = v29;
  if (__p != v29)
  {
    v21 = (__p + 4);
    while (v21 != v29)
    {
      v22 = *(v21 - 1);
      v23 = *v21++;
      if (v22 == v23)
      {
        v24 = v21 - 2;
        while (v21 != v20)
        {
          v25 = v22;
          v22 = *v21;
          if (v25 != *v21)
          {
            v24[1] = v22;
            ++v24;
          }

          ++v21;
        }

        if (v24 + 1 != v20)
        {
          v20 = v24 + 1;
          v29 = v24 + 1;
        }

        break;
      }
    }
  }

  v26 = *a3;
  v27 = *(a3 + 16);
  operations_research::sat::GenerateSchedulingNeighborhoodFromRelaxedIntervals(*(a1 + 32), __dst[0], (__dst[1] - __dst[0]) >> 2, v19, v20 - v19, a2, &v26, a4);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

LABEL_42:
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_23CA3F18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(va);
  v20 = *(v18 - 120);
  if (v20)
  {
    *(v18 - 112) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::PartitionIndicesAroundRandomTimeWindow(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  if (a2[1] != *a2)
  {
    v7 = *(a3 + 48) + 8 * **a2 + 7;
    if ((*(a3 + 48) & 1) == 0)
    {
      v7 = a3 + 48;
    }

    v8 = *v7;
    v9 = *(*v7 + 60);
    v10 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
    if (v9 == 19)
    {
      v10 = *(v8 + 48);
    }

    v11 = v10[3];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v13 = *(a4 + 32);
    v14 = v12[8];
    v15 = *(v12 + 4);
    if (v15 >= 1)
    {
      v16 = v12[6];
      v17 = v12[3];
      if (v15 == 1)
      {
        v18 = 0;
LABEL_15:
        v23 = v15 - v18;
        v24 = v17 + v18;
        v25 = &v16[v18];
        do
        {
          v27 = *v25++;
          v26 = v27;
          v28 = *v24++;
          v14 = (v14 + *(v13 + 8 * v28) * v26);
          --v23;
        }

        while (v23);
        goto LABEL_17;
      }

      v19 = 0;
      v18 = v15 & 0x7FFFFFFE;
      v20 = v16 + 1;
      v21 = v17 + 1;
      v22 = v18;
      do
      {
        v14 = (v14 + *(v13 + 8 * *(v21 - 1)) * *(v20 - 1));
        v19 += *(v13 + 8 * *v21) * *v20;
        v20 += 2;
        v21 += 2;
        v22 -= 2;
      }

      while (v22);
      v14 = (v14 + v19);
      if (v18 != v15)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v29 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
    if (v9 == 19)
    {
      v29 = *(v8 + 48);
    }

    if (v29[4])
    {
      v30 = v29[4];
    }

    else
    {
      v30 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v31 = v30[8];
    v32 = *(v30 + 4);
    if (v32 >= 1)
    {
      v33 = v30[6];
      v34 = v30[3];
      if (v32 == 1)
      {
        v35 = 0;
LABEL_28:
        v40 = v32 - v35;
        v41 = v34 + v35;
        v42 = &v33[v35];
        do
        {
          v44 = *v42++;
          v43 = v44;
          v45 = *v41++;
          v31 = (v31 + *(v13 + 8 * v45) * v43);
          --v40;
        }

        while (v40);
        goto LABEL_30;
      }

      v36 = 0;
      v35 = v32 & 0x7FFFFFFE;
      v37 = v33 + 1;
      v38 = v34 + 1;
      v39 = v35;
      do
      {
        v31 = (v31 + *(v13 + 8 * *(v38 - 1)) * *(v37 - 1));
        v36 += *(v13 + 8 * *v38) * *v37;
        v37 += 2;
        v38 += 2;
        v39 -= 2;
      }

      while (v39);
      v31 = (v31 + v36);
      if (v35 != v32)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v56 = xmmword_23CE35A10;
    v55 = 0;
    v46 = a5[1];
    if (v46 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v47 = 0.0;
      v48 = 1.0;
      v49 = 1.0;
    }

    else
    {
      if ((v46)(*a5, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, &v56, &v55))
      {
        goto LABEL_49;
      }

      v49 = *(&v56 + 1);
      v47 = *&v56;
      v48 = *(&v56 + 1) - *&v56;
    }

    v50 = (*&v48 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v51 = ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v48 >= 0.0)
    {
      v51 = 0;
      v50 = 0;
    }

    if ((*&v48 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v50 = 1;
    }

    v52 = (*&v48 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v50;
    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v52 = 1;
    }

    if ((v52 | v51))
    {
      (a5[2])(*a5);
    }

    else
    {
      do
      {
        while (1)
        {
          v54 = (a5[2])(*a5);
          if (!v54)
          {
            break;
          }

          v53 = __clz(v54);
          if (v47 + COERCE_DOUBLE(((v54 << v53 >> 11) & 0xFFFFFFFFFFFFFLL) - (v53 << 52) + 0x3FE0000000000000) * v48 < v49)
          {
            goto LABEL_49;
          }
        }
      }

      while (v47 + 0.0 * v48 >= v49);
    }

LABEL_49:
    operator new();
  }

  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}