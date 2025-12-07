void sub_25A814F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, int a4)
{
  v110 = *MEMORY[0x277D85DE8];
  v106 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v101);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v100 = v9;
  if (v101 == 1)
  {
    v17 = v103;
    if (v103 - v102 != 4)
    {
LABEL_21:
      v26 = *(v17 - 1);
      v103 = v17 - 4;
      v105 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v95);
      v27 = *(*a2 + 48);
      if (v103 != v102)
      {
        if (v27)
        {
          v28 = v95;
          v29 = (v96 - v95) >> 2;
          v30 = (v29 - 1);
          if (v29 - 1 >= 0)
          {
            v31 = 0;
            v32 = __p;
            quot = 0;
            do
            {
              v34 = ldiv(quot, v28[v30]);
              quot = v34.quot;
              v31 += v32[v30--] * v34.rem;
            }

            while (v30 != -1);
          }

          *__b = v106;
          v109 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v36 = __b;
      if (v27)
      {
        v37 = 0;
        v38 = v95;
        v39 = ((v96 - v95) >> 2) - 1;
        v40 = __p;
        v93 = v100;
        do
        {
          if ((v39 & 0x80000000) != 0)
          {
            v45 = 0;
          }

          else
          {
            v41 = 0;
            v42 = v39;
            v43 = v37;
            do
            {
              v44 = ldiv(v43, v38[v42]);
              v43 = v44.quot;
              v41 += v40[v42--] * v44.rem;
            }

            while (v42 != -1);
            v45 = v41;
          }

          *v36 = a4;
          v46 = a4;
          if (v26 >= 1)
          {
            v47 = &v93[v45];
            v48 = v26 + 1;
            v46 = a4;
            do
            {
              v50 = *v47++;
              v49 = v50;
              if ((v50 & 1u) < v46)
              {
                v46 = v49;
              }

              v46 &= 1u;
              --v48;
            }

            while (v48 > 1);
          }

          *v36++ = v46 & a4;
          ++v37;
        }

        while (v37 != v27);
      }

LABEL_46:
      __b = v36;
LABEL_47:
      if (__p)
      {
        v98 = __p;
        operator delete(__p);
      }

      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      goto LABEL_51;
    }

    v18 = *(v10 + 48);
    if (v18)
    {
      v19 = 0;
      v20 = *v102;
      do
      {
        *v11 = a4;
        v21 = a4;
        if (v20 >= 1)
        {
          v22 = v20 + 1;
          v23 = v9;
          v21 = a4;
          do
          {
            v25 = *v23++;
            v24 = v25;
            if ((v25 & 1u) < v21)
            {
              v21 = v24;
            }

            v21 &= 1u;
            --v22;
          }

          while (v22 > 1);
        }

        *v11++ = v21 & a4;
        ++v19;
        v9 += v20;
      }

      while (v19 != v18);
    }
  }

  else
  {
    if (!v101)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          v16 = *v9++;
          v15 = v16;
          if ((v16 & 1u) < v14)
          {
            v14 = v15;
          }

          v14 &= 1u;
          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 & a4;
      goto LABEL_51;
    }

    if ((v101 & 0xFFFFFFFD) == 1)
    {
      v17 = v103;
      goto LABEL_21;
    }

    if (v101 != 2)
    {
      if (v101 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v95);
        if (*(*a2 + 48))
        {
          v51 = v95;
          v52 = (v96 - v95) >> 2;
          v53 = (v52 - 1);
          if (v52 - 1 >= 0)
          {
            v54 = 0;
            v55 = __p;
            v56 = 0;
            do
            {
              v57 = ldiv(v56, v51[v53]);
              v56 = v57.quot;
              v54 += v55[v53--] * v57.rem;
            }

            while (v53 != -1);
          }

          v107 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      if (v101 != 4)
      {
        goto LABEL_51;
      }

      v35 = v103;
      goto LABEL_76;
    }

    v35 = v103;
    if (v103 - v102 != 4)
    {
LABEL_76:
      v68 = *(v35 - 1);
      v69 = *(v105 - 1);
      v103 = v35 - 4;
      v105 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v95);
      v70 = *(*a2 + 48);
      if (v103 != v102)
      {
        if (v70)
        {
          v71 = v95;
          v72 = (v96 - v95) >> 2;
          v73 = (v72 - 1);
          if (v72 - 1 >= 0)
          {
            v74 = 0;
            v75 = __p;
            v76 = 0;
            do
            {
              v77 = ldiv(v76, v71[v73]);
              v76 = v77.quot;
              v74 += v75[v73--] * v77.rem;
            }

            while (v73 != -1);
          }

          if (v69)
          {
            memset(__b, a4, v69);
          }

          v108 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v36 = __b;
      if (!v70)
      {
        goto LABEL_46;
      }

      v78 = 0;
      v79 = v95;
      v80 = ((v96 - v95) >> 2) - 1;
      v81 = __p;
      v92 = v100;
      v94 = v80;
      while (1)
      {
        if ((v80 & 0x80000000) != 0)
        {
          v85 = 0;
          if (!v69)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v82 = 0;
          v83 = v78;
          do
          {
            v84 = ldiv(v83, v79[v80]);
            v83 = v84.quot;
            v82 += v81[v80--] * v84.rem;
          }

          while (v80 != -1);
          v85 = v82;
          if (!v69)
          {
            goto LABEL_91;
          }
        }

        memset(v36, a4, v69);
LABEL_91:
        if (v68 >= 1)
        {
          v86 = 0;
          v87 = &v92[v85];
          do
          {
            if (v69)
            {
              for (i = 0; i != v69; ++i)
              {
                v89 = v36[i];
                v91 = *v87++;
                v90 = v91;
                if ((v91 & 1u) < (v89 & 1u))
                {
                  v89 = v90;
                }

                v36[i] = v89 & 1;
              }
            }

            ++v86;
          }

          while (v86 != v68);
        }

        v36 += v69;
        v78 += v69;
        v80 = v94;
        if (v70 <= v78)
        {
          goto LABEL_46;
        }
      }
    }

    v58 = *(v103 - 1);
    v59 = *(v105 - 1);
    v103 -= 4;
    v105 -= 8;
    v60 = *(v10 + 48);
    if (v60)
    {
      LODWORD(v61) = 0;
      do
      {
        if (v59)
        {
          memset(v11, a4, v59);
        }

        if (v58 >= 1)
        {
          v62 = 0;
          v63 = v9;
          do
          {
            if (v59)
            {
              for (j = 0; j != v59; ++j)
              {
                v65 = v11[j];
                v67 = *v63++;
                v66 = v67;
                if ((v67 & 1u) < (v65 & 1u))
                {
                  v65 = v66;
                }

                v11[j] = v65 & 1;
              }
            }

            ++v62;
          }

          while (v62 != v58);
        }

        v9 += v59 * v58;
        v11 += v59;
        v61 = v61 + v59;
      }

      while (v61 < v60);
    }
  }

LABEL_51:
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }

  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A815768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06898;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  v3 = **(result + 40);
  if (v2 >= 1)
  {
    v4 = (**(result + 8) + **(result + 16) + *a2);
    v5 = v2 + 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if ((v7 & 1u) > v3)
      {
        LOBYTE(v3) = v6;
      }

      v3 &= 1u;
      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 24) |= v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06918;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + **(result + 16) + *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v7;
          v11 = *v6++;
          v10 = v11;
          result = *v7 & 1;
          if ((v11 & 1u) > result)
          {
            v9 = v10;
          }

          *v7++ = v9 & 1;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06998;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06A18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  v3 = **(result + 40);
  if (v2 >= 1)
  {
    v4 = (**(result + 8) + **(result + 16) + *a2);
    v5 = v2 + 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if ((v7 & 1u) < v3)
      {
        LOBYTE(v3) = v6;
      }

      v3 &= 1u;
      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 24) &= v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06A98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + **(result + 16) + *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v7;
          v11 = *v6++;
          v10 = v11;
          result = *v7 & 1;
          if ((v11 & 1u) < result)
          {
            v9 = v10;
          }

          *v7++ = v9 & 1;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06B18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unsigned int a4)
{
  v113 = *MEMORY[0x277D85DE8];
  v109 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v104);
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  __b = v10;
  v103 = v8;
  v97 = a2;
  if (v104 == 1)
  {
    v16 = v106;
    if (v106 - v105 != 4)
    {
      goto LABEL_25;
    }

    if (*(v9 + 48))
    {
      v17 = 0;
      v18 = *v105;
      v19 = vdupq_n_s8(a4);
      do
      {
        v10->i8[0] = a4;
        v20 = v103;
        if (v18 < 16)
        {
          v22 = v19;
          v24 = v18;
        }

        else
        {
          v21 = v18;
          v22 = v19;
          do
          {
            v23 = *v20++;
            v22 = vmaxq_u8(v23, v22);
            v24 = v21 - 16;
            v15 = v21 > 0x1F;
            v21 -= 16;
          }

          while (v15);
        }

        v25 = __b;
        v26 = *__b;
        v27 = vmaxvq_u8(v22);
        if (v26 <= v27)
        {
          LOBYTE(v26) = v27;
        }

        *__b = v26;
        if (v24 >= 1)
        {
          v28 = v24 + 1;
          do
          {
            v30 = v20->u8[0];
            v20 = (v20 + 1);
            v29 = v30;
            if (v26 <= v30)
            {
              LOBYTE(v26) = v29;
            }

            *v25 = v26;
            --v28;
          }

          while (v28 > 1);
        }

        ++v17;
        v10 = (__b + 1);
        __b = __b + 1;
        v103 = (v103 + v18);
      }

      while (*(*a2 + 48) > v17);
    }
  }

  else
  {
    if (!v104)
    {
      v10->i8[0] = a4;
      v11 = *(*a1 + 12);
      v12 = vdupq_n_s8(a4);
      if (v11 < 16)
      {
        v14 = *(*a1 + 12);
      }

      else
      {
        do
        {
          v13 = *v8++;
          v12 = vmaxq_u8(v13, v12);
          v14 = v11 - 16;
          v15 = v11 > 0x1F;
          v11 -= 16;
        }

        while (v15);
      }

      v40 = vmaxvq_u8(v12);
      if (a4 > v40)
      {
        v40 = a4;
      }

      v10->i8[0] = v40;
      if (v14 >= 1)
      {
        v41 = v14 + 1;
        do
        {
          v43 = v8->u8[0];
          v8 = (v8 + 1);
          v42 = v43;
          if (v40 <= v43)
          {
            v40 = v42;
          }

          v10->i8[0] = v40;
          --v41;
        }

        while (v41 > 1);
      }

      goto LABEL_99;
    }

    if ((v104 & 0xFFFFFFFD) == 1)
    {
      v16 = v106;
LABEL_25:
      v31 = *(v16 - 1);
      v106 = v16 - 4;
      v108 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v98);
      v32 = *(*a2 + 48);
      if (v106 == v105)
      {
        if (v32)
        {
          v45 = 0;
          v96 = vdupq_n_s8(a4);
          do
          {
            v46 = v98;
            v47 = (v99 - v98) >> 2;
            v48 = (v47 - 1);
            if (v47 - 1 < 0)
            {
              v53 = 0;
            }

            else
            {
              v49 = 0;
              v50 = __p;
              quot = v45;
              do
              {
                v52 = ldiv(quot, v46[v48]);
                quot = v52.quot;
                v49 += v50[v48--] * v52.rem;
              }

              while (v48 != -1);
              v53 = v49;
              a2 = v97;
            }

            *__b = a4;
            v54 = __b;
            v55 = (v103 + v53);
            if (v31 < 16)
            {
              v57 = v96;
              v59 = v31;
            }

            else
            {
              v56 = v31;
              v57 = v96;
              do
              {
                v58 = *v55++;
                v57 = vmaxq_u8(v58, v57);
                v59 = v56 - 16;
                v15 = v56 > 0x1F;
                v56 -= 16;
              }

              while (v15);
            }

            v60 = *__b;
            v61 = vmaxvq_u8(v57);
            if (v60 <= v61)
            {
              LOBYTE(v60) = v61;
            }

            *__b = v60;
            if (v59 >= 1)
            {
              v62 = v59 + 1;
              do
              {
                v64 = v55->u8[0];
                v55 = (v55 + 1);
                v63 = v64;
                if (v60 <= v64)
                {
                  LOBYTE(v60) = v63;
                }

                *v54 = v60;
                --v62;
              }

              while (v62 > 1);
            }

            ++v45;
            __b = __b + 1;
          }

          while (*(*a2 + 48) > v45);
        }
      }

      else if (v32)
      {
        v33 = v98;
        v34 = (v99 - v98) >> 2;
        v35 = (v34 - 1);
        if (v34 - 1 >= 0)
        {
          v36 = 0;
          v37 = __p;
          v38 = 0;
          do
          {
            v39 = ldiv(v38, v33[v35]);
            v38 = v39.quot;
            v36 += v37[v35--] * v39.rem;
          }

          while (v35 != -1);
        }

        *__b = v109;
        v112 = 0;
        operator new();
      }

LABEL_95:
      if (__p)
      {
        v101 = __p;
        operator delete(__p);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      goto LABEL_99;
    }

    if (v104 != 2)
    {
      if (v104 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v98);
        if (*(*a2 + 48))
        {
          v65 = v98;
          v66 = (v99 - v98) >> 2;
          v67 = (v66 - 1);
          if (v66 - 1 >= 0)
          {
            v68 = 0;
            v69 = __p;
            v70 = 0;
            do
            {
              v71 = ldiv(v70, v65[v67]);
              v70 = v71.quot;
              v68 += v69[v67--] * v71.rem;
            }

            while (v67 != -1);
          }

          v110 = 0;
          operator new();
        }

        goto LABEL_95;
      }

      if (v104 != 4)
      {
        goto LABEL_99;
      }

      v44 = v106;
      goto LABEL_77;
    }

    v44 = v106;
    if (v106 - v105 != 4)
    {
LABEL_77:
      v76 = *(v44 - 1);
      v77 = *(v108 - 1);
      v106 = v44 - 4;
      v108 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v98);
      v78 = *(*a2 + 48);
      if (v106 == v105)
      {
        if (v78)
        {
          v86 = 0;
          do
          {
            v87 = v98;
            v88 = (v99 - v98) >> 2;
            v89 = (v88 - 1);
            if (v88 - 1 < 0)
            {
              v94 = 0;
            }

            else
            {
              v90 = 0;
              v91 = __p;
              v92 = v86;
              do
              {
                v93 = ldiv(v92, v87[v89]);
                v92 = v93.quot;
                v90 += v91[v89--] * v93.rem;
              }

              while (v89 != -1);
              v94 = v90;
              a2 = v97;
            }

            v95 = __b;
            if (v77)
            {
              memset(__b, a4, v77);
              v95 = __b;
            }

            mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MaxReduce>((v103 + v94), v95, v76, v77);
            __b = __b + v77;
            v86 += v77;
          }

          while (*(*a2 + 48) > v86);
        }
      }

      else if (v78)
      {
        v79 = v98;
        v80 = (v99 - v98) >> 2;
        v81 = (v80 - 1);
        if (v80 - 1 >= 0)
        {
          v82 = 0;
          v83 = __p;
          v84 = 0;
          do
          {
            v85 = ldiv(v84, v79[v81]);
            v84 = v85.quot;
            v82 += v83[v81--] * v85.rem;
          }

          while (v81 != -1);
        }

        if (v77)
        {
          memset(__b, a4, v77);
        }

        v111 = 0;
        operator new();
      }

      goto LABEL_95;
    }

    v72 = *(v106 - 1);
    v73 = *(v108 - 1);
    v106 -= 4;
    v108 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v74) = 0;
      v75 = v73 * v72;
      do
      {
        if (v73)
        {
          memset(v10, a4, v73);
          v10 = __b;
          v8 = v103;
        }

        mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MaxReduce>(v8, v10, v72, v73);
        v8 = (v103 + v75);
        v10 = (__b + v73);
        __b = __b + v73;
        v103 = (v103 + v75);
        v74 = v74 + v73;
      }

      while (v74 < *(*a2 + 48));
    }
  }

LABEL_99:
  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }

  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }
}

void sub_25A81688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unsigned int a4)
{
  v113 = *MEMORY[0x277D85DE8];
  v109 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v104);
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  __b = v10;
  v103 = v8;
  v97 = a2;
  if (v104 == 1)
  {
    v16 = v106;
    if (v106 - v105 != 4)
    {
      goto LABEL_25;
    }

    if (*(v9 + 48))
    {
      v17 = 0;
      v18 = *v105;
      v19 = vdupq_n_s8(a4);
      do
      {
        v10->i8[0] = a4;
        v20 = v103;
        if (v18 < 16)
        {
          v22 = v19;
          v24 = v18;
        }

        else
        {
          v21 = v18;
          v22 = v19;
          do
          {
            v23 = *v20++;
            v22 = vminq_u8(v23, v22);
            v24 = v21 - 16;
            v15 = v21 > 0x1F;
            v21 -= 16;
          }

          while (v15);
        }

        v25 = __b;
        v26 = *__b;
        v27 = vminvq_u8(v22);
        if (v26 >= v27)
        {
          LOBYTE(v26) = v27;
        }

        *__b = v26;
        if (v24 >= 1)
        {
          v28 = v24 + 1;
          do
          {
            v30 = v20->u8[0];
            v20 = (v20 + 1);
            v29 = v30;
            if (v26 >= v30)
            {
              LOBYTE(v26) = v29;
            }

            *v25 = v26;
            --v28;
          }

          while (v28 > 1);
        }

        ++v17;
        v10 = (__b + 1);
        __b = __b + 1;
        v103 = (v103 + v18);
      }

      while (*(*a2 + 48) > v17);
    }
  }

  else
  {
    if (!v104)
    {
      v10->i8[0] = a4;
      v11 = *(*a1 + 12);
      v12 = vdupq_n_s8(a4);
      if (v11 < 16)
      {
        v14 = *(*a1 + 12);
      }

      else
      {
        do
        {
          v13 = *v8++;
          v12 = vminq_u8(v13, v12);
          v14 = v11 - 16;
          v15 = v11 > 0x1F;
          v11 -= 16;
        }

        while (v15);
      }

      v40 = vminvq_u8(v12);
      if (a4 < v40)
      {
        v40 = a4;
      }

      v10->i8[0] = v40;
      if (v14 >= 1)
      {
        v41 = v14 + 1;
        do
        {
          v43 = v8->u8[0];
          v8 = (v8 + 1);
          v42 = v43;
          if (v40 >= v43)
          {
            v40 = v42;
          }

          v10->i8[0] = v40;
          --v41;
        }

        while (v41 > 1);
      }

      goto LABEL_99;
    }

    if ((v104 & 0xFFFFFFFD) == 1)
    {
      v16 = v106;
LABEL_25:
      v31 = *(v16 - 1);
      v106 = v16 - 4;
      v108 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v98);
      v32 = *(*a2 + 48);
      if (v106 == v105)
      {
        if (v32)
        {
          v45 = 0;
          v96 = vdupq_n_s8(a4);
          do
          {
            v46 = v98;
            v47 = (v99 - v98) >> 2;
            v48 = (v47 - 1);
            if (v47 - 1 < 0)
            {
              v53 = 0;
            }

            else
            {
              v49 = 0;
              v50 = __p;
              quot = v45;
              do
              {
                v52 = ldiv(quot, v46[v48]);
                quot = v52.quot;
                v49 += v50[v48--] * v52.rem;
              }

              while (v48 != -1);
              v53 = v49;
              a2 = v97;
            }

            *__b = a4;
            v54 = __b;
            v55 = (v103 + v53);
            if (v31 < 16)
            {
              v57 = v96;
              v59 = v31;
            }

            else
            {
              v56 = v31;
              v57 = v96;
              do
              {
                v58 = *v55++;
                v57 = vminq_u8(v58, v57);
                v59 = v56 - 16;
                v15 = v56 > 0x1F;
                v56 -= 16;
              }

              while (v15);
            }

            v60 = *__b;
            v61 = vminvq_u8(v57);
            if (v60 >= v61)
            {
              LOBYTE(v60) = v61;
            }

            *__b = v60;
            if (v59 >= 1)
            {
              v62 = v59 + 1;
              do
              {
                v64 = v55->u8[0];
                v55 = (v55 + 1);
                v63 = v64;
                if (v60 >= v64)
                {
                  LOBYTE(v60) = v63;
                }

                *v54 = v60;
                --v62;
              }

              while (v62 > 1);
            }

            ++v45;
            __b = __b + 1;
          }

          while (*(*a2 + 48) > v45);
        }
      }

      else if (v32)
      {
        v33 = v98;
        v34 = (v99 - v98) >> 2;
        v35 = (v34 - 1);
        if (v34 - 1 >= 0)
        {
          v36 = 0;
          v37 = __p;
          v38 = 0;
          do
          {
            v39 = ldiv(v38, v33[v35]);
            v38 = v39.quot;
            v36 += v37[v35--] * v39.rem;
          }

          while (v35 != -1);
        }

        *__b = v109;
        v112 = 0;
        operator new();
      }

LABEL_95:
      if (__p)
      {
        v101 = __p;
        operator delete(__p);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      goto LABEL_99;
    }

    if (v104 != 2)
    {
      if (v104 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v98);
        if (*(*a2 + 48))
        {
          v65 = v98;
          v66 = (v99 - v98) >> 2;
          v67 = (v66 - 1);
          if (v66 - 1 >= 0)
          {
            v68 = 0;
            v69 = __p;
            v70 = 0;
            do
            {
              v71 = ldiv(v70, v65[v67]);
              v70 = v71.quot;
              v68 += v69[v67--] * v71.rem;
            }

            while (v67 != -1);
          }

          v110 = 0;
          operator new();
        }

        goto LABEL_95;
      }

      if (v104 != 4)
      {
        goto LABEL_99;
      }

      v44 = v106;
      goto LABEL_77;
    }

    v44 = v106;
    if (v106 - v105 != 4)
    {
LABEL_77:
      v76 = *(v44 - 1);
      v77 = *(v108 - 1);
      v106 = v44 - 4;
      v108 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v98);
      v78 = *(*a2 + 48);
      if (v106 == v105)
      {
        if (v78)
        {
          v86 = 0;
          do
          {
            v87 = v98;
            v88 = (v99 - v98) >> 2;
            v89 = (v88 - 1);
            if (v88 - 1 < 0)
            {
              v94 = 0;
            }

            else
            {
              v90 = 0;
              v91 = __p;
              v92 = v86;
              do
              {
                v93 = ldiv(v92, v87[v89]);
                v92 = v93.quot;
                v90 += v91[v89--] * v93.rem;
              }

              while (v89 != -1);
              v94 = v90;
              a2 = v97;
            }

            v95 = __b;
            if (v77)
            {
              memset(__b, a4, v77);
              v95 = __b;
            }

            mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MinReduce>((v103 + v94), v95, v76, v77);
            __b = __b + v77;
            v86 += v77;
          }

          while (*(*a2 + 48) > v86);
        }
      }

      else if (v78)
      {
        v79 = v98;
        v80 = (v99 - v98) >> 2;
        v81 = (v80 - 1);
        if (v80 - 1 >= 0)
        {
          v82 = 0;
          v83 = __p;
          v84 = 0;
          do
          {
            v85 = ldiv(v84, v79[v81]);
            v84 = v85.quot;
            v82 += v83[v81--] * v85.rem;
          }

          while (v81 != -1);
        }

        if (v77)
        {
          memset(__b, a4, v77);
        }

        v111 = 0;
        operator new();
      }

      goto LABEL_95;
    }

    v72 = *(v106 - 1);
    v73 = *(v108 - 1);
    v106 -= 4;
    v108 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v74) = 0;
      v75 = v73 * v72;
      do
      {
        if (v73)
        {
          memset(v10, a4, v73);
          v10 = __b;
          v8 = v103;
        }

        mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MinReduce>(v8, v10, v72, v73);
        v8 = (v103 + v75);
        v10 = (__b + v73);
        __b = __b + v73;
        v103 = (v103 + v75);
        v74 = v74 + v73;
      }

      while (v74 < *(*a2 + 48));
    }
  }

LABEL_99:
  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }

  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }
}

void sub_25A817150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

uint8x16_t *mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MaxReduce>(uint8x16_t *result, uint8x16_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a4;
      v6 = a2;
      if (a4 >= 0x10)
      {
        do
        {
          v7 = *result++;
          *v6 = vmaxq_u8(v7, *v6);
          ++v6;
          v5 -= 16;
        }

        while (v5 > 0xF);
      }

      for (; v5; --v5)
      {
        v9 = result->u8[0];
        result = (result + 1);
        v8 = v9;
        if (v6->u8[0] > v9)
        {
          v8 = v6->i8[0];
        }

        v6->i8[0] = v8;
        v6 = (v6 + 1);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06B98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + **(result + 16) + *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_s8(v5);
  if (v4 < 16)
  {
    v8 = **(result + 32);
  }

  else
  {
    do
    {
      v7 = *v2++;
      v6 = vmaxq_u8(v7, v6);
      v8 = v4 - 16;
      v9 = v4 > 0x1F;
      v4 -= 16;
    }

    while (v9);
  }

  v10 = *v3;
  v11 = vmaxvq_u8(v6);
  if (v10 <= v11)
  {
    LOBYTE(v10) = v11;
  }

  *v3 = v10;
  if (v8 >= 1)
  {
    v12 = v8 + 1;
    do
    {
      v14 = v2->u8[0];
      v2 = (v2 + 1);
      v13 = v14;
      if (v10 <= v14)
      {
        LOBYTE(v10) = v13;
      }

      *v3 = v10;
      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06C18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06C98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + **(result + 24) + *a2);
  if (*v2 > v3)
  {
    LOBYTE(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint8x16_t *mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MinReduce>(uint8x16_t *result, uint8x16_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a4;
      v6 = a2;
      if (a4 >= 0x10)
      {
        do
        {
          v7 = *result++;
          *v6 = vminq_u8(v7, *v6);
          ++v6;
          v5 -= 16;
        }

        while (v5 > 0xF);
      }

      for (; v5; --v5)
      {
        v9 = result->u8[0];
        result = (result + 1);
        v8 = v9;
        if (v6->u8[0] < v9)
        {
          v8 = v6->i8[0];
        }

        v6->i8[0] = v8;
        v6 = (v6 + 1);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06D18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + **(result + 16) + *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_s8(v5);
  if (v4 < 16)
  {
    v8 = **(result + 32);
  }

  else
  {
    do
    {
      v7 = *v2++;
      v6 = vminq_u8(v7, v6);
      v8 = v4 - 16;
      v9 = v4 > 0x1F;
      v4 -= 16;
    }

    while (v9);
  }

  v10 = *v3;
  v11 = vminvq_u8(v6);
  if (v10 >= v11)
  {
    LOBYTE(v10) = v11;
  }

  *v3 = v10;
  if (v8 >= 1)
  {
    v12 = v8 + 1;
    do
    {
      v14 = v2->u8[0];
      v2 = (v2 + 1);
      v13 = v14;
      if (v10 >= v14)
      {
        LOBYTE(v10) = v13;
      }

      *v3 = v10;
      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06D98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06E18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + **(result + 24) + *a2);
  if (*v2 < v3)
  {
    LOBYTE(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unsigned int a4)
{
  v148 = *MEMORY[0x277D85DE8];
  v144 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v139);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v137 = v11;
  v138 = v9;
  if (v139 == 1)
  {
    v19 = v141;
    if (v141 - v140 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v140;
      v23 = vdupq_n_s16(a4);
      do
      {
        v24 = v23;
        v11->i16[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 16)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vmaxq_u16(v30, v25);
            v24 = vmaxq_u16(v29, v24);
            v26 = v28 - 16;
            v18 = v28 > 0x1F;
            v28 -= 16;
          }

          while (v18);
        }

        v31 = vmaxvq_u16(vmaxq_u16(v24, v25));
        if (a4 > v31)
        {
          v31 = a4;
        }

        v11->i16[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 2);
            v33 = v34;
            if (v31 <= v34)
            {
              v31 = v33;
            }

            v11->i16[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 2);
        v9 = (v9 + 2 * v22);
      }

      while (v21 != v20);
    }

    v137 = v11;
    v138 = v9;
  }

  else
  {
    if (!v139)
    {
      v11->i16[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s16(a4);
      v14 = v13;
      if (v12 < 16)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vmaxq_u16(v16, v14);
          v13 = vmaxq_u16(v15, v13);
          v17 = v12 - 16;
          v18 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v18);
      }

      v44 = vmaxvq_u16(vmaxq_u16(v13, v14));
      if (a4 > v44)
      {
        v44 = a4;
      }

      v11->i16[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 2);
          v46 = v47;
          if (v44 <= v47)
          {
            v44 = v46;
          }

          v11->i16[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v139 & 0xFFFFFFFD) == 1)
    {
      v19 = v141;
LABEL_23:
      v35 = *(v19 - 1);
      v141 = v19 - 4;
      v143 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v133);
      v36 = *(*a2 + 48);
      if (v141 == v140)
      {
        v49 = v137;
        if (v36)
        {
          v50 = 0;
          v51 = v133;
          v52 = ((v134 - v133) >> 2) - 1;
          v53 = __p;
          v129 = v138;
          v130 = vdupq_n_s16(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 2 * v54;
            }

            *v49 = a4;
            v59 = (v129 + v58);
            if (v35 < 16)
            {
              v61 = v130;
              v62 = v130;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v130;
              v62 = v130;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vmaxq_u16(v64, v61);
                v62 = vmaxq_u16(v63, v62);
                v65 = v60 - 16;
                v18 = v60 > 0x1F;
                v60 -= 16;
              }

              while (v18);
            }

            v66 = vmaxvq_u16(vmaxq_u16(v62, v61));
            if (a4 > v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 2);
                v68 = v69;
                if (v66 <= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v137 = v49;
      }

      else if (v36)
      {
        v37 = v133;
        v38 = (v134 - v133) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v137->i16[0] = v144;
        v147 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v136 = __p;
        operator delete(__p);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      goto LABEL_67;
    }

    if (v139 != 2)
    {
      if (v139 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v133);
        if (*(*a2 + 48))
        {
          v70 = v133;
          v71 = (v134 - v133) >> 2;
          v72 = (v71 - 1);
          if (v71 - 1 >= 0)
          {
            v73 = 0;
            v74 = __p;
            v75 = 0;
            do
            {
              v76 = ldiv(v75, v70[v72]);
              v75 = v76.quot;
              v73 += v74[v72--] * v76.rem;
            }

            while (v72 != -1);
          }

          v145 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v139 != 4)
      {
        goto LABEL_67;
      }

      v48 = v141;
      goto LABEL_99;
    }

    v48 = v141;
    if (v141 - v140 != 4)
    {
LABEL_99:
      v87 = *(v48 - 1);
      v88 = *(v143 - 1);
      v141 = v48 - 4;
      v143 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v133);
      v89 = *(*a2 + 48);
      if (v141 == v140)
      {
        if (v89)
        {
          v107 = 0;
          v108 = vdupq_n_s64(v88 - 1);
          v109 = xmmword_25A9C2E70;
          v110 = xmmword_25A9C2E80;
          v111 = xmmword_25A99B0C0;
          v112 = xmmword_25A99B0D0;
          v132 = v108;
          do
          {
            v113 = v133;
            v114 = (v134 - v133) >> 2;
            v115 = (v114 - 1);
            if (v114 - 1 < 0)
            {
              v120 = 0;
            }

            else
            {
              v116 = 0;
              v117 = __p;
              v118 = v107;
              do
              {
                v119 = ldiv(v118, v113[v115]);
                v118 = v119.quot;
                v116 += v117[v115--] * v119.rem;
              }

              while (v115 != -1);
              v120 = 2 * v116;
              v109 = xmmword_25A9C2E70;
              v108 = v132;
              v111 = xmmword_25A99B0C0;
              v110 = xmmword_25A9C2E80;
              v112 = xmmword_25A99B0D0;
            }

            v121 = v137;
            if (v88)
            {
              v122 = 0;
              v123 = &v137->i16[4];
              do
              {
                v124 = vdupq_n_s64(v122);
                v125 = vmovn_s64(vcgeq_u64(v108, vorrq_s8(v124, v112)));
                if (vuzp1_s8(vuzp1_s16(v125, *v124.i8), *v124.i8).u8[0])
                {
                  *(v123 - 4) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(v125, *&v124), *&v124).i8[1])
                {
                  *(v123 - 3) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(*&v124, vmovn_s64(vcgeq_u64(v108, vorrq_s8(v124, v111)))), *&v124).i8[2])
                {
                  *(v123 - 2) = a4;
                  *(v123 - 1) = a4;
                }

                v126 = vmovn_s64(vcgeq_u64(v108, vorrq_s8(v124, v110)));
                if (vuzp1_s8(*&v124, vuzp1_s16(v126, *&v124)).i32[1])
                {
                  *v123 = a4;
                }

                if (vuzp1_s8(*&v124, vuzp1_s16(v126, *&v124)).i8[5])
                {
                  v123[1] = a4;
                }

                v127 = vmovn_s64(vcgeq_u64(v108, vorrq_s8(v124, v109)));
                if (vuzp1_s8(*&v127, vuzp1_s16(v127, v127)).i8[6])
                {
                  v123[2] = a4;
                }

                v128 = vuzp1_s16(v127, v127);
                if (vuzp1_s8(v128, v128).i8[7])
                {
                  v123[3] = a4;
                }

                v122 += 8;
                v123 += 8;
              }

              while (((v88 + 7) & 0xFFFFFFFFFFFFFFF8) != v122);
            }

            mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MaxReduce>((v138 + v120), v121, v87, v88);
            v137 = (v137 + 2 * v88);
            v107 += v88;
            v109 = xmmword_25A9C2E70;
            v108 = v132;
            v111 = xmmword_25A99B0C0;
            v110 = xmmword_25A9C2E80;
            v112 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v107);
        }
      }

      else if (v89)
      {
        v90 = xmmword_25A9C2E70;
        v91 = xmmword_25A9C2E80;
        v92 = xmmword_25A99B0C0;
        v93 = xmmword_25A99B0D0;
        v94 = v133;
        v95 = (v134 - v133) >> 2;
        v96 = (v95 - 1);
        if (v95 - 1 >= 0)
        {
          v97 = 0;
          v98 = __p;
          v99 = 0;
          do
          {
            v100 = ldiv(v99, v94[v96]);
            v99 = v100.quot;
            v97 += v98[v96--] * v100.rem;
          }

          while (v96 != -1);
          v91 = xmmword_25A9C2E80;
          v90 = xmmword_25A9C2E70;
          v93 = xmmword_25A99B0D0;
          v92 = xmmword_25A99B0C0;
        }

        if (v88)
        {
          v101 = 0;
          v102 = vdupq_n_s64(v88 - 1);
          v103 = &v137->i16[4];
          do
          {
            v104 = vdupq_n_s64(v101);
            v105 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, v93)));
            if (vuzp1_s8(vuzp1_s16(v105, *v102.i8), *v102.i8).u8[0])
            {
              *(v103 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v105, *&v102), *&v102).i8[1])
            {
              *(v103 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, v92)))), *&v102).i8[2])
            {
              *(v103 - 2) = a4;
              *(v103 - 1) = a4;
            }

            v106 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, v91)));
            if (vuzp1_s8(*&v102, vuzp1_s16(v106, *&v102)).i32[1])
            {
              *v103 = a4;
            }

            if (vuzp1_s8(*&v102, vuzp1_s16(v106, *&v102)).i8[5])
            {
              v103[1] = a4;
            }

            if (vuzp1_s8(*&v102, vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, v90))))).i8[6])
            {
              v103[2] = a4;
              v103[3] = a4;
            }

            v101 += 8;
            v103 += 8;
          }

          while (((v88 + 7) & 0xFFFFFFFFFFFFFFF8) != v101);
        }

        v146 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v77 = *(v141 - 1);
    v78 = *(v143 - 1);
    v141 -= 4;
    v143 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v79) = 0;
      v131 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v11->i16[4];
          do
          {
            v82 = vdupq_n_s64(v80);
            v83 = vmovn_s64(vcgeq_u64(v131, vorrq_s8(v82, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v83, *v82.i8), *v82.i8).u8[0])
            {
              *(v81 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v83, *&v82), *&v82).i8[1])
            {
              *(v81 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v82, vmovn_s64(vcgeq_u64(v131, vorrq_s8(v82, xmmword_25A99B0C0)))), *&v82).i8[2])
            {
              *(v81 - 2) = a4;
              *(v81 - 1) = a4;
            }

            v84 = vmovn_s64(vcgeq_u64(v131, vorrq_s8(v82, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v82, vuzp1_s16(v84, *&v82)).i32[1])
            {
              *v81 = a4;
            }

            if (vuzp1_s8(*&v82, vuzp1_s16(v84, *&v82)).i8[5])
            {
              v81[1] = a4;
            }

            v85 = vmovn_s64(vcgeq_u64(v131, vorrq_s8(v82, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v85, vuzp1_s16(v85, v85)).i8[6])
            {
              v81[2] = a4;
            }

            v86 = vuzp1_s16(v85, v85);
            if (vuzp1_s8(v86, v86).i8[7])
            {
              v81[3] = a4;
            }

            v80 += 8;
            v81 += 8;
          }

          while (((v78 + 7) & 0xFFFFFFFFFFFFFFF8) != v80);
        }

        mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MaxReduce>(v9, v11, v77, v78);
        v9 = (v138 + 2 * v78 * v77);
        v11 = (v137 + 2 * v78);
        v137 = v11;
        v138 = v9;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }
}

void sub_25A8186B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unsigned int a4)
{
  v148 = *MEMORY[0x277D85DE8];
  v144 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v139);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v137 = v11;
  v138 = v9;
  if (v139 == 1)
  {
    v19 = v141;
    if (v141 - v140 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v140;
      v23 = vdupq_n_s16(a4);
      do
      {
        v24 = v23;
        v11->i16[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 16)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vminq_u16(v25, v30);
            v24 = vminq_u16(v24, v29);
            v26 = v28 - 16;
            v18 = v28 > 0x1F;
            v28 -= 16;
          }

          while (v18);
        }

        v31 = vminvq_u16(vminq_u16(v24, v25));
        if (a4 < v31)
        {
          v31 = a4;
        }

        v11->i16[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 2);
            v33 = v34;
            if (v31 >= v34)
            {
              v31 = v33;
            }

            v11->i16[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 2);
        v9 = (v9 + 2 * v22);
      }

      while (v21 != v20);
    }

    v137 = v11;
    v138 = v9;
  }

  else
  {
    if (!v139)
    {
      v11->i16[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s16(a4);
      v14 = v13;
      if (v12 < 16)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vminq_u16(v14, v16);
          v13 = vminq_u16(v13, v15);
          v17 = v12 - 16;
          v18 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v18);
      }

      v44 = vminvq_u16(vminq_u16(v13, v14));
      if (a4 < v44)
      {
        v44 = a4;
      }

      v11->i16[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 2);
          v46 = v47;
          if (v44 >= v47)
          {
            v44 = v46;
          }

          v11->i16[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v139 & 0xFFFFFFFD) == 1)
    {
      v19 = v141;
LABEL_23:
      v35 = *(v19 - 1);
      v141 = v19 - 4;
      v143 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v133);
      v36 = *(*a2 + 48);
      if (v141 == v140)
      {
        v49 = v137;
        if (v36)
        {
          v50 = 0;
          v51 = v133;
          v52 = ((v134 - v133) >> 2) - 1;
          v53 = __p;
          v129 = v138;
          v130 = vdupq_n_s16(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 2 * v54;
            }

            *v49 = a4;
            v59 = (v129 + v58);
            if (v35 < 16)
            {
              v61 = v130;
              v62 = v130;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v130;
              v62 = v130;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vminq_u16(v61, v64);
                v62 = vminq_u16(v62, v63);
                v65 = v60 - 16;
                v18 = v60 > 0x1F;
                v60 -= 16;
              }

              while (v18);
            }

            v66 = vminvq_u16(vminq_u16(v62, v61));
            if (a4 < v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 2);
                v68 = v69;
                if (v66 >= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v137 = v49;
      }

      else if (v36)
      {
        v37 = v133;
        v38 = (v134 - v133) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v137->i16[0] = v144;
        v147 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v136 = __p;
        operator delete(__p);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      goto LABEL_67;
    }

    if (v139 != 2)
    {
      if (v139 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v133);
        if (*(*a2 + 48))
        {
          v70 = v133;
          v71 = (v134 - v133) >> 2;
          v72 = (v71 - 1);
          if (v71 - 1 >= 0)
          {
            v73 = 0;
            v74 = __p;
            v75 = 0;
            do
            {
              v76 = ldiv(v75, v70[v72]);
              v75 = v76.quot;
              v73 += v74[v72--] * v76.rem;
            }

            while (v72 != -1);
          }

          v145 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v139 != 4)
      {
        goto LABEL_67;
      }

      v48 = v141;
      goto LABEL_99;
    }

    v48 = v141;
    if (v141 - v140 != 4)
    {
LABEL_99:
      v87 = *(v48 - 1);
      v88 = *(v143 - 1);
      v141 = v48 - 4;
      v143 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v133);
      v89 = *(*a2 + 48);
      if (v141 == v140)
      {
        if (v89)
        {
          v107 = 0;
          v108 = vdupq_n_s64(v88 - 1);
          v109 = xmmword_25A9C2E70;
          v110 = xmmword_25A9C2E80;
          v111 = xmmword_25A99B0C0;
          v112 = xmmword_25A99B0D0;
          v132 = v108;
          do
          {
            v113 = v133;
            v114 = (v134 - v133) >> 2;
            v115 = (v114 - 1);
            if (v114 - 1 < 0)
            {
              v120 = 0;
            }

            else
            {
              v116 = 0;
              v117 = __p;
              v118 = v107;
              do
              {
                v119 = ldiv(v118, v113[v115]);
                v118 = v119.quot;
                v116 += v117[v115--] * v119.rem;
              }

              while (v115 != -1);
              v120 = 2 * v116;
              v109 = xmmword_25A9C2E70;
              v108 = v132;
              v111 = xmmword_25A99B0C0;
              v110 = xmmword_25A9C2E80;
              v112 = xmmword_25A99B0D0;
            }

            v121 = v137;
            if (v88)
            {
              v122 = 0;
              v123 = &v137->i16[4];
              do
              {
                v124 = vdupq_n_s64(v122);
                v125 = vmovn_s64(vcgeq_u64(v108, vorrq_s8(v124, v112)));
                if (vuzp1_s8(vuzp1_s16(v125, *v124.i8), *v124.i8).u8[0])
                {
                  *(v123 - 4) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(v125, *&v124), *&v124).i8[1])
                {
                  *(v123 - 3) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(*&v124, vmovn_s64(vcgeq_u64(v108, vorrq_s8(v124, v111)))), *&v124).i8[2])
                {
                  *(v123 - 2) = a4;
                  *(v123 - 1) = a4;
                }

                v126 = vmovn_s64(vcgeq_u64(v108, vorrq_s8(v124, v110)));
                if (vuzp1_s8(*&v124, vuzp1_s16(v126, *&v124)).i32[1])
                {
                  *v123 = a4;
                }

                if (vuzp1_s8(*&v124, vuzp1_s16(v126, *&v124)).i8[5])
                {
                  v123[1] = a4;
                }

                v127 = vmovn_s64(vcgeq_u64(v108, vorrq_s8(v124, v109)));
                if (vuzp1_s8(*&v127, vuzp1_s16(v127, v127)).i8[6])
                {
                  v123[2] = a4;
                }

                v128 = vuzp1_s16(v127, v127);
                if (vuzp1_s8(v128, v128).i8[7])
                {
                  v123[3] = a4;
                }

                v122 += 8;
                v123 += 8;
              }

              while (((v88 + 7) & 0xFFFFFFFFFFFFFFF8) != v122);
            }

            mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MinReduce>((v138 + v120), v121, v87, v88);
            v137 = (v137 + 2 * v88);
            v107 += v88;
            v109 = xmmword_25A9C2E70;
            v108 = v132;
            v111 = xmmword_25A99B0C0;
            v110 = xmmword_25A9C2E80;
            v112 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v107);
        }
      }

      else if (v89)
      {
        v90 = xmmword_25A9C2E70;
        v91 = xmmword_25A9C2E80;
        v92 = xmmword_25A99B0C0;
        v93 = xmmword_25A99B0D0;
        v94 = v133;
        v95 = (v134 - v133) >> 2;
        v96 = (v95 - 1);
        if (v95 - 1 >= 0)
        {
          v97 = 0;
          v98 = __p;
          v99 = 0;
          do
          {
            v100 = ldiv(v99, v94[v96]);
            v99 = v100.quot;
            v97 += v98[v96--] * v100.rem;
          }

          while (v96 != -1);
          v91 = xmmword_25A9C2E80;
          v90 = xmmword_25A9C2E70;
          v93 = xmmword_25A99B0D0;
          v92 = xmmword_25A99B0C0;
        }

        if (v88)
        {
          v101 = 0;
          v102 = vdupq_n_s64(v88 - 1);
          v103 = &v137->i16[4];
          do
          {
            v104 = vdupq_n_s64(v101);
            v105 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, v93)));
            if (vuzp1_s8(vuzp1_s16(v105, *v102.i8), *v102.i8).u8[0])
            {
              *(v103 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v105, *&v102), *&v102).i8[1])
            {
              *(v103 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, v92)))), *&v102).i8[2])
            {
              *(v103 - 2) = a4;
              *(v103 - 1) = a4;
            }

            v106 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, v91)));
            if (vuzp1_s8(*&v102, vuzp1_s16(v106, *&v102)).i32[1])
            {
              *v103 = a4;
            }

            if (vuzp1_s8(*&v102, vuzp1_s16(v106, *&v102)).i8[5])
            {
              v103[1] = a4;
            }

            if (vuzp1_s8(*&v102, vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, v90))))).i8[6])
            {
              v103[2] = a4;
              v103[3] = a4;
            }

            v101 += 8;
            v103 += 8;
          }

          while (((v88 + 7) & 0xFFFFFFFFFFFFFFF8) != v101);
        }

        v146 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v77 = *(v141 - 1);
    v78 = *(v143 - 1);
    v141 -= 4;
    v143 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v79) = 0;
      v131 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v11->i16[4];
          do
          {
            v82 = vdupq_n_s64(v80);
            v83 = vmovn_s64(vcgeq_u64(v131, vorrq_s8(v82, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v83, *v82.i8), *v82.i8).u8[0])
            {
              *(v81 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v83, *&v82), *&v82).i8[1])
            {
              *(v81 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v82, vmovn_s64(vcgeq_u64(v131, vorrq_s8(v82, xmmword_25A99B0C0)))), *&v82).i8[2])
            {
              *(v81 - 2) = a4;
              *(v81 - 1) = a4;
            }

            v84 = vmovn_s64(vcgeq_u64(v131, vorrq_s8(v82, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v82, vuzp1_s16(v84, *&v82)).i32[1])
            {
              *v81 = a4;
            }

            if (vuzp1_s8(*&v82, vuzp1_s16(v84, *&v82)).i8[5])
            {
              v81[1] = a4;
            }

            v85 = vmovn_s64(vcgeq_u64(v131, vorrq_s8(v82, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v85, vuzp1_s16(v85, v85)).i8[6])
            {
              v81[2] = a4;
            }

            v86 = vuzp1_s16(v85, v85);
            if (vuzp1_s8(v86, v86).i8[7])
            {
              v81[3] = a4;
            }

            v80 += 8;
            v81 += 8;
          }

          while (((v78 + 7) & 0xFFFFFFFFFFFFFFF8) != v80);
        }

        mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MinReduce>(v9, v11, v77, v78);
        v9 = (v138 + 2 * v78 * v77);
        v11 = (v137 + 2 * v78);
        v137 = v11;
        v138 = v9;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }
}

void sub_25A819308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

_OWORD *mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MaxReduce>(_OWORD *result, uint16x8_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 0x10)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vmaxq_u16(v8, v5[1]);
          *v5 = vmaxq_u16(v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 16;
        }

        while (v6 > 0xF);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 2);
        v10 = v11;
        if (v5->u16[0] > v11)
        {
          v10 = v5->i16[0];
        }

        v5->i16[0] = v10;
        v5 = (v5 + 2);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06E98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 2 * **(result + 16) + 2 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_s16(v5);
  v7 = v6;
  if (v4 < 16)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vmaxq_u16(v9, v7);
      v6 = vmaxq_u16(v8, v6);
      v10 = v4 - 16;
      v11 = v4 > 0x1F;
      v4 -= 16;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vmaxvq_u16(vmaxq_u16(v6, v7));
  if (v12 <= v13)
  {
    LOWORD(v12) = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 2);
      v15 = v16;
      if (v12 <= v16)
      {
        LOWORD(v12) = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06F18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06F98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 2 * **(result + 24) + 2 * *a2);
  if (*v2 > v3)
  {
    LOWORD(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MinReduce>(_OWORD *result, uint16x8_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 0x10)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vminq_u16(v5[1], v8);
          *v5 = vminq_u16(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 16;
        }

        while (v6 > 0xF);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 2);
        v10 = v11;
        if (v5->u16[0] < v11)
        {
          v10 = v5->i16[0];
        }

        v5->i16[0] = v10;
        v5 = (v5 + 2);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07018;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 2 * **(result + 16) + 2 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_s16(v5);
  v7 = v6;
  if (v4 < 16)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vminq_u16(v7, v9);
      v6 = vminq_u16(v6, v8);
      v10 = v4 - 16;
      v11 = v4 > 0x1F;
      v4 -= 16;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vminvq_u16(vminq_u16(v6, v7));
  if (v12 >= v13)
  {
    LOWORD(v12) = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 2);
      v15 = v16;
      if (v12 >= v16)
      {
        LOWORD(v12) = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07098;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07118;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 2 * **(result + 24) + 2 * *a2);
  if (*v2 < v3)
  {
    LOWORD(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unsigned int a4)
{
  v139 = *MEMORY[0x277D85DE8];
  v135 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v130);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v128 = v11;
  v129 = v9;
  if (v130 == 1)
  {
    v19 = v132;
    if (v132 - v131 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v131;
      v23 = vdupq_n_s32(a4);
      do
      {
        v24 = v23;
        v11->i32[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 8)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vmaxq_u32(v30, v25);
            v24 = vmaxq_u32(v29, v24);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vmaxvq_u32(vmaxq_u32(v24, v25));
        if (a4 > v31)
        {
          v31 = a4;
        }

        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 4);
            v33 = v34;
            if (v31 <= v34)
            {
              v31 = v33;
            }

            v11->i32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 4);
        v9 = (v9 + 4 * v22);
      }

      while (v21 != v20);
    }

    v128 = v11;
    v129 = v9;
  }

  else
  {
    if (!v130)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vmaxq_u32(v16, v14);
          v13 = vmaxq_u32(v15, v13);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v44 = vmaxvq_u32(vmaxq_u32(v13, v14));
      if (a4 > v44)
      {
        v44 = a4;
      }

      v11->i32[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 4);
          v46 = v47;
          if (v44 <= v47)
          {
            v44 = v46;
          }

          v11->i32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v130 & 0xFFFFFFFD) == 1)
    {
      v19 = v132;
LABEL_23:
      v35 = *(v19 - 1);
      v132 = v19 - 4;
      v134 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
      v36 = *(*a2 + 48);
      if (v132 == v131)
      {
        v49 = v128;
        if (v36)
        {
          v50 = 0;
          v51 = v124;
          v52 = ((v125 - v124) >> 2) - 1;
          v53 = __p;
          v120 = v129;
          v121 = vdupq_n_s32(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            *v49 = a4;
            v59 = (v120 + v58);
            if (v35 < 8)
            {
              v61 = v121;
              v62 = v121;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v121;
              v62 = v121;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vmaxq_u32(v64, v61);
                v62 = vmaxq_u32(v63, v62);
                v65 = v60 - 8;
                v18 = v60 > 0xF;
                v60 -= 8;
              }

              while (v18);
            }

            v66 = vmaxvq_u32(vmaxq_u32(v62, v61));
            if (a4 > v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v68 = v69;
                if (v66 <= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v128 = v49;
      }

      else if (v36)
      {
        v37 = v124;
        v38 = (v125 - v124) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v128->i32[0] = v135;
        v138 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v127 = __p;
        operator delete(__p);
      }

      if (v124)
      {
        v125 = v124;
        operator delete(v124);
      }

      goto LABEL_67;
    }

    if (v130 != 2)
    {
      if (v130 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
        if (*(*a2 + 48))
        {
          v70 = v124;
          v71 = (v125 - v124) >> 2;
          v72 = (v71 - 1);
          if (v71 - 1 >= 0)
          {
            v73 = 0;
            v74 = __p;
            v75 = 0;
            do
            {
              v76 = ldiv(v75, v70[v72]);
              v75 = v76.quot;
              v73 += v74[v72--] * v76.rem;
            }

            while (v72 != -1);
          }

          v136 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v130 != 4)
      {
        goto LABEL_67;
      }

      v48 = v132;
      goto LABEL_91;
    }

    v48 = v132;
    if (v132 - v131 != 4)
    {
LABEL_91:
      v85 = *(v48 - 1);
      v86 = *(v134 - 1);
      v132 = v48 - 4;
      v134 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
      v87 = *(*a2 + 48);
      if (v132 == v131)
      {
        if (v87)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v86 - 1);
          v104 = xmmword_25A99B0C0;
          v105 = xmmword_25A99B0D0;
          v123 = v103;
          do
          {
            v106 = v124;
            v107 = (v125 - v124) >> 2;
            v108 = (v107 - 1);
            if (v107 - 1 < 0)
            {
              v113 = 0;
            }

            else
            {
              v109 = 0;
              v110 = __p;
              v111 = v102;
              do
              {
                v112 = ldiv(v111, v106[v108]);
                v111 = v112.quot;
                v109 += v110[v108--] * v112.rem;
              }

              while (v108 != -1);
              v113 = 4 * v109;
              v104 = xmmword_25A99B0C0;
              v103 = v123;
              v105 = xmmword_25A99B0D0;
            }

            v114 = v128;
            if (v86)
            {
              v115 = 0;
              v116 = &v128->i32[2];
              do
              {
                v117 = vdupq_n_s64(v115);
                v118 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v105)));
                if (vuzp1_s16(v118, *v117.i8).u8[0])
                {
                  *(v116 - 2) = a4;
                }

                if (vuzp1_s16(v118, *&v117).i8[2])
                {
                  *(v116 - 1) = a4;
                }

                v119 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v104)));
                if (vuzp1_s16(v119, v119).i32[1])
                {
                  *v116 = a4;
                  v116[1] = a4;
                }

                v115 += 4;
                v116 += 4;
              }

              while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v115);
            }

            mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MaxReduce>((v129 + v113), v114, v85, v86);
            v128 = (v128 + 4 * v86);
            v102 += v86;
            v104 = xmmword_25A99B0C0;
            v103 = v123;
            v105 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v102);
        }
      }

      else if (v87)
      {
        v88 = xmmword_25A99B0C0;
        v89 = xmmword_25A99B0D0;
        v90 = v124;
        v91 = (v125 - v124) >> 2;
        v92 = (v91 - 1);
        if (v91 - 1 >= 0)
        {
          v93 = 0;
          v94 = __p;
          v95 = 0;
          do
          {
            v96 = ldiv(v95, v90[v92]);
            v95 = v96.quot;
            v93 += v94[v92--] * v96.rem;
          }

          while (v92 != -1);
          v89 = xmmword_25A99B0D0;
          v88 = xmmword_25A99B0C0;
        }

        if (v86)
        {
          v97 = 0;
          v98 = vdupq_n_s64(v86 - 1);
          v99 = &v128->i32[2];
          do
          {
            v100 = vdupq_n_s64(v97);
            v101 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v89)));
            if (vuzp1_s16(v101, *v98.i8).u8[0])
            {
              *(v99 - 2) = a4;
            }

            if (vuzp1_s16(v101, *&v98).i8[2])
            {
              *(v99 - 1) = a4;
            }

            if (vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v88)))).i32[1])
            {
              *v99 = a4;
              v99[1] = a4;
            }

            v97 += 4;
            v99 += 4;
          }

          while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v97);
        }

        v137 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v77 = *(v132 - 1);
    v78 = *(v134 - 1);
    v132 -= 4;
    v134 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v79) = 0;
      v122 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v11->i32[2];
          do
          {
            v82 = vdupq_n_s64(v80);
            v83 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0D0)));
            if (vuzp1_s16(v83, *v82.i8).u8[0])
            {
              *(v81 - 2) = a4;
            }

            if (vuzp1_s16(v83, *&v82).i8[2])
            {
              *(v81 - 1) = a4;
            }

            v84 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0C0)));
            if (vuzp1_s16(v84, v84).i32[1])
            {
              *v81 = a4;
              v81[1] = a4;
            }

            v80 += 4;
            v81 += 4;
          }

          while (((v78 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v80);
        }

        mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MaxReduce>(v9, v11, v77, v78);
        v9 = (v129 + 4 * v78 * v77);
        v11 = (v128 + 4 * v78);
        v128 = v11;
        v129 = v9;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }
}

void sub_25A81A6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unsigned int a4)
{
  v139 = *MEMORY[0x277D85DE8];
  v135 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v130);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v128 = v11;
  v129 = v9;
  if (v130 == 1)
  {
    v19 = v132;
    if (v132 - v131 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v131;
      v23 = vdupq_n_s32(a4);
      do
      {
        v24 = v23;
        v11->i32[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 8)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vminq_u32(v25, v30);
            v24 = vminq_u32(v24, v29);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vminvq_u32(vminq_u32(v24, v25));
        if (a4 < v31)
        {
          v31 = a4;
        }

        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 4);
            v33 = v34;
            if (v31 >= v34)
            {
              v31 = v33;
            }

            v11->i32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 4);
        v9 = (v9 + 4 * v22);
      }

      while (v21 != v20);
    }

    v128 = v11;
    v129 = v9;
  }

  else
  {
    if (!v130)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vminq_u32(v14, v16);
          v13 = vminq_u32(v13, v15);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v44 = vminvq_u32(vminq_u32(v13, v14));
      if (a4 < v44)
      {
        v44 = a4;
      }

      v11->i32[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 4);
          v46 = v47;
          if (v44 >= v47)
          {
            v44 = v46;
          }

          v11->i32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v130 & 0xFFFFFFFD) == 1)
    {
      v19 = v132;
LABEL_23:
      v35 = *(v19 - 1);
      v132 = v19 - 4;
      v134 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
      v36 = *(*a2 + 48);
      if (v132 == v131)
      {
        v49 = v128;
        if (v36)
        {
          v50 = 0;
          v51 = v124;
          v52 = ((v125 - v124) >> 2) - 1;
          v53 = __p;
          v120 = v129;
          v121 = vdupq_n_s32(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            *v49 = a4;
            v59 = (v120 + v58);
            if (v35 < 8)
            {
              v61 = v121;
              v62 = v121;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v121;
              v62 = v121;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vminq_u32(v61, v64);
                v62 = vminq_u32(v62, v63);
                v65 = v60 - 8;
                v18 = v60 > 0xF;
                v60 -= 8;
              }

              while (v18);
            }

            v66 = vminvq_u32(vminq_u32(v62, v61));
            if (a4 < v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v68 = v69;
                if (v66 >= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v128 = v49;
      }

      else if (v36)
      {
        v37 = v124;
        v38 = (v125 - v124) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v128->i32[0] = v135;
        v138 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v127 = __p;
        operator delete(__p);
      }

      if (v124)
      {
        v125 = v124;
        operator delete(v124);
      }

      goto LABEL_67;
    }

    if (v130 != 2)
    {
      if (v130 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
        if (*(*a2 + 48))
        {
          v70 = v124;
          v71 = (v125 - v124) >> 2;
          v72 = (v71 - 1);
          if (v71 - 1 >= 0)
          {
            v73 = 0;
            v74 = __p;
            v75 = 0;
            do
            {
              v76 = ldiv(v75, v70[v72]);
              v75 = v76.quot;
              v73 += v74[v72--] * v76.rem;
            }

            while (v72 != -1);
          }

          v136 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v130 != 4)
      {
        goto LABEL_67;
      }

      v48 = v132;
      goto LABEL_91;
    }

    v48 = v132;
    if (v132 - v131 != 4)
    {
LABEL_91:
      v85 = *(v48 - 1);
      v86 = *(v134 - 1);
      v132 = v48 - 4;
      v134 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
      v87 = *(*a2 + 48);
      if (v132 == v131)
      {
        if (v87)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v86 - 1);
          v104 = xmmword_25A99B0C0;
          v105 = xmmword_25A99B0D0;
          v123 = v103;
          do
          {
            v106 = v124;
            v107 = (v125 - v124) >> 2;
            v108 = (v107 - 1);
            if (v107 - 1 < 0)
            {
              v113 = 0;
            }

            else
            {
              v109 = 0;
              v110 = __p;
              v111 = v102;
              do
              {
                v112 = ldiv(v111, v106[v108]);
                v111 = v112.quot;
                v109 += v110[v108--] * v112.rem;
              }

              while (v108 != -1);
              v113 = 4 * v109;
              v104 = xmmword_25A99B0C0;
              v103 = v123;
              v105 = xmmword_25A99B0D0;
            }

            v114 = v128;
            if (v86)
            {
              v115 = 0;
              v116 = &v128->i32[2];
              do
              {
                v117 = vdupq_n_s64(v115);
                v118 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v105)));
                if (vuzp1_s16(v118, *v117.i8).u8[0])
                {
                  *(v116 - 2) = a4;
                }

                if (vuzp1_s16(v118, *&v117).i8[2])
                {
                  *(v116 - 1) = a4;
                }

                v119 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v104)));
                if (vuzp1_s16(v119, v119).i32[1])
                {
                  *v116 = a4;
                  v116[1] = a4;
                }

                v115 += 4;
                v116 += 4;
              }

              while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v115);
            }

            mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MinReduce>((v129 + v113), v114, v85, v86);
            v128 = (v128 + 4 * v86);
            v102 += v86;
            v104 = xmmword_25A99B0C0;
            v103 = v123;
            v105 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v102);
        }
      }

      else if (v87)
      {
        v88 = xmmword_25A99B0C0;
        v89 = xmmword_25A99B0D0;
        v90 = v124;
        v91 = (v125 - v124) >> 2;
        v92 = (v91 - 1);
        if (v91 - 1 >= 0)
        {
          v93 = 0;
          v94 = __p;
          v95 = 0;
          do
          {
            v96 = ldiv(v95, v90[v92]);
            v95 = v96.quot;
            v93 += v94[v92--] * v96.rem;
          }

          while (v92 != -1);
          v89 = xmmword_25A99B0D0;
          v88 = xmmword_25A99B0C0;
        }

        if (v86)
        {
          v97 = 0;
          v98 = vdupq_n_s64(v86 - 1);
          v99 = &v128->i32[2];
          do
          {
            v100 = vdupq_n_s64(v97);
            v101 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v89)));
            if (vuzp1_s16(v101, *v98.i8).u8[0])
            {
              *(v99 - 2) = a4;
            }

            if (vuzp1_s16(v101, *&v98).i8[2])
            {
              *(v99 - 1) = a4;
            }

            if (vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v88)))).i32[1])
            {
              *v99 = a4;
              v99[1] = a4;
            }

            v97 += 4;
            v99 += 4;
          }

          while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v97);
        }

        v137 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v77 = *(v132 - 1);
    v78 = *(v134 - 1);
    v132 -= 4;
    v134 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v79) = 0;
      v122 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v11->i32[2];
          do
          {
            v82 = vdupq_n_s64(v80);
            v83 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0D0)));
            if (vuzp1_s16(v83, *v82.i8).u8[0])
            {
              *(v81 - 2) = a4;
            }

            if (vuzp1_s16(v83, *&v82).i8[2])
            {
              *(v81 - 1) = a4;
            }

            v84 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0C0)));
            if (vuzp1_s16(v84, v84).i32[1])
            {
              *v81 = a4;
              v81[1] = a4;
            }

            v80 += 4;
            v81 += 4;
          }

          while (((v78 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v80);
        }

        mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MinReduce>(v9, v11, v77, v78);
        v9 = (v129 + 4 * v78 * v77);
        v11 = (v128 + 4 * v78);
        v128 = v11;
        v129 = v9;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }
}

void sub_25A81B130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

_OWORD *mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MaxReduce>(_OWORD *result, uint32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vmaxq_u32(v8, v5[1]);
          *v5 = vmaxq_u32(v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 4);
        v10 = v11;
        if (v5->i32[0] > v11)
        {
          v10 = v5->i32[0];
        }

        v5->i32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07198;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vmaxq_u32(v9, v7);
      v6 = vmaxq_u32(v8, v6);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vmaxvq_u32(vmaxq_u32(v6, v7));
  if (*v3 <= v13)
  {
    v12 = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 4);
      v15 = v16;
      if (v12 <= v16)
      {
        v12 = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07218;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 4 * **(result + 24) + 4 * *a2);
  if (*v2 > v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MinReduce>(_OWORD *result, uint32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vminq_u32(v5[1], v8);
          *v5 = vminq_u32(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 4);
        v10 = v11;
        if (v5->i32[0] < v11)
        {
          v10 = v5->i32[0];
        }

        v5->i32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07318;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vminq_u32(v7, v9);
      v6 = vminq_u32(v6, v8);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vminvq_u32(vminq_u32(v6, v7));
  if (*v3 >= v13)
  {
    v12 = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 4);
      v15 = v16;
      if (v12 >= v16)
      {
        v12 = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07398;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07418;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 4 * **(result + 24) + 4 * *a2);
  if (*v2 < v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unint64_t a4)
{
  v135 = *MEMORY[0x277D85DE8];
  v131 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v126);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v124 = v11;
  v125 = v9;
  if (v126 == 1)
  {
    v19 = v128;
    if (v128 - v127 != 4)
    {
      goto LABEL_25;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v127;
      v23 = vdupq_lane_s64(a4, 0);
      do
      {
        v24 = v23;
        v11->i64[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 4)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vbslq_s8(vcgtq_u64(v30, v25), v30, v25);
            v24 = vbslq_s8(vcgtq_u64(v29, v24), v29, v24);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = vbslq_s8(vcgtq_u64(v24, v25), v24, v25);
        v32 = v31.u64[1];
        if (v31.i64[1] <= v31.i64[0])
        {
          v32 = v31.i64[0];
        }

        if (a4 > v32)
        {
          v32 = a4;
        }

        v11->i64[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v35 = *v27;
            v27 = (v27 + 8);
            v34 = v35;
            if (v32 <= v35)
            {
              v32 = v34;
            }

            v11->i64[0] = v32;
            --v33;
          }

          while (v33 > 1);
        }

        ++v21;
        v11 = (v11 + 8);
        v9 = (v9 + 8 * v22);
      }

      while (v21 != v20);
    }

    v124 = v11;
    v125 = v9;
  }

  else
  {
    if (!v126)
    {
      v11->i64[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_lane_s64(a4, 0);
      v14 = v13;
      if (v12 < 4)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vbslq_s8(vcgtq_u64(v16, v14), v16, v14);
          v13 = vbslq_s8(vcgtq_u64(v15, v13), v15, v13);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v45 = vbslq_s8(vcgtq_u64(v13, v14), v13, v14);
      v46 = v45.u64[1];
      if (v45.i64[1] <= v45.i64[0])
      {
        v46 = v45.i64[0];
      }

      if (a4 > v46)
      {
        v46 = a4;
      }

      v11->i64[0] = v46;
      if (v17 >= 1)
      {
        v47 = v17 + 1;
        do
        {
          v49 = *v9;
          v9 = (v9 + 8);
          v48 = v49;
          if (v46 <= v49)
          {
            v46 = v48;
          }

          v11->i64[0] = v46;
          --v47;
        }

        while (v47 > 1);
      }

      goto LABEL_73;
    }

    if ((v126 & 0xFFFFFFFD) == 1)
    {
      v19 = v128;
LABEL_25:
      v36 = *(v19 - 1);
      v128 = v19 - 4;
      v130 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
      v37 = *(*a2 + 48);
      if (v128 == v127)
      {
        v51 = v124;
        if (v37)
        {
          v52 = 0;
          v53 = v120;
          v54 = ((v121 - v120) >> 2) - 1;
          v55 = __p;
          v116 = v125;
          v117 = vdupq_lane_s64(a4, 0);
          do
          {
            if ((v54 & 0x80000000) != 0)
            {
              v60 = 0;
            }

            else
            {
              v56 = 0;
              v57 = v54;
              quot = v52;
              do
              {
                v59 = ldiv(quot, v53[v57]);
                quot = v59.quot;
                v56 += v55[v57--] * v59.rem;
              }

              while (v57 != -1);
              v60 = 8 * v56;
            }

            *v51 = a4;
            v61 = (v116 + v60);
            if (v36 < 4)
            {
              v63 = v117;
              v64 = v117;
              v67 = v36;
            }

            else
            {
              v62 = v36;
              v63 = v117;
              v64 = v117;
              do
              {
                v65 = *v61;
                v66 = *(v61 + 1);
                v61 += 2;
                v63 = vbslq_s8(vcgtq_u64(v66, v63), v66, v63);
                v64 = vbslq_s8(vcgtq_u64(v65, v64), v65, v64);
                v67 = v62 - 4;
                v18 = v62 > 7;
                v62 -= 4;
              }

              while (v18);
            }

            v68 = vbslq_s8(vcgtq_u64(v64, v63), v64, v63);
            v69 = v68.u64[1];
            if (v68.i64[1] <= v68.i64[0])
            {
              v69 = v68.i64[0];
            }

            if (a4 > v69)
            {
              v69 = a4;
            }

            *v51 = v69;
            if (v67 >= 1)
            {
              v70 = v67 + 1;
              do
              {
                v72 = *v61;
                v61 = (v61 + 8);
                v71 = v72;
                if (v69 <= v72)
                {
                  v69 = v71;
                }

                *v51 = v69;
                --v70;
              }

              while (v70 > 1);
            }

            ++v52;
            ++v51;
          }

          while (v52 != v37);
        }

        v124 = v51;
      }

      else if (v37)
      {
        v38 = v120;
        v39 = (v121 - v120) >> 2;
        v40 = (v39 - 1);
        if (v39 - 1 >= 0)
        {
          v41 = 0;
          v42 = __p;
          v43 = 0;
          do
          {
            v44 = ldiv(v43, v38[v40]);
            v43 = v44.quot;
            v41 += v42[v40--] * v44.rem;
          }

          while (v40 != -1);
        }

        v124->i64[0] = v131;
        v134 = 0;
        operator new();
      }

LABEL_69:
      if (__p)
      {
        v123 = __p;
        operator delete(__p);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      goto LABEL_73;
    }

    if (v126 != 2)
    {
      if (v126 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
        if (*(*a2 + 48))
        {
          v73 = v120;
          v74 = (v121 - v120) >> 2;
          v75 = (v74 - 1);
          if (v74 - 1 >= 0)
          {
            v76 = 0;
            v77 = __p;
            v78 = 0;
            do
            {
              v79 = ldiv(v78, v73[v75]);
              v78 = v79.quot;
              v76 += v77[v75--] * v79.rem;
            }

            while (v75 != -1);
          }

          v132 = 0;
          operator new();
        }

        goto LABEL_69;
      }

      if (v126 != 4)
      {
        goto LABEL_73;
      }

      v50 = v128;
      goto LABEL_95;
    }

    v50 = v128;
    if (v128 - v127 != 4)
    {
LABEL_95:
      v86 = *(v50 - 1);
      v87 = *(v130 - 1);
      v128 = v50 - 4;
      v130 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
      v88 = *(*a2 + 48);
      if (v128 == v127)
      {
        if (v88)
        {
          v101 = 0;
          v102 = vdupq_n_s64(v87 - 1);
          v103 = xmmword_25A99B0D0;
          v119 = v102;
          do
          {
            v104 = v120;
            v105 = (v121 - v120) >> 2;
            v106 = (v105 - 1);
            if (v105 - 1 < 0)
            {
              v111 = 0;
            }

            else
            {
              v107 = 0;
              v108 = __p;
              v109 = v101;
              do
              {
                v110 = ldiv(v109, v104[v106]);
                v109 = v110.quot;
                v107 += v108[v106--] * v110.rem;
              }

              while (v106 != -1);
              v111 = 8 * v107;
              v103 = xmmword_25A99B0D0;
              v102 = v119;
            }

            v112 = v124;
            if (v87)
            {
              v113 = 0;
              v114 = &v124->i64[1];
              do
              {
                v115 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(vdupq_n_s64(v113), v103)));
                if (v115.i8[0])
                {
                  *(v114 - 1) = a4;
                }

                if (v115.i8[4])
                {
                  *v114 = a4;
                }

                v113 += 2;
                v114 += 2;
              }

              while (((v87 + 1) & 0xFFFFFFFFFFFFFFFELL) != v113);
            }

            mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MaxReduce>((v125 + v111), v112, v86, v87);
            v124 = (v124 + 8 * v87);
            v101 += v87;
            v103 = xmmword_25A99B0D0;
            v102 = v119;
          }

          while (*(*a2 + 48) > v101);
        }
      }

      else if (v88)
      {
        v89 = xmmword_25A99B0D0;
        v90 = v120;
        v91 = (v121 - v120) >> 2;
        v92 = (v91 - 1);
        if (v91 - 1 >= 0)
        {
          v93 = 0;
          v94 = __p;
          v95 = 0;
          do
          {
            v96 = ldiv(v95, v90[v92]);
            v95 = v96.quot;
            v93 += v94[v92--] * v96.rem;
          }

          while (v92 != -1);
          v89 = xmmword_25A99B0D0;
        }

        if (v87)
        {
          v97 = 0;
          v98 = vdupq_n_s64(v87 - 1);
          v99 = &v124->i64[1];
          do
          {
            v100 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(vdupq_n_s64(v97), v89)));
            if (v100.i8[0])
            {
              *(v99 - 1) = a4;
            }

            if (v100.i8[4])
            {
              *v99 = a4;
            }

            v97 += 2;
            v99 += 2;
          }

          while (((v87 + 1) & 0xFFFFFFFFFFFFFFFELL) != v97);
        }

        v133 = 0;
        operator new();
      }

      goto LABEL_69;
    }

    v80 = *(v128 - 1);
    v81 = *(v130 - 1);
    v128 -= 4;
    v130 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v82) = 0;
      v118 = vdupq_n_s64(v81 - 1);
      do
      {
        if (v81)
        {
          v83 = 0;
          v84 = &v11->i64[1];
          do
          {
            v85 = vmovn_s64(vcgeq_u64(v118, vorrq_s8(vdupq_n_s64(v83), xmmword_25A99B0D0)));
            if (v85.i8[0])
            {
              *(v84 - 1) = a4;
            }

            if (v85.i8[4])
            {
              *v84 = a4;
            }

            v83 += 2;
            v84 += 2;
          }

          while (((v81 + 1) & 0xFFFFFFFFFFFFFFFELL) != v83);
        }

        mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MaxReduce>(v9, v11, v80, v81);
        v9 = (v125 + 8 * v81 * v80);
        v11 = (v124 + 8 * v81);
        v124 = v11;
        v125 = v9;
        v82 = v82 + v81;
      }

      while (v82 < *(*a2 + 48));
    }
  }

LABEL_73:
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }
}

void sub_25A81C44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unint64_t a4)
{
  v135 = *MEMORY[0x277D85DE8];
  v131 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v126);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v124 = v11;
  v125 = v9;
  if (v126 == 1)
  {
    v19 = v128;
    if (v128 - v127 != 4)
    {
      goto LABEL_25;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v127;
      v23 = vdupq_lane_s64(a4, 0);
      do
      {
        v24 = v23;
        v11->i64[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 4)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vbslq_s8(vcgtq_u64(v30, v25), v25, v30);
            v24 = vbslq_s8(vcgtq_u64(v29, v24), v24, v29);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = vbslq_s8(vcgtq_u64(v24, v25), v25, v24);
        v32 = v31.u64[1];
        if (v31.i64[1] >= v31.i64[0])
        {
          v32 = v31.i64[0];
        }

        if (a4 < v32)
        {
          v32 = a4;
        }

        v11->i64[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v35 = *v27;
            v27 = (v27 + 8);
            v34 = v35;
            if (v32 >= v35)
            {
              v32 = v34;
            }

            v11->i64[0] = v32;
            --v33;
          }

          while (v33 > 1);
        }

        ++v21;
        v11 = (v11 + 8);
        v9 = (v9 + 8 * v22);
      }

      while (v21 != v20);
    }

    v124 = v11;
    v125 = v9;
  }

  else
  {
    if (!v126)
    {
      v11->i64[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_lane_s64(a4, 0);
      v14 = v13;
      if (v12 < 4)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vbslq_s8(vcgtq_u64(v16, v14), v14, v16);
          v13 = vbslq_s8(vcgtq_u64(v15, v13), v13, v15);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v45 = vbslq_s8(vcgtq_u64(v13, v14), v14, v13);
      v46 = v45.u64[1];
      if (v45.i64[1] >= v45.i64[0])
      {
        v46 = v45.i64[0];
      }

      if (a4 < v46)
      {
        v46 = a4;
      }

      v11->i64[0] = v46;
      if (v17 >= 1)
      {
        v47 = v17 + 1;
        do
        {
          v49 = *v9;
          v9 = (v9 + 8);
          v48 = v49;
          if (v46 >= v49)
          {
            v46 = v48;
          }

          v11->i64[0] = v46;
          --v47;
        }

        while (v47 > 1);
      }

      goto LABEL_73;
    }

    if ((v126 & 0xFFFFFFFD) == 1)
    {
      v19 = v128;
LABEL_25:
      v36 = *(v19 - 1);
      v128 = v19 - 4;
      v130 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
      v37 = *(*a2 + 48);
      if (v128 == v127)
      {
        v51 = v124;
        if (v37)
        {
          v52 = 0;
          v53 = v120;
          v54 = ((v121 - v120) >> 2) - 1;
          v55 = __p;
          v116 = v125;
          v117 = vdupq_lane_s64(a4, 0);
          do
          {
            if ((v54 & 0x80000000) != 0)
            {
              v60 = 0;
            }

            else
            {
              v56 = 0;
              v57 = v54;
              quot = v52;
              do
              {
                v59 = ldiv(quot, v53[v57]);
                quot = v59.quot;
                v56 += v55[v57--] * v59.rem;
              }

              while (v57 != -1);
              v60 = 8 * v56;
            }

            *v51 = a4;
            v61 = (v116 + v60);
            if (v36 < 4)
            {
              v63 = v117;
              v64 = v117;
              v67 = v36;
            }

            else
            {
              v62 = v36;
              v63 = v117;
              v64 = v117;
              do
              {
                v65 = *v61;
                v66 = *(v61 + 1);
                v61 += 2;
                v63 = vbslq_s8(vcgtq_u64(v66, v63), v63, v66);
                v64 = vbslq_s8(vcgtq_u64(v65, v64), v64, v65);
                v67 = v62 - 4;
                v18 = v62 > 7;
                v62 -= 4;
              }

              while (v18);
            }

            v68 = vbslq_s8(vcgtq_u64(v64, v63), v63, v64);
            v69 = v68.u64[1];
            if (v68.i64[1] >= v68.i64[0])
            {
              v69 = v68.i64[0];
            }

            if (a4 < v69)
            {
              v69 = a4;
            }

            *v51 = v69;
            if (v67 >= 1)
            {
              v70 = v67 + 1;
              do
              {
                v72 = *v61;
                v61 = (v61 + 8);
                v71 = v72;
                if (v69 >= v72)
                {
                  v69 = v71;
                }

                *v51 = v69;
                --v70;
              }

              while (v70 > 1);
            }

            ++v52;
            ++v51;
          }

          while (v52 != v37);
        }

        v124 = v51;
      }

      else if (v37)
      {
        v38 = v120;
        v39 = (v121 - v120) >> 2;
        v40 = (v39 - 1);
        if (v39 - 1 >= 0)
        {
          v41 = 0;
          v42 = __p;
          v43 = 0;
          do
          {
            v44 = ldiv(v43, v38[v40]);
            v43 = v44.quot;
            v41 += v42[v40--] * v44.rem;
          }

          while (v40 != -1);
        }

        v124->i64[0] = v131;
        v134 = 0;
        operator new();
      }

LABEL_69:
      if (__p)
      {
        v123 = __p;
        operator delete(__p);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      goto LABEL_73;
    }

    if (v126 != 2)
    {
      if (v126 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
        if (*(*a2 + 48))
        {
          v73 = v120;
          v74 = (v121 - v120) >> 2;
          v75 = (v74 - 1);
          if (v74 - 1 >= 0)
          {
            v76 = 0;
            v77 = __p;
            v78 = 0;
            do
            {
              v79 = ldiv(v78, v73[v75]);
              v78 = v79.quot;
              v76 += v77[v75--] * v79.rem;
            }

            while (v75 != -1);
          }

          v132 = 0;
          operator new();
        }

        goto LABEL_69;
      }

      if (v126 != 4)
      {
        goto LABEL_73;
      }

      v50 = v128;
      goto LABEL_95;
    }

    v50 = v128;
    if (v128 - v127 != 4)
    {
LABEL_95:
      v86 = *(v50 - 1);
      v87 = *(v130 - 1);
      v128 = v50 - 4;
      v130 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
      v88 = *(*a2 + 48);
      if (v128 == v127)
      {
        if (v88)
        {
          v101 = 0;
          v102 = vdupq_n_s64(v87 - 1);
          v103 = xmmword_25A99B0D0;
          v119 = v102;
          do
          {
            v104 = v120;
            v105 = (v121 - v120) >> 2;
            v106 = (v105 - 1);
            if (v105 - 1 < 0)
            {
              v111 = 0;
            }

            else
            {
              v107 = 0;
              v108 = __p;
              v109 = v101;
              do
              {
                v110 = ldiv(v109, v104[v106]);
                v109 = v110.quot;
                v107 += v108[v106--] * v110.rem;
              }

              while (v106 != -1);
              v111 = 8 * v107;
              v103 = xmmword_25A99B0D0;
              v102 = v119;
            }

            v112 = v124;
            if (v87)
            {
              v113 = 0;
              v114 = &v124->i64[1];
              do
              {
                v115 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(vdupq_n_s64(v113), v103)));
                if (v115.i8[0])
                {
                  *(v114 - 1) = a4;
                }

                if (v115.i8[4])
                {
                  *v114 = a4;
                }

                v113 += 2;
                v114 += 2;
              }

              while (((v87 + 1) & 0xFFFFFFFFFFFFFFFELL) != v113);
            }

            mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MinReduce>((v125 + v111), v112, v86, v87);
            v124 = (v124 + 8 * v87);
            v101 += v87;
            v103 = xmmword_25A99B0D0;
            v102 = v119;
          }

          while (*(*a2 + 48) > v101);
        }
      }

      else if (v88)
      {
        v89 = xmmword_25A99B0D0;
        v90 = v120;
        v91 = (v121 - v120) >> 2;
        v92 = (v91 - 1);
        if (v91 - 1 >= 0)
        {
          v93 = 0;
          v94 = __p;
          v95 = 0;
          do
          {
            v96 = ldiv(v95, v90[v92]);
            v95 = v96.quot;
            v93 += v94[v92--] * v96.rem;
          }

          while (v92 != -1);
          v89 = xmmword_25A99B0D0;
        }

        if (v87)
        {
          v97 = 0;
          v98 = vdupq_n_s64(v87 - 1);
          v99 = &v124->i64[1];
          do
          {
            v100 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(vdupq_n_s64(v97), v89)));
            if (v100.i8[0])
            {
              *(v99 - 1) = a4;
            }

            if (v100.i8[4])
            {
              *v99 = a4;
            }

            v97 += 2;
            v99 += 2;
          }

          while (((v87 + 1) & 0xFFFFFFFFFFFFFFFELL) != v97);
        }

        v133 = 0;
        operator new();
      }

      goto LABEL_69;
    }

    v80 = *(v128 - 1);
    v81 = *(v130 - 1);
    v128 -= 4;
    v130 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v82) = 0;
      v118 = vdupq_n_s64(v81 - 1);
      do
      {
        if (v81)
        {
          v83 = 0;
          v84 = &v11->i64[1];
          do
          {
            v85 = vmovn_s64(vcgeq_u64(v118, vorrq_s8(vdupq_n_s64(v83), xmmword_25A99B0D0)));
            if (v85.i8[0])
            {
              *(v84 - 1) = a4;
            }

            if (v85.i8[4])
            {
              *v84 = a4;
            }

            v83 += 2;
            v84 += 2;
          }

          while (((v81 + 1) & 0xFFFFFFFFFFFFFFFELL) != v83);
        }

        mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MinReduce>(v9, v11, v80, v81);
        v9 = (v125 + 8 * v81 * v80);
        v11 = (v124 + 8 * v81);
        v124 = v11;
        v125 = v9;
        v82 = v82 + v81;
      }

      while (v82 < *(*a2 + 48));
    }
  }

LABEL_73:
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }
}

void sub_25A81CE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

_OWORD *mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MaxReduce>(_OWORD *result, uint64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vbslq_s8(vcgtq_u64(v8, v5[1]), v8, v5[1]);
          *v5 = vbslq_s8(vcgtq_u64(v7, *v5), v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 8);
        v10 = v11;
        if (v5->i64[0] > v11)
        {
          v10 = v5->i64[0];
        }

        v5->i64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07498;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vbslq_s8(vcgtq_u64(v9, v7), v9, v7);
      v6 = vbslq_s8(vcgtq_u64(v8, v6), v8, v6);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vbslq_s8(vcgtq_u64(v6, v7), v6, v7);
  v14 = v13.u64[1];
  if (v13.i64[1] <= v13.i64[0])
  {
    v14 = v13.i64[0];
  }

  if (v12 <= v14)
  {
    v12 = v14;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v15 = v10 + 1;
    do
    {
      v17 = *v2;
      v2 = (v2 + 8);
      v16 = v17;
      if (v12 <= v17)
      {
        v12 = v16;
      }

      *v3 = v12;
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07518;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07598;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 8 * **(result + 24) + 8 * *a2);
  if (*v2 > v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MinReduce>(_OWORD *result, uint64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vbslq_s8(vcgtq_u64(v8, v5[1]), v5[1], v8);
          *v5 = vbslq_s8(vcgtq_u64(v7, *v5), *v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 8);
        v10 = v11;
        if (v5->i64[0] < v11)
        {
          v10 = v5->i64[0];
        }

        v5->i64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07618;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vbslq_s8(vcgtq_u64(v9, v7), v7, v9);
      v6 = vbslq_s8(vcgtq_u64(v8, v6), v6, v8);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vbslq_s8(vcgtq_u64(v6, v7), v7, v6);
  v14 = v13.u64[1];
  if (v13.i64[1] >= v13.i64[0])
  {
    v14 = v13.i64[0];
  }

  if (v12 >= v14)
  {
    v12 = v14;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v15 = v10 + 1;
    do
    {
      v17 = *v2;
      v2 = (v2 + 8);
      v16 = v17;
      if (v12 >= v17)
      {
        v12 = v16;
      }

      *v3 = v12;
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07718;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 8 * **(result + 24) + 8 * *a2);
  if (*v2 < v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, signed int a4)
{
  v139 = *MEMORY[0x277D85DE8];
  v135 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v130);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v128 = v11;
  v129 = v9;
  if (v130 == 1)
  {
    v19 = v132;
    if (v132 - v131 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v131;
      v23 = vdupq_n_s32(a4);
      do
      {
        v24 = v23;
        v11->i32[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 8)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vmaxq_s32(v30, v25);
            v24 = vmaxq_s32(v29, v24);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vmaxvq_s32(vmaxq_s32(v24, v25));
        if (a4 > v31)
        {
          v31 = a4;
        }

        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 4);
            v33 = v34;
            if (v31 <= v34)
            {
              v31 = v33;
            }

            v11->i32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 4);
        v9 = (v9 + 4 * v22);
      }

      while (v21 != v20);
    }

    v128 = v11;
    v129 = v9;
  }

  else
  {
    if (!v130)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vmaxq_s32(v16, v14);
          v13 = vmaxq_s32(v15, v13);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v44 = vmaxvq_s32(vmaxq_s32(v13, v14));
      if (a4 > v44)
      {
        v44 = a4;
      }

      v11->i32[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 4);
          v46 = v47;
          if (v44 <= v47)
          {
            v44 = v46;
          }

          v11->i32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v130 & 0xFFFFFFFD) == 1)
    {
      v19 = v132;
LABEL_23:
      v35 = *(v19 - 1);
      v132 = v19 - 4;
      v134 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
      v36 = *(*a2 + 48);
      if (v132 == v131)
      {
        v49 = v128;
        if (v36)
        {
          v50 = 0;
          v51 = v124;
          v52 = ((v125 - v124) >> 2) - 1;
          v53 = __p;
          v120 = v129;
          v121 = vdupq_n_s32(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            *v49 = a4;
            v59 = (v120 + v58);
            if (v35 < 8)
            {
              v61 = v121;
              v62 = v121;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v121;
              v62 = v121;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vmaxq_s32(v64, v61);
                v62 = vmaxq_s32(v63, v62);
                v65 = v60 - 8;
                v18 = v60 > 0xF;
                v60 -= 8;
              }

              while (v18);
            }

            v66 = vmaxvq_s32(vmaxq_s32(v62, v61));
            if (a4 > v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v68 = v69;
                if (v66 <= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v128 = v49;
      }

      else if (v36)
      {
        v37 = v124;
        v38 = (v125 - v124) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v128->i32[0] = v135;
        v138 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v127 = __p;
        operator delete(__p);
      }

      if (v124)
      {
        v125 = v124;
        operator delete(v124);
      }

      goto LABEL_67;
    }

    if (v130 != 2)
    {
      if (v130 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
        if (*(*a2 + 48))
        {
          v70 = v124;
          v71 = (v125 - v124) >> 2;
          v72 = (v71 - 1);
          if (v71 - 1 >= 0)
          {
            v73 = 0;
            v74 = __p;
            v75 = 0;
            do
            {
              v76 = ldiv(v75, v70[v72]);
              v75 = v76.quot;
              v73 += v74[v72--] * v76.rem;
            }

            while (v72 != -1);
          }

          v136 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v130 != 4)
      {
        goto LABEL_67;
      }

      v48 = v132;
      goto LABEL_91;
    }

    v48 = v132;
    if (v132 - v131 != 4)
    {
LABEL_91:
      v85 = *(v48 - 1);
      v86 = *(v134 - 1);
      v132 = v48 - 4;
      v134 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
      v87 = *(*a2 + 48);
      if (v132 == v131)
      {
        if (v87)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v86 - 1);
          v104 = xmmword_25A99B0C0;
          v105 = xmmword_25A99B0D0;
          v123 = v103;
          do
          {
            v106 = v124;
            v107 = (v125 - v124) >> 2;
            v108 = (v107 - 1);
            if (v107 - 1 < 0)
            {
              v113 = 0;
            }

            else
            {
              v109 = 0;
              v110 = __p;
              v111 = v102;
              do
              {
                v112 = ldiv(v111, v106[v108]);
                v111 = v112.quot;
                v109 += v110[v108--] * v112.rem;
              }

              while (v108 != -1);
              v113 = 4 * v109;
              v104 = xmmword_25A99B0C0;
              v103 = v123;
              v105 = xmmword_25A99B0D0;
            }

            v114 = v128;
            if (v86)
            {
              v115 = 0;
              v116 = &v128->i32[2];
              do
              {
                v117 = vdupq_n_s64(v115);
                v118 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v105)));
                if (vuzp1_s16(v118, *v117.i8).u8[0])
                {
                  *(v116 - 2) = a4;
                }

                if (vuzp1_s16(v118, *&v117).i8[2])
                {
                  *(v116 - 1) = a4;
                }

                v119 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v104)));
                if (vuzp1_s16(v119, v119).i32[1])
                {
                  *v116 = a4;
                  v116[1] = a4;
                }

                v115 += 4;
                v116 += 4;
              }

              while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v115);
            }

            mlx::core::strided_reduce<int,int,mlx::core::MaxReduce>((v129 + v113), v114, v85, v86);
            v128 = (v128 + 4 * v86);
            v102 += v86;
            v104 = xmmword_25A99B0C0;
            v103 = v123;
            v105 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v102);
        }
      }

      else if (v87)
      {
        v88 = xmmword_25A99B0C0;
        v89 = xmmword_25A99B0D0;
        v90 = v124;
        v91 = (v125 - v124) >> 2;
        v92 = (v91 - 1);
        if (v91 - 1 >= 0)
        {
          v93 = 0;
          v94 = __p;
          v95 = 0;
          do
          {
            v96 = ldiv(v95, v90[v92]);
            v95 = v96.quot;
            v93 += v94[v92--] * v96.rem;
          }

          while (v92 != -1);
          v89 = xmmword_25A99B0D0;
          v88 = xmmword_25A99B0C0;
        }

        if (v86)
        {
          v97 = 0;
          v98 = vdupq_n_s64(v86 - 1);
          v99 = &v128->i32[2];
          do
          {
            v100 = vdupq_n_s64(v97);
            v101 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v89)));
            if (vuzp1_s16(v101, *v98.i8).u8[0])
            {
              *(v99 - 2) = a4;
            }

            if (vuzp1_s16(v101, *&v98).i8[2])
            {
              *(v99 - 1) = a4;
            }

            if (vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v88)))).i32[1])
            {
              *v99 = a4;
              v99[1] = a4;
            }

            v97 += 4;
            v99 += 4;
          }

          while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v97);
        }

        v137 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v77 = *(v132 - 1);
    v78 = *(v134 - 1);
    v132 -= 4;
    v134 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v79) = 0;
      v122 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v11->i32[2];
          do
          {
            v82 = vdupq_n_s64(v80);
            v83 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0D0)));
            if (vuzp1_s16(v83, *v82.i8).u8[0])
            {
              *(v81 - 2) = a4;
            }

            if (vuzp1_s16(v83, *&v82).i8[2])
            {
              *(v81 - 1) = a4;
            }

            v84 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0C0)));
            if (vuzp1_s16(v84, v84).i32[1])
            {
              *v81 = a4;
              v81[1] = a4;
            }

            v80 += 4;
            v81 += 4;
          }

          while (((v78 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v80);
        }

        mlx::core::strided_reduce<int,int,mlx::core::MaxReduce>(v9, v11, v77, v78);
        v9 = (v129 + 4 * v78 * v77);
        v11 = (v128 + 4 * v78);
        v128 = v11;
        v129 = v9;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }
}

void sub_25A81E218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, signed int a4)
{
  v139 = *MEMORY[0x277D85DE8];
  v135 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v130);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v128 = v11;
  v129 = v9;
  if (v130 == 1)
  {
    v19 = v132;
    if (v132 - v131 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v131;
      v23 = vdupq_n_s32(a4);
      do
      {
        v24 = v23;
        v11->i32[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 8)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vminq_s32(v25, v30);
            v24 = vminq_s32(v24, v29);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vminvq_s32(vminq_s32(v24, v25));
        if (a4 < v31)
        {
          v31 = a4;
        }

        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 4);
            v33 = v34;
            if (v31 >= v34)
            {
              v31 = v33;
            }

            v11->i32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 4);
        v9 = (v9 + 4 * v22);
      }

      while (v21 != v20);
    }

    v128 = v11;
    v129 = v9;
  }

  else
  {
    if (!v130)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vminq_s32(v14, v16);
          v13 = vminq_s32(v13, v15);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v44 = vminvq_s32(vminq_s32(v13, v14));
      if (a4 < v44)
      {
        v44 = a4;
      }

      v11->i32[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 4);
          v46 = v47;
          if (v44 >= v47)
          {
            v44 = v46;
          }

          v11->i32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v130 & 0xFFFFFFFD) == 1)
    {
      v19 = v132;
LABEL_23:
      v35 = *(v19 - 1);
      v132 = v19 - 4;
      v134 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
      v36 = *(*a2 + 48);
      if (v132 == v131)
      {
        v49 = v128;
        if (v36)
        {
          v50 = 0;
          v51 = v124;
          v52 = ((v125 - v124) >> 2) - 1;
          v53 = __p;
          v120 = v129;
          v121 = vdupq_n_s32(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            *v49 = a4;
            v59 = (v120 + v58);
            if (v35 < 8)
            {
              v61 = v121;
              v62 = v121;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v121;
              v62 = v121;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vminq_s32(v61, v64);
                v62 = vminq_s32(v62, v63);
                v65 = v60 - 8;
                v18 = v60 > 0xF;
                v60 -= 8;
              }

              while (v18);
            }

            v66 = vminvq_s32(vminq_s32(v62, v61));
            if (a4 < v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v68 = v69;
                if (v66 >= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v128 = v49;
      }

      else if (v36)
      {
        v37 = v124;
        v38 = (v125 - v124) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v128->i32[0] = v135;
        v138 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v127 = __p;
        operator delete(__p);
      }

      if (v124)
      {
        v125 = v124;
        operator delete(v124);
      }

      goto LABEL_67;
    }

    if (v130 != 2)
    {
      if (v130 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
        if (*(*a2 + 48))
        {
          v70 = v124;
          v71 = (v125 - v124) >> 2;
          v72 = (v71 - 1);
          if (v71 - 1 >= 0)
          {
            v73 = 0;
            v74 = __p;
            v75 = 0;
            do
            {
              v76 = ldiv(v75, v70[v72]);
              v75 = v76.quot;
              v73 += v74[v72--] * v76.rem;
            }

            while (v72 != -1);
          }

          v136 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v130 != 4)
      {
        goto LABEL_67;
      }

      v48 = v132;
      goto LABEL_91;
    }

    v48 = v132;
    if (v132 - v131 != 4)
    {
LABEL_91:
      v85 = *(v48 - 1);
      v86 = *(v134 - 1);
      v132 = v48 - 4;
      v134 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v124);
      v87 = *(*a2 + 48);
      if (v132 == v131)
      {
        if (v87)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v86 - 1);
          v104 = xmmword_25A99B0C0;
          v105 = xmmword_25A99B0D0;
          v123 = v103;
          do
          {
            v106 = v124;
            v107 = (v125 - v124) >> 2;
            v108 = (v107 - 1);
            if (v107 - 1 < 0)
            {
              v113 = 0;
            }

            else
            {
              v109 = 0;
              v110 = __p;
              v111 = v102;
              do
              {
                v112 = ldiv(v111, v106[v108]);
                v111 = v112.quot;
                v109 += v110[v108--] * v112.rem;
              }

              while (v108 != -1);
              v113 = 4 * v109;
              v104 = xmmword_25A99B0C0;
              v103 = v123;
              v105 = xmmword_25A99B0D0;
            }

            v114 = v128;
            if (v86)
            {
              v115 = 0;
              v116 = &v128->i32[2];
              do
              {
                v117 = vdupq_n_s64(v115);
                v118 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v105)));
                if (vuzp1_s16(v118, *v117.i8).u8[0])
                {
                  *(v116 - 2) = a4;
                }

                if (vuzp1_s16(v118, *&v117).i8[2])
                {
                  *(v116 - 1) = a4;
                }

                v119 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v104)));
                if (vuzp1_s16(v119, v119).i32[1])
                {
                  *v116 = a4;
                  v116[1] = a4;
                }

                v115 += 4;
                v116 += 4;
              }

              while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v115);
            }

            mlx::core::strided_reduce<int,int,mlx::core::MinReduce>((v129 + v113), v114, v85, v86);
            v128 = (v128 + 4 * v86);
            v102 += v86;
            v104 = xmmword_25A99B0C0;
            v103 = v123;
            v105 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v102);
        }
      }

      else if (v87)
      {
        v88 = xmmword_25A99B0C0;
        v89 = xmmword_25A99B0D0;
        v90 = v124;
        v91 = (v125 - v124) >> 2;
        v92 = (v91 - 1);
        if (v91 - 1 >= 0)
        {
          v93 = 0;
          v94 = __p;
          v95 = 0;
          do
          {
            v96 = ldiv(v95, v90[v92]);
            v95 = v96.quot;
            v93 += v94[v92--] * v96.rem;
          }

          while (v92 != -1);
          v89 = xmmword_25A99B0D0;
          v88 = xmmword_25A99B0C0;
        }

        if (v86)
        {
          v97 = 0;
          v98 = vdupq_n_s64(v86 - 1);
          v99 = &v128->i32[2];
          do
          {
            v100 = vdupq_n_s64(v97);
            v101 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v89)));
            if (vuzp1_s16(v101, *v98.i8).u8[0])
            {
              *(v99 - 2) = a4;
            }

            if (vuzp1_s16(v101, *&v98).i8[2])
            {
              *(v99 - 1) = a4;
            }

            if (vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v88)))).i32[1])
            {
              *v99 = a4;
              v99[1] = a4;
            }

            v97 += 4;
            v99 += 4;
          }

          while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v97);
        }

        v137 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v77 = *(v132 - 1);
    v78 = *(v134 - 1);
    v132 -= 4;
    v134 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v79) = 0;
      v122 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v11->i32[2];
          do
          {
            v82 = vdupq_n_s64(v80);
            v83 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0D0)));
            if (vuzp1_s16(v83, *v82.i8).u8[0])
            {
              *(v81 - 2) = a4;
            }

            if (vuzp1_s16(v83, *&v82).i8[2])
            {
              *(v81 - 1) = a4;
            }

            v84 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0C0)));
            if (vuzp1_s16(v84, v84).i32[1])
            {
              *v81 = a4;
              v81[1] = a4;
            }

            v80 += 4;
            v81 += 4;
          }

          while (((v78 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v80);
        }

        mlx::core::strided_reduce<int,int,mlx::core::MinReduce>(v9, v11, v77, v78);
        v9 = (v129 + 4 * v78 * v77);
        v11 = (v128 + 4 * v78);
        v128 = v11;
        v129 = v9;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }
}

void sub_25A81EC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

_OWORD *mlx::core::strided_reduce<int,int,mlx::core::MaxReduce>(_OWORD *result, int32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vmaxq_s32(v8, v5[1]);
          *v5 = vmaxq_s32(v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 4);
        v10 = v11;
        if (v5->i32[0] > v11)
        {
          v10 = v5->i32[0];
        }

        v5->i32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07798;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vmaxq_s32(v9, v7);
      v6 = vmaxq_s32(v8, v6);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vmaxvq_s32(vmaxq_s32(v6, v7));
  if (*v3 <= v13)
  {
    v12 = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 4);
      v15 = v16;
      if (v12 <= v16)
      {
        v12 = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07818;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07898;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 4 * **(result + 24) + 4 * *a2);
  if (*v2 > v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<int,int,mlx::core::MinReduce>(_OWORD *result, int32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vminq_s32(v5[1], v8);
          *v5 = vminq_s32(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 4);
        v10 = v11;
        if (v5->i32[0] < v11)
        {
          v10 = v5->i32[0];
        }

        v5->i32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07918;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vminq_s32(v7, v9);
      v6 = vminq_s32(v6, v8);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vminvq_s32(vminq_s32(v6, v7));
  if (*v3 >= v13)
  {
    v12 = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 4);
      v15 = v16;
      if (v12 >= v16)
      {
        v12 = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07998;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07A18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 4 * **(result + 24) + 4 * *a2);
  if (*v2 < v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, uint64_t a4)
{
  v135 = *MEMORY[0x277D85DE8];
  v131 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v126);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v124 = v11;
  v125 = v9;
  if (v126 == 1)
  {
    v19 = v128;
    if (v128 - v127 != 4)
    {
      goto LABEL_25;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v127;
      v23 = vdupq_lane_s64(a4, 0);
      do
      {
        v24 = v23;
        v11->i64[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 4)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vbslq_s8(vcgtq_s64(v30, v25), v30, v25);
            v24 = vbslq_s8(vcgtq_s64(v29, v24), v29, v24);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = vbslq_s8(vcgtq_s64(v24, v25), v24, v25);
        v32 = v31.i64[1];
        if (v31.i64[1] <= v31.i64[0])
        {
          v32 = v31.i64[0];
        }

        if (a4 > v32)
        {
          v32 = a4;
        }

        v11->i64[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v35 = *v27;
            v27 = (v27 + 8);
            v34 = v35;
            if (v32 <= v35)
            {
              v32 = v34;
            }

            v11->i64[0] = v32;
            --v33;
          }

          while (v33 > 1);
        }

        ++v21;
        v11 = (v11 + 8);
        v9 = (v9 + 8 * v22);
      }

      while (v21 != v20);
    }

    v124 = v11;
    v125 = v9;
  }

  else
  {
    if (!v126)
    {
      v11->i64[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_lane_s64(a4, 0);
      v14 = v13;
      if (v12 < 4)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vbslq_s8(vcgtq_s64(v16, v14), v16, v14);
          v13 = vbslq_s8(vcgtq_s64(v15, v13), v15, v13);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v45 = vbslq_s8(vcgtq_s64(v13, v14), v13, v14);
      v46 = v45.i64[1];
      if (v45.i64[1] <= v45.i64[0])
      {
        v46 = v45.i64[0];
      }

      if (a4 > v46)
      {
        v46 = a4;
      }

      v11->i64[0] = v46;
      if (v17 >= 1)
      {
        v47 = v17 + 1;
        do
        {
          v49 = *v9;
          v9 = (v9 + 8);
          v48 = v49;
          if (v46 <= v49)
          {
            v46 = v48;
          }

          v11->i64[0] = v46;
          --v47;
        }

        while (v47 > 1);
      }

      goto LABEL_73;
    }

    if ((v126 & 0xFFFFFFFD) == 1)
    {
      v19 = v128;
LABEL_25:
      v36 = *(v19 - 1);
      v128 = v19 - 4;
      v130 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
      v37 = *(*a2 + 48);
      if (v128 == v127)
      {
        v51 = v124;
        if (v37)
        {
          v52 = 0;
          v53 = v120;
          v54 = ((v121 - v120) >> 2) - 1;
          v55 = __p;
          v116 = v125;
          v117 = vdupq_lane_s64(a4, 0);
          do
          {
            if ((v54 & 0x80000000) != 0)
            {
              v60 = 0;
            }

            else
            {
              v56 = 0;
              v57 = v54;
              quot = v52;
              do
              {
                v59 = ldiv(quot, v53[v57]);
                quot = v59.quot;
                v56 += v55[v57--] * v59.rem;
              }

              while (v57 != -1);
              v60 = 8 * v56;
            }

            *v51 = a4;
            v61 = (v116 + v60);
            if (v36 < 4)
            {
              v63 = v117;
              v64 = v117;
              v67 = v36;
            }

            else
            {
              v62 = v36;
              v63 = v117;
              v64 = v117;
              do
              {
                v65 = *v61;
                v66 = *(v61 + 1);
                v61 += 2;
                v63 = vbslq_s8(vcgtq_s64(v66, v63), v66, v63);
                v64 = vbslq_s8(vcgtq_s64(v65, v64), v65, v64);
                v67 = v62 - 4;
                v18 = v62 > 7;
                v62 -= 4;
              }

              while (v18);
            }

            v68 = vbslq_s8(vcgtq_s64(v64, v63), v64, v63);
            v69 = v68.i64[1];
            if (v68.i64[1] <= v68.i64[0])
            {
              v69 = v68.i64[0];
            }

            if (a4 > v69)
            {
              v69 = a4;
            }

            *v51 = v69;
            if (v67 >= 1)
            {
              v70 = v67 + 1;
              do
              {
                v72 = *v61;
                v61 = (v61 + 8);
                v71 = v72;
                if (v69 <= v72)
                {
                  v69 = v71;
                }

                *v51 = v69;
                --v70;
              }

              while (v70 > 1);
            }

            ++v52;
            ++v51;
          }

          while (v52 != v37);
        }

        v124 = v51;
      }

      else if (v37)
      {
        v38 = v120;
        v39 = (v121 - v120) >> 2;
        v40 = (v39 - 1);
        if (v39 - 1 >= 0)
        {
          v41 = 0;
          v42 = __p;
          v43 = 0;
          do
          {
            v44 = ldiv(v43, v38[v40]);
            v43 = v44.quot;
            v41 += v42[v40--] * v44.rem;
          }

          while (v40 != -1);
        }

        v124->i64[0] = v131;
        v134 = 0;
        operator new();
      }

LABEL_69:
      if (__p)
      {
        v123 = __p;
        operator delete(__p);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      goto LABEL_73;
    }

    if (v126 != 2)
    {
      if (v126 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
        if (*(*a2 + 48))
        {
          v73 = v120;
          v74 = (v121 - v120) >> 2;
          v75 = (v74 - 1);
          if (v74 - 1 >= 0)
          {
            v76 = 0;
            v77 = __p;
            v78 = 0;
            do
            {
              v79 = ldiv(v78, v73[v75]);
              v78 = v79.quot;
              v76 += v77[v75--] * v79.rem;
            }

            while (v75 != -1);
          }

          v132 = 0;
          operator new();
        }

        goto LABEL_69;
      }

      if (v126 != 4)
      {
        goto LABEL_73;
      }

      v50 = v128;
      goto LABEL_95;
    }

    v50 = v128;
    if (v128 - v127 != 4)
    {
LABEL_95:
      v86 = *(v50 - 1);
      v87 = *(v130 - 1);
      v128 = v50 - 4;
      v130 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
      v88 = *(*a2 + 48);
      if (v128 == v127)
      {
        if (v88)
        {
          v101 = 0;
          v102 = vdupq_n_s64(v87 - 1);
          v103 = xmmword_25A99B0D0;
          v119 = v102;
          do
          {
            v104 = v120;
            v105 = (v121 - v120) >> 2;
            v106 = (v105 - 1);
            if (v105 - 1 < 0)
            {
              v111 = 0;
            }

            else
            {
              v107 = 0;
              v108 = __p;
              v109 = v101;
              do
              {
                v110 = ldiv(v109, v104[v106]);
                v109 = v110.quot;
                v107 += v108[v106--] * v110.rem;
              }

              while (v106 != -1);
              v111 = 8 * v107;
              v103 = xmmword_25A99B0D0;
              v102 = v119;
            }

            v112 = v124;
            if (v87)
            {
              v113 = 0;
              v114 = &v124->i64[1];
              do
              {
                v115 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(vdupq_n_s64(v113), v103)));
                if (v115.i8[0])
                {
                  *(v114 - 1) = a4;
                }

                if (v115.i8[4])
                {
                  *v114 = a4;
                }

                v113 += 2;
                v114 += 2;
              }

              while (((v87 + 1) & 0xFFFFFFFFFFFFFFFELL) != v113);
            }

            mlx::core::strided_reduce<long long,long long,mlx::core::MaxReduce>((v125 + v111), v112, v86, v87);
            v124 = (v124 + 8 * v87);
            v101 += v87;
            v103 = xmmword_25A99B0D0;
            v102 = v119;
          }

          while (*(*a2 + 48) > v101);
        }
      }

      else if (v88)
      {
        v89 = xmmword_25A99B0D0;
        v90 = v120;
        v91 = (v121 - v120) >> 2;
        v92 = (v91 - 1);
        if (v91 - 1 >= 0)
        {
          v93 = 0;
          v94 = __p;
          v95 = 0;
          do
          {
            v96 = ldiv(v95, v90[v92]);
            v95 = v96.quot;
            v93 += v94[v92--] * v96.rem;
          }

          while (v92 != -1);
          v89 = xmmword_25A99B0D0;
        }

        if (v87)
        {
          v97 = 0;
          v98 = vdupq_n_s64(v87 - 1);
          v99 = &v124->i64[1];
          do
          {
            v100 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(vdupq_n_s64(v97), v89)));
            if (v100.i8[0])
            {
              *(v99 - 1) = a4;
            }

            if (v100.i8[4])
            {
              *v99 = a4;
            }

            v97 += 2;
            v99 += 2;
          }

          while (((v87 + 1) & 0xFFFFFFFFFFFFFFFELL) != v97);
        }

        v133 = 0;
        operator new();
      }

      goto LABEL_69;
    }

    v80 = *(v128 - 1);
    v81 = *(v130 - 1);
    v128 -= 4;
    v130 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v82) = 0;
      v118 = vdupq_n_s64(v81 - 1);
      do
      {
        if (v81)
        {
          v83 = 0;
          v84 = &v11->i64[1];
          do
          {
            v85 = vmovn_s64(vcgeq_u64(v118, vorrq_s8(vdupq_n_s64(v83), xmmword_25A99B0D0)));
            if (v85.i8[0])
            {
              *(v84 - 1) = a4;
            }

            if (v85.i8[4])
            {
              *v84 = a4;
            }

            v83 += 2;
            v84 += 2;
          }

          while (((v81 + 1) & 0xFFFFFFFFFFFFFFFELL) != v83);
        }

        mlx::core::strided_reduce<long long,long long,mlx::core::MaxReduce>(v9, v11, v80, v81);
        v9 = (v125 + 8 * v81 * v80);
        v11 = (v124 + 8 * v81);
        v124 = v11;
        v125 = v9;
        v82 = v82 + v81;
      }

      while (v82 < *(*a2 + 48));
    }
  }

LABEL_73:
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }
}

void sub_25A81FFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, uint64_t a4)
{
  v135 = *MEMORY[0x277D85DE8];
  v131 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v126);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v124 = v11;
  v125 = v9;
  if (v126 == 1)
  {
    v19 = v128;
    if (v128 - v127 != 4)
    {
      goto LABEL_25;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v127;
      v23 = vdupq_lane_s64(a4, 0);
      do
      {
        v24 = v23;
        v11->i64[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 4)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vbslq_s8(vcgtq_s64(v30, v25), v25, v30);
            v24 = vbslq_s8(vcgtq_s64(v29, v24), v24, v29);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = vbslq_s8(vcgtq_s64(v24, v25), v25, v24);
        v32 = v31.i64[1];
        if (v31.i64[1] >= v31.i64[0])
        {
          v32 = v31.i64[0];
        }

        if (a4 < v32)
        {
          v32 = a4;
        }

        v11->i64[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v35 = *v27;
            v27 = (v27 + 8);
            v34 = v35;
            if (v32 >= v35)
            {
              v32 = v34;
            }

            v11->i64[0] = v32;
            --v33;
          }

          while (v33 > 1);
        }

        ++v21;
        v11 = (v11 + 8);
        v9 = (v9 + 8 * v22);
      }

      while (v21 != v20);
    }

    v124 = v11;
    v125 = v9;
  }

  else
  {
    if (!v126)
    {
      v11->i64[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_lane_s64(a4, 0);
      v14 = v13;
      if (v12 < 4)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vbslq_s8(vcgtq_s64(v16, v14), v14, v16);
          v13 = vbslq_s8(vcgtq_s64(v15, v13), v13, v15);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v45 = vbslq_s8(vcgtq_s64(v13, v14), v14, v13);
      v46 = v45.i64[1];
      if (v45.i64[1] >= v45.i64[0])
      {
        v46 = v45.i64[0];
      }

      if (a4 < v46)
      {
        v46 = a4;
      }

      v11->i64[0] = v46;
      if (v17 >= 1)
      {
        v47 = v17 + 1;
        do
        {
          v49 = *v9;
          v9 = (v9 + 8);
          v48 = v49;
          if (v46 >= v49)
          {
            v46 = v48;
          }

          v11->i64[0] = v46;
          --v47;
        }

        while (v47 > 1);
      }

      goto LABEL_73;
    }

    if ((v126 & 0xFFFFFFFD) == 1)
    {
      v19 = v128;
LABEL_25:
      v36 = *(v19 - 1);
      v128 = v19 - 4;
      v130 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
      v37 = *(*a2 + 48);
      if (v128 == v127)
      {
        v51 = v124;
        if (v37)
        {
          v52 = 0;
          v53 = v120;
          v54 = ((v121 - v120) >> 2) - 1;
          v55 = __p;
          v116 = v125;
          v117 = vdupq_lane_s64(a4, 0);
          do
          {
            if ((v54 & 0x80000000) != 0)
            {
              v60 = 0;
            }

            else
            {
              v56 = 0;
              v57 = v54;
              quot = v52;
              do
              {
                v59 = ldiv(quot, v53[v57]);
                quot = v59.quot;
                v56 += v55[v57--] * v59.rem;
              }

              while (v57 != -1);
              v60 = 8 * v56;
            }

            *v51 = a4;
            v61 = (v116 + v60);
            if (v36 < 4)
            {
              v63 = v117;
              v64 = v117;
              v67 = v36;
            }

            else
            {
              v62 = v36;
              v63 = v117;
              v64 = v117;
              do
              {
                v65 = *v61;
                v66 = *(v61 + 1);
                v61 += 2;
                v63 = vbslq_s8(vcgtq_s64(v66, v63), v63, v66);
                v64 = vbslq_s8(vcgtq_s64(v65, v64), v64, v65);
                v67 = v62 - 4;
                v18 = v62 > 7;
                v62 -= 4;
              }

              while (v18);
            }

            v68 = vbslq_s8(vcgtq_s64(v64, v63), v63, v64);
            v69 = v68.i64[1];
            if (v68.i64[1] >= v68.i64[0])
            {
              v69 = v68.i64[0];
            }

            if (a4 < v69)
            {
              v69 = a4;
            }

            *v51 = v69;
            if (v67 >= 1)
            {
              v70 = v67 + 1;
              do
              {
                v72 = *v61;
                v61 = (v61 + 8);
                v71 = v72;
                if (v69 >= v72)
                {
                  v69 = v71;
                }

                *v51 = v69;
                --v70;
              }

              while (v70 > 1);
            }

            ++v52;
            ++v51;
          }

          while (v52 != v37);
        }

        v124 = v51;
      }

      else if (v37)
      {
        v38 = v120;
        v39 = (v121 - v120) >> 2;
        v40 = (v39 - 1);
        if (v39 - 1 >= 0)
        {
          v41 = 0;
          v42 = __p;
          v43 = 0;
          do
          {
            v44 = ldiv(v43, v38[v40]);
            v43 = v44.quot;
            v41 += v42[v40--] * v44.rem;
          }

          while (v40 != -1);
        }

        v124->i64[0] = v131;
        v134 = 0;
        operator new();
      }

LABEL_69:
      if (__p)
      {
        v123 = __p;
        operator delete(__p);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      goto LABEL_73;
    }

    if (v126 != 2)
    {
      if (v126 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
        if (*(*a2 + 48))
        {
          v73 = v120;
          v74 = (v121 - v120) >> 2;
          v75 = (v74 - 1);
          if (v74 - 1 >= 0)
          {
            v76 = 0;
            v77 = __p;
            v78 = 0;
            do
            {
              v79 = ldiv(v78, v73[v75]);
              v78 = v79.quot;
              v76 += v77[v75--] * v79.rem;
            }

            while (v75 != -1);
          }

          v132 = 0;
          operator new();
        }

        goto LABEL_69;
      }

      if (v126 != 4)
      {
        goto LABEL_73;
      }

      v50 = v128;
      goto LABEL_95;
    }

    v50 = v128;
    if (v128 - v127 != 4)
    {
LABEL_95:
      v86 = *(v50 - 1);
      v87 = *(v130 - 1);
      v128 = v50 - 4;
      v130 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v120);
      v88 = *(*a2 + 48);
      if (v128 == v127)
      {
        if (v88)
        {
          v101 = 0;
          v102 = vdupq_n_s64(v87 - 1);
          v103 = xmmword_25A99B0D0;
          v119 = v102;
          do
          {
            v104 = v120;
            v105 = (v121 - v120) >> 2;
            v106 = (v105 - 1);
            if (v105 - 1 < 0)
            {
              v111 = 0;
            }

            else
            {
              v107 = 0;
              v108 = __p;
              v109 = v101;
              do
              {
                v110 = ldiv(v109, v104[v106]);
                v109 = v110.quot;
                v107 += v108[v106--] * v110.rem;
              }

              while (v106 != -1);
              v111 = 8 * v107;
              v103 = xmmword_25A99B0D0;
              v102 = v119;
            }

            v112 = v124;
            if (v87)
            {
              v113 = 0;
              v114 = &v124->i64[1];
              do
              {
                v115 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(vdupq_n_s64(v113), v103)));
                if (v115.i8[0])
                {
                  *(v114 - 1) = a4;
                }

                if (v115.i8[4])
                {
                  *v114 = a4;
                }

                v113 += 2;
                v114 += 2;
              }

              while (((v87 + 1) & 0xFFFFFFFFFFFFFFFELL) != v113);
            }

            mlx::core::strided_reduce<long long,long long,mlx::core::MinReduce>((v125 + v111), v112, v86, v87);
            v124 = (v124 + 8 * v87);
            v101 += v87;
            v103 = xmmword_25A99B0D0;
            v102 = v119;
          }

          while (*(*a2 + 48) > v101);
        }
      }

      else if (v88)
      {
        v89 = xmmword_25A99B0D0;
        v90 = v120;
        v91 = (v121 - v120) >> 2;
        v92 = (v91 - 1);
        if (v91 - 1 >= 0)
        {
          v93 = 0;
          v94 = __p;
          v95 = 0;
          do
          {
            v96 = ldiv(v95, v90[v92]);
            v95 = v96.quot;
            v93 += v94[v92--] * v96.rem;
          }

          while (v92 != -1);
          v89 = xmmword_25A99B0D0;
        }

        if (v87)
        {
          v97 = 0;
          v98 = vdupq_n_s64(v87 - 1);
          v99 = &v124->i64[1];
          do
          {
            v100 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(vdupq_n_s64(v97), v89)));
            if (v100.i8[0])
            {
              *(v99 - 1) = a4;
            }

            if (v100.i8[4])
            {
              *v99 = a4;
            }

            v97 += 2;
            v99 += 2;
          }

          while (((v87 + 1) & 0xFFFFFFFFFFFFFFFELL) != v97);
        }

        v133 = 0;
        operator new();
      }

      goto LABEL_69;
    }

    v80 = *(v128 - 1);
    v81 = *(v130 - 1);
    v128 -= 4;
    v130 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v82) = 0;
      v118 = vdupq_n_s64(v81 - 1);
      do
      {
        if (v81)
        {
          v83 = 0;
          v84 = &v11->i64[1];
          do
          {
            v85 = vmovn_s64(vcgeq_u64(v118, vorrq_s8(vdupq_n_s64(v83), xmmword_25A99B0D0)));
            if (v85.i8[0])
            {
              *(v84 - 1) = a4;
            }

            if (v85.i8[4])
            {
              *v84 = a4;
            }

            v83 += 2;
            v84 += 2;
          }

          while (((v81 + 1) & 0xFFFFFFFFFFFFFFFELL) != v83);
        }

        mlx::core::strided_reduce<long long,long long,mlx::core::MinReduce>(v9, v11, v80, v81);
        v9 = (v125 + 8 * v81 * v80);
        v11 = (v124 + 8 * v81);
        v124 = v11;
        v125 = v9;
        v82 = v82 + v81;
      }

      while (v82 < *(*a2 + 48));
    }
  }

LABEL_73:
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }
}

void sub_25A8209A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

_OWORD *mlx::core::strided_reduce<long long,long long,mlx::core::MaxReduce>(_OWORD *result, int64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vbslq_s8(vcgtq_s64(v8, v5[1]), v8, v5[1]);
          *v5 = vbslq_s8(vcgtq_s64(v7, *v5), v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 8);
        v10 = v11;
        if (v5->i64[0] > v11)
        {
          v10 = v5->i64[0];
        }

        v5->i64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07A98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vbslq_s8(vcgtq_s64(v9, v7), v9, v7);
      v6 = vbslq_s8(vcgtq_s64(v8, v6), v8, v6);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vbslq_s8(vcgtq_s64(v6, v7), v6, v7);
  v14 = v13.i64[1];
  if (v13.i64[1] <= v13.i64[0])
  {
    v14 = v13.i64[0];
  }

  if (v12 <= v14)
  {
    v12 = v14;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v15 = v10 + 1;
    do
    {
      v17 = *v2;
      v2 = (v2 + 8);
      v16 = v17;
      if (v12 <= v17)
      {
        v12 = v16;
      }

      *v3 = v12;
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07B18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07B98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 8 * **(result + 24) + 8 * *a2);
  if (*v2 > v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<long long,long long,mlx::core::MinReduce>(_OWORD *result, int64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vbslq_s8(vcgtq_s64(v8, v5[1]), v5[1], v8);
          *v5 = vbslq_s8(vcgtq_s64(v7, *v5), *v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 8);
        v10 = v11;
        if (v5->i64[0] < v11)
        {
          v10 = v5->i64[0];
        }

        v5->i64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07C18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vbslq_s8(vcgtq_s64(v9, v7), v7, v9);
      v6 = vbslq_s8(vcgtq_s64(v8, v6), v6, v8);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vbslq_s8(vcgtq_s64(v6, v7), v7, v6);
  v14 = v13.i64[1];
  if (v13.i64[1] >= v13.i64[0])
  {
    v14 = v13.i64[0];
  }

  if (v12 >= v14)
  {
    v12 = v14;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v15 = v10 + 1;
    do
    {
      v17 = *v2;
      v2 = (v2 + 8);
      v16 = v17;
      if (v12 >= v17)
      {
        v12 = v16;
      }

      *v3 = v12;
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07C98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07D18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 8 * **(result + 24) + 8 * *a2);
  if (*v2 < v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, float a4)
{
  v115 = *MEMORY[0x277D85DE8];
  v111 = LOWORD(a4);
  mlx::core::get_reduction_plan(a1, a3, &v106);
  v9 = *a1;
  v10 = (*a1)[19];
  v11 = *a2;
  v12 = *(*a2 + 152);
  v104 = v12;
  v105 = v10;
  if (v106 == 1)
  {
    v13 = v108;
    if (v108 - v107 != 4)
    {
      goto LABEL_11;
    }

    if (*(v11 + 48))
    {
      v14 = 0;
      v15 = *v107;
      do
      {
        *v12 = *&a4;
        *v8.i32 = a4;
        mlx::core::contiguous_reduce<half,half,mlx::core::MaxReduce>(v10, v12, v15, v8);
        ++v14;
        v12 = v104 + 1;
        v10 = (v105 + 2 * v15);
        ++v104;
        v105 = v10;
      }

      while (*(*a2 + 48) > v14);
    }
  }

  else
  {
    if (!v106)
    {
      *v12 = *&a4;
      *v8.i32 = a4;
      mlx::core::contiguous_reduce<half,half,mlx::core::MaxReduce>(v10, v12, *(v9 + 12), v8);
      goto LABEL_108;
    }

    if ((v106 & 0xFFFFFFFD) == 1)
    {
      v13 = v108;
LABEL_11:
      v16 = *(v13 - 1);
      v108 = v13 - 4;
      v110 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v100);
      v18 = *(*a2 + 48);
      if (v108 == v107)
      {
        if (v18)
        {
          v27 = 0;
          do
          {
            v28 = v100;
            v29 = (v101 - v100) >> 2;
            v30 = (v29 - 1);
            if (v29 - 1 < 0)
            {
              v36 = 0;
              v34 = a2;
            }

            else
            {
              v31 = 0;
              v32 = __p;
              quot = v27;
              v34 = a2;
              do
              {
                v35 = ldiv(quot, v28[v30]);
                quot = v35.quot;
                v31 += v32[v30--] * v35.rem;
              }

              while (v30 != -1);
              v36 = 2 * v31;
            }

            v37 = v104;
            *v104 = *&a4;
            *v17.i32 = a4;
            mlx::core::contiguous_reduce<half,half,mlx::core::MaxReduce>((v105 + v36), v37, v16, v17);
            ++v27;
            ++v104;
          }

          while (*(*v34 + 48) > v27);
        }
      }

      else if (v18)
      {
        v19 = v100;
        v20 = (v101 - v100) >> 2;
        v21 = (v20 - 1);
        if (v20 - 1 >= 0)
        {
          v22 = 0;
          v23 = __p;
          v24 = 0;
          do
          {
            v25 = ldiv(v24, v19[v21]);
            v24 = v25.quot;
            v22 += v23[v21--] * v25.rem;
          }

          while (v21 != -1);
        }

        *v104 = v111;
        v114 = 0;
        operator new();
      }

LABEL_104:
      if (__p)
      {
        v103 = __p;
        operator delete(__p);
      }

      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      goto LABEL_108;
    }

    if (v106 != 2)
    {
      if (v106 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v100);
        if (*(*a2 + 48))
        {
          v38 = v100;
          v39 = (v101 - v100) >> 2;
          v40 = (v39 - 1);
          if (v39 - 1 >= 0)
          {
            v41 = 0;
            v42 = __p;
            v43 = 0;
            do
            {
              v44 = ldiv(v43, v38[v40]);
              v43 = v44.quot;
              v41 += v42[v40--] * v44.rem;
            }

            while (v40 != -1);
          }

          v112 = 0;
          operator new();
        }

        goto LABEL_104;
      }

      if (v106 != 4)
      {
        goto LABEL_108;
      }

      v26 = v108;
      goto LABEL_57;
    }

    v26 = v108;
    if (v108 - v107 != 4)
    {
LABEL_57:
      v55 = *(v26 - 1);
      v56 = *(v110 - 1);
      v108 = v26 - 4;
      v110 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v100);
      v57 = *(*a2 + 48);
      if (v108 == v107)
      {
        if (v57)
        {
          v75 = 0;
          v76 = vdupq_n_s64(v56 - 1);
          v77 = xmmword_25A9C2E70;
          v78 = xmmword_25A9C2E80;
          v79 = xmmword_25A99B0C0;
          v80 = xmmword_25A99B0D0;
          v98 = v76;
          do
          {
            v81 = v100;
            v82 = (v101 - v100) >> 2;
            v83 = (v82 - 1);
            if (v82 - 1 < 0)
            {
              v89 = 0;
              v87 = a2;
            }

            else
            {
              v84 = 0;
              v85 = __p;
              v86 = v75;
              v87 = a2;
              do
              {
                v88 = ldiv(v86, v81[v83]);
                v86 = v88.quot;
                v84 += v85[v83--] * v88.rem;
              }

              while (v83 != -1);
              v89 = 2 * v84;
              v77 = xmmword_25A9C2E70;
              v76 = v98;
              v79 = xmmword_25A99B0C0;
              v78 = xmmword_25A9C2E80;
              v80 = xmmword_25A99B0D0;
            }

            v90 = v104;
            if (v56)
            {
              v91 = 0;
              v92 = v104 + 4;
              do
              {
                v93 = vdupq_n_s64(v91);
                v94 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v80)));
                if (vuzp1_s8(vuzp1_s16(v94, *v93.i8), *v93.i8).u8[0])
                {
                  *(v92 - 4) = LOWORD(a4);
                }

                if (vuzp1_s8(vuzp1_s16(v94, *&v93), *&v93).i8[1])
                {
                  *(v92 - 3) = LOWORD(a4);
                }

                if (vuzp1_s8(vuzp1_s16(*&v93, vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v79)))), *&v93).i8[2])
                {
                  *(v92 - 2) = LOWORD(a4);
                  *(v92 - 1) = LOWORD(a4);
                }

                v95 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v78)));
                if (vuzp1_s8(*&v93, vuzp1_s16(v95, *&v93)).i32[1])
                {
                  *v92 = LOWORD(a4);
                }

                if (vuzp1_s8(*&v93, vuzp1_s16(v95, *&v93)).i8[5])
                {
                  v92[1] = LOWORD(a4);
                }

                v96 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v77)));
                if (vuzp1_s8(*&v96, vuzp1_s16(v96, v96)).i8[6])
                {
                  v92[2] = LOWORD(a4);
                }

                v97 = vuzp1_s16(v96, v96);
                if (vuzp1_s8(v97, v97).i8[7])
                {
                  v92[3] = LOWORD(a4);
                }

                v91 += 8;
                v92 += 8;
              }

              while (((v56 + 7) & 0xFFFFFFFFFFFFFFF8) != v91);
            }

            mlx::core::strided_reduce<half,half,mlx::core::MaxReduce>((v105 + v89), v90, v55, v56);
            v104 += v56;
            v75 += v56;
            v77 = xmmword_25A9C2E70;
            v76 = v98;
            v79 = xmmword_25A99B0C0;
            v78 = xmmword_25A9C2E80;
            v80 = xmmword_25A99B0D0;
          }

          while (*(*v87 + 48) > v75);
        }
      }

      else if (v57)
      {
        v58 = xmmword_25A9C2E70;
        v59 = xmmword_25A9C2E80;
        v60 = xmmword_25A99B0C0;
        v61 = xmmword_25A99B0D0;
        v62 = v100;
        v63 = (v101 - v100) >> 2;
        v64 = (v63 - 1);
        if (v63 - 1 >= 0)
        {
          v65 = 0;
          v66 = __p;
          v67 = 0;
          do
          {
            v68 = ldiv(v67, v62[v64]);
            v67 = v68.quot;
            v65 += v66[v64--] * v68.rem;
          }

          while (v64 != -1);
          v59 = xmmword_25A9C2E80;
          v58 = xmmword_25A9C2E70;
          v61 = xmmword_25A99B0D0;
          v60 = xmmword_25A99B0C0;
        }

        if (v56)
        {
          v69 = 0;
          v70 = vdupq_n_s64(v56 - 1);
          v71 = v104 + 4;
          do
          {
            v72 = vdupq_n_s64(v69);
            v73 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v61)));
            if (vuzp1_s8(vuzp1_s16(v73, *v70.i8), *v70.i8).u8[0])
            {
              *(v71 - 4) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(v73, *&v70), *&v70).i8[1])
            {
              *(v71 - 3) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(*&v70, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v60)))), *&v70).i8[2])
            {
              *(v71 - 2) = LOWORD(a4);
              *(v71 - 1) = LOWORD(a4);
            }

            v74 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v59)));
            if (vuzp1_s8(*&v70, vuzp1_s16(v74, *&v70)).i32[1])
            {
              *v71 = LOWORD(a4);
            }

            if (vuzp1_s8(*&v70, vuzp1_s16(v74, *&v70)).i8[5])
            {
              v71[1] = LOWORD(a4);
            }

            if (vuzp1_s8(*&v70, vuzp1_s16(*&v70, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v58))))).i8[6])
            {
              v71[2] = LOWORD(a4);
              v71[3] = LOWORD(a4);
            }

            v69 += 8;
            v71 += 8;
          }

          while (((v56 + 7) & 0xFFFFFFFFFFFFFFF8) != v69);
        }

        v113 = 0;
        operator new();
      }

      goto LABEL_104;
    }

    v45 = *(v108 - 1);
    v46 = *(v110 - 1);
    v108 -= 4;
    v110 -= 8;
    if (*(v11 + 48))
    {
      LODWORD(v47) = 0;
      v99 = vdupq_n_s64(v46 - 1);
      do
      {
        if (v46)
        {
          v48 = 0;
          v49 = v12 + 4;
          do
          {
            v50 = vdupq_n_s64(v48);
            v51 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v50, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v51, *v50.i8), *v50.i8).u8[0])
            {
              *(v49 - 4) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(v51, *&v50), *&v50).i8[1])
            {
              *(v49 - 3) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v99, vorrq_s8(v50, xmmword_25A99B0C0)))), *&v50).i8[2])
            {
              *(v49 - 2) = LOWORD(a4);
              *(v49 - 1) = LOWORD(a4);
            }

            v52 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v50, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v50, vuzp1_s16(v52, *&v50)).i32[1])
            {
              *v49 = LOWORD(a4);
            }

            if (vuzp1_s8(*&v50, vuzp1_s16(v52, *&v50)).i8[5])
            {
              v49[1] = LOWORD(a4);
            }

            v53 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v50, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v53, vuzp1_s16(v53, v53)).i8[6])
            {
              v49[2] = LOWORD(a4);
            }

            v54 = vuzp1_s16(v53, v53);
            if (vuzp1_s8(v54, v54).i8[7])
            {
              v49[3] = LOWORD(a4);
            }

            v48 += 8;
            v49 += 8;
          }

          while (((v46 + 7) & 0xFFFFFFFFFFFFFFF8) != v48);
        }

        mlx::core::strided_reduce<half,half,mlx::core::MaxReduce>(v10, v12, v45, v46);
        v10 = (v105 + 2 * v46 * v45);
        v12 = &v104[v46];
        v104 = v12;
        v105 = v10;
        v47 = v47 + v46;
      }

      while (v47 < *(*a2 + 48));
    }
  }

LABEL_108:
  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }
}