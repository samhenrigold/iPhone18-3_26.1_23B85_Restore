int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorUtils::sortQuadWithRotation(CRDetectorUtils::CRTextDetectorQuad &)::$_0 &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 8 * *a2);
  v9 = *(a6 + 8 * *result);
  v10 = *a3;
  v11 = *(a6 + 8 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(a6 + 8 * v13) >= *(a6 + 8 * v14))
    {
      v12 = v6;
      v10 = v6;
      goto LABEL_13;
    }

    *result = v13;
    *a2 = v14;
    v10 = *a3;
    goto LABEL_11;
  }

  v12 = v7;
  if (v11 >= v8)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(a6 + 8 * *a3) < v9)
    {
      *a2 = v10;
      goto LABEL_9;
    }

LABEL_11:
    v12 = v10;
    goto LABEL_13;
  }

  *result = v10;
LABEL_9:
  *a3 = v7;
  v10 = v7;
LABEL_13:
  v15 = *a4;
  if (*(a6 + 8 * v15) < *(a6 + 8 * v12))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(a6 + 8 * v16) < *(a6 + 8 * v17))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(a6 + 8 * v18) < *(a6 + 8 * v19))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(a6 + 8 * v20) < *(a6 + 8 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(a6 + 8 * v22) < *(a6 + 8 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(a6 + 8 * v24) < *(a6 + 8 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(a6 + 8 * v26) < *(a6 + 8 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorUtils::sortQuadWithRotation(CRDetectorUtils::CRTextDetectorQuad &)::$_0 &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 8 * v6);
      v9 = *(*a3 + 8 * v5);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 8 * v10);
      if (v8 >= v9)
      {
        if (v11 < v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + 8 * v35) < *(v7 + 8 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 < v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 8 * v46) < v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorUtils::sortQuadWithRotation(CRDetectorUtils::CRTextDetectorQuad &)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 8 * v23);
    v29 = *(*a3 + 8 * *a1);
    v30 = v25;
    v31 = *(*a3 + 8 * v25);
    if (v28 >= v29)
    {
      if (v31 < v28)
      {
        v32 = v23;
        *v22 = v25;
        *v24 = v23;
        v33 = a1;
        v34 = a1 + 1;
        v30 = v23;
        if (v31 >= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = v26;
      if (v31 < v28)
      {
        v33 = a1;
        v34 = a1 + 2;
        v23 = *a1;
LABEL_44:
        *v33 = v25;
        *v34 = v26;
        v30 = v32;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v27 + 8 * v47) < *(v27 + 8 * v30))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + 8 * v48);
          if (v50 < *(v27 + 8 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 < *(v27 + 8 * v51))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v26;
      v33 = a1 + 1;
      v34 = a1 + 2;
      v23 = v26;
      if (v31 < v29)
      {
        goto LABEL_44;
      }
    }

    v23 = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 8 * v4) < *(*a3 + 8 * v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + 8 * v14);
  v17 = *a1;
  v18 = *(*a3 + 8 * v17);
  v19 = *(*a3 + 8 * v12);
  if (v16 < v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 >= v16)
    {
      *a1 = v14;
      a1[1] = v17;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 >= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v12;
    *v21 = v17;
    goto LABEL_26;
  }

  if (v19 < v16)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 < v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v13;
    v42 = *(v15 + 8 * v40);
    if (v42 < *(v15 + 8 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 4;
        if (v43 == 4)
        {
          break;
        }

        v41 = *(a1 + v43 - 8);
        v43 -= 4;
        if (v42 >= *(v15 + 8 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v45 = a1;
LABEL_34:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v13 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

uint64_t *std::vector<PixelPosition>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<PixelPosition>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1B41AF740(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PixelPosition>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1B41AF9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, unsigned int **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

id customHalfWidthToFullWidthMapping()
{
  if (qword_1ED95FEE8 != -1)
  {
    dispatch_once(&qword_1ED95FEE8, &__block_literal_global_10);
  }

  v1 = qword_1ED95FEF0;

  return v1;
}

void __customHalfWidthToFullWidthMapping_block_invoke()
{
  v0 = qword_1ED95FEF0;
  qword_1ED95FEF0 = &unk_1F2BFB308;
}

id customRegexToIgnoreHalfWidthToFullWidthMapping()
{
  if (qword_1ED95FEF8 != -1)
  {
    dispatch_once(&qword_1ED95FEF8, &__block_literal_global_181);
  }

  v1 = qword_1ED95FF00;

  return v1;
}

void __customRegexToIgnoreHalfWidthToFullWidthMapping_block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[a-zA-Z0-9]\\s*[! options::?]\\s*[a-zA-Z0-9/]" error:{0, 0}];;
  v1 = qword_1ED95FF00;
  qword_1ED95FF00 = v0;
}

id unicodeToNSString(int a1)
{
  if ((a1 - 0x10000) >> 20)
  {
    v2 = 1;
    LOWORD(v1) = a1;
  }

  else
  {
    v1 = ((a1 - 0x10000) >> 10) | 0xFFFFD800;
    v5[1] = a1 & 0x3FF | 0xDC00;
    v2 = 2;
  }

  v5[0] = v1;
  v3 = [MEMORY[0x1E696AEC0] stringWithCharacters:v5 length:v2];

  return v3;
}

id nms1DNonFilter(void *a1, float a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  if ([v3 count] >= 2)
  {
    v5 = [v3 count];
    v6 = v5;
    if (v5 >= 3)
    {
      v7 = v5 - 1;
      v8 = 1;
      v9 = 2;
      while (1)
      {
        v10 = [v3 objectAtIndexedSubscript:v8];
        [v10 floatValue];
        v12 = v11;
        v13 = [v3 objectAtIndexedSubscript:v9];
        [v13 floatValue];
        v15 = v14;

        if (v12 <= v15)
        {
          break;
        }

        v16 = [v3 objectAtIndexedSubscript:v8];
        [v16 floatValue];
        v18 = v17;
        v19 = [v3 objectAtIndexedSubscript:v8 - 1];
        [v19 floatValue];
        v21 = v20;

        if (v18 >= v21)
        {
          goto LABEL_6;
        }

LABEL_13:
        v9 = v8 + 3;
        v8 += 2;
        if (v9 >= v6)
        {
          goto LABEL_14;
        }
      }

      if (v9 + 1 >= v6)
      {
        v8 = v9;
        goto LABEL_13;
      }

      v24 = v9 + 1;
      v8 = v9;
      while (1)
      {
        v25 = [v3 objectAtIndexedSubscript:v8];
        [v25 floatValue];
        v27 = v26;
        v28 = [v3 objectAtIndexedSubscript:v24];
        [v28 floatValue];
        v30 = v29;

        if (v27 > v30)
        {
          break;
        }

        ++v24;
        if (v7 == ++v8)
        {
          goto LABEL_13;
        }
      }

LABEL_6:
      *&v22 = v8 / a2;
      v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
      [v4 addObject:v23];

      goto LABEL_13;
    }
  }

LABEL_14:

  return v4;
}

id maxPoint1D(void *a1, float a2)
{
  v3 = a1;
  v23 = [MEMORY[0x1E695DF70] array];
  if ([v3 count] >= 2)
  {
    v4 = [v3 count];
    v5 = v4;
    if (v4 >= 1)
    {
      v6 = 0;
      v22 = v25;
      v7 = v4 & 0x7FFFFFFF;
      do
      {
        v8 = [v3 objectAtIndexedSubscript:{v6, v22}];
        [v8 floatValue];
        v10 = v9;

        v11 = v6 + 1;
        if (v10 > 0.0)
        {
          if (v11 <= v5)
          {
            v11 = v5;
          }

          v12 = v11 - 1;
          v13 = v6 + 1;
          v14 = v6;
          while (v13 < v7)
          {
            v15 = [v3 objectAtIndexedSubscript:v13];
            [v15 floatValue];
            v17 = v16;

            ++v14;
            ++v13;
            if (v17 <= 0.0)
            {
              v12 = v14 - 1;
              goto LABEL_12;
            }
          }

          v14 = v11;
LABEL_12:
          v18 = [v3 subarrayWithRange:{v6, v14 - v6}];
          v29 = 0;
          v30 = &v29;
          v31 = 0x2020000000;
          v32 = 0;
          v27[0] = 0;
          v27[1] = v27;
          v27[2] = 0x3032000000;
          v27[3] = __Block_byref_object_copy__5;
          v27[4] = __Block_byref_object_dispose__5;
          v28 = [v18 objectAtIndexedSubscript:0];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v25[0] = __maxPoint1D_block_invoke;
          v25[1] = &unk_1E7BC28A0;
          v25[2] = v27;
          v25[3] = &v29;
          v26 = v6;
          [v18 enumerateObjectsUsingBlock:v24];
          *&v19 = v30[3] / a2;
          v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
          [v23 addObject:v20];

          v11 = v12 + 2;
          _Block_object_dispose(v27, 8);

          _Block_object_dispose(&v29, 8);
        }

        v6 = v11;
      }

      while (v11 < v5);
    }
  }

  return v23;
}

void sub_1B41B21B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __maxPoint1D_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  [v9 floatValue];
  v7 = v6;
  [*(*(*(a1 + 32) + 8) + 40) floatValue];
  if (v7 > v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) + a3;
  }
}

id smoothing1D(void *a1)
{
  v1 = a1;
  v2 = [v1 mutableCopy];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1F2C00750, &unk_1F2C00760, &unk_1F2C00750, &unk_1F2C00740, 0}];
  v4 = [v1 count];
  if (v4 >= [v3 count])
  {
    v6 = [v3 count];
    v7 = v6 + (v6 >> 31);
    if ([v1 count] - v6 / 2 > (v6 / 2))
    {
      v8 = 0;
      v9 = v7 >> 1;
      v10 = v9;
      do
      {
        v11 = v8;
        if ([v3 count])
        {
          v13 = 0;
          v14 = 0.0;
          do
          {
            v15 = [v1 objectAtIndexedSubscript:v11 + v13];
            [v15 floatValue];
            v17 = v16;
            v18 = [v3 objectAtIndexedSubscript:v13];
            [v18 floatValue];
            v14 = v14 + (v17 * v19);

            ++v13;
          }

          while ([v3 count] > v13);
        }

        else
        {
          v14 = 0.0;
        }

        *&v12 = v14;
        v20 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
        [v2 setObject:v20 atIndexedSubscript:v10];

        ++v10;
        v21 = [v1 count];
        v8 = v11 + 1;
      }

      while (v21 - v9 > v10);
    }

    v5 = v2;
  }

  else
  {
    v5 = [v1 mutableCopy];
  }

  v22 = v5;

  return v22;
}

id nms1D(void *a1, int a2, float a3)
{
  if (a2)
  {
    v4 = nms1DNonFilter(a1, a3);
  }

  else
  {
    v5 = smoothing1D(a1);
    v4 = maxPoint1D(v5, a3);
  }

  return v4;
}

double rotatedPointAroundPoint(double a1, double a2, double a3, double a4, double a5)
{
  v9 = __sincos_stret(a5);
  v10 = (a1 - a3) * v9.__cosval - (a2 - a4) * v9.__sinval;
  return a3 + v10;
}

void rotatePolygon(void *a1, double *a2, double a3, double a4, double a5)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v24[0] = *a1;
  v24[1] = v7;
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v24[2] = a1[4];
  v24[3] = v10;
  v23[0] = v6;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v11;
  v12 = a5;
  v13 = __sincosf_stret(v12);
  v14 = 0;
  v15 = vdupq_lane_s64(*&a3, 0);
  v16 = vdupq_lane_s64(*&a4, 0);
  v17 = vdupq_lane_s64(COERCE__INT64(v13.__sinval), 0);
  v18 = vdupq_lane_s64(COERCE__INT64(v13.__cosval), 0);
  do
  {
    v19 = vsubq_f64(*&v24[v14], v15);
    v20 = vsubq_f64(*&v23[v14], v16);
    v25.val[0] = vaddq_f64(v15, vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(vnegq_f64(v20), v13.__sinval), v18, v19))));
    v25.val[1] = vaddq_f64(v16, vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(v20, v13.__cosval), v17, v19))));
    *&v24[v14] = v25.val[0];
    *&v23[v14] = v25.val[1];
    vst2q_f64(a2, v25);
    a2 += 4;
    v14 += 2;
  }

  while (v14 != 4);
}

uint64_t denormalizedPolygonForSize(uint64_t result, uint64_t a2, float64x2_t a3, float64_t a4)
{
  v4 = 0;
  a3.f64[1] = a4;
  do
  {
    *(a2 + v4) = vmulq_f64(a3, *(result + v4));
    v4 += 16;
  }

  while (v4 != 64);
  return result;
}

double normalizedPointForSize(double result, double a2, double a3, double a4)
{
  if (a4 != 0.0 && a3 != 0.0)
  {
    return result / a3;
  }

  return result;
}

double normalizedRectForSize(double result, double a2, double a3, double a4, double a5, double a6)
{
  if (a6 != 0.0 && a5 != 0.0)
  {
    return result / a5;
  }

  return result;
}

double normalizedSizeForSize(double result, double a2, double a3, double a4)
{
  if (a4 != 0.0 && a3 != 0.0)
  {
    return result / a3;
  }

  return result;
}

BOOL rectEqualsRectWithAccuracy(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = vabdd_f64(a4, a8);
  if (vabdd_f64(a3, a7) > a9 || v9 > a9)
  {
    return 0;
  }

  v12 = vabdd_f64(a1, a5) <= a9;
  return vabdd_f64(a2, a6) <= a9 && v12;
}

uint64_t deviceHasAppleNeuralEngine()
{
  if (qword_1ED95FF88 != -1)
  {
    dispatch_once(&qword_1ED95FF88, &__block_literal_global_396);
  }

  return _MergedGlobals_17;
}

void __deviceHasAppleNeuralEngine_block_invoke()
{
  v0 = MobileGestalt_get_current_device();
  isVirtualDevice = MobileGestalt_get_isVirtualDevice();

  if (isVirtualDevice)
  {
    _MergedGlobals_17 = 0;
  }

  else
  {
    _MergedGlobals_17 = espresso_create_context() != 0;

    espresso_context_destroy();
  }
}

uint64_t deviceHasModernNeuralEngine()
{
  if (qword_1ED95FF90 != -1)
  {
    dispatch_once(&qword_1ED95FF90, &__block_literal_global_398);
  }

  return byte_1ED95FEE1;
}

void __deviceHasModernNeuralEngine_block_invoke()
{
  if (qword_1ED95FF88 != -1)
  {
    dispatch_once(&qword_1ED95FF88, &__block_literal_global_396);
  }

  if (_MergedGlobals_17 == 1)
  {
    byte_1ED95FEE1 = MGGetSInt64Answer() > 31;
  }
}

uint64_t deviceHasH16OrLaterNeuralEngine()
{
  if (qword_1ED95FF98 != -1)
  {
    dispatch_once(&qword_1ED95FF98, &__block_literal_global_403);
  }

  return byte_1ED95FEE2;
}

void __deviceHasH16OrLaterNeuralEngine_block_invoke()
{
  if (qword_1ED95FF88 != -1)
  {
    dispatch_once(&qword_1ED95FF88, &__block_literal_global_396);
  }

  if (_MergedGlobals_17 == 1)
  {
    byte_1ED95FEE2 = MGGetSInt64Answer() > 207;
  }
}

id unicodeArrayToNSStringArray(int *a1, uint64_t a2)
{
  v2 = a2;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:a2];
  {
    v6 = *a1++;
    v5 = v6;
    v7 = v6 - 0x10000;
    if ((v6 - 0x10000) >> 20)
    {
      LOWORD(v8) = v5;
      v9 = 1;
    }

    else
    {
      v8 = (v7 >> 10) | 0xFFFFD800;
      v13[1] = v5 & 0x3FF | 0xDC00;
      v9 = 2;
    }

    v13[0] = v8;
    v10 = [MEMORY[0x1E696AEC0] stringWithCharacters:v13 length:v9];
    [i addObject:v10];
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:i];

  return v11;
}

id lmConfig()
{
  if (qword_1ED95FFA8 != -1)
  {
    dispatch_once(&qword_1ED95FFA8, &__block_literal_global_405);
  }

  v1 = qword_1ED95FFA0;

  return v1;
}

void __lmConfig_block_invoke()
{
  v0 = getLMConfig();
  v1 = qword_1ED95FFA0;
  qword_1ED95FFA0 = v0;
}

id confidenceThresholds()
{
  if (qword_1ED95FFB8 != -1)
  {
    dispatch_once(&qword_1ED95FFB8, &__block_literal_global_407);
  }

  v1 = qword_1ED95FFB0;

  return v1;
}

void __confidenceThresholds_block_invoke()
{
  v66 = *MEMORY[0x1E69E9840];
  v0 = getConfidenceThresholds();
  v39 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v0, "count")}];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v0;
  v40 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v40)
  {
    v38 = *v60;
    do
    {
      v1 = 0;
      do
      {
        if (*v60 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v1;
        v2 = *(*(&v59 + 1) + 8 * v1);
        v3 = MEMORY[0x1E695DF90];
        v4 = [obj objectForKeyedSubscript:{v2, v38}];
        v44 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v49 = v2;
        v42 = [obj objectForKeyedSubscript:v2];
        v45 = [v42 countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v45)
        {
          v43 = *v56;
          do
          {
            v5 = 0;
            do
            {
              if (*v56 != v43)
              {
                objc_enumerationMutation(v42);
              }

              v46 = v5;
              v6 = *(*(&v55 + 1) + 8 * v5);
              v7 = MEMORY[0x1E695DF90];
              v8 = [obj objectForKeyedSubscript:v49];
              v9 = [v8 objectForKeyedSubscript:v6];
              v50 = [v7 dictionaryWithCapacity:{objc_msgSend(v9, "count")}];

              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v10 = [obj objectForKeyedSubscript:v49];
              v11 = [v10 objectForKeyedSubscript:v6];

              v12 = [v11 countByEnumeratingWithState:&v51 objects:v63 count:16];
              if (v12)
              {
                v13 = v12;
                v47 = *v52;
                do
                {
                  for (i = 0; i != v13; ++i)
                  {
                    if (*v52 != v47)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v15 = *(*(&v51 + 1) + 8 * i);
                    v16 = [obj objectForKeyedSubscript:v49];
                    v17 = [v16 objectForKeyedSubscript:v6];
                    v18 = [v17 objectForKeyedSubscript:v15];
                    v19 = [v18 objectForKeyedSubscript:@"medium"];
                    [v19 floatValue];
                    v21 = v20 / 100.0;

                    v22 = [obj objectForKeyedSubscript:v49];
                    v23 = [v22 objectForKeyedSubscript:v6];
                    v24 = [v23 objectForKeyedSubscript:v15];
                    v25 = [v24 objectForKeyedSubscript:@"high"];
                    [v25 floatValue];
                    v27 = v26 / 100.0;

                    v28 = [CRConfidenceThresholds alloc];
                    *&v29 = v21;
                    *&v30 = v27;
                    v31 = [(CRConfidenceThresholds *)v28 initWithMediumThreshold:v29 highThreshold:v30];
                    [v50 setObject:v31 forKeyedSubscript:v15];
                  }

                  v13 = [v11 countByEnumeratingWithState:&v51 objects:v63 count:16];
                }

                while (v13);
              }

              v32 = [v50 copy];
              v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isEqualToString:", @"true"}];
              [v44 setObject:v32 forKeyedSubscript:v33];

              v5 = v46 + 1;
            }

            while (v46 + 1 != v45);
            v45 = [v42 countByEnumeratingWithState:&v55 objects:v64 count:16];
          }

          while (v45);
        }

        v34 = [v44 copy];
        v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v49, "intValue")}];
        [v39 setObject:v34 forKeyedSubscript:v35];

        v1 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v40);
  }

  v36 = [v39 copy];
  v37 = qword_1ED95FFB0;
  qword_1ED95FFB0 = v36;
}

id lineWrappingConfig()
{
  if (qword_1ED95FFC8 != -1)
  {
    dispatch_once(&qword_1ED95FFC8, &__block_literal_global_420);
  }

  v1 = qword_1ED95FFC0;

  return v1;
}

void __lineWrappingConfig_block_invoke()
{
  v0 = getLineWrappingConfig();
  v1 = qword_1ED95FFC0;
  qword_1ED95FFC0 = v0;
}

id compressData(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = malloc_type_malloc(v2 + 100, 0x1D223A0AuLL);
  v4 = [v1 bytes];
  v5 = [v1 length];

  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:{compression_encode_buffer(v3, v2 + 100, v4, v5, 0, COMPRESSION_LZFSE)}];
  free(v3);

  return v6;
}

id uncompressDataOfSize(void *a1, int64_t a2)
{
  if (a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v3 = a1;
    v4 = malloc_type_malloc(a2, 0x41BDD20DuLL);
    v5 = [v3 bytes];
    v6 = [v3 length];

    v7 = 0;
    if (compression_decode_buffer(v4, a2, v5, v6, 0, COMPRESSION_LZFSE) == a2)
    {
      v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:a2];
    }

    free(v4);
  }

  return v7;
}

uint64_t characterCount(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [v1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __characterCount_block_invoke;
  v5[3] = &unk_1E7BC1FB8;
  v5[4] = &v6;
  [v1 enumerateSubstringsInRange:0 options:v2 usingBlock:{2, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_1B41B3338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double normalizeProbabilityForLength(uint64_t a1, double result)
{
  if (a1)
  {
    return pow(result, 1.0 / a1);
  }

  return result;
}

double boundedAngle(double result)
{
  if (result <= 3.14159265)
  {
    if (result > -3.14159265)
    {
      return result;
    }

    v1 = 6.28318531;
  }

  else
  {
    v1 = -6.28318531;
  }

  return result + v1;
}

double weightedAverageAngleFromEuclideanSpace(double a1, double a2, double a3, double a4)
{
  v7 = __sincos_stret(a1);
  v8 = __sincos_stret(a2);

  return atan2(v8.__sinval * a4 + v7.__sinval * a3, v8.__cosval * a4 + v7.__cosval * a3);
}

double distanceFromPointToPoint(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a5 > 0.0 && a6 > 0.0)
  {
    a1 = a1 * a5;
    a2 = a2 * a6;
    a3 = a3 * a5;
    a4 = a4 * a6;
  }

  return sqrt((a2 - a4) * (a2 - a4) + (a1 - a3) * (a1 - a3));
}

double squaredDistanceFromPointToPoint(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a5 > 0.0 && a6 > 0.0)
  {
    a1 = a1 * a5;
    a2 = a2 * a6;
    a3 = a3 * a5;
    a4 = a4 * a6;
  }

  return (a2 - a4) * (a2 - a4) + (a1 - a3) * (a1 - a3);
}

double squaredDistanceFromPointToLineDefinedByPoints(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a7 > 0.0 && a8 > 0.0)
  {
    a3 = a3 * a7;
    a4 = a4 * a8;
    a5 = a5 * a7;
    a6 = a6 * a8;
  }

  v8 = a5 - a3;
  v9 = v8 * (a4 - a2) - (a3 - a1) * (a6 - a4);
  return v9 * v9 / (v8 * v8 + (a6 - a4) * (a6 - a4));
}

uint64_t doesLineSegmentIntersectLineSegment(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((a5 - a1) * (a8 - a2) > (a6 - a2) * (a7 - a1) == (a5 - a3) * (a8 - a4) > (a6 - a4) * (a7 - a3))
  {
    return 0;
  }

  else
  {
    return ((a3 - a1) * (a6 - a2) > (a4 - a2) * (a5 - a1)) ^ ((a3 - a1) * (a8 - a2) > (a4 - a2) * (a7 - a1));
  }
}

long double averageAngle(double a1, double a2)
{
  v3 = __sincos_stret(a1);
  v4 = __sincos_stret(a2);

  return atan2(v3.__sinval + v4.__sinval, v3.__cosval + v4.__cosval);
}

double weightedAverageAngle(double a1, double a2, double a3)
{
  v3 = a1 - a2;
  if (v3 <= 3.14159265)
  {
    if (v3 > -3.14159265)
    {
      goto LABEL_6;
    }

    v4 = 6.28318531;
  }

  else
  {
    v4 = -6.28318531;
  }

  v3 = v3 + v4;
LABEL_6:
  result = v3 * a3 + a2;
  if (result <= 3.14159265)
  {
    if (result > -3.14159265)
    {
      return result;
    }

    v6 = 6.28318531;
  }

  else
  {
    v6 = -6.28318531;
  }

  return result + v6;
}

long double angleBetweenPoints(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = *MEMORY[0x1E695F060];
  if (*MEMORY[0x1E695F060] > 0.0)
  {
    v7 = *(MEMORY[0x1E695F060] + 8);
    if (v7 > 0.0)
    {
      a1 = a1 * v6;
      a2 = a2 * v7;
      a3 = a3 * v6;
      a4 = a4 * v7;
      a5 = a5 * v6;
      a6 = a6 * v7;
    }
  }

  v8 = sqrt((a4 - a6) * (a4 - a6) + (a3 - a5) * (a3 - a5));
  v9 = sqrt((a2 - a4) * (a2 - a4) + (a1 - a3) * (a1 - a3));
  v10 = sqrt((a6 - a2) * (a6 - a2) + (a5 - a1) * (a5 - a1));
  return acos((v8 * v8 + v9 * v9 - v10 * v10) / (v8 * (v9 + v9)));
}

double applyHomography(void *a1, double a2, double a3)
{
  v5 = a1;
  v30 = [v5 objectAtIndexedSubscript:0];
  [v30 floatValue];
  v7 = v6;
  v29 = [v5 objectAtIndexedSubscript:1];
  [v29 floatValue];
  v9 = a3 * v8 + a2 * v7;
  v28 = [v5 objectAtIndexedSubscript:2];
  [v28 floatValue];
  v11 = v9 + v10;
  v12 = [v5 objectAtIndexedSubscript:6];
  [v12 floatValue];
  v14 = v13;
  v15 = [v5 objectAtIndexedSubscript:7];
  [v15 floatValue];
  v17 = a3 * v16 + a2 * v14;
  v18 = [v5 objectAtIndexedSubscript:8];
  [v18 floatValue];
  v20 = v11 / (v17 + v19);
  v21 = [v5 objectAtIndexedSubscript:3];
  [v21 floatValue];
  v22 = [v5 objectAtIndexedSubscript:4];
  [v22 floatValue];
  v23 = [v5 objectAtIndexedSubscript:5];
  [v23 floatValue];
  v24 = [v5 objectAtIndexedSubscript:6];
  [v24 floatValue];
  v25 = [v5 objectAtIndexedSubscript:7];
  [v25 floatValue];
  v26 = [v5 objectAtIndexedSubscript:8];

  [v26 floatValue];
  return v20;
}

id computeHomography(uint64_t a1, uint64_t a2)
{
  v22[9] = *MEMORY[0x1E69E9840];
  *&v2 = computeHomographyMatrix(a1);
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v22[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:*&v20];
  v22[1] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:*&v21];
  v22[2] = v7;
  HIDWORD(v8) = DWORD1(v19);
  LODWORD(v8) = DWORD1(v19);
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v22[3] = v9;
  HIDWORD(v10) = DWORD1(v20);
  LODWORD(v10) = DWORD1(v20);
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v22[4] = v11;
  HIDWORD(v12) = DWORD1(v21);
  LODWORD(v12) = DWORD1(v21);
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v22[5] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v19), DWORD2(v19)))}];
  v22[6] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v20), DWORD2(v20)))}];
  v22[7] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v21), DWORD2(v21)))}];
  v22[8] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:9];

  return v17;
}

float32x2_t computeHomographyMatrix(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = 0;
  v16 = *MEMORY[0x1E69E9840];
  v4 = (v3 + 8);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = &v12[v2];
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    v8 = *v1++;
    *(v7 + 24) = vnegq_f64(v8);
    *(v7 + 5) = 0xBFF0000000000000;
    *(v7 + 3) = vmulq_n_f64(v8, v6);
    *(v7 + 8) = v6;
    *(v7 + 72) = v8;
    v9 = -v5;
    *(v7 + 11) = 0x3FF0000000000000;
    *(v7 + 12) = 0;
    *(v7 + 13) = 0;
    *(v7 + 14) = 0;
    *(v7 + 120) = vmulq_n_f64(v8, v9);
    *(v7 + 17) = v9;
    v4 += 2;
    v2 += 144;
  }

  while (v2 != 576);
  dgeqrf_NEWLAPACK();
  dorgqr_NEWLAPACK();
  *&v10.f64[0] = v13;
  v10.f64[1] = *(&v14 + 1);
  return vcvt_f32_f64(vmulq_n_f64(v10, 1.0 / v15));
}

double applyHomographyMatrix(float32x4_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5)
{
  v5 = a4;
  v6 = a5;
  v7 = vaddq_f32(a3, vmlaq_n_f32(vmulq_n_f32(a1, v5), a2, v6));
  if (v7.f32[2] != 0.0)
  {
    return (v7.f32[0] / v7.f32[2]);
  }

  return a4;
}

double applyHomographyMatrixWithDownscale(float32x4_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5, double a6)
{
  v6 = a4 / a6;
  v7 = v6;
  v8 = a5 / a6;
  v9 = vaddq_f32(a3, vmlaq_n_f32(vmulq_n_f32(a1, v7), a2, v8));
  if (v9.f32[2] != 0.0)
  {
    v6 = (v9.f32[0] / v9.f32[2]);
  }

  return v6 * a6;
}

uint64_t checkIsZeroMatrix(float32x4_t a1, int8x16_t a2, int8x16_t a3)
{
  a1.i32[3] = a2.i32[0];
  v3 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(a1), vceqzq_f32(vextq_s8(vextq_s8(a2, a2, 0xCuLL), a3, 8uLL)))));
  v3.i8[0] = vmaxv_u8(v3);
  return (*&a3.i32[2] == 0.0) & ~v3.i32[0];
}

uint64_t CRTextRecognition::CRCTLD::order::TarjansSCC::unfolded_strongconnect(CRTextRecognition::CRCTLD::order::TarjansSCC *this, int a2)
{
  v58 = a2;
  LODWORD(__src) = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  std::deque<std::pair<int,int>>::emplace_back<int &,int &>(&v55, &v58, &__src);
  v3 = *(&v57 + 1);
  if (!*(&v57 + 1))
  {
    return std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v55);
  }

  while (1)
  {
LABEL_2:
    v4 = ((v56 - *(&v55 + 1)) << 6) - 1;
    if (v56 == *(&v55 + 1))
    {
      v4 = 0;
    }

    v5 = v3 - 1;
    v6 = *(*(*(&v55 + 1) + (((v57 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v57 + v5) & 0x1FF));
    *(&v57 + 1) = v5;
    if ((v4 - (v57 + v5)) >= 0x400)
    {
      operator delete(*(v56 - 8));
      *&v56 = v56 - 8;
    }

    v7 = HIDWORD(v6);
    if (!HIDWORD(v6))
    {
      v8 = *(this + 4);
      v9 = *(this + 3);
      v10 = *(this + 2);
      *(*(this + 8) + 4 * v6) = v10;
      *(*(this + 11) + 4 * v6) = v10;
      ++*(this + 2);
      if (v8 == v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = ((v8 - v9) << 7) - 1;
      }

      v13 = *(this + 6);
      v12 = *(this + 7);
      v14 = v12 + v13;
      if (v11 == v12 + v13)
      {
        if (v13 < 0x400)
        {
          v15 = *(this + 5);
          v16 = *(this + 2);
          if (v8 - v9 < (v15 - v16))
          {
            operator new();
          }

          if (v15 == v16)
          {
            v17 = 1;
          }

          else
          {
            v17 = (v15 - v16) >> 2;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v17);
        }

        *(this + 6) = v13 - 1024;
        __src = *v9;
        *(this + 3) = v9 + 1;
        std::__split_buffer<int *>::emplace_back<int *&>(this + 2, &__src);
        v9 = *(this + 3);
        v12 = *(this + 7);
        v14 = *(this + 6) + v12;
      }

      (*(v9 + ((v14 >> 7) & 0x1FFFFFFFFFFFFF8)))[v14 & 0x3FF] = v6;
      *(this + 7) = v12 + 1;
      *(*(this + 14) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
      LODWORD(v7) = 0;
    }

    v18 = *this;
    if (*this <= v6 >> 32)
    {
      break;
    }

    v19 = v6 >> 32;
    v20 = v6;
    v21 = *(*(this + 17) + 24 * v6);
    while (1)
    {
      v22 = v19 >> 6;
      v23 = 1 << v19;
      if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) != 0)
      {
        break;
      }

LABEL_28:
      LODWORD(v7) = v7 + 1;
      v19 = v7;
      if (v18 <= v7)
      {
        goto LABEL_31;
      }
    }

    v24 = *(*(this + 8) + 4 * v19);
    if ((v24 & 0x80000000) == 0)
    {
      if ((*(*(this + 14) + 8 * v22) & v23) != 0)
      {
        v25 = *(this + 11);
        if (v24 >= *(v25 + 4 * v6))
        {
          v24 = *(v25 + 4 * v6);
        }

        *(v25 + 4 * v6) = v24;
      }

      goto LABEL_28;
    }

    v48 = *(&v55 + 1);
    LODWORD(__src) = v7;
    if (v56 == *(&v55 + 1))
    {
      v49 = 0;
    }

    else
    {
      v49 = ((v56 - *(&v55 + 1)) << 6) - 1;
    }

    v50 = *(&v57 + 1);
    v51 = *(&v57 + 1) + v57;
    if (v49 == *(&v57 + 1) + v57)
    {
      std::deque<std::pair<int,int>>::__add_back_capacity(&v55);
      v50 = *(&v57 + 1);
      v48 = *(&v55 + 1);
      v51 = v57 + *(&v57 + 1);
    }

    v52 = (*(v48 + ((v51 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v51 & 0x1FF));
    *v52 = v6;
    v52[1] = v7 + 1;
    *(&v57 + 1) = v50 + 1;
    v54 = 0;
    std::deque<std::pair<int,int>>::emplace_back<int &,int &>(&v55, &__src, &v54);
    v3 = *(&v57 + 1);
    if (!*(&v57 + 1))
    {
      return std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v55);
    }
  }

  v20 = v6;
LABEL_31:
  if (*(*(this + 11) + 4 * v20) == *(*(this + 8) + 4 * v20))
  {
    __src = 0;
    v60 = 0;
    v61 = 0;
    do
    {
      v26 = *(this + 7) + *(this + 6) - 1;
      v27 = *(*(*(this + 3) + ((v26 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v26 & 0x3FF));
      v28 = v60;
      if (v60 >= v61)
      {
        v30 = __src;
        v31 = v60 - __src;
        v32 = (v60 - __src) >> 2;
        v33 = v32 + 1;
        if ((v32 + 1) >> 62)
        {
          std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
        }

        v34 = v61 - __src;
        if ((v61 - __src) >> 1 > v33)
        {
          v33 = v34 >> 1;
        }

        v35 = v34 >= 0x7FFFFFFFFFFFFFFCLL;
        v36 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v35)
        {
          v36 = v33;
        }

        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v36);
        }

        *(4 * v32) = v27;
        v29 = 4 * v32 + 4;
        memcpy(0, v30, v31);
        v37 = __src;
        __src = 0;
        v60 = v29;
        v61 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v60 = v27;
        v29 = (v28 + 4);
      }

      v39 = *(this + 3);
      v38 = *(this + 4);
      v60 = v29;
      if (v38 == v39)
      {
        v40 = 0;
      }

      else
      {
        v40 = ((v38 - v39) << 7) - 1;
      }

      v41 = *(this + 6);
      v42 = *(this + 7) - 1;
      *(this + 7) = v42;
      if ((v40 - (v42 + v41)) >= 0x800)
      {
        operator delete(*(v38 - 8));
        *(this + 4) -= 8;
      }

      *(*(this + 14) + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v27);
    }

    while (v27 != v6);
    v43 = *(this + 21);
    if (v43 >= *(this + 22))
    {
      v44 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int>&>(this + 20, &__src);
    }

    else
    {
      std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int>&>(this + 160, &__src);
      v44 = (v43 + 24);
    }

    *(this + 21) = v44;
    if (__src)
    {
      v60 = __src;
      operator delete(__src);
    }
  }

  v3 = *(&v57 + 1);
  if (*(&v57 + 1))
  {
    v45 = *(*(*(&v55 + 1) + (((*(&v57 + 1) + v57 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v57 + 1) + v57 - 1) & 0x1FF));
    v46 = *(this + 11);
    v47 = *(v46 + 4 * v20);
    if (v47 >= *(v46 + 4 * v45))
    {
      v47 = *(v46 + 4 * v45);
    }

    *(v46 + 4 * v45) = v47;
    if (v3)
    {
      goto LABEL_2;
    }
  }

  return std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v55);
}

void sub_1B41B45EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  operator delete(v20);
  if (v19)
  {
    operator delete(v19);
  }

  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t CRTextRecognition::CRCTLD::CTLDRegion::CTLDRegion(uint64_t a1, int a2, void *a3, float a4, float a5, float a6, float a7)
{
  v13 = a3;
  *a1 = a2;
  *(a1 + 8) = v13;
  *(a1 + 16) = a6;
  *(a1 + 20) = a7;
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = a6;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = a4;
  *(a1 + 72) = a7;
  *(a1 + 80) = a5;
  *(a1 + 88) = a7;
  *(a1 + 96) = 0;
  return a1;
}

{
  v13 = a3;
  *a1 = a2;
  *(a1 + 8) = v13;
  *(a1 + 16) = a6;
  *(a1 + 20) = a7;
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = a6;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = a4;
  *(a1 + 72) = a7;
  *(a1 + 80) = a5;
  *(a1 + 88) = a7;
  *(a1 + 96) = 0;
  return a1;
}

uint64_t CRTextRecognition::CRCTLD::CTLDRegion::CTLDRegion(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, int a6, void *a7)
{
  v13 = a7;
  *a1 = a6;
  *(a1 + 8) = v13;
  *(a1 + 32) = *a2;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *a4;
  *(a1 + 80) = *a5;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  if (*(a1 + 56) < v14)
  {
    v14 = *(a1 + 56);
  }

  v16 = v14;
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  if (v17 >= *(a1 + 32))
  {
    v19 = *(a1 + 32);
  }

  else
  {
    v19 = *(a1 + 64);
  }

  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  if (v18 >= v21)
  {
    v22 = *(a1 + 72);
  }

  else
  {
    v22 = *(a1 + 88);
  }

  v23 = v22;
  *(a1 + 16) = v16;
  *(a1 + 20) = v23;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  if (v15 < v20)
  {
    v15 = v20;
  }

  v25 = v15;
  v24 = v19;
  *(a1 + 24) = v24;
  *(a1 + 28) = v25;
  v26 = 0.0;
  if (v21 != v18)
  {
    v28 = v20 - v17;
    if (v28 == 0.0)
    {
      v28 = 1.0;
    }

    v27 = v21 - v18;
    v26 = atanf(v27 / v28);
  }

  *(a1 + 96) = v26;
  return a1;
}

float CRTextRecognition::CRCTLD::CTLDRegion::getIntersectionArea(CRTextRecognition::CRCTLD::CTLDRegion *this, const CRTextRecognition::CRCTLD::CTLDRegion *a2)
{
  v2 = *(a2 + 6);
  v3 = *(this + 7);
  result = 0.0;
  if (v2 < v3)
  {
    v5 = *(a2 + 7);
    v6 = *(this + 6);
    if (v5 > v6)
    {
      v7 = *(a2 + 4);
      v8 = *(this + 5);
      if (v7 < v8)
      {
        v9 = *(a2 + 5);
        v10 = *(this + 4);
        if (v9 > v10)
        {
          if (v6 >= v2)
          {
            v11 = *(this + 6);
          }

          else
          {
            v11 = *(a2 + 6);
          }

          if (v10 >= v7)
          {
            v12 = *(this + 4);
          }

          else
          {
            v12 = *(a2 + 4);
          }

          if (v5 < v3)
          {
            v3 = *(a2 + 7);
          }

          if (v9 >= v8)
          {
            v13 = *(this + 5);
          }

          else
          {
            v13 = *(a2 + 5);
          }

          return (v3 - v11) * (v13 - v12);
        }
      }
    }
  }

  return result;
}

float CRTextRecognition::CRCTLD::CTLDRegion::rotate(CRTextRecognition::CRCTLD::CTLDRegion *this, float a2)
{
  v3.x = (*(this + 6) + *(this + 7)) * 0.5;
  v3.y = (*(this + 4) + *(this + 5)) * 0.5;
  return CRTextRecognition::CRCTLD::CTLDRegion::rotate(this, a2, v3);
}

float CRTextRecognition::CRCTLD::CTLDRegion::rotate(CRTextRecognition::CRCTLD::CTLDRegion *this, float a2, CGPoint a3)
{
  y = a3.y;
  x = a3.x;
  v7 = __sincosf_stret(a2);
  v8 = *(this + 4) - x;
  v9 = *(this + 5) - y;
  v10 = x + v8 * v7.__cosval - v9 * v7.__sinval;
  v11 = y + v9 * v7.__cosval + v8 * v7.__sinval;
  *(this + 4) = v10;
  *(this + 5) = v11;
  v12 = *(this + 6) - x;
  v13 = *(this + 7) - y;
  v14 = x + v12 * v7.__cosval - v13 * v7.__sinval;
  v15 = y + v13 * v7.__cosval + v12 * v7.__sinval;
  *(this + 6) = v14;
  *(this + 7) = v15;
  v16 = *(this + 8) - x;
  v17 = *(this + 9) - y;
  v18 = x + v16 * v7.__cosval - v17 * v7.__sinval;
  v19 = y + v17 * v7.__cosval + v16 * v7.__sinval;
  *(this + 8) = v18;
  *(this + 9) = v19;
  v20 = *(this + 10) - x;
  v21 = *(this + 11) - y;
  v22 = x + v20 * v7.__cosval - v21 * v7.__sinval;
  v23 = y + v21 * v7.__cosval + v20 * v7.__sinval;
  *(this + 10) = v22;
  *(this + 11) = v23;
  if (v18 >= v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = v18;
  }

  v25 = v24;
  if (v15 < v11)
  {
    v11 = v15;
  }

  v26 = v11;
  if (v14 >= v22)
  {
    v27 = v14;
  }

  else
  {
    v27 = x + v20 * v7.__cosval - v21 * v7.__sinval;
  }

  v28 = v27;
  *(this + 6) = v25;
  *(this + 7) = v28;
  if (v19 >= v23)
  {
    v23 = v19;
  }

  v29 = v23;
  *(this + 4) = v26;
  *(this + 5) = v29;
  result = *(this + 24) + a2;
  *(this + 24) = result;
  return result;
}

int8x16_t CRTextRecognition::CRCTLD::CTLDRegion::updateBoundingBox(CRTextRecognition::CRCTLD::CTLDRegion *this, float32x2_t a2, float a3, float a4, float a5)
{
  *(this + 6) = a2.i32[0];
  *(this + 7) = a3;
  a2.f32[1] = a4;
  v5 = vcvtq_f64_f32(a2);
  v6 = *(this + 3);
  v7 = vbslq_s8(vcgtq_f64(v5, *(this + 2)), v5, *(this + 2));
  v8.f64[0] = a3;
  v9.f64[0] = *(this + 6);
  v9.f64[1] = v5.f64[1];
  v10.f64[1] = *(this + 7);
  v10.f64[0] = v8.f64[0];
  *(this + 4) = a4;
  *(this + 5) = a5;
  v11 = vcgtq_f64(v9, v10);
  v9.f64[1] = v5.f64[1];
  v9.f64[0] = v8.f64[0];
  *(this + 2) = v7;
  *(this + 3) = vbslq_s8(v11, v9, v6);
  v5.f64[1] = a5;
  v12 = *(this + 4);
  v8.f64[1] = a5;
  v13.i64[0] = vuzp1_s16(vmovn_s64(vcgtq_f64(v5, v12)), *&v5.f64[0]).u16[0];
  v13.i64[1] = vuzp1_s16(vmovn_s64(vcgtq_f64(v12, v5)), *&v5).u16[1];
  result = vbslq_s8(vcltzq_s64(vshlq_n_s64(v13, 0x3FuLL)), v5, v12);
  v15 = vbslq_s8(vcgtq_f64(*(this + 5), v8), v8, *(this + 5));
  *(this + 4) = result;
  *(this + 5) = v15;
  return result;
}

void CRTextRecognition::CRCTLD::CTLDRegion::splitRegionIntoSubRectangles(float64x2_t *this@<X0>, float a2@<S0>, uint64_t *a3@<X8>)
{
  v5 = 0;
  v6 = vsubq_f64(this[3], this[2]);
  v7 = vsubq_f64(this[5], this[4]);
  v8 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v7, v7).f64[1]) + v7.f64[0] * v7.f64[0]);
  v9 = (v8 / a2);
  if (v9 >= 15)
  {
    v9 = 15;
  }

  if (v9 <= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = vdupq_lane_s64(COERCE__INT64(v10), 0);
  v12 = vcvt_f32_f64(vdivq_f64(v6, v11));
  v13 = vcvt_f32_f64(vdivq_f64(v7, v11));
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  do
  {
    v14 = this[2];
    v15 = v5 + 1;
    v40 = vaddq_f64(v14, vcvtq_f64_f32(vmul_n_f32(v12, (v5 + 1))));
    v41 = vaddq_f64(v14, vcvtq_f64_f32(vmul_n_f32(v12, v5)));
    v16 = this[4];
    v38 = vaddq_f64(v16, vcvtq_f64_f32(vmul_n_f32(v13, (v5 + 1))));
    v39 = vaddq_f64(v16, vcvtq_f64_f32(vmul_n_f32(v13, v5)));
    v17 = a3[1];
    v18 = a3[2];
    if (v17 >= v18)
    {
      v20 = (v17 - *a3) >> 7;
      if ((v20 + 1) >> 57)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v21 = v18 - *a3;
      v22 = v21 >> 6;
      if (v21 >> 6 <= (v20 + 1))
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFF80)
      {
        v23 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      v45 = a3;
      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>(a3, v23);
      }

      v24 = v20 << 7;
      v42 = 0;
      v43 = v24;
      *(&v44 + 1) = 0;
      CRTextRecognition::CRCTLD::CTLDRegion::CTLDRegion(v24, &v41, &v40, &v39, &v38, LODWORD(this->f64[0]), 0);
      *&v44 = v24 + 128;
      v25 = a3[1];
      v26 = v24 + *a3 - v25;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>(a3, *a3, v25, v26, v27, v28);
      v29 = *a3;
      *a3 = v26;
      v30 = a3[2];
      v37 = v44;
      *(a3 + 1) = v44;
      *&v44 = v29;
      *(&v44 + 1) = v30;
      v42 = v29;
      v43 = v29;
      std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(&v42);
      v19 = v37;
    }

    else
    {
      v19 = CRTextRecognition::CRCTLD::CTLDRegion::CTLDRegion(v17, &v41, &v40, &v39, &v38, LODWORD(this->f64[0]), 0) + 128;
    }

    a3[1] = v19;
    v46.x = (*(v19 - 104) + *(v19 - 100)) * 0.5;
    v46.y = (*(v19 - 112) + *(v19 - 108)) * 0.5;
    CRTextRecognition::CRCTLD::CTLDRegion::rotate((v19 - 128), -*this[6].f64, v46);
    if (v15 != 1)
    {
      v31 = a3[1] - *a3;
      v32 = *a3 + (((v31 << 25) - 0x100000000) >> 25);
      v33 = *(v32 + 16);
      v34 = *a3 + (((v31 << 25) - 0x200000000) >> 25);
      v35 = *(v34 + 16);
      if (v33 >= v35)
      {
        v36 = *(v34 + 20);
        if (v33 > v36)
        {
          *(v32 + 16) = v36;
        }
      }

      else if (*(v32 + 20) < v35)
      {
        *(v32 + 20) = v35;
      }
    }

    v5 = v15;
  }

  while (v15 != v10);
}

void sub_1B41B4E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL CRTextRecognition::CRCTLD::CTLDRegion::containsPoint(CRTextRecognition::CRCTLD::CTLDRegion *this, const CGPoint *a2)
{
  if (a2->x >= *(this + 6) && a2->x <= *(this + 7) && (y = a2->y, y >= *(this + 4)))
  {
    return y <= *(this + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t CRTextRecognition::CRCTLD::CTLDRegion::segmentIntersectsRegion(float *a1, CGPoint *a2)
{
  x = a2[1].x;
  v3 = a2->x;
  if (x >= a2->x)
  {
    v4 = a2->x;
  }

  else
  {
    v4 = a2[1].x;
  }

  v5 = a1[7];
  if (v4 > v5)
  {
    return 0;
  }

  v6 = v3 >= x ? a2->x : a2[1].x;
  v7 = a1[6];
  if (v6 < v7)
  {
    return 0;
  }

  y = a2[1].y;
  v9 = a2->y;
  v10 = y >= v9 ? a2->y : a2[1].y;
  v11 = a1[5];
  if (v10 > v11)
  {
    return 0;
  }

  v12 = v9 >= y ? a2->y : a2[1].y;
  v13 = a1[4];
  if (v12 < v13)
  {
    return 0;
  }

  v18 = v9 > v11 || v3 > v5 || v3 < v7 || v9 < v13;
  if (v18 && (x > v5 || x < v7 || y > v11 || y < v13))
  {
    operator new();
  }

  return 1;
}

BOOL CRTextRecognition::CRCTLD::CTLDRegion::segmentsIntersect(_BOOL8 a1, CGPoint *a2, CGPoint *a3)
{
  v3 = a2 + 1;
  x = a2[1].x;
  y = a2[1].y;
  v6 = a2->y;
  v7 = a3->y;
  v8 = x - a2->x;
  v9 = (y - v6) * (a3->x - x) - v8 * (v7 - y);
  v10 = 2 * (v9 < 0.0);
  if (v9 > 0.0)
  {
    v10 = 1;
  }

  v11 = a3 + 1;
  v12 = a3[1].x;
  v13 = a3[1].y;
  v14 = (y - v6) * (v12 - x) - v8 * (v13 - y);
  if (v14 > 0.0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * (v14 < 0.0);
  }

  v16 = v12 - a3->x;
  v17 = (v13 - v7) * (a2->x - v12) - v16 * (v6 - v13);
  if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2 * (v17 < 0.0);
  }

  v19 = (v13 - v7) * (x - v12) - v16 * (y - v13);
  if (v19 > 0.0)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2 * (v19 < 0.0);
  }

  v21 = v10 == v15 || v18 == v20;
  result = 1;
  if (v21 && (v10 || !(a1 = CRTextRecognition::CRCTLD::CTLDRegion::segmentsIntersectionOnSegment(a1, a2, a3, a2 + 1))) && (v15 || !(a1 = CRTextRecognition::CRCTLD::CTLDRegion::segmentsIntersectionOnSegment(a1, a2, v11, v3))) && (v18 || !(a1 = CRTextRecognition::CRCTLD::CTLDRegion::segmentsIntersectionOnSegment(a1, a3, a2, v11))) && (v20 || !CRTextRecognition::CRCTLD::CTLDRegion::segmentsIntersectionOnSegment(a1, a3, v3, v11)))
  {
    return 0;
  }

  return result;
}

uint64_t CRTextRecognition::CRCTLD::CTLDRegion::segmentsIntersectionOrientation(CRTextRecognition::CRCTLD::CTLDRegion *this, const CGPoint *a2, const CGPoint *a3, const CGPoint *a4)
{
  v4 = (a3->y - a2->y) * (a4->x - a3->x) - (a3->x - a2->x) * (a4->y - a3->y);
  if (v4 > 0.0)
  {
    return 1;
  }

  else
  {
    return 2 * (v4 < 0.0);
  }
}

BOOL CRTextRecognition::CRCTLD::CTLDRegion::segmentsIntersectionOnSegment(CRTextRecognition::CRCTLD::CTLDRegion *this, const CGPoint *a2, const CGPoint *a3, const CGPoint *a4)
{
  x = a3->x;
  v5 = a2->x;
  if (a2->x >= a4->x)
  {
    v6 = a2->x;
  }

  else
  {
    v6 = a4->x;
  }

  if (x > v6)
  {
    return 0;
  }

  if (a4->x < v5)
  {
    v5 = a4->x;
  }

  if (x < v5)
  {
    return 0;
  }

  y = a3->y;
  v8 = a2->y;
  v9 = a4->y;
  v10 = v8 >= v9 ? a2->y : a4->y;
  if (y > v10)
  {
    return 0;
  }

  if (v9 < v8)
  {
    v8 = a4->y;
  }

  return y >= v8;
}

float CRTextRecognition::CRCTLD::CTLDRegion::yPointOnSegment(float a1, uint64_t a2, double *a3)
{
  v3 = a1;
  v4 = *a3;
  if (*a3 >= v3)
  {
    return a3[1];
  }

  v5 = a3[2];
  if (v5 <= v3)
  {
    return a3[3];
  }

  v6 = v5 - v4;
  if (v6 <= 0.0)
  {
    return a3[1];
  }

  else
  {
    v7 = a3[1];
    v8 = a3[3] - v7;
    return v7 + (v3 - v4) / v6 * v8;
  }
}

BOOL CRTextRecognition::CRCTLD::CTLDRegion::segmentIsAbove(uint64_t a1, double *a2, double *a3)
{
  v5 = *a2;
  if (*a2 < *a3)
  {
    v5 = *a3;
  }

  v6 = v5;
  v7 = a3[2];
  if (v7 >= a2[2])
  {
    v7 = a2[2];
  }

  v8 = v7;
  if (v6 <= v8)
  {
    v12 = CRTextRecognition::CRCTLD::CTLDRegion::yPointOnSegment(v6, a1, a2);
    if (v12 >= CRTextRecognition::CRCTLD::CTLDRegion::yPointOnSegment(v6, v13, a3))
    {
      return 0;
    }

    v15 = CRTextRecognition::CRCTLD::CTLDRegion::yPointOnSegment(v8, v14, a2);
    return v15 < CRTextRecognition::CRCTLD::CTLDRegion::yPointOnSegment(v8, v16, a3);
  }

  else
  {
    v9 = a2[1];
    if (v9 < a2[3])
    {
      v9 = a2[3];
    }

    v10 = a3[3];
    if (v10 >= a3[1])
    {
      v10 = a3[1];
    }

    return v9 < v10;
  }
}

BOOL CRTextRecognition::CRCTLD::CTLDRegion::pointIsAboveCenterline(CRTextRecognition::CRCTLD::CTLDRegion *this, const CGPoint *a2)
{
  v2 = (*(this + 6) + *(this + 10)) * 0.5;
  v3 = (*(this + 7) + *(this + 11)) * 0.5;
  v4 = (v3 - (*(this + 9) + *(this + 5)) * 0.5) * (a2->x - v2) - (v2 - (*(this + 8) + *(this + 4)) * 0.5) * (a2->y - v3);
  return v4 > 0.0;
}

BOOL CRTextRecognition::CRCTLD::CTLDRegion::operator<(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == v6 && *(a1 + 24) == *(a2 + 24) && *(a1 + 20) == *(a2 + 20) && *(a1 + 28) == *(a2 + 28))
  {
    return 0;
  }

  v7 = *(a1 + 20);
  if (v7 < v6)
  {
    return 1;
  }

  v9 = *(a2 + 20);
  if (v5 > v9)
  {
    return 0;
  }

  if (v9 >= v7)
  {
    v10 = *(a1 + 20);
  }

  else
  {
    v10 = *(a2 + 20);
  }

  if (v5 < v6)
  {
    v4 = (a2 + 16);
  }

  v11 = v10 - *v4;
  if (v11 <= 0.0)
  {
    if (*(a1 + 28) < *(a2 + 24))
    {
      return 1;
    }

    if (*(a1 + 24) > *(a2 + 28))
    {
      return 0;
    }
  }

  v12 = v7 - v5;
  if ((v7 - v5) == 0.0)
  {
    return *(a1 + 24) < *(a2 + 24);
  }

  v13 = v9 - v6;
  if ((v9 - v6) == 0.0)
  {
    return *(a1 + 24) < *(a2 + 24);
  }

  v14 = *(a1 + 28) - *(a1 + 24);
  if (v14 == 0.0)
  {
    return *(a1 + 24) < *(a2 + 24);
  }

  v15 = *(a2 + 28) - *(a2 + 24);
  if (v15 == 0.0)
  {
    return *(a1 + 24) < *(a2 + 24);
  }

  v57 = *(a1 + 24);
  v58 = *(a2 + 24);
  v55 = *(a1 + 28);
  v56 = *(a2 + 28);
  v51 = *(a1 + 20);
  v52 = *(a2 + 20);
  v53 = *(a1 + 16);
  v54 = *(a2 + 16);
  v16 = *(a1 + 80);
  v65 = *(a1 + 64);
  v66 = v16;
  v17 = *(a2 + 48);
  v63 = *(a2 + 32);
  v64 = v17;
  IsAbove = CRTextRecognition::CRCTLD::CTLDRegion::segmentIsAbove(a1, &v65.x, &v63);
  if (IsAbove)
  {
    return 1;
  }

  v19 = *(a2 + 80);
  v65 = *(a2 + 64);
  v66 = v19;
  v20 = *(a1 + 48);
  v63 = *(a1 + 32);
  v64 = v20;
  v21 = CRTextRecognition::CRCTLD::CTLDRegion::segmentIsAbove(IsAbove, &v65.x, &v63);
  if (v21)
  {
    return 0;
  }

  if (v13 >= v12)
  {
    v22 = v12;
  }

  else
  {
    v22 = v13;
  }

  v23 = v11 / v22;
  v24 = v55;
  if (v56 < v55)
  {
    v24 = v56;
  }

  v25 = v57;
  if (v57 < v58)
  {
    v25 = v58;
  }

  v26 = v24 - v25;
  v27 = v15 >= v14 ? v14 : v15;
  v28 = v26 / v27;
  if (v28 > 0.5 && v28 >= v23)
  {
    v30 = *(a1 + 48);
    v65 = *(a1 + 32);
    v66 = v30;
    v31 = *(a2 + 48);
    v63 = *(a2 + 32);
    v64 = v31;
    v32 = CRTextRecognition::CRCTLD::CTLDRegion::segmentIsAbove(v21, &v65.x, &v63);
    if (v32)
    {
      v33 = *(a1 + 80);
      v61 = *(a1 + 64);
      v62 = v33;
      v34 = *(a2 + 80);
      v59 = *(a2 + 64);
      v60 = v34;
      v32 = CRTextRecognition::CRCTLD::CTLDRegion::segmentIsAbove(v32, &v61, &v59);
      if (v32)
      {
        return 1;
      }
    }

    v35 = *(a2 + 48);
    v65 = *(a2 + 32);
    v66 = v35;
    v36 = *(a1 + 48);
    v63 = *(a1 + 32);
    v64 = v36;
    v37 = CRTextRecognition::CRCTLD::CTLDRegion::segmentIsAbove(v32, &v65.x, &v63);
    if (v37)
    {
      v38 = *(a2 + 80);
      v61 = *(a2 + 64);
      v62 = v38;
      v39 = *(a1 + 80);
      v59 = *(a1 + 64);
      v60 = v39;
      if (CRTextRecognition::CRCTLD::CTLDRegion::segmentIsAbove(v37, &v61, &v59))
      {
        return 0;
      }
    }
  }

  IntersectionArea = CRTextRecognition::CRCTLD::CTLDRegion::getIntersectionArea(a1, a2);
  if ((IntersectionArea / (v13 * v15)) >= 0.95)
  {
    __asm { FMOV            V1.2D, #0.5 }

    v65 = vmulq_f64(vcvtq_f64_f32(vadd_f32(__PAIR64__(LODWORD(v54), LODWORD(v56)), __PAIR64__(LODWORD(v52), LODWORD(v58)))), _Q1);
    if (CRTextRecognition::CRCTLD::CTLDRegion::pointIsAboveCenterline(a1, &v65))
    {
      return 0;
    }
  }

  if ((IntersectionArea / (v12 * v14)) >= 0.95)
  {
    __asm { FMOV            V1.2D, #0.5 }

    v65 = vmulq_f64(vcvtq_f64_f32(vadd_f32(__PAIR64__(LODWORD(v53), LODWORD(v55)), __PAIR64__(LODWORD(v51), LODWORD(v57)))), _Q1);
    if (CRTextRecognition::CRCTLD::CTLDRegion::pointIsAboveCenterline(a2, &v65))
    {
      return 1;
    }
  }

  if (v23 <= 0.5)
  {
    v48 = v53;
    v49 = v54;
    v47 = v57;
    if (v53 < v54)
    {
      return 1;
    }

    goto LABEL_54;
  }

  v47 = v57;
  if (v57 < v58)
  {
    return 1;
  }

  result = v58 >= v57;
  v48 = v53;
  v49 = v54;
  if (v53 >= v54 && v58 >= v57)
  {
LABEL_54:
    result = v49 >= v48;
    if (v49 < v48 || v47 < v58)
    {
      return result;
    }

    if (v58 >= v47)
    {
      v50 = v55 < v56;
      if (v51 < v52)
      {
        v50 = 1;
      }

      if (v51 <= v52)
      {
        return v50;
      }

      else
      {
        return v51 < v52;
      }
    }

    return 0;
  }

  return result;
}

uint64_t CRTextRecognition::CRCTLD::CTLDRegion::addMember(CRTextRecognition::CRCTLD::CTLDRegion *this, const CRTextRecognition::CRCTLD::CTLDRegion *a2)
{
  v4 = *(this + 13);
  v5 = *(this + 14);
  v3 = (this + 104);
  if (v5 == v4)
  {
    *(this + 1) = *(a2 + 1);
    *(this + 2) = *(a2 + 2);
    *(this + 3) = *(a2 + 3);
    *(this + 4) = *(a2 + 4);
    *(this + 5) = *(a2 + 5);
    v15 = *(a2 + 24);
  }

  else
  {
    v6 = *(a2 + 6);
    v7 = *(this + 7);
    if (v6 >= *(this + 6))
    {
      v6 = *(this + 6);
    }

    *(this + 6) = v6;
    v8 = *(a2 + 7);
    if (v7 >= v8)
    {
      v8 = v7;
    }

    *(this + 7) = v8;
    v9 = *(a2 + 4);
    v10 = *(this + 5);
    if (v9 >= *(this + 4))
    {
      v9 = *(this + 4);
    }

    *(this + 4) = v9;
    v11 = *(a2 + 5);
    if (v10 >= v11)
    {
      v11 = v10;
    }

    *(this + 5) = v11;
    v12 = v6;
    v13 = v9;
    *(this + 4) = v12;
    *(this + 5) = v13;
    v14 = v8;
    *(this + 6) = v14;
    *(this + 7) = v13;
    *(this + 8) = v12;
    *(this + 9) = v11;
    *(this + 10) = v14;
    *(this + 11) = v11;
    v15 = 0;
  }

  *(this + 24) = v15;
  if (v5 >= *(this + 15))
  {
    result = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion const&>(v3, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion const&,0>(v5, a2);
    result = v5 + 128;
    *(this + 14) = v5 + 128;
  }

  *(this + 14) = result;
  return result;
}

BOOL CRTextRecognition::CRCTLD::CTLDRegion::isFlat(CRTextRecognition::CRCTLD::CTLDRegion *this)
{
  v2 = *(this + 13);
  v1 = *(this + 14);
  if (v2 == v1)
  {
    return 1;
  }

  v3 = v2 + 128;
  do
  {
    v4 = *(v3 - 24);
    v5 = *(v3 - 16);
    result = v4 == v5;
    v7 = v4 != v5 || v3 == v1;
    v3 += 128;
  }

  while (!v7);
  return result;
}

uint64_t CRTextRecognition::CRCTLD::CTLDRegion::isOrdered(CRTextRecognition::CRCTLD::CTLDRegion *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    return 1;
  }

  while (1)
  {
    v3 = v1 + 128;
    if (v1 + 128 == v2)
    {
      break;
    }

    v4 = CRTextRecognition::CRCTLD::CTLDRegion::operator<(v1 + 128, v1);
    v1 = v3;
    if (v4)
    {
      return v3 == v2;
    }
  }

  v3 = v2;
  return v3 == v2;
}

float CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::getCharacterSize(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    memset(__p, 0, sizeof(__p));
    v4 = (v3 - v2) >> 7;
    if (!(v4 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__p, v4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return 1.0;
}

void sub_1B41B5F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::getInitialNodeWithObstacles@<S0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = *(*a2 + 24);
  v7 = *(*a2 + 28);
  v10 = *(*a2 + 16);
  v9 = *(*a2 + 20);
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 20) = v9;
  *(a3 + 24) = v8;
  *(a3 + 28) = v7;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 32) = v8;
  *(a3 + 40) = v10;
  *(a3 + 48) = v7;
  *(a3 + 56) = v10;
  *(a3 + 64) = v8;
  *(a3 + 72) = v9;
  *(a3 + 80) = v7;
  *(a3 + 88) = v9;
  *(a3 + 96) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *a3 = *v5;
  if (v5 != v6)
  {
    if (*(v5 + 24) < v8)
    {
      v8 = *(v5 + 24);
    }

    *(a3 + 24) = v8;
    if (v7 < *(v5 + 28))
    {
      v7 = *(v5 + 28);
    }

    *(a3 + 28) = v7;
    if (*(v5 + 16) < v10)
    {
      v10 = *(v5 + 16);
    }

    *(a3 + 16) = v10;
    if (v9 < *(v5 + 20))
    {
      v9 = *(v5 + 20);
    }

    *(a3 + 20) = v9;
    std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDObstacle>>(1uLL);
  }

  v11 = powf(v9 - v10, *(a1 + 40));
  result = v11 * powf(v7 - v8, *(a1 + 44));
  *(a3 + 152) = result;
  return result;
}

void CRTextRecognition::CRCTLD::CTLDNode::~CTLDNode(CRTextRecognition::CRCTLD::CTLDNode *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = (this + 104);
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::findWhitespaceRegions(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, float a4@<S0>)
{
  v6 = a1;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  v8 = *(a1 + 4);
  v116 = *(a1 + 8);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::reserve(a3, v8);
  CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::getInitialNodeWithObstacles(v6, a2, v108);
  v84 = a3;
  CRTextRecognition::CRCTLD::CTLDPriorityQueue::push(&v113, v108);
  v85 = v6;
  do
  {
    v9 = v113;
    if (v114 == v113)
    {
      break;
    }

    v95 = *v113;
    v96 = *(v113 + 8);
    v10 = *(v9 + 32);
    v97 = *(v9 + 16);
    v98 = v10;
    v11 = *(v9 + 48);
    v12 = *(v9 + 64);
    v13 = *(v9 + 80);
    v102 = *(v9 + 96);
    v100 = v12;
    v101 = v13;
    v99 = v11;
    memset(v103, 0, sizeof(v103));
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(v103, *(v9 + 104), *(v9 + 112), (*(v9 + 112) - *(v9 + 104)) >> 7);
    v104 = 0;
    v105 = 0;
    v106 = 0;
    std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDObstacle*,CRTextRecognition::CRCTLD::CTLDObstacle*>(&v104, *(v9 + 128), *(v9 + 136), (*(v9 + 136) - *(v9 + 128)) >> 4);
    v107 = *(v9 + 152);
    v15 = v113;
    v14 = v114;
    if (v114 - v113 >= 161)
    {
      v16 = 0;
      v87 = *v113;
      LODWORD(v117) = *v113;
      v17 = 0xCCCCCCCCCCCCCCCDLL * ((v114 - v113) >> 5);
      v18 = *(v113 + 8);
      *(v113 + 8) = 0;
      v19 = *(v15 + 32);
      v119 = *(v15 + 16);
      v120 = v19;
      v21 = *(v15 + 64);
      v20 = *(v15 + 80);
      v22 = *(v15 + 48);
      v124 = *(v15 + 96);
      v122 = v21;
      v123 = v20;
      v121 = v22;
      v125 = *(v15 + 104);
      v23 = *(v15 + 120);
      v24 = *(v15 + 128);
      v86 = v18;
      v118 = v18;
      v126 = v23;
      *(v15 + 104) = 0;
      *(v15 + 112) = 0;
      *(v15 + 120) = 0;
      v25 = *(v15 + 144);
      v89 = *(v15 + 136);
      v90 = v24;
      __p[0] = v24;
      __p[1] = v89;
      v88 = v25;
      v128 = v25;
      *(v15 + 128) = 0;
      *(v15 + 136) = 0;
      *(v15 + 144) = 0;
      v26 = v15;
      v129 = *(v15 + 152);
      do
      {
        v27 = v26;
        v26 += 160 * v16 + 160;
        v28 = 2 * v16;
        v16 = (2 * v16) | 1;
        v29 = v28 + 2;
        if (v29 < v17 && *(v26 + 152) < *(v26 + 312))
        {
          v26 += 160;
          v16 = v29;
        }

        *v27 = *v26;
        v30 = *(v26 + 8);
        *(v26 + 8) = 0;
        v31 = *(v27 + 8);
        *(v27 + 8) = v30;

        v32 = *(v26 + 32);
        *(v27 + 16) = *(v26 + 16);
        *(v27 + 32) = v32;
        v33 = *(v26 + 48);
        v34 = *(v26 + 64);
        v35 = *(v26 + 80);
        *(v27 + 96) = *(v26 + 96);
        *(v27 + 64) = v34;
        *(v27 + 80) = v35;
        *(v27 + 48) = v33;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v27 + 104));
        *(v27 + 104) = *(v26 + 104);
        *(v27 + 120) = *(v26 + 120);
        *(v26 + 104) = 0;
        *(v26 + 112) = 0;
        *(v26 + 120) = 0;
        std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__move_assign(v27 + 128, (v26 + 128));
        *(v27 + 152) = *(v26 + 152);
      }

      while (v16 <= ((v17 - 2) >> 1));
      if (v14 - 160 == v26)
      {
        *v26 = v87;
        v118 = 0;
        v50 = *(v26 + 8);
        *(v26 + 8) = v86;

        v51 = v120;
        *(v26 + 16) = v119;
        *(v26 + 32) = v51;
        v52 = v121;
        v53 = v122;
        v54 = v123;
        *(v26 + 96) = v124;
        *(v26 + 64) = v53;
        *(v26 + 80) = v54;
        *(v26 + 48) = v52;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v26 + 104));
        *(v26 + 104) = v125;
        *(v26 + 120) = v126;
        v125 = 0uLL;
        v126 = 0;
        v55 = *(v26 + 128);
        v6 = v85;
        if (v55)
        {
          *(v26 + 136) = v55;
          operator delete(v55);
          *(v26 + 128) = 0;
          *(v26 + 136) = 0;
          *(v26 + 144) = 0;
        }

        *(v26 + 128) = *__p;
        *(v26 + 144) = v128;
        __p[0] = 0;
        __p[1] = 0;
        v128 = 0;
        *(v26 + 152) = v129;
      }

      else
      {
        *v26 = *(v14 - 160);
        v36 = *(v14 - 152);
        *(v14 - 152) = 0;
        v37 = *(v26 + 8);
        *(v26 + 8) = v36;

        v38 = *(v14 - 128);
        *(v26 + 16) = *(v14 - 144);
        *(v26 + 32) = v38;
        v39 = *(v14 - 112);
        v40 = *(v14 - 96);
        v41 = *(v14 - 80);
        *(v26 + 96) = *(v14 - 64);
        *(v26 + 64) = v40;
        *(v26 + 80) = v41;
        *(v26 + 48) = v39;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v26 + 104));
        v42 = (v14 - 56);
        *(v26 + 104) = *(v14 - 56);
        *(v26 + 120) = *(v14 - 40);
        *v42 = 0;
        v42[1] = 0;
        v42[2] = 0;
        std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__move_assign(v26 + 128, (v14 - 32));
        *(v26 + 152) = *(v14 - 8);
        *(v14 - 160) = v117;
        v43 = v118;
        v118 = 0;
        v44 = *(v14 - 152);
        *(v14 - 152) = v43;

        v45 = v120;
        *(v14 - 144) = v119;
        *(v14 - 128) = v45;
        v46 = v121;
        v47 = v122;
        v48 = v123;
        *(v14 - 64) = v124;
        *(v14 - 96) = v47;
        *(v14 - 80) = v48;
        *(v14 - 112) = v46;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v14 - 56));
        *v42 = v125;
        *(v14 - 40) = v126;
        v125 = 0uLL;
        v126 = 0;
        v49 = *(v14 - 32);
        v6 = v85;
        if (v49)
        {
          *(v14 - 24) = v49;
          operator delete(v49);
        }

        *(v14 - 32) = v90;
        *(v14 - 24) = v89;
        *(v14 - 16) = v88;
        __p[0] = 0;
        __p[1] = 0;
        v128 = 0;
        *(v14 - 8) = v129;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDNode *>>(v15, v26 + 160, 0xCCCCCCCCCCCCCCCDLL * ((v26 + 160 - v15) >> 5));
      }

      v94[0] = &v125;
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v94);

      v14 = v114;
    }

    std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDNode>>::destroy[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDNode,0>(v14 - 160);
    v114 = v14 - 160;
    isWhitespaceCandidate = CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::isWhitespaceCandidate(v6, &v95);
    if (isWhitespaceCandidate)
    {
      if ((*(&v97 + 1) - *&v97) >= (*(v6 + 16) * a4) && (*(&v97 + 3) - *(&v97 + 2)) >= (*(v6 + 12) * a4))
      {
        v57 = v84[1];
        if (v57 >= v84[2])
        {
          v58 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion&>(v84, &v95);
        }

        else
        {
          std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(v84[1], &v95);
          v58 = v57 + 128;
        }

        v84[1] = v58;
        if (*(v6 + 4) <= ((v58 - *v84) >> 7))
        {
          v68 = 1;
          goto LABEL_31;
        }

        v69 = v113;
        v70 = v114;
        if (v113 != v114)
        {
          v91 = v58 - 128;
          do
          {
            if (*(v58 - 104) < *(v69 + 28) && *(v58 - 100) > *(v69 + 24) && *(v58 - 112) < *(v69 + 20) && *(v58 - 108) > *(v69 + 16))
            {
              v72 = *(v69 + 136);
              v71 = *(v69 + 144);
              if (v72 >= v71)
              {
                v74 = *(v69 + 128);
                v75 = (v72 - v74) >> 4;
                v76 = v75 + 1;
                if ((v75 + 1) >> 60)
                {
                  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
                }

                v77 = v71 - v74;
                if (v77 >> 3 > v76)
                {
                  v76 = v77 >> 3;
                }

                if (v77 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v78 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v78 = v76;
                }

                if (v78)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDObstacle>>(v78);
                }

                v79 = 16 * v75;
                *v79 = v91;
                *(v79 + 8) = 1;
                v73 = 16 * v75 + 16;
                v80 = *(v69 + 128);
                v81 = *(v69 + 136) - v80;
                v82 = v79 - v81;
                memcpy((v79 - v81), v80, v81);
                v83 = *(v69 + 128);
                *(v69 + 128) = v82;
                *(v69 + 136) = v73;
                *(v69 + 144) = 0;
                if (v83)
                {
                  operator delete(v83);
                }
              }

              else
              {
                *v72 = v91;
                *(v72 + 8) = 1;
                v73 = v72 + 16;
              }

              *(v69 + 136) = v73;
            }

            v69 += 160;
          }

          while (v69 != v70);
        }
      }
    }

    else
    {
      v59 = CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::pickPivot(isWhitespaceCandidate, &v95);
      CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::getSubregions(v94, &v95, v59, v60);
      v62 = v94[0];
      v61 = v94[1];
      while (v62 != v61)
      {
        v63 = *(v62 + 6);
        v64 = *(v62 + 7);
        v65 = *(v62 + 4);
        v66 = *(v62 + 5);
        LODWORD(v117) = -1;
        v118 = 0;
        *&v119 = __PAIR64__(LODWORD(v66), LODWORD(v65));
        *(&v119 + 1) = __PAIR64__(LODWORD(v64), LODWORD(v63));
        v126 = 0;
        v125 = 0uLL;
        *&v120 = v63;
        *(&v120 + 1) = v65;
        *&v121 = v64;
        *(&v121 + 1) = v65;
        *&v122 = v63;
        *(&v122 + 1) = v66;
        *&v123 = v64;
        *(&v123 + 1) = v66;
        v124 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v129 = 0.0;
        v128 = 0;
        LODWORD(v117) = *v62;
        v67 = powf(*(v62 + 5) - *(v62 + 4), *(v6 + 40));
        v129 = v67 * powf(*(v62 + 7) - *(v62 + 6), *(v6 + 44));
        CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::getIntersectingObstacles(v62, &v104, &v92);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v92;
        v128 = v93;
        CRTextRecognition::CRCTLD::CTLDPriorityQueue::push(&v113, &v117);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *&v92 = &v125;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v92);

        v62 += 16;
      }

      v117 = v94;
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v117);
    }

    v68 = 0;
LABEL_31:
    if (v104)
    {
      v105 = v104;
      operator delete(v104);
    }

    v117 = v103;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v117);
  }

  while ((v68 & 1) == 0);
  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  v117 = &v110;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v117);

  v117 = &v113;
  std::vector<CRTextRecognition::CRCTLD::CTLDNode>::__destroy_vector::operator()[abi:ne200100](&v117);
}

void sub_1B41B6A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  CRTextRecognition::CRCTLD::CTLDNode::~CTLDNode(&a23);
  CRTextRecognition::CRCTLD::CTLDNode::~CTLDNode(&a43);
  a65 = a9;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&a65);
  a65 = &a63;
  std::vector<CRTextRecognition::CRCTLD::CTLDNode>::__destroy_vector::operator()[abi:ne200100](&a65);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>(result, a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B41B6BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CRTextRecognition::CRCTLD::CTLDPriorityQueue::push(CRTextRecognition::CRCTLD::CTLDPriorityQueue *this, id *a2)
{
  v4 = *(this + 6);
  v5 = *(this + 1);
  if (v4 >= 1 && 0xCCCCCCCCCCCCCCCDLL * ((v5 - *this) >> 5) == v4)
  {
    v5 -= 160;
    std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDNode>>::destroy[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDNode,0>(v5);
    *(this + 1) = v5;
  }

  v6 = *(this + 2);
  if (v5 >= v6)
  {
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *this) >> 5);
    if (v14 + 1 > 0x199999999999999)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *this) >> 5);
    v16 = 2 * v15;
    if (2 * v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0xCCCCCCCCCCCCCCLL)
    {
      v17 = 0x199999999999999;
    }

    else
    {
      v17 = v16;
    }

    v38 = this;
    if (v17)
    {
      if (v17 <= 0x199999999999999)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = 160 * v14;
    v34 = 0;
    v35 = v18;
    v36 = v18;
    v37 = 0;
    *v18 = *a2;
    *(v18 + 8) = a2[1];
    v19 = *(a2 + 4);
    *(v18 + 48) = *(a2 + 3);
    *(v18 + 64) = v19;
    *(v18 + 80) = *(a2 + 5);
    *(v18 + 96) = *(a2 + 24);
    v20 = *(a2 + 2);
    *(v18 + 16) = *(a2 + 1);
    *(v18 + 32) = v20;
    *(v18 + 112) = 0;
    *(v18 + 120) = 0;
    v21 = a2[13];
    v22 = a2[14];
    *(v18 + 104) = 0;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>((v18 + 104), v21, v22, (v22 - v21) >> 7);
    *(v18 + 128) = 0;
    *(v18 + 136) = 0;
    *(v18 + 144) = 0;
    std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDObstacle*,CRTextRecognition::CRCTLD::CTLDObstacle*>((v18 + 128), a2[16], a2[17], (a2[17] - a2[16]) >> 4);
    *(v18 + 152) = *(a2 + 38);
    v13 = v36 + 160;
    v23 = *this;
    v24 = *(this + 1);
    v25 = v35 + *this - v24;
    if (*this != v24)
    {
      v26 = v35 + *this - v24;
      v27 = *this;
      do
      {
        *v26 = *v27;
        v28 = *(v27 + 8);
        *(v27 + 8) = 0;
        *(v26 + 8) = v28;
        v29 = *(v27 + 32);
        *(v26 + 16) = *(v27 + 16);
        *(v26 + 32) = v29;
        v30 = *(v27 + 48);
        v31 = *(v27 + 64);
        v32 = *(v27 + 80);
        *(v26 + 96) = *(v27 + 96);
        *(v26 + 64) = v31;
        *(v26 + 80) = v32;
        *(v26 + 48) = v30;
        *(v26 + 112) = 0;
        *(v26 + 120) = 0;
        *(v26 + 104) = 0;
        *(v26 + 104) = *(v27 + 104);
        *(v26 + 120) = *(v27 + 120);
        *(v27 + 104) = 0;
        *(v27 + 112) = 0;
        *(v27 + 120) = 0;
        *(v26 + 128) = 0;
        *(v26 + 136) = 0;
        *(v26 + 144) = 0;
        *(v26 + 128) = *(v27 + 128);
        *(v26 + 144) = *(v27 + 144);
        *(v27 + 128) = 0;
        *(v27 + 136) = 0;
        *(v27 + 144) = 0;
        *(v26 + 152) = *(v27 + 152);
        v27 += 160;
        v26 += 160;
      }

      while (v27 != v24);
      do
      {
        std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDNode>>::destroy[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDNode,0>(v23);
        v23 += 160;
      }

      while (v23 != v24);
      v23 = *this;
    }

    *this = v25;
    *(this + 1) = v13;
    v33 = *(this + 2);
    *(this + 2) = v37;
    v36 = v23;
    v37 = v33;
    v34 = v23;
    v35 = v23;
    std::__split_buffer<CRTextRecognition::CRCTLD::CTLDNode>::~__split_buffer(&v34);
  }

  else
  {
    *v5 = *a2;
    *(v5 + 8) = a2[1];
    v7 = *(a2 + 3);
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    v10 = *(a2 + 24);
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    *(v5 + 104) = 0;
    *(v5 + 32) = v12;
    *(v5 + 16) = v11;
    *(v5 + 96) = v10;
    *(v5 + 80) = v9;
    *(v5 + 64) = v8;
    *(v5 + 48) = v7;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>((v5 + 104), a2[13], a2[14], (a2[14] - a2[13]) >> 7);
    *(v5 + 128) = 0;
    *(v5 + 136) = 0;
    *(v5 + 144) = 0;
    std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDObstacle*,CRTextRecognition::CRCTLD::CTLDObstacle*>((v5 + 128), a2[16], a2[17], (a2[17] - a2[16]) >> 4);
    *(v5 + 152) = *(a2 + 38);
    v13 = v5 + 160;
    *(this + 1) = v5 + 160;
  }

  *(this + 1) = v13;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDNode *>>(*this, v13, 0xCCCCCCCCCCCCCCCDLL * ((v13 - *this) >> 5));
}

void sub_1B41B6EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CRTextRecognition::CRCTLD::CTLDRegion::~CTLDRegion(v3);
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::isWhitespaceCandidate(float *a1, CRTextRecognition::CRCTLD::CTLDRegion *this)
{
  v2 = *(this + 17);
  v3 = *(this + 16);
  if (v2 == v3)
  {
    return 1;
  }

  v6 = (*(this + 7) - *(this + 6)) * (*(this + 5) - *(this + 4));
  v7 = 0.0;
  while (1)
  {
    v8 = *v3;
    IntersectionArea = CRTextRecognition::CRCTLD::CTLDRegion::getIntersectionArea(this, *v3);
    if (*(v3 + 8))
    {
      break;
    }

    if (IntersectionArea > 0.0)
    {
      return 0;
    }

    v12 = *a1;
LABEL_11:
    v7 = v7 + IntersectionArea;
    if (v7 > (v6 * v12))
    {
      return 0;
    }

    v3 += 16;
    if (v3 == v2)
    {
      return 1;
    }
  }

  v10 = v8[5] - v8[4];
  if (((v8[7] - v8[6]) * v10) >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = (v8[7] - v8[6]) * v10;
  }

  v12 = *a1;
  if (IntersectionArea <= (*a1 * v11))
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::pickPivot(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(a2 + 136);
  v4 = v3 - v2;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = v4 >> 4;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = 3.4028e38;
    v9 = *(a2 + 128);
    do
    {
      v10 = *v9;
      v9 += 2;
      v11 = ((v10[6] + v10[7]) * 0.5) - ((*(a2 + 24) + *(a2 + 28)) * 0.5);
      v12 = ((v10[4] + v10[5]) * 0.5) - ((*(a2 + 16) + *(a2 + 20)) * 0.5);
      v13 = (v12 * v12) + (v11 * v11);
      if (v13 < v8)
      {
        v8 = v13;
        v5 = v6;
      }

      ++v6;
    }

    while (v7 != v6);
  }

  return *(v2 + 16 * v5);
}

uint64_t *CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::getSubregions@<X0>(uint64_t *__return_ptr a1@<X8>, const CRTextRecognition::CRCTLD::CTLDRegion *a2@<X1>, const CRTextRecognition::CRCTLD::CTLDRegion *a3@<X2>, uint64_t a4@<X5>)
{
  result = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = (a2 + 28);
  if (*(a2 + 7) > *(a3 + 7))
  {
    result = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<float const&,float const&,float const&,float const&>(a1, a3 + 7, v8, a2 + 4, a2 + 5, a4);
    a1[1] = result;
  }

  v9 = (a2 + 24);
  v10 = *(a2 + 6);
  v11 = *(a3 + 6);
  if (v10 < v11)
  {
    if (result >= a1[2])
    {
      result = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<float const&,float const&,float const&,float const&>(a1, a2 + 6, a3 + 6, a2 + 4, a2 + 5, a4);
    }

    else
    {
      *&v12 = *(a2 + 2);
      *(&v12 + 1) = __PAIR64__(LODWORD(v11), LODWORD(v10));
      *(result + 1) = v12;
      *result = -1;
      result[1] = 0;
      result[14] = 0;
      result[15] = 0;
      result[13] = 0;
      v13 = v10;
      *(result + 4) = v13;
      *(result + 5) = *&v12;
      v14 = v11;
      *(result + 6) = v14;
      *(result + 7) = *&v12;
      *(result + 8) = v13;
      *(result + 9) = *(&v12 + 1);
      *(result + 10) = v14;
      *(result + 11) = *(&v12 + 1);
      *(result + 24) = 0;
      result += 16;
    }

    a1[1] = result;
  }

  v15 = *(a2 + 5);
  v16 = *(a3 + 5);
  if (v15 > v16)
  {
    if (result >= a1[2])
    {
      result = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<float const&,float const&,float const&,float const&>(a1, a2 + 6, v8, a3 + 5, a2 + 5, a4);
    }

    else
    {
      v17 = *v9;
      *result = -1;
      result[1] = 0;
      *&v18 = __PAIR64__(LODWORD(v15), LODWORD(v16));
      *(&v18 + 1) = v17;
      *(result + 1) = v18;
      result[14] = 0;
      result[15] = 0;
      result[13] = 0;
      *&v18 = *&v17;
      v19 = v16;
      *(result + 4) = *&v17;
      *(result + 5) = v19;
      v20 = *(&v17 + 1);
      *(result + 6) = v20;
      *(result + 7) = v19;
      v21 = v15;
      result[8] = v18;
      *(result + 9) = v21;
      *(result + 10) = v20;
      *(result + 11) = v21;
      *(result + 24) = 0;
      result += 16;
    }

    a1[1] = result;
  }

  v23 = *(a2 + 4);
  v22 = (a2 + 16);
  v24 = v23;
  v26 = *(a3 + 4);
  v25 = (a3 + 16);
  v27 = v26;
  if (v24 < v26)
  {
    if (result >= a1[2])
    {
      result = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<float const&,float const&,float const&,float const&>(a1, v9, v8, v22, v25, a4);
    }

    else
    {
      v28 = *v9;
      *result = -1;
      result[1] = 0;
      *&v29 = __PAIR64__(LODWORD(v27), LODWORD(v24));
      *(&v29 + 1) = v28;
      *(result + 1) = v29;
      result[14] = 0;
      result[15] = 0;
      result[13] = 0;
      *&v29 = *&v28;
      v30 = v24;
      *(result + 4) = *&v28;
      *(result + 5) = v30;
      v31 = *(&v28 + 1);
      *(result + 6) = v31;
      *(result + 7) = v30;
      v32 = v27;
      result[8] = v29;
      *(result + 9) = v32;
      *(result + 10) = v31;
      *(result + 11) = v32;
      *(result + 24) = 0;
      result += 16;
    }

    a1[1] = result;
  }

  return result;
}

void sub_1B41B7324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::getIntersectingObstacles(float *a1@<X1>, float ***a2@<X2>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v7 = 0;
    do
    {
      v8 = *v3;
      if (a1[6] < (*v3)[7] && a1[7] > v8[6] && a1[4] < v8[5] && a1[5] > v8[4])
      {
        v9 = a3[2];
        if (v7 >= v9)
        {
          v10 = *a3;
          v11 = v7 - *a3;
          v12 = (v11 >> 4) + 1;
          if (v12 >> 60)
          {
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          v13 = v9 - v10;
          if (v13 >> 3 > v12)
          {
            v12 = v13 >> 3;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF0)
          {
            v14 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDObstacle>>(v14);
          }

          v15 = (16 * (v11 >> 4));
          *v15 = *v3;
          v7 = (v15 + 1);
          memcpy(0, v10, v11);
          *a3 = 0;
          a3[2] = 0;
          if (v10)
          {
            operator delete(v10);
          }
        }

        else
        {
          *v7 = *v3;
          v7 += 16;
        }

        a3[1] = v7;
      }

      v3 += 2;
    }

    while (v3 != v4);
  }
}

void sub_1B41B7498(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::findConstrainedBlockRegions(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, float **a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>, float a8@<S0>)
{
  v13 = a6;
  v52 = v13;
  v15 = *a3;
  v14 = a3[1];
  v55 = 0;
  v56 = 0;
  v54 = 0;
  *&v62 = &v54;
  BYTE8(v62) = 0;
  if (v14 != v15)
  {
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vallocate[abi:ne200100](&v54, (v14 - v15) >> 7);
  }

  v50 = a2;
  CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(v13, 0, 0);
  CRTextRecognition::CRCTLD::CTLDMFSet::CTLDMFSet(__p, (v55 - v54) >> 7);
  v16 = v54;
  v17 = v55;
  if (v55 != v54)
  {
    v18 = 0;
    v19 = *(a1 + 32);
    v20 = 1;
    v21 = 128;
    do
    {
      v22 = v18 + 1;
      v23 = v19 + v18;
      v24 = v17 - v16;
      if (v19 + v18 >= ((v17 - v16) >> 7))
      {
        v23 = (v17 - v16) >> 7;
      }

      if (v22 < v23)
      {
        v25 = v21;
        v26 = v20;
        do
        {
          v27 = CRTextRecognition::CRCTLD::CTLDMFSet::find(__p, *(v16 + (v18 << 7)));
          if (v27 != CRTextRecognition::CRCTLD::CTLDMFSet::find(__p, *(v54 + v25)) && CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::checkRegionsInBlock(a1, (v54 + (v18 << 7)), v54 + v25, a4, a5, v52, a8))
          {
            CRTextRecognition::CRCTLD::CTLDMFSet::merge(__p, *(v54 + (v18 << 7)), *(v54 + v25));
          }

          v19 = *(a1 + 32);
          v28 = v19 + v18;
          v16 = v54;
          v17 = v55;
          v24 = v55 - v54;
          if (v19 + v18 >= ((v55 - v54) >> 7))
          {
            v28 = (v55 - v54) >> 7;
          }

          ++v26;
          v25 += 128;
        }

        while (v28 > v26);
      }

      ++v20;
      v21 += 128;
      ++v18;
    }

    while (v22 < v24 >> 7);
  }

  v62 = 0u;
  v63 = 0u;
  v64 = 1065353216;
  v29 = *v50;
  if (v50[1] == *v50)
  {
    v45 = a7;
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
  }

  else
  {
    v30 = 0;
    do
    {
      v31 = CRTextRecognition::CRCTLD::CTLDMFSet::find(__p, *(v29 + (v30 << 7)));
      v32 = v31;
      v61 = v31;
      if (*(&v62 + 1))
      {
        v33 = vcnt_s8(*(&v62 + 8));
        v33.i16[0] = vaddlv_u8(v33);
        if (v33.u32[0] > 1uLL)
        {
          v34 = v31;
          if (*(&v62 + 1) <= v31)
          {
            v34 = v31 % *(&v62 + 1);
          }
        }

        else
        {
          v34 = (*(&v62 + 1) - 1) & v31;
        }

        v35 = *(v62 + 8 * v34);
        if (v35)
        {
          for (i = *v35; i; i = *i)
          {
            v37 = i[1];
            if (v37 == v31)
            {
              if (*(i + 4) == v31)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (v33.u32[0] > 1uLL)
              {
                if (v37 >= *(&v62 + 1))
                {
                  v37 %= *(&v62 + 1);
                }
              }

              else
              {
                v37 &= *(&v62 + 1) - 1;
              }

              if (v37 != v34)
              {
                break;
              }
            }
          }
        }
      }

      LODWORD(v57[0]) = -1;
      v59 = 0;
      v60 = 0;
      v58 = 0;
      memset(&v57[1], 0, 92);
      v65[0] = &v61;
      v38 = std::__hash_table<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::__unordered_map_hasher<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v62, v31, v65);
      *(v38 + 6) = v57[0];
      objc_storeStrong(v38 + 4, v57[1]);
      v39 = v57[12];
      v41 = *&v57[8];
      v40 = *&v57[10];
      *(v38 + 9) = *&v57[6];
      *(v38 + 11) = v41;
      *(v38 + 13) = v40;
      *(v38 + 30) = v39;
      v42 = *&v57[4];
      *(v38 + 5) = *&v57[2];
      *(v38 + 7) = v42;
      if (v38 + 3 != v57)
      {
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__assign_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(v38 + 16, v58, v59, (v59 - v58) >> 7);
      }

      v65[0] = &v58;
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v65);

      v32 = v61;
LABEL_37:
      v57[0] = &v61;
      v43 = std::__hash_table<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::__unordered_map_hasher<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v62, v32, v57);
      CRTextRecognition::CRCTLD::CTLDRegion::addMember((v43 + 3), (*v50 + (v30++ << 7)));
      v29 = *v50;
    }

    while (v30 < (v50[1] - *v50) >> 7);
    v44 = v63;
    v45 = a7;
    a7[1] = 0;
    a7[2] = 0;
    for (*a7 = 0; v44; v44 = *v44)
    {
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::push_back[abi:ne200100](a7, (v44 + 3));
    }
  }

  v46 = std::__hash_table<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::__unordered_map_hasher<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>>>::~__hash_table(&v62);
  v47 = *v45;
  v48 = v45[1];
  while (v47 != v48)
  {
    v46 = CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(v46, *(v47 + 104), *(v47 + 112));
    v47 += 128;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v57[0] = &v54;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v57);
}

void sub_1B41B7924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100]((v20 - 160));

  _Unwind_Resume(a1);
}

uint64_t CRTextRecognition::CRCTLD::CTLDMFSet::find(CRTextRecognition::CRCTLD::CTLDMFSet *this, uint64_t a2)
{
  v2 = a2;
  v3 = *(*this + 4 * a2);
  if ((v3 & 0x80000000) == 0)
  {
    v5 = CRTextRecognition::CRCTLD::CTLDMFSet::find(this, v3);
    *(*this + 4 * v2) = v5;
    return v5;
  }

  return v2;
}

uint64_t CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::checkRegionsInBlock(uint64_t a1, float *a2, uint64_t a3, float **a4, uint64_t a5, void *a6, float a7)
{
  v9 = a6;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_5;
  }

  v9 = [v9 groupingConstraintForRegion1:*(a2 + 1) region2:*(a3 + 8)];
  if (v9 == 1)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (v9 != 2)
  {
LABEL_5:
    if (CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::checkRegionsLayoutDirection(v9, a2, a3))
    {
      operator new();
    }

    goto LABEL_7;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

uint64_t CRTextRecognition::CRCTLD::CTLDMFSet::merge(CRTextRecognition::CRCTLD::CTLDMFSet *this, uint64_t a2, uint64_t a3)
{
  v5 = CRTextRecognition::CRCTLD::CTLDMFSet::find(this, a2);
  result = CRTextRecognition::CRCTLD::CTLDMFSet::find(this, a3);
  if (v5 != result)
  {
    *(*this + 4 * result) = v5;
  }

  return result;
}

uint64_t CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  *__p = 0u;
  v67 = 0u;
  *v64 = 0u;
  v65 = 0u;
  *v63 = 0u;
  memset(v62, 0, sizeof(v62));
  v61 = 0;
  __sz = (a3 - a2) >> 7;
  __x[0] = -1;
  v59 = __sz;
  std::vector<int>::resize(v63, __sz, __x);
  __x[0] = -1;
  std::vector<int>::resize(&v64[1], __sz, __x);
  v5 = __sz;
  v6 = __sz - __p[1];
  if (__sz <= __p[1])
  {
    __p[1] = __sz;
  }

  else
  {
    if (v67 << 6 < v6 || __p[1] > ((v67 << 6) - v6))
    {
      *__x = 0;
      v73 = 0;
      v74 = 0;
      if ((__sz & 0x8000000000000000) != 0)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v9 = v67 << 7;
      if (v67 << 7 <= ((__sz + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v9 = (__sz + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v67 << 6 <= 0x3FFFFFFFFFFFFFFEuLL)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(__x, v10);
      v11 = __p[0];
      v12 = __p[1];
      v13 = (__p[1] + v6);
      v73 = (__p[1] + v6);
      v14 = *__x;
      if (__p[1] < 1)
      {
        v8 = 0;
        v7 = *__x;
      }

      else
      {
        v15 = __p[1] >> 6;
        if (__p[1] >= 0x40)
        {
          memmove(*__x, __p[0], 8 * v15);
        }

        v7 = &v14[v15];
        v8 = v12 & 0x3F;
        if ((v12 & 0x3F) != 0)
        {
          *v7 = *v7 & ~(0xFFFFFFFFFFFFFFFFLL >> -v8) | v11[v15] & (0xFFFFFFFFFFFFFFFFLL >> -v8);
        }

        v11 = __p[0];
        v12 = __p[1];
        v14 = *__x;
        v13 = v73;
      }

      __p[0] = v14;
      __p[1] = v13;
      *__x = v11;
      v73 = v12;
      v16 = v67;
      *&v67 = v74;
      v74 = v16;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      v7 = (__p[0] + 8 * (__p[1] >> 6));
      v8 = __p[1] & 0x3F;
      __p[1] = __sz;
    }

    *__x = v7;
    LODWORD(v73) = v8;
    std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(__x, v6);
    v5 = __sz;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(&v68 + 1) - *(&v67 + 1)) >> 3) < v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      v76 = &v67 + 8;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(v5);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  if (a3 != a2)
  {
    v17 = 0;
    v18 = a2;
    do
    {
      memset(v71, 0, sizeof(v71));
      std::vector<BOOL>::reserve(v71, __sz);
      v19 = v17;
      v20 = a2;
      do
      {
        if (v19)
        {
          LOBYTE(__x[0]) = CRTextRecognition::CRCTLD::CTLDRegion::operator<(v18, v20);
        }

        else
        {
          LOBYTE(__x[0]) = 0;
        }

        std::vector<BOOL>::push_back(v71, __x);
        v20 += 128;
        v19 -= 128;
      }

      while (v20 != a3);
      v21 = v68;
      if (v68 >= *(&v68 + 1))
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v68 - *(&v67 + 1)) >> 3) + 1;
        if (v23 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((*(&v68 + 1) - *(&v67 + 1)) >> 3) > v23)
        {
          v23 = 0x5555555555555556 * ((*(&v68 + 1) - *(&v67 + 1)) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&v68 + 1) - *(&v67 + 1)) >> 3) >= 0x555555555555555)
        {
          v24 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v24 = v23;
        }

        v76 = &v67 + 8;
        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(v24);
        }

        *__x = 0;
        v73 = (8 * ((v68 - *(&v67 + 1)) >> 3));
        v74 = v73;
        v75 = 0;
        std::vector<BOOL>::vector(v73, v71);
        v22 = v74 + 3;
        v25 = v73 + *(&v67 + 1) - v68;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>(*(&v67 + 1), v68, v25);
        v26 = *(&v67 + 1);
        v27 = *(&v68 + 1);
        *(&v67 + 1) = v25;
        *&v68 = v22;
        *(&v68 + 1) = v75;
        v74 = v26;
        v75 = v27;
        *__x = v26;
        v73 = v26;
        std::__split_buffer<std::vector<BOOL>>::~__split_buffer(__x);
      }

      else
      {
        std::vector<BOOL>::vector(v68, v71);
        v22 = (v21 + 24);
      }

      *&v68 = v22;
      if (v71[0])
      {
        operator delete(v71[0]);
      }

      v18 += 128;
      v17 += 128;
    }

    while (v18 != a3);
  }

  v28 = __sz;
  if (__sz >= 1)
  {
    v29 = 0;
    do
    {
      if ((*(v63[0] + v29) & 0x80000000) != 0)
      {
        CRTextRecognition::CRCTLD::order::TarjansSCC::unfolded_strongconnect(&__sz, v29);
        v28 = __sz;
      }

      ++v29;
    }

    while (v28 > v29);
  }

  *__x = 0;
  v73 = 0;
  v74 = 0;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::reserve(__x, v59);
  v30 = *(&v69 + 1);
  if (*(&v69 + 1) != v69)
  {
    v31 = MEMORY[0x1E69E5398];
    v32 = *(&v69 + 1);
    do
    {
      v33 = v73;
      v34 = *(v32 - 24);
      v35 = *(v32 - 16);
      v32 -= 24;
      v36 = v73;
      v37 = v34;
      if (v34 != v35)
      {
        do
        {
          v38 = a2 + (*v34 << 7);
          if (v36 >= v74)
          {
            v36 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion&>(__x, v38);
          }

          else
          {
            std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(v36, v38);
            v36 += 16;
          }

          v73 = v36;
          ++v34;
        }

        while (v34 != v35);
        v34 = *(v30 - 24);
        v37 = *(v30 - 16);
      }

      if ((v37 - v34) > 4)
      {
        if ((v36 - v33) >> 7 < 1)
        {
          v43 = 0;
          v39 = 0;
        }

        else
        {
          v39 = (v36 - v33) >> 7;
          while (1)
          {
            v40 = operator new(v39 << 7, v31);
            if (v40)
            {
              break;
            }

            v41 = v39 >> 1;
            v42 = v39 > 1;
            v39 >>= 1;
            if (!v42)
            {
              v43 = 0;
              v39 = v41;
              goto LABEL_67;
            }
          }

          v43 = v40;
        }

LABEL_67:
        _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SD_NS_15iterator_traitsISI_E15difference_typeEPNSK_10value_typeEl(v33, v36, ((v36 - v33) >> 7), v43, v39);
        if (v43)
        {
          operator delete(v43);
        }

        if (v33 != v36)
        {
          v44 = v33;
          while (1)
          {
            v45 = v44 + 128;
            if ((v44 + 128) == v36)
            {
              break;
            }

            v46 = CRTextRecognition::CRCTLD::CTLDRegion::operator<(v44 + 128, v44);
            v44 = v45;
            if (v46)
            {
              CRTextRecognition::CRCTLD::order::kwiksort<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>(v33, v36, 0);
              v47 = CRTextRecognition::CRCTLD::CTLDRegion::operator<((v36 - 16), v33);
              if (v36 - 16 != v33 && v47)
              {
                v48 = ((*(v33 + 6) + *(v33 + 7)) * 0.5) - ((*(v36 - 26) + *(v36 - 25)) * 0.5);
                v49 = ((*(v33 + 4) + *(v33 + 5)) * 0.5) - ((*(v36 - 28) + *(v36 - 27)) * 0.5);
                v50 = (v49 * v49) + (v48 * v48);
                v51 = (v33 + 16);
                v52 = v33;
                v53 = v33;
                do
                {
                  v54 = ((v53[6] + v53[7]) * 0.5) - ((v51[6] + v51[7]) * 0.5);
                  v55 = ((v53[4] + v53[5]) * 0.5) - ((v51[4] + v51[5]) * 0.5);
                  v56 = (v55 * v55) + (v54 * v54);
                  if (v50 < v56)
                  {
                    v52 = v51;
                    v50 = v56;
                  }

                  v53 += 32;
                  v51 += 32;
                }

                while (v53 != (v36 - 16));
                if (v52 != v33 && v52 != v36)
                {
                  std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(v33, v52, v36);
                }
              }

              break;
            }
          }
        }
      }

      v30 = v32;
    }

    while (v32 != v69);
  }

  std::__copy_impl::operator()[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *>(*__x, v73, a2);
  v71[0] = __x;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v71);
  *__x = &v69;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](__x);
  *__x = &v67 + 8;
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](__x);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v64[1])
  {
    *&v65 = v64[1];
    operator delete(v64[1]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  return std::deque<int>::~deque[abi:ne200100](v62);
}

void sub_1B41B8640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 - 144);
  if (v7)
  {
    operator delete(v7);
  }

  CRTextRecognition::CRCTLD::order::TarjansSCC::~TarjansSCC(va);
  _Unwind_Resume(a1);
}

uint64_t CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::filterWhitespacesForReadingOrder@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v13 = -INFINITY;
  }

  else
  {
    v8 = -3.4028e38;
    v9 = 3.4028e38;
    do
    {
      v10 = *(v6 + 104);
      while (v10 != *(v6 + 112))
      {
        v11 = *v10;
        v10 += 32;
        v12 = *a3 + (v11 << 7);
        if (*(v12 + 16) < v9)
        {
          v9 = *(v12 + 16);
        }

        if (v8 < *(v12 + 20))
        {
          v8 = *(v12 + 20);
        }
      }

      v6 += 128;
    }

    while (v6 != v7);
    v13 = v8 - v9;
  }

  v14 = *(result + 28);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v15 = *a4;
  v16 = a4[1];
  if (*a4 != v16)
  {
    v17 = v13 * v14;
    do
    {
      if ((*(v15 + 20) - *(v15 + 16)) > v17)
      {
        result = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::push_back[abi:ne200100](a5, v15);
      }

      v15 += 128;
    }

    while (v15 != v16);
  }

  return result;
}

void sub_1B41B87C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortBlocks(CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v140 = a6;
  CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::filterWhitespacesForReadingOrder(a1, a2, a3, a4, &v145);
  v10 = v145;
  v11 = v146;
  if (v145 != v146)
  {
    v12 = 0;
    v13 = (v146 - v145 - 128) >> 7;
    v14 = (v13 + 4) & 0x3FFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v13);
    v16 = (v145 + 256);
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1B42AF280)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 64) = -100;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 32) = -100;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1B42AF270)))).i32[1])
      {
        *v16 = -100;
        v16[32] = -100;
      }

      v12 += 4;
      v16 += 128;
    }

    while (v14 != v12);
  }

  v19 = v140;
  CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortBlocks(std::vector<CRTextRecognition::CRCTLD::CTLDRegion> &,std::vector<CRTextRecognition::CRCTLD::CTLDRegion> const&,std::vector<CRTextRecognition::CRCTLD::CTLDRegion> const&,CRLayoutDirection,objc_object  {objcproto14CRCTLDDelegate}*)::$_0::operator()(v10, v11, a2, v20);
  v21 = 0;
  v22 = 0;
  while (1)
  {
    v144 = v22;
    v23 = v21;
    CRTextRecognition::CRCTLD::CTLDMFSet::CTLDMFSet(&v150, (a2[1] - *a2) >> 7);
    if ((a2[1] - *a2) < 0x81)
    {
      v22 = 0;
      goto LABEL_74;
    }

    v142 = v21;
    v24 = 0;
    v25 = 1;
    do
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = (*a2 + (v25 << 7));
        v29 = (*a2 + v26);
        IntersectionArea = CRTextRecognition::CRCTLD::CTLDRegion::getIntersectionArea(v28, v29);
        if (IntersectionArea > 0.0)
        {
          v31 = (v28[7] - v28[6]) * (v28[5] - v28[4]);
          v32 = v29[5] - v29[4];
          if (((v29[7] - v29[6]) * v32) < v31)
          {
            v31 = (v29[7] - v29[6]) * v32;
          }

          if ((IntersectionArea / v31) > 0.5 && CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::checkGroupsMergeConsistency(a1, v19, v28, v29))
          {
            CRTextRecognition::CRCTLD::CTLDMFSet::merge(&v150, v25, v27);
            v24 = 1;
          }
        }

        ++v27;
        v26 += 128;
      }

      while (v25 != v27);
      ++v25;
      v34 = *a2;
      v33 = a2[1];
    }

    while (v25 < (v33 - *a2) >> 7);
    if ((v24 & 1) == 0)
    {
      v22 = 0;
      goto LABEL_73;
    }

    LODWORD(v35) = 0;
    *__p = 0u;
    v164 = 0u;
    LODWORD(v165) = 1065353216;
    if (v33 == v34)
    {
      v160[0] = 0;
      v160[1] = 0;
      *&v161 = 0;
      goto LABEL_70;
    }

    v36 = 0;
    do
    {
      v37 = CRTextRecognition::CRCTLD::CTLDMFSet::find(&v150, v36);
      if (!__p[1])
      {
        goto LABEL_41;
      }

      v35 = COERCE_DOUBLE(vcnt_s8(__p[1]));
      LOWORD(v35) = vaddlv_u8(*&v35);
      if (LODWORD(v35) > 1uLL)
      {
        v38 = v37;
        if (__p[1] <= v37)
        {
          v38 = v37 % __p[1];
        }
      }

      else
      {
        v38 = (__p[1] - 1) & v37;
      }

      v39 = *(__p[0] + v38);
      if (!v39 || (v40 = *v39) == 0)
      {
LABEL_41:
        operator new();
      }

      while (1)
      {
        v41 = v40[1];
        if (v41 == v37)
        {
          break;
        }

        if (LODWORD(v35) > 1uLL)
        {
          if (v41 >= __p[1])
          {
            v41 %= __p[1];
          }
        }

        else
        {
          v41 &= __p[1] - 1;
        }

        if (v41 != v38)
        {
          goto LABEL_41;
        }

LABEL_40:
        v40 = *v40;
        if (!v40)
        {
          goto LABEL_41;
        }
      }

      if (*(v40 + 4) != v37)
      {
        goto LABEL_40;
      }

      v43 = v40[4];
      v42 = v40[5];
      if (v43 >= v42)
      {
        v45 = v40[3];
        v46 = v43 - v45;
        v47 = (v43 - v45) >> 2;
        v48 = v47 + 1;
        if ((v47 + 1) >> 62)
        {
          std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
        }

        v49 = v42 - v45;
        if (v49 >> 1 > v48)
        {
          v48 = v49 >> 1;
        }

        v50 = v49 >= 0x7FFFFFFFFFFFFFFCLL;
        v51 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v50)
        {
          v51 = v48;
        }

        if (v51)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((v40 + 3), v51);
        }

        v52 = (v43 - v45) >> 2;
        v53 = (4 * v47);
        v54 = (4 * v47 - 4 * v52);
        *v53 = v36;
        v44 = v53 + 1;
        memcpy(v54, v45, v46);
        v37 = v40[3];
        v40[3] = v54;
        v40[4] = v44;
        v40[5] = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v43 = v36;
        v44 = v43 + 4;
      }

      v40[4] = v44;
      ++v36;
    }

    while (v36 < (a2[1] - *a2) >> 7);
    v55 = v164;
    v160[0] = 0;
    v160[1] = 0;
    for (*&v161 = 0; v55; v55 = *v55)
    {
      v56 = v55[3];
      if (v55[4] - v56 == 4)
      {
        v57 = *a2 + (*v56 << 7);
        v58 = v160[1];
        if (v160[1] >= v161)
        {
          v37 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion&>(v160, v57);
        }

        else
        {
          v35 = std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(v160[1], v57);
          v37 = v58 + 128;
        }

        v160[1] = v37;
      }

      else
      {
        CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::mergeOverlappingGroups(v37, a2, v55 + 3, v172);
        v63 = v160[1];
        if (v160[1] >= v161)
        {
          v69 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion>(v160, v172, v59, v60, v61, v62);
        }

        else
        {
          *v160[1] = v172[0];
          v64 = v172[1];
          v172[1] = 0;
          *(v63 + 1) = v64;
          v65 = *&v172[4];
          *(v63 + 1) = *&v172[2];
          *(v63 + 2) = v65;
          v66 = *&v172[6];
          v67 = *&v172[8];
          v68 = *&v172[10];
          *(v63 + 24) = v172[12];
          *(v63 + 4) = v67;
          *(v63 + 5) = v68;
          *(v63 + 3) = v66;
          *(v63 + 13) = 0;
          *(v63 + 14) = 0;
          *(v63 + 15) = 0;
          *(v63 + 104) = v173;
          *(v63 + 15) = v174;
          v173 = 0uLL;
          v174 = 0;
          v69 = v63 + 128;
        }

        v160[1] = v69;
        v147 = &v173;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v147);
      }
    }

LABEL_70:
    if (v160 != a2)
    {
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__assign_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(a2, v160[0], v160[1], (v160[1] - v160[0]) >> 7);
    }

    CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortBlocks(std::vector<CRTextRecognition::CRCTLD::CTLDRegion> &,std::vector<CRTextRecognition::CRCTLD::CTLDRegion> const&,std::vector<CRTextRecognition::CRCTLD::CTLDRegion> const&,CRLayoutDirection,objc_object  {objcproto14CRCTLDDelegate}*)::$_0::operator()(v145, v146, a2, *&v35);
    v172[0] = v160;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v172);
    std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::~__hash_table(__p);
    v22 = 1;
LABEL_73:
    v23 = v142;
LABEL_74:
    v70 = v150;
    if (v150)
    {
      v151 = v150;
      operator delete(v150);
    }

    v21 = 1;
    if ((v22 & 1) == 0)
    {
      v141 = v22;
      v21 = v23;
      if (*(a1 + 48) != 1)
      {
        goto LABEL_168;
      }

      while (2)
      {
        LODWORD(v172[0]) = -1;
        v174 = 0;
        v173 = 0uLL;
        memset(&v172[1], 0, 92);
        v71 = *a2;
        v72 = a2[1];
        while (v71 != v72)
        {
          CRTextRecognition::CRCTLD::CTLDRegion::addMember(v172, v71);
          v71 = (v71 + 128);
        }

        CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::unfoldHierarchicalGroups(__p, a1, v172);
        LODWORD(v172[0]) = __p[0];
        v73 = __p[1];
        __p[1] = 0;
        v74 = v172[1];
        v172[1] = v73;

        *&v172[6] = v166;
        *&v172[8] = v167;
        *&v172[10] = v168;
        LODWORD(v172[12]) = v169;
        *&v172[2] = v164;
        *&v172[4] = v165;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(&v173);
        v173 = v170;
        v174 = v171;
        v171 = 0;
        v170 = 0uLL;
        v150 = &v170;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v150);

        v75 = *(&v173 + 1);
        v76 = v173;
        if (v173 == *(&v173 + 1))
        {
          v100 = 0;
          goto LABEL_136;
        }

        v143 = v21;
        v77 = (v173 + 128);
        while (2)
        {
          if (v77 == v75)
          {
LABEL_132:
            v100 = 0;
            LODWORD(v21) = v143;
            goto LABEL_136;
          }

          v79 = v76[6];
          v78 = v76[7];
          v81 = v76[4];
          v80 = v76[5];
          v83 = v77[6];
          v82 = v77[7];
          v85 = v77[4];
          v84 = v77[5];
          if ((v83 + v82) * 0.5 >= (v79 + v78) * 0.5 || (v85 + v84) * 0.5 >= (v81 + v80) * 0.5)
          {
LABEL_131:
            v76 += 32;
            v77 += 32;
            if (v76 == v75)
            {
              goto LABEL_132;
            }

            continue;
          }

          break;
        }

        if (v83 < v79)
        {
          v79 = v77[6];
        }

        if (v78 < v82)
        {
          v78 = v77[7];
        }

        LODWORD(__p[0]) = -1;
        __p[1] = 0;
        if (v85 < v81)
        {
          v81 = v85;
        }

        if (v80 < v84)
        {
          v80 = v84;
        }

        *&v164 = __PAIR64__(LODWORD(v80), LODWORD(v81));
        *(&v164 + 1) = __PAIR64__(LODWORD(v78), LODWORD(v79));
        v171 = 0;
        v170 = 0uLL;
        *&v165 = v79;
        *(&v165 + 1) = v81;
        *&v166 = v78;
        *(&v166 + 1) = v81;
        *&v167 = v79;
        *(&v167 + 1) = v80;
        *&v168 = v78;
        *(&v168 + 1) = v80;
        v169 = 0;
        *v160 = 0u;
        v161 = 0u;
        v162 = 1065353216;
        v87 = *a2;
        if (a2[1] == *a2)
        {
          goto LABEL_130;
        }

        v88 = 0;
        do
        {
          v89 = (v87 + (v88 << 7));
          if (*(&v164 + 2) < v89[7] && *(&v164 + 3) > v89[6] && *&v164 < v89[5] && *(&v164 + 1) > v89[4])
          {
            v90 = v161;
            if (!v161)
            {
LABEL_106:
              if (v160[1])
              {
                v91 = vcnt_s8(v160[1]);
                v91.i16[0] = vaddlv_u8(v91);
                if (v91.u32[0] > 1uLL)
                {
                  v92 = v88;
                  if (v160[1] <= v88)
                  {
                    v92 = v88 % v160[1];
                  }
                }

                else
                {
                  v92 = (v160[1] + 0x7FFFFFFF) & v88;
                }

                v93 = *(v160[0] + v92);
                if (v93)
                {
                  for (i = *v93; i; i = *i)
                  {
                    v95 = i[1];
                    if (v95 == v88)
                    {
                      if (v88 == *(i + 4))
                      {
                        goto LABEL_123;
                      }
                    }

                    else
                    {
                      if (v91.u32[0] > 1uLL)
                      {
                        if (v95 >= v160[1])
                        {
                          v95 %= v160[1];
                        }
                      }

                      else
                      {
                        v95 &= v160[1] - 1;
                      }

                      if (v95 != v92)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              operator new();
            }

            while ((CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::checkGroupsMergeConsistency(a1, v19, (*a2 + (v88 << 7)), (*a2 + (*(v90 + 4) << 7))) & 1) != 0)
            {
              v90 = *v90;
              if (!v90)
              {
                goto LABEL_106;
              }
            }
          }

LABEL_123:
          ++v88;
          v87 = *a2;
          v96 = (a2[1] - *a2) >> 7;
        }

        while (v96 > v88);
        if (!*(&v161 + 1))
        {
LABEL_130:
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v160);
          v150 = &v170;
          std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v150);

          v75 = *(&v173 + 1);
          goto LABEL_131;
        }

        if (*(&v161 + 1) == 1)
        {
          v97 = *(v161 + 16);
          v98 = (v87 + (v97 << 7));
          for (j = *(v98 + 13); ; j += 128)
          {
            if (j == *(v98 + 14))
            {
              goto LABEL_130;
            }

            if (*(j + 104) != *(j + 112))
            {
              break;
            }
          }

          CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::unfoldHierarchicalGroups(&v150, a1, v98);
          v101 = *a2 + (v97 << 7);
          *v101 = v150;
          v102 = v151;
          v151 = 0;
          v103 = *(v101 + 8);
          *(v101 + 8) = v102;

          v104 = v153;
          *(v101 + 16) = v152;
          *(v101 + 32) = v104;
          v105 = v154;
          v106 = v155;
          v107 = v156;
          *(v101 + 96) = v157;
          *(v101 + 64) = v106;
          *(v101 + 80) = v107;
          *(v101 + 48) = v105;
          std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v101 + 104));
          *(v101 + 104) = v158;
          *(v101 + 120) = v159;
          v158 = 0uLL;
          v159 = 0;
          v147 = &v158;
          std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v147);

          CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(v108, *(*a2 + (v97 << 7) + 104), *(*a2 + (v97 << 7) + 112));
          LODWORD(v21) = v143;
        }

        else
        {
          v147 = 0;
          v148 = 0;
          v149 = 0;
          std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::reserve(&v147, v96 - *(&v161 + 1) + 1);
          LODWORD(v21) = v143;
          CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::flatMergeGroups(&v150, a1, a2, v160);
          v113 = v148;
          if (v148 >= v149)
          {
            v119 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion>(&v147, &v150, v109, v110, v111, v112);
          }

          else
          {
            *v148 = v150;
            v114 = v151;
            v151 = 0;
            v113[1] = v114;
            v115 = v153;
            *(v113 + 1) = v152;
            *(v113 + 2) = v115;
            v116 = v154;
            v117 = v155;
            v118 = v156;
            *(v113 + 24) = v157;
            *(v113 + 4) = v117;
            *(v113 + 5) = v118;
            *(v113 + 3) = v116;
            v113[13] = 0;
            v113[14] = 0;
            v113[15] = 0;
            *(v113 + 13) = v158;
            v113[15] = v159;
            v158 = 0uLL;
            v159 = 0;
            v119 = v113 + 16;
          }

          v148 = v119;
          v175 = &v158;
          std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v175);

          v121 = *a2;
          v122 = a2[1];
          if (v122 != *a2)
          {
            v123 = 0;
            do
            {
              if (v160[1])
              {
                v124 = vcnt_s8(v160[1]);
                v124.i16[0] = vaddlv_u8(v124);
                if (v124.u32[0] > 1uLL)
                {
                  v125 = v123;
                  if (v160[1] <= v123)
                  {
                    v125 = v123 % v160[1];
                  }
                }

                else
                {
                  v125 = (v160[1] + 0x7FFFFFFF) & v123;
                }

                v126 = *(v160[0] + v125);
                if (v126)
                {
                  for (k = *v126; k; k = *k)
                  {
                    v128 = k[1];
                    if (v128 == v123)
                    {
                      if (v123 == *(k + 4))
                      {
                        goto LABEL_164;
                      }
                    }

                    else
                    {
                      if (v124.u32[0] > 1uLL)
                      {
                        if (v128 >= v160[1])
                        {
                          v128 %= v160[1];
                        }
                      }

                      else
                      {
                        v128 &= v160[1] - 1;
                      }

                      if (v128 != v125)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              v129 = v121 + (v123 << 7);
              v130 = v148;
              if (v148 >= v149)
              {
                v120 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion&>(&v147, v129);
              }

              else
              {
                std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(v148, v129);
                v120 = v130 + 16;
              }

              v148 = v120;
              v121 = *a2;
              v122 = a2[1];
LABEL_164:
              ++v123;
            }

            while (v123 < (v122 - v121) >> 7);
          }

          if (&v147 != a2)
          {
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__assign_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(a2, v147, v148, (v148 - v147) >> 7);
            v121 = *a2;
            v122 = a2[1];
          }

          CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(v120, v121, v122);
          v150 = &v147;
          std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v150);
        }

        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v160);
        v150 = &v170;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v150);

        v100 = 1;
LABEL_136:
        __p[0] = &v173;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](__p);

        v144 |= v100;
        v21 = v21 | v100;
        if (v100 && (*(a1 + 48) & 1) != 0)
        {
          continue;
        }

        break;
      }

LABEL_168:
      v22 = v141;
      if ((v144 & 1) == 0)
      {
        break;
      }
    }
  }

  if (v21)
  {
    v131 = *a2;
    v132 = a2[1];
    if (*a2 != v132)
    {
      do
      {
        CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::unfoldHierarchicalGroups(v172, a1, v131);
        *v131 = v172[0];
        v133 = v172[1];
        v172[1] = 0;
        v134 = *(v131 + 8);
        *(v131 + 8) = v133;

        v135 = *&v172[4];
        *(v131 + 16) = *&v172[2];
        *(v131 + 32) = v135;
        v136 = *&v172[6];
        v137 = *&v172[8];
        v138 = *&v172[10];
        *(v131 + 96) = v172[12];
        *(v131 + 64) = v137;
        *(v131 + 80) = v138;
        *(v131 + 48) = v136;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v131 + 104));
        *(v131 + 104) = v173;
        *(v131 + 120) = v174;
        v173 = 0uLL;
        v174 = 0;
        __p[0] = &v173;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](__p);

        v131 += 128;
      }

      while (v131 != v132);
    }
  }

  CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::repairOrder(v70, a2, a5);

  v172[0] = &v145;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v172);
}

void sub_1B41B9B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  *(v49 - 248) = &a19;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100]((v49 - 248));

  _Unwind_Resume(a1);
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortBlocks(std::vector<CRTextRecognition::CRCTLD::CTLDRegion> &,std::vector<CRTextRecognition::CRCTLD::CTLDRegion> const&,std::vector<CRTextRecognition::CRCTLD::CTLDRegion> const&,CRLayoutDirection,objc_object  {objcproto14CRCTLDDelegate}*)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, float a4)
{
  v5 = a3[1];
  v6 = a2 - a1;
  v7 = (a2 - a1) >> 7;
  if (v7 >= 1)
  {
    v8 = a1;
    v9 = a3[2];
    if (v9 - v5 >= v6)
    {
      a1 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(a3, a1, a2, v5);
      a3[1] = a1;
      v5 = a1;
    }

    else
    {
      v10 = v5 - *a3;
      v11 = v7 + (v10 >> 7);
      if (v11 >> 57)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v12 = v9 - *a3;
      if (v12 >> 6 > v11)
      {
        v11 = v12 >> 6;
      }

      if (v12 >= 0x7FFFFFFFFFFFFF80)
      {
        v13 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v38 = a3;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>(a3, v13);
      }

      v14 = v10 >> 7 << 7;
      v35 = 0;
      v36 = v14;
      v37 = v14;
      v15 = v14 + v6;
      do
      {
        std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(v14, v8);
        v14 += 128;
        v8 += 128;
        v6 -= 128;
      }

      while (v6);
      *&v37 = v15;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>(a3, v5, a3[1], v15, v16, v17);
      v18 = *a3;
      v19 = v36;
      *&v37 = v15 + a3[1] - v5;
      a3[1] = v5;
      v20 = v19 + v18 - v5;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>(a3, v18, v5, v20, v21, v22);
      v23 = *a3;
      *a3 = v20;
      v24 = a3[2];
      *(a3 + 1) = v37;
      *&v37 = v23;
      *(&v37 + 1) = v24;
      v35 = v23;
      v36 = v23;
      a1 = std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(&v35);
      v5 = a3[1];
    }
  }

  CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(a1, *a3, v5);
  v25 = *a3;
  v26 = a3[1];
  if (*a3 != v26)
  {
    while (*v25 != -100)
    {
      v25 += 128;
      if (v25 == v26)
      {
        return;
      }
    }

    if (v25 != v26)
    {
      v27 = v25 + 128;
      if (v25 + 128 != v26)
      {
        do
        {
          if (*v27 != -100)
          {
            *v25 = *v27;
            v28 = *(v27 + 8);
            *(v27 + 8) = 0;
            v29 = *(v25 + 8);
            *(v25 + 8) = v28;

            v30 = *(v27 + 32);
            *(v25 + 16) = *(v27 + 16);
            *(v25 + 32) = v30;
            v31 = *(v27 + 48);
            v32 = *(v27 + 64);
            v33 = *(v27 + 80);
            *(v25 + 96) = *(v27 + 96);
            *(v25 + 64) = v32;
            *(v25 + 80) = v33;
            *(v25 + 48) = v31;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v25 + 104));
            *(v25 + 104) = *(v27 + 104);
            *(v25 + 120) = *(v27 + 120);
            *(v27 + 104) = 0;
            *(v27 + 112) = 0;
            *(v27 + 120) = 0;
            v25 += 128;
          }

          v27 += 128;
        }

        while (v27 != v26);
        v26 = a3[1];
      }
    }
  }

  if (v25 != v26)
  {
    v34 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *>(v26, v26, v25);

    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__base_destruct_at_end[abi:ne200100](a3, v34);
  }
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::unfoldHierarchicalGroups(uint64_t *__return_ptr a1@<X8>, CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl *this@<X0>, const CRTextRecognition::CRCTLD::CTLDRegion *a3@<X1>)
{
  v5 = *(a3 + 14);
  v6 = *(a3 + 13);
  if (v6 == v5)
  {
LABEL_5:
    *a1 = *a3;
    v9 = *(a3 + 1);
    a1[13] = 0;
    v10 = *(a3 + 4);
    *(a1 + 3) = *(a3 + 3);
    *(a1 + 4) = v10;
    *(a1 + 5) = *(a3 + 5);
    v11 = *(a3 + 2);
    *(a1 + 1) = *(a3 + 1);
    a1[1] = v9;
    *(a1 + 24) = *(a3 + 24);
    *(a1 + 2) = v11;
    v12 = *(a3 + 13);
    v13 = *(a3 + 14);
    a1[14] = 0;
    a1[15] = 0;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(a1 + 13, v12, v13, (v13 - v12) >> 7);
  }

  else
  {
    v8 = *(a3 + 13);
    while (*(v8 + 13) == *(v8 + 14))
    {
      v8 = (v8 + 128);
      if (v8 == v5)
      {
        goto LABEL_5;
      }
    }

    *a1 = -1;
    a1[14] = 0;
    a1[15] = 0;
    a1[13] = 0;
    *(a1 + 1) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 84) = 0u;
    do
    {
      if (*(v6 + 14) == *(v6 + 13))
      {
        CRTextRecognition::CRCTLD::CTLDRegion::addMember(a1, v6);
      }

      else
      {
        CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::unfoldHierarchicalGroups(v16, this, v6);
        v14 = v17[0];
        v15 = v17[1];
        while (v14 != v15)
        {
          CRTextRecognition::CRCTLD::CTLDRegion::addMember(a1, v14);
          v14 = (v14 + 128);
        }

        v18 = v17;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v18);
      }

      v6 = (v6 + 128);
    }

    while (v6 != v5);
  }
}

void CRTextRecognition::CRCTLD::CTLDRegion::~CTLDRegion(id *this)
{
  v2 = this + 13;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::repairOrder(uint64_t a1, char **a2, uint64_t a3)
{
  if (a3 != 5)
  {
    __p = 0;
    v40 = 0;
    v41 = 0;
    std::vector<BOOL>::reserve(&__p, (a2[1] - *a2) >> 7);
    v6 = *a2;
    v5 = a2[1];
    if (v5 != *a2)
    {
      v7 = 0;
      do
      {
        v8 = &v6[128 * v7];
        *v8 = v7;
        if ([*(v8 + 1) layoutDirection] == 5)
        {
          v9 = 1;
        }

        else
        {
          v10 = *(v8 + 13);
          v11 = *(v8 + 14);
          v12 = v10;
          if (v10 == v11)
          {
LABEL_10:
            v9 = v12 != v10;
          }

          else
          {
            while ([*(v10 + 8) layoutDirection] == 5)
            {
              v10 += 128;
              if (v10 == v11)
              {
                v12 = *(v8 + 13);
                v10 = *(v8 + 14);
                goto LABEL_10;
              }
            }

            v9 = 0;
          }
        }

        v42 = v9;
        std::vector<BOOL>::push_back(&__p, &v42);
        ++v7;
        v6 = *a2;
        v5 = a2[1];
      }

      while (v7 < (v5 - *a2) >> 7);
    }

    v13 = v40;
    if (v40 >= 3)
    {
      v14 = __p;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = v16;
        v16 = v15;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        v20 = v14[v17 >> 6];
        if (((1 << v17) & v20) == 0)
        {
          v4 = *(v14 + (((v17 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
          if ((v4 >> (v17 - 1)) & 1) != 0 && ((*(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16))
          {
            v21 = &v6[128 * v17];
            v22 = *(v21 + 13);
            v23 = *(v21 + 14);
            while (1)
            {
              if (v22 == v23)
              {
                v26 = v19 | v20;
                goto LABEL_29;
              }

              v24 = v22[7] - v22[6];
              v25 = v24 <= 0.0 ? v22[5] - v22[4] : (v22[5] - v22[4]) / v24;
              if (v25 <= 3.0)
              {
                break;
              }

              v22 += 32;
            }

            v26 = v20 & ~v19;
LABEL_29:
            v14[v18] = v26;
            v13 = v40;
          }
        }

        v15 = v16 + 1;
      }

      while (v16 + 1 < v13);
    }

    for (; v6 != v5; v5 = a2[1])
    {
      if ((*(__p + ((*v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v6))
      {
        v27 = v6;
        if (v6 != v5)
        {
          while (((*(__p + ((*v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v27) & 1) != 0)
          {
            v27 += 128;
            if (v27 == v5)
            {
              v27 = v5;
              break;
            }
          }
        }

        if (v27 - v6 >= 129)
        {
          if (v27 == v6)
          {
            v4 = CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(v4, v6, v6);
          }

          else
          {
            v28 = (*(v6 + 6) + *(v6 + 7)) * 0.5;
            v29 = (*(v6 + 4) + *(v6 + 5)) * 0.5;
            v30 = v6;
            do
            {
              v43.x = v28;
              v43.y = v29;
              CRTextRecognition::CRCTLD::CTLDRegion::rotate(v30, -1.5708, v43);
              v30 = (v30 + 128);
            }

            while (v30 != v27);
            CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(v31, v6, v27);
            v32 = v6;
            do
            {
              v44.x = v28;
              v44.y = v29;
              CRTextRecognition::CRCTLD::CTLDRegion::rotate(v32, 1.5708, v44);
              v32 = (v32 + 128);
            }

            while (v32 != v27);
          }
        }

        while (v6 != v27)
        {
          v33 = *(v6 + 13);
          v34 = *(v6 + 14);
          if (v34 - v33 >= 129)
          {
            if (v33 == v34)
            {
              v4 = CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(v4, *(v6 + 13), *(v6 + 13));
            }

            else
            {
              v35 = (v33[6] + v33[7]) * 0.5;
              v36 = (v33[4] + v33[5]) * 0.5;
              v37 = *(v6 + 13);
              do
              {
                v45.x = v35;
                v45.y = v36;
                CRTextRecognition::CRCTLD::CTLDRegion::rotate(v37, -1.5708, v45);
                v37 = (v37 + 128);
              }

              while (v37 != v34);
              CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(v38, v33, v34);
              do
              {
                v46.x = v35;
                v46.y = v36;
                CRTextRecognition::CRCTLD::CTLDRegion::rotate(v33, 1.5708, v46);
                v33 += 32;
              }

              while (v33 != v34);
            }
          }

          v6 += 128;
        }

        v6 = v27;
      }

      else if (v6 != v5)
      {
        while (((*(__p + ((*v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v6) & 1) == 0)
        {
          v6 += 128;
          if (v6 == v5)
          {
            v6 = v5;
            break;
          }
        }
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1B41BA4F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::mergeOverlappingGroups(unint64_t a1@<X0>, void *a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    v28 = 0;
    v27 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v8 = -1;
    v9 = 0.0;
    v10 = *a3;
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = (*a2 + (v12 << 7));
      v14 = v13[5] - v13[4];
      if (((v13[7] - v13[6]) * v14) > v9)
      {
        v8 = v11;
        v9 = (v13[7] - v13[6]) * v14;
      }
    }

    while (v10 != v6);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    do
    {
      v15 = *v5;
      if (v15 == v8)
      {
        v16 = *a2 + (v8 << 7);
        v18 = *(v16 + 104);
        v17 = *(v16 + 112);
        while (v18 != v17)
        {
          LODWORD(v31) = *v18;
          v32 = *(v18 + 8);
          v19 = *(v18 + 32);
          v33 = *(v18 + 16);
          v34 = v19;
          v20 = *(v18 + 48);
          v21 = *(v18 + 64);
          v22 = *(v18 + 80);
          v38 = *(v18 + 96);
          v36 = v21;
          v37 = v22;
          v35 = v20;
          memset(v39, 0, sizeof(v39));
          std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(v39, *(v18 + 104), *(v18 + 112), (*(v18 + 112) - *(v18 + 104)) >> 7);
          v23 = v41;
          if (v41 >= v42)
          {
            v24 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion&>(&v40, &v31);
          }

          else
          {
            std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(v41, &v31);
            v24 = v23 + 128;
          }

          v41 = v24;
          v43 = v39;
          std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v43);

          v18 += 128;
        }
      }

      else
      {
        v25 = *a2 + (v15 << 7);
        v26 = v41;
        if (v41 >= v42)
        {
          a1 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion const&>(&v40, v25);
        }

        else
        {
          std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion const&,0>(v41, v25);
          a1 = v26 + 128;
        }

        v41 = a1;
      }

      ++v5;
    }

    while (v5 != v6);
    v27 = v40;
    v28 = v41;
  }

  CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(a1, v27, v28);
  *a4 = -1;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 104) = 0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 84) = 0u;
  v29 = v40;
  v30 = v41;
  while (v29 != v30)
  {
    CRTextRecognition::CRCTLD::CTLDRegion::addMember(a4, v29);
    v29 = (v29 + 128);
  }

  v31 = &v40;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v31);
}

void sub_1B41BA73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v10 - 120;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::flatMergeGroups@<X0>(uint64_t *__return_ptr a1@<X8>, CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl *this@<X0>, void *a3@<X1>, uint64_t a4@<X2>)
{
  *a1 = -1;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  *(a1 + 1) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 9) = 0u;
  v7 = (a4 + 16);
  *(a1 + 84) = 0u;
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    CRTextRecognition::CRCTLD::CTLDRegion::addMember(a1, (*a3 + (*(v7 + 4) << 7)));
  }

  CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::unfoldHierarchicalGroups(&v14, this, a1);
  *a1 = v14;
  v8 = v15;
  v15 = 0;
  v9 = a1[1];
  a1[1] = v8;

  v10 = v19;
  *(a1 + 3) = v18;
  *(a1 + 4) = v10;
  *(a1 + 5) = v20;
  *(a1 + 24) = v21;
  v11 = v17;
  *(a1 + 1) = v16;
  *(a1 + 2) = v11;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(a1 + 13);
  *(a1 + 13) = v22;
  a1[15] = v23;
  v23 = 0;
  v22 = 0uLL;
  v24 = &v22;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v24);

  return CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortRegions(v12, a1[13], a1[14]);
}

float CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::distanceBetweenCenterOfRegions(CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl *this, const CRTextRecognition::CRCTLD::CTLDRegion *a2, const CRTextRecognition::CRCTLD::CTLDRegion *a3)
{
  v3 = (*(a2 + 4) + *(a2 + 5)) * 0.5;
  v4 = *(a3 + 4) + *(a3 + 5);
  v5 = ((*(a2 + 6) + *(a2 + 7)) * 0.5) - ((*(a3 + 6) + *(a3 + 7)) * 0.5);
  return ((v3 - (v4 * 0.5)) * (v3 - (v4 * 0.5))) + (v5 * v5);
}

BOOL CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::checkRegionsLayoutDirection(CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl *this, id *a2, id *a3)
{
  if (![a2[1] layoutDirection] || !objc_msgSend(a3[1], "layoutDirection") || objc_msgSend(a2[1], "layoutDirection") != 5 && objc_msgSend(a3[1], "layoutDirection") != 5)
  {
    return 1;
  }

  v5 = [a2[1] layoutDirection];
  return v5 == [a3[1] layoutDirection];
}

uint64_t CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::skipWhitespaceDueToDirectionsSwapped(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, void *a5, float a6)
{
  result = [*(a2 + 8) layoutDirection];
  if (result)
  {
    v13 = [*(a3 + 8) layoutDirection];
    result = 0;
    if (a5)
    {
      if (v13)
      {
        v14 = [*(a2 + 8) layoutDirection];
        result = (v14 == [*(a3 + 8) layoutDirection] && objc_msgSend(*(a2 + 8), "layoutDirection") != a5 && objc_msgSend(*(a2 + 8), "layoutDirection") == 5 || (objc_msgSend(*(a2 + 8), "layoutDirection") - 1) <= 1 && (v15 = objc_msgSend(*(a3 + 8), "layoutDirection"), a5 == 5) && (v15 - 1) <= 1) && ((a4[7] - a4[6]) < (*(a1 + 16) * a6) || (a4[5] - a4[4]) < (*(a1 + 12) * a6));
      }
    }
  }

  return result;
}

uint64_t CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::checkGroupsMergeConsistency(CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl *a1, void *a2, const CRTextRecognition::CRCTLD::CTLDRegion *a3, const CRTextRecognition::CRCTLD::CTLDRegion *a4)
{
  v7 = a2;
  if (v7)
  {
    CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::unfoldHierarchicalGroups(v16, a1, a3);
    CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::unfoldHierarchicalGroups(v14, a1, a4);
    v8 = v17[0];
    v9 = v17[1];
LABEL_3:
    if (v8 == v9)
    {
      v12 = 1;
    }

    else
    {
      v10 = v15[0];
      v11 = v15[1];
      while (1)
      {
        if (v10 == v11)
        {
          v8 += 128;
          goto LABEL_3;
        }

        if ([v7 groupingConstraintForRegion1:*(v8 + 8) region2:*(v10 + 8)] == 1)
        {
          break;
        }

        v10 += 128;
      }

      v12 = 0;
    }

    v18 = v15;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v18);

    v14[0] = v17;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v14);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void sub_1B41BABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  CRTextRecognition::CRCTLD::CTLDRegion::~CTLDRegion(&a26);

  _Unwind_Resume(a1);
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::preprocessTextRegions(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, float a4@<S0>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    do
    {
      v10 = v5 + (v9 << 7);
      v11 = *(v10 + 96);
      if (v11 == 0.0)
      {
        v12 = a3[1];
        if (v12 >= a3[2])
        {
          v13 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion&>(a3, v10);
        }

        else
        {
          std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(a3[1], v10);
          v13 = v12 + 128;
        }

        a3[1] = v13;
      }

      else if (fabsf(v11) <= *(a1 + 24))
      {
        LODWORD(v29) = *v10;
        v30 = *(v10 + 8);
        v22 = *(v10 + 32);
        v31 = *(v10 + 16);
        v32 = v22;
        v23 = *(v10 + 48);
        v24 = *(v10 + 64);
        v25 = *(v10 + 80);
        v36 = *(v10 + 96);
        v34 = v24;
        v35 = v25;
        v33 = v23;
        memset(v37, 0, sizeof(v37));
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(v37, *(v10 + 104), *(v10 + 112), (*(v10 + 112) - *(v10 + 104)) >> 7);
        v39.x = (*(&v31 + 2) + *(&v31 + 3)) * 0.5;
        v39.y = (*&v31 + *(&v31 + 1)) * 0.5;
        CRTextRecognition::CRCTLD::CTLDRegion::rotate(&v29, -*(*a2 + (v9 << 7) + 96), v39);
        v26 = a3[1];
        if (v26 >= a3[2])
        {
          v28 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion&>(a3, &v29);
        }

        else
        {
          v27 = std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(a3[1], &v29);
          v28 = v26 + 128;
        }

        a3[1] = v28;
        LODWORD(v27) = DWORD2(v31);
        CRTextRecognition::CRCTLD::CTLDRegion::updateBoundingBox((*a2 + (v9 << 7)), *&v27, *(&v31 + 3), *&v31, *(&v31 + 1));
        v38 = v37;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v38);
      }

      else
      {
        CRTextRecognition::CRCTLD::CTLDRegion::splitRegionIntoSubRectangles(v10, *(a1 + 20) * a4, &v29);
        v15 = v29;
        v16 = v30;
        if (v29 == v30)
        {
          v20 = -3.4028e38;
          v21 = 3.4028e38;
          v18 = -3.4028e38;
          v19 = 3.4028e38;
        }

        else
        {
          v17 = a3[1];
          v18 = -3.4028e38;
          v19 = 3.4028e38;
          v20 = -3.4028e38;
          v21 = 3.4028e38;
          do
          {
            if (v17 >= a3[2])
            {
              v17 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion const&>(a3, v15);
            }

            else
            {
              v14 = std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion const&,0>(v17, v15);
              v17 += 128;
            }

            a3[1] = v17;
            if (v19 >= v15[4])
            {
              v19 = v15[4];
            }

            if (v21 >= v15[6])
            {
              v21 = v15[6];
            }

            if (v15[5] >= v20)
            {
              v20 = v15[5];
            }

            if (v15[7] >= v18)
            {
              v18 = v15[7];
            }

            v15 += 32;
          }

          while (v15 != v16);
        }

        *&v14 = v21;
        CRTextRecognition::CRCTLD::CTLDRegion::updateBoundingBox((*a2 + (v9 << 7)), *&v14, v18, v19, v20);
        v38 = &v29;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v38);
      }

      ++v9;
      v5 = *a2;
    }

    while (v9 < (a2[1] - *a2) >> 7);
  }
}

void sub_1B41BAEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{
  v10[1] = v11;
  CRTextRecognition::CRCTLD::CTLDRegion::~CTLDRegion(&a10);
  a10 = v10;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

float CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::distanceBetweenGroups(CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl *this, const CRTextRecognition::CRCTLD::CTLDRegion *a2, const CRTextRecognition::CRCTLD::CTLDRegion *a3)
{
  if (CRTextRecognition::CRCTLD::CTLDRegion::getIntersectionArea(a2, a3) > 0.0)
  {
    return 0.0;
  }

  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v9 = *(a3 + 6);
  v8 = *(a3 + 7);
  v10 = v6 - v8;
  v11 = v6 <= v8;
  v12 = 0.0;
  if (!v11)
  {
    v12 = (v10 * v10) + 0.0;
  }

  if (v7 < v9)
  {
    v12 = v12 + ((v9 - v7) * (v9 - v7));
  }

  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v16 = *(a3 + 4);
  v15 = *(a3 + 5);
  v11 = v13 <= v15;
  v17 = v12 + ((v13 - v15) * (v13 - v15));
  if (!v11)
  {
    v12 = v17;
  }

  if (v14 < v16)
  {
    v12 = v12 + ((v16 - v14) * (v16 - v14));
  }

  return sqrtf(v12);
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1B41BB070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::groupRegions(CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a4;
  v10 = v9;
  if (a2[1] == *a2)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    CharacterSize = CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::getCharacterSize(v9, a2);
    memset(v14, 0, sizeof(v14));
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(v14, *a2, a2[1], (a2[1] - *a2) >> 7);
    CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::preprocessTextRegions(a1, v14, v13, CharacterSize);
    CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::findWhitespaceRegions(a1, v13, v12, CharacterSize);
    CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::findConstrainedBlockRegions(a1, a2, v14, v12, a3, v10, a5, CharacterSize);
    CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::sortBlocks(a1, a5, v14, v12, a3, v10);
    v15 = v12;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v15);
    v12[0] = v13;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v12);
    v13[0] = v14;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v13);
  }
}

void sub_1B41BB1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char ***a18)
{
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&a18);
  a18 = &a9;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&a18);
  a9 = &a12;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&a9);
  a12 = &a15;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void std::__split_buffer<int *>::emplace_back<int *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int>&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int>&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
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
  std::__split_buffer<std::vector<PixelPosition>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B41BB4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<PixelPosition>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDNode>>::destroy[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDNode,0>(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 104);
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::__split_buffer<CRTextRecognition::CRCTLD::CTLDNode>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDNode>>::destroy[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDNode,0>(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDNode *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 - 2;
  if (a3 >= 2)
  {
    v36[11] = v3;
    v36[12] = v4;
    v7 = v5 >> 1;
    v8 = a1 + 160 * (v5 >> 1);
    v9 = *(a2 - 8);
    if (*(v8 + 152) < v9)
    {
      v10 = a2 - 160;
      v24 = *(a2 - 160);
      v11 = *(a2 - 152);
      *(v10 + 8) = 0;
      v25 = v11;
      v27 = *(a2 - 128);
      v26 = *(a2 - 144);
      v31 = *(a2 - 64);
      v30 = *(a2 - 80);
      v29 = *(a2 - 96);
      v28 = *(a2 - 112);
      v32 = *(a2 - 56);
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *&v12 = *(a2 - 40);
      *(v10 + 120) = 0;
      v13 = *(a2 - 32);
      *(&v12 + 1) = v13;
      v23 = *(a2 - 24);
      v33 = v12;
      v34 = v23;
      *(v10 + 128) = 0;
      *(v10 + 136) = 0;
      *(v10 + 144) = 0;
      v35 = v9;
      do
      {
        v14 = v8;
        *v10 = *v8;
        v15 = *(v8 + 8);
        *(v14 + 8) = 0;
        v16 = *(v10 + 8);
        *(v10 + 8) = v15;

        v17 = *(v14 + 32);
        *(v10 + 16) = *(v14 + 16);
        *(v10 + 32) = v17;
        v18 = *(v14 + 48);
        v19 = *(v14 + 64);
        v20 = *(v14 + 80);
        *(v10 + 96) = *(v14 + 96);
        *(v10 + 64) = v19;
        *(v10 + 80) = v20;
        *(v10 + 48) = v18;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v10 + 104));
        *(v10 + 104) = *(v14 + 104);
        *(v10 + 120) = *(v14 + 120);
        *(v14 + 104) = 0;
        *(v14 + 112) = 0;
        *(v14 + 120) = 0;
        std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__move_assign(v10 + 128, (v14 + 128));
        *(v10 + 152) = *(v14 + 152);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = a1 + 160 * v7;
        v10 = v14;
      }

      while (*(v8 + 152) < v35);
      *v14 = v24;
      v21 = *(v14 + 8);
      *(v14 + 8) = v25;

      *(v14 + 16) = v26;
      *(v14 + 32) = v27;
      *(v14 + 96) = v31;
      *(v14 + 64) = v29;
      *(v14 + 80) = v30;
      *(v14 + 48) = v28;
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v14 + 104));
      *(v14 + 104) = v32;
      *(v14 + 120) = v33;
      v32 = 0uLL;
      *&v33 = 0;
      v22 = *(v14 + 128);
      if (v22)
      {
        *(v14 + 136) = v22;
        operator delete(v22);
        *(v14 + 128) = 0;
        *(v14 + 136) = 0;
        *(v14 + 144) = 0;
      }

      *(v14 + 128) = v13;
      *(v14 + 136) = v23;
      *(&v33 + 1) = 0;
      v34 = 0uLL;
      *(v14 + 152) = v35;
      v36[0] = &v32;
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v36);
    }
  }
}

void std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDObstacle*,CRTextRecognition::CRCTLD::CTLDObstacle*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDObstacle>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1B41BB844(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDObstacle>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<CRTextRecognition::CRCTLD::CTLDNode>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 160;
        std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDNode>>::destroy[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDNode,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

CRTextRecognition::CRCTLD::CTLDMFSet *CRTextRecognition::CRCTLD::CTLDMFSet::CTLDMFSet(CRTextRecognition::CRCTLD::CTLDMFSet *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v5 = -1;
  std::vector<int>::vector[abi:ne200100](&v6, a2, &v5);
  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  *this = v6;
  *(this + 2) = v7;
  return this;
}

void sub_1B41BB9A0(_Unwind_Exception *exception_object)
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
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1B41BBAB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion const&,0>(a1[1], a2);
    result = v3 + 128;
    a1[1] = v3 + 128;
  }

  a1[1] = result;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::__unordered_map_hasher<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
{
  if (a1)
  {
    v3 = a2 + 16;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__assign_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 7)
  {
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(a1);
    if (!(a4 >> 57))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 6;
      if (v9 >> 6 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFF80)
      {
        v11 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 7)
  {
    v13 = std::__copy_impl::operator()[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *>(a2, a3, v8);

    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__base_destruct_at_end[abi:ne200100](a1, v13);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *>(a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(a1, a2 + v12, a3, a1[1]);
  }
}

void std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      v7 = *(v6 + 48);
      v8 = *(v6 + 64);
      v9 = *(v6 + 80);
      v10 = *(v6 + 96);
      v11 = *(v6 + 16);
      v12 = *(v6 + 32);
      *(v4 + 104) = 0;
      *(v4 + 32) = v12;
      *(v4 + 16) = v11;
      *(v4 + 96) = v10;
      *(v4 + 80) = v9;
      *(v4 + 64) = v8;
      *(v4 + 48) = v7;
      *(v4 + 112) = 0;
      *(v4 + 120) = 0;
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>((v4 + 104), *(v6 + 104), *(v6 + 112), (*(v6 + 112) - *(v6 + 104)) >> 7);
      v6 += 128;
      v4 = v17 + 128;
      v17 += 128;
    }

    while (v6 != a3);
  }

  v15 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>>::~__exception_guard_exceptions[abi:ne200100](v14);
  return v4;
}

double std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  *(a1 + 104) = 0;
  *(a1 + 32) = v9;
  *(a1 + 16) = v8;
  *(a1 + 96) = v7;
  *(a1 + 80) = v6;
  *(a1 + 64) = v5;
  *(a1 + 48) = v4;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 7);
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion*>,std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion*>,std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v9[5] = v5;
    v9[6] = v6;
    v8 = a3;
    do
    {
      v9[0] = (v8 - 24);
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v9);

      v8 -= 128;
    }

    while (v8 != a5);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *>(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 14;
    do
    {
      v6 = v5 - 14;
      *a3 = *(v5 - 28);
      objc_storeStrong((a3 + 8), *(v5 - 13));
      v7 = *(v5 - 5);
      *(a3 + 16) = *(v5 - 6);
      *(a3 + 32) = v7;
      v8 = *(v5 - 4);
      v9 = *(v5 - 3);
      v10 = *(v5 - 2);
      *(a3 + 96) = *(v5 - 4);
      *(a3 + 64) = v9;
      *(a3 + 80) = v10;
      *(a3 + 48) = v8;
      if (a3 != v5 - 14)
      {
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__assign_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>((a3 + 104), *(v5 - 1), *v5, (*v5 - *(v5 - 1)) >> 7);
      }

      a3 += 128;
      v5 += 16;
    }

    while (v6 + 16 != a2);
  }

  return a3;
}

void std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 128)
  {
    v5 = (i - 24);
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__hash_table<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::__unordered_map_hasher<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,CRTextRecognition::CRCTLD::CTLDRegion>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = v2 + 16;
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v6);

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

void CRTextRecognition::CRCTLD::order::kwiksort<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>(int *result, int *a2, int a3)
{
  v79 = *MEMORY[0x1E69E9840];
  if (result == a2 || result + 32 == a2)
  {
    return;
  }

  if (a3 >= 64)
  {
LABEL_15:

    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>(result, a2);
    return;
  }

  v5 = result + 32;
  v6 = result;
  while (v5 != a2)
  {
    if ((*(v6 + 5) - *(v6 + 4)) < (*(v5 + 5) - *(v5 + 4)))
    {
      v6 = v5;
    }

    v5 += 32;
  }

  v7 = (v6 + 4);
  v8 = *(v6 + 5) - *(v6 + 4);
  v9 = result;
  while (1)
  {
    v10 = *(v9 + 5) - *(v9 + 4);
    if (v10 != 0.0)
    {
      break;
    }

    if (v8 > 0.0)
    {
      goto LABEL_18;
    }

LABEL_14:
    v9 += 32;
    if (v9 == a2)
    {
      goto LABEL_15;
    }
  }

  if (v8 / v10 <= 1.1)
  {
    goto LABEL_14;
  }

LABEL_18:
  LODWORD(v68) = *v6;
  v11 = v68;
  v12 = *(v6 + 1);
  *(v6 + 1) = 0;
  v13 = *(v6 + 2);
  v70 = *v7;
  v71 = v13;
  v14 = *(v6 + 3);
  v15 = *(v6 + 4);
  v16 = *(v6 + 5);
  v75 = v6[24];
  v73 = v15;
  v74 = v16;
  v72 = v14;
  v17 = *(v6 + 15);
  v64 = *(v6 + 26);
  *(v6 + 14) = 0;
  *(v6 + 15) = 0;
  *(v6 + 13) = 0;
  v18 = a2 - 32;
  *v6 = *(a2 - 32);
  v19 = *(a2 - 15);
  *(a2 - 15) = 0;
  v20 = *(v6 + 1);
  *(v6 + 1) = v19;

  v21 = *(a2 - 6);
  *v7 = *(a2 - 7);
  *(v6 + 2) = v21;
  v22 = *(a2 - 5);
  v23 = *(a2 - 4);
  v24 = *(a2 - 3);
  v6[24] = *(a2 - 8);
  *(v6 + 4) = v23;
  *(v6 + 5) = v24;
  *(v6 + 3) = v22;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(v6 + 13);
  v25 = a2 - 6;
  *(v6 + 26) = *(a2 - 6);
  *(v6 + 15) = *(a2 - 1);
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  *v18 = v11;
  v69 = 0;
  v26 = *(a2 - 15);
  *(a2 - 15) = v12;

  v27 = v71;
  *(a2 - 7) = v70;
  *(a2 - 6) = v27;
  v28 = v72;
  v29 = v73;
  v30 = v74;
  *(a2 - 8) = v75;
  *(a2 - 4) = v29;
  *(a2 - 3) = v30;
  *(a2 - 5) = v28;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(a2 - 3);
  *v25 = v64;
  *(a2 - 1) = v17;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v67 = &v76;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v67);

  v31 = a2 - 28;
  v68 = a2 - 32;
  v32 = result;
  v33 = v18 - result;
  if (v18 != result)
  {
    v32 = result;
    v34 = result;
    while (CRTextRecognition::CRCTLD::CTLDRegion::operator<(v34, (a2 - 32)))
    {
      v34 += 32;
      v33 -= 128;
      v32 += 32;
      if (v34 == v18)
      {
        v32 = a2 - 32;
        goto LABEL_38;
      }
    }

    v35 = (a2 - 64);
    v36 = a2 - 32;
    while (v34 != v35)
    {
      v37 = CRTextRecognition::CRCTLD::CTLDRegion::operator<(v35, (a2 - 32));
      v36 -= 32;
      v33 -= 128;
      v35 -= 128;
      if (v37)
      {
        v38 = v33 >> 7;
        v39 = (v33 >> 7) + 1;
        if (v38 < 3)
        {
          v40 = 0;
          v45 = 0;
        }

        else
        {
          if (v39 >= 0xFFFFFFFFFFFFFFLL)
          {
            v40 = 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v39;
          }

          v41 = MEMORY[0x1E69E5398];
          while (1)
          {
            v42 = operator new(v40 << 7, v41);
            if (v42)
            {
              break;
            }

            v43 = v40 >> 1;
            v44 = v40 > 1;
            v40 >>= 1;
            if (!v44)
            {
              v45 = 0;
              v40 = v43;
              goto LABEL_36;
            }
          }

          v45 = v42;
        }

LABEL_36:
        v32 = std::__stable_partition_impl<std::_ClassicAlgPolicy,void CRTextRecognition::CRCTLD::order::kwiksort<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>(std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>,int)::{lambda(std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> const&)#2} &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,long,std::pair<CRTextRecognition::CRCTLD::CTLDRegion *,long>>(v32, v36, &v68, v39, v45, v40);
        if (v45)
        {
          operator delete(v45);
        }

        break;
      }
    }
  }

LABEL_38:
  LODWORD(v68) = *(a2 - 32);
  v46 = v68;
  v65 = *(a2 - 15);
  *(a2 - 15) = 0;
  v47 = *(a2 - 5);
  v48 = *(a2 - 4);
  v49 = *(a2 - 3);
  v75 = *(a2 - 8);
  v73 = v48;
  v74 = v49;
  v72 = v47;
  v50 = *(a2 - 6);
  v70 = *v31;
  v71 = v50;
  v63 = *(a2 - 6);
  v62 = *(a2 - 1);
  *v25 = 0;
  *(a2 - 2) = 0;
  *(a2 - 1) = 0;
  v51 = *(v32 + 1);
  *(a2 - 32) = *v32;
  *(v32 + 1) = 0;
  v52 = *(a2 - 15);
  *(a2 - 15) = v51;

  v53 = *(v32 + 2);
  *v31 = *(v32 + 1);
  *(a2 - 6) = v53;
  v54 = *(v32 + 3);
  v55 = *(v32 + 4);
  v56 = *(v32 + 5);
  *(a2 - 8) = v32[24];
  *(a2 - 4) = v55;
  *(a2 - 3) = v56;
  *(a2 - 5) = v54;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(a2 - 3);
  *(a2 - 6) = *(v32 + 26);
  *(a2 - 1) = *(v32 + 15);
  *(v32 + 13) = 0;
  *(v32 + 14) = 0;
  *(v32 + 15) = 0;
  *v32 = v46;
  v69 = 0;
  v57 = *(v32 + 1);
  *(v32 + 1) = v65;

  v58 = v71;
  *(v32 + 1) = v70;
  *(v32 + 2) = v58;
  v59 = v72;
  v60 = v73;
  v61 = v74;
  v32[24] = v75;
  *(v32 + 4) = v60;
  *(v32 + 5) = v61;
  *(v32 + 3) = v59;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(v32 + 13);
  *(v32 + 26) = v63;
  *(v32 + 15) = v62;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v67 = &v76;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v67);

  CRTextRecognition::CRCTLD::order::kwiksort<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>(result, v32, a3 + 1);
  CRTextRecognition::CRCTLD::order::kwiksort<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>((v32 + 32), a2, a3 + 1);
}

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SD_NS_15iterator_traitsISI_E15difference_typeEPNSK_10value_typeEl(uint64_t a1, float *a2, void **a3, uint64_t a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (*(a2 - 26) < *(a1 + 24))
      {
        v7 = (a2 - 32);

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(a1, v7);
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v15 = (a1 + 128);
        if ((a1 + 128) != a2)
        {
          v16 = 0;
          v17 = a1;
          do
          {
            v18 = v15;
            if (*(v17 + 152) < *(v17 + 24))
            {
              LODWORD(v71) = *v15;
              v19 = *(v17 + 136);
              *(v17 + 136) = 0;
              v72 = v19;
              v20 = *(v17 + 192);
              v75 = *(v17 + 176);
              v76 = v20;
              v77 = *(v17 + 208);
              v78 = *(v17 + 224);
              v21 = *(v17 + 160);
              v73 = *(v17 + 144);
              v74 = v21;
              *v79 = *(v17 + 232);
              *&v79[16] = *(v17 + 248);
              *(v17 + 232) = 0;
              *(v17 + 240) = 0;
              v22 = v16;
              *(v17 + 248) = 0;
              while (1)
              {
                v23 = a1 + v22;
                *(v23 + 128) = *(a1 + v22);
                v24 = *(a1 + v22 + 8);
                *(v23 + 8) = 0;
                v25 = *(a1 + v22 + 136);
                *(v23 + 136) = v24;

                v26 = *(a1 + v22 + 64);
                *(v23 + 176) = *(v23 + 48);
                *(v23 + 192) = v26;
                *(v23 + 208) = *(v23 + 80);
                *(v23 + 224) = *(v23 + 96);
                v27 = *(a1 + v22 + 32);
                *(v23 + 144) = *(v23 + 16);
                *(v23 + 160) = v27;
                std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((a1 + v22 + 232));
                *(v23 + 232) = *(v23 + 104);
                *(v23 + 248) = *(v23 + 120);
                *(v23 + 112) = 0;
                *(v23 + 120) = 0;
                *(v23 + 104) = 0;
                if (!v22)
                {
                  break;
                }

                v22 -= 128;
                if (*(&v73 + 2) >= *(v23 - 104))
                {
                  v28 = a1 + v22 + 128;
                  goto LABEL_22;
                }
              }

              v28 = a1;
LABEL_22:
              *v28 = v71;
              v29 = v72;
              v72 = 0;
              v30 = *(v28 + 8);
              *(v28 + 8) = v29;

              v31 = v74;
              *(v23 + 16) = v73;
              *(v23 + 32) = v31;
              v32 = v75;
              v33 = v76;
              v34 = v77;
              *(v23 + 96) = v78;
              *(v23 + 64) = v33;
              *(v23 + 80) = v34;
              *(v23 + 48) = v32;
              std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v23 + 104));
              *(v23 + 104) = *v79;
              *(v28 + 112) = *&v79[8];
              memset(v79, 0, sizeof(v79));
              v80 = v79;
              std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v80);
            }

            v15 = v18 + 32;
            v16 += 128;
            v17 = v18;
          }

          while (v18 + 32 != a2);
        }
      }
    }

    else
    {
      v10 = a4;
      v11 = a3 >> 1;
      v12 = (a1 + (a3 >> 1 << 7));
      if (a3 <= a5)
      {
        v80 = 0;
        v71 = a4;
        v72 = &v80;
        _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SD_NS_15iterator_traitsISI_E15difference_typeEPNSK_10value_typeE(a1, (a1 + (a3 >> 1 << 7)), a3 >> 1, a4);
        v80 = v11;
        v35 = a3 - v11;
        v36 = v10 + (v11 << 7);
        _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SD_NS_15iterator_traitsISI_E15difference_typeEPNSK_10value_typeE((a1 + (a3 >> 1 << 7)), a2, v35, v36);
        v80 = a3;
        v37 = (v10 + (a3 << 7));
        v38 = (a1 + 120);
        v39 = v36;
        while (v39 != v37)
        {
          v40 = v38 - 13;
          if (*(v39 + 24) >= *(v10 + 24))
          {
            *(v38 - 30) = *v10;
            v47 = *(v10 + 8);
            *(v10 + 8) = 0;
            v48 = *(v38 - 14);
            *(v38 - 14) = v47;

            v49 = *(v10 + 32);
            *v40 = *(v10 + 16);
            *(v38 - 11) = v49;
            v50 = *(v10 + 48);
            v51 = *(v10 + 64);
            v52 = *(v10 + 80);
            *(v38 - 6) = *(v10 + 96);
            *(v38 - 7) = v51;
            *(v38 - 5) = v52;
            *(v38 - 9) = v50;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(v38 - 2);
            *(v38 - 1) = *(v10 + 104);
            *v38 = *(v10 + 120);
            *(v10 + 104) = 0;
            *(v10 + 112) = 0;
            *(v10 + 120) = 0;
            v10 += 128;
          }

          else
          {
            *(v38 - 30) = *v39;
            v41 = *(v39 + 8);
            *(v39 + 8) = 0;
            v42 = *(v38 - 14);
            *(v38 - 14) = v41;

            v43 = *(v39 + 32);
            *v40 = *(v39 + 16);
            *(v38 - 11) = v43;
            v44 = *(v39 + 48);
            v45 = *(v39 + 64);
            v46 = *(v39 + 80);
            *(v38 - 6) = *(v39 + 96);
            *(v38 - 7) = v45;
            *(v38 - 5) = v46;
            *(v38 - 9) = v44;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(v38 - 2);
            *(v38 - 1) = *(v39 + 104);
            *v38 = *(v39 + 120);
            *(v39 + 104) = 0;
            *(v39 + 112) = 0;
            *(v39 + 120) = 0;
            v39 += 128;
          }

          v38 += 16;
          if (v10 == v36)
          {
            if (v39 != v37)
            {
              v53 = 0;
              do
              {
                v54 = (v39 + v53);
                v55 = &v38[v53 / 8];
                *(v55 - 30) = *(v39 + v53);
                v56 = *(v39 + v53 + 8);
                *(v39 + v53 + 8) = 0;
                v57 = v38[v53 / 8 - 14];
                *(v55 - 14) = v56;

                v58 = *(v39 + v53 + 16);
                *(v55 - 11) = *(v39 + v53 + 32);
                *(v55 - 13) = v58;
                v59 = *(v39 + v53 + 48);
                v60 = *(v39 + v53 + 64);
                v61 = *(v39 + v53 + 80);
                *(v55 - 6) = *(v39 + v53 + 96);
                *(v55 - 5) = v61;
                *(v55 - 7) = v60;
                *(v55 - 9) = v59;
                std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(&v38[v53 / 8 - 2]);
                *(v55 - 1) = *(v39 + v53 + 104);
                *v55 = *(v39 + v53 + 120);
                v54[13] = 0;
                v54[14] = 0;
                v54[15] = 0;
                v53 += 128;
              }

              while (v54 + 16 != v37);
            }

            goto LABEL_38;
          }
        }

        if (v10 != v36)
        {
          v62 = 0;
          do
          {
            v63 = (v10 + v62);
            v64 = &v38[v62 / 8];
            *(v64 - 30) = *(v10 + v62);
            v65 = *(v10 + v62 + 8);
            *(v10 + v62 + 8) = 0;
            v66 = v38[v62 / 8 - 14];
            *(v64 - 14) = v65;

            v67 = *(v10 + v62 + 16);
            *(v64 - 11) = *(v10 + v62 + 32);
            *(v64 - 13) = v67;
            v68 = *(v10 + v62 + 48);
            v69 = *(v10 + v62 + 64);
            v70 = *(v10 + v62 + 80);
            *(v64 - 6) = *(v10 + v62 + 96);
            *(v64 - 5) = v70;
            *(v64 - 7) = v69;
            *(v64 - 9) = v68;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(&v38[v62 / 8 - 2]);
            *(v64 - 1) = *(v10 + v62 + 104);
            *v64 = *(v10 + v62 + 120);
            v63[13] = 0;
            v63[14] = 0;
            v63[15] = 0;
            v62 += 128;
          }

          while (v63 + 16 != v36);
        }

LABEL_38:
        std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v71);
      }

      else
      {
        _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SD_NS_15iterator_traitsISI_E15difference_typeEPNSK_10value_typeEl(a1, (a1 + (a3 >> 1 << 7)), a3 >> 1, a4, a5);
        v13 = a3 - v11;
        _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SD_NS_15iterator_traitsISI_E15difference_typeEPNSK_10value_typeEl(v12, a2, v13, v10, a5);

        _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SI_OSD_NS_15iterator_traitsISI_E15difference_typeESM_PNSL_10value_typeEl(a1, v12, a2, v11, v13, v10, a5, v14);
      }
    }
  }
}

void sub_1B41BCF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(int *a1, int *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  v18 = *(a1 + 3);
  v19 = *(a1 + 4);
  v20 = *(a1 + 5);
  v21 = a1[24];
  v16 = *(a1 + 1);
  v17 = *(a1 + 2);
  v6 = *(a1 + 15);
  v7 = (a1 + 26);
  v15 = *(a1 + 26);
  *(a1 + 13) = 0;
  *(a1 + 14) = 0;
  *(a1 + 15) = 0;
  *a1 = *a2;
  v8 = *(a2 + 1);
  *(a2 + 1) = 0;
  v9 = *(a1 + 1);
  *(a1 + 1) = v8;

  v10 = *(a2 + 2);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = v10;
  v11 = *(a2 + 3);
  v12 = *(a2 + 4);
  v13 = *(a2 + 5);
  a1[24] = a2[24];
  *(a1 + 4) = v12;
  *(a1 + 5) = v13;
  *(a1 + 3) = v11;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(v7);
  *v7 = *(a2 + 26);
  *(a1 + 15) = *(a2 + 15);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *a2 = v4;
  v14 = *(a2 + 1);
  *(a2 + 1) = v5;

  *(a2 + 3) = v18;
  *(a2 + 4) = v19;
  *(a2 + 5) = v20;
  a2[24] = v21;
  *(a2 + 1) = v16;
  *(a2 + 2) = v17;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(a2 + 13);
  *(a2 + 26) = v15;
  *(a2 + 15) = v6;
  memset(v22, 0, sizeof(v22));
  v23 = v22;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v23);
}

uint64_t *_ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SD_NS_15iterator_traitsISI_E15difference_typeEPNSK_10value_typeE(uint64_t *result, float *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    if (a3 == 2)
    {
      v99 = a4;
      v100 = &v101;
      if (*(a2 - 26) >= *(result + 6))
      {
        *a4 = *result;
        v55 = result[1];
        result[1] = 0;
        *(a4 + 8) = v55;
        v56 = *(result + 2);
        *(a4 + 16) = *(result + 1);
        *(a4 + 32) = v56;
        v57 = *(result + 3);
        v58 = *(result + 4);
        v59 = *(result + 5);
        *(a4 + 96) = *(result + 24);
        *(a4 + 64) = v58;
        *(a4 + 80) = v59;
        *(a4 + 48) = v57;
        *(a4 + 112) = 0;
        *(a4 + 120) = 0;
        *(a4 + 104) = 0;
        *(a4 + 104) = *(result + 13);
        *(a4 + 120) = result[15];
        result[13] = 0;
        result[14] = 0;
        result[15] = 0;
        v101 = 1;
        *(a4 + 128) = *(a2 - 32);
        v60 = *(a2 - 15);
        *(a2 - 15) = 0;
        *(a4 + 136) = v60;
        v61 = *(a2 - 6);
        *(a4 + 144) = *(a2 - 7);
        *(a4 + 160) = v61;
        v62 = *(a2 - 5);
        v63 = *(a2 - 4);
        v64 = *(a2 - 3);
        *(a4 + 224) = *(a2 - 8);
        *(a4 + 192) = v63;
        *(a4 + 208) = v64;
        *(a4 + 176) = v62;
        *(a4 + 240) = 0;
        *(a4 + 248) = 0;
        *(a4 + 232) = 0;
        *(a4 + 232) = *(a2 - 3);
        v24 = a2 - 4;
        v25 = a2 - 2;
        v23 = a2 - 6;
      }

      else
      {
        *a4 = *(a2 - 32);
        v13 = *(a2 - 15);
        *(a2 - 15) = 0;
        *(a4 + 8) = v13;
        v14 = *(a2 - 6);
        *(a4 + 16) = *(a2 - 7);
        *(a4 + 32) = v14;
        v15 = *(a2 - 5);
        v16 = *(a2 - 4);
        v17 = *(a2 - 3);
        *(a4 + 96) = *(a2 - 8);
        *(a4 + 64) = v16;
        *(a4 + 80) = v17;
        *(a4 + 48) = v15;
        *(a4 + 112) = 0;
        *(a4 + 120) = 0;
        *(a4 + 104) = 0;
        *(a4 + 104) = *(a2 - 6);
        *(a4 + 120) = *(a2 - 1);
        *(a2 - 3) = 0;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        v101 = 1;
        *(a4 + 128) = *result;
        v18 = result[1];
        result[1] = 0;
        *(a4 + 136) = v18;
        v19 = *(result + 2);
        *(a4 + 144) = *(result + 1);
        *(a4 + 160) = v19;
        v20 = *(result + 3);
        v21 = *(result + 4);
        v22 = *(result + 5);
        *(a4 + 224) = *(result + 24);
        *(a4 + 192) = v21;
        *(a4 + 208) = v22;
        *(a4 + 176) = v20;
        *(a4 + 240) = 0;
        *(a4 + 248) = 0;
        *(a4 + 232) = 0;
        v23 = (result + 13);
        *(a4 + 232) = result[13];
        v24 = (result + 14);
        v25 = (result + 15);
      }

      *(a4 + 240) = *v24;
      *(a4 + 248) = *v25;
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v23 + 2) = 0;
    }

    else
    {
      if (a3 == 1)
      {
        *a4 = *result;
        v8 = result[1];
        result[1] = 0;
        *(a4 + 8) = v8;
        v9 = *(result + 2);
        *(a4 + 16) = *(result + 1);
        *(a4 + 32) = v9;
        v10 = *(result + 3);
        v11 = *(result + 4);
        v12 = *(result + 5);
        *(a4 + 96) = *(result + 24);
        *(a4 + 64) = v11;
        *(a4 + 80) = v12;
        *(a4 + 48) = v10;
        *(a4 + 112) = 0;
        *(a4 + 120) = 0;
        *(a4 + 104) = 0;
        *(a4 + 104) = *(result + 13);
        *(a4 + 120) = result[15];
        result[13] = 0;
        result[14] = 0;
        result[15] = 0;
        return result;
      }

      if (a3 > 8)
      {
        v65 = &result[16 * (a3 >> 1)];
        _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SD_NS_15iterator_traitsISI_E15difference_typeEPNSK_10value_typeEl(result, v65, a3 >> 1, a4, a3 >> 1);
        _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SD_NS_15iterator_traitsISI_E15difference_typeEPNSK_10value_typeEl(&v7[16 * (a3 >> 1)], a2, a3 - (a3 >> 1), a4 + (a3 >> 1 << 7), a3 - (a3 >> 1));
        v99 = a4;
        v100 = &v101;
        v101 = 0;
        v66 = (a4 + 120);
        v67 = 1;
        v68 = &v7[16 * (a3 >> 1)];
        while (v68 != a2)
        {
          v69 = v66 - 13;
          v70 = v66 - 2;
          if (*(v68 + 6) >= *(v7 + 6))
          {
            *(v66 - 30) = *v7;
            v76 = v7[1];
            v7[1] = 0;
            *(v66 - 14) = v76;
            v77 = *(v7 + 2);
            *v69 = *(v7 + 1);
            *(v66 - 11) = v77;
            v78 = *(v7 + 3);
            v79 = *(v7 + 4);
            v80 = *(v7 + 5);
            *(v66 - 6) = *(v7 + 24);
            *(v66 - 7) = v79;
            *(v66 - 5) = v80;
            *(v66 - 9) = v78;
            *(v66 - 1) = 0;
            *v66 = 0;
            *v70 = 0;
            *(v66 - 1) = *(v7 + 13);
            *v66 = v7[15];
            v7[13] = 0;
            v7[14] = 0;
            v7[15] = 0;
            v7 += 16;
          }

          else
          {
            *(v66 - 30) = *v68;
            v71 = v68[1];
            v68[1] = 0;
            *(v66 - 14) = v71;
            v72 = *(v68 + 2);
            *v69 = *(v68 + 1);
            *(v66 - 11) = v72;
            v73 = *(v68 + 3);
            v74 = *(v68 + 4);
            v75 = *(v68 + 5);
            *(v66 - 6) = *(v68 + 24);
            *(v66 - 7) = v74;
            *(v66 - 5) = v75;
            *(v66 - 9) = v73;
            *(v66 - 1) = 0;
            *v66 = 0;
            *v70 = 0;
            *(v66 - 1) = *(v68 + 13);
            *v66 = v68[15];
            v68[13] = 0;
            v68[14] = 0;
            v68[15] = 0;
            v68 += 16;
          }

          v101 = v67;
          v66 += 16;
          ++v67;
          if (v7 == v65)
          {
            if (v68 != a2)
            {
              v81 = 0;
              v82 = v67 - 1;
              do
              {
                v83 = &v68[v81];
                v84 = &v66[v81];
                *(v84 - 30) = v68[v81];
                v85 = v68[v81 + 1];
                v83[1] = 0;
                *(v84 - 14) = v85;
                v86 = *&v68[v81 + 2];
                *(v84 - 11) = *&v68[v81 + 4];
                *(v84 - 13) = v86;
                v87 = *&v68[v81 + 6];
                v88 = *&v68[v81 + 8];
                v89 = *&v68[v81 + 10];
                *(v84 - 6) = v68[v81 + 12];
                *(v84 - 5) = v89;
                *(v84 - 7) = v88;
                *(v84 - 9) = v87;
                *(v84 - 1) = 0;
                *v84 = 0;
                *(v84 - 2) = 0;
                *(v84 - 1) = *&v68[v81 + 13];
                *v84 = v68[v81 + 15];
                v83[13] = 0;
                v83[14] = 0;
                v83[15] = 0;
                ++v82;
                v81 += 16;
              }

              while (v83 + 16 != a2);
              v101 = v82;
            }

            goto LABEL_23;
          }
        }

        if (v7 != v65)
        {
          v90 = 0;
          v91 = v67 - 1;
          do
          {
            v92 = &v66[v90];
            v93 = &v7[v90];
            *(v92 - 30) = v7[v90];
            v94 = v7[v90 + 1];
            v93[1] = 0;
            *(v92 - 14) = v94;
            v95 = *&v7[v90 + 2];
            *(v92 - 11) = *&v7[v90 + 4];
            *(v92 - 13) = v95;
            v96 = *&v7[v90 + 6];
            v97 = *&v7[v90 + 8];
            v98 = *&v7[v90 + 10];
            *(v92 - 6) = v7[v90 + 12];
            *(v92 - 5) = v98;
            *(v92 - 7) = v97;
            *(v92 - 9) = v96;
            *(v92 - 1) = 0;
            *v92 = 0;
            *(v92 - 2) = 0;
            *(v92 - 1) = *&v7[v90 + 13];
            *v92 = v7[v90 + 15];
            v93[13] = 0;
            v93[14] = 0;
            v93[15] = 0;
            ++v91;
            v90 += 16;
          }

          while (v93 + 16 != v65);
          v101 = v91;
        }
      }

      else
      {
        if (result == a2)
        {
          return result;
        }

        v99 = a4;
        v100 = &v101;
        *a4 = *result;
        v26 = result[1];
        result[1] = 0;
        *(a4 + 8) = v26;
        v27 = *(result + 2);
        *(a4 + 16) = *(result + 1);
        *(a4 + 32) = v27;
        v28 = *(result + 3);
        v29 = *(result + 4);
        v30 = *(result + 5);
        *(a4 + 96) = *(result + 24);
        *(a4 + 64) = v29;
        *(a4 + 80) = v30;
        *(a4 + 48) = v28;
        *(a4 + 112) = 0;
        *(a4 + 120) = 0;
        *(a4 + 104) = 0;
        *(a4 + 104) = *(result + 13);
        *(a4 + 120) = result[15];
        result[13] = 0;
        result[14] = 0;
        result[15] = 0;
        v101 = 1;
        v31 = result + 16;
        if (result + 16 != a2)
        {
          v32 = 0;
          v33 = a4;
          do
          {
            v34 = v31;
            if (*(v7 + 38) >= *(v33 + 24))
            {
              *(v33 + 128) = *v31;
              v50 = v7[17];
              v7[17] = 0;
              *(v33 + 136) = v50;
              v51 = *(v7 + 10);
              *(v33 + 144) = *(v7 + 9);
              *(v33 + 160) = v51;
              v52 = *(v7 + 11);
              v53 = *(v7 + 12);
              v54 = *(v7 + 13);
              *(v33 + 224) = *(v7 + 56);
              *(v33 + 192) = v53;
              *(v33 + 208) = v54;
              *(v33 + 176) = v52;
              *(v33 + 240) = 0;
              *(v33 + 248) = 0;
              *(v33 + 232) = 0;
              *(v33 + 232) = *(v7 + 29);
              *(v33 + 248) = v7[31];
              v7[29] = 0;
              v7[30] = 0;
              v7[31] = 0;
              ++v101;
            }

            else
            {
              *(v33 + 128) = *v33;
              v35 = *(v33 + 8);
              *(v33 + 8) = 0;
              *(v33 + 136) = v35;
              v36 = *(v33 + 64);
              *(v33 + 176) = *(v33 + 48);
              *(v33 + 192) = v36;
              *(v33 + 208) = *(v33 + 80);
              *(v33 + 224) = *(v33 + 96);
              v37 = *(v33 + 32);
              *(v33 + 144) = *(v33 + 16);
              *(v33 + 160) = v37;
              *(v33 + 232) = *(v33 + 104);
              *(v33 + 248) = *(v33 + 120);
              *(v33 + 104) = 0;
              *(v33 + 112) = 0;
              ++v101;
              v38 = a4;
              *(v33 + 120) = 0;
              if (v33 != a4)
              {
                v39 = v32;
                while (1)
                {
                  v38 = a4 + v39;
                  if (*(v7 + 38) >= *(a4 + v39 - 104))
                  {
                    break;
                  }

                  *v38 = *(v38 - 128);
                  v40 = *(v38 - 120);
                  *(v38 - 120) = 0;
                  v41 = *(v38 + 8);
                  *(v38 + 8) = v40;

                  v42 = *(v38 - 64);
                  *(v38 + 48) = *(v38 - 80);
                  *(v38 + 64) = v42;
                  *(v38 + 80) = *(v38 - 48);
                  *(v38 + 96) = *(v38 - 32);
                  v43 = *(v38 - 96);
                  *(v38 + 16) = *(v38 - 112);
                  *(v38 + 32) = v43;
                  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v38 + 104));
                  *(v38 + 104) = *(v38 - 24);
                  *(v38 + 120) = *(v38 - 8);
                  *(v38 - 16) = 0;
                  *(v38 - 8) = 0;
                  *(v38 - 24) = 0;
                  v39 -= 128;
                  if (!v39)
                  {
                    v38 = a4;
                    break;
                  }
                }
              }

              *v38 = *v34;
              v44 = v7[17];
              v7[17] = 0;
              v45 = *(v38 + 8);
              *(v38 + 8) = v44;

              v46 = *(v7 + 10);
              *(v38 + 16) = *(v7 + 9);
              *(v38 + 32) = v46;
              v47 = *(v7 + 11);
              v48 = *(v7 + 12);
              v49 = *(v7 + 13);
              *(v38 + 96) = *(v7 + 56);
              *(v38 + 64) = v48;
              *(v38 + 80) = v49;
              *(v38 + 48) = v47;
              std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v38 + 104));
              *(v38 + 104) = *(v7 + 29);
              *(v38 + 120) = v7[31];
              v7[29] = 0;
              v7[30] = 0;
              v7[31] = 0;
            }

            v33 += 128;
            v31 = v34 + 32;
            v32 += 128;
            v7 = v34;
          }

          while (v34 + 32 != a2);
        }
      }
    }

LABEL_23:
    v99 = 0;
    return std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v99);
  }

  return result;
}

void _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SI_OSD_NS_15iterator_traitsISI_E15difference_typeESM_PNSL_10value_typeEl(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, __n128 a8)
{
  if (a5)
  {
    v8 = a5;
    while (a4 > a7 && v8 > a7)
    {
      if (!a4)
      {
        return;
      }

      v13 = 0;
      a8.n128_u32[0] = *(a2 + 6);
      v14 = -a4;
      while (1)
      {
        v15 = &v13[a1];
        if (a8.n128_f32[0] < *&v13[a1 + 24])
        {
          break;
        }

        v13 += 128;
        if (__CFADD__(v14++, 1))
        {
          return;
        }
      }

      v17 = -v14;
      if (-v14 >= v8)
      {
        if (v14 == -1)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(&v13[a1], a2);
          return;
        }

        v26 = v17 / 2;
        v27 = a1 + ((v17 / 2) << 7);
        if (a3 == a2)
        {
          v19 = a3;
        }

        else
        {
          v28 = (a3 - a2) >> 7;
          a8.n128_u32[0] = *&v13[v27 + 24];
          v19 = a2;
          do
          {
            v29 = v28 >> 1;
            v30 = &v19[128 * (v28 >> 1)];
            v31 = *(v30 + 6);
            v32 = v30 + 128;
            v28 += ~(v28 >> 1);
            if (v31 < a8.n128_f32[0])
            {
              v19 = v32;
            }

            else
            {
              v28 = v29;
            }
          }

          while (v28);
        }

        v18 = (v19 - a2) >> 7;
        v20 = &v13[v27];
      }

      else
      {
        v18 = v8 / 2;
        v19 = &a2[128 * (v8 / 2)];
        v20 = a2;
        if (&a2[-a1] != v13)
        {
          v21 = (&a2[-a1] - v13) >> 7;
          a8.n128_u32[0] = *(v19 + 6);
          v20 = &v13[a1];
          do
          {
            v22 = v21 >> 1;
            v23 = &v20[32 * (v21 >> 1)];
            v24 = *(v23 + 6);
            v25 = v23 + 32;
            v21 += ~(v21 >> 1);
            if (a8.n128_f32[0] < v24)
            {
              v21 = v22;
            }

            else
            {
              v20 = v25;
            }
          }

          while (v21);
        }

        v26 = (v20 - a1 - v13) >> 7;
      }

      v33 = v19;
      if (v20 != a2)
      {
        v33 = v20;
        if (v19 != a2)
        {
          v34 = a2;
          v35 = a6;
          v36 = a3;
          v37 = a7;
          v38 = v26;
          v39 = v18;
          v40 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(v20, v34, v19);
          v18 = v39;
          v26 = v38;
          a7 = v37;
          a3 = v36;
          a6 = v35;
          v33 = v40;
        }
      }

      a4 = -(v26 + v14);
      v41 = v8 - v18;
      if (v26 + v18 >= v8 - (v26 + v18) - v14)
      {
        v45 = v26;
        v46 = -(v26 + v14);
        v47 = v18;
        v42 = a6;
        v43 = a7;
        _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SI_OSD_NS_15iterator_traitsISI_E15difference_typeESM_PNSL_10value_typeEl(v33, v19, a3, v46, v41, a6, a7, a8);
        v19 = v20;
        v41 = v47;
        a4 = v45;
        a3 = v33;
      }

      else
      {
        v42 = a6;
        v43 = a7;
        v44 = a3;
        _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZZNK17CRTextRecognition6CRCTLD34CRConstrainedTextLineDetectionImpl11sortRegionsENS_11__wrap_iterIPNS3_10CTLDRegionEEES8_ENK3__1clES8_S8_EUlRKT_RKT0_E_S8_EEvT1_SI_SI_OSD_NS_15iterator_traitsISI_E15difference_typeESM_PNSL_10value_typeEl(v15, v20, v33, v26, v18, a6, a7, a8);
        a3 = v44;
        v15 = v33;
      }

      a2 = v19;
      a1 = v15;
      v8 = v41;
      a6 = v42;
      a7 = v43;
      if (!v41)
      {
        return;
      }
    }

    v95[0] = a6;
    v95[1] = &v96;
    v96 = 0;
    if (a4 <= v8)
    {
      if (a1 != a2)
      {
        v71 = 0;
        v72 = a6;
        v73 = a1;
        do
        {
          *v72 = *v73;
          v74 = *(v73 + 8);
          *(v73 + 8) = 0;
          *(v72 + 1) = v74;
          v75 = *(v73 + 32);
          *(v72 + 1) = *(v73 + 16);
          *(v72 + 2) = v75;
          v76 = *(v73 + 48);
          v77 = *(v73 + 64);
          v78 = *(v73 + 80);
          *(v72 + 24) = *(v73 + 96);
          *(v72 + 4) = v77;
          *(v72 + 5) = v78;
          *(v72 + 3) = v76;
          *(v72 + 14) = 0;
          *(v72 + 15) = 0;
          *(v72 + 13) = 0;
          *(v72 + 104) = *(v73 + 104);
          *(v72 + 15) = *(v73 + 120);
          *(v73 + 104) = 0;
          *(v73 + 112) = 0;
          *(v73 + 120) = 0;
          ++v71;
          v73 += 128;
          v72 += 128;
        }

        while (v73 != a2);
        v96 = v71;
        while (a2 != a3)
        {
          v79 = a3;
          if (*(a2 + 6) >= *(a6 + 6))
          {
            *a1 = *a6;
            v87 = *(a6 + 1);
            *(a6 + 1) = 0;
            v88 = *(a1 + 8);
            *(a1 + 8) = v87;
            v89 = a6;

            v90 = *(v89 + 2);
            *(a1 + 16) = *(v89 + 1);
            *(a1 + 32) = v90;
            v91 = *(v89 + 3);
            v92 = *(v89 + 4);
            v93 = *(v89 + 5);
            *(a1 + 96) = *(v89 + 24);
            *(a1 + 64) = v92;
            *(a1 + 80) = v93;
            *(a1 + 48) = v91;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((a1 + 104));
            *(a1 + 104) = *(v89 + 104);
            *(a1 + 120) = *(v89 + 15);
            *(v89 + 13) = 0;
            *(v89 + 14) = 0;
            *(v89 + 15) = 0;
            a6 = v89 + 128;
          }

          else
          {
            *a1 = *a2;
            v80 = *(a2 + 1);
            *(a2 + 1) = 0;
            v81 = *(a1 + 8);
            *(a1 + 8) = v80;
            v82 = a6;

            v83 = *(a2 + 2);
            *(a1 + 16) = *(a2 + 1);
            *(a1 + 32) = v83;
            v84 = *(a2 + 3);
            v85 = *(a2 + 4);
            v86 = *(a2 + 5);
            *(a1 + 96) = *(a2 + 24);
            *(a1 + 64) = v85;
            *(a1 + 80) = v86;
            *(a1 + 48) = v84;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((a1 + 104));
            a6 = v82;
            *(a1 + 104) = *(a2 + 104);
            *(a1 + 120) = *(a2 + 15);
            *(a2 + 13) = 0;
            *(a2 + 14) = 0;
            *(a2 + 15) = 0;
            a2 += 128;
          }

          a1 += 128;
          a3 = v79;
          if (v72 == a6)
          {
            goto LABEL_63;
          }
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *>(a6, v72, a1);
      }
    }

    else if (a3 != a2)
    {
      v48 = 0;
      v49 = 0;
      do
      {
        v50 = &a6[v48];
        v51 = &a2[v48];
        *v50 = *&a2[v48];
        v52 = *&a2[v48 + 8];
        *(v51 + 1) = 0;
        *(v50 + 1) = v52;
        v53 = *&a2[v48 + 32];
        *(v50 + 1) = *&a2[v48 + 16];
        *(v50 + 2) = v53;
        v54 = *&a2[v48 + 48];
        v55 = *&a2[v48 + 64];
        v56 = *&a2[v48 + 80];
        *(v50 + 24) = *&a2[v48 + 96];
        *(v50 + 4) = v55;
        *(v50 + 5) = v56;
        *(v50 + 3) = v54;
        *(v50 + 14) = 0;
        *(v50 + 15) = 0;
        *(v50 + 13) = 0;
        *(v50 + 104) = *&a2[v48 + 104];
        *(v50 + 15) = *&a2[v48 + 120];
        *(v51 + 13) = 0;
        *(v51 + 14) = 0;
        *(v51 + 15) = 0;
        ++v49;
        v48 += 128;
      }

      while (v51 + 128 != a3);
      v57 = 0;
      v96 = v49;
      v58 = &a6[v48];
      v94 = &a6[v48];
      while (a2 != a1)
      {
        v59 = a6;
        if (*(v58 - 26) >= *(a2 - 26))
        {
          v60 = v58;
          v58 -= 128;
        }

        else
        {
          v60 = a2;
          a2 -= 128;
        }

        v61 = &a3[v57];
        v62 = &a3[v57 - 112];
        v63 = &a3[v57 - 24];
        *(v61 - 32) = *(v60 - 32);
        v64 = *(v60 - 15);
        *(v60 - 15) = 0;
        v65 = *&a3[v57 - 120];
        *(v61 - 15) = v64;
        v66 = a3;

        v67 = *(v60 - 6);
        *v62 = *(v60 - 7);
        *(v62 + 1) = v67;
        v68 = *(v60 - 5);
        v69 = *(v60 - 4);
        v70 = *(v60 - 3);
        *(v62 + 20) = *(v60 - 8);
        *(v62 + 3) = v69;
        *(v62 + 4) = v70;
        *(v62 + 2) = v68;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(v63);
        a3 = v66;
        *v63 = *(v60 - 24);
        *(v61 - 1) = *(v60 - 1);
        *(v60 - 3) = 0;
        *(v60 - 2) = 0;
        *(v60 - 1) = 0;
        v57 -= 128;
        a6 = v59;
        if (v58 == v59)
        {
          goto LABEL_63;
        }
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion *>,std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion *>,std::reverse_iterator<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>>(v97, v94, v58, a6, a6, a3, &a3[v57]);
    }

LABEL_63:
    std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](v95);
  }
}

uint64_t *std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 104);
      do
      {
        v7 = v5;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v7);

        ++v4;
        v5 += 16;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;
      v7 = *(a3 + 8);
      *(a3 + 8) = v6;

      v8 = *(v5 + 32);
      *(a3 + 16) = *(v5 + 16);
      *(a3 + 32) = v8;
      v9 = *(v5 + 48);
      v10 = *(v5 + 64);
      v11 = *(v5 + 80);
      *(a3 + 96) = *(v5 + 96);
      *(a3 + 64) = v10;
      *(a3 + 80) = v11;
      *(a3 + 48) = v9;
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((a3 + 104));
      *(a3 + 104) = *(v5 + 104);
      *(a3 + 120) = *(v5 + 120);
      *(v5 + 104) = 0;
      *(v5 + 112) = 0;
      *(v5 + 120) = 0;
      v5 += 128;
      a3 += 128;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion *>,std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion *>,std::reverse_iterator<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  if (a3 != a5)
  {
    v13 = 0;
    do
    {
      v14 = v9 + v13;
      v15 = a7 + v13;
      *(v15 - 128) = *(v9 + v13 - 128);
      v16 = *(v9 + v13 - 120);
      *(v9 + v13 - 120) = 0;
      v17 = *(a7 + v13 - 120);
      *(v15 - 120) = v16;

      v18 = *(v9 + v13 - 96);
      *(v15 - 112) = *(v9 + v13 - 112);
      *(v15 - 96) = v18;
      v19 = *(v9 + v13 - 80);
      v20 = *(v9 + v13 - 64);
      v21 = *(v9 + v13 - 48);
      *(v15 - 32) = *(v9 + v13 - 32);
      *(v15 - 64) = v20;
      *(v15 - 48) = v21;
      *(v15 - 80) = v19;
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((a7 + v13 - 24));
      *(v15 - 24) = *(v9 + v13 - 24);
      *(v15 - 8) = *(v9 + v13 - 8);
      *(v14 - 24) = 0;
      *(v14 - 16) = 0;
      *(v14 - 8) = 0;
      v13 -= 128;
    }

    while (v9 + v13 != a5);
    a7 += v13;
    v9 += v13;
  }

  *a1 = a2;
  a1[1] = v9;
  a1[2] = a6;
  a1[3] = a7;
}

int *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(int *a1, int *a2, int *a3)
{
  v4 = a2;
  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(a1, a2);
  v6 = a1 + 32;
  for (i = v4 + 32; i != a3; i += 32)
  {
    if (v6 == v4)
    {
      v4 = i;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(v6, i);
    v6 += 32;
  }

  if (v6 != v4)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(v8, v4);
        v8 += 32;
        v4 += 32;
        if (v4 == a3)
        {
          break;
        }

        if (v8 == v9)
        {
          v9 = v4;
        }
      }

      v4 = v9;
    }

    while (v8 != v9);
  }

  return v6;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 7;
  if (v4 < 1)
  {
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69E5398];
    v6 = (a2 - a1) >> 7;
    while (1)
    {
      v7 = operator new(v6 << 7, v5);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        v10 = 0;
        v6 = v8;
        goto LABEL_8;
      }
    }

    v10 = v7;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(a1, a2, v4, v10, v6);
  if (v10)
  {

    operator delete(v10);
  }
}

void sub_1B41BE11C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(int *a1, int *a2, void **a3, uint64_t a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (CRTextRecognition::CRCTLD::CTLDRegion::operator<((a2 - 32), a1))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(a1, a2 - 32);
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v13 = a1 + 32;
        if (a1 + 32 != a2)
        {
          v14 = 0;
          v15 = a1;
          do
          {
            v16 = v13;
            if (CRTextRecognition::CRCTLD::CTLDRegion::operator<(v13, v15))
            {
              LODWORD(v69) = *v16;
              v17 = *(v15 + 17);
              *(v15 + 17) = 0;
              v70 = v17;
              v18 = *(v15 + 12);
              v73 = *(v15 + 11);
              v74 = v18;
              v75 = *(v15 + 13);
              v76 = v15[56];
              v19 = *(v15 + 10);
              v71 = *(v15 + 9);
              v72 = v19;
              *v77 = *(v15 + 58);
              *&v77[16] = *(v15 + 31);
              *(v15 + 29) = 0;
              *(v15 + 30) = 0;
              v20 = v14;
              *(v15 + 31) = 0;
              while (1)
              {
                v21 = a1 + v20;
                *(v21 + 32) = *(a1 + v20);
                v22 = *(a1 + v20 + 8);
                *(v21 + 1) = 0;
                v23 = *(a1 + v20 + 136);
                *(v21 + 17) = v22;

                v24 = *(a1 + v20 + 64);
                *(v21 + 11) = *(v21 + 3);
                *(v21 + 12) = v24;
                *(v21 + 13) = *(v21 + 5);
                *(v21 + 56) = *(v21 + 24);
                v25 = *(a1 + v20 + 32);
                *(v21 + 9) = *(v21 + 1);
                *(v21 + 10) = v25;
                std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((a1 + v20 + 232));
                *(v21 + 232) = *(v21 + 104);
                *(v21 + 31) = *(v21 + 15);
                *(v21 + 14) = 0;
                *(v21 + 15) = 0;
                *(v21 + 13) = 0;
                if (!v20)
                {
                  break;
                }

                v20 -= 128;
                if (!CRTextRecognition::CRCTLD::CTLDRegion::operator<(&v69, a1 + v20))
                {
                  v26 = (a1 + v20 + 128);
                  goto LABEL_22;
                }
              }

              v26 = a1;
LABEL_22:
              *v26 = v69;
              v27 = v70;
              v70 = 0;
              v28 = *(v26 + 1);
              *(v26 + 1) = v27;

              v29 = v72;
              *(v21 + 1) = v71;
              *(v21 + 2) = v29;
              v30 = v73;
              v31 = v74;
              v32 = v75;
              *(v21 + 24) = v76;
              *(v21 + 4) = v31;
              *(v21 + 5) = v32;
              *(v21 + 3) = v30;
              std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(v21 + 13);
              *(v21 + 13) = *v77;
              *(v26 + 7) = *&v77[8];
              memset(v77, 0, sizeof(v77));
              v78 = v77;
              std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v78);
            }

            v13 = v16 + 32;
            v14 += 128;
            v15 = v16;
          }

          while (v16 + 32 != a2);
        }
      }
    }

    else
    {
      v9 = a4;
      v10 = a3 >> 1;
      v11 = &a1[32 * (a3 >> 1)];
      if (a3 <= a5)
      {
        v78 = 0;
        v69 = a4;
        v70 = &v78;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(a1, &a1[32 * (a3 >> 1)], a3 >> 1, a4);
        v78 = v10;
        v33 = a3 - v10;
        v34 = v9 + (v10 << 7);
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(&a1[32 * (a3 >> 1)], a2, v33, v34);
        v78 = a3;
        v35 = (v9 + (a3 << 7));
        v36 = a1 + 30;
        v37 = v34;
        while (v37 != v35)
        {
          v38 = v36 - 26;
          if (CRTextRecognition::CRCTLD::CTLDRegion::operator<(v37, v9))
          {
            *(v36 - 30) = *v37;
            v39 = *(v37 + 8);
            *(v37 + 8) = 0;
            v40 = *(v36 - 14);
            *(v36 - 14) = v39;

            v41 = *(v37 + 32);
            *v38 = *(v37 + 16);
            *(v36 - 22) = v41;
            v42 = *(v37 + 48);
            v43 = *(v37 + 64);
            v44 = *(v37 + 80);
            *(v36 - 6) = *(v37 + 96);
            *(v36 - 14) = v43;
            *(v36 - 10) = v44;
            *(v36 - 18) = v42;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(v36 - 2);
            *(v36 - 1) = *(v37 + 104);
            *v36 = *(v37 + 120);
            *(v37 + 104) = 0;
            *(v37 + 112) = 0;
            *(v37 + 120) = 0;
            v37 += 128;
          }

          else
          {
            *(v36 - 30) = *v9;
            v45 = *(v9 + 8);
            *(v9 + 8) = 0;
            v46 = *(v36 - 14);
            *(v36 - 14) = v45;

            v47 = *(v9 + 32);
            *v38 = *(v9 + 16);
            *(v36 - 22) = v47;
            v48 = *(v9 + 48);
            v49 = *(v9 + 64);
            v50 = *(v9 + 80);
            *(v36 - 6) = *(v9 + 96);
            *(v36 - 14) = v49;
            *(v36 - 10) = v50;
            *(v36 - 18) = v48;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(v36 - 2);
            *(v36 - 1) = *(v9 + 104);
            *v36 = *(v9 + 120);
            *(v9 + 104) = 0;
            *(v9 + 112) = 0;
            *(v9 + 120) = 0;
            v9 += 128;
          }

          v36 += 32;
          if (v9 == v34)
          {
            if (v37 != v35)
            {
              v51 = 0;
              do
              {
                v52 = (v37 + v51);
                v53 = &v36[v51 / 4];
                *(v53 - 30) = *(v37 + v51);
                v54 = *(v37 + v51 + 8);
                *(v37 + v51 + 8) = 0;
                v55 = *&v36[v51 / 4 - 28];
                *(v53 - 14) = v54;

                v56 = *(v37 + v51 + 16);
                *(v53 - 22) = *(v37 + v51 + 32);
                *(v53 - 26) = v56;
                v57 = *(v37 + v51 + 48);
                v58 = *(v37 + v51 + 64);
                v59 = *(v37 + v51 + 80);
                *(v53 - 6) = *(v37 + v51 + 96);
                *(v53 - 10) = v59;
                *(v53 - 14) = v58;
                *(v53 - 18) = v57;
                std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(&v36[v51 / 4 - 4]);
                *(v53 - 1) = *(v37 + v51 + 104);
                *v53 = *(v37 + v51 + 120);
                v52[13] = 0;
                v52[14] = 0;
                v52[15] = 0;
                v51 += 128;
              }

              while (v52 + 16 != v35);
            }

            goto LABEL_38;
          }
        }

        if (v9 != v34)
        {
          v60 = 0;
          do
          {
            v61 = (v9 + v60);
            v62 = &v36[v60 / 4];
            *(v62 - 30) = *(v9 + v60);
            v63 = *(v9 + v60 + 8);
            *(v9 + v60 + 8) = 0;
            v64 = *&v36[v60 / 4 - 28];
            *(v62 - 14) = v63;

            v65 = *(v9 + v60 + 16);
            *(v62 - 22) = *(v9 + v60 + 32);
            *(v62 - 26) = v65;
            v66 = *(v9 + v60 + 48);
            v67 = *(v9 + v60 + 64);
            v68 = *(v9 + v60 + 80);
            *(v62 - 6) = *(v9 + v60 + 96);
            *(v62 - 10) = v68;
            *(v62 - 14) = v67;
            *(v62 - 18) = v66;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(&v36[v60 / 4 - 4]);
            *(v62 - 1) = *(v9 + v60 + 104);
            *v62 = *(v9 + v60 + 120);
            v61[13] = 0;
            v61[14] = 0;
            v61[15] = 0;
            v60 += 128;
          }

          while (v61 + 16 != v34);
        }

LABEL_38:
        std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v69);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(a1, &a1[32 * (a3 >> 1)], a3 >> 1, a4, a5);
        v12 = a3 - v10;
        std::__stable_sort<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(v11, a2, v12, v9, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(a1, v11, a2, v10, v12, v9, a5);
      }
    }
  }
}

void sub_1B41BE660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    if (a3 == 2)
    {
      v102 = a4;
      v103 = &v104;
      v104 = 0;
      if (CRTextRecognition::CRCTLD::CTLDRegion::operator<((a2 - 16), result))
      {
        *a4 = *(a2 - 32);
        v13 = *(a2 - 15);
        *(a2 - 15) = 0;
        *(a4 + 8) = v13;
        v14 = *(a2 - 6);
        *(a4 + 16) = *(a2 - 7);
        *(a4 + 32) = v14;
        v15 = *(a2 - 5);
        v16 = *(a2 - 4);
        v17 = *(a2 - 3);
        *(a4 + 96) = *(a2 - 8);
        *(a4 + 64) = v16;
        *(a4 + 80) = v17;
        *(a4 + 48) = v15;
        *(a4 + 112) = 0;
        *(a4 + 120) = 0;
        *(a4 + 104) = 0;
        *(a4 + 104) = *(a2 - 3);
        *(a4 + 120) = *(a2 - 1);
        *(a2 - 3) = 0;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        v104 = 1;
        *(a4 + 128) = *v7;
        v18 = v7[1];
        v7[1] = 0;
        *(a4 + 136) = v18;
        v19 = *(v7 + 2);
        *(a4 + 144) = *(v7 + 1);
        *(a4 + 160) = v19;
        v20 = *(v7 + 3);
        v21 = *(v7 + 4);
        v22 = *(v7 + 5);
        *(a4 + 224) = *(v7 + 24);
        *(a4 + 192) = v21;
        *(a4 + 208) = v22;
        *(a4 + 176) = v20;
        *(a4 + 240) = 0;
        *(a4 + 248) = 0;
        *(a4 + 232) = 0;
        v24 = v7[13];
        v23 = (v7 + 13);
        *(a4 + 232) = v24;
        v25 = v23 + 2;
        v26 = v23 + 4;
      }

      else
      {
        *a4 = *v7;
        v56 = v7[1];
        v7[1] = 0;
        *(a4 + 8) = v56;
        v57 = *(v7 + 2);
        *(a4 + 16) = *(v7 + 1);
        *(a4 + 32) = v57;
        v58 = *(v7 + 3);
        v59 = *(v7 + 4);
        v60 = *(v7 + 5);
        *(a4 + 96) = *(v7 + 24);
        *(a4 + 64) = v59;
        *(a4 + 80) = v60;
        *(a4 + 48) = v58;
        *(a4 + 112) = 0;
        *(a4 + 120) = 0;
        *(a4 + 104) = 0;
        *(a4 + 104) = *(v7 + 13);
        *(a4 + 120) = v7[15];
        v7[13] = 0;
        v7[14] = 0;
        v7[15] = 0;
        v104 = 1;
        *(a4 + 128) = *(a2 - 32);
        v61 = *(a2 - 15);
        *(a2 - 15) = 0;
        *(a4 + 136) = v61;
        v62 = *(a2 - 6);
        *(a4 + 144) = *(a2 - 7);
        *(a4 + 160) = v62;
        v63 = *(a2 - 5);
        v64 = *(a2 - 4);
        v65 = *(a2 - 3);
        *(a4 + 224) = *(a2 - 8);
        *(a4 + 192) = v64;
        *(a4 + 208) = v65;
        *(a4 + 176) = v63;
        *(a4 + 240) = 0;
        *(a4 + 248) = 0;
        *(a4 + 232) = 0;
        v67 = *(a2 - 3);
        v66 = (a2 - 3);
        *(a4 + 232) = v67;
        v25 = v66 + 2;
        v26 = v66 + 4;
        v23 = v66;
      }

      *(a4 + 240) = *v25;
      *(a4 + 248) = *v26;
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v23 + 2) = 0;
    }

    else
    {
      if (a3 == 1)
      {
        *a4 = *result;
        v8 = result[1];
        result[1] = 0;
        *(a4 + 8) = v8;
        v9 = *(result + 2);
        *(a4 + 16) = *(result + 1);
        *(a4 + 32) = v9;
        v10 = *(result + 3);
        v11 = *(result + 4);
        v12 = *(result + 5);
        *(a4 + 96) = *(result + 24);
        *(a4 + 64) = v11;
        *(a4 + 80) = v12;
        *(a4 + 48) = v10;
        *(a4 + 112) = 0;
        *(a4 + 120) = 0;
        *(a4 + 104) = 0;
        *(a4 + 104) = *(result + 13);
        *(a4 + 120) = result[15];
        result[13] = 0;
        result[14] = 0;
        result[15] = 0;
        return result;
      }

      if (a3 > 8)
      {
        v68 = &result[16 * (a3 >> 1)];
        std::__stable_sort<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(result, v68, a3 >> 1, a4, a3 >> 1);
        std::__stable_sort<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(&v7[16 * (a3 >> 1)], a2, a3 - (a3 >> 1), a4 + (a3 >> 1 << 7), a3 - (a3 >> 1));
        v102 = a4;
        v103 = &v104;
        v104 = 0;
        v69 = (a4 + 120);
        v70 = 1;
        v71 = v68;
        while (v71 != a2)
        {
          v72 = CRTextRecognition::CRCTLD::CTLDRegion::operator<(v71, v7);
          v73 = v69 - 13;
          v74 = v69 - 2;
          if (v72)
          {
            *(v69 - 30) = *v71;
            v75 = *(v71 + 8);
            *(v71 + 8) = 0;
            *(v69 - 14) = v75;
            v76 = *(v71 + 32);
            *v73 = *(v71 + 16);
            *(v69 - 11) = v76;
            v77 = *(v71 + 48);
            v78 = *(v71 + 64);
            v79 = *(v71 + 80);
            *(v69 - 6) = *(v71 + 96);
            *(v69 - 7) = v78;
            *(v69 - 5) = v79;
            *(v69 - 9) = v77;
            *(v69 - 1) = 0;
            *v69 = 0;
            *v74 = 0;
            *(v69 - 1) = *(v71 + 104);
            *v69 = *(v71 + 120);
            *(v71 + 104) = 0;
            *(v71 + 112) = 0;
            *(v71 + 120) = 0;
            v71 += 128;
          }

          else
          {
            *(v69 - 30) = *v7;
            v80 = v7[1];
            v7[1] = 0;
            *(v69 - 14) = v80;
            v81 = *(v7 + 2);
            *v73 = *(v7 + 1);
            *(v69 - 11) = v81;
            v82 = *(v7 + 3);
            v83 = *(v7 + 4);
            v84 = *(v7 + 5);
            *(v69 - 6) = *(v7 + 24);
            *(v69 - 7) = v83;
            *(v69 - 5) = v84;
            *(v69 - 9) = v82;
            *(v69 - 1) = 0;
            *v69 = 0;
            *v74 = 0;
            *(v69 - 1) = *(v7 + 13);
            *v69 = v7[15];
            v7[13] = 0;
            v7[14] = 0;
            v7[15] = 0;
            v7 += 16;
          }

          v104 = v70;
          v69 += 16;
          ++v70;
          if (v7 == v68)
          {
            if (v71 == a2)
            {
              goto LABEL_37;
            }

            v85 = 0;
            v86 = v70 - 1;
            do
            {
              v87 = (v71 + v85);
              v88 = &v69[v85 / 8];
              *(v88 - 30) = *(v71 + v85);
              v89 = *(v71 + v85 + 8);
              v87[1] = 0;
              *(v88 - 14) = v89;
              v90 = *(v71 + v85 + 16);
              *(v88 - 11) = *(v71 + v85 + 32);
              *(v88 - 13) = v90;
              v91 = *(v71 + v85 + 48);
              v92 = *(v71 + v85 + 64);
              v93 = *(v71 + v85 + 80);
              *(v88 - 6) = *(v71 + v85 + 96);
              *(v88 - 5) = v93;
              *(v88 - 7) = v92;
              *(v88 - 9) = v91;
              *(v88 - 1) = 0;
              *v88 = 0;
              *(v88 - 2) = 0;
              *(v88 - 1) = *(v71 + v85 + 104);
              *v88 = *(v71 + v85 + 120);
              v87[13] = 0;
              v87[14] = 0;
              v87[15] = 0;
              ++v86;
              v85 += 128;
            }

            while (v87 + 16 != a2);
            goto LABEL_36;
          }
        }

        if (v7 == v68)
        {
          goto LABEL_37;
        }

        v94 = 0;
        v86 = v70 - 1;
        do
        {
          v95 = &v69[v94];
          v96 = &v7[v94];
          *(v95 - 30) = v7[v94];
          v97 = v7[v94 + 1];
          v96[1] = 0;
          *(v95 - 14) = v97;
          v98 = *&v7[v94 + 2];
          *(v95 - 11) = *&v7[v94 + 4];
          *(v95 - 13) = v98;
          v99 = *&v7[v94 + 6];
          v100 = *&v7[v94 + 8];
          v101 = *&v7[v94 + 10];
          *(v95 - 6) = v7[v94 + 12];
          *(v95 - 5) = v101;
          *(v95 - 7) = v100;
          *(v95 - 9) = v99;
          *(v95 - 1) = 0;
          *v95 = 0;
          *(v95 - 2) = 0;
          *(v95 - 1) = *&v7[v94 + 13];
          *v95 = v7[v94 + 15];
          v96[13] = 0;
          v96[14] = 0;
          v96[15] = 0;
          ++v86;
          v94 += 16;
        }

        while (v96 + 16 != v68);
LABEL_36:
        v104 = v86;
      }

      else
      {
        if (result == a2)
        {
          return result;
        }

        v102 = a4;
        v103 = &v104;
        *a4 = *result;
        v27 = result[1];
        result[1] = 0;
        *(a4 + 8) = v27;
        v28 = *(result + 2);
        *(a4 + 16) = *(result + 1);
        *(a4 + 32) = v28;
        v29 = *(result + 3);
        v30 = *(result + 4);
        v31 = *(result + 5);
        *(a4 + 96) = *(result + 24);
        *(a4 + 64) = v30;
        *(a4 + 80) = v31;
        *(a4 + 48) = v29;
        *(a4 + 112) = 0;
        *(a4 + 120) = 0;
        *(a4 + 104) = 0;
        *(a4 + 104) = *(result + 13);
        *(a4 + 120) = result[15];
        result[13] = 0;
        result[14] = 0;
        result[15] = 0;
        v104 = 1;
        v32 = result + 16;
        if (result + 16 != a2)
        {
          v33 = 0;
          v34 = a4;
          do
          {
            v35 = v32;
            if (CRTextRecognition::CRCTLD::CTLDRegion::operator<(v32, v34))
            {
              *(v34 + 128) = *v34;
              v36 = *(v34 + 8);
              *(v34 + 8) = 0;
              *(v34 + 136) = v36;
              v37 = *(v34 + 64);
              *(v34 + 176) = *(v34 + 48);
              *(v34 + 192) = v37;
              *(v34 + 208) = *(v34 + 80);
              *(v34 + 224) = *(v34 + 96);
              v38 = *(v34 + 32);
              *(v34 + 144) = *(v34 + 16);
              *(v34 + 160) = v38;
              *(v34 + 232) = *(v34 + 104);
              *(v34 + 248) = *(v34 + 120);
              *(v34 + 104) = 0;
              *(v34 + 112) = 0;
              ++v104;
              v39 = a4;
              *(v34 + 120) = 0;
              if (v34 != a4)
              {
                v40 = v33;
                while (1)
                {
                  v39 = a4 + v40;
                  if (!CRTextRecognition::CRCTLD::CTLDRegion::operator<(v35, a4 + v40 - 128))
                  {
                    break;
                  }

                  *v39 = *(a4 + v40 - 128);
                  v41 = *(v39 - 120);
                  *(v39 - 120) = 0;
                  v42 = *(v39 + 8);
                  *(v39 + 8) = v41;

                  v43 = *(v39 - 64);
                  *(v39 + 48) = *(v39 - 80);
                  *(v39 + 64) = v43;
                  *(v39 + 80) = *(v39 - 48);
                  *(v39 + 96) = *(v39 - 32);
                  v44 = *(v39 - 96);
                  *(v39 + 16) = *(v39 - 112);
                  *(v39 + 32) = v44;
                  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v39 + 104));
                  *(v39 + 104) = *(v39 - 24);
                  *(v39 + 120) = *(v39 - 8);
                  *(v39 - 16) = 0;
                  *(v39 - 8) = 0;
                  *(v39 - 24) = 0;
                  v40 -= 128;
                  if (!v40)
                  {
                    v39 = a4;
                    break;
                  }
                }
              }

              *v39 = *v35;
              v45 = v7[17];
              v7[17] = 0;
              v46 = *(v39 + 8);
              *(v39 + 8) = v45;

              v47 = *(v7 + 10);
              *(v39 + 16) = *(v7 + 9);
              *(v39 + 32) = v47;
              v48 = *(v7 + 11);
              v49 = *(v7 + 12);
              v50 = *(v7 + 13);
              *(v39 + 96) = *(v7 + 56);
              *(v39 + 64) = v49;
              *(v39 + 80) = v50;
              *(v39 + 48) = v48;
              std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v39 + 104));
              *(v39 + 104) = *(v7 + 29);
              *(v39 + 120) = v7[31];
              v7[29] = 0;
              v7[30] = 0;
              v7[31] = 0;
            }

            else
            {
              *(v34 + 128) = *v35;
              v51 = v7[17];
              v7[17] = 0;
              *(v34 + 136) = v51;
              v52 = *(v7 + 10);
              *(v34 + 144) = *(v7 + 9);
              *(v34 + 160) = v52;
              v53 = *(v7 + 11);
              v54 = *(v7 + 12);
              v55 = *(v7 + 13);
              *(v34 + 224) = *(v7 + 56);
              *(v34 + 192) = v54;
              *(v34 + 208) = v55;
              *(v34 + 176) = v53;
              *(v34 + 240) = 0;
              *(v34 + 248) = 0;
              *(v34 + 232) = 0;
              *(v34 + 232) = *(v7 + 29);
              *(v34 + 248) = v7[31];
              v7[29] = 0;
              v7[30] = 0;
              v7[31] = 0;
              ++v104;
            }

            v34 += 128;
            v32 = v35 + 16;
            v33 += 128;
            v7 = v35;
          }

          while (v35 + 16 != a2);
        }
      }
    }

LABEL_37:
    v102 = 0;
    return std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v102);
  }

  return result;
}