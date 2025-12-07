uint64_t std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05118;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05198;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int16x8_t *mlx::core::contiguous_reduce<short,int,mlx::core::ProdReduce>(int16x8_t *result, unsigned __int32 *a2, unsigned int a3, unsigned int a4)
{
  v4 = vdupq_n_s32(a4);
  v5 = v4;
  if (a3 < 8)
  {
    v7 = a3;
  }

  else
  {
    do
    {
      v6 = *result++;
      v5 = vmulq_s32(v5, vmovl_high_s16(v6));
      v4 = vmulq_s32(v4, vmovl_s16(*v6.i8));
      v7 = a3 - 8;
      v8 = a3 > 0xF;
      a3 -= 8;
    }

    while (v8);
  }

  v9 = vmulq_s32(v5, v4);
  *v9.i8 = vmul_s32(*&vextq_s8(v9, v9, 8uLL), *v9.i8);
  v10 = vmul_lane_s32(*v9.i8, *v9.i8, 1).u32[0] * *a2;
  *a2 = v10;
  if (v7 >= 1)
  {
    v11 = v7 + 1;
    do
    {
      v12 = result->i16[0];
      result = (result + 2);
      v10 *= v12;
      --v11;
    }

    while (v11 > 1);
    *a2 = v10;
  }

  return result;
}

int16x8_t *mlx::core::strided_reduce<short,int,mlx::core::ProdReduce>(int16x8_t *result, int32x4_t *a2, int a3, unint64_t a4)
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
          v7 = *result++;
          v8 = vmulq_s32(v5[1], vmovl_high_s16(v7));
          *v5 = vmulq_s32(*v5, vmovl_s16(*v7.i8));
          v5[1] = v8;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v9 = result->i16[0];
        result = (result + 2);
        v5->i32[0] *= v9;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05218;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05318;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, __int32 a4)
{
  v136 = *MEMORY[0x277D85DE8];
  v132 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v127);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v125 = v11;
  v126 = v9;
  if (v127 == 1)
  {
    v19 = v129;
    if (v129 - v128 != 4)
    {
      goto LABEL_19;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v128;
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
            v25 = vaddq_s32(v30, v25);
            v24 = vaddq_s32(v29, v24);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vaddvq_s32(vaddq_s32(v24, v25)) + a4;
        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v33 = *v27;
            v27 = (v27 + 4);
            v31 += v33;
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

    v125 = v11;
    v126 = v9;
  }

  else
  {
    if (!v127)
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
          v14 = vaddq_s32(v16, v14);
          v13 = vaddq_s32(v15, v13);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v43 = vaddvq_s32(vaddq_s32(v13, v14)) + a4;
      v11->i32[0] = v43;
      if (v17 >= 1)
      {
        v44 = v17 + 1;
        do
        {
          v45 = *v9;
          v9 = (v9 + 4);
          v43 += v45;
          v11->i32[0] = v43;
          --v44;
        }

        while (v44 > 1);
      }

      goto LABEL_55;
    }

    if ((v127 & 0xFFFFFFFD) == 1)
    {
      v19 = v129;
LABEL_19:
      v34 = *(v19 - 1);
      v129 = v19 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v35 = *(*a2 + 48);
      if (v129 == v128)
      {
        v47 = v125;
        if (v35)
        {
          v48 = 0;
          v49 = v121;
          v50 = ((v122 - v121) >> 2) - 1;
          v51 = __p;
          v117 = v126;
          v118 = vdupq_n_s32(a4);
          do
          {
            if ((v50 & 0x80000000) != 0)
            {
              v56 = 0;
            }

            else
            {
              v52 = 0;
              v53 = v50;
              quot = v48;
              do
              {
                v55 = ldiv(quot, v49[v53]);
                quot = v55.quot;
                v52 += v51[v53--] * v55.rem;
              }

              while (v53 != -1);
              v56 = 4 * v52;
            }

            v47->i32[0] = a4;
            v57 = (v117 + v56);
            if (v34 < 8)
            {
              v59 = v118;
              v60 = v118;
              v63 = v34;
            }

            else
            {
              v58 = v34;
              v59 = v118;
              v60 = v118;
              do
              {
                v61 = *v57;
                v62 = *(v57 + 1);
                v57 += 2;
                v59 = vaddq_s32(v62, v59);
                v60 = vaddq_s32(v61, v60);
                v63 = v58 - 8;
                v18 = v58 > 0xF;
                v58 -= 8;
              }

              while (v18);
            }

            v64 = vaddvq_s32(vaddq_s32(v60, v59)) + a4;
            v47->i32[0] = v64;
            if (v63 >= 1)
            {
              v65 = v63 + 1;
              do
              {
                v66 = *v57;
                v57 = (v57 + 4);
                v64 += v66;
                v47->i32[0] = v64;
                --v65;
              }

              while (v65 > 1);
            }

            ++v48;
            v47 = (v47 + 4);
          }

          while (v48 != v35);
        }

        v125 = v47;
      }

      else if (v35)
      {
        v36 = v121;
        v37 = (v122 - v121) >> 2;
        v38 = (v37 - 1);
        if (v37 - 1 >= 0)
        {
          v39 = 0;
          v40 = __p;
          v41 = 0;
          do
          {
            v42 = ldiv(v41, v36[v38]);
            v41 = v42.quot;
            v39 += v40[v38--] * v42.rem;
          }

          while (v38 != -1);
        }

        v125->i32[0] = v132;
        v135 = 0;
        operator new();
      }

LABEL_51:
      if (__p)
      {
        v124 = __p;
        operator delete(__p);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      goto LABEL_55;
    }

    if (v127 != 2)
    {
      if (v127 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
        if (*(*a2 + 48))
        {
          v67 = v121;
          v68 = (v122 - v121) >> 2;
          v69 = (v68 - 1);
          if (v68 - 1 >= 0)
          {
            v70 = 0;
            v71 = __p;
            v72 = 0;
            do
            {
              v73 = ldiv(v72, v67[v69]);
              v72 = v73.quot;
              v70 += v71[v69--] * v73.rem;
            }

            while (v69 != -1);
          }

          v133 = 0;
          operator new();
        }

        goto LABEL_51;
      }

      if (v127 != 4)
      {
        goto LABEL_55;
      }

      v46 = v129;
      goto LABEL_79;
    }

    v46 = v129;
    if (v129 - v128 != 4)
    {
LABEL_79:
      v82 = *(v46 - 1);
      v83 = *(v131 - 1);
      v129 = v46 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v84 = *(*a2 + 48);
      if (v129 == v128)
      {
        if (v84)
        {
          v99 = 0;
          v100 = vdupq_n_s64(v83 - 1);
          v101 = xmmword_25A99B0C0;
          v102 = xmmword_25A99B0D0;
          v120 = v100;
          do
          {
            v103 = v121;
            v104 = (v122 - v121) >> 2;
            v105 = (v104 - 1);
            if (v104 - 1 < 0)
            {
              v110 = 0;
            }

            else
            {
              v106 = 0;
              v107 = __p;
              v108 = v99;
              do
              {
                v109 = ldiv(v108, v103[v105]);
                v108 = v109.quot;
                v106 += v107[v105--] * v109.rem;
              }

              while (v105 != -1);
              v110 = 4 * v106;
              v101 = xmmword_25A99B0C0;
              v100 = v120;
              v102 = xmmword_25A99B0D0;
            }

            v111 = v125;
            if (v83)
            {
              v112 = 0;
              v113 = &v125->i32[2];
              do
              {
                v114 = vdupq_n_s64(v112);
                v115 = vmovn_s64(vcgeq_u64(v100, vorrq_s8(v114, v102)));
                if (vuzp1_s16(v115, *v114.i8).u8[0])
                {
                  *(v113 - 2) = a4;
                }

                if (vuzp1_s16(v115, *&v114).i8[2])
                {
                  *(v113 - 1) = a4;
                }

                v116 = vmovn_s64(vcgeq_u64(v100, vorrq_s8(v114, v101)));
                if (vuzp1_s16(v116, v116).i32[1])
                {
                  *v113 = a4;
                  v113[1] = a4;
                }

                v112 += 4;
                v113 += 4;
              }

              while (((v83 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v112);
            }

            mlx::core::strided_reduce<int,int,mlx::core::SumReduce>((v126 + v110), v111, v82, v83);
            v125 = (v125 + 4 * v83);
            v99 += v83;
            v101 = xmmword_25A99B0C0;
            v100 = v120;
            v102 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v99);
        }
      }

      else if (v84)
      {
        v85 = xmmword_25A99B0C0;
        v86 = xmmword_25A99B0D0;
        v87 = v121;
        v88 = (v122 - v121) >> 2;
        v89 = (v88 - 1);
        if (v88 - 1 >= 0)
        {
          v90 = 0;
          v91 = __p;
          v92 = 0;
          do
          {
            v93 = ldiv(v92, v87[v89]);
            v92 = v93.quot;
            v90 += v91[v89--] * v93.rem;
          }

          while (v89 != -1);
          v86 = xmmword_25A99B0D0;
          v85 = xmmword_25A99B0C0;
        }

        if (v83)
        {
          v94 = 0;
          v95 = vdupq_n_s64(v83 - 1);
          v96 = &v125->i32[2];
          do
          {
            v97 = vdupq_n_s64(v94);
            v98 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, v86)));
            if (vuzp1_s16(v98, *v95.i8).u8[0])
            {
              *(v96 - 2) = a4;
            }

            if (vuzp1_s16(v98, *&v95).i8[2])
            {
              *(v96 - 1) = a4;
            }

            if (vuzp1_s16(*&v95, vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, v85)))).i32[1])
            {
              *v96 = a4;
              v96[1] = a4;
            }

            v94 += 4;
            v96 += 4;
          }

          while (((v83 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v94);
        }

        v134 = 0;
        operator new();
      }

      goto LABEL_51;
    }

    v74 = *(v129 - 1);
    v75 = *(v131 - 1);
    v129 -= 4;
    v131 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v76) = 0;
      v119 = vdupq_n_s64(v75 - 1);
      do
      {
        if (v75)
        {
          v77 = 0;
          v78 = &v11->i32[2];
          do
          {
            v79 = vdupq_n_s64(v77);
            v80 = vmovn_s64(vcgeq_u64(v119, vorrq_s8(v79, xmmword_25A99B0D0)));
            if (vuzp1_s16(v80, *v79.i8).u8[0])
            {
              *(v78 - 2) = a4;
            }

            if (vuzp1_s16(v80, *&v79).i8[2])
            {
              *(v78 - 1) = a4;
            }

            v81 = vmovn_s64(vcgeq_u64(v119, vorrq_s8(v79, xmmword_25A99B0C0)));
            if (vuzp1_s16(v81, v81).i32[1])
            {
              *v78 = a4;
              v78[1] = a4;
            }

            v77 += 4;
            v78 += 4;
          }

          while (((v75 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v77);
        }

        mlx::core::strided_reduce<int,int,mlx::core::SumReduce>(v9, v11, v74, v75);
        v9 = (v126 + 4 * v75 * v74);
        v11 = (v125 + 4 * v75);
        v125 = v11;
        v126 = v9;
        v76 = v76 + v75;
      }

      while (v76 < *(*a2 + 48));
    }
  }

LABEL_55:
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }
}

void sub_25A807C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, __int32 a4)
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
      goto LABEL_19;
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
            v25 = vmulq_s32(v30, v25);
            v24 = vmulq_s32(v29, v24);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vmulq_s32(v25, v24);
        *v31.i8 = vmul_s32(*&vextq_s8(v31, v31, 8uLL), *v31.i8);
        v32 = v31.i32[0] * a4 * v31.i32[1];
        v11->i32[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 4);
            v32 *= v34;
            v11->i32[0] = v32;
            --v33;
          }

          while (v33 > 1);
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
          v14 = vmulq_s32(v16, v14);
          v13 = vmulq_s32(v15, v13);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v44 = vmulq_s32(v14, v13);
      *v44.i8 = vmul_s32(*&vextq_s8(v44, v44, 8uLL), *v44.i8);
      v45 = v44.i32[0] * a4 * v44.i32[1];
      v11->i32[0] = v45;
      if (v17 >= 1)
      {
        v46 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 4);
          v45 *= v47;
          v11->i32[0] = v45;
          --v46;
        }

        while (v46 > 1);
      }

      goto LABEL_55;
    }

    if ((v130 & 0xFFFFFFFD) == 1)
    {
      v19 = v132;
LABEL_19:
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

            v49->i32[0] = a4;
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
                v61 = vmulq_s32(v64, v61);
                v62 = vmulq_s32(v63, v62);
                v65 = v60 - 8;
                v18 = v60 > 0xF;
                v60 -= 8;
              }

              while (v18);
            }

            v66 = vmulq_s32(v61, v62);
            *v66.i8 = vmul_s32(*&vextq_s8(v66, v66, 8uLL), *v66.i8);
            v67 = v66.i32[0] * a4 * v66.i32[1];
            v49->i32[0] = v67;
            if (v65 >= 1)
            {
              v68 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v67 *= v69;
                v49->i32[0] = v67;
                --v68;
              }

              while (v68 > 1);
            }

            ++v50;
            v49 = (v49 + 4);
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

LABEL_51:
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

      goto LABEL_55;
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

        goto LABEL_51;
      }

      if (v130 != 4)
      {
        goto LABEL_55;
      }

      v48 = v132;
      goto LABEL_79;
    }

    v48 = v132;
    if (v132 - v131 != 4)
    {
LABEL_79:
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

            mlx::core::strided_reduce<int,int,mlx::core::ProdReduce>((v129 + v113), v114, v85, v86);
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

      goto LABEL_51;
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

        mlx::core::strided_reduce<int,int,mlx::core::ProdReduce>(v9, v11, v77, v78);
        v9 = (v129 + 4 * v78 * v77);
        v11 = (v128 + 4 * v78);
        v128 = v11;
        v129 = v9;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_55:
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

void sub_25A8086F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

_OWORD *mlx::core::strided_reduce<int,int,mlx::core::SumReduce>(_OWORD *result, int32x4_t *a2, int a3, unint64_t a4)
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
          v9 = vaddq_s32(v8, v5[1]);
          *v5 = vaddq_s32(v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v10 = *result;
        result = (result + 4);
        v5->i32[0] += v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05398;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
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
      v7 = vaddq_s32(v9, v7);
      v6 = vaddq_s32(v8, v6);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = vaddvq_s32(vaddq_s32(v6, v7)) + *v3;
  *v3 = v12;
  if (v10 >= 1)
  {
    v13 = v10 + 1;
    do
    {
      v14 = *v2;
      v2 = (v2 + 4);
      v12 += v14;
      *v3 = v12;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05418;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05498;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<int,int,mlx::core::ProdReduce>(_OWORD *result, int32x4_t *a2, int a3, unint64_t a4)
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
          v9 = vmulq_s32(v8, v5[1]);
          *v5 = vmulq_s32(v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v10 = *result;
        result = (result + 4);
        v5->i32[0] *= v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05518;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
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
      v7 = vmulq_s32(v9, v7);
      v6 = vmulq_s32(v8, v6);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = vmulq_s32(v7, v6);
  *v12.i8 = vmul_s32(*&vextq_s8(v12, v12, 8uLL), *v12.i8);
  v13 = v12.i32[0] * *v3 * v12.i32[1];
  *v3 = v13;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v15 = *v2;
      v2 = (v2 + 4);
      v13 *= v15;
      *v3 = v13;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05598;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, uint64_t a4)
{
  v132 = *MEMORY[0x277D85DE8];
  v128 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v123);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v121 = v11;
  v122 = v9;
  if (v123 == 1)
  {
    v19 = v125;
    if (v125 - v124 != 4)
    {
      goto LABEL_19;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v124;
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
            v25 = vaddq_s64(v30, v25);
            v24 = vaddq_s64(v29, v24);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = vaddq_s64(v24, v25);
        v32 = v31.i64[1] + a4 + v31.i64[0];
        v11->i64[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 8);
            v32 += v34;
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

    v121 = v11;
    v122 = v9;
  }

  else
  {
    if (!v123)
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
          v14 = vaddq_s64(v16, v14);
          v13 = vaddq_s64(v15, v13);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v44 = vaddq_s64(v13, v14);
      v45 = v44.i64[1] + a4 + v44.i64[0];
      v11->i64[0] = v45;
      if (v17 >= 1)
      {
        v46 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 8);
          v45 += v47;
          v11->i64[0] = v45;
          --v46;
        }

        while (v46 > 1);
      }

      goto LABEL_55;
    }

    if ((v123 & 0xFFFFFFFD) == 1)
    {
      v19 = v125;
LABEL_19:
      v35 = *(v19 - 1);
      v125 = v19 - 4;
      v127 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v117);
      v36 = *(*a2 + 48);
      if (v125 == v124)
      {
        v49 = v121;
        if (v36)
        {
          v50 = 0;
          v51 = v117;
          v52 = ((v118 - v117) >> 2) - 1;
          v53 = __p;
          v113 = v122;
          v114 = vdupq_lane_s64(a4, 0);
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
              v58 = 8 * v54;
            }

            *v49 = a4;
            v59 = (v113 + v58);
            if (v35 < 4)
            {
              v61 = v114;
              v62 = v114;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v114;
              v62 = v114;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vaddq_s64(v64, v61);
                v62 = vaddq_s64(v63, v62);
                v65 = v60 - 4;
                v18 = v60 > 7;
                v60 -= 4;
              }

              while (v18);
            }

            v66 = vaddq_s64(v62, v61);
            v67 = v66.i64[1] + a4 + v66.i64[0];
            *v49 = v67;
            if (v65 >= 1)
            {
              v68 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 8);
                v67 += v69;
                *v49 = v67;
                --v68;
              }

              while (v68 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v121 = v49;
      }

      else if (v36)
      {
        v37 = v117;
        v38 = (v118 - v117) >> 2;
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

        v121->i64[0] = v128;
        v131 = 0;
        operator new();
      }

LABEL_51:
      if (__p)
      {
        v120 = __p;
        operator delete(__p);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      goto LABEL_55;
    }

    if (v123 != 2)
    {
      if (v123 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v117);
        if (*(*a2 + 48))
        {
          v70 = v117;
          v71 = (v118 - v117) >> 2;
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

          v129 = 0;
          operator new();
        }

        goto LABEL_51;
      }

      if (v123 != 4)
      {
        goto LABEL_55;
      }

      v48 = v125;
      goto LABEL_77;
    }

    v48 = v125;
    if (v125 - v124 != 4)
    {
LABEL_77:
      v83 = *(v48 - 1);
      v84 = *(v127 - 1);
      v125 = v48 - 4;
      v127 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v117);
      v85 = *(*a2 + 48);
      if (v125 == v124)
      {
        if (v85)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v84 - 1);
          v100 = xmmword_25A99B0D0;
          v116 = v99;
          do
          {
            v101 = v117;
            v102 = (v118 - v117) >> 2;
            v103 = (v102 - 1);
            if (v102 - 1 < 0)
            {
              v108 = 0;
            }

            else
            {
              v104 = 0;
              v105 = __p;
              v106 = v98;
              do
              {
                v107 = ldiv(v106, v101[v103]);
                v106 = v107.quot;
                v104 += v105[v103--] * v107.rem;
              }

              while (v103 != -1);
              v108 = 8 * v104;
              v100 = xmmword_25A99B0D0;
              v99 = v116;
            }

            v109 = v121;
            if (v84)
            {
              v110 = 0;
              v111 = &v121->i64[1];
              do
              {
                v112 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(vdupq_n_s64(v110), v100)));
                if (v112.i8[0])
                {
                  *(v111 - 1) = a4;
                }

                if (v112.i8[4])
                {
                  *v111 = a4;
                }

                v110 += 2;
                v111 += 2;
              }

              while (((v84 + 1) & 0xFFFFFFFFFFFFFFFELL) != v110);
            }

            mlx::core::strided_reduce<long long,long long,mlx::core::SumReduce>((v122 + v108), v109, v83, v84);
            v121 = (v121 + 8 * v84);
            v98 += v84;
            v100 = xmmword_25A99B0D0;
            v99 = v116;
          }

          while (*(*a2 + 48) > v98);
        }
      }

      else if (v85)
      {
        v86 = xmmword_25A99B0D0;
        v87 = v117;
        v88 = (v118 - v117) >> 2;
        v89 = (v88 - 1);
        if (v88 - 1 >= 0)
        {
          v90 = 0;
          v91 = __p;
          v92 = 0;
          do
          {
            v93 = ldiv(v92, v87[v89]);
            v92 = v93.quot;
            v90 += v91[v89--] * v93.rem;
          }

          while (v89 != -1);
          v86 = xmmword_25A99B0D0;
        }

        if (v84)
        {
          v94 = 0;
          v95 = vdupq_n_s64(v84 - 1);
          v96 = &v121->i64[1];
          do
          {
            v97 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(vdupq_n_s64(v94), v86)));
            if (v97.i8[0])
            {
              *(v96 - 1) = a4;
            }

            if (v97.i8[4])
            {
              *v96 = a4;
            }

            v94 += 2;
            v96 += 2;
          }

          while (((v84 + 1) & 0xFFFFFFFFFFFFFFFELL) != v94);
        }

        v130 = 0;
        operator new();
      }

      goto LABEL_51;
    }

    v77 = *(v125 - 1);
    v78 = *(v127 - 1);
    v125 -= 4;
    v127 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v79) = 0;
      v115 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v11->i64[1];
          do
          {
            v82 = vmovn_s64(vcgeq_u64(v115, vorrq_s8(vdupq_n_s64(v80), xmmword_25A99B0D0)));
            if (v82.i8[0])
            {
              *(v81 - 1) = a4;
            }

            if (v82.i8[4])
            {
              *v81 = a4;
            }

            v80 += 2;
            v81 += 2;
          }

          while (((v78 + 1) & 0xFFFFFFFFFFFFFFFELL) != v80);
        }

        mlx::core::strided_reduce<long long,long long,mlx::core::SumReduce>(v9, v11, v77, v78);
        v9 = (v122 + 8 * v78 * v77);
        v11 = (v121 + 8 * v78);
        v121 = v11;
        v122 = v9;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_55:
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }
}

void sub_25A8099B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, uint64_t a4)
{
  v129 = *MEMORY[0x277D85DE8];
  v125 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v120);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v118 = v11;
  v119 = v9;
  if (v120 == 1)
  {
    v19 = v122;
    if (v122 - v121 != 4)
    {
      goto LABEL_19;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v121;
      v23 = vdupq_lane_s64(a4, 0);
      do
      {
        v24 = v23;
        *v11 = a4;
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
            v30 = *v27;
            v29 = v27[1];
            v27 += 2;
            v25.i64[0] *= v29;
            v25.i64[1] *= *(&v29 + 1);
            v24.i64[0] *= v30;
            v24.i64[1] *= *(&v30 + 1);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = v25.i64[0] * v24.i64[0] * a4 * v25.i64[1] * v24.i64[1];
        *v11 = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v33 = *v27;
            v27 = (v27 + 8);
            v31 *= v33;
            *v11 = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        ++v11;
        v9 = (v9 + 8 * v22);
      }

      while (v21 != v20);
    }

    v118 = v11;
    v119 = v9;
  }

  else
  {
    if (!v120)
    {
      *v11 = a4;
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
          v16 = *v9;
          v15 = v9[1];
          v9 += 2;
          v14.i64[0] *= v15;
          v14.i64[1] *= *(&v15 + 1);
          v13.i64[0] *= v16;
          v13.i64[1] *= *(&v16 + 1);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v43 = v14.i64[0] * v13.i64[0] * a4 * v14.i64[1] * v13.i64[1];
      *v11 = v43;
      if (v17 >= 1)
      {
        v44 = v17 + 1;
        do
        {
          v45 = *v9;
          v9 = (v9 + 8);
          v43 *= v45;
          *v11 = v43;
          --v44;
        }

        while (v44 > 1);
      }

      goto LABEL_55;
    }

    if ((v120 & 0xFFFFFFFD) == 1)
    {
      v19 = v122;
LABEL_19:
      v34 = *(v19 - 1);
      v122 = v19 - 4;
      v124 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v114);
      v35 = *(*a2 + 48);
      if (v122 == v121)
      {
        v47 = v118;
        if (v35)
        {
          v48 = 0;
          v49 = v114;
          v50 = ((v115 - v114) >> 2) - 1;
          v51 = __p;
          v110 = v119;
          v111 = vdupq_lane_s64(a4, 0);
          do
          {
            if ((v50 & 0x80000000) != 0)
            {
              v56 = 0;
            }

            else
            {
              v52 = 0;
              v53 = v50;
              quot = v48;
              do
              {
                v55 = ldiv(quot, v49[v53]);
                quot = v55.quot;
                v52 += v51[v53--] * v55.rem;
              }

              while (v53 != -1);
              v56 = 8 * v52;
            }

            *v47 = a4;
            v57 = (v110 + v56);
            if (v34 < 4)
            {
              v59 = v111;
              v60 = v111;
              v63 = v34;
            }

            else
            {
              v58 = v34;
              v59 = v111;
              v60 = v111;
              do
              {
                v62 = *v57;
                v61 = v57[1];
                v57 += 2;
                v59.i64[0] *= v61;
                v59.i64[1] *= *(&v61 + 1);
                v60.i64[0] *= v62;
                v60.i64[1] *= *(&v62 + 1);
                v63 = v58 - 4;
                v18 = v58 > 7;
                v58 -= 4;
              }

              while (v18);
            }

            v64 = v59.i64[0] * v60.i64[0] * a4 * v59.i64[1] * v60.i64[1];
            *v47 = v64;
            if (v63 >= 1)
            {
              v65 = v63 + 1;
              do
              {
                v66 = *v57;
                v57 = (v57 + 8);
                v64 *= v66;
                *v47 = v64;
                --v65;
              }

              while (v65 > 1);
            }

            ++v48;
            ++v47;
          }

          while (v48 != v35);
        }

        v118 = v47;
      }

      else if (v35)
      {
        v36 = v114;
        v37 = (v115 - v114) >> 2;
        v38 = (v37 - 1);
        if (v37 - 1 >= 0)
        {
          v39 = 0;
          v40 = __p;
          v41 = 0;
          do
          {
            v42 = ldiv(v41, v36[v38]);
            v41 = v42.quot;
            v39 += v40[v38--] * v42.rem;
          }

          while (v38 != -1);
        }

        *v118 = v125;
        v128 = 0;
        operator new();
      }

LABEL_51:
      if (__p)
      {
        v117 = __p;
        operator delete(__p);
      }

      if (v114)
      {
        v115 = v114;
        operator delete(v114);
      }

      goto LABEL_55;
    }

    if (v120 != 2)
    {
      if (v120 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v114);
        if (*(*a2 + 48))
        {
          v67 = v114;
          v68 = (v115 - v114) >> 2;
          v69 = (v68 - 1);
          if (v68 - 1 >= 0)
          {
            v70 = 0;
            v71 = __p;
            v72 = 0;
            do
            {
              v73 = ldiv(v72, v67[v69]);
              v72 = v73.quot;
              v70 += v71[v69--] * v73.rem;
            }

            while (v69 != -1);
          }

          v126 = 0;
          operator new();
        }

        goto LABEL_51;
      }

      if (v120 != 4)
      {
        goto LABEL_55;
      }

      v46 = v122;
      goto LABEL_77;
    }

    v46 = v122;
    if (v122 - v121 != 4)
    {
LABEL_77:
      v80 = *(v46 - 1);
      v81 = *(v124 - 1);
      v122 = v46 - 4;
      v124 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v114);
      v82 = *(*a2 + 48);
      if (v122 == v121)
      {
        if (v82)
        {
          v95 = 0;
          v96 = vdupq_n_s64(v81 - 1);
          v97 = xmmword_25A99B0D0;
          v113 = v96;
          do
          {
            v98 = v114;
            v99 = (v115 - v114) >> 2;
            v100 = (v99 - 1);
            if (v99 - 1 < 0)
            {
              v105 = 0;
            }

            else
            {
              v101 = 0;
              v102 = __p;
              v103 = v95;
              do
              {
                v104 = ldiv(v103, v98[v100]);
                v103 = v104.quot;
                v101 += v102[v100--] * v104.rem;
              }

              while (v100 != -1);
              v105 = 8 * v101;
              v97 = xmmword_25A99B0D0;
              v96 = v113;
            }

            v106 = v118;
            if (v81)
            {
              v107 = 0;
              v108 = v118 + 1;
              do
              {
                v109 = vmovn_s64(vcgeq_u64(v96, vorrq_s8(vdupq_n_s64(v107), v97)));
                if (v109.i8[0])
                {
                  *(v108 - 1) = a4;
                }

                if (v109.i8[4])
                {
                  *v108 = a4;
                }

                v107 += 2;
                v108 += 2;
              }

              while (((v81 + 1) & 0xFFFFFFFFFFFFFFFELL) != v107);
            }

            mlx::core::strided_reduce<long long,long long,mlx::core::ProdReduce>((v119 + v105), v106, v80, v81);
            v118 += v81;
            v95 += v81;
            v97 = xmmword_25A99B0D0;
            v96 = v113;
          }

          while (*(*a2 + 48) > v95);
        }
      }

      else if (v82)
      {
        v83 = xmmword_25A99B0D0;
        v84 = v114;
        v85 = (v115 - v114) >> 2;
        v86 = (v85 - 1);
        if (v85 - 1 >= 0)
        {
          v87 = 0;
          v88 = __p;
          v89 = 0;
          do
          {
            v90 = ldiv(v89, v84[v86]);
            v89 = v90.quot;
            v87 += v88[v86--] * v90.rem;
          }

          while (v86 != -1);
          v83 = xmmword_25A99B0D0;
        }

        if (v81)
        {
          v91 = 0;
          v92 = vdupq_n_s64(v81 - 1);
          v93 = v118 + 1;
          do
          {
            v94 = vmovn_s64(vcgeq_u64(v92, vorrq_s8(vdupq_n_s64(v91), v83)));
            if (v94.i8[0])
            {
              *(v93 - 1) = a4;
            }

            if (v94.i8[4])
            {
              *v93 = a4;
            }

            v91 += 2;
            v93 += 2;
          }

          while (((v81 + 1) & 0xFFFFFFFFFFFFFFFELL) != v91);
        }

        v127 = 0;
        operator new();
      }

      goto LABEL_51;
    }

    v74 = *(v122 - 1);
    v75 = *(v124 - 1);
    v122 -= 4;
    v124 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v76) = 0;
      v112 = vdupq_n_s64(v75 - 1);
      do
      {
        if (v75)
        {
          v77 = 0;
          v78 = v11 + 1;
          do
          {
            v79 = vmovn_s64(vcgeq_u64(v112, vorrq_s8(vdupq_n_s64(v77), xmmword_25A99B0D0)));
            if (v79.i8[0])
            {
              *(v78 - 1) = a4;
            }

            if (v79.i8[4])
            {
              *v78 = a4;
            }

            v77 += 2;
            v78 += 2;
          }

          while (((v75 + 1) & 0xFFFFFFFFFFFFFFFELL) != v77);
        }

        mlx::core::strided_reduce<long long,long long,mlx::core::ProdReduce>(v9, v11, v74, v75);
        v9 = (v119 + 8 * v75 * v74);
        v11 = &v118[v75];
        v118 = v11;
        v119 = v9;
        v76 = v76 + v75;
      }

      while (v76 < *(*a2 + 48));
    }
  }

LABEL_55:
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }

  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }
}

void sub_25A80A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

_OWORD *mlx::core::strided_reduce<long long,long long,mlx::core::SumReduce>(_OWORD *result, int64x2_t *a2, int a3, unint64_t a4)
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
          v9 = vaddq_s64(v8, v5[1]);
          *v5 = vaddq_s64(v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v10 = *result;
        result = (result + 8);
        v5->i64[0] += v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
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
      v7 = vaddq_s64(v9, v7);
      v6 = vaddq_s64(v8, v6);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = vaddvq_s64(vaddq_s64(v6, v7)) + *v3;
  *v3 = v12;
  if (v10 >= 1)
  {
    v13 = v10 + 1;
    do
    {
      v14 = *v2;
      v2 = (v2 + 8);
      v12 += v14;
      *v3 = v12;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05718;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05798;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__int128 *mlx::core::strided_reduce<long long,long long,mlx::core::ProdReduce>(__int128 *result, void *a2, int a3, unint64_t a4)
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
          *&v7 = *(result + 2) * v5[2];
          *(&v7 + 1) = *(result + 3) * v5[3];
          v8 = *result;
          result += 2;
          *&v9 = v8 * *v5;
          *(&v9 + 1) = *(&v8 + 1) * v5[1];
          *v5 = v9;
          *(v5 + 1) = v7;
          v5 += 4;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v10 = *result;
        result = (result + 8);
        *v5++ *= v10;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05818;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
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
      v9 = *v2;
      v8 = v2[1];
      v2 += 2;
      *&v7.f64[0] *= v8;
      *&v7.f64[1] *= *(&v8 + 1);
      *&v6.f64[0] *= v9;
      *&v6.f64[1] *= *(&v9 + 1);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = *&v7.f64[1] * *&v6.f64[1] * *&v7.f64[0] * *&v6.f64[0] * *v3;
  *v3 = v12;
  if (v10 >= 1)
  {
    v13 = v10 + 1;
    do
    {
      v14 = *v2;
      v2 = (v2 + 8);
      v12 *= v14;
      *v3 = v12;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05898;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05918;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, int16x4_t a4)
{
  v143 = *MEMORY[0x277D85DE8];
  v139 = a4.i16[0];
  mlx::core::get_reduction_plan(a1, a3, &v134);
  v7 = *a1;
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v132 = v10;
  v133 = v8;
  v123 = a2;
  if (v134 == 1)
  {
    v16 = v136;
    if (v136 - v135 != 4)
    {
      goto LABEL_19;
    }

    v17 = *(v9 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v135;
      v20 = vdupq_lane_s16(a4, 0);
      do
      {
        v10->i16[0] = a4.i16[0];
        v21 = v20;
        v22 = v19;
        v23 = v8;
        if (v19 >= 8)
        {
          v23 = v8;
          v24 = v19;
          v21 = v20;
          do
          {
            v25 = *v23++;
            v21 = vaddq_f16(v21, v25);
            v22 = v24 - 8;
            v15 = v24 > 0xF;
            v24 -= 8;
          }

          while (v15);
        }

        v26 = vadd_f16(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
        v27 = vaddv_f16(vadd_f16(v26, vdup_lane_s32(v26, 1))) + *a4.i16;
        *v10->i16 = v27;
        if (v22 >= 1)
        {
          v28 = v22 + 1;
          do
          {
            v29 = *v23->i16;
            v23 = (v23 + 2);
            v27 = v27 + v29;
            *v10->i16 = v27;
            --v28;
          }

          while (v28 > 1);
        }

        ++v18;
        v10 = (v10 + 2);
        v8 = (v8 + 2 * v19);
      }

      while (v18 != v17);
    }

    v132 = v10;
    v133 = v8;
  }

  else
  {
    if (!v134)
    {
      v10->i16[0] = a4.i16[0];
      v11 = *(v7 + 12);
      v12 = vdupq_lane_s16(a4, 0);
      if (v11 < 8)
      {
        v14 = *(v7 + 12);
      }

      else
      {
        do
        {
          v13 = *v8++;
          v12 = vaddq_f16(v12, v13);
          v14 = v11 - 8;
          v15 = v11 > 0xF;
          v11 -= 8;
        }

        while (v15);
      }

      v39 = vadd_f16(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
      v40 = vaddv_f16(vadd_f16(v39, vdup_lane_s32(v39, 1))) + *a4.i16;
      *v10->i16 = v40;
      if (v14 >= 1)
      {
        v41 = v14 + 1;
        do
        {
          v42 = *v8->i16;
          v8 = (v8 + 2);
          v40 = v40 + v42;
          *v10->i16 = v40;
          --v41;
        }

        while (v41 > 1);
      }

      goto LABEL_55;
    }

    if ((v134 & 0xFFFFFFFD) == 1)
    {
      v16 = v136;
LABEL_19:
      v30 = *(v16 - 1);
      v136 = v16 - 4;
      v138 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v128);
      v31 = *(*a2 + 48);
      if (v136 == v135)
      {
        v44 = v132;
        if (v31)
        {
          v45 = 0;
          v46 = v128;
          v47 = ((v129 - v128) >> 2) - 1;
          v48 = __p;
          v49 = v133;
          v124 = vdupq_lane_s16(a4, 0);
          do
          {
            if ((v47 & 0x80000000) != 0)
            {
              v54 = 0;
            }

            else
            {
              v50 = 0;
              v51 = v47;
              quot = v45;
              do
              {
                v53 = ldiv(quot, v46[v51]);
                quot = v53.quot;
                v50 += v48[v51--] * v53.rem;
              }

              while (v51 != -1);
              v54 = 2 * v50;
            }

            v44->i16[0] = a4.i16[0];
            v55 = (v49 + v54);
            if (v30 < 8)
            {
              v57 = v124;
              v59 = v30;
            }

            else
            {
              v56 = v30;
              v57 = v124;
              do
              {
                v58 = *v55++;
                v57 = vaddq_f16(v57, v58);
                v59 = v56 - 8;
                v15 = v56 > 0xF;
                v56 -= 8;
              }

              while (v15);
            }

            v60 = vadd_f16(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
            v61 = vaddv_f16(vadd_f16(v60, vdup_lane_s32(v60, 1))) + *a4.i16;
            *v44->i16 = v61;
            if (v59 >= 1)
            {
              v62 = v59 + 1;
              do
              {
                v63 = *v55->i16;
                v55 = (v55 + 2);
                v61 = v61 + v63;
                *v44->i16 = v61;
                --v62;
              }

              while (v62 > 1);
            }

            ++v45;
            v44 = (v44 + 2);
          }

          while (v45 != v31);
        }

        v132 = v44;
      }

      else if (v31)
      {
        v32 = v128;
        v33 = (v129 - v128) >> 2;
        v34 = (v33 - 1);
        if (v33 - 1 >= 0)
        {
          v35 = 0;
          v36 = __p;
          v37 = 0;
          do
          {
            v38 = ldiv(v37, v32[v34]);
            v37 = v38.quot;
            v35 += v36[v34--] * v38.rem;
          }

          while (v34 != -1);
        }

        v132->i16[0] = v139;
        v142 = 0;
        operator new();
      }

LABEL_51:
      if (__p)
      {
        v131 = __p;
        operator delete(__p);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_55;
    }

    if (v134 != 2)
    {
      if (v134 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v128);
        if (*(*a2 + 48))
        {
          v64 = v128;
          v65 = (v129 - v128) >> 2;
          v66 = (v65 - 1);
          if (v65 - 1 >= 0)
          {
            v67 = 0;
            v68 = __p;
            v69 = 0;
            do
            {
              v70 = ldiv(v69, v64[v66]);
              v69 = v70.quot;
              v67 += v68[v66--] * v70.rem;
            }

            while (v66 != -1);
          }

          v140 = 0;
          operator new();
        }

        goto LABEL_51;
      }

      if (v134 != 4)
      {
        goto LABEL_55;
      }

      v43 = v136;
      goto LABEL_87;
    }

    v43 = v136;
    if (v136 - v135 != 4)
    {
LABEL_87:
      v81 = *(v43 - 1);
      v82 = *(v138 - 1);
      v136 = v43 - 4;
      v138 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v128);
      v83 = *(*a2 + 48);
      if (v136 == v135)
      {
        if (v83)
        {
          v101 = 0;
          v102 = vdupq_n_s64(v82 - 1);
          v103 = xmmword_25A9C2E70;
          v104 = xmmword_25A9C2E80;
          v105 = xmmword_25A99B0C0;
          v106 = xmmword_25A99B0D0;
          v126 = v102;
          do
          {
            v107 = v128;
            v108 = (v129 - v128) >> 2;
            v109 = (v108 - 1);
            if (v108 - 1 < 0)
            {
              v114 = 0;
            }

            else
            {
              v110 = 0;
              v111 = __p;
              v112 = v101;
              do
              {
                v113 = ldiv(v112, v107[v109]);
                v112 = v113.quot;
                v110 += v111[v109--] * v113.rem;
              }

              while (v109 != -1);
              v114 = 2 * v110;
              v103 = xmmword_25A9C2E70;
              v102 = v126;
              v105 = xmmword_25A99B0C0;
              v104 = xmmword_25A9C2E80;
              v106 = xmmword_25A99B0D0;
            }

            v115 = v132;
            if (v82)
            {
              v116 = 0;
              v117 = &v132->i16[4];
              do
              {
                v118 = vdupq_n_s64(v116);
                v119 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v118, v106)));
                if (vuzp1_s8(vuzp1_s16(v119, *v118.i8), *v118.i8).u8[0])
                {
                  *(v117 - 4) = a4.i16[0];
                }

                if (vuzp1_s8(vuzp1_s16(v119, *&v118), *&v118).i8[1])
                {
                  *(v117 - 3) = a4.i16[0];
                }

                if (vuzp1_s8(vuzp1_s16(*&v118, vmovn_s64(vcgeq_u64(v102, vorrq_s8(v118, v105)))), *&v118).i8[2])
                {
                  *(v117 - 2) = a4.i16[0];
                  *(v117 - 1) = a4.i16[0];
                }

                v120 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v118, v104)));
                if (vuzp1_s8(*&v118, vuzp1_s16(v120, *&v118)).i32[1])
                {
                  *v117 = a4.i16[0];
                }

                if (vuzp1_s8(*&v118, vuzp1_s16(v120, *&v118)).i8[5])
                {
                  v117[1] = a4.i16[0];
                }

                v121 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v118, v103)));
                if (vuzp1_s8(*&v121, vuzp1_s16(v121, v121)).i8[6])
                {
                  v117[2] = a4.i16[0];
                }

                v122 = vuzp1_s16(v121, v121);
                if (vuzp1_s8(v122, v122).i8[7])
                {
                  v117[3] = a4.i16[0];
                }

                v116 += 8;
                v117 += 8;
              }

              while (((v82 + 7) & 0xFFFFFFFFFFFFFFF8) != v116);
            }

            mlx::core::strided_reduce<half,half,mlx::core::SumReduce>((v133 + v114), v115, v81, v82);
            v132 = (v132 + 2 * v82);
            v101 += v82;
            v103 = xmmword_25A9C2E70;
            v102 = v126;
            v105 = xmmword_25A99B0C0;
            v104 = xmmword_25A9C2E80;
            v106 = xmmword_25A99B0D0;
          }

          while (*(*v123 + 48) > v101);
        }
      }

      else if (v83)
      {
        v84 = xmmword_25A9C2E70;
        v85 = xmmword_25A9C2E80;
        v86 = xmmword_25A99B0C0;
        v87 = xmmword_25A99B0D0;
        v88 = v128;
        v89 = (v129 - v128) >> 2;
        v90 = (v89 - 1);
        if (v89 - 1 >= 0)
        {
          v91 = 0;
          v92 = __p;
          v93 = 0;
          do
          {
            v94 = ldiv(v93, v88[v90]);
            v93 = v94.quot;
            v91 += v92[v90--] * v94.rem;
          }

          while (v90 != -1);
          v85 = xmmword_25A9C2E80;
          v84 = xmmword_25A9C2E70;
          v87 = xmmword_25A99B0D0;
          v86 = xmmword_25A99B0C0;
        }

        if (v82)
        {
          v95 = 0;
          v96 = vdupq_n_s64(v82 - 1);
          v97 = &v132->i16[4];
          do
          {
            v98 = vdupq_n_s64(v95);
            v99 = vmovn_s64(vcgeq_u64(v96, vorrq_s8(v98, v87)));
            if (vuzp1_s8(vuzp1_s16(v99, *v96.i8), *v96.i8).u8[0])
            {
              *(v97 - 4) = a4.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v99, *&v96), *&v96).i8[1])
            {
              *(v97 - 3) = a4.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, vorrq_s8(v98, v86)))), *&v96).i8[2])
            {
              *(v97 - 2) = a4.i16[0];
              *(v97 - 1) = a4.i16[0];
            }

            v100 = vmovn_s64(vcgeq_u64(v96, vorrq_s8(v98, v85)));
            if (vuzp1_s8(*&v96, vuzp1_s16(v100, *&v96)).i32[1])
            {
              *v97 = a4.i16[0];
            }

            if (vuzp1_s8(*&v96, vuzp1_s16(v100, *&v96)).i8[5])
            {
              v97[1] = a4.i16[0];
            }

            if (vuzp1_s8(*&v96, vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, vorrq_s8(v98, v84))))).i8[6])
            {
              v97[2] = a4.i16[0];
              v97[3] = a4.i16[0];
            }

            v95 += 8;
            v97 += 8;
          }

          while (((v82 + 7) & 0xFFFFFFFFFFFFFFF8) != v95);
        }

        v141 = 0;
        operator new();
      }

      goto LABEL_51;
    }

    v71 = *(v136 - 1);
    v72 = *(v138 - 1);
    v136 -= 4;
    v138 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v73) = 0;
      v125 = vdupq_n_s64(v72 - 1);
      do
      {
        if (v72)
        {
          v74 = 0;
          v75 = &v10->i16[4];
          do
          {
            v76 = vdupq_n_s64(v74);
            v77 = vmovn_s64(vcgeq_u64(v125, vorrq_s8(v76, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v77, *v76.i8), *v76.i8).u8[0])
            {
              *(v75 - 4) = a4.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v77, *&v76), *&v76).i8[1])
            {
              *(v75 - 3) = a4.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(*&v76, vmovn_s64(vcgeq_u64(v125, vorrq_s8(v76, xmmword_25A99B0C0)))), *&v76).i8[2])
            {
              *(v75 - 2) = a4.i16[0];
              *(v75 - 1) = a4.i16[0];
            }

            v78 = vmovn_s64(vcgeq_u64(v125, vorrq_s8(v76, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v76, vuzp1_s16(v78, *&v76)).i32[1])
            {
              *v75 = a4.i16[0];
            }

            if (vuzp1_s8(*&v76, vuzp1_s16(v78, *&v76)).i8[5])
            {
              v75[1] = a4.i16[0];
            }

            v79 = vmovn_s64(vcgeq_u64(v125, vorrq_s8(v76, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v79, vuzp1_s16(v79, v79)).i8[6])
            {
              v75[2] = a4.i16[0];
            }

            v80 = vuzp1_s16(v79, v79);
            if (vuzp1_s8(v80, v80).i8[7])
            {
              v75[3] = a4.i16[0];
            }

            v74 += 8;
            v75 += 8;
          }

          while (((v72 + 7) & 0xFFFFFFFFFFFFFFF8) != v74);
        }

        mlx::core::strided_reduce<half,half,mlx::core::SumReduce>(v8, v10, v71, v72);
        v8 = (v133 + 2 * v72 * v71);
        v10 = (v132 + 2 * v72);
        v132 = v10;
        v133 = v8;
        v73 = v73 + v72;
      }

      while (v73 < *(*a2 + 48));
    }
  }

LABEL_55:
  if (v137)
  {
    v138 = v137;
    operator delete(v137);
  }

  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }
}

void sub_25A80BA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, int16x4_t a4)
{
  v146 = *MEMORY[0x277D85DE8];
  v142 = a4.i16[0];
  mlx::core::get_reduction_plan(a1, a3, &v137);
  v7 = *a1;
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v135 = v10;
  v136 = v8;
  v126 = a2;
  if (v137 == 1)
  {
    v16 = v139;
    if (v139 - v138 != 4)
    {
      goto LABEL_19;
    }

    v17 = *(v9 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v138;
      v20 = vdupq_lane_s16(a4, 0);
      do
      {
        v10->i16[0] = a4.i16[0];
        v21 = v20;
        v22 = v19;
        v23 = v8;
        if (v19 >= 8)
        {
          v23 = v8;
          v24 = v19;
          v21 = v20;
          do
          {
            v25 = *v23++;
            v21 = vmulq_f16(v21, v25);
            v22 = v24 - 8;
            v15 = v24 > 0xF;
            v24 -= 8;
          }

          while (v15);
        }

        v26 = vmul_f16(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
        v27 = vmul_f16(v26, vdup_lane_s32(v26, 1));
        v28 = vmulh_lane_f16(*v27.i16, v27, 1) * *a4.i16;
        *v10->i16 = v28;
        if (v22 >= 1)
        {
          v29 = v22 + 1;
          do
          {
            v30 = *v23->i16;
            v23 = (v23 + 2);
            v28 = v28 * v30;
            *v10->i16 = v28;
            --v29;
          }

          while (v29 > 1);
        }

        ++v18;
        v10 = (v10 + 2);
        v8 = (v8 + 2 * v19);
      }

      while (v18 != v17);
    }

    v135 = v10;
    v136 = v8;
  }

  else
  {
    if (!v137)
    {
      v10->i16[0] = a4.i16[0];
      v11 = *(v7 + 12);
      v12 = vdupq_lane_s16(a4, 0);
      if (v11 < 8)
      {
        v14 = *(v7 + 12);
      }

      else
      {
        do
        {
          v13 = *v8++;
          v12 = vmulq_f16(v12, v13);
          v14 = v11 - 8;
          v15 = v11 > 0xF;
          v11 -= 8;
        }

        while (v15);
      }

      v40 = vmul_f16(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
      v41 = vmul_f16(v40, vdup_lane_s32(v40, 1));
      v42 = vmulh_lane_f16(*v41.i16, v41, 1) * *a4.i16;
      *v10->i16 = v42;
      if (v14 >= 1)
      {
        v43 = v14 + 1;
        do
        {
          v44 = *v8->i16;
          v8 = (v8 + 2);
          v42 = v42 * v44;
          *v10->i16 = v42;
          --v43;
        }

        while (v43 > 1);
      }

      goto LABEL_55;
    }

    if ((v137 & 0xFFFFFFFD) == 1)
    {
      v16 = v139;
LABEL_19:
      v31 = *(v16 - 1);
      v139 = v16 - 4;
      v141 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v131);
      v32 = *(*a2 + 48);
      if (v139 == v138)
      {
        v46 = v135;
        if (v32)
        {
          v47 = 0;
          v48 = v131;
          v49 = ((v132 - v131) >> 2) - 1;
          v50 = __p;
          v51 = v136;
          v127 = vdupq_lane_s16(a4, 0);
          do
          {
            if ((v49 & 0x80000000) != 0)
            {
              v56 = 0;
            }

            else
            {
              v52 = 0;
              v53 = v49;
              quot = v47;
              do
              {
                v55 = ldiv(quot, v48[v53]);
                quot = v55.quot;
                v52 += v50[v53--] * v55.rem;
              }

              while (v53 != -1);
              v56 = 2 * v52;
            }

            v46->i16[0] = a4.i16[0];
            v57 = (v51 + v56);
            if (v31 < 8)
            {
              v59 = v127;
              v61 = v31;
            }

            else
            {
              v58 = v31;
              v59 = v127;
              do
              {
                v60 = *v57++;
                v59 = vmulq_f16(v59, v60);
                v61 = v58 - 8;
                v15 = v58 > 0xF;
                v58 -= 8;
              }

              while (v15);
            }

            v62 = vmul_f16(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
            v63 = vmul_f16(v62, vdup_lane_s32(v62, 1));
            v64 = vmulh_lane_f16(*v63.i16, v63, 1) * *a4.i16;
            *v46->i16 = v64;
            if (v61 >= 1)
            {
              v65 = v61 + 1;
              do
              {
                v66 = *v57->i16;
                v57 = (v57 + 2);
                v64 = v64 * v66;
                *v46->i16 = v64;
                --v65;
              }

              while (v65 > 1);
            }

            ++v47;
            v46 = (v46 + 2);
          }

          while (v47 != v32);
        }

        v135 = v46;
      }

      else if (v32)
      {
        v33 = v131;
        v34 = (v132 - v131) >> 2;
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

        v135->i16[0] = v142;
        v145 = 0;
        operator new();
      }

LABEL_51:
      if (__p)
      {
        v134 = __p;
        operator delete(__p);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      goto LABEL_55;
    }

    if (v137 != 2)
    {
      if (v137 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v131);
        if (*(*a2 + 48))
        {
          v67 = v131;
          v68 = (v132 - v131) >> 2;
          v69 = (v68 - 1);
          if (v68 - 1 >= 0)
          {
            v70 = 0;
            v71 = __p;
            v72 = 0;
            do
            {
              v73 = ldiv(v72, v67[v69]);
              v72 = v73.quot;
              v70 += v71[v69--] * v73.rem;
            }

            while (v69 != -1);
          }

          v143 = 0;
          operator new();
        }

        goto LABEL_51;
      }

      if (v137 != 4)
      {
        goto LABEL_55;
      }

      v45 = v139;
      goto LABEL_87;
    }

    v45 = v139;
    if (v139 - v138 != 4)
    {
LABEL_87:
      v84 = *(v45 - 1);
      v85 = *(v141 - 1);
      v139 = v45 - 4;
      v141 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v131);
      v86 = *(*a2 + 48);
      if (v139 == v138)
      {
        if (v86)
        {
          v104 = 0;
          v105 = vdupq_n_s64(v85 - 1);
          v106 = xmmword_25A9C2E70;
          v107 = xmmword_25A9C2E80;
          v108 = xmmword_25A99B0C0;
          v109 = xmmword_25A99B0D0;
          v129 = v105;
          do
          {
            v110 = v131;
            v111 = (v132 - v131) >> 2;
            v112 = (v111 - 1);
            if (v111 - 1 < 0)
            {
              v117 = 0;
            }

            else
            {
              v113 = 0;
              v114 = __p;
              v115 = v104;
              do
              {
                v116 = ldiv(v115, v110[v112]);
                v115 = v116.quot;
                v113 += v114[v112--] * v116.rem;
              }

              while (v112 != -1);
              v117 = 2 * v113;
              v106 = xmmword_25A9C2E70;
              v105 = v129;
              v108 = xmmword_25A99B0C0;
              v107 = xmmword_25A9C2E80;
              v109 = xmmword_25A99B0D0;
            }

            v118 = v135;
            if (v85)
            {
              v119 = 0;
              v120 = &v135->i16[4];
              do
              {
                v121 = vdupq_n_s64(v119);
                v122 = vmovn_s64(vcgeq_u64(v105, vorrq_s8(v121, v109)));
                if (vuzp1_s8(vuzp1_s16(v122, *v121.i8), *v121.i8).u8[0])
                {
                  *(v120 - 4) = a4.i16[0];
                }

                if (vuzp1_s8(vuzp1_s16(v122, *&v121), *&v121).i8[1])
                {
                  *(v120 - 3) = a4.i16[0];
                }

                if (vuzp1_s8(vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v105, vorrq_s8(v121, v108)))), *&v121).i8[2])
                {
                  *(v120 - 2) = a4.i16[0];
                  *(v120 - 1) = a4.i16[0];
                }

                v123 = vmovn_s64(vcgeq_u64(v105, vorrq_s8(v121, v107)));
                if (vuzp1_s8(*&v121, vuzp1_s16(v123, *&v121)).i32[1])
                {
                  *v120 = a4.i16[0];
                }

                if (vuzp1_s8(*&v121, vuzp1_s16(v123, *&v121)).i8[5])
                {
                  v120[1] = a4.i16[0];
                }

                v124 = vmovn_s64(vcgeq_u64(v105, vorrq_s8(v121, v106)));
                if (vuzp1_s8(*&v124, vuzp1_s16(v124, v124)).i8[6])
                {
                  v120[2] = a4.i16[0];
                }

                v125 = vuzp1_s16(v124, v124);
                if (vuzp1_s8(v125, v125).i8[7])
                {
                  v120[3] = a4.i16[0];
                }

                v119 += 8;
                v120 += 8;
              }

              while (((v85 + 7) & 0xFFFFFFFFFFFFFFF8) != v119);
            }

            mlx::core::strided_reduce<half,half,mlx::core::ProdReduce>((v136 + v117), v118, v84, v85);
            v135 = (v135 + 2 * v85);
            v104 += v85;
            v106 = xmmword_25A9C2E70;
            v105 = v129;
            v108 = xmmword_25A99B0C0;
            v107 = xmmword_25A9C2E80;
            v109 = xmmword_25A99B0D0;
          }

          while (*(*v126 + 48) > v104);
        }
      }

      else if (v86)
      {
        v87 = xmmword_25A9C2E70;
        v88 = xmmword_25A9C2E80;
        v89 = xmmword_25A99B0C0;
        v90 = xmmword_25A99B0D0;
        v91 = v131;
        v92 = (v132 - v131) >> 2;
        v93 = (v92 - 1);
        if (v92 - 1 >= 0)
        {
          v94 = 0;
          v95 = __p;
          v96 = 0;
          do
          {
            v97 = ldiv(v96, v91[v93]);
            v96 = v97.quot;
            v94 += v95[v93--] * v97.rem;
          }

          while (v93 != -1);
          v88 = xmmword_25A9C2E80;
          v87 = xmmword_25A9C2E70;
          v90 = xmmword_25A99B0D0;
          v89 = xmmword_25A99B0C0;
        }

        if (v85)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v85 - 1);
          v100 = &v135->i16[4];
          do
          {
            v101 = vdupq_n_s64(v98);
            v102 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v90)));
            if (vuzp1_s8(vuzp1_s16(v102, *v99.i8), *v99.i8).u8[0])
            {
              *(v100 - 4) = a4.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v102, *&v99), *&v99).i8[1])
            {
              *(v100 - 3) = a4.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v89)))), *&v99).i8[2])
            {
              *(v100 - 2) = a4.i16[0];
              *(v100 - 1) = a4.i16[0];
            }

            v103 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v88)));
            if (vuzp1_s8(*&v99, vuzp1_s16(v103, *&v99)).i32[1])
            {
              *v100 = a4.i16[0];
            }

            if (vuzp1_s8(*&v99, vuzp1_s16(v103, *&v99)).i8[5])
            {
              v100[1] = a4.i16[0];
            }

            if (vuzp1_s8(*&v99, vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v87))))).i8[6])
            {
              v100[2] = a4.i16[0];
              v100[3] = a4.i16[0];
            }

            v98 += 8;
            v100 += 8;
          }

          while (((v85 + 7) & 0xFFFFFFFFFFFFFFF8) != v98);
        }

        v144 = 0;
        operator new();
      }

      goto LABEL_51;
    }

    v74 = *(v139 - 1);
    v75 = *(v141 - 1);
    v139 -= 4;
    v141 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v76) = 0;
      v128 = vdupq_n_s64(v75 - 1);
      do
      {
        if (v75)
        {
          v77 = 0;
          v78 = &v10->i16[4];
          do
          {
            v79 = vdupq_n_s64(v77);
            v80 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(v79, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v80, *v79.i8), *v79.i8).u8[0])
            {
              *(v78 - 4) = a4.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v80, *&v79), *&v79).i8[1])
            {
              *(v78 - 3) = a4.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(*&v79, vmovn_s64(vcgeq_u64(v128, vorrq_s8(v79, xmmword_25A99B0C0)))), *&v79).i8[2])
            {
              *(v78 - 2) = a4.i16[0];
              *(v78 - 1) = a4.i16[0];
            }

            v81 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(v79, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v79, vuzp1_s16(v81, *&v79)).i32[1])
            {
              *v78 = a4.i16[0];
            }

            if (vuzp1_s8(*&v79, vuzp1_s16(v81, *&v79)).i8[5])
            {
              v78[1] = a4.i16[0];
            }

            v82 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(v79, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v82, vuzp1_s16(v82, v82)).i8[6])
            {
              v78[2] = a4.i16[0];
            }

            v83 = vuzp1_s16(v82, v82);
            if (vuzp1_s8(v83, v83).i8[7])
            {
              v78[3] = a4.i16[0];
            }

            v77 += 8;
            v78 += 8;
          }

          while (((v75 + 7) & 0xFFFFFFFFFFFFFFF8) != v77);
        }

        mlx::core::strided_reduce<half,half,mlx::core::ProdReduce>(v8, v10, v74, v75);
        v8 = (v136 + 2 * v75 * v74);
        v10 = (v135 + 2 * v75);
        v135 = v10;
        v136 = v8;
        v76 = v76 + v75;
      }

      while (v76 < *(*a2 + 48));
    }
  }

LABEL_55:
  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  if (v138)
  {
    v139 = v138;
    operator delete(v138);
  }
}

void sub_25A80C714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

float16x8_t *mlx::core::strided_reduce<half,half,mlx::core::SumReduce>(float16x8_t *result, float16x8_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a4;
      v6 = a2;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result++;
          *v6 = vaddq_f16(*v6, v7);
          ++v6;
          v5 -= 8;
        }

        while (v5 > 7);
      }

      for (; v5; --v5)
      {
        v8 = *result->i16;
        result = (result + 2);
        *v6->i16 = *v6->i16 + v8;
        v6 = (v6 + 2);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05998;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__int16 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::operator()@<H0>(uint64_t a1@<X0>, int *a2@<X1>)
{
  v2 = (**(a1 + 8) + 2 * **(a1 + 16) + 2 * *a2);
  v3 = **(a1 + 24);
  v4 = **(a1 + 32);
  v5 = *(a1 + 40);
  v6 = vld1q_dup_s16(v5);
  if (v4 < 8)
  {
    v8 = **(a1 + 32);
  }

  else
  {
    do
    {
      v7 = *v2++;
      v6 = vaddq_f16(v6, v7);
      v8 = v4 - 8;
      v9 = v4 > 0xF;
      v4 -= 8;
    }

    while (v9);
  }

  v10 = vadd_f16(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  *&result = *v3 + vaddv_f16(vadd_f16(v10, vdup_lane_s32(v10, 1)));
  *v3 = *&result;
  if (v8 >= 1)
  {
    v12 = v8 + 1;
    do
    {
      v13 = *v2->i16;
      v2 = (v2 + 2);
      *&result = *&result + v13;
      *v3 = *&result;
      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05A18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05A98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__int16 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::operator()@<H0>(uint64_t a1@<X0>, int *a2@<X1>)
{
  v2 = *(a1 + 8);
  *&result = *v2 + *(**(a1 + 16) + 2 * **(a1 + 24) + 2 * *a2);
  *v2 = *&result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float16x8_t *mlx::core::strided_reduce<half,half,mlx::core::ProdReduce>(float16x8_t *result, float16x8_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a4;
      v6 = a2;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result++;
          *v6 = vmulq_f16(*v6, v7);
          ++v6;
          v5 -= 8;
        }

        while (v5 > 7);
      }

      for (; v5; --v5)
      {
        v8 = *result->i16;
        result = (result + 2);
        *v6->i16 = *v6->i16 * v8;
        v6 = (v6 + 2);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05B18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__int16 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::operator()@<H0>(uint64_t a1@<X0>, int *a2@<X1>)
{
  v2 = (**(a1 + 8) + 2 * **(a1 + 16) + 2 * *a2);
  v3 = **(a1 + 24);
  v4 = **(a1 + 32);
  v5 = *(a1 + 40);
  v6 = vld1q_dup_s16(v5);
  if (v4 < 8)
  {
    v8 = **(a1 + 32);
  }

  else
  {
    do
    {
      v7 = *v2++;
      v6 = vmulq_f16(v6, v7);
      v8 = v4 - 8;
      v9 = v4 > 0xF;
      v4 -= 8;
    }

    while (v9);
  }

  v10 = vmul_f16(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v11 = vmul_f16(v10, vdup_lane_s32(v10, 1));
  *&result = *v3 * vmulh_lane_f16(*v11.i16, v11, 1);
  *v3 = *&result;
  if (v8 >= 1)
  {
    v13 = v8 + 1;
    do
    {
      v14 = *v2->i16;
      v2 = (v2 + 2);
      *&result = *&result * v14;
      *v3 = *&result;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05B98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05C18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__int16 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::operator()@<H0>(uint64_t a1@<X0>, int *a2@<X1>)
{
  v2 = *(a1 + 8);
  *&result = *v2 * *(**(a1 + 16) + 2 * **(a1 + 24) + 2 * *a2);
  *v2 = *&result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unsigned __int16 a4)
{
  v112 = *MEMORY[0x277D85DE8];
  v108 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v103);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v101 = v11;
  v102 = v9;
  if (v103 == 1)
  {
    v12 = v105;
    if (v105 - v104 != 4)
    {
      goto LABEL_11;
    }

    if (*(v10 + 48))
    {
      v13 = 0;
      v14 = *v104;
      do
      {
        *v11 = a4;
        mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(v9, v11, v14, a4);
        ++v13;
        v11 = v101 + 1;
        v9 = &v102[v14];
        ++v101;
        v102 = v9;
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v103)
    {
      *v11 = a4;
      mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(v9, v11, *(v8 + 12), a4);
      goto LABEL_108;
    }

    if ((v103 & 0xFFFFFFFD) == 1)
    {
      v12 = v105;
LABEL_11:
      v15 = *(v12 - 1);
      v105 = v12 - 4;
      v107 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v97);
      v16 = *(*a2 + 48);
      if (v105 == v104)
      {
        if (v16)
        {
          v25 = 0;
          do
          {
            v26 = v97;
            v27 = (v98 - v97) >> 2;
            v28 = (v27 - 1);
            if (v27 - 1 < 0)
            {
              v34 = 0;
              v32 = a2;
            }

            else
            {
              v29 = 0;
              v30 = __p;
              quot = v25;
              v32 = a2;
              do
              {
                v33 = ldiv(quot, v26[v28]);
                quot = v33.quot;
                v29 += v30[v28--] * v33.rem;
              }

              while (v28 != -1);
              v34 = v29;
            }

            v35 = v101;
            *v101 = a4;
            mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(&v102[v34], v35, v15, a4);
            ++v25;
            ++v101;
          }

          while (*(*v32 + 48) > v25);
        }
      }

      else if (v16)
      {
        v17 = v97;
        v18 = (v98 - v97) >> 2;
        v19 = (v18 - 1);
        if (v18 - 1 >= 0)
        {
          v20 = 0;
          v21 = __p;
          v22 = 0;
          do
          {
            v23 = ldiv(v22, v17[v19]);
            v22 = v23.quot;
            v20 += v21[v19--] * v23.rem;
          }

          while (v19 != -1);
        }

        *v101 = v108;
        v111 = 0;
        operator new();
      }

LABEL_104:
      if (__p)
      {
        v100 = __p;
        operator delete(__p);
      }

      if (v97)
      {
        v98 = v97;
        operator delete(v97);
      }

      goto LABEL_108;
    }

    if (v103 != 2)
    {
      if (v103 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v97);
        if (*(*a2 + 48))
        {
          v36 = v97;
          v37 = (v98 - v97) >> 2;
          v38 = (v37 - 1);
          if (v37 - 1 >= 0)
          {
            v39 = 0;
            v40 = __p;
            v41 = 0;
            do
            {
              v42 = ldiv(v41, v36[v38]);
              v41 = v42.quot;
              v39 += v40[v38--] * v42.rem;
            }

            while (v38 != -1);
          }

          v109 = 0;
          operator new();
        }

        goto LABEL_104;
      }

      if (v103 != 4)
      {
        goto LABEL_108;
      }

      v24 = v105;
      goto LABEL_57;
    }

    v24 = v105;
    if (v105 - v104 != 4)
    {
LABEL_57:
      v53 = *(v24 - 1);
      v54 = *(v107 - 1);
      v105 = v24 - 4;
      v107 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v97);
      v55 = *(*a2 + 48);
      if (v105 == v104)
      {
        if (v55)
        {
          v73 = 0;
          v74 = vdupq_n_s64(v54 - 1);
          v75 = xmmword_25A9C2E70;
          v76 = xmmword_25A9C2E80;
          v77 = xmmword_25A99B0C0;
          v78 = xmmword_25A99B0D0;
          v96 = v74;
          do
          {
            v79 = v97;
            v80 = (v98 - v97) >> 2;
            v81 = (v80 - 1);
            if (v80 - 1 < 0)
            {
              v86 = 0;
            }

            else
            {
              v82 = 0;
              v83 = __p;
              v84 = v73;
              do
              {
                v85 = ldiv(v84, v79[v81]);
                v84 = v85.quot;
                v82 += v83[v81--] * v85.rem;
              }

              while (v81 != -1);
              v86 = v82;
              v75 = xmmword_25A9C2E70;
              v74 = v96;
              v77 = xmmword_25A99B0C0;
              v76 = xmmword_25A9C2E80;
              v78 = xmmword_25A99B0D0;
            }

            v87 = v101;
            if (v54)
            {
              v88 = 0;
              v89 = v101 + 4;
              do
              {
                v90 = vdupq_n_s64(v88);
                v91 = vmovn_s64(vcgeq_u64(v74, vorrq_s8(v90, v78)));
                if (vuzp1_s8(vuzp1_s16(v91, *v90.i8), *v90.i8).u8[0])
                {
                  *(v89 - 4) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(v91, *&v90), *&v90).i8[1])
                {
                  *(v89 - 3) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(*&v90, vmovn_s64(vcgeq_u64(v74, vorrq_s8(v90, v77)))), *&v90).i8[2])
                {
                  *(v89 - 2) = a4;
                  *(v89 - 1) = a4;
                }

                v92 = vmovn_s64(vcgeq_u64(v74, vorrq_s8(v90, v76)));
                if (vuzp1_s8(*&v90, vuzp1_s16(v92, *&v90)).i32[1])
                {
                  *v89 = a4;
                }

                if (vuzp1_s8(*&v90, vuzp1_s16(v92, *&v90)).i8[5])
                {
                  v89[1] = a4;
                }

                v93 = vmovn_s64(vcgeq_u64(v74, vorrq_s8(v90, v75)));
                if (vuzp1_s8(*&v93, vuzp1_s16(v93, v93)).i8[6])
                {
                  v89[2] = a4;
                }

                v94 = vuzp1_s16(v93, v93);
                if (vuzp1_s8(v94, v94).i8[7])
                {
                  v89[3] = a4;
                }

                v88 += 8;
                v89 += 8;
              }

              while (((v54 + 7) & 0xFFFFFFFFFFFFFFF8) != v88);
            }

            mlx::core::strided_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(&v102[v86], v87, v53, v54);
            v101 += v54;
            v73 += v54;
            v75 = xmmword_25A9C2E70;
            v74 = v96;
            v77 = xmmword_25A99B0C0;
            v76 = xmmword_25A9C2E80;
            v78 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v73);
        }
      }

      else if (v55)
      {
        v56 = xmmword_25A9C2E70;
        v57 = xmmword_25A9C2E80;
        v58 = xmmword_25A99B0C0;
        v59 = xmmword_25A99B0D0;
        v60 = v97;
        v61 = (v98 - v97) >> 2;
        v62 = (v61 - 1);
        if (v61 - 1 >= 0)
        {
          v63 = 0;
          v64 = __p;
          v65 = 0;
          do
          {
            v66 = ldiv(v65, v60[v62]);
            v65 = v66.quot;
            v63 += v64[v62--] * v66.rem;
          }

          while (v62 != -1);
          v57 = xmmword_25A9C2E80;
          v56 = xmmword_25A9C2E70;
          v59 = xmmword_25A99B0D0;
          v58 = xmmword_25A99B0C0;
        }

        if (v54)
        {
          v67 = 0;
          v68 = vdupq_n_s64(v54 - 1);
          v69 = v101 + 4;
          do
          {
            v70 = vdupq_n_s64(v67);
            v71 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, v59)));
            if (vuzp1_s8(vuzp1_s16(v71, *v68.i8), *v68.i8).u8[0])
            {
              *(v69 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v71, *&v68), *&v68).i8[1])
            {
              *(v69 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, v58)))), *&v68).i8[2])
            {
              *(v69 - 2) = a4;
              *(v69 - 1) = a4;
            }

            v72 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, v57)));
            if (vuzp1_s8(*&v68, vuzp1_s16(v72, *&v68)).i32[1])
            {
              *v69 = a4;
            }

            if (vuzp1_s8(*&v68, vuzp1_s16(v72, *&v68)).i8[5])
            {
              v69[1] = a4;
            }

            if (vuzp1_s8(*&v68, vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, v56))))).i8[6])
            {
              v69[2] = a4;
              v69[3] = a4;
            }

            v67 += 8;
            v69 += 8;
          }

          while (((v54 + 7) & 0xFFFFFFFFFFFFFFF8) != v67);
        }

        v110 = 0;
        operator new();
      }

      goto LABEL_104;
    }

    v43 = *(v105 - 1);
    v44 = *(v107 - 1);
    v105 -= 4;
    v107 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v45) = 0;
      v95 = vdupq_n_s64(v44 - 1);
      do
      {
        if (v44)
        {
          v46 = 0;
          v47 = v11 + 4;
          do
          {
            v48 = vdupq_n_s64(v46);
            v49 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v48, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v49, *v48.i8), *v48.i8).u8[0])
            {
              *(v47 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v49, *&v48), *&v48).i8[1])
            {
              *(v47 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v95, vorrq_s8(v48, xmmword_25A99B0C0)))), *&v48).i8[2])
            {
              *(v47 - 2) = a4;
              *(v47 - 1) = a4;
            }

            v50 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v48, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v48, vuzp1_s16(v50, *&v48)).i32[1])
            {
              *v47 = a4;
            }

            if (vuzp1_s8(*&v48, vuzp1_s16(v50, *&v48)).i8[5])
            {
              v47[1] = a4;
            }

            v51 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v48, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v51, vuzp1_s16(v51, v51)).i8[6])
            {
              v47[2] = a4;
            }

            v52 = vuzp1_s16(v51, v51);
            if (vuzp1_s8(v52, v52).i8[7])
            {
              v47[3] = a4;
            }

            v46 += 8;
            v47 += 8;
          }

          while (((v44 + 7) & 0xFFFFFFFFFFFFFFF8) != v46);
        }

        mlx::core::strided_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(v9, v11, v43, v44);
        v9 = &v102[v44 * v43];
        v11 = &v101[v44];
        v101 = v11;
        v102 = v9;
        v45 = v45 + v44;
      }

      while (v45 < *(*a2 + 48));
    }
  }

LABEL_108:
  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }
}

void sub_25A80DB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, unsigned __int16 a4)
{
  v112 = *MEMORY[0x277D85DE8];
  v108 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v103);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v101 = v11;
  v102 = v9;
  if (v103 == 1)
  {
    v12 = v105;
    if (v105 - v104 != 4)
    {
      goto LABEL_11;
    }

    if (*(v10 + 48))
    {
      v13 = 0;
      v14 = *v104;
      do
      {
        *v11 = a4;
        mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(v9, v11, v14, a4);
        ++v13;
        v11 = v101 + 1;
        v9 = &v102[v14];
        ++v101;
        v102 = v9;
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v103)
    {
      *v11 = a4;
      mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(v9, v11, *(v8 + 12), a4);
      goto LABEL_108;
    }

    if ((v103 & 0xFFFFFFFD) == 1)
    {
      v12 = v105;
LABEL_11:
      v15 = *(v12 - 1);
      v105 = v12 - 4;
      v107 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v97);
      v16 = *(*a2 + 48);
      if (v105 == v104)
      {
        if (v16)
        {
          v25 = 0;
          do
          {
            v26 = v97;
            v27 = (v98 - v97) >> 2;
            v28 = (v27 - 1);
            if (v27 - 1 < 0)
            {
              v34 = 0;
              v32 = a2;
            }

            else
            {
              v29 = 0;
              v30 = __p;
              quot = v25;
              v32 = a2;
              do
              {
                v33 = ldiv(quot, v26[v28]);
                quot = v33.quot;
                v29 += v30[v28--] * v33.rem;
              }

              while (v28 != -1);
              v34 = v29;
            }

            v35 = v101;
            *v101 = a4;
            mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(&v102[v34], v35, v15, a4);
            ++v25;
            ++v101;
          }

          while (*(*v32 + 48) > v25);
        }
      }

      else if (v16)
      {
        v17 = v97;
        v18 = (v98 - v97) >> 2;
        v19 = (v18 - 1);
        if (v18 - 1 >= 0)
        {
          v20 = 0;
          v21 = __p;
          v22 = 0;
          do
          {
            v23 = ldiv(v22, v17[v19]);
            v22 = v23.quot;
            v20 += v21[v19--] * v23.rem;
          }

          while (v19 != -1);
        }

        *v101 = v108;
        v111 = 0;
        operator new();
      }

LABEL_104:
      if (__p)
      {
        v100 = __p;
        operator delete(__p);
      }

      if (v97)
      {
        v98 = v97;
        operator delete(v97);
      }

      goto LABEL_108;
    }

    if (v103 != 2)
    {
      if (v103 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v97);
        if (*(*a2 + 48))
        {
          v36 = v97;
          v37 = (v98 - v97) >> 2;
          v38 = (v37 - 1);
          if (v37 - 1 >= 0)
          {
            v39 = 0;
            v40 = __p;
            v41 = 0;
            do
            {
              v42 = ldiv(v41, v36[v38]);
              v41 = v42.quot;
              v39 += v40[v38--] * v42.rem;
            }

            while (v38 != -1);
          }

          v109 = 0;
          operator new();
        }

        goto LABEL_104;
      }

      if (v103 != 4)
      {
        goto LABEL_108;
      }

      v24 = v105;
      goto LABEL_57;
    }

    v24 = v105;
    if (v105 - v104 != 4)
    {
LABEL_57:
      v53 = *(v24 - 1);
      v54 = *(v107 - 1);
      v105 = v24 - 4;
      v107 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v97);
      v55 = *(*a2 + 48);
      if (v105 == v104)
      {
        if (v55)
        {
          v73 = 0;
          v74 = vdupq_n_s64(v54 - 1);
          v75 = xmmword_25A9C2E70;
          v76 = xmmword_25A9C2E80;
          v77 = xmmword_25A99B0C0;
          v78 = xmmword_25A99B0D0;
          v96 = v74;
          do
          {
            v79 = v97;
            v80 = (v98 - v97) >> 2;
            v81 = (v80 - 1);
            if (v80 - 1 < 0)
            {
              v86 = 0;
            }

            else
            {
              v82 = 0;
              v83 = __p;
              v84 = v73;
              do
              {
                v85 = ldiv(v84, v79[v81]);
                v84 = v85.quot;
                v82 += v83[v81--] * v85.rem;
              }

              while (v81 != -1);
              v86 = v82;
              v75 = xmmword_25A9C2E70;
              v74 = v96;
              v77 = xmmword_25A99B0C0;
              v76 = xmmword_25A9C2E80;
              v78 = xmmword_25A99B0D0;
            }

            v87 = v101;
            if (v54)
            {
              v88 = 0;
              v89 = v101 + 4;
              do
              {
                v90 = vdupq_n_s64(v88);
                v91 = vmovn_s64(vcgeq_u64(v74, vorrq_s8(v90, v78)));
                if (vuzp1_s8(vuzp1_s16(v91, *v90.i8), *v90.i8).u8[0])
                {
                  *(v89 - 4) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(v91, *&v90), *&v90).i8[1])
                {
                  *(v89 - 3) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(*&v90, vmovn_s64(vcgeq_u64(v74, vorrq_s8(v90, v77)))), *&v90).i8[2])
                {
                  *(v89 - 2) = a4;
                  *(v89 - 1) = a4;
                }

                v92 = vmovn_s64(vcgeq_u64(v74, vorrq_s8(v90, v76)));
                if (vuzp1_s8(*&v90, vuzp1_s16(v92, *&v90)).i32[1])
                {
                  *v89 = a4;
                }

                if (vuzp1_s8(*&v90, vuzp1_s16(v92, *&v90)).i8[5])
                {
                  v89[1] = a4;
                }

                v93 = vmovn_s64(vcgeq_u64(v74, vorrq_s8(v90, v75)));
                if (vuzp1_s8(*&v93, vuzp1_s16(v93, v93)).i8[6])
                {
                  v89[2] = a4;
                }

                v94 = vuzp1_s16(v93, v93);
                if (vuzp1_s8(v94, v94).i8[7])
                {
                  v89[3] = a4;
                }

                v88 += 8;
                v89 += 8;
              }

              while (((v54 + 7) & 0xFFFFFFFFFFFFFFF8) != v88);
            }

            mlx::core::strided_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(&v102[v86], v87, v53, v54);
            v101 += v54;
            v73 += v54;
            v75 = xmmword_25A9C2E70;
            v74 = v96;
            v77 = xmmword_25A99B0C0;
            v76 = xmmword_25A9C2E80;
            v78 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v73);
        }
      }

      else if (v55)
      {
        v56 = xmmword_25A9C2E70;
        v57 = xmmword_25A9C2E80;
        v58 = xmmword_25A99B0C0;
        v59 = xmmword_25A99B0D0;
        v60 = v97;
        v61 = (v98 - v97) >> 2;
        v62 = (v61 - 1);
        if (v61 - 1 >= 0)
        {
          v63 = 0;
          v64 = __p;
          v65 = 0;
          do
          {
            v66 = ldiv(v65, v60[v62]);
            v65 = v66.quot;
            v63 += v64[v62--] * v66.rem;
          }

          while (v62 != -1);
          v57 = xmmword_25A9C2E80;
          v56 = xmmword_25A9C2E70;
          v59 = xmmword_25A99B0D0;
          v58 = xmmword_25A99B0C0;
        }

        if (v54)
        {
          v67 = 0;
          v68 = vdupq_n_s64(v54 - 1);
          v69 = v101 + 4;
          do
          {
            v70 = vdupq_n_s64(v67);
            v71 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, v59)));
            if (vuzp1_s8(vuzp1_s16(v71, *v68.i8), *v68.i8).u8[0])
            {
              *(v69 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v71, *&v68), *&v68).i8[1])
            {
              *(v69 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, v58)))), *&v68).i8[2])
            {
              *(v69 - 2) = a4;
              *(v69 - 1) = a4;
            }

            v72 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, v57)));
            if (vuzp1_s8(*&v68, vuzp1_s16(v72, *&v68)).i32[1])
            {
              *v69 = a4;
            }

            if (vuzp1_s8(*&v68, vuzp1_s16(v72, *&v68)).i8[5])
            {
              v69[1] = a4;
            }

            if (vuzp1_s8(*&v68, vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, v56))))).i8[6])
            {
              v69[2] = a4;
              v69[3] = a4;
            }

            v67 += 8;
            v69 += 8;
          }

          while (((v54 + 7) & 0xFFFFFFFFFFFFFFF8) != v67);
        }

        v110 = 0;
        operator new();
      }

      goto LABEL_104;
    }

    v43 = *(v105 - 1);
    v44 = *(v107 - 1);
    v105 -= 4;
    v107 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v45) = 0;
      v95 = vdupq_n_s64(v44 - 1);
      do
      {
        if (v44)
        {
          v46 = 0;
          v47 = v11 + 4;
          do
          {
            v48 = vdupq_n_s64(v46);
            v49 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v48, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v49, *v48.i8), *v48.i8).u8[0])
            {
              *(v47 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v49, *&v48), *&v48).i8[1])
            {
              *(v47 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v95, vorrq_s8(v48, xmmword_25A99B0C0)))), *&v48).i8[2])
            {
              *(v47 - 2) = a4;
              *(v47 - 1) = a4;
            }

            v50 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v48, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v48, vuzp1_s16(v50, *&v48)).i32[1])
            {
              *v47 = a4;
            }

            if (vuzp1_s8(*&v48, vuzp1_s16(v50, *&v48)).i8[5])
            {
              v47[1] = a4;
            }

            v51 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v48, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v51, vuzp1_s16(v51, v51)).i8[6])
            {
              v47[2] = a4;
            }

            v52 = vuzp1_s16(v51, v51);
            if (vuzp1_s8(v52, v52).i8[7])
            {
              v47[3] = a4;
            }

            v46 += 8;
            v47 += 8;
          }

          while (((v44 + 7) & 0xFFFFFFFFFFFFFFF8) != v46);
        }

        mlx::core::strided_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(v9, v11, v43, v44);
        v9 = &v102[v44 * v43];
        v11 = &v101[v44];
        v101 = v11;
        v102 = v9;
        v45 = v45 + v44;
      }

      while (v45 < *(*a2 + 48));
    }
  }

LABEL_108:
  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }
}

void sub_25A80E5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

unsigned __int16 *mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(unsigned __int16 *result, _WORD *a2, int a3, unsigned __int16 a4)
{
  v4 = a4;
  if (a3 >= 1)
  {
    v5 = a3 + 1;
    do
    {
      v6 = COERCE_FLOAT(v4 << 16) + COERCE_FLOAT(*result << 16);
      v4 = (LODWORD(v6) + (HIWORD(LODWORD(v6)) & 1u) + 0x7FFF) >> 16;
      ++result;
      --v5;
    }

    while (v5 > 1);
  }

  v7 = COERCE_FLOAT(v4 << 16) + COERCE_FLOAT(*a2 << 16);
  *a2 = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
  return result;
}

unsigned __int16 *mlx::core::strided_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(unsigned __int16 *result, _WORD *a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      for (j = a4; j; --j)
      {
        v7 = COERCE_FLOAT(*v5 << 16) + COERCE_FLOAT(*result << 16);
        *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
        ++result;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05C98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05D18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05D98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 **std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3} &,int>(unsigned __int16 **result, int *a2)
{
  v2 = COERCE_FLOAT(**result << 16) + COERCE_FLOAT(*(*result[1] + 2 * *result[2] + 2 * *a2) << 16);
  **result = (LODWORD(v2) + (HIWORD(LODWORD(v2)) & 1u) + 0x7FFF) >> 16;
  return result;
}

unsigned __int16 *mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(unsigned __int16 *result, _WORD *a2, int a3, unsigned __int16 a4)
{
  v4 = a4;
  if (a3 >= 1)
  {
    v5 = a3 + 1;
    do
    {
      v6 = COERCE_FLOAT(v4 << 16) * COERCE_FLOAT(*result << 16);
      v4 = (LODWORD(v6) + (HIWORD(LODWORD(v6)) & 1u) + 0x7FFF) >> 16;
      ++result;
      --v5;
    }

    while (v5 > 1);
  }

  v7 = COERCE_FLOAT(v4 << 16) * COERCE_FLOAT(*a2 << 16);
  *a2 = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
  return result;
}

unsigned __int16 *mlx::core::strided_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(unsigned __int16 *result, _WORD *a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      for (j = a4; j; --j)
      {
        v7 = COERCE_FLOAT(*v5 << 16) * COERCE_FLOAT(*result << 16);
        *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
        ++result;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05E18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05E98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05F18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 **std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3} &,int>(unsigned __int16 **result, int *a2)
{
  v2 = COERCE_FLOAT(**result << 16) * COERCE_FLOAT(*(*result[1] + 2 * *result[2] + 2 * *a2) << 16);
  **result = (LODWORD(v2) + (HIWORD(LODWORD(v2)) & 1u) + 0x7FFF) >> 16;
  return result;
}

void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, double a4)
{
  v140 = *MEMORY[0x277D85DE8];
  v136 = LODWORD(a4);
  mlx::core::get_reduction_plan(a1, a3, &v131);
  v7 = *a1;
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v129 = v10;
  v130 = v8;
  v120 = a2;
  if (v131 == 1)
  {
    v18 = v133;
    if (v133 - v132 != 4)
    {
      goto LABEL_19;
    }

    v19 = *(v9 + 48);
    if (v19)
    {
      v20 = 0;
      v21 = *v132;
      v22 = vdupq_lane_s32(*&a4, 0);
      do
      {
        v23 = v22;
        v10->i32[0] = LODWORD(a4);
        v24 = v22;
        v25 = v21;
        v26 = v8;
        if (v21 >= 8)
        {
          v26 = v8;
          v27 = v21;
          v23 = v22;
          v24 = v22;
          do
          {
            v28 = *v26;
            v29 = *(v26 + 1);
            v26 += 2;
            v24 = vaddq_f32(v24, v29);
            v23 = vaddq_f32(v23, v28);
            v25 = v27 - 8;
            v17 = v27 > 0xF;
            v27 -= 8;
          }

          while (v17);
        }

        v30 = vaddq_f32(v23, v24);
        v31 = vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL))) + *&a4;
        v10->f32[0] = v31;
        if (v25 >= 1)
        {
          v32 = v25 + 1;
          do
          {
            v33 = *v26;
            v26 = (v26 + 4);
            v31 = v31 + v33;
            v10->f32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v20;
        v10 = (v10 + 4);
        v8 = (v8 + 4 * v21);
      }

      while (v20 != v19);
    }

    v129 = v10;
    v130 = v8;
  }

  else
  {
    if (!v131)
    {
      v10->i32[0] = LODWORD(a4);
      v11 = *(v7 + 12);
      v12 = vdupq_lane_s32(*&a4, 0);
      v13 = v12;
      if (v11 < 8)
      {
        v16 = *(v7 + 12);
      }

      else
      {
        do
        {
          v14 = *v8;
          v15 = *(v8 + 1);
          v8 += 2;
          v13 = vaddq_f32(v13, v15);
          v12 = vaddq_f32(v12, v14);
          v16 = v11 - 8;
          v17 = v11 > 0xF;
          v11 -= 8;
        }

        while (v17);
      }

      v43 = vaddq_f32(v12, v13);
      v44 = vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL))) + *&a4;
      v10->f32[0] = v44;
      if (v16 >= 1)
      {
        v45 = v16 + 1;
        do
        {
          v46 = *v8;
          v8 = (v8 + 4);
          v44 = v44 + v46;
          v10->f32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_55;
    }

    if ((v131 & 0xFFFFFFFD) == 1)
    {
      v18 = v133;
LABEL_19:
      v34 = *(v18 - 1);
      v133 = v18 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v35 = *(*a2 + 48);
      if (v133 == v132)
      {
        v48 = v129;
        if (v35)
        {
          v49 = 0;
          v50 = v125;
          v51 = ((v126 - v125) >> 2) - 1;
          v52 = __p;
          v53 = v130;
          v121 = vdupq_lane_s32(*&a4, 0);
          do
          {
            if ((v51 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v51;
              quot = v49;
              do
              {
                v57 = ldiv(quot, v50[v55]);
                quot = v57.quot;
                v54 += v52[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            v48->i32[0] = LODWORD(a4);
            v59 = (v53 + v58);
            if (v34 < 8)
            {
              v61 = v121;
              v62 = v121;
              v65 = v34;
            }

            else
            {
              v60 = v34;
              v61 = v121;
              v62 = v121;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vaddq_f32(v61, v64);
                v62 = vaddq_f32(v62, v63);
                v65 = v60 - 8;
                v17 = v60 > 0xF;
                v60 -= 8;
              }

              while (v17);
            }

            v66 = vaddq_f32(v62, v61);
            v67 = vaddv_f32(vadd_f32(*v66.i8, *&vextq_s8(v66, v66, 8uLL))) + *&a4;
            v48->f32[0] = v67;
            if (v65 >= 1)
            {
              v68 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v67 = v67 + v69;
                v48->f32[0] = v67;
                --v68;
              }

              while (v68 > 1);
            }

            ++v49;
            v48 = (v48 + 4);
          }

          while (v49 != v35);
        }

        v129 = v48;
      }

      else if (v35)
      {
        v36 = v125;
        v37 = (v126 - v125) >> 2;
        v38 = (v37 - 1);
        if (v37 - 1 >= 0)
        {
          v39 = 0;
          v40 = __p;
          v41 = 0;
          do
          {
            v42 = ldiv(v41, v36[v38]);
            v41 = v42.quot;
            v39 += v40[v38--] * v42.rem;
          }

          while (v38 != -1);
        }

        v129->i32[0] = v136;
        v139 = 0;
        operator new();
      }

LABEL_51:
      if (__p)
      {
        v128 = __p;
        operator delete(__p);
      }

      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      goto LABEL_55;
    }

    if (v131 != 2)
    {
      if (v131 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
        if (*(*a2 + 48))
        {
          v70 = v125;
          v71 = (v126 - v125) >> 2;
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

          v137 = 0;
          operator new();
        }

        goto LABEL_51;
      }

      if (v131 != 4)
      {
        goto LABEL_55;
      }

      v47 = v133;
      goto LABEL_79;
    }

    v47 = v133;
    if (v133 - v132 != 4)
    {
LABEL_79:
      v85 = *(v47 - 1);
      v86 = *(v135 - 1);
      v133 = v47 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v87 = *(*a2 + 48);
      if (v133 == v132)
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
            v106 = v125;
            v107 = (v126 - v125) >> 2;
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

            v114 = v129;
            if (v86)
            {
              v115 = 0;
              v116 = &v129->i32[2];
              do
              {
                v117 = vdupq_n_s64(v115);
                v118 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v105)));
                if (vuzp1_s16(v118, *v117.i8).u8[0])
                {
                  *(v116 - 2) = LODWORD(a4);
                }

                if (vuzp1_s16(v118, *&v117).i8[2])
                {
                  *(v116 - 1) = LODWORD(a4);
                }

                v119 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v104)));
                if (vuzp1_s16(v119, v119).i32[1])
                {
                  *v116 = LODWORD(a4);
                  v116[1] = LODWORD(a4);
                }

                v115 += 4;
                v116 += 4;
              }

              while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v115);
            }

            mlx::core::strided_reduce<float,float,mlx::core::SumReduce>((v130 + v113), v114, v85, v86);
            v129 = (v129 + 4 * v86);
            v102 += v86;
            v104 = xmmword_25A99B0C0;
            v103 = v123;
            v105 = xmmword_25A99B0D0;
          }

          while (*(*v120 + 48) > v102);
        }
      }

      else if (v87)
      {
        v88 = xmmword_25A99B0C0;
        v89 = xmmword_25A99B0D0;
        v90 = v125;
        v91 = (v126 - v125) >> 2;
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
          v99 = &v129->i32[2];
          do
          {
            v100 = vdupq_n_s64(v97);
            v101 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v89)));
            if (vuzp1_s16(v101, *v98.i8).u8[0])
            {
              *(v99 - 2) = LODWORD(a4);
            }

            if (vuzp1_s16(v101, *&v98).i8[2])
            {
              *(v99 - 1) = LODWORD(a4);
            }

            if (vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v88)))).i32[1])
            {
              *v99 = LODWORD(a4);
              v99[1] = LODWORD(a4);
            }

            v97 += 4;
            v99 += 4;
          }

          while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v97);
        }

        v138 = 0;
        operator new();
      }

      goto LABEL_51;
    }

    v77 = *(v133 - 1);
    v78 = *(v135 - 1);
    v133 -= 4;
    v135 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v79) = 0;
      v122 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v10->i32[2];
          do
          {
            v82 = vdupq_n_s64(v80);
            v83 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0D0)));
            if (vuzp1_s16(v83, *v82.i8).u8[0])
            {
              *(v81 - 2) = LODWORD(a4);
            }

            if (vuzp1_s16(v83, *&v82).i8[2])
            {
              *(v81 - 1) = LODWORD(a4);
            }

            v84 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0C0)));
            if (vuzp1_s16(v84, v84).i32[1])
            {
              *v81 = LODWORD(a4);
              v81[1] = LODWORD(a4);
            }

            v80 += 4;
            v81 += 4;
          }

          while (((v78 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v80);
        }

        mlx::core::strided_reduce<float,float,mlx::core::SumReduce>(v8, v10, v77, v78);
        v8 = (v130 + 4 * v78 * v77);
        v10 = (v129 + 4 * v78);
        v129 = v10;
        v130 = v8;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_55:
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }
}

void sub_25A80FB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, double a4)
{
  v140 = *MEMORY[0x277D85DE8];
  v136 = LODWORD(a4);
  mlx::core::get_reduction_plan(a1, a3, &v131);
  v7 = *a1;
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v129 = v10;
  v130 = v8;
  v120 = a2;
  if (v131 == 1)
  {
    v18 = v133;
    if (v133 - v132 != 4)
    {
      goto LABEL_19;
    }

    v19 = *(v9 + 48);
    if (v19)
    {
      v20 = 0;
      v21 = *v132;
      v22 = vdupq_lane_s32(*&a4, 0);
      do
      {
        v23 = v22;
        v10->i32[0] = LODWORD(a4);
        v24 = v22;
        v25 = v21;
        v26 = v8;
        if (v21 >= 8)
        {
          v26 = v8;
          v27 = v21;
          v23 = v22;
          v24 = v22;
          do
          {
            v28 = *v26;
            v29 = *(v26 + 1);
            v26 += 2;
            v24 = vmulq_f32(v24, v29);
            v23 = vmulq_f32(v23, v28);
            v25 = v27 - 8;
            v17 = v27 > 0xF;
            v27 -= 8;
          }

          while (v17);
        }

        v30 = vmulq_f32(v23, v24);
        *v30.i8 = vmul_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
        v31 = *&a4 * vmul_lane_f32(*v30.i8, *v30.i8, 1).f32[0];
        v10->f32[0] = v31;
        if (v25 >= 1)
        {
          v32 = v25 + 1;
          do
          {
            v33 = *v26;
            v26 = (v26 + 4);
            v31 = v31 * v33;
            v10->f32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v20;
        v10 = (v10 + 4);
        v8 = (v8 + 4 * v21);
      }

      while (v20 != v19);
    }

    v129 = v10;
    v130 = v8;
  }

  else
  {
    if (!v131)
    {
      v10->i32[0] = LODWORD(a4);
      v11 = *(v7 + 12);
      v12 = vdupq_lane_s32(*&a4, 0);
      v13 = v12;
      if (v11 < 8)
      {
        v16 = *(v7 + 12);
      }

      else
      {
        do
        {
          v14 = *v8;
          v15 = *(v8 + 1);
          v8 += 2;
          v13 = vmulq_f32(v13, v15);
          v12 = vmulq_f32(v12, v14);
          v16 = v11 - 8;
          v17 = v11 > 0xF;
          v11 -= 8;
        }

        while (v17);
      }

      v43 = vmulq_f32(v12, v13);
      *v43.i8 = vmul_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
      v44 = *&a4 * vmul_lane_f32(*v43.i8, *v43.i8, 1).f32[0];
      v10->f32[0] = v44;
      if (v16 >= 1)
      {
        v45 = v16 + 1;
        do
        {
          v46 = *v8;
          v8 = (v8 + 4);
          v44 = v44 * v46;
          v10->f32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_55;
    }

    if ((v131 & 0xFFFFFFFD) == 1)
    {
      v18 = v133;
LABEL_19:
      v34 = *(v18 - 1);
      v133 = v18 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v35 = *(*a2 + 48);
      if (v133 == v132)
      {
        v48 = v129;
        if (v35)
        {
          v49 = 0;
          v50 = v125;
          v51 = ((v126 - v125) >> 2) - 1;
          v52 = __p;
          v53 = v130;
          v121 = vdupq_lane_s32(*&a4, 0);
          do
          {
            if ((v51 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v51;
              quot = v49;
              do
              {
                v57 = ldiv(quot, v50[v55]);
                quot = v57.quot;
                v54 += v52[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            v48->i32[0] = LODWORD(a4);
            v59 = (v53 + v58);
            if (v34 < 8)
            {
              v61 = v121;
              v62 = v121;
              v65 = v34;
            }

            else
            {
              v60 = v34;
              v61 = v121;
              v62 = v121;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vmulq_f32(v61, v64);
                v62 = vmulq_f32(v62, v63);
                v65 = v60 - 8;
                v17 = v60 > 0xF;
                v60 -= 8;
              }

              while (v17);
            }

            v66 = vmulq_f32(v62, v61);
            *v66.i8 = vmul_f32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
            v67 = *&a4 * vmul_lane_f32(*v66.i8, *v66.i8, 1).f32[0];
            v48->f32[0] = v67;
            if (v65 >= 1)
            {
              v68 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v67 = v67 * v69;
                v48->f32[0] = v67;
                --v68;
              }

              while (v68 > 1);
            }

            ++v49;
            v48 = (v48 + 4);
          }

          while (v49 != v35);
        }

        v129 = v48;
      }

      else if (v35)
      {
        v36 = v125;
        v37 = (v126 - v125) >> 2;
        v38 = (v37 - 1);
        if (v37 - 1 >= 0)
        {
          v39 = 0;
          v40 = __p;
          v41 = 0;
          do
          {
            v42 = ldiv(v41, v36[v38]);
            v41 = v42.quot;
            v39 += v40[v38--] * v42.rem;
          }

          while (v38 != -1);
        }

        v129->i32[0] = v136;
        v139 = 0;
        operator new();
      }

LABEL_51:
      if (__p)
      {
        v128 = __p;
        operator delete(__p);
      }

      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      goto LABEL_55;
    }

    if (v131 != 2)
    {
      if (v131 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
        if (*(*a2 + 48))
        {
          v70 = v125;
          v71 = (v126 - v125) >> 2;
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

          v137 = 0;
          operator new();
        }

        goto LABEL_51;
      }

      if (v131 != 4)
      {
        goto LABEL_55;
      }

      v47 = v133;
      goto LABEL_79;
    }

    v47 = v133;
    if (v133 - v132 != 4)
    {
LABEL_79:
      v85 = *(v47 - 1);
      v86 = *(v135 - 1);
      v133 = v47 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v87 = *(*a2 + 48);
      if (v133 == v132)
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
            v106 = v125;
            v107 = (v126 - v125) >> 2;
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

            v114 = v129;
            if (v86)
            {
              v115 = 0;
              v116 = &v129->i32[2];
              do
              {
                v117 = vdupq_n_s64(v115);
                v118 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v105)));
                if (vuzp1_s16(v118, *v117.i8).u8[0])
                {
                  *(v116 - 2) = LODWORD(a4);
                }

                if (vuzp1_s16(v118, *&v117).i8[2])
                {
                  *(v116 - 1) = LODWORD(a4);
                }

                v119 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v117, v104)));
                if (vuzp1_s16(v119, v119).i32[1])
                {
                  *v116 = LODWORD(a4);
                  v116[1] = LODWORD(a4);
                }

                v115 += 4;
                v116 += 4;
              }

              while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v115);
            }

            mlx::core::strided_reduce<float,float,mlx::core::ProdReduce>((v130 + v113), v114, v85, v86);
            v129 = (v129 + 4 * v86);
            v102 += v86;
            v104 = xmmword_25A99B0C0;
            v103 = v123;
            v105 = xmmword_25A99B0D0;
          }

          while (*(*v120 + 48) > v102);
        }
      }

      else if (v87)
      {
        v88 = xmmword_25A99B0C0;
        v89 = xmmword_25A99B0D0;
        v90 = v125;
        v91 = (v126 - v125) >> 2;
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
          v99 = &v129->i32[2];
          do
          {
            v100 = vdupq_n_s64(v97);
            v101 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v89)));
            if (vuzp1_s16(v101, *v98.i8).u8[0])
            {
              *(v99 - 2) = LODWORD(a4);
            }

            if (vuzp1_s16(v101, *&v98).i8[2])
            {
              *(v99 - 1) = LODWORD(a4);
            }

            if (vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, v88)))).i32[1])
            {
              *v99 = LODWORD(a4);
              v99[1] = LODWORD(a4);
            }

            v97 += 4;
            v99 += 4;
          }

          while (((v86 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v97);
        }

        v138 = 0;
        operator new();
      }

      goto LABEL_51;
    }

    v77 = *(v133 - 1);
    v78 = *(v135 - 1);
    v133 -= 4;
    v135 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v79) = 0;
      v122 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v10->i32[2];
          do
          {
            v82 = vdupq_n_s64(v80);
            v83 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0D0)));
            if (vuzp1_s16(v83, *v82.i8).u8[0])
            {
              *(v81 - 2) = LODWORD(a4);
            }

            if (vuzp1_s16(v83, *&v82).i8[2])
            {
              *(v81 - 1) = LODWORD(a4);
            }

            v84 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v82, xmmword_25A99B0C0)));
            if (vuzp1_s16(v84, v84).i32[1])
            {
              *v81 = LODWORD(a4);
              v81[1] = LODWORD(a4);
            }

            v80 += 4;
            v81 += 4;
          }

          while (((v78 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v80);
        }

        mlx::core::strided_reduce<float,float,mlx::core::ProdReduce>(v8, v10, v77, v78);
        v8 = (v130 + 4 * v78 * v77);
        v10 = (v129 + 4 * v78);
        v129 = v10;
        v130 = v8;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_55:
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }
}

void sub_25A8105D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

_OWORD *mlx::core::strided_reduce<float,float,mlx::core::SumReduce>(_OWORD *result, float32x4_t *a2, int a3, unint64_t a4)
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
          v9 = vaddq_f32(v5[1], v8);
          *v5 = vaddq_f32(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v10 = *result;
        result = (result + 4);
        v5->f32[0] = v5->f32[0] + v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05F98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = (**(a1 + 8) + 4 * **(a1 + 16) + 4 * *a2);
  v3 = **(a1 + 24);
  v4 = **(a1 + 32);
  v5 = *(a1 + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(a1 + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vaddq_f32(v7, v9);
      v6 = vaddq_f32(v6, v8);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = vaddq_f32(v6, v7);
  result = *v3 + vaddv_f32(vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)));
  *v3 = result;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v15 = *v2;
      v2 = (v2 + 4);
      result = result + v15;
      *v3 = result;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06018;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06098;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  result = *v2 + *(**(a1 + 16) + 4 * **(a1 + 24) + 4 * *a2);
  *v2 = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<float,float,mlx::core::ProdReduce>(_OWORD *result, float32x4_t *a2, int a3, unint64_t a4)
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
          v9 = vmulq_f32(v5[1], v8);
          *v5 = vmulq_f32(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v10 = *result;
        result = (result + 4);
        v5->f32[0] = v5->f32[0] * v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06118;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = (**(a1 + 8) + 4 * **(a1 + 16) + 4 * *a2);
  v3 = **(a1 + 24);
  v4 = **(a1 + 32);
  v5 = *(a1 + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(a1 + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vmulq_f32(v7, v9);
      v6 = vmulq_f32(v6, v8);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = vmulq_f32(v6, v7);
  *v12.i8 = vmul_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
  result = *v3 * vmul_lane_f32(*v12.i8, *v12.i8, 1).f32[0];
  *v3 = result;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v15 = *v2;
      v2 = (v2 + 4);
      result = result * v15;
      *v3 = result;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06198;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06218;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  result = *v2 * *(**(a1 + 16) + 4 * **(a1 + 24) + 4 * *a2);
  *v2 = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, double a4)
{
  v130 = *MEMORY[0x277D85DE8];
  v126 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v121);
  v7 = *a1;
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v119 = v10;
  v120 = v8;
  v110 = a2;
  if (v121 == 1)
  {
    v18 = v123;
    if (v123 - v122 != 4)
    {
      goto LABEL_19;
    }

    v19 = *(v9 + 48);
    if (v19)
    {
      v20 = 0;
      v21 = *v122;
      v22 = vdupq_lane_s64(*&a4, 0);
      do
      {
        v23 = v22;
        v10->f64[0] = a4;
        v24 = v22;
        v25 = v21;
        v26 = v8;
        if (v21 >= 4)
        {
          v26 = v8;
          v27 = v21;
          v23 = v22;
          v24 = v22;
          do
          {
            v28 = *v26;
            v29 = *(v26 + 1);
            v26 += 2;
            v24 = vaddq_f64(v24, v29);
            v23 = vaddq_f64(v23, v28);
            v25 = v27 - 4;
            v17 = v27 > 7;
            v27 -= 4;
          }

          while (v17);
        }

        v30 = vaddvq_f64(vaddq_f64(v23, v24)) + a4;
        v10->f64[0] = v30;
        if (v25 >= 1)
        {
          v31 = v25 + 1;
          do
          {
            v32 = *v26;
            v26 = (v26 + 8);
            v30 = v30 + v32;
            v10->f64[0] = v30;
            --v31;
          }

          while (v31 > 1);
        }

        ++v20;
        v10 = (v10 + 8);
        v8 = (v8 + 8 * v21);
      }

      while (v20 != v19);
    }

    v119 = v10;
    v120 = v8;
  }

  else
  {
    if (!v121)
    {
      v10->f64[0] = a4;
      v11 = *(v7 + 12);
      v12 = vdupq_lane_s64(*&a4, 0);
      v13 = v12;
      if (v11 < 4)
      {
        v16 = *(v7 + 12);
      }

      else
      {
        do
        {
          v14 = *v8;
          v15 = *(v8 + 1);
          v8 += 2;
          v13 = vaddq_f64(v13, v15);
          v12 = vaddq_f64(v12, v14);
          v16 = v11 - 4;
          v17 = v11 > 7;
          v11 -= 4;
        }

        while (v17);
      }

      v42 = vaddvq_f64(vaddq_f64(v12, v13)) + a4;
      v10->f64[0] = v42;
      if (v16 >= 1)
      {
        v43 = v16 + 1;
        do
        {
          v44 = *v8;
          v8 = (v8 + 8);
          v42 = v42 + v44;
          v10->f64[0] = v42;
          --v43;
        }

        while (v43 > 1);
      }

      goto LABEL_55;
    }

    if ((v121 & 0xFFFFFFFD) == 1)
    {
      v18 = v123;
LABEL_19:
      v33 = *(v18 - 1);
      v123 = v18 - 4;
      v125 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v115);
      v34 = *(*a2 + 48);
      if (v123 == v122)
      {
        v46 = v119;
        if (v34)
        {
          v47 = 0;
          v48 = v115;
          v49 = ((v116 - v115) >> 2) - 1;
          v50 = __p;
          v51 = v120;
          v111 = vdupq_lane_s64(*&a4, 0);
          do
          {
            if ((v49 & 0x80000000) != 0)
            {
              v56 = 0;
            }

            else
            {
              v52 = 0;
              v53 = v49;
              quot = v47;
              do
              {
                v55 = ldiv(quot, v48[v53]);
                quot = v55.quot;
                v52 += v50[v53--] * v55.rem;
              }

              while (v53 != -1);
              v56 = 8 * v52;
            }

            *v46 = a4;
            v57 = (v51 + v56);
            if (v33 < 4)
            {
              v59 = v111;
              v60 = v111;
              v63 = v33;
            }

            else
            {
              v58 = v33;
              v59 = v111;
              v60 = v111;
              do
              {
                v61 = *v57;
                v62 = *(v57 + 1);
                v57 += 2;
                v59 = vaddq_f64(v59, v62);
                v60 = vaddq_f64(v60, v61);
                v63 = v58 - 4;
                v17 = v58 > 7;
                v58 -= 4;
              }

              while (v17);
            }

            v64 = vaddvq_f64(vaddq_f64(v60, v59)) + a4;
            *v46 = v64;
            if (v63 >= 1)
            {
              v65 = v63 + 1;
              do
              {
                v66 = *v57;
                v57 = (v57 + 8);
                v64 = v64 + v66;
                *v46 = v64;
                --v65;
              }

              while (v65 > 1);
            }

            ++v47;
            ++v46;
          }

          while (v47 != v34);
        }

        v119 = v46;
      }

      else if (v34)
      {
        v35 = v115;
        v36 = (v116 - v115) >> 2;
        v37 = (v36 - 1);
        if (v36 - 1 >= 0)
        {
          v38 = 0;
          v39 = __p;
          v40 = 0;
          do
          {
            v41 = ldiv(v40, v35[v37]);
            v40 = v41.quot;
            v38 += v39[v37--] * v41.rem;
          }

          while (v37 != -1);
        }

        v119->f64[0] = v126;
        v129 = 0;
        operator new();
      }

LABEL_51:
      if (__p)
      {
        v118 = __p;
        operator delete(__p);
      }

      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      goto LABEL_55;
    }

    if (v121 != 2)
    {
      if (v121 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v115);
        if (*(*a2 + 48))
        {
          v67 = v115;
          v68 = (v116 - v115) >> 2;
          v69 = (v68 - 1);
          if (v68 - 1 >= 0)
          {
            v70 = 0;
            v71 = __p;
            v72 = 0;
            do
            {
              v73 = ldiv(v72, v67[v69]);
              v72 = v73.quot;
              v70 += v71[v69--] * v73.rem;
            }

            while (v69 != -1);
          }

          v127 = 0;
          operator new();
        }

        goto LABEL_51;
      }

      if (v121 != 4)
      {
        goto LABEL_55;
      }

      v45 = v123;
      goto LABEL_77;
    }

    v45 = v123;
    if (v123 - v122 != 4)
    {
LABEL_77:
      v80 = *(v45 - 1);
      v81 = *(v125 - 1);
      v123 = v45 - 4;
      v125 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v115);
      v82 = *(*a2 + 48);
      if (v123 == v122)
      {
        if (v82)
        {
          v95 = 0;
          v96 = vdupq_n_s64(v81 - 1);
          v97 = xmmword_25A99B0D0;
          v113 = v96;
          do
          {
            v98 = v115;
            v99 = (v116 - v115) >> 2;
            v100 = (v99 - 1);
            if (v99 - 1 < 0)
            {
              v105 = 0;
            }

            else
            {
              v101 = 0;
              v102 = __p;
              v103 = v95;
              do
              {
                v104 = ldiv(v103, v98[v100]);
                v103 = v104.quot;
                v101 += v102[v100--] * v104.rem;
              }

              while (v100 != -1);
              v105 = 8 * v101;
              v97 = xmmword_25A99B0D0;
              v96 = v113;
            }

            v106 = v119;
            if (v81)
            {
              v107 = 0;
              v108 = &v119->f64[1];
              do
              {
                v109 = vmovn_s64(vcgeq_u64(v96, vorrq_s8(vdupq_n_s64(v107), v97)));
                if (v109.i8[0])
                {
                  *(v108 - 1) = a4;
                }

                if (v109.i8[4])
                {
                  *v108 = a4;
                }

                v107 += 2;
                v108 += 2;
              }

              while (((v81 + 1) & 0xFFFFFFFFFFFFFFFELL) != v107);
            }

            mlx::core::strided_reduce<double,double,mlx::core::SumReduce>((v120 + v105), v106, v80, v81);
            v119 = (v119 + 8 * v81);
            v95 += v81;
            v97 = xmmword_25A99B0D0;
            v96 = v113;
          }

          while (*(*v110 + 48) > v95);
        }
      }

      else if (v82)
      {
        v83 = xmmword_25A99B0D0;
        v84 = v115;
        v85 = (v116 - v115) >> 2;
        v86 = (v85 - 1);
        if (v85 - 1 >= 0)
        {
          v87 = 0;
          v88 = __p;
          v89 = 0;
          do
          {
            v90 = ldiv(v89, v84[v86]);
            v89 = v90.quot;
            v87 += v88[v86--] * v90.rem;
          }

          while (v86 != -1);
          v83 = xmmword_25A99B0D0;
        }

        if (v81)
        {
          v91 = 0;
          v92 = vdupq_n_s64(v81 - 1);
          v93 = &v119->f64[1];
          do
          {
            v94 = vmovn_s64(vcgeq_u64(v92, vorrq_s8(vdupq_n_s64(v91), v83)));
            if (v94.i8[0])
            {
              *(v93 - 1) = a4;
            }

            if (v94.i8[4])
            {
              *v93 = a4;
            }

            v91 += 2;
            v93 += 2;
          }

          while (((v81 + 1) & 0xFFFFFFFFFFFFFFFELL) != v91);
        }

        v128 = 0;
        operator new();
      }

      goto LABEL_51;
    }

    v74 = *(v123 - 1);
    v75 = *(v125 - 1);
    v123 -= 4;
    v125 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v76) = 0;
      v112 = vdupq_n_s64(v75 - 1);
      do
      {
        if (v75)
        {
          v77 = 0;
          v78 = &v10->f64[1];
          do
          {
            v79 = vmovn_s64(vcgeq_u64(v112, vorrq_s8(vdupq_n_s64(v77), xmmword_25A99B0D0)));
            if (v79.i8[0])
            {
              *(v78 - 1) = a4;
            }

            if (v79.i8[4])
            {
              *v78 = a4;
            }

            v77 += 2;
            v78 += 2;
          }

          while (((v75 + 1) & 0xFFFFFFFFFFFFFFFELL) != v77);
        }

        mlx::core::strided_reduce<double,double,mlx::core::SumReduce>(v8, v10, v74, v75);
        v8 = (v120 + 8 * v75 * v74);
        v10 = (v119 + 8 * v75);
        v119 = v10;
        v120 = v8;
        v76 = v76 + v75;
      }

      while (v76 < *(*a2 + 48));
    }
  }

LABEL_55:
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }
}

void sub_25A8118B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, double a4)
{
  v133 = *MEMORY[0x277D85DE8];
  v129 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v124);
  v7 = *a1;
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v122 = v10;
  v123 = v8;
  v113 = a2;
  if (v124 == 1)
  {
    v18 = v126;
    if (v126 - v125 != 4)
    {
      goto LABEL_19;
    }

    v19 = *(v9 + 48);
    if (v19)
    {
      v20 = 0;
      v21 = *v125;
      v22 = vdupq_lane_s64(*&a4, 0);
      do
      {
        v23 = v22;
        v10->f64[0] = a4;
        v24 = v22;
        v25 = v21;
        v26 = v8;
        if (v21 >= 4)
        {
          v26 = v8;
          v27 = v21;
          v23 = v22;
          v24 = v22;
          do
          {
            v28 = *v26;
            v29 = *(v26 + 1);
            v26 += 2;
            v24 = vmulq_f64(v24, v29);
            v23 = vmulq_f64(v23, v28);
            v25 = v27 - 4;
            v17 = v27 > 7;
            v27 -= 4;
          }

          while (v17);
        }

        v30 = vmulq_f64(v23, v24);
        v31 = a4 * vmulq_laneq_f64(v30, v30, 1).f64[0];
        v10->f64[0] = v31;
        if (v25 >= 1)
        {
          v32 = v25 + 1;
          do
          {
            v33 = *v26;
            v26 = (v26 + 8);
            v31 = v31 * v33;
            v10->f64[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v20;
        v10 = (v10 + 8);
        v8 = (v8 + 8 * v21);
      }

      while (v20 != v19);
    }

    v122 = v10;
    v123 = v8;
  }

  else
  {
    if (!v124)
    {
      v10->f64[0] = a4;
      v11 = *(v7 + 12);
      v12 = vdupq_lane_s64(*&a4, 0);
      v13 = v12;
      if (v11 < 4)
      {
        v16 = *(v7 + 12);
      }

      else
      {
        do
        {
          v14 = *v8;
          v15 = *(v8 + 1);
          v8 += 2;
          v13 = vmulq_f64(v13, v15);
          v12 = vmulq_f64(v12, v14);
          v16 = v11 - 4;
          v17 = v11 > 7;
          v11 -= 4;
        }

        while (v17);
      }

      v43 = vmulq_f64(v12, v13);
      v44 = a4 * vmulq_laneq_f64(v43, v43, 1).f64[0];
      v10->f64[0] = v44;
      if (v16 >= 1)
      {
        v45 = v16 + 1;
        do
        {
          v46 = *v8;
          v8 = (v8 + 8);
          v44 = v44 * v46;
          v10->f64[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_55;
    }

    if ((v124 & 0xFFFFFFFD) == 1)
    {
      v18 = v126;
LABEL_19:
      v34 = *(v18 - 1);
      v126 = v18 - 4;
      v128 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v118);
      v35 = *(*a2 + 48);
      if (v126 == v125)
      {
        v48 = v122;
        if (v35)
        {
          v49 = 0;
          v50 = v118;
          v51 = ((v119 - v118) >> 2) - 1;
          v52 = __p;
          v53 = v123;
          v114 = vdupq_lane_s64(*&a4, 0);
          do
          {
            if ((v51 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v51;
              quot = v49;
              do
              {
                v57 = ldiv(quot, v50[v55]);
                quot = v57.quot;
                v54 += v52[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 8 * v54;
            }

            *v48 = a4;
            v59 = (v53 + v58);
            if (v34 < 4)
            {
              v61 = v114;
              v62 = v114;
              v65 = v34;
            }

            else
            {
              v60 = v34;
              v61 = v114;
              v62 = v114;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vmulq_f64(v61, v64);
                v62 = vmulq_f64(v62, v63);
                v65 = v60 - 4;
                v17 = v60 > 7;
                v60 -= 4;
              }

              while (v17);
            }

            v66 = vmulq_f64(v62, v61);
            v67 = a4 * vmulq_laneq_f64(v66, v66, 1).f64[0];
            *v48 = v67;
            if (v65 >= 1)
            {
              v68 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 8);
                v67 = v67 * v69;
                *v48 = v67;
                --v68;
              }

              while (v68 > 1);
            }

            ++v49;
            ++v48;
          }

          while (v49 != v35);
        }

        v122 = v48;
      }

      else if (v35)
      {
        v36 = v118;
        v37 = (v119 - v118) >> 2;
        v38 = (v37 - 1);
        if (v37 - 1 >= 0)
        {
          v39 = 0;
          v40 = __p;
          v41 = 0;
          do
          {
            v42 = ldiv(v41, v36[v38]);
            v41 = v42.quot;
            v39 += v40[v38--] * v42.rem;
          }

          while (v38 != -1);
        }

        v122->f64[0] = v129;
        v132 = 0;
        operator new();
      }

LABEL_51:
      if (__p)
      {
        v121 = __p;
        operator delete(__p);
      }

      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      goto LABEL_55;
    }

    if (v124 != 2)
    {
      if (v124 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v118);
        if (*(*a2 + 48))
        {
          v70 = v118;
          v71 = (v119 - v118) >> 2;
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

          v130 = 0;
          operator new();
        }

        goto LABEL_51;
      }

      if (v124 != 4)
      {
        goto LABEL_55;
      }

      v47 = v126;
      goto LABEL_77;
    }

    v47 = v126;
    if (v126 - v125 != 4)
    {
LABEL_77:
      v83 = *(v47 - 1);
      v84 = *(v128 - 1);
      v126 = v47 - 4;
      v128 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v118);
      v85 = *(*a2 + 48);
      if (v126 == v125)
      {
        if (v85)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v84 - 1);
          v100 = xmmword_25A99B0D0;
          v116 = v99;
          do
          {
            v101 = v118;
            v102 = (v119 - v118) >> 2;
            v103 = (v102 - 1);
            if (v102 - 1 < 0)
            {
              v108 = 0;
            }

            else
            {
              v104 = 0;
              v105 = __p;
              v106 = v98;
              do
              {
                v107 = ldiv(v106, v101[v103]);
                v106 = v107.quot;
                v104 += v105[v103--] * v107.rem;
              }

              while (v103 != -1);
              v108 = 8 * v104;
              v100 = xmmword_25A99B0D0;
              v99 = v116;
            }

            v109 = v122;
            if (v84)
            {
              v110 = 0;
              v111 = &v122->f64[1];
              do
              {
                v112 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(vdupq_n_s64(v110), v100)));
                if (v112.i8[0])
                {
                  *(v111 - 1) = a4;
                }

                if (v112.i8[4])
                {
                  *v111 = a4;
                }

                v110 += 2;
                v111 += 2;
              }

              while (((v84 + 1) & 0xFFFFFFFFFFFFFFFELL) != v110);
            }

            mlx::core::strided_reduce<double,double,mlx::core::ProdReduce>((v123 + v108), v109, v83, v84);
            v122 = (v122 + 8 * v84);
            v98 += v84;
            v100 = xmmword_25A99B0D0;
            v99 = v116;
          }

          while (*(*v113 + 48) > v98);
        }
      }

      else if (v85)
      {
        v86 = xmmword_25A99B0D0;
        v87 = v118;
        v88 = (v119 - v118) >> 2;
        v89 = (v88 - 1);
        if (v88 - 1 >= 0)
        {
          v90 = 0;
          v91 = __p;
          v92 = 0;
          do
          {
            v93 = ldiv(v92, v87[v89]);
            v92 = v93.quot;
            v90 += v91[v89--] * v93.rem;
          }

          while (v89 != -1);
          v86 = xmmword_25A99B0D0;
        }

        if (v84)
        {
          v94 = 0;
          v95 = vdupq_n_s64(v84 - 1);
          v96 = &v122->f64[1];
          do
          {
            v97 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(vdupq_n_s64(v94), v86)));
            if (v97.i8[0])
            {
              *(v96 - 1) = a4;
            }

            if (v97.i8[4])
            {
              *v96 = a4;
            }

            v94 += 2;
            v96 += 2;
          }

          while (((v84 + 1) & 0xFFFFFFFFFFFFFFFELL) != v94);
        }

        v131 = 0;
        operator new();
      }

      goto LABEL_51;
    }

    v77 = *(v126 - 1);
    v78 = *(v128 - 1);
    v126 -= 4;
    v128 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v79) = 0;
      v115 = vdupq_n_s64(v78 - 1);
      do
      {
        if (v78)
        {
          v80 = 0;
          v81 = &v10->f64[1];
          do
          {
            v82 = vmovn_s64(vcgeq_u64(v115, vorrq_s8(vdupq_n_s64(v80), xmmword_25A99B0D0)));
            if (v82.i8[0])
            {
              *(v81 - 1) = a4;
            }

            if (v82.i8[4])
            {
              *v81 = a4;
            }

            v80 += 2;
            v81 += 2;
          }

          while (((v78 + 1) & 0xFFFFFFFFFFFFFFFELL) != v80);
        }

        mlx::core::strided_reduce<double,double,mlx::core::ProdReduce>(v8, v10, v77, v78);
        v8 = (v123 + 8 * v78 * v77);
        v10 = (v122 + 8 * v78);
        v122 = v10;
        v123 = v8;
        v79 = v79 + v78;
      }

      while (v79 < *(*a2 + 48));
    }
  }

LABEL_55:
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }
}

void sub_25A81227C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

_OWORD *mlx::core::strided_reduce<double,double,mlx::core::SumReduce>(_OWORD *result, float64x2_t *a2, int a3, unint64_t a4)
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
          v9 = vaddq_f64(v5[1], v8);
          *v5 = vaddq_f64(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v10 = *result;
        result = (result + 8);
        v5->f64[0] = v5->f64[0] + v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = (**(a1 + 8) + 8 * **(a1 + 16) + 8 * *a2);
  v3 = **(a1 + 24);
  v4 = **(a1 + 32);
  v5 = *(a1 + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(a1 + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vaddq_f64(v7, v9);
      v6 = vaddq_f64(v6, v8);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  result = *v3 + vaddvq_f64(vaddq_f64(v6, v7));
  *v3 = result;
  if (v10 >= 1)
  {
    v13 = v10 + 1;
    do
    {
      v14 = *v2;
      v2 = (v2 + 8);
      result = result + v14;
      *v3 = result;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06318;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  result = *v2 + *(**(a1 + 16) + 8 * **(a1 + 24) + 8 * *a2);
  *v2 = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<double,double,mlx::core::ProdReduce>(_OWORD *result, float64x2_t *a2, int a3, unint64_t a4)
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
          v9 = vmulq_f64(v5[1], v8);
          *v5 = vmulq_f64(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v10 = *result;
        result = (result + 8);
        v5->f64[0] = v5->f64[0] * v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06418;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = (**(a1 + 8) + 8 * **(a1 + 16) + 8 * *a2);
  v3 = **(a1 + 24);
  v4 = **(a1 + 32);
  v5 = *(a1 + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(a1 + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vmulq_f64(v7, v9);
      v6 = vmulq_f64(v6, v8);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = vmulq_f64(v6, v7);
  result = *v3 * vmulq_laneq_f64(v12, v12, 1).f64[0];
  *v3 = result;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v15 = *v2;
      v2 = (v2 + 8);
      result = result * v15;
      *v3 = result;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06498;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06518;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  result = *v2 * *(**(a1 + 16) + 8 * **(a1 + 24) + 8 * *a2);
  *v2 = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, float a4, float a5)
{
  v121 = *MEMORY[0x277D85DE8];
  v117 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  mlx::core::get_reduction_plan(a1, a3, &v112);
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v110 = v10;
  v111 = v8;
  v105 = a2;
  if (v112 == 1)
  {
    v16 = v114;
    if (v114 - v113 != 4)
    {
      goto LABEL_17;
    }

    if (*(v9 + 48))
    {
      v17 = 0;
      v18 = *v113;
      v19 = v117;
      v20 = v117;
      do
      {
        *v10 = v19;
        v21 = v20;
        if (v18 >= 1)
        {
          v22 = v18 + 1;
          v21 = v20;
          do
          {
            v23 = *v8++;
            v21 = vadd_f32(v21, v23);
            --v22;
          }

          while (v22 > 1);
        }

        *v10 = vadd_f32(v21, v20);
        ++v17;
        v10 = v110 + 1;
        v8 = &v111[v18];
        ++v110;
        v111 = v8;
      }

      while (*(*a2 + 48) > v17);
    }
  }

  else
  {
    if (!v112)
    {
      v11 = v117;
      *v10 = v117;
      v12 = *(*a1 + 12);
      v13 = v11;
      if (v12 >= 1)
      {
        v14 = v12 + 1;
        v13 = v11;
        do
        {
          v15 = *v8++;
          v13 = vadd_f32(v13, v15);
          --v14;
        }

        while (v14 > 1);
      }

      *v10 = vadd_f32(v13, v11);
      goto LABEL_105;
    }

    if ((v112 & 0xFFFFFFFD) == 1)
    {
      v16 = v114;
LABEL_17:
      v24 = *(v16 - 1);
      v114 = v16 - 4;
      v116 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v106);
      v25 = *(*a2 + 48);
      if (v114 == v113)
      {
        if (v25)
        {
          v34 = 0;
          do
          {
            v35 = v106;
            v36 = (v107 - v106) >> 2;
            v37 = (v36 - 1);
            if (v36 - 1 < 0)
            {
              v42 = 0;
            }

            else
            {
              v38 = 0;
              v39 = __p;
              quot = v34;
              do
              {
                v41 = ldiv(quot, v35[v37]);
                quot = v41.quot;
                v38 += v39[v37--] * v41.rem;
              }

              while (v37 != -1);
              v42 = v38;
              a2 = v105;
            }

            v43 = v117;
            *v110 = v117;
            v44 = v43;
            if (v24 >= 1)
            {
              v45 = &v111[v42];
              v46 = v24 + 1;
              do
              {
                v47 = *v45++;
                v44 = vadd_f32(v44, v47);
                --v46;
              }

              while (v46 > 1);
            }

            *v110 = vadd_f32(v44, *v110);
            ++v34;
            ++v110;
          }

          while (*(*a2 + 48) > v34);
        }
      }

      else if (v25)
      {
        v26 = v106;
        v27 = (v107 - v106) >> 2;
        v28 = (v27 - 1);
        if (v27 - 1 >= 0)
        {
          v29 = 0;
          v30 = __p;
          v31 = 0;
          do
          {
            v32 = ldiv(v31, v26[v28]);
            v31 = v32.quot;
            v29 += v30[v28--] * v32.rem;
          }

          while (v28 != -1);
        }

        *v110 = v117;
        v120 = 0;
        operator new();
      }

LABEL_101:
      if (__p)
      {
        v109 = __p;
        operator delete(__p);
      }

      if (v106)
      {
        v107 = v106;
        operator delete(v106);
      }

      goto LABEL_105;
    }

    if (v112 != 2)
    {
      if (v112 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v106);
        if (*(*a2 + 48))
        {
          v48 = v106;
          v49 = (v107 - v106) >> 2;
          v50 = (v49 - 1);
          if (v49 - 1 >= 0)
          {
            v51 = 0;
            v52 = __p;
            v53 = 0;
            do
            {
              v54 = ldiv(v53, v48[v50]);
              v53 = v54.quot;
              v51 += v52[v50--] * v54.rem;
            }

            while (v50 != -1);
          }

          v118 = 0;
          operator new();
        }

        goto LABEL_101;
      }

      if (v112 != 4)
      {
        goto LABEL_105;
      }

      v33 = v114;
      goto LABEL_64;
    }

    v33 = v114;
    if (v114 - v113 != 4)
    {
LABEL_64:
      v67 = *(v33 - 1);
      v68 = *(v116 - 1);
      v114 = v33 - 4;
      v116 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v106);
      v69 = *(*v105 + 48);
      if (v114 == v113)
      {
        if (v69)
        {
          v83 = 0;
          v84 = vdupq_n_s64(v68 - 1);
          v85 = xmmword_25A99B0D0;
          v104 = v84;
          do
          {
            v86 = v106;
            v87 = (v107 - v106) >> 2;
            v88 = (v87 - 1);
            if (v87 - 1 < 0)
            {
              v93 = 0;
            }

            else
            {
              v89 = 0;
              v90 = __p;
              v91 = v83;
              do
              {
                v92 = ldiv(v91, v86[v88]);
                v91 = v92.quot;
                v89 += v90[v88--] * v92.rem;
              }

              while (v88 != -1);
              v93 = v89;
              v85 = xmmword_25A99B0D0;
              v84 = v104;
            }

            v94 = v110;
            if (v68)
            {
              v95 = 0;
              v96 = v117;
              v97 = v110 + 1;
              do
              {
                v98 = vmovn_s64(vcgeq_u64(v84, vorrq_s8(vdupq_n_s64(v95), v85)));
                if (v98.i8[0])
                {
                  v97[-1] = v96;
                }

                if (v98.i8[4])
                {
                  *v97 = v96;
                }

                v95 += 2;
                v97 += 2;
              }

              while (((v68 + 1) & 0xFFFFFFFFFFFFFFFELL) != v95);
              v94 = v110;
            }

            if (v67 >= 1)
            {
              v99 = 0;
              v100 = &v111[v93];
              do
              {
                if (v68)
                {
                  v101 = v94;
                  v102 = v68;
                  do
                  {
                    v103 = *v100++;
                    *v101 = vadd_f32(*v101, v103);
                    ++v101;
                    --v102;
                  }

                  while (v102);
                }

                ++v99;
              }

              while (v99 != v67);
              v94 = v110;
            }

            v110 = &v94[v68];
            v83 += v68;
          }

          while (*(*v105 + 48) > v83);
        }
      }

      else if (v69)
      {
        v70 = xmmword_25A99B0D0;
        v71 = v106;
        v72 = (v107 - v106) >> 2;
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
          v70 = xmmword_25A99B0D0;
        }

        if (v68)
        {
          v78 = 0;
          v79 = v117;
          v80 = vdupq_n_s64(v68 - 1);
          v81 = v110 + 1;
          do
          {
            v82 = vmovn_s64(vcgeq_u64(v80, vorrq_s8(vdupq_n_s64(v78), v70)));
            if (v82.i8[0])
            {
              v81[-1] = v79;
            }

            if (v82.i8[4])
            {
              *v81 = v79;
            }

            v78 += 2;
            v81 += 2;
          }

          while (((v68 + 1) & 0xFFFFFFFFFFFFFFFELL) != v78);
        }

        v119 = 0;
        operator new();
      }

      goto LABEL_101;
    }

    v55 = *(v114 - 1);
    v56 = *(v116 - 1);
    v114 -= 4;
    v116 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v57) = 0;
      v58 = vdupq_n_s64(v56 - 1);
      do
      {
        if (v56)
        {
          v59 = 0;
          v60 = v117;
          v61 = &v10[1];
          do
          {
            v62 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(vdupq_n_s64(v59), xmmword_25A99B0D0)));
            if (v62.i8[0])
            {
              *(v61 - 1) = v60;
            }

            if (v62.i8[4])
            {
              *v61 = v60;
            }

            v59 += 2;
            v61 += 2;
          }

          while (((v56 + 1) & 0xFFFFFFFFFFFFFFFELL) != v59);
          v10 = v110;
          v8 = v111;
        }

        if (v55 >= 1)
        {
          v63 = 0;
          do
          {
            if (v56)
            {
              v64 = v10;
              v65 = v56;
              do
              {
                v66 = *v8++;
                *v64 = vadd_f32(*v64, v66);
                ++v64;
                --v65;
              }

              while (v65);
            }

            ++v63;
          }

          while (v63 != v55);
          v10 = v110;
          v8 = v111;
        }

        v8 += v56 * v55;
        v10 += v56;
        v110 = v10;
        v111 = v8;
        v57 = v57 + v56;
      }

      while (v57 < *(*a2 + 48));
    }
  }

LABEL_105:
  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }
}

void sub_25A8134F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, float a4, float a5)
{
  v101 = *MEMORY[0x277D85DE8];
  v97 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  mlx::core::get_reduction_plan(a1, a3, &v92);
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v90 = v10;
  v91 = v8;
  v84 = a2;
  if (v92 == 1)
  {
    v12 = v94;
    if (v94 - v93 != 4)
    {
      goto LABEL_11;
    }

    if (*(v9 + 48))
    {
      v13 = 0;
      v14 = *v93;
      v15 = v97;
      v16 = v97;
      do
      {
        *v10 = v15;
        mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(v8, v10, v14, *&v16, *(&v16 + 1));
        ++v13;
        v10 = v90 + 1;
        v8 = &v91[v14];
        ++v90;
        v91 = v8;
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v92)
    {
      v11 = v97;
      *v10 = v97;
      mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(v8, v10, *(*a1 + 12), *&v11, *(&v11 + 1));
      goto LABEL_82;
    }

    if ((v92 & 0xFFFFFFFD) == 1)
    {
      v12 = v94;
LABEL_11:
      v17 = *(v12 - 1);
      v94 = v12 - 4;
      v96 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v86);
      v18 = *(*a2 + 48);
      if (v94 == v93)
      {
        if (v18)
        {
          v27 = 0;
          do
          {
            v28 = v86;
            v29 = (v87 - v86) >> 2;
            v30 = (v29 - 1);
            if (v29 - 1 < 0)
            {
              v35 = 0;
            }

            else
            {
              v31 = 0;
              v32 = __p;
              quot = v27;
              do
              {
                v34 = ldiv(quot, v28[v30]);
                quot = v34.quot;
                v31 += v32[v30--] * v34.rem;
              }

              while (v30 != -1);
              v35 = v31;
              a2 = v84;
            }

            v36 = v97;
            *v90 = v97;
            mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(&v91[v35], v90, v17, *&v36, *(&v36 + 1));
            ++v27;
            ++v90;
          }

          while (*(*a2 + 48) > v27);
        }
      }

      else if (v18)
      {
        v19 = v86;
        v20 = (v87 - v86) >> 2;
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

        *v90 = v97;
        v100 = 0;
        operator new();
      }

LABEL_78:
      if (__p)
      {
        v89 = __p;
        operator delete(__p);
      }

      if (v86)
      {
        v87 = v86;
        operator delete(v86);
      }

      goto LABEL_82;
    }

    if (v92 != 2)
    {
      if (v92 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v86);
        if (*(*a2 + 48))
        {
          v37 = v86;
          v38 = (v87 - v86) >> 2;
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

          v98 = 0;
          operator new();
        }

        goto LABEL_78;
      }

      if (v92 != 4)
      {
        goto LABEL_82;
      }

      v26 = v94;
      goto LABEL_48;
    }

    v26 = v94;
    if (v94 - v93 != 4)
    {
LABEL_48:
      v51 = *(v26 - 1);
      v52 = *(v96 - 1);
      v94 = v26 - 4;
      v96 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v86);
      v53 = *(*a2 + 48);
      if (v94 == v93)
      {
        if (v53)
        {
          v67 = 0;
          v68 = vdupq_n_s64(v52 - 1);
          v69 = xmmword_25A99B0D0;
          v83 = v68;
          do
          {
            v70 = v86;
            v71 = (v87 - v86) >> 2;
            v72 = (v71 - 1);
            if (v71 - 1 < 0)
            {
              v77 = 0;
            }

            else
            {
              v73 = 0;
              v74 = __p;
              v75 = v67;
              do
              {
                v76 = ldiv(v75, v70[v72]);
                v75 = v76.quot;
                v73 += v74[v72--] * v76.rem;
              }

              while (v72 != -1);
              v77 = v73;
              a2 = v84;
              v69 = xmmword_25A99B0D0;
              v68 = v83;
            }

            v78 = v90;
            if (v52)
            {
              v79 = 0;
              v80 = v97;
              v81 = v90 + 1;
              do
              {
                v82 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(vdupq_n_s64(v79), v69)));
                if (v82.i8[0])
                {
                  *(v81 - 1) = v80;
                }

                if (v82.i8[4])
                {
                  *v81 = v80;
                }

                v79 += 2;
                v81 += 2;
              }

              while (((v52 + 1) & 0xFFFFFFFFFFFFFFFELL) != v79);
              v78 = v90;
            }

            mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(&v91[v77], v78, v51, v52);
            v90 += v52;
            v67 += v52;
            v69 = xmmword_25A99B0D0;
            v68 = v83;
          }

          while (*(*a2 + 48) > v67);
        }
      }

      else if (v53)
      {
        v54 = xmmword_25A99B0D0;
        v55 = v86;
        v56 = (v87 - v86) >> 2;
        v57 = (v56 - 1);
        if (v56 - 1 >= 0)
        {
          v58 = 0;
          v59 = __p;
          v60 = 0;
          do
          {
            v61 = ldiv(v60, v55[v57]);
            v60 = v61.quot;
            v58 += v59[v57--] * v61.rem;
          }

          while (v57 != -1);
          v54 = xmmword_25A99B0D0;
        }

        if (v52)
        {
          v62 = 0;
          v63 = v97;
          v64 = vdupq_n_s64(v52 - 1);
          v65 = v90 + 1;
          do
          {
            v66 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(vdupq_n_s64(v62), v54)));
            if (v66.i8[0])
            {
              *(v65 - 1) = v63;
            }

            if (v66.i8[4])
            {
              *v65 = v63;
            }

            v62 += 2;
            v65 += 2;
          }

          while (((v52 + 1) & 0xFFFFFFFFFFFFFFFELL) != v62);
        }

        v99 = 0;
        operator new();
      }

      goto LABEL_78;
    }

    v44 = *(v94 - 1);
    v45 = *(v96 - 1);
    v94 -= 4;
    v96 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v46) = 0;
      v85 = vdupq_n_s64(v45 - 1);
      do
      {
        if (v45)
        {
          v47 = 0;
          v48 = v97;
          v49 = v10 + 1;
          do
          {
            v50 = vmovn_s64(vcgeq_u64(v85, vorrq_s8(vdupq_n_s64(v47), xmmword_25A99B0D0)));
            if (v50.i8[0])
            {
              *(v49 - 1) = v48;
            }

            if (v50.i8[4])
            {
              *v49 = v48;
            }

            v47 += 2;
            v49 += 2;
          }

          while (((v45 + 1) & 0xFFFFFFFFFFFFFFFELL) != v47);
          v10 = v90;
          v8 = v91;
        }

        mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(v8, v10, v44, v45);
        v8 = &v91[v45 * v44];
        v10 = &v90[v45];
        v90 = v10;
        v91 = v8;
        v46 = v46 + v45;
      }

      while (v46 < *(*a2 + 48));
    }
  }

LABEL_82:
  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06598;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

float32x2_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = **(a1 + 24);
  v3 = **(a1 + 32);
  v4 = **(a1 + 40);
  if (v3 >= 1)
  {
    v5 = (**(a1 + 8) + 8 * **(a1 + 16) + 8 * *a2);
    v6 = v3 + 1;
    do
    {
      v7 = *v5++;
      v4 = vadd_f32(v4, v7);
      --v6;
    }

    while (v6 > 1);
  }

  result = vadd_f32(v4, *v2);
  *v2 = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06618;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v6++;
          *v7 = vadd_f32(*v7, v9);
          ++v7;
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

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06698;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float32x2_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  result = vadd_f32(*v2, *(**(a1 + 16) + 8 * **(a1 + 24) + 8 * *a2));
  *v2 = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(uint64_t *a1, uint64_t *a2, int a3, float a4, float a5)
{
  if (a3 >= 1)
  {
    v7 = a3 + 1;
    do
    {
      v8 = *a1++;
      v12 = v8;
      v10 = a4;
      v11 = a5;
      a4 = std::operator*[abi:ne200100]<float,0>(&v12, &v10);
      --v7;
    }

    while (v7 > 1);
  }

  v12 = *a2;
  v10 = a4;
  v11 = a5;
  *a2 = std::operator*[abi:ne200100]<float,0>(&v10, &v12);
  *(a2 + 1) = v9;
}

void mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v16[9] = v4;
    v16[10] = v5;
    for (i = 0; i != a3; ++i)
    {
      v11 = a2;
      for (j = a4; j; --j)
      {
        v13 = *a1++;
        v15 = *v11;
        v16[0] = v13;
        *v11 = std::operator*[abi:ne200100]<float,0>(v16, &v15);
        *(v11++ + 1) = v14;
      }
    }
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06718;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06798;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v3 = **(a1 + 8);
  v7 = *(**(a1 + 16) + 8 * **(a1 + 24) + 8 * *a2);
  v8 = v3;
  v4 = std::operator*[abi:ne200100]<float,0>(&v7, &v8);
  v5 = *(a1 + 8);
  *v5 = v4;
  *(v5 + 4) = v6;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, unsigned int **a3, int a4)
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
              if ((v50 & 1u) > v46)
              {
                v46 = v49;
              }

              v46 &= 1u;
              --v48;
            }

            while (v48 > 1);
          }

          *v36++ = v46 | a4;
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
            if ((v25 & 1u) > v21)
            {
              v21 = v24;
            }

            v21 &= 1u;
            --v22;
          }

          while (v22 > 1);
        }

        *v11++ = v21 | a4;
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
          if ((v16 & 1u) > v14)
          {
            v14 = v15;
          }

          v14 &= 1u;
          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 | a4;
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
                if ((v91 & 1u) > (v89 & 1u))
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
                if ((v67 & 1u) > (v65 & 1u))
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