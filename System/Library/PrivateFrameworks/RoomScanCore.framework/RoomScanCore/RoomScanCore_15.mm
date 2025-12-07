void *sub_2622D9A18(void *a1)
{
  a1[75] = &unk_2874EEC38;
  v2 = a1[91];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[50] = &unk_2874EEC38;
  v3 = a1[66];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[12] = &unk_2874EEB10;
  v4 = a1[28];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  return a1;
}

void *sub_2622D9AC0(void *a1)
{
  a1[44] = &unk_2874EEC38;
  v2 = a1[60];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[6] = &unk_2874EEB10;
  v3 = a1[22];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

void sub_2622D9B3C(void ***a1)
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
        v4 -= 80;
        sub_2622D9C78(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2622D9BC0(void *a1)
{
  *a1 = &unk_2874EE6A8;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2622D9C2C(void *a1)
{
  *a1 = &unk_2874EE6A8;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

void sub_2622D9C78(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void sub_2622D9CD0(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_2622D9D28(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_2622D9C78(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2622D9D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v6;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = 0;
      v7 = *(v5 + 32);
      *(a3 + 48) = *(v5 + 48);
      *(a3 + 32) = v7;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 32) = 0;
      v8 = *(v5 + 56);
      *(a3 + 72) = *(v5 + 72);
      *(a3 + 56) = v8;
      v5 += 80;
      a3 += 80;
    }

    while (v5 != a2);
    do
    {
      sub_2622D9C78(v4);
      v4 += 80;
    }

    while (v4 != a2);
  }
}

uint64_t *sub_2622D9E18(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 4);
    if (v7 + 1 > 0x333333333333333)
    {
      sub_2621CBEB0();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x199999999999999)
    {
      v10 = 0x333333333333333;
    }

    else
    {
      v10 = v9;
    }

    v28 = v3;
    if (v10)
    {
      sub_2622D9CD0(v10);
    }

    v14 = 80 * v7;
    v25 = 0;
    v26 = 80 * v7;
    v27 = 80 * v7;
    v15 = 80 * v7;
    *v15 = *a2;
    v16 = v15 + 8;
    if (*(a2 + 31) < 0)
    {
      sub_2621CC810(v16, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v17 = *(a2 + 8);
      *(v16 + 16) = *(a2 + 24);
      *v16 = v17;
    }

    if (*(a2 + 55) < 0)
    {
      sub_2621CC810((v14 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v18 = *(a2 + 32);
      *(v14 + 48) = *(a2 + 48);
      *(v14 + 32) = v18;
    }

    v19 = *(a2 + 56);
    *(v14 + 72) = *(a2 + 72);
    *(v14 + 56) = v19;
    *&v27 = v27 + 80;
    v20 = v3[1];
    v21 = v26 + *v3 - v20;
    sub_2622D9D78(*v3, v20, v21);
    v22 = *v3;
    *v3 = v21;
    v23 = v3[2];
    v24 = v27;
    *(v3 + 1) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    result = sub_2622D9D28(&v25);
    v13 = v24;
  }

  else
  {
    *v5 = *a2;
    if (*(a2 + 31) < 0)
    {
      result = sub_2621CC810((v5 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(v5 + 24) = *(a2 + 24);
      *(v5 + 8) = v6;
    }

    if (*(a2 + 55) < 0)
    {
      result = sub_2621CC810((v5 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v11 = *(a2 + 32);
      *(v5 + 48) = *(a2 + 48);
      *(v5 + 32) = v11;
    }

    v12 = *(a2 + 56);
    *(v5 + 72) = *(a2 + 72);
    *(v5 + 56) = v12;
    v13 = v5 + 80;
    v3[1] = v5 + 80;
  }

  v3[1] = v13;
  return result;
}

void sub_2622DA010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v8 + 31) < 0)
  {
    operator delete(*v7);
  }

  sub_2622D9D28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622DA060(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t sub_2622DA0B0(uint64_t a1, double a2, double a3, __n128 a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 137) & 1) == 0)
  {
    v4 = vcgt_f32(*&a2, *&a3).u8[0];
    v5 = vzip2_s32(*&a3, *&a2);
    v6 = vzip2_s32(*&a2, *&a3);
    if (v4)
    {
      v7 = *&a3;
    }

    else
    {
      v7 = *&a2;
    }

    if (v4)
    {
      v8 = *&a2;
    }

    else
    {
      v8 = *&a3;
    }

    if (v4)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    v10 = vbsl_s8(vdup_n_s32(v9), v6, v5);
    if (vabds_f32(v7, v8) > 0.00000001)
    {
      sub_2622DE7E8(v17, v7, v8, 3.0);
      sub_262229F7C(v14, v17);
      *&v20[0].__locale_ = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = *&v14[1];
      v24 = v15;
      v25 = v16;
      sub_262229F7C(&v26, v14);
      *&v20[0].__locale_ = v23;
      v21 = v24;
      v22 = v25;
      sub_2622E1800(v18, v20);
    }

    if (*&v10.i32[1] <= *v10.i32)
    {
      v11 = *&v10.i32[1];
    }

    else
    {
      v11 = *v10.i32;
    }

    if (*&v10.i32[1] <= *v10.i32)
    {
      v12 = *v10.i32;
    }

    else
    {
      v12 = *&v10.i32[1];
    }

    sub_2622DE7E8(v19, v11, v12, 3.0);
    sub_262229F7C(v14, v19);
    *&v20[0].__locale_ = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = *&v14[1];
    v24 = v15;
    v25 = v16;
    sub_262229F7C(&v26, v14);
    *&v20[0].__locale_ = v23;
    v21 = v24;
    v22 = v25;
    sub_2622E1800(v17, v20);
  }

  return 0;
}

void sub_2622DDE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21)
{
  std::locale::~locale((v21 - 208));
  sub_2621C57C8(&STACK[0x470]);
  if (STACK[0xAD0])
  {
    sub_2621D1B78(STACK[0xAD0]);
  }

  sub_2622E0A48(&STACK[0x7F0]);
  sub_2622E0AF0(&a21);
  a21.__locale_ = &STACK[0x288];
  sub_2622E0988(&a21);
  STACK[0x2A0] = a14;
  if (STACK[0x320])
  {
    sub_2621D1B78(STACK[0x320]);
  }

  STACK[0x5A0] = &unk_2874EE7E8;
  if (STACK[0x620])
  {
    sub_2621D1B78(STACK[0x620]);
  }

  STACK[0x638] = &unk_2874EE7E8;
  if (STACK[0x6B8])
  {
    sub_2621D1B78(STACK[0x6B8]);
  }

  STACK[0xAF0] = &unk_2874EE910;
  if (STACK[0xB70])
  {
    sub_2621D1B78(STACK[0xB70]);
  }

  STACK[0x6D0] = &unk_2874EE910;
  if (STACK[0x750])
  {
    sub_2621D1B78(STACK[0x750]);
  }

  sub_2622E0B98(&STACK[0x340]);
  _Unwind_Resume(a1);
}

void sub_2622DE614(float32x2_t **a1, uint64_t a2, __n128 a3, float32x2_t a4, float a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if ((*(a2 + 137) & 1) == 0)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v5 = *(a2 + 144);
    v6 = *(a2 + 16);
    v7 = *(a2 + 104);
    v37 = 0;
    if (v7)
    {
      v10 = 0;
      v11 = vsub_f32(a4, a3.n128_u64[0]);
      v12 = vmul_f32(v11, v11);
      *v12.i32 = sqrtf(vaddv_f32(v12));
      v13 = *v12.i32 * 0.5;
      v14 = vdiv_f32(v11, vdup_lane_s32(v12, 0));
      v15 = *&v14.i32[1];
      *v11.i32 = -*&v14.i32[1];
      v36 = *v14.i32;
      v16 = vzip1_s32(v11, v14);
      v17 = vmul_f32(v16, v16);
      *v17.i32 = sqrtf(vaddv_f32(v17));
      v18 = vdiv_f32(v16, vdup_lane_s32(v17, 0));
      v19 = vmul_f32(vadd_f32(a3.n128_u64[0], a4), 0x3F0000003F000000);
      v34 = v19.f32[0];
      v35 = v18.f32[0];
      v20 = v19.f32[1];
      v21 = v18.f32[1];
      do
      {
        v22 = (v5 + 8 * v10);
        v23 = *v22 - v34;
        v24 = v22[1] - v20;
        v26 = fabsf((v15 * v24) + (v23 * v36)) < v13;
        v25 = fabsf((v21 * v24) + (v23 * v35));
        v26 = v26 && v25 < a5;
        if (v26)
        {
          sub_2621C9004(&v38, &v37);
        }

        v10 += v6;
        v37 = v10;
      }

      while (v10 < v7);
      v27 = v38;
      v28 = v39 - v38;
      if (v39 == v38)
      {
        if (!v38)
        {
          return;
        }
      }

      else
      {
        v29 = v28 >> 3;
        sub_2622DFB20(a1, v28 >> 3);
        v30 = *a1;
        if (v29 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v29;
        }

        v32 = v27;
        do
        {
          v33 = *v32++;
          *v30++ = vcvt_f32_f64(vcvtq_f64_u64(*(v5 + 8 * v33)));
          --v31;
        }

        while (v31);
      }

      operator delete(v27);
    }
  }
}

void sub_2622DE7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v17)
  {
    operator delete(v17);
  }

  v19 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622DE7E8(uint64_t a1, float a2, float a3, float a4)
{
  v5 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v7 = vcvtpd_u64_f64((a3 - a2) / a4);
  if (!v7)
  {
    v8 = MEMORY[0x277D82670];
    v9 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v10 = sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/construction.hpp", 105);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = MEMORY[0x266727260](v11, 217);
    v13 = sub_2621D552C(v12, " ", 1);
    v14 = sub_2621D552C(v13, "arange", 6);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(__b);
    std::ostream::put();
    std::ostream::flush();
    v16 = sub_2621D552C(v8, "err", 3);
    v17 = sub_2621D552C(v16, " ", 1);
    sub_2621D552C(v17, "empty range", 11);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v18 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(__b);
    std::ostream::put();
    v19 = MEMORY[0x277D82670];
    std::ostream::flush();
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(__b);
    std::ostream::put();
    std::ostream::flush();
  }

  v24 = v7;
  memset(__p, 0, sizeof(__p));
  sub_2622AB9E8(__p, &v24, &v25, 1uLL);
  sub_262228688(__b, __p);
  sub_262224FE8(a1, __b);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    v21 = *(a1 + 144);
    do
    {
      *v21++ = v5;
      v5 = v5 + a4;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_2622DEB28(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (fabsf(*v8) < fabsf(*v9))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = fabsf(v83);
      v87 = *v9;
      v88 = fabsf(*v9);
      v89 = fabsf(v85);
      if (v86 >= v88)
      {
        if (v89 < v86)
        {
          *v82 = v85;
          *v84 = v83;
          v90 = v9;
          v91 = v9 + 1;
          if (v89 < v88)
          {
            goto LABEL_174;
          }

LABEL_176:
          if (fabsf(*v8) < v86)
          {
            *v84 = *v8;
            *v8 = v83;
            v136 = *v84;
            v137 = fabsf(*v84);
            v138 = *v82;
            if (v137 < fabsf(*v82))
            {
              *(v9 + 1) = v136;
              *(v9 + 2) = v138;
              v139 = *v9;
              if (v137 < fabsf(*v9))
              {
                *v9 = v136;
                v9[1] = v139;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v89 < v86)
        {
          v90 = v9;
          v91 = v9 + 2;
          v86 = v88;
          v83 = *v9;
          goto LABEL_174;
        }

        *v9 = v83;
        v9[1] = v87;
        v90 = v9 + 1;
        v91 = v9 + 2;
        v86 = v88;
        v83 = v87;
        if (v89 < v88)
        {
LABEL_174:
          *v90 = v85;
          *v91 = v87;
          goto LABEL_176;
        }
      }

      v86 = v89;
      v83 = v85;
      goto LABEL_176;
    }

    if (v10 == 5)
    {

      return sub_2622DF6B0(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 4;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = fabsf(v97);
            if (v99 < fabsf(v98))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 4;
                if (v100 == 4)
                {
                  break;
                }

                v98 = *(v9 + v100 - 8);
                v100 -= 4;
                if (v99 >= fabsf(v98))
                {
                  v102 = (v9 + v101);
                  goto LABEL_126;
                }
              }

              v102 = v9;
LABEL_126:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 4;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v133 = *v7;
          v132 = *(v7 + 4);
          v7 = v92;
          v134 = fabsf(v132);
          if (v134 < fabsf(v133))
          {
            v135 = v92;
            do
            {
              *v135 = v133;
              v133 = *(v135 - 2);
              --v135;
            }

            while (v134 < fabsf(v133));
            *v135 = v132;
          }

          ++v92;
        }

        while ((v7 + 4) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v103 = (v10 - 2) >> 1;
      v104 = v103;
      do
      {
        v105 = v104;
        if (v103 >= v104)
        {
          v106 = (2 * v104) | 1;
          v107 = &v9[v106];
          if (2 * v105 + 2 < v10 && fabsf(*v107) < fabsf(v107[1]))
          {
            ++v107;
            v106 = 2 * v105 + 2;
          }

          v108 = &v9[v105];
          v109 = *v107;
          v110 = *v108;
          v111 = fabsf(*v108);
          if (fabsf(*v107) >= v111)
          {
            do
            {
              *v108 = v109;
              v108 = v107;
              if (v103 < v106)
              {
                break;
              }

              v112 = 2 * v106;
              v106 = (2 * v106) | 1;
              v107 = &v9[v106];
              v113 = v112 + 2;
              if (v113 < v10 && fabsf(*v107) < fabsf(v107[1]))
              {
                ++v107;
                v106 = v113;
              }

              v109 = *v107;
            }

            while (fabsf(*v107) >= v111);
            *v108 = v110;
          }
        }

        v104 = v105 - 1;
      }

      while (v105);
      while (2)
      {
        v114 = 0;
        v115 = *v9;
        v116 = v9;
        do
        {
          v117 = v116;
          v118 = &v116[v114];
          v116 = v118 + 1;
          v119 = 2 * v114;
          v114 = (2 * v114) | 1;
          v120 = v119 + 2;
          if (v120 < v10)
          {
            v122 = v118[2];
            v121 = v118 + 2;
            if (fabsf(*(v121 - 1)) < fabsf(v122))
            {
              v116 = v121;
              v114 = v120;
            }
          }

          *v117 = *v116;
        }

        while (v114 <= ((v10 - 2) >> 1));
        if (v116 == --a2)
        {
LABEL_153:
          *v116 = v115;
        }

        else
        {
          *v116 = *a2;
          *a2 = v115;
          v123 = (v116 - v9 + 4) >> 2;
          v124 = v123 < 2;
          v125 = v123 - 2;
          if (!v124)
          {
            v126 = v125 >> 1;
            v127 = &v9[v126];
            v128 = *v127;
            v115 = *v116;
            v129 = fabsf(*v116);
            if (fabsf(*v127) < v129)
            {
              do
              {
                *v116 = v128;
                v116 = v127;
                if (!v126)
                {
                  break;
                }

                v126 = (v126 - 1) >> 1;
                v127 = &v9[v126];
                v128 = *v127;
              }

              while (fabsf(*v127) < v129);
              goto LABEL_153;
            }
          }
        }

        v124 = v10-- <= 2;
        if (v124)
        {
          return result;
        }

        continue;
      }
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = fabsf(*v8);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = fabsf(*v11);
      v17 = *v9;
      v18 = fabsf(*v9);
      if (v16 >= v18)
      {
        if (v14 < v16)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (fabsf(*v11) < fabsf(*v9))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v16)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v17;
        if (fabsf(*v8) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v17;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = fabsf(v26);
      v28 = v9[1];
      v29 = fabsf(v28);
      v30 = *(a2 - 2);
      v31 = fabsf(v30);
      if (v27 >= v29)
      {
        if (v31 < v27)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (fabsf(*v25) < fabsf(v32))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v27)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v28;
        v33 = *(a2 - 2);
        if (fabsf(v33) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v28;
        }
      }

      v35 = v11[1];
      v34 = v11 + 1;
      v36 = v35;
      v37 = fabsf(v35);
      v38 = v9[2];
      v39 = fabsf(v38);
      v40 = *(a2 - 3);
      v41 = fabsf(v40);
      if (v37 >= v39)
      {
        if (v41 < v37)
        {
          *v34 = v40;
          *(a2 - 3) = v36;
          v42 = v9[2];
          if (fabsf(*v34) < fabsf(v42))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v37)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v36;
        *v34 = v38;
        v43 = *(a2 - 3);
        if (fabsf(v43) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v44 = *v12;
      v45 = fabsf(*v12);
      v46 = *v25;
      v47 = fabsf(*v25);
      v48 = *v34;
      v49 = fabsf(*v34);
      if (v45 >= v47)
      {
        if (v49 >= v45)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v46;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v45)
      {
        *v25 = v44;
        *v12 = v46;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v46;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v46;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = fabsf(*v9);
    v21 = *v11;
    v22 = fabsf(*v11);
    if (v20 >= v22)
    {
      if (v14 < v20)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v11;
        if (fabsf(*v9) < fabsf(*v11))
        {
          *v11 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 >= v20)
    {
      *v11 = v19;
      *v9 = v21;
      if (fabsf(*v8) >= v22)
      {
        goto LABEL_57;
      }

      *v9 = *v8;
    }

    else
    {
      *v11 = v13;
    }

    *v8 = v21;
LABEL_57:
    --a3;
    v51 = *v9;
    v52 = fabsf(*v9);
    if ((a4 & 1) != 0 || fabsf(*(v9 - 1)) < v52)
    {
      v53 = v9;
      do
      {
        v54 = v53;
        v55 = v53[1];
        ++v53;
        v56 = v55;
      }

      while (fabsf(v55) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (fabsf(v59) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (fabsf(v58) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v56;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v56 = v63;
          }

          while (fabsf(v63) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (fabsf(v64) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_78;
      }

      v65 = sub_2622DF82C(v9, v54);
      v9 = v54 + 1;
      result = sub_2622DF82C(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (v65)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v65)
      {
LABEL_78:
        result = sub_2622DEB28(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      if (v52 >= fabsf(*v8))
      {
        v67 = (v9 + 1);
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v67 += 4;
        }

        while (v52 >= fabsf(*v9));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= fabsf(v66));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < fabsf(v69));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= fabsf(v72));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < fabsf(v73));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = fabsf(v77);
  v79 = fabsf(*v9);
  v80 = *v8;
  v81 = fabsf(*v8);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v131 = *v9;
      v130 = v9[1];
      if (fabsf(v130) < fabsf(*v9))
      {
        *v9 = v130;
        v9[1] = v131;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (fabsf(*v8) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}

float sub_2622DF4C4(float32x2_t *a1, float32x2_t *a2, float32x2_t a3, float32x2_t a4, float a5)
{
  if (a1 == a2)
  {
    return 0.0;
  }

  v7 = a1;
  v8 = vmul_f32(vadd_f32(a3, a4), 0x3F0000003F000000);
  v9 = vsub_f32(a3, a4);
  v10 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
  v11 = vsub_f32(a4, a3);
  v12 = vmul_f32(v11, v11);
  v12.i32[0] = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
  v13 = vrsqrte_f32(v12.u32[0]);
  v14 = vmul_f32(v13, vrsqrts_f32(v12.u32[0], vmul_f32(v13, v13)));
  v15 = vmul_n_f32(v11, vmul_f32(v14, vrsqrts_f32(v12.u32[0], vmul_f32(v14, v14))).f32[0]);
  *v11.i32 = -*&v15.i32[1];
  v29 = v15;
  v16 = vzip1_s32(v11, v15);
  v17 = vmul_f32(v16, v16);
  *v17.i32 = sqrtf(vaddv_f32(v17));
  v18 = vdiv_f32(v16, vdup_lane_s32(v17, 0));
  v31 = 0u;
  v32 = 0u;
  v33 = 1065353216;
  do
  {
    v19 = vadd_f32(vsub_f32(*v7, v8), 0x3F0000003F000000);
    if (fabsf(vaddv_f32(vmul_f32(v18, v19))) <= a5)
    {
      v20 = vaddv_f32(vmul_f32(v29, v19)) * 0.25;
      v21 = -v20;
      if (v20 >= 0.0)
      {
        v21 = v20;
      }

      v22 = v21;
      v23 = v21 - v21;
      if (v23 < 0.5)
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 + 1;
      }

      v25 = (v22 & 1) + v22;
      if (v23 != 0.5)
      {
        v25 = v24;
      }

      if (v20 >= 0.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = -v25;
      }

      v30 = v26;
      sub_2621C729C(&v31, v26, &v30);
    }

    ++v7;
  }

  while (v7 != a2);
  v27 = *(&v32 + 1) / (v10 * 0.25);
  sub_2621C74C4(&v31);
  return v27;
}

void sub_2622DF658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2621C74C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622DF66C(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

float *sub_2622DF6B0(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *a2;
  v6 = fabsf(*a2);
  v7 = *result;
  v8 = fabsf(*result);
  v9 = *a3;
  v10 = fabsf(*a3);
  if (v6 >= v8)
  {
    if (v10 >= v6)
    {
      v6 = v10;
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (fabsf(*a2) < fabsf(*result))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
        v6 = fabsf(*a3);
      }
    }
  }

  else
  {
    if (v10 < v6)
    {
      *result = v9;
LABEL_9:
      *a3 = v7;
      v6 = v8;
      v5 = v7;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v7;
    v5 = *a3;
    v6 = fabsf(*a3);
    if (v6 < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (fabsf(*a4) < v6)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (fabsf(*a3) < fabsf(*a2))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (fabsf(*a2) < fabsf(*result))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (fabsf(*a5) < fabsf(*a4))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (fabsf(*a4) < fabsf(*a3))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (fabsf(*a3) < fabsf(*a2))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (fabsf(*a2) < fabsf(*result))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_2622DF82C(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = fabsf(v6);
      v8 = fabsf(*a1);
      v9 = *(a2 - 1);
      v10 = fabsf(v9);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v31 = *a1;
          v30 = a1[1];
          if (fabsf(v30) < fabsf(*a1))
          {
            *a1 = v30;
            *(a1 + 1) = v31;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        *(a1 + 1) = v5;
        v41 = *(a2 - 1);
        if (fabsf(v41) >= v8)
        {
          return 1;
        }

        a1[1] = v41;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_2622DF6B0(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = fabsf(v21);
    v25 = *a1;
    v26 = fabsf(*a1);
    v27 = fabsf(v23);
    if (v24 >= v26)
    {
      if (v27 < v24)
      {
        *v20 = v23;
        *v22 = v21;
        v28 = a1;
        v29 = a1 + 1;
        if (v27 >= v26)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v27 < v24)
      {
        v28 = a1;
        v29 = a1 + 2;
        v24 = v26;
        v21 = *a1;
LABEL_44:
        *v28 = v23;
        *v29 = v25;
LABEL_46:
        v42 = *(a2 - 1);
        if (fabsf(v42) < v24)
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = fabsf(*v22);
          v45 = *v20;
          if (v44 < fabsf(*v20))
          {
            *(a1 + 1) = v43;
            *(a1 + 2) = v45;
            v46 = *a1;
            if (v44 < fabsf(*a1))
            {
              *a1 = v43;
              *(a1 + 1) = v46;
            }
          }
        }

        return 1;
      }

      *a1 = v21;
      a1[1] = v25;
      v28 = a1 + 1;
      v29 = a1 + 2;
      v24 = v26;
      v21 = v25;
      if (v27 < v26)
      {
        goto LABEL_44;
      }
    }

    v24 = v27;
    v21 = v23;
    goto LABEL_46;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (fabsf(v3) < fabsf(*a1))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v12 = a1[2];
  v13 = a1[1];
  v14 = fabsf(v13);
  v15 = *a1;
  v16 = fabsf(*a1);
  v17 = fabsf(v12);
  if (v14 < v16)
  {
    v18 = a1;
    v19 = a1 + 2;
    if (v17 >= v14)
    {
      *a1 = v13;
      *(a1 + 1) = v15;
      v18 = a1 + 1;
      v19 = a1 + 2;
      if (v17 >= v16)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v18 = v12;
    *v19 = v15;
    goto LABEL_26;
  }

  if (v17 < v14)
  {
    a1[1] = v12;
    *v11 = v13;
    v18 = a1;
    v19 = a1 + 1;
    if (v17 < v16)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 12; ; i += 4)
  {
    v35 = *v32;
    v36 = fabsf(*v32);
    v37 = *v11;
    if (v36 < fabsf(*v11))
    {
      v38 = i;
      while (1)
      {
        *(a1 + v38) = v37;
        v39 = v38 - 4;
        if (v38 == 4)
        {
          break;
        }

        v37 = *(a1 + v38 - 8);
        v38 -= 4;
        if (v36 >= fabsf(v37))
        {
          v40 = (a1 + v39);
          goto LABEL_34;
        }
      }

      v40 = a1;
LABEL_34:
      *v40 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v11 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

void sub_2622DFB20(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_2621CBEC8(v10);
      }

      sub_2621CBEB0();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

void sub_2622DFC20(uint64_t a1, _OWORD *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE7E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_262223B08(v4, (a1 + 104));
}

void sub_2622E0754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale((v16 - 144));
  sub_2621C57C8(&a15);
  v18 = *(v15 + 128);
  if (v18)
  {
    sub_2621D1B78(v18);
  }

  _Unwind_Resume(a1);
}

void sub_2622E07B4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_262234D10(&v24, a3);
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *a1 = &unk_2874EEC90;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  v6 = *(a2 + 120);
  v7 = *(a2 + 128);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 128);
    *(a1 + 120) = v6;
    *(a1 + 128) = v7;
    if (v8)
    {
      sub_2621D1B78(v8);
    }
  }

  else
  {
    *(a1 + 120) = v6;
    *(a1 + 128) = 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v24;
  v13 = (v25 - v24) >> 3;
  v14 = *(a2 + 104);
  *(a1 + 104) = v14;
  v15 = a1 + 56;
  v16 = 1;
  do
  {
    v17 = v16;
    if (v10 < v13 && v11 == v12[v10])
    {
      *(v5 + 8 * v11) = 1;
      *(v15 + 8 * v11) = 0;
      ++v10;
    }

    else
    {
      *(v5 + 8 * v11) = *(a2 + 8 + 8 * v9);
      *(v15 + 8 * v11) = *(a2 + 56 + 8 * v9++);
    }

    v16 = 0;
    v11 = 1;
  }

  while ((v17 & 1) != 0);
  *(a1 + 137) = 0;
  v18 = (a1 + 64);
  v19 = -2;
  v20 = 1;
  while (1)
  {
    v21 = *(v18 - 6);
    if (v21 != 1)
    {
      break;
    }

LABEL_15:
    --v18;
    if (__CFADD__(v19++, 1))
    {
      v23 = 1;
      goto LABEL_19;
    }
  }

  if (*v18 == v20)
  {
    v20 *= v21;
    goto LABEL_15;
  }

  v23 = 0;
LABEL_19:
  *(a1 + 136) = v23;
  *(a1 + 144) = **(a1 + 120) + 8 * *(&v14 + 1);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_2622E0970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622E0988(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 19;
      v7 = v4 - 19;
      v8 = v4 - 19;
      do
      {
        v9 = *v8;
        v8 -= 19;
        (*v9)(v7);
        v6 -= 19;
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

void *sub_2622E0A48(void *a1)
{
  a1[56] = &unk_2874EEC90;
  v2 = a1[72];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[37] = &unk_2874EECE8;
  v3 = a1[53];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[12] = &unk_2874EEC90;
  v4 = a1[28];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  return a1;
}

void *sub_2622E0AF0(void *a1)
{
  a1[50] = &unk_2874EEC90;
  v2 = a1[66];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[31] = &unk_2874EECE8;
  v3 = a1[47];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[6] = &unk_2874EEC90;
  v4 = a1[22];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  return a1;
}

void *sub_2622E0B98(void *a1)
{
  a1[19] = &unk_2874EE910;
  v2 = a1[35];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  *a1 = &unk_2874EE910;
  v3 = a1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

uint64_t sub_2622E0C10(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 184);
  v4 = &v16;
  v5 = 1;
  do
  {
    v6 = v5;
    if (v3)
    {
      v7 = (*(a1 + 192) + 8 * v2 + 16 * a2);
    }

    else
    {
      v7 = (*(a1 + 192) + 8 * *(a1 + 112) * v2 + 8 * *(a1 + 104) * a2);
    }

    v5 = 0;
    *v4 = *v7;
    v4 = &v15;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  v8 = 0;
  v9 = 0;
  v10 = &v16;
  v11 = 1;
  do
  {
    v12 = v11;
    v9 += *(a1 + 200 + 8 * v8) * *v10;
    v10 = &v15;
    v8 = 1;
    v11 = 0;
  }

  while ((v12 & 1) != 0);
  if (*(a1 + 384) == 1)
  {
    v13 = (*(a1 + 392) + v9);
  }

  else
  {
    v13 = (*(a1 + 392) + *(a1 + 312) * v15 + *(a1 + 304) * v16);
  }

  return *v13;
}

uint64_t sub_2622E0CDC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 184);
  v4 = &v15;
  v5 = 1;
  do
  {
    v6 = v5;
    if (v3)
    {
      v7 = (*(a1 + 192) + 8 * v2 + 16 * a2);
    }

    else
    {
      v7 = (*(a1 + 192) + 8 * *(a1 + 112) * v2 + 8 * *(a1 + 104) * a2);
    }

    v5 = 0;
    *v4 = *v7;
    v4 = &v14;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  v8 = 0;
  v9 = 0;
  v10 = &v15;
  v11 = 1;
  do
  {
    v12 = v11;
    v9 += *(a1 + 200 + 8 * v8) * *v10;
    v10 = &v14;
    v8 = 1;
    v11 = 0;
  }

  while ((v12 & 1) != 0);
  return *(*(a1 + 392) + v9);
}

uint64_t sub_2622E0D80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v146 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = (a2 + 8);
  v7 = 1;
  do
  {
    v8 = *(v5 + v4);
    v9 = *(v6 + v4);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = 0;
    v4 = 1;
  }

  while (v8 == v9);
  if (v8 == v9)
  {
    if (*(a2 + 136))
    {
      v132 = 0uLL;
      v133 = 0uLL;
      v131 = 0uLL;
      v10 = *(result + 104);
      v11 = *(result + 144);
      if (*(result + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 144);
          do
          {
            v13 = *v12++;
            *v11++ = v13;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v78 = 0;
        v79 = *(a2 + 144);
        do
        {
          v80 = 0;
          result = *(v3 + 64);
          v11[result * *(&v131 + 1) + *(v3 + 56) * v131] = *(v79 + 8 * v78);
          do
          {
            v81 = *(&v131 + v80 + 8) + 1;
            *(&v131 + v80 + 8) = v81;
            if (v81 != *(v3 + 16 + v80))
            {
              break;
            }

            *(&v131 + v80 + 8) = 0;
            v80 -= 8;
          }

          while (v80 != -16);
          ++v78;
        }

        while (v78 != v10);
      }
    }

    else
    {
      v132 = 0uLL;
      v133 = 0uLL;
      v131 = 0uLL;
      v42 = *(result + 104);
      v43 = *(result + 144);
      if (*(result + 136))
      {
        if (v42)
        {
          v44 = 0;
          v45 = *(a2 + 144);
          do
          {
            v46 = 0;
            result = *(a2 + 64);
            *(v43 + 8 * v44) = *(v45 + 8 * result * *(&v131 + 1) + 8 * *(a2 + 56) * v131);
            do
            {
              v47 = *(&v131 + v46 + 8) + 1;
              *(&v131 + v46 + 8) = v47;
              if (v47 != *(v3 + 16 + v46))
              {
                break;
              }

              *(&v131 + v46 + 8) = 0;
              v46 -= 8;
            }

            while (v46 != -16);
            ++v44;
          }

          while (v44 != v42);
        }
      }

      else if (v42)
      {
        v82 = 0;
        v83 = *(a2 + 144);
        do
        {
          v84 = 0;
          result = v43 + 8 * *(v3 + 64) * *(&v131 + 1);
          *(result + 8 * *(v3 + 56) * v131) = *(v83 + 8 * *(a2 + 64) * *(&v131 + 1) + 8 * *(a2 + 56) * v131);
          do
          {
            v85 = *(&v131 + v84 + 8) + 1;
            *(&v131 + v84 + 8) = v85;
            if (v85 != *(v3 + 16 + v84))
            {
              break;
            }

            *(&v131 + v84 + 8) = 0;
            v84 -= 8;
          }

          while (v84 != -16);
          ++v82;
        }

        while (v82 != v42);
      }
    }
  }

  else
  {
    if (*(a2 + 136))
    {
      v144 = 0uLL;
      v145 = 0uLL;
      v142 = 0uLL;
      v143 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v138 = 0uLL;
      v139 = 0uLL;
      v136 = 0uLL;
      v137 = 0uLL;
      v134 = 0uLL;
      v135 = 0uLL;
      v132 = 0uLL;
      v133 = 0uLL;
      v131 = 0uLL;
      v123 = 0uLL;
      v124 = 0uLL;
      v122 = 0uLL;
      sub_2621D96E4(&v131, v5, v6, &v122);
      v14 = 0;
      v15 = &v122;
      v16 = 1;
      do
      {
        v17 = *v15;
        v18 = *(v5 + v14);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v15 = &v122 + 1;
        v14 = 1;
      }

      while (v17 == v18);
      if (v17 != v18)
      {
        v19 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v20 = sub_2621D552C(v19, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v20, " ", 1);
        v21 = MEMORY[0x277D82670];
        v22 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v22, " ", 1);
        sub_2621D552C(v22, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v128, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v128);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v24 = std::locale::use_facet(v128, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v128);
        std::ostream::put();
        std::ostream::flush();
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      *&v128[0].__locale_ = 0u;
      v125 = 0u;
      v126 = 0u;
      v25 = *(v3 + 104);
      v26 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v25)
        {
          v27 = 0;
          v29 = *(&v132 + 1);
          v28 = v133;
          v30 = (v133 - *(&v132 + 1)) >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = *(a2 + 144);
          do
          {
            v125 = *&v128[0].__locale_;
            if (v28 != v29)
            {
              v32 = v29;
              v33 = v30;
              do
              {
                v34 = *v32++;
                *(&v125 + v34) = 0;
                --v33;
              }

              while (v33);
            }

            v35 = 0;
            v36 = 0;
            v37 = &v125;
            v38 = 1;
            do
            {
              v39 = v38;
              v36 += *(&v143 + v35) * *v37;
              v37 = (&v125 + 8);
              v35 = 1;
              v38 = 0;
            }

            while ((v39 & 1) != 0);
            *(v26 + 8 * v27) = *(v31 + 8 * v36);
            for (i = 1; i != -1; --i)
            {
              v41 = (v128[i].__locale_ + 1);
              v128[i].__locale_ = v41;
              if (v41 != *(&v122 + i * 8))
              {
                break;
              }

              v128[i].__locale_ = 0;
            }

            ++v27;
          }

          while (v27 != v25);
        }
      }

      else if (v25)
      {
        v86 = 0;
        v88 = *(&v132 + 1);
        v87 = v133;
        v89 = (v133 - *(&v132 + 1)) >> 3;
        if (v89 <= 1)
        {
          v89 = 1;
        }

        v90 = *(a2 + 144);
        do
        {
          locale = v128[0].__locale_;
          v92 = v128[1].__locale_;
          v125 = *&v128[0].__locale_;
          if (v87 != v88)
          {
            v93 = v88;
            v94 = v89;
            do
            {
              v95 = *v93++;
              *(&v125 + v95) = 0;
              --v94;
            }

            while (v94);
          }

          v96 = 0;
          v97 = 0;
          v98 = &v125;
          v99 = 1;
          do
          {
            v100 = v99;
            v97 += *(&v143 + v96) * *v98;
            v98 = (&v125 + 8);
            v96 = 1;
            v99 = 0;
          }

          while ((v100 & 1) != 0);
          *(v26 + 8 * *(v3 + 64) * v92 + 8 * *(v3 + 56) * locale) = *(v90 + 8 * v97);
          for (j = 1; j != -1; --j)
          {
            v102 = (v128[j].__locale_ + 1);
            v128[j].__locale_ = v102;
            if (v102 != *(&v122 + j * 8))
            {
              break;
            }

            v128[j].__locale_ = 0;
          }

          ++v86;
        }

        while (v86 != v25);
      }
    }

    else
    {
      v144 = 0uLL;
      v145 = 0uLL;
      v142 = 0uLL;
      v143 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v138 = 0uLL;
      v139 = 0uLL;
      v136 = 0uLL;
      v137 = 0uLL;
      v134 = 0uLL;
      v135 = 0uLL;
      v132 = 0uLL;
      v133 = 0uLL;
      v131 = 0uLL;
      v123 = 0uLL;
      v124 = 0uLL;
      v122 = 0uLL;
      sub_2621D96E4(&v131, v5, v6, &v122);
      v48 = 0;
      v49 = &v122;
      v50 = 1;
      do
      {
        v51 = *v49;
        v52 = *(v5 + v48);
        if ((v50 & 1) == 0)
        {
          break;
        }

        v50 = 0;
        v49 = &v122 + 1;
        v48 = 1;
      }

      while (v51 == v52);
      if (v51 != v52)
      {
        v53 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v54 = sub_2621D552C(v53, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v54, " ", 1);
        v55 = MEMORY[0x277D82670];
        v56 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v56, " ", 1);
        sub_2621D552C(v56, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v56 + *(*v56 - 24)));
        v57 = std::locale::use_facet(v128, MEMORY[0x277D82680]);
        (v57->__vftable[2].~facet_0)(v57, 10);
        std::locale::~locale(v128);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v55 + *(*v55 - 24)));
        v58 = std::locale::use_facet(v128, MEMORY[0x277D82680]);
        (v58->__vftable[2].~facet_0)(v58, 10);
        std::locale::~locale(v128);
        std::ostream::put();
        std::ostream::flush();
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      *&v128[0].__locale_ = 0u;
      v125 = 0u;
      v126 = 0u;
      v59 = *(v3 + 104);
      v60 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v59)
        {
          v61 = 0;
          v63 = *(&v132 + 1);
          v62 = v133;
          v64 = (v133 - *(&v132 + 1)) >> 3;
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = *(a2 + 136);
          v66 = *(a2 + 144);
          do
          {
            v125 = *&v128[0].__locale_;
            if (v62 != v63)
            {
              v67 = v63;
              v68 = v64;
              do
              {
                v69 = *v67++;
                *(&v125 + v69) = 0;
                --v68;
              }

              while (v68);
            }

            v70 = 0;
            v71 = 0;
            v72 = &v125;
            v73 = 1;
            do
            {
              v74 = v73;
              v71 += *(&v143 + v70) * *v72;
              v72 = (&v125 + 8);
              v70 = 1;
              v73 = 0;
            }

            while ((v74 & 1) != 0);
            if (v65)
            {
              v75 = (v66 + 8 * v71);
            }

            else
            {
              v75 = (v66 + 8 * *(a2 + 64) * *(&v125 + 1) + 8 * *(a2 + 56) * v125);
            }

            *(v60 + 8 * v61) = *v75;
            for (k = 1; k != -1; --k)
            {
              v77 = (v128[k].__locale_ + 1);
              v128[k].__locale_ = v77;
              if (v77 != *(&v122 + k * 8))
              {
                break;
              }

              v128[k].__locale_ = 0;
            }

            ++v61;
          }

          while (v61 != v59);
        }
      }

      else if (v59)
      {
        v103 = 0;
        v105 = *(&v132 + 1);
        v104 = v133;
        v106 = (v133 - *(&v132 + 1)) >> 3;
        if (v106 <= 1)
        {
          v106 = 1;
        }

        v107 = *(a2 + 136);
        v108 = *(a2 + 144);
        do
        {
          v109 = v128[0].__locale_;
          v110 = v128[1].__locale_;
          v125 = *&v128[0].__locale_;
          if (v104 != v105)
          {
            v111 = v105;
            v112 = v106;
            do
            {
              v113 = *v111++;
              *(&v125 + v113) = 0;
              --v112;
            }

            while (v112);
          }

          v114 = 0;
          v115 = 0;
          v116 = &v125;
          v117 = 1;
          do
          {
            v118 = v117;
            v115 += *(&v143 + v114) * *v116;
            v116 = (&v125 + 8);
            v114 = 1;
            v117 = 0;
          }

          while ((v118 & 1) != 0);
          if (v107)
          {
            v119 = (v108 + 8 * v115);
          }

          else
          {
            v119 = (v108 + 8 * *(a2 + 64) * *(&v125 + 1) + 8 * *(a2 + 56) * v125);
          }

          *(v60 + 8 * *(v3 + 64) * v110 + 8 * *(v3 + 56) * v109) = *v119;
          for (m = 1; m != -1; --m)
          {
            v121 = (v128[m].__locale_ + 1);
            v128[m].__locale_ = v121;
            if (v121 != *(&v122 + m * 8))
            {
              break;
            }

            v128[m].__locale_ = 0;
          }

          ++v103;
        }

        while (v103 != v59);
      }
    }

    return sub_2621C57C8(&v131);
  }

  return result;
}

void sub_2622E17CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::locale::~locale(&a21);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_2622E1800(uint64_t a1, _OWORD *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE910;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_2621D7174(v4, (a1 + 104));
}

void sub_2622E2238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale((v16 - 144));
  sub_2621C57C8(&a15);
  v18 = *(v15 + 128);
  if (v18)
  {
    sub_2621D1B78(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622E2298(uint64_t a1, uint64_t a2, float a3)
{
  v10 = a3;
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = a2;
  v3 = sub_262224FE8(a1, &v6);
  return sub_26226B214(v3, &v10, v4);
}

void sub_2622E22E4(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EF6A8;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622E2318(uint64_t result, uint64_t a2)
{
  v3 = result;
  v133 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v4 = *(result + 8);
  v6 = (a2 + 152);
  if (v4 == *(a2 + 152))
  {
    v7 = *(result + 104);
    v8 = *(result + 144);
    if (*(a2 + 136))
    {
      if (*(result + 136))
      {
        if (v7)
        {
          v9 = *(a2 + 144);
          v10 = *(a2 + 200);
          v11 = *(a2 + 208);
          do
          {
            v12 = *v9++;
            v13 = v12;
            if (v12 > v11)
            {
              v13 = v11;
            }

            if (v13 <= v10)
            {
              v13 = v10;
            }

            *v8++ = v13;
            --v7;
          }

          while (v7);
        }
      }

      else if (v7)
      {
        v67 = 0;
        v68 = *(result + 56);
        v69 = *(a2 + 144);
        v70 = *(a2 + 200);
        v71 = *(a2 + 208);
        do
        {
          v72 = *v69++;
          v73 = v72;
          if (v72 > v71)
          {
            v73 = v71;
          }

          if (v73 <= v70)
          {
            v73 = v70;
          }

          v8[v68 * v67] = v73;
          if (v67 + 1 == v4)
          {
            v67 = 0;
          }

          else
          {
            ++v67;
          }

          --v7;
        }

        while (v7);
      }
    }

    else if (*(result + 136))
    {
      if (v7)
      {
        v37 = 0;
        v38 = *(a2 + 144);
        v39 = *(a2 + 200);
        v40 = *(a2 + 208);
        do
        {
          v41 = *(v38 + 4 * *(a2 + 56) * v37);
          if (v41 > v40)
          {
            v41 = v40;
          }

          if (v41 <= v39)
          {
            v41 = v39;
          }

          *v8++ = v41;
          if (v37 + 1 == v4)
          {
            v37 = 0;
          }

          else
          {
            ++v37;
          }

          --v7;
        }

        while (v7);
      }
    }

    else if (v7)
    {
      v74 = 0;
      v75 = *(result + 56);
      v76 = *(a2 + 144);
      v77 = *(a2 + 200);
      v78 = *(a2 + 208);
      do
      {
        v79 = *(v76 + 4 * *(a2 + 56) * v74);
        if (v79 > v78)
        {
          v79 = v78;
        }

        if (v79 <= v77)
        {
          v79 = v77;
        }

        v8[v75 * v74] = v79;
        if (v74 + 1 == v4)
        {
          v74 = 0;
        }

        else
        {
          ++v74;
        }

        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (*(a2 + 136))
    {
      v128 = 0uLL;
      v129 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      v122 = 0uLL;
      v123 = 0uLL;
      v120 = 0uLL;
      v121 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v114 = 0uLL;
      v115 = 0uLL;
      v112 = 0uLL;
      v113 = 0uLL;
      sub_262205FA8(&v115, v5, v6, &v112);
      v14 = v112;
      if (v112 != *v5)
      {
        v15 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v16 = sub_2621D552C(v15, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v16, " ", 1);
        v17 = MEMORY[0x277D82670];
        v18 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v18, " ", 1);
        sub_2621D552C(v18, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v19 = std::locale::use_facet(v130, MEMORY[0x277D82680]);
        (v19->__vftable[2].~facet_0)(v19, 10);
        std::locale::~locale(v130);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v20 = std::locale::use_facet(v130, MEMORY[0x277D82680]);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(v130);
        std::ostream::put();
        std::ostream::flush();
      }

      v131 = 0u;
      v132 = 0u;
      *&v130[0].__locale_ = 0u;
      v21 = *(v3 + 104);
      v22 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v21)
        {
          v23 = 0;
          v24 = 0;
          v26 = *(&v116 + 1);
          v25 = v117;
          v27 = (v117 - *(&v116 + 1)) >> 3;
          if (v27 <= 1)
          {
            v27 = 1;
          }

          v28 = v127;
          v29 = *(a2 + 144);
          v30 = *(a2 + 200);
          v31 = *(a2 + 208);
          do
          {
            v130[0].__locale_ = v23;
            locale = v23;
            if (v25 != v26)
            {
              v33 = v26;
              v34 = v27;
              do
              {
                v35 = *v33++;
                v130[v35].__locale_ = 0;
                --v34;
              }

              while (v34);
              locale = v130[0].__locale_;
            }

            v36 = *(v29 + 4 * locale * v28);
            if (v36 > v31)
            {
              v36 = v31;
            }

            if (v36 <= v30)
            {
              v36 = v30;
            }

            *(v22 + 4 * v24) = v36;
            if ((v23 + 1) == v14)
            {
              v23 = 0;
            }

            else
            {
              v23 = (v23 + 1);
            }

            ++v24;
          }

          while (v24 != v21);
        }
      }

      else if (v21)
      {
        v80 = 0;
        v81 = 0;
        v83 = *(&v116 + 1);
        v82 = v117;
        v84 = (v117 - *(&v116 + 1)) >> 3;
        if (v84 <= 1)
        {
          v84 = 1;
        }

        v85 = v127;
        v86 = *(v3 + 56);
        v87 = *(a2 + 144);
        v88 = *(a2 + 200);
        v89 = *(a2 + 208);
        do
        {
          v130[0].__locale_ = v80;
          v90 = v80;
          if (v82 != v83)
          {
            v91 = v83;
            v92 = v84;
            do
            {
              v93 = *v91++;
              v130[v93].__locale_ = 0;
              --v92;
            }

            while (v92);
            v90 = v130[0].__locale_;
          }

          v94 = *(v87 + 4 * v90 * v85);
          if (v94 > v89)
          {
            v94 = v89;
          }

          if (v94 <= v88)
          {
            v94 = v88;
          }

          *(v22 + 4 * v80 * v86) = v94;
          if ((v80 + 1) == v14)
          {
            v80 = 0;
          }

          else
          {
            v80 = (v80 + 1);
          }

          ++v81;
        }

        while (v81 != v21);
      }
    }

    else
    {
      v128 = 0uLL;
      v129 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      v122 = 0uLL;
      v123 = 0uLL;
      v120 = 0uLL;
      v121 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v114 = 0uLL;
      v115 = 0uLL;
      v112 = 0uLL;
      v113 = 0uLL;
      sub_262205FA8(&v115, v5, v6, &v112);
      v42 = v112;
      if (v112 != *v5)
      {
        v43 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v44 = sub_2621D552C(v43, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v44, " ", 1);
        v45 = MEMORY[0x277D82670];
        v46 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v46, " ", 1);
        sub_2621D552C(v46, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v46 + *(*v46 - 24)));
        v47 = std::locale::use_facet(v130, MEMORY[0x277D82680]);
        (v47->__vftable[2].~facet_0)(v47, 10);
        std::locale::~locale(v130);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v45 + *(*v45 - 24)));
        v48 = std::locale::use_facet(v130, MEMORY[0x277D82680]);
        (v48->__vftable[2].~facet_0)(v48, 10);
        std::locale::~locale(v130);
        std::ostream::put();
        std::ostream::flush();
      }

      v131 = 0u;
      v132 = 0u;
      *&v130[0].__locale_ = 0u;
      v49 = *(v3 + 104);
      v50 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v49)
        {
          v51 = 0;
          v52 = 0;
          v54 = *(&v116 + 1);
          v53 = v117;
          v55 = (v117 - *(&v116 + 1)) >> 3;
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v127;
          v57 = *(a2 + 136);
          v58 = *(a2 + 144);
          v59 = *(a2 + 200);
          v60 = *(a2 + 208);
          do
          {
            v130[0].__locale_ = v51;
            v61 = v51;
            if (v53 != v54)
            {
              v62 = v54;
              v63 = v55;
              do
              {
                v64 = *v62++;
                v130[v64].__locale_ = 0;
                --v63;
              }

              while (v63);
              v61 = v130[0].__locale_;
            }

            v65 = *(a2 + 56);
            if (v57)
            {
              v65 = v56;
            }

            v66 = *(v58 + 4 * v65 * v61);
            if (v66 > v60)
            {
              v66 = v60;
            }

            if (v66 <= v59)
            {
              v66 = v59;
            }

            *(v50 + 4 * v52) = v66;
            if ((v51 + 1) == v42)
            {
              v51 = 0;
            }

            else
            {
              v51 = (v51 + 1);
            }

            ++v52;
          }

          while (v52 != v49);
        }
      }

      else if (v49)
      {
        v95 = 0;
        v96 = 0;
        v98 = *(&v116 + 1);
        v97 = v117;
        v99 = (v117 - *(&v116 + 1)) >> 3;
        if (v99 <= 1)
        {
          v99 = 1;
        }

        v100 = v127;
        v101 = *(v3 + 56);
        v102 = *(a2 + 136);
        v103 = *(a2 + 144);
        v104 = *(a2 + 200);
        v105 = *(a2 + 208);
        do
        {
          v130[0].__locale_ = v95;
          v106 = v95;
          if (v97 != v98)
          {
            v107 = v98;
            v108 = v99;
            do
            {
              v109 = *v107++;
              v130[v109].__locale_ = 0;
              --v108;
            }

            while (v108);
            v106 = v130[0].__locale_;
          }

          v110 = *(a2 + 56);
          if (v102)
          {
            v110 = v100;
          }

          v111 = *(v103 + 4 * v110 * v106);
          if (v111 > v105)
          {
            v111 = v105;
          }

          if (v111 <= v104)
          {
            v111 = v104;
          }

          *(v50 + 4 * v95 * v101) = v111;
          if ((v95 + 1) == v42)
          {
            v95 = 0;
          }

          else
          {
            v95 = (v95 + 1);
          }

          ++v96;
        }

        while (v96 != v49);
      }
    }

    return sub_2621C57C8(&v115);
  }

  return result;
}

void sub_2622E2B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::locale::~locale((v13 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622E2B8C(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EECE8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  v6 = v5 * v4;
  *(a1 + 104) = v6;
  *(a1 + 112) = 0;
  if (v6)
  {
    sub_262223DB8(&v7, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_2622E2C70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622E2C88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v167 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 184))
    {
      v153 = 0uLL;
      v154 = 0uLL;
      v152 = 0uLL;
      v9 = *(result + 104);
      v10 = *(result + 144);
      if (*(result + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 192);
          v12 = *(a2 + 248);
          do
          {
            v13 = *v11++;
            *v10++ = v12 < v13;
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v84 = 0;
        v85 = *(result + 56);
        v86 = *(result + 64);
        v87 = *(a2 + 192);
        v88 = *(a2 + 248);
        do
        {
          v89 = 0;
          v10[v86 * *(&v152 + 1) + v85 * v152] = v88 < *(v87 + v84);
          do
          {
            result = *(&v152 + v89 + 8) + 1;
            *(&v152 + v89 + 8) = result;
            if (result != *(v3 + 16 + v89))
            {
              break;
            }

            *(&v152 + v89 + 8) = 0;
            v89 -= 8;
          }

          while (v89 != -16);
          ++v84;
        }

        while (v84 != v9);
      }
    }

    else
    {
      v153 = 0uLL;
      v154 = 0uLL;
      v152 = 0uLL;
      v43 = *(result + 104);
      v44 = *(result + 144);
      if (*(result + 136))
      {
        if (v43)
        {
          v45 = 0;
          v46 = *(a2 + 104);
          v47 = *(a2 + 112);
          v48 = *(a2 + 192);
          v49 = *(a2 + 248);
          do
          {
            v50 = 0;
            if (*(a2 + 184))
            {
              v51 = (v48 + v45);
            }

            else
            {
              v51 = (v48 + v47 * *(&v152 + 1) + v46 * v152);
            }

            *(v44 + v45) = v49 < *v51;
            do
            {
              result = *(&v152 + v50 + 8) + 1;
              *(&v152 + v50 + 8) = result;
              if (result != *(v3 + 16 + v50))
              {
                break;
              }

              *(&v152 + v50 + 8) = 0;
              v50 -= 8;
            }

            while (v50 != -16);
            ++v45;
          }

          while (v45 != v43);
        }
      }

      else if (v43)
      {
        v90 = 0;
        v91 = *(result + 56);
        v92 = *(result + 64);
        v93 = *(a2 + 104);
        v94 = *(a2 + 112);
        v95 = *(a2 + 192);
        result = *(a2 + 248);
        do
        {
          v96 = 0;
          v97 = (v95 + v94 * *(&v152 + 1) + v93 * v152);
          if (*(a2 + 184))
          {
            v97 = (v95 + v90);
          }

          *(v44 + v92 * *(&v152 + 1) + v91 * v152) = result < *v97;
          do
          {
            v98 = *(&v152 + v96 + 8) + 1;
            *(&v152 + v96 + 8) = v98;
            if (v98 != *(v3 + 16 + v96))
            {
              break;
            }

            *(&v152 + v96 + 8) = 0;
            v96 -= 8;
          }

          while (v96 != -16);
          ++v90;
        }

        while (v90 != v43);
      }
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      v165 = 0uLL;
      v166 = 0uLL;
      v163 = 0uLL;
      v164 = 0uLL;
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v152 = 0uLL;
      v144 = 0uLL;
      v145 = 0uLL;
      v143 = 0uLL;
      sub_2621D96E4(&v152, v5, a2, &v143);
      v14 = 0;
      v15 = &v143;
      v16 = 1;
      do
      {
        v17 = *v15;
        v18 = *(v5 + v14);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v15 = &v143 + 1;
        v14 = 1;
      }

      while (v17 == v18);
      if (v17 != v18)
      {
        v19 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v20 = sub_2621D552C(v19, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v20, " ", 1);
        v21 = MEMORY[0x277D82670];
        v22 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v22, " ", 1);
        sub_2621D552C(v22, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v24 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      *&v149[0].__locale_ = 0u;
      v146 = 0u;
      v147 = 0u;
      v25 = *(v3 + 104);
      v26 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v25)
        {
          v27 = 0;
          v29 = *(&v153 + 1);
          v28 = v154;
          v30 = (v154 - *(&v153 + 1)) >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = *(a2 + 192);
          v32 = *(a2 + 248);
          do
          {
            v146 = *&v149[0].__locale_;
            if (v28 != v29)
            {
              v33 = v29;
              v34 = v30;
              do
              {
                v35 = *v33++;
                *(&v146 + v35) = 0;
                --v34;
              }

              while (v34);
            }

            v36 = 0;
            v37 = 0;
            v38 = &v146;
            v39 = 1;
            do
            {
              v40 = v39;
              v37 += *(&v164 + v36) * *v38;
              v38 = (&v146 + 8);
              v36 = 1;
              v39 = 0;
            }

            while ((v40 & 1) != 0);
            *(v26 + v27) = v32 < *(v31 + v37);
            for (i = 1; i != -1; --i)
            {
              v42 = (v149[i].__locale_ + 1);
              v149[i].__locale_ = v42;
              if (v42 != *(&v143 + i * 8))
              {
                break;
              }

              v149[i].__locale_ = 0;
            }

            ++v27;
          }

          while (v27 != v25);
        }
      }

      else if (v25)
      {
        v99 = 0;
        v101 = *(&v153 + 1);
        v100 = v154;
        v102 = (v154 - *(&v153 + 1)) >> 3;
        if (v102 <= 1)
        {
          v102 = 1;
        }

        v103 = *(v3 + 56);
        v104 = *(v3 + 64);
        v105 = *(a2 + 192);
        v106 = *(a2 + 248);
        do
        {
          locale = v149[0].__locale_;
          v107 = v149[1].__locale_;
          v146 = *&v149[0].__locale_;
          if (v100 != v101)
          {
            v109 = v101;
            v110 = v102;
            do
            {
              v111 = *v109++;
              *(&v146 + v111) = 0;
              --v110;
            }

            while (v110);
          }

          v112 = 0;
          v113 = 0;
          v114 = &v146;
          v115 = 1;
          do
          {
            v116 = v115;
            v113 += *(&v164 + v112) * *v114;
            v114 = (&v146 + 8);
            v112 = 1;
            v115 = 0;
          }

          while ((v116 & 1) != 0);
          *(v26 + v107 * v104 + locale * v103) = v106 < *(v105 + v113);
          for (j = 1; j != -1; --j)
          {
            v118 = (v149[j].__locale_ + 1);
            v149[j].__locale_ = v118;
            if (v118 != *(&v143 + j * 8))
            {
              break;
            }

            v149[j].__locale_ = 0;
          }

          ++v99;
        }

        while (v99 != v25);
      }
    }

    else
    {
      v165 = 0uLL;
      v166 = 0uLL;
      v163 = 0uLL;
      v164 = 0uLL;
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v152 = 0uLL;
      v144 = 0uLL;
      v145 = 0uLL;
      v143 = 0uLL;
      sub_2621D96E4(&v152, v5, a2, &v143);
      v52 = 0;
      v53 = &v143;
      v54 = 1;
      do
      {
        v55 = *v53;
        v56 = *(v5 + v52);
        if ((v54 & 1) == 0)
        {
          break;
        }

        v54 = 0;
        v53 = &v143 + 1;
        v52 = 1;
      }

      while (v55 == v56);
      if (v55 != v56)
      {
        v57 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v58 = sub_2621D552C(v57, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v58, " ", 1);
        v59 = MEMORY[0x277D82670];
        v60 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v60, " ", 1);
        sub_2621D552C(v60, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v60 + *(*v60 - 24)));
        v61 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v61->__vftable[2].~facet_0)(v61, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v59 + *(*v59 - 24)));
        v62 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v62->__vftable[2].~facet_0)(v62, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      *&v149[0].__locale_ = 0u;
      v146 = 0u;
      v147 = 0u;
      v63 = *(v3 + 104);
      v64 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v63)
        {
          v65 = 0;
          v67 = *(&v153 + 1);
          v66 = v154;
          v68 = (v154 - *(&v153 + 1)) >> 3;
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v69 = *(a2 + 104);
          v70 = *(a2 + 112);
          v71 = *(a2 + 192);
          v72 = *(a2 + 248);
          do
          {
            v146 = *&v149[0].__locale_;
            if (v66 != v67)
            {
              v73 = v67;
              v74 = v68;
              do
              {
                v75 = *v73++;
                *(&v146 + v75) = 0;
                --v74;
              }

              while (v74);
            }

            v76 = 0;
            v77 = 0;
            v78 = &v146;
            v79 = 1;
            do
            {
              v80 = v79;
              v77 += *(&v164 + v76) * *v78;
              v78 = (&v146 + 8);
              v76 = 1;
              v79 = 0;
            }

            while ((v80 & 1) != 0);
            v81 = (v71 + v77);
            if (!*(a2 + 184))
            {
              v81 = (v71 + *(&v146 + 1) * v70 + v146 * v69);
            }

            *(v64 + v65) = v72 < *v81;
            for (k = 1; k != -1; --k)
            {
              v83 = (v149[k].__locale_ + 1);
              v149[k].__locale_ = v83;
              if (v83 != *(&v143 + k * 8))
              {
                break;
              }

              v149[k].__locale_ = 0;
            }

            ++v65;
          }

          while (v65 != v63);
        }
      }

      else if (v63)
      {
        v119 = 0;
        v121 = *(&v153 + 1);
        v120 = v154;
        v122 = (v154 - *(&v153 + 1)) >> 3;
        if (v122 <= 1)
        {
          v122 = 1;
        }

        v123 = *(v3 + 56);
        v124 = *(v3 + 64);
        v126 = *(a2 + 104);
        v125 = *(a2 + 112);
        v127 = *(a2 + 192);
        v128 = *(a2 + 248);
        do
        {
          v130 = v149[0].__locale_;
          v129 = v149[1].__locale_;
          v146 = *&v149[0].__locale_;
          if (v120 != v121)
          {
            v131 = v121;
            v132 = v122;
            do
            {
              v133 = *v131++;
              *(&v146 + v133) = 0;
              --v132;
            }

            while (v132);
          }

          v134 = 0;
          v135 = 0;
          v136 = &v146;
          v137 = 1;
          do
          {
            v138 = v137;
            v135 += *(&v164 + v134) * *v136;
            v136 = (&v146 + 8);
            v134 = 1;
            v137 = 0;
          }

          while ((v138 & 1) != 0);
          v139 = v130 * v123;
          v140 = (v127 + v135);
          if (!*(a2 + 184))
          {
            v140 = (v127 + *(&v146 + 1) * v125 + v146 * v126);
          }

          *(v64 + v129 * v124 + v139) = v128 < *v140;
          for (m = 1; m != -1; --m)
          {
            v142 = (v149[m].__locale_ + 1);
            v149[m].__locale_ = v142;
            if (v142 != *(&v143 + m * 8))
            {
              break;
            }

            v149[m].__locale_ = 0;
          }

          ++v119;
        }

        while (v119 != v63);
      }
    }

    return sub_2621C57C8(&v152);
  }

  return result;
}

void sub_2622E3730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::locale::~locale(&a21);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

__n128 sub_2622E3764(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  *v17 = a1[2];
  *&v17[7] = *(a1 + 23);
  v6 = *(a1 + 31);
  a1[2] = 0;
  a1[3] = 0;
  v8 = a1 + 4;
  v7 = a1[4];
  a1[1] = 0;
  *v16 = a1[5];
  *&v16[7] = *(a1 + 47);
  v9 = *(a1 + 55);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  v15 = a1[9];
  v14 = *(a1 + 7);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 4);
  v10 = *(a2 + 8);
  a1[3] = *(a2 + 24);
  *(a1 + 1) = v10;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*v8);
  }

  v11 = *(a2 + 32);
  v8[2] = *(a2 + 48);
  *v8 = v11;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  v12 = *(a2 + 56);
  a1[9] = *(a2 + 72);
  *(a1 + 7) = v12;
  *a2 = v5;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = v4;
  *(a2 + 16) = *v17;
  *(a2 + 23) = *&v17[7];
  *(a2 + 31) = v6;
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  *(a2 + 32) = v7;
  *(a2 + 40) = *v16;
  *(a2 + 47) = *&v16[7];
  *(a2 + 55) = v9;
  result = v14;
  *(a2 + 56) = v14;
  *(a2 + 72) = v15;
  return result;
}

double sub_2622E38E4(float *a1, float *a2, float *a3)
{
  v5 = a1;
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *a2 == *a1 && v7 == v9;
  if (!v10)
  {
    v11 = v7 < v9;
    v10 = v6 == LODWORD(v8);
    v12 = v6 < SLODWORD(v8);
    if (v10)
    {
      v12 = v11;
    }

    if (v12)
    {
      goto LABEL_8;
    }

LABEL_17:
    v19 = *a3;
    v20 = *(a3 + 1);
    if (*a3 == v6 && v20 == v7)
    {
      *&result = a3[17];
      if (*&result >= a2[17])
      {
        return result;
      }
    }

    else
    {
      v22 = v20 < v7;
      v10 = v19 == v6;
      v23 = v19 < v6;
      if (v10)
      {
        v23 = v22;
      }

      if (!v23)
      {
        return result;
      }
    }

    *&result = sub_2622E3764(a2, a3).n128_u64[0];
    v26 = *a2;
    v27 = *v5;
    if (*a2 == *v5)
    {
      *&result = a2[17];
      if (*&result >= *(v5 + 68))
      {
        return result;
      }
    }

    else
    {
      v10 = LODWORD(v26) == v27;
      v30 = SLODWORD(v26) < v27;
      if (v10)
      {
        v30 = *(a2 + 1) < *(v5 + 4);
      }

      if (!v30)
      {
        return result;
      }
    }

    a1 = v5;
    v29 = a2;
    goto LABEL_42;
  }

  *&result = a2[17];
  if (*&result >= a1[17])
  {
    goto LABEL_17;
  }

LABEL_8:
  v13 = *a3;
  v14 = *(a3 + 1);
  if (*a3 == v6 && v14 == v7)
  {
    if (a3[17] < a2[17])
    {
      goto LABEL_37;
    }
  }

  else
  {
    v16 = v14 < v7;
    v10 = v13 == v6;
    v17 = v13 < v6;
    if (v10)
    {
      v17 = v16;
    }

    if (v17)
    {
      goto LABEL_37;
    }
  }

  *&result = sub_2622E3764(a1, a2).n128_u64[0];
  v24 = *a3;
  v25 = *a2;
  if (*a3 == *a2)
  {
    *&result = a3[17];
    if (*&result >= a2[17])
    {
      return result;
    }

    goto LABEL_36;
  }

  v10 = LODWORD(v24) == LODWORD(v25);
  v28 = SLODWORD(v24) < SLODWORD(v25);
  if (v10)
  {
    v28 = *(a3 + 1) < *(a2 + 1);
  }

  if (v28)
  {
LABEL_36:
    a1 = a2;
LABEL_37:
    v29 = a3;
LABEL_42:

    *&result = sub_2622E3764(a1, v29).n128_u64[0];
  }

  return result;
}

double sub_2622E3AB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  result = sub_2622E38E4(a1, a2, a3);
  v9 = *a4;
  v10 = a4[1];
  v11 = *a3;
  v12 = *(a3 + 4);
  v13 = *a4 == *a3 && v10 == v12;
  if (v13)
  {
    LODWORD(result) = a4[17];
    if (*&result >= *(a3 + 68))
    {
      return result;
    }

LABEL_10:
    *&result = sub_2622E3764(a3, a4).n128_u64[0];
    v16 = *a3;
    v17 = *(a3 + 4);
    v18 = *a2;
    v19 = *(a2 + 4);
    if (*a3 == *a2 && v17 == v19)
    {
      LODWORD(result) = *(a3 + 68);
      if (*&result >= *(a2 + 68))
      {
        return result;
      }
    }

    else
    {
      v21 = v17 < v19;
      v13 = LODWORD(v16) == LODWORD(v18);
      v22 = SLODWORD(v16) < SLODWORD(v18);
      if (v13)
      {
        v22 = v21;
      }

      if (!v22)
      {
        return result;
      }
    }

    *&result = sub_2622E3764(a2, a3).n128_u64[0];
    v23 = *a2;
    v24 = *(a2 + 4);
    v25 = *a1;
    v26 = *(a1 + 4);
    if (*a2 == *a1 && v24 == v26)
    {
      LODWORD(result) = *(a2 + 68);
      if (*&result >= *(a1 + 68))
      {
        return result;
      }
    }

    else
    {
      v27 = v24 < v26;
      v13 = LODWORD(v23) == LODWORD(v25);
      v28 = SLODWORD(v23) < SLODWORD(v25);
      if (v13)
      {
        v28 = v27;
      }

      if (!v28)
      {
        return result;
      }
    }

    *&result = sub_2622E3764(a1, a2).n128_u64[0];
    return result;
  }

  v14 = v10 < v12;
  v13 = v9 == LODWORD(v11);
  v15 = v9 < SLODWORD(v11);
  if (v13)
  {
    v15 = v14;
  }

  if (v15)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_2622E3BF4(float *a1, int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  result = sub_2622E3AB0(a1, a2, a3, a4);
  v11 = *a5;
  v12 = a5[1];
  v13 = *a4;
  v14 = *(a4 + 4);
  v15 = *a5 == *a4 && v12 == v14;
  if (v15)
  {
    LODWORD(result) = a5[17];
    if (*&result >= *(a4 + 68))
    {
      return result;
    }

LABEL_10:
    *&result = sub_2622E3764(a4, a5).n128_u64[0];
    v18 = *a4;
    v19 = *(a4 + 4);
    v20 = *a3;
    v21 = *(a3 + 4);
    if (*a4 == *a3 && v19 == v21)
    {
      LODWORD(result) = *(a4 + 68);
      if (*&result >= *(a3 + 68))
      {
        return result;
      }
    }

    else
    {
      v23 = v19 < v21;
      v15 = v18 == v20;
      v24 = v18 < v20;
      if (v15)
      {
        v24 = v23;
      }

      if (!v24)
      {
        return result;
      }
    }

    *&result = sub_2622E3764(a3, a4).n128_u64[0];
    v25 = *a3;
    v26 = *(a3 + 4);
    v27 = *a2;
    v28 = a2[1];
    if (*a3 == *a2 && v26 == v28)
    {
      LODWORD(result) = *(a3 + 68);
      if (*&result >= *(a2 + 17))
      {
        return result;
      }
    }

    else
    {
      v29 = v26 < v28;
      v15 = v25 == v27;
      v30 = v25 < v27;
      if (v15)
      {
        v30 = v29;
      }

      if (!v30)
      {
        return result;
      }
    }

    *&result = sub_2622E3764(a2, a3).n128_u64[0];
    v31 = *a2;
    v32 = a2[1];
    v33 = *a1;
    v34 = *(a1 + 1);
    if (*a2 == *a1 && v32 == v34)
    {
      LODWORD(result) = a2[17];
      if (*&result >= a1[17])
      {
        return result;
      }
    }

    else
    {
      v35 = v32 < v34;
      v15 = v31 == LODWORD(v33);
      v36 = v31 < SLODWORD(v33);
      if (v15)
      {
        v36 = v35;
      }

      if (!v36)
      {
        return result;
      }
    }

    *&result = sub_2622E3764(a1, a2).n128_u64[0];
    return result;
  }

  v16 = v12 < v14;
  v15 = v11 == v13;
  v17 = v11 < v13;
  if (v15)
  {
    v17 = v16;
  }

  if (v17)
  {
    goto LABEL_10;
  }

  return result;
}

BOOL sub_2622E3D9C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2622E38E4(a1, (a1 + 80), (a2 - 80));
        return 1;
      case 4:
        sub_2622E3AB0(a1, a1 + 80, a1 + 160, (a2 - 80));
        return 1;
      case 5:
        sub_2622E3BF4(a1, (a1 + 80), a1 + 160, a1 + 240, (a2 - 80));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = *(a2 - 80);
      v7 = *(a2 - 76);
      v5 = a2 - 80;
      v8 = *a1;
      v9 = *(a1 + 4);
      if (v6 == *a1 && v7 == v9)
      {
        if (*(v2 - 12) >= *(a1 + 68))
        {
          return 1;
        }
      }

      else
      {
        v36 = v7 < v9;
        v18 = v6 == LODWORD(v8);
        v37 = v6 < SLODWORD(v8);
        if (v18)
        {
          v37 = v36;
        }

        if (!v37)
        {
          return 1;
        }
      }

      sub_2622E3764(a1, v5);
      return 1;
    }
  }

  v10 = a1 + 160;
  sub_2622E38E4(a1, (a1 + 80), (a1 + 160));
  v11 = a1 + 240;
  if (a1 + 240 == v2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  v39 = v2;
  while (2)
  {
    v14 = *v11;
    v15 = *(v11 + 4);
    v16 = *v10;
    v17 = *(v10 + 4);
    v18 = *v11 == *v10 && v15 == v17;
    if (v18)
    {
      v21 = *(v11 + 68);
      if (v21 >= *(v10 + 68))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v19 = v15 < v17;
      v18 = v14 == v16;
      v20 = v14 < v16;
      if (v18)
      {
        v20 = v19;
      }

      if (!v20)
      {
        goto LABEL_45;
      }

      v21 = *(v11 + 68);
    }

    v22 = 0;
    v24 = *v11;
    v23 = *(v11 + 4);
    v41 = *(v11 + 8);
    *v47 = *(v11 + 16);
    *&v47[7] = *(v11 + 23);
    v40 = *(v11 + 31);
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v46 = *(v11 + 33);
    *&v46[14] = *(v11 + 47);
    v42 = *(v11 + 55);
    v43 = *(v11 + 32);
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    v45 = *(v11 + 64);
    v44 = *(v11 + 56);
    v25 = *(v11 + 72);
    v26 = v12;
    v27 = *v10;
    while (1)
    {
      v28 = a1 + v26;
      v29 = *(a1 + v26 + 164);
      *(v28 + 240) = v27;
      *(v28 + 244) = v29;
      if (v22 < 0)
      {
        operator delete(*(v28 + 248));
      }

      *(v28 + 248) = *(v28 + 168);
      *(v28 + 264) = *(v28 + 184);
      *(v28 + 191) = 0;
      *(v28 + 168) = 0;
      if (*(v28 + 295) < 0)
      {
        operator delete(*(v28 + 272));
      }

      v30 = a1 + v26;
      *(v28 + 272) = *(a1 + v26 + 192);
      *(v28 + 288) = *(a1 + v26 + 208);
      *(v30 + 215) = 0;
      *(v30 + 192) = 0;
      *(a1 + v26 + 296) = *(a1 + v26 + 216);
      *(v30 + 312) = *(a1 + v26 + 232);
      if (v26 == -160)
      {
        v10 = a1;
        goto LABEL_40;
      }

      v27 = *(v30 + 80);
      v31 = *(v30 + 84);
      if (v27 != v24 || v31 != v23)
      {
        break;
      }

      if (v21 >= *(a1 + v26 + 148))
      {
        goto LABEL_40;
      }

LABEL_37:
      v10 -= 80;
      v22 = *(v28 + 191);
      v26 -= 80;
    }

    v32 = v31 > v23;
    if (v27 != v24)
    {
      v32 = v27 > v24;
    }

    if (v32)
    {
      goto LABEL_37;
    }

    v30 = a1 + v26;
    v10 = a1 + v26 + 160;
LABEL_40:
    v33 = v30 + 216;
    v34 = (v30 + 192);
    v35 = (v30 + 168);
    *v10 = v24;
    *(v10 + 4) = v23;
    if (*(v10 + 31) < 0)
    {
      operator delete(*v35);
    }

    *v35 = v41;
    *(v10 + 16) = *v47;
    *(v10 + 23) = *&v47[7];
    *(v10 + 31) = v40;
    if (*(v10 + 55) < 0)
    {
      operator delete(*v34);
    }

    *v34 = v43;
    *(v10 + 33) = *v46;
    *(v10 + 47) = *&v46[14];
    *(v10 + 55) = v42;
    *v33 = v44;
    *(v33 + 8) = v45;
    *(v10 + 68) = v21;
    ++v13;
    *(v10 + 72) = v25;
    v2 = v39;
    if (v13 != 8)
    {
LABEL_45:
      v10 = v11;
      v12 += 80;
      v11 += 80;
      if (v11 == v2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 80 == v39;
  }
}

uint64_t sub_2622E4178(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v162 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 232) && *(a2 + 536) == 1 && *(a2 + 736) == 1)
    {
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      v9 = *(result + 104);
      v10 = *(result + 144);
      if (*(result + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 240);
          v12 = *(a2 + 544);
          v13 = *(a2 + 744);
          do
          {
            v15 = *v11++;
            v14 = v15;
            v16 = *v12++;
            v17 = (*(a2 + 344) - v16) * v14;
            v18 = *v13++;
            *v10++ = v17 * v18;
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v103 = 0;
        v104 = *(result + 56);
        v105 = *(result + 64);
        v106 = *(a2 + 240);
        v107 = *(a2 + 544);
        v108 = *(a2 + 744);
        do
        {
          result = 0;
          v10[v105 * *(&v147 + 1) + v104 * v147] = (*(a2 + 344) - *(v107 + v103)) * *(v106 + 4 * v103) * *(v108 + v103);
          do
          {
            v109 = *(&v147 + result + 8) + 1;
            *(&v147 + result + 8) = v109;
            if (v109 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v147 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v103;
        }

        while (v103 != v9);
      }
    }

    else
    {
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      v49 = *(result + 104);
      v50 = *(result + 144);
      if (*(result + 136))
      {
        if (v49)
        {
          for (i = 0; i != v49; ++i)
          {
            result = sub_2622E4C8C(a2, i, v147, *(&v147 + 1));
            v52 = 0;
            *(v50 + 4 * i) = result;
            do
            {
              v53 = *(&v147 + v52 + 8) + 1;
              *(&v147 + v52 + 8) = v53;
              if (v53 != *(v3 + 16 + v52))
              {
                break;
              }

              *(&v147 + v52 + 8) = 0;
              v52 -= 8;
            }

            while (v52 != -16);
          }
        }
      }

      else if (v49)
      {
        v80 = 0;
        v81 = *(result + 56);
        v82 = *(result + 64);
        v83 = result + 16;
        do
        {
          v84 = v81 * v147;
          v85 = v50 + 4 * v82 * *(&v147 + 1);
          result = sub_2622E4C8C(a2, v80, v147, *(&v147 + 1));
          v86 = 0;
          *(v85 + 4 * v84) = result;
          do
          {
            v87 = *(&v147 + v86 + 8) + 1;
            *(&v147 + v86 + 8) = v87;
            if (v87 != *(v83 + v86))
            {
              break;
            }

            *(&v147 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v80;
        }

        while (v80 != v49);
      }
    }
  }

  else
  {
    if (*(a2 + 232) && *(a2 + 536) == 1 && *(a2 + 736) == 1)
    {
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      sub_2621D96E4(&v147, v5, a2, &v138);
      v19 = 0;
      v20 = &v138;
      v21 = 1;
      do
      {
        v22 = *v20;
        v23 = *(v5 + v19);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v21 = 0;
        v20 = &v138 + 1;
        v19 = 1;
      }

      while (v22 == v23);
      if (v22 != v23)
      {
        v24 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v25 = sub_2621D552C(v24, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v25, " ", 1);
        v26 = MEMORY[0x277D82670];
        v27 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v27, " ", 1);
        sub_2621D552C(v27, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v27 + *(*v27 - 24)));
        v28 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v29 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v29->__vftable[2].~facet_0)(v29, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      *&v144[0].__locale_ = 0u;
      v141 = 0u;
      v142 = 0u;
      v30 = *(v3 + 104);
      v31 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v30)
        {
          v32 = 0;
          v34 = *(&v148 + 1);
          v33 = v149;
          v35 = (v149 - *(&v148 + 1)) >> 3;
          if (v35 <= 1)
          {
            v35 = 1;
          }

          v36 = *(a2 + 240);
          v37 = *(a2 + 544);
          v38 = *(a2 + 744);
          do
          {
            v141 = *&v144[0].__locale_;
            if (v33 != v34)
            {
              v39 = v34;
              v40 = v35;
              do
              {
                v41 = *v39++;
                *(&v141 + v41) = 0;
                --v40;
              }

              while (v40);
            }

            v42 = 0;
            v43 = 0;
            v44 = &v141;
            v45 = 1;
            do
            {
              v46 = v45;
              v43 += *(&v159 + v42) * *v44;
              v44 = (&v141 + 8);
              v42 = 1;
              v45 = 0;
            }

            while ((v46 & 1) != 0);
            *(v31 + 4 * v32) = (*(a2 + 344) - *(v37 + v43)) * *(v36 + 4 * v43) * *(v38 + v43);
            for (j = 1; j != -1; --j)
            {
              v48 = (v144[j].__locale_ + 1);
              v144[j].__locale_ = v48;
              if (v48 != *(&v138 + j * 8))
              {
                break;
              }

              v144[j].__locale_ = 0;
            }

            ++v32;
          }

          while (v32 != v30);
        }
      }

      else if (v30)
      {
        v110 = 0;
        v112 = *(&v148 + 1);
        v111 = v149;
        v113 = (v149 - *(&v148 + 1)) >> 3;
        if (v113 <= 1)
        {
          v113 = 1;
        }

        v114 = *(v3 + 56);
        v115 = *(v3 + 64);
        v116 = *(a2 + 240);
        v117 = *(a2 + 544);
        v118 = *(a2 + 744);
        do
        {
          locale = v144[0].__locale_;
          v120 = v144[1].__locale_;
          v141 = *&v144[0].__locale_;
          if (v111 != v112)
          {
            v121 = v112;
            v122 = v113;
            do
            {
              v123 = *v121++;
              *(&v141 + v123) = 0;
              --v122;
            }

            while (v122);
          }

          v124 = 0;
          v125 = 0;
          v126 = &v141;
          v127 = 1;
          do
          {
            v128 = v127;
            v125 += *(&v159 + v124) * *v126;
            v126 = (&v141 + 8);
            v124 = 1;
            v127 = 0;
          }

          while ((v128 & 1) != 0);
          *(v31 + 4 * v120 * v115 + 4 * locale * v114) = (*(a2 + 344) - *(v117 + v125)) * *(v116 + 4 * v125) * *(v118 + v125);
          for (k = 1; k != -1; --k)
          {
            v130 = (v144[k].__locale_ + 1);
            v144[k].__locale_ = v130;
            if (v130 != *(&v138 + k * 8))
            {
              break;
            }

            v144[k].__locale_ = 0;
          }

          ++v110;
        }

        while (v110 != v30);
      }
    }

    else
    {
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v147 = 0u;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      sub_2621D96E4(&v147, v5, a2, &v138);
      v54 = 0;
      v55 = &v138;
      v56 = 1;
      do
      {
        v57 = *v55;
        v58 = *(v5 + v54);
        if ((v56 & 1) == 0)
        {
          break;
        }

        v56 = 0;
        v55 = &v138 + 1;
        v54 = 1;
      }

      while (v57 == v58);
      if (v57 != v58)
      {
        v59 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v60 = sub_2621D552C(v59, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v60, " ", 1);
        v61 = MEMORY[0x277D82670];
        v62 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v62, " ", 1);
        sub_2621D552C(v62, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v62 + *(*v62 - 24)));
        v63 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v63->__vftable[2].~facet_0)(v63, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v61 + *(*v61 - 24)));
        v64 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v64->__vftable[2].~facet_0)(v64, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      *&v144[0].__locale_ = 0u;
      v141 = 0u;
      v142 = 0u;
      v65 = *(v3 + 104);
      v137 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v65)
        {
          v66 = 0;
          v68 = *(&v148 + 1);
          v67 = v149;
          v69 = (v149 - *(&v148 + 1)) >> 3;
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v135 = v69;
          do
          {
            v141 = *&v144[0].__locale_;
            if (v67 != v68)
            {
              v70 = v68;
              v71 = v135;
              do
              {
                v72 = *v70++;
                *(&v141 + v72) = 0;
                --v71;
              }

              while (v71);
            }

            v73 = 0;
            v74 = 0;
            v75 = &v141;
            v76 = 1;
            do
            {
              v77 = v76;
              v74 += *(&v159 + v73) * *v75;
              v75 = (&v141 + 8);
              v73 = 1;
              v76 = 0;
            }

            while ((v77 & 1) != 0);
            *(v137 + 4 * v66) = sub_2622E4C8C(a2, v74, v141, *(&v141 + 1));
            for (m = 1; m != -1; --m)
            {
              v79 = (v144[m].__locale_ + 1);
              v144[m].__locale_ = v79;
              if (v79 != *(&v138 + m * 8))
              {
                break;
              }

              v144[m].__locale_ = 0;
            }

            ++v66;
          }

          while (v66 != v65);
        }
      }

      else if (v65)
      {
        v88 = 0;
        v134 = v149;
        v136 = *(&v148 + 1);
        if (((v149 - *(&v148 + 1)) >> 3) <= 1)
        {
          v89 = 1;
        }

        else
        {
          v89 = (v149 - *(&v148 + 1)) >> 3;
        }

        v133 = *(v3 + 64);
        v131 = v89;
        v132 = *(v3 + 56);
        do
        {
          v90 = v65;
          v92 = v144[0].__locale_;
          v91 = v144[1].__locale_;
          v141 = *&v144[0].__locale_;
          if (v134 != v136)
          {
            v93 = v136;
            v94 = v131;
            do
            {
              v95 = *v93++;
              *(&v141 + v95) = 0;
              --v94;
            }

            while (v94);
          }

          v96 = 0;
          v97 = 0;
          v98 = &v141;
          v99 = 1;
          do
          {
            v100 = v99;
            v97 += *(&v159 + v96) * *v98;
            v98 = (&v141 + 8);
            v96 = 1;
            v99 = 0;
          }

          while ((v100 & 1) != 0);
          *(v137 + 4 * v133 * v91 + 4 * v132 * v92) = sub_2622E4C8C(a2, v97, v141, *(&v141 + 1));
          for (n = 1; n != -1; --n)
          {
            v102 = (v144[n].__locale_ + 1);
            v144[n].__locale_ = v102;
            if (v102 != *(&v138 + n * 8))
            {
              break;
            }

            v144[n].__locale_ = 0;
          }

          ++v88;
          v65 = v90;
        }

        while (v88 != v90);
      }
    }

    return sub_2621C57C8(&v147);
  }

  return result;
}

void sub_2622E4C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::locale::~locale(&a27);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622E4C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 232) == 1)
  {
    v4 = (*(a1 + 240) + 4 * a2);
  }

  else
  {
    v4 = (*(a1 + 240) + 4 * *(a1 + 160) * a4 + 4 * *(a1 + 152) * a3);
  }

  if (*(a1 + 536) == 1)
  {
    v5 = (*(a1 + 544) + a2);
  }

  else
  {
    v5 = (*(a1 + 544) + *(a1 + 464) * a4 + *(a1 + 456) * a3);
  }

  v6 = *v4;
  v7 = *v5;
  if (*(a1 + 736) == 1)
  {
    v8 = (*(a1 + 744) + a2);
  }

  else
  {
    v8 = (*(a1 + 744) + *(a1 + 664) * a4 + *(a1 + 656) * a3);
  }

  return (*(a1 + 344) - v7) * v6 * *v8;
}

uint64_t sub_2622E4D30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v125 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 232))
    {
      v111 = 0uLL;
      v112 = 0uLL;
      v110 = 0uLL;
      v9 = *(result + 104);
      v10 = *(result + 144);
      if (*(result + 136))
      {
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            *(v10 + i) = *(*(a2 + 240) + i) == *(a2 + 296);
          }
        }
      }

      else if (v9)
      {
        for (j = 0; j != v9; ++j)
        {
          v68 = 0;
          *(v10 + *(result + 64) * *(&v110 + 1) + *(result + 56) * v110) = *(*(a2 + 240) + j) == *(a2 + 296);
          do
          {
            v69 = *(&v110 + v68 + 8) + 1;
            *(&v110 + v68 + 8) = v69;
            if (v69 != *(result + 16 + v68))
            {
              break;
            }

            *(&v110 + v68 + 8) = 0;
            v68 -= 8;
          }

          while (v68 != -16);
        }
      }
    }

    else
    {
      v111 = 0uLL;
      v112 = 0uLL;
      v110 = 0uLL;
      v36 = *(result + 104);
      v37 = *(result + 144);
      if (*(result + 136))
      {
        if (v36)
        {
          for (k = 0; k != v36; ++k)
          {
            if (*(a2 + 232) == 1)
            {
              v39 = (*(a2 + 240) + k);
            }

            else
            {
              v39 = (*(a2 + 240) + *(a2 + 160) * *(&v110 + 1) + *(a2 + 152) * v110);
            }

            v40 = 0;
            *(v37 + k) = *v39 == *(a2 + 296);
            do
            {
              v41 = *(&v110 + v40 + 8) + 1;
              *(&v110 + v40 + 8) = v41;
              if (v41 != *(result + 16 + v40))
              {
                break;
              }

              *(&v110 + v40 + 8) = 0;
              v40 -= 8;
            }

            while (v40 != -16);
          }
        }
      }

      else if (v36)
      {
        for (m = 0; m != v36; ++m)
        {
          if (*(a2 + 232) == 1)
          {
            v71 = (*(a2 + 240) + m);
          }

          else
          {
            v71 = (*(a2 + 240) + *(a2 + 160) * *(&v110 + 1) + *(a2 + 152) * v110);
          }

          v72 = 0;
          result = *(v3 + 64);
          *(v37 + result * *(&v110 + 1) + *(v3 + 56) * v110) = *v71 == *(a2 + 296);
          do
          {
            v73 = *(&v110 + v72 + 8) + 1;
            *(&v110 + v72 + 8) = v73;
            if (v73 != *(v3 + 16 + v72))
            {
              break;
            }

            *(&v110 + v72 + 8) = 0;
            v72 -= 8;
          }

          while (v72 != -16);
        }
      }
    }
  }

  else
  {
    if (*(a2 + 232))
    {
      v123 = 0uLL;
      v124 = 0uLL;
      v121 = 0uLL;
      v122 = 0uLL;
      v119 = 0uLL;
      v120 = 0uLL;
      v117 = 0uLL;
      v118 = 0uLL;
      v115 = 0uLL;
      v116 = 0uLL;
      v113 = 0uLL;
      v114 = 0uLL;
      v111 = 0uLL;
      v112 = 0uLL;
      v110 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v101 = 0uLL;
      sub_2621D96E4(&v110, v5, a2, &v101);
      v12 = 0;
      v13 = &v101;
      v14 = 1;
      do
      {
        v15 = *v13;
        v16 = *(v5 + v12);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v14 = 0;
        v13 = &v101 + 1;
        v12 = 1;
      }

      while (v15 == v16);
      if (v15 != v16)
      {
        v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v18, " ", 1);
        v19 = MEMORY[0x277D82670];
        v20 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v20, " ", 1);
        sub_2621D552C(v20, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v21 = std::locale::use_facet(v107, MEMORY[0x277D82680]);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(v107);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v19 + *(*v19 - 24)));
        v22 = std::locale::use_facet(v107, MEMORY[0x277D82680]);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v107);
        std::ostream::put();
        std::ostream::flush();
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      *&v107[0].__locale_ = 0u;
      v104 = 0u;
      v105 = 0u;
      v23 = *(v3 + 104);
      v24 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v23)
        {
          for (n = 0; n != v23; ++n)
          {
            v26 = *(&v111 + 1);
            v104 = *&v107[0].__locale_;
            if (v112 != *(&v111 + 1))
            {
              v27 = (v112 - *(&v111 + 1)) >> 3;
              if (v27 <= 1)
              {
                v27 = 1;
              }

              do
              {
                v28 = *v26++;
                *(&v104 + v28) = 0;
                --v27;
              }

              while (v27);
            }

            v29 = 0;
            v30 = 0;
            v31 = &v104;
            v32 = 1;
            do
            {
              v33 = v32;
              v30 += *(&v122 + v29) * *v31;
              v31 = (&v104 + 8);
              v29 = 1;
              v32 = 0;
            }

            while ((v33 & 1) != 0);
            *(v24 + n) = *(*(a2 + 240) + v30) == *(a2 + 296);
            for (ii = 1; ii != -1; --ii)
            {
              v35 = (v107[ii].__locale_ + 1);
              v107[ii].__locale_ = v35;
              if (v35 != *(&v101 + ii * 8))
              {
                break;
              }

              v107[ii].__locale_ = 0;
            }
          }
        }
      }

      else if (v23)
      {
        for (jj = 0; jj != v23; ++jj)
        {
          v75 = *(&v111 + 1);
          locale = v107[0].__locale_;
          v76 = v107[1].__locale_;
          v104 = *&v107[0].__locale_;
          if (v112 != *(&v111 + 1))
          {
            v78 = (v112 - *(&v111 + 1)) >> 3;
            if (v78 <= 1)
            {
              v78 = 1;
            }

            do
            {
              v79 = *v75++;
              *(&v104 + v79) = 0;
              --v78;
            }

            while (v78);
          }

          v80 = 0;
          v81 = 0;
          v82 = &v104;
          v83 = 1;
          do
          {
            v84 = v83;
            v81 += *(&v122 + v80) * *v82;
            v82 = (&v104 + 8);
            v80 = 1;
            v83 = 0;
          }

          while ((v84 & 1) != 0);
          *(v24 + *(v3 + 64) * v76 + *(v3 + 56) * locale) = *(*(a2 + 240) + v81) == *(a2 + 296);
          for (kk = 1; kk != -1; --kk)
          {
            v86 = (v107[kk].__locale_ + 1);
            v107[kk].__locale_ = v86;
            if (v86 != *(&v101 + kk * 8))
            {
              break;
            }

            v107[kk].__locale_ = 0;
          }
        }
      }
    }

    else
    {
      v123 = 0uLL;
      v124 = 0uLL;
      v121 = 0uLL;
      v122 = 0uLL;
      v119 = 0uLL;
      v120 = 0uLL;
      v117 = 0uLL;
      v118 = 0uLL;
      v115 = 0uLL;
      v116 = 0uLL;
      v113 = 0uLL;
      v114 = 0uLL;
      v111 = 0uLL;
      v112 = 0uLL;
      v110 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v101 = 0uLL;
      sub_2621D96E4(&v110, v5, a2, &v101);
      v42 = 0;
      v43 = &v101;
      v44 = 1;
      do
      {
        v45 = *v43;
        v46 = *(v5 + v42);
        if ((v44 & 1) == 0)
        {
          break;
        }

        v44 = 0;
        v43 = &v101 + 1;
        v42 = 1;
      }

      while (v45 == v46);
      if (v45 != v46)
      {
        v47 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v48 = sub_2621D552C(v47, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v48, " ", 1);
        v49 = MEMORY[0x277D82670];
        v50 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v50, " ", 1);
        sub_2621D552C(v50, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v50 + *(*v50 - 24)));
        v51 = std::locale::use_facet(v107, MEMORY[0x277D82680]);
        (v51->__vftable[2].~facet_0)(v51, 10);
        std::locale::~locale(v107);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v49 + *(*v49 - 24)));
        v52 = std::locale::use_facet(v107, MEMORY[0x277D82680]);
        (v52->__vftable[2].~facet_0)(v52, 10);
        std::locale::~locale(v107);
        std::ostream::put();
        std::ostream::flush();
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      *&v107[0].__locale_ = 0u;
      v104 = 0u;
      v105 = 0u;
      v53 = *(v3 + 104);
      v54 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v53)
        {
          for (mm = 0; mm != v53; ++mm)
          {
            v56 = *(&v111 + 1);
            v104 = *&v107[0].__locale_;
            if (v112 != *(&v111 + 1))
            {
              v57 = (v112 - *(&v111 + 1)) >> 3;
              if (v57 <= 1)
              {
                v57 = 1;
              }

              do
              {
                v58 = *v56++;
                *(&v104 + v58) = 0;
                --v57;
              }

              while (v57);
            }

            v59 = 0;
            v60 = 0;
            v61 = &v104;
            v62 = 1;
            do
            {
              v63 = v62;
              v60 += *(&v122 + v59) * *v61;
              v61 = (&v104 + 8);
              v59 = 1;
              v62 = 0;
            }

            while ((v63 & 1) != 0);
            if (*(a2 + 232) == 1)
            {
              v64 = (*(a2 + 240) + v60);
            }

            else
            {
              v64 = (*(a2 + 240) + *(a2 + 160) * *(&v104 + 1) + *(a2 + 152) * v104);
            }

            *(v54 + mm) = *v64 == *(a2 + 296);
            for (nn = 1; nn != -1; --nn)
            {
              v66 = (v107[nn].__locale_ + 1);
              v107[nn].__locale_ = v66;
              if (v66 != *(&v101 + nn * 8))
              {
                break;
              }

              v107[nn].__locale_ = 0;
            }
          }
        }
      }

      else if (v53)
      {
        for (i1 = 0; i1 != v53; ++i1)
        {
          v88 = *(&v111 + 1);
          v89 = v107[0].__locale_;
          v90 = v107[1].__locale_;
          v104 = *&v107[0].__locale_;
          if (v112 != *(&v111 + 1))
          {
            v91 = (v112 - *(&v111 + 1)) >> 3;
            if (v91 <= 1)
            {
              v91 = 1;
            }

            do
            {
              v92 = *v88++;
              *(&v104 + v92) = 0;
              --v91;
            }

            while (v91);
          }

          v93 = 0;
          v94 = 0;
          v95 = &v104;
          v96 = 1;
          do
          {
            v97 = v96;
            v94 += *(&v122 + v93) * *v95;
            v95 = (&v104 + 8);
            v93 = 1;
            v96 = 0;
          }

          while ((v97 & 1) != 0);
          if (*(a2 + 232) == 1)
          {
            v98 = (*(a2 + 240) + v94);
          }

          else
          {
            v98 = (*(a2 + 240) + *(a2 + 160) * *(&v104 + 1) + *(a2 + 152) * v104);
          }

          *(v54 + *(v3 + 64) * v90 + *(v3 + 56) * v89) = *v98 == *(a2 + 296);
          for (i2 = 1; i2 != -1; --i2)
          {
            v100 = (v107[i2].__locale_ + 1);
            v107[i2].__locale_ = v100;
            if (v100 != *(&v101 + i2 * 8))
            {
              break;
            }

            v107[i2].__locale_ = 0;
          }
        }
      }
    }

    return sub_2621C57C8(&v110);
  }

  return result;
}

void sub_2622E57D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::locale::~locale(&a21);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

float sub_2622E5808(uint64_t a1, unsigned int a2, float a3)
{
  v3 = (1.0 / a3) * *(a1 + 116);
  v9 = v3;
  v4 = 88;
  if (a2 < 2)
  {
    v4 = 80;
  }

  v5 = 92;
  if (a2 < 2)
  {
    v5 = 84;
  }

  v6 = (a1 + v4);
  v7 = (a1 + v5);
  if (*v7 >= v3)
  {
    v7 = &v9;
  }

  if (v3 >= *v6)
  {
    v6 = v7;
  }

  return *v6 * a3;
}

void sub_2622E589C(uint64_t a1, float *a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, __n128 a9, __n128 a10, __n128 a11, int8x16_t a12)
{
  v12 = a7;
  if (a7 <= 1)
  {
    v19 = fmaxf(sub_2622E8828(a6, a7, a8, a9, a10, a11.n128_f64[0], a12) * 10.0, 1.0);
    v21 = sub_2622E5808(a2, v12, v19);
    v23 = v22;
    v25 = v24;
    v26 = 432;
    if (!v12)
    {
      v26 = 408;
    }

    v27 = (a6 + v26);
    v28 = v27[1];
    v29 = vsub_f32(*v27, v28);
    v30 = sqrtf(vaddv_f32(vmul_f32(v29, v29)));
    v31 = *(a5 + 8);
    if ((v30 / v31) >= a2[26])
    {
      v20.n128_u64[0] = *v27;
      sub_2622DE614(&v130, a4, v20, v28, v21);
      v32 = v130;
      v33 = v131;
      if (v131 == v130)
      {
        *a1 = 0;
        *(a1 + 80) = 0;
LABEL_98:
        if (!v32)
        {
          return;
        }

        v82 = v32;
        goto LABEL_100;
      }

      if (v25 < (v23 * 0.25))
      {
        v25 = v23 * 0.25;
      }

      sub_2622DE7E8(&v124, -v23, v23 + v25, v25);
      if (v128 == 1)
      {
        *a1 = 0;
        *(a1 + 80) = 0;
        goto LABEL_96;
      }

      v123 = 0;
      v83 = 0uLL;
      v122 = 0u;
      v84 = v126;
      if (v126)
      {
        v85 = v129;
        do
        {
          sub_2621C8F2C(&v122, v85++);
          --v84;
        }

        while (v84);
        v83 = v122;
      }

      v86 = v83;
      v87 = 126 - 2 * __clz((*(&v83 + 1) - v83) >> 2);
      if (*(&v83 + 1) == v83)
      {
        v88 = 0;
      }

      else
      {
        v88 = v87;
      }

      sub_2622E62D8(v83, *(&v83 + 1), v88, 1);
      if (a2[28] >= ((v19 * v25) / 2.5))
      {
        v91 = (v19 * v25) / 2.5;
      }

      else
      {
        v91 = a2[28];
      }

      if (*(&v86 + 1) == v86)
      {
        goto LABEL_94;
      }

      __stra = a3;
      v92 = v12 ? 208 : 200;
      v93 = 0.0;
      *&v89 = 0;
      v109 = v89;
      v94 = v86;
      while (1)
      {
        *&v90 = *v94;
        v112 = v90;
        v95 = vmla_n_f32(*(a6 + v92), *(a6 + 216), *v94);
        v96 = *(a6 + 196);
        LODWORD(v116) = *(a6 + 192);
        v115 = v95;
        LODWORD(__p[0]) = v96;
        *(&v116 + 1) = v95;
        sub_262246CEC(&__dst, *(a6 + 576), &v115, (a6 + 80), a6 + 144, 1);
        if (v121 == 1)
        {
          v97 = vsub_f32(*&__dst, *(&__dst + 8));
          *&v90 = vmul_f32(v97, v97);
          *&v90 = sqrtf(vaddv_f32(*&v90));
          if ((*&v90 / v31) >= a2[26] && (*&v90 / v30) >= a2[27])
          {
            v98 = sub_2622DF4C4(v32, v33, *&__dst, *(&__dst + 8), v91);
            if (v98 > 1.0)
            {
              v98 = 1.0;
            }

            v99 = v109;
            v90 = v112;
            if (v98 > v93)
            {
              *&v99 = *&v112;
            }

            v109 = v99;
            if (v98 > v93)
            {
              v93 = v98;
            }

            if (v98 > 0.9)
            {
              break;
            }
          }
        }

        if (++v94 == *(&v86 + 1))
        {
          goto LABEL_89;
        }
      }

      LODWORD(v109) = v112;
      v93 = v98;
LABEL_89:
      if (v93 <= 0.5)
      {
LABEL_94:
        *a1 = 0;
        *(a1 + 80) = 0;
        if (!v86)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      switch(v12)
      {
        case 2u:
          v104 = *(a6 + 192);
          break;
        case 1u:
          v100 = *(a6 + 208);
          goto LABEL_118;
        case 0u:
          v100 = *(a6 + 200);
LABEL_118:
          v114 = vmla_n_f32(v100, *(a6 + 216), *&v109);
          goto LABEL_122;
        default:
          v104 = *(a6 + 196);
          break;
      }

      v114 = COERCE_UNSIGNED_INT(v104 + *&v109);
LABEL_122:
      memset(__p, 0, sizeof(__p));
      v116 = 0u;
      v115.i32[0] = *(a6 + 632);
      v115.i32[1] = v12;
      std::string::operator=(&v116, __stra);
      if (*(a6 + 631) < 0)
      {
        sub_2621CC810(&__dst, *(a6 + 608), *(a6 + 616));
      }

      else
      {
        __dst = *(a6 + 608);
        v121 = *(a6 + 624);
      }

      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      *&__p[1] = __dst;
      __p[3] = v121;
      *&v118 = __PAIR64__(LODWORD(v93), v12);
      *(&v118 + 2) = v30;
      v105 = 648;
      if (!v12)
      {
        v105 = 644;
      }

      HIDWORD(v118) = *(a6 + v105);
      v119 = v114;
      *a1 = v115;
      *(a1 + 8) = v116;
      *(a1 + 24) = __p[0];
      v116 = 0uLL;
      __p[0] = 0;
      *(a1 + 48) = __p[3];
      *(a1 + 32) = *&__p[1];
      memset(&__p[1], 0, 24);
      *(a1 + 56) = v118;
      *(a1 + 72) = v119;
      *(a1 + 80) = 1;
      if (!v86)
      {
        goto LABEL_96;
      }

LABEL_95:
      operator delete(v86);
LABEL_96:
      v124.i64[0] = &unk_2874EF6A8;
      if (v127)
      {
        sub_2621D1B78(v127);
      }

      goto LABEL_98;
    }

LABEL_19:
    *a1 = 0;
    *(a1 + 80) = 0;
    return;
  }

  v34 = *(a6 + 196);
  v35 = v34 + 0.1;
  v110 = v34 + -0.1;
  a11.n128_u64[0] = vmul_f32(vadd_f32(*(a6 + 200), *(a6 + 208)), 0x3F0000003F000000);
  v108 = a11;
  v36 = a11;
  v36.n128_f32[2] = v34;
  v37 = *(a6 + 576);
  v38 = a11;
  v38.n128_f32[2] = v35;
  v124 = v36;
  v125 = v38;
  sub_262246CEC(&v115, v37, &v124, (a6 + 80), a6 + 144, 0);
  v39 = *(a6 + 576);
  v40 = v108;
  v41 = v108;
  v41.i32[2] = *(a6 + 196);
  v40.n128_f32[2] = v110;
  v124 = v41;
  v125 = v40;
  sub_262246CEC(&v130, v39, &v124, (a6 + 80), a6 + 144, 0);
  v42 = 0.0;
  v43 = 0.0;
  if (BYTE8(v116) == 1)
  {
    v44 = vsub_f32(v115, *&v116);
    v43 = sqrtf(vaddv_f32(vmul_f32(v44, v44)));
  }

  if (v132 == 1)
  {
    v45 = vsub_f32(v130, v131);
    v42 = sqrtf(vaddv_f32(vmul_f32(v45, v45)));
  }

  if (v43 >= v42)
  {
    v42 = v43;
  }

  v46 = 504;
  if (v12 == 2)
  {
    v46 = 480;
  }

  v47 = (a6 + v46);
  v48 = *v47;
  v49 = v47[1];
  v50 = vsub_f32(*v47, v49);
  v51 = sqrtf(vaddv_f32(vmul_f32(v50, v50)));
  v52 = *(a5 + 16);
  if ((v51 / v52) < a2[26])
  {
    goto LABEL_19;
  }

  v53 = fmaxf(v42 * 10.0, 1.0);
  v54 = sub_2622E5808(a2, v12, v53);
  v56 = v55;
  v58 = v57;
  v59.n128_u64[0] = v48;
  sub_2622DE614(&v130, a4, v59, v49, v54);
  if (v58 >= (v56 / 3.0))
  {
    v60 = v58;
  }

  else
  {
    v60 = v56 / 3.0;
  }

  sub_2622DE7E8(&v124, -v56, v56 + v60, v60);
  if (v128 == 1)
  {
    *a1 = 0;
    *(a1 + 80) = 0;
    goto LABEL_59;
  }

  v123 = 0;
  v61 = 0uLL;
  v122 = 0u;
  v62 = v126;
  if (v126)
  {
    v63 = v129;
    do
    {
      sub_2621C8F2C(&v122, v63++);
      --v62;
    }

    while (v62);
    v61 = v122;
  }

  v64 = v61;
  v65 = 126 - 2 * __clz((*(&v61 + 1) - v61) >> 2);
  if (*(&v61 + 1) == v61)
  {
    v66 = 0;
  }

  else
  {
    v66 = v65;
  }

  sub_2622E62D8(v61, *(&v61 + 1), v66, 1);
  if (a2[28] >= ((v53 * v60) / 2.5))
  {
    v68 = (v53 * v60) / 2.5;
  }

  else
  {
    v68 = a2[28];
  }

  if (*(&v64 + 1) == v64)
  {
    goto LABEL_57;
  }

  __str = a3;
  v69 = v12 == 2 ? 192 : 196;
  *&v67 = 0;
  v111 = v67;
  v70 = v130;
  v71 = v131;
  v72 = 0.0;
  v73 = v64;
  while (1)
  {
    v74 = *v73;
    *&v116 = *(a6 + v69) + *v73;
    v75 = *(a6 + 208);
    v115 = *(a6 + 200);
    LODWORD(__p[0]) = v116;
    *(&v116 + 1) = v75;
    sub_262246CEC(&__dst, *(a6 + 576), &v115, (a6 + 80), a6 + 144, 1);
    if (v121 == 1)
    {
      v76 = vsub_f32(*&__dst, *(&__dst + 8));
      v77 = sqrtf(vaddv_f32(vmul_f32(v76, v76)));
      if ((v77 / v52) >= a2[26] && (v77 / v51) >= a2[27])
      {
        v78 = sub_2622DF4C4(v70, v71, *&__dst, *(&__dst + 8), v68);
        if (v78 > 1.0)
        {
          v78 = 1.0;
        }

        v79 = v78 <= v72;
        if (v78 > v72)
        {
          v72 = v78;
        }

        v80 = v111;
        if (!v79)
        {
          *&v80 = v74;
        }

        v111 = v80;
        if (v78 > 0.9)
        {
          break;
        }
      }
    }

    if (++v73 == *(&v64 + 1))
    {
      goto LABEL_51;
    }
  }

  v72 = v78;
  *&v111 = v74;
LABEL_51:
  if (v72 <= 0.55)
  {
LABEL_57:
    *a1 = 0;
    *(a1 + 80) = 0;
    if (!v64)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  switch(v12)
  {
    case 2u:
      v101 = *(a6 + 192);
      break;
    case 1u:
      v81 = *(a6 + 208);
      goto LABEL_103;
    case 0u:
      v81 = *(a6 + 200);
LABEL_103:
      v113 = vmla_n_f32(v81, *(a6 + 216), *&v111);
      goto LABEL_107;
    default:
      v101 = *(a6 + 196);
      break;
  }

  v113 = COERCE_UNSIGNED_INT(v101 + *&v111);
LABEL_107:
  memset(__p, 0, sizeof(__p));
  v116 = 0u;
  v115.i32[0] = *(a6 + 632);
  v115.i32[1] = v12;
  std::string::operator=(&v116, __str);
  if (*(a6 + 631) < 0)
  {
    sub_2621CC810(&__dst, *(a6 + 608), *(a6 + 616));
  }

  else
  {
    __dst = *(a6 + 608);
    v121 = *(a6 + 624);
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = __dst;
  __p[3] = v121;
  *&v118 = __PAIR64__(LODWORD(v72), v12);
  *(&v118 + 2) = v51;
  v102 = (a6 + 400);
  if (v12 != 2)
  {
    v102 = (a6 + 404);
  }

  HIDWORD(v118) = *v102;
  v119 = v113;
  *a1 = v115;
  *(a1 + 8) = v116;
  *(a1 + 24) = __p[0];
  v116 = 0uLL;
  __p[0] = 0;
  *(a1 + 48) = __p[3];
  *(a1 + 32) = *&__p[1];
  memset(&__p[1], 0, 24);
  v103 = v118;
  *(a1 + 72) = v119;
  *(a1 + 56) = v103;
  *(a1 + 80) = 1;
  if (v64)
  {
LABEL_58:
    operator delete(v64);
  }

LABEL_59:
  v124.i64[0] = &unk_2874EF6A8;
  if (v127)
  {
    sub_2621D1B78(v127);
  }

  v82 = v130;
  if (v130)
  {
LABEL_100:
    operator delete(v82);
  }
}

void sub_2622E621C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49)
{
  sub_2622DF66C(&a15);
  if (v49)
  {
    a30 = v49;
    operator delete(v49);
  }

  a33 = &unk_2874EF6A8;
  if (a49)
  {
    sub_2621D1B78(a49);
  }

  v52 = *(v50 - 176);
  if (v52)
  {
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622E62D8(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (fabsf(*v8) < fabsf(*v9))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v9;
      v87 = fabsf(v83);
      v88 = fabsf(*v9);
      v89 = fabsf(v85);
      if (v87 >= v88)
      {
        if (v89 < v87)
        {
          *v82 = v85;
          *v84 = v83;
          v90 = v9;
          v91 = v9 + 1;
          if (v89 < v88)
          {
            goto LABEL_175;
          }

LABEL_177:
          if (fabsf(*v8) < v87)
          {
            *v84 = *v8;
            *v8 = v83;
            v139 = *v84;
            v140 = *v82;
            v141 = fabsf(*v84);
            if (v141 < fabsf(*v82))
            {
              *(v9 + 1) = v139;
              *(v9 + 2) = v140;
              v142 = *v9;
              if (v141 < fabsf(*v9))
              {
                *v9 = v139;
                v9[1] = v142;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v89 < v87)
        {
          v90 = v9;
          v91 = v9 + 2;
          v87 = v88;
          v83 = *v9;
          goto LABEL_175;
        }

        *v9 = v83;
        v9[1] = v86;
        v90 = v9 + 1;
        v91 = v9 + 2;
        v87 = v88;
        v83 = v86;
        if (v89 < v88)
        {
LABEL_175:
          *v90 = v85;
          *v91 = v86;
          goto LABEL_177;
        }
      }

      v87 = v89;
      v83 = v85;
      goto LABEL_177;
    }

    if (v10 == 5)
    {

      return sub_2622E6C84(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 4;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = fabsf(v97);
            if (v99 < fabsf(v98))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 4;
                if (v100 == 4)
                {
                  break;
                }

                v98 = *(v9 + v100 - 8);
                v100 -= 4;
                if (v99 >= fabsf(v98))
                {
                  v102 = (v9 + v101);
                  goto LABEL_126;
                }
              }

              v102 = v9;
LABEL_126:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 4;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v136 = *v7;
          v135 = *(v7 + 4);
          v7 = v92;
          v137 = fabsf(v135);
          if (v137 < fabsf(v136))
          {
            v138 = v92;
            do
            {
              *v138 = v136;
              v136 = *(v138 - 2);
              --v138;
            }

            while (v137 < fabsf(v136));
            *v138 = v135;
          }

          ++v92;
        }

        while ((v7 + 4) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v103 = (v10 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v9[v106];
            if (2 * v105 + 2 < v10 && fabsf(*v107) < fabsf(v107[1]))
            {
              ++v107;
              v106 = 2 * v105 + 2;
            }

            v108 = &v9[v105];
            v109 = *v107;
            v110 = *v108;
            v111 = fabsf(*v108);
            if (fabsf(*v107) >= v111)
            {
              do
              {
                v112 = v107;
                *v108 = v109;
                if (v103 < v106)
                {
                  break;
                }

                v113 = 2 * v106;
                v106 = (2 * v106) | 1;
                v107 = &v9[v106];
                v114 = v113 + 2;
                if (v114 < v10 && fabsf(*v107) < fabsf(v107[1]))
                {
                  ++v107;
                  v106 = v114;
                }

                v109 = *v107;
                v108 = v112;
              }

              while (fabsf(*v107) >= v111);
              *v112 = v110;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v115 = 0;
          v116 = *v9;
          v117 = v9;
          do
          {
            v118 = v117;
            v119 = &v117[v115];
            v117 = v119 + 1;
            v120 = 2 * v115;
            v115 = (2 * v115) | 1;
            v121 = v120 + 2;
            if (v121 < v10)
            {
              v123 = v119[2];
              v122 = v119 + 2;
              if (fabsf(*(v122 - 1)) < fabsf(v123))
              {
                v117 = v122;
                v115 = v121;
              }
            }

            *v118 = *v117;
          }

          while (v115 <= ((v10 - 2) >> 1));
          if (v117 == --a2)
          {
            *v117 = v116;
          }

          else
          {
            *v117 = *a2;
            *a2 = v116;
            v124 = (v117 - v9 + 4) >> 2;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = &v9[v127];
              v129 = *v128;
              v130 = *v117;
              v131 = fabsf(*v117);
              if (fabsf(*v128) < v131)
              {
                do
                {
                  v132 = v128;
                  *v117 = v129;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = &v9[v127];
                  v129 = *v128;
                  v117 = v132;
                }

                while (fabsf(*v128) < v131);
                *v132 = v130;
              }
            }
          }

          v125 = v10-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = fabsf(*v8);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = fabsf(*v11);
      v18 = fabsf(*v9);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (fabsf(*v11) < fabsf(*v9))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (fabsf(*v8) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = fabsf(v26);
      v29 = fabsf(v27);
      v30 = *(a2 - 2);
      v31 = fabsf(v30);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (fabsf(*v25) < fabsf(v32))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (fabsf(v33) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v35 = v11[1];
      v34 = v11 + 1;
      v36 = v35;
      v37 = v9[2];
      v38 = fabsf(v35);
      v39 = fabsf(v37);
      v40 = *(a2 - 3);
      v41 = fabsf(v40);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v36;
          v42 = v9[2];
          if (fabsf(*v34) < fabsf(v42))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v36;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (fabsf(v43) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = fabsf(*v12);
      v47 = fabsf(*v25);
      v48 = *v34;
      v49 = fabsf(*v34);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v11;
    v21 = fabsf(*v9);
    v22 = fabsf(*v11);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v11;
        if (fabsf(*v9) < fabsf(*v11))
        {
          *v11 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 >= v21)
    {
      *v11 = v19;
      *v9 = v20;
      if (fabsf(*v8) >= v22)
      {
        goto LABEL_57;
      }

      *v9 = *v8;
    }

    else
    {
      *v11 = v13;
    }

    *v8 = v20;
LABEL_57:
    --a3;
    v51 = *v9;
    v52 = fabsf(*v9);
    if ((a4 & 1) != 0 || fabsf(*(v9 - 1)) < v52)
    {
      v53 = v9;
      do
      {
        v54 = v53;
        v55 = v53[1];
        ++v53;
        v56 = v55;
      }

      while (fabsf(v55) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (fabsf(v59) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (fabsf(v58) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v56;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v56 = v63;
          }

          while (fabsf(v63) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (fabsf(v64) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_78;
      }

      v65 = sub_2622E6E00(v9, v54);
      v9 = v54 + 1;
      result = sub_2622E6E00(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_78:
        result = sub_2622E62D8(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      if (v52 >= fabsf(*v8))
      {
        v67 = (v9 + 1);
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v67 += 4;
        }

        while (v52 >= fabsf(*v9));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= fabsf(v66));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < fabsf(v69));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= fabsf(v72));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < fabsf(v73));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = fabsf(v77);
  v79 = fabsf(*v9);
  v80 = *v8;
  v81 = fabsf(*v8);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v134 = *v9;
      v133 = v9[1];
      if (fabsf(v133) < fabsf(*v9))
      {
        *v9 = v133;
        v9[1] = v134;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (fabsf(*v8) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}

float *sub_2622E6C84(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = fabsf(*a2);
  v8 = fabsf(*result);
  v9 = *a3;
  v10 = fabsf(*a3);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v7 = v10;
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (fabsf(*a2) < fabsf(*result))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
        v7 = fabsf(*a3);
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v7 = v8;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    v7 = fabsf(*a3);
    if (v7 < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (fabsf(*a4) < v7)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (fabsf(*a3) < fabsf(*a2))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (fabsf(*a2) < fabsf(*result))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (fabsf(*a5) < fabsf(*a4))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (fabsf(*a4) < fabsf(*a3))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (fabsf(*a3) < fabsf(*a2))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (fabsf(*a2) < fabsf(*result))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_2622E6E00(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = fabsf(v6);
      v8 = fabsf(*a1);
      v9 = *(a2 - 1);
      v10 = fabsf(v9);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v31 = *a1;
          v30 = a1[1];
          if (fabsf(v30) < fabsf(*a1))
          {
            *a1 = v30;
            *(a1 + 1) = v31;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        *(a1 + 1) = v5;
        v41 = *(a2 - 1);
        if (fabsf(v41) >= v8)
        {
          return 1;
        }

        a1[1] = v41;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_2622E6C84(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = fabsf(v21);
    v26 = fabsf(*a1);
    v27 = fabsf(v23);
    if (v25 >= v26)
    {
      if (v27 < v25)
      {
        *v20 = v23;
        *v22 = v21;
        v28 = a1;
        v29 = a1 + 1;
        if (v27 >= v26)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v27 < v25)
      {
        v28 = a1;
        v29 = a1 + 2;
        v25 = v26;
        v21 = *a1;
LABEL_44:
        *v28 = v23;
        *v29 = v24;
LABEL_46:
        v42 = *(a2 - 1);
        if (fabsf(v42) < v25)
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = fabsf(*v22);
          if (v45 < fabsf(*v20))
          {
            *(a1 + 1) = v43;
            *(a1 + 2) = v44;
            v46 = *a1;
            if (v45 < fabsf(*a1))
            {
              *a1 = v43;
              *(a1 + 1) = v46;
            }
          }
        }

        return 1;
      }

      *a1 = v21;
      a1[1] = v24;
      v28 = a1 + 1;
      v29 = a1 + 2;
      v25 = v26;
      v21 = v24;
      if (v27 < v26)
      {
        goto LABEL_44;
      }
    }

    v25 = v27;
    v21 = v23;
    goto LABEL_46;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (fabsf(v3) < fabsf(*a1))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v12 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = fabsf(v13);
  v16 = fabsf(*a1);
  v17 = fabsf(v12);
  if (v15 < v16)
  {
    v18 = a1;
    v19 = a1 + 2;
    if (v17 >= v15)
    {
      *a1 = v13;
      *(a1 + 1) = v14;
      v18 = a1 + 1;
      v19 = a1 + 2;
      if (v17 >= v16)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v18 = v12;
    *v19 = v14;
    goto LABEL_26;
  }

  if (v17 < v15)
  {
    a1[1] = v12;
    *v11 = v13;
    v18 = a1;
    v19 = a1 + 1;
    if (v17 < v16)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 12; ; i += 4)
  {
    v35 = *v32;
    v36 = *v11;
    v37 = fabsf(*v32);
    if (v37 < fabsf(*v11))
    {
      v38 = i;
      while (1)
      {
        *(a1 + v38) = v36;
        v39 = v38 - 4;
        if (v38 == 4)
        {
          break;
        }

        v36 = *(a1 + v38 - 8);
        v38 -= 4;
        if (v37 >= fabsf(v36))
        {
          v40 = (a1 + v39);
          goto LABEL_34;
        }
      }

      v40 = a1;
LABEL_34:
      *v40 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v11 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

void sub_2622E70F4(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (*(a1 + 16))
  {
    v6 = *a1;
    v8 = (a1 + 8);
    v7 = *(a1 + 8);
    *a1 = a1 + 8;
    *(v7 + 16) = 0;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    if (!v9)
    {
LABEL_25:
      v19 = 0;
LABEL_26:
      sub_2621C6C04(v19);
      goto LABEL_27;
    }

    v10 = sub_2621CBE5C(v9);
    v11 = v10;
    if (a2 != a3)
    {
      while (1)
      {
        v12 = *v8;
        v13 = *a2;
        v14 = (a1 + 8);
        v15 = (a1 + 8);
        if (*v8)
        {
          while (1)
          {
            while (1)
            {
              v15 = v12;
              v16 = *(v12 + 25);
              if (v13 >= v16)
              {
                break;
              }

              v12 = *v15;
              v14 = v15;
              if (!*v15)
              {
                goto LABEL_14;
              }
            }

            if (v16 >= v13)
            {
              break;
            }

            v12 = v15[1];
            if (!v12)
            {
              v14 = v15 + 1;
              goto LABEL_14;
            }
          }

          v17 = v11;
        }

        else
        {
LABEL_14:
          *(v9 + 25) = v13;
          sub_2621C6C50(a1, v15, v14, v9);
          if (!v11)
          {
            ++a2;
            goto LABEL_25;
          }

          v17 = sub_2621CBE5C(v11);
          v9 = v11;
        }

        ++a2;
        v11 = v17;
        if (a2 == a3)
        {
          goto LABEL_20;
        }
      }
    }

    v17 = v10;
LABEL_20:
    sub_2621C6C04(v9);
    if (v17)
    {
      for (i = v17[2]; i; i = i[2])
      {
        v17 = i;
      }

      v19 = v17;
      goto LABEL_26;
    }
  }

LABEL_27:
  if (a2 != a3)
  {
    v20 = (a1 + 8);
    do
    {
      v21 = *v20;
      if (!*v20)
      {
LABEL_36:
        operator new();
      }

      v22 = *a2;
      while (1)
      {
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 25);
          if (v22 >= v24)
          {
            break;
          }

          v21 = *v23;
          if (!*v23)
          {
            goto LABEL_36;
          }
        }

        if (v24 >= v22)
        {
          break;
        }

        v21 = v23[1];
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      ++a2;
    }

    while (a2 != a3);
  }
}

void sub_2622E7360(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(RSFloorPlan);
    v3 = *(a1 + 8);
    *(a1 + 8) = v2;
  }
}

float *sub_2622E743C(void *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = RSTextCoachingSignal;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[2] = a3;
    *(v5 + 2) = a2;
    *(v5 + 3) = 0;
    v7 = *(v5 + 4);
    *(v5 + 4) = off_279B30860[a2 + 1];
  }

  return v6;
}

id sub_2622E76BC(__n128 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v16[0] = v4;
  HIDWORD(v5) = a1.n128_u32[1];
  LODWORD(v5) = a1.n128_u32[1];
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v16[1] = v8;
  v11 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v9, v10, COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2])));
  v16[2] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v16, 3);

  return v13;
}

BOOL sub_2622E7A80(void *a1, _OWORD *a2)
{
  v3 = a1;
  v7 = objc_msgSend_count(v3, v4, v5);
  if (v7 == 3)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, 0);
    objc_msgSend_floatValue(v8, v9, v10);
    v25 = v11;
    v13 = objc_msgSend_objectAtIndexedSubscript_(v3, v12, 1);
    objc_msgSend_floatValue(v13, v14, v15);
    v24 = v16;
    v18 = objc_msgSend_objectAtIndexedSubscript_(v3, v17, 2);
    objc_msgSend_floatValue(v18, v19, v20);
    v21 = v25;
    DWORD1(v21) = v24;
    DWORD2(v21) = v22;
    *a2 = v21;
  }

  return v7 == 3;
}

void sub_2622E8064(uint64_t a1)
{
  sub_2622E809C(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_2622E809C(uint64_t a1)
{
  *a1 = &unk_2874EE6C8;
  if (*(a1 + 32))
  {
    espresso_context_destroy();
  }

  if (*(a1 + 40))
  {
    espresso_plan_destroy();
  }

  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    do
    {
      v4 = v2[7];
      if (v4)
      {
        MEMORY[0x266727420](v4, 0x1080C403DA0D3ADLL);
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_2621CC7B4(*(a1 + 16));
  v8 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = v3;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    v8 = *(a1 + 16);
  }

  sub_2621CC7B4(v8);
  return a1;
}

uint64_t sub_2622E8198(void *a1)
{
  v1 = a1[1];
  v2 = a1 + 2;
  if (v1 == a1 + 2)
  {
    return 1;
  }

  while (1)
  {
    if (*(v1 + 55) < 0)
    {
      sub_2621CC810(__p, v1[4], v1[5]);
    }

    else
    {
      *__p = *(v1 + 2);
      v8 = v1[6];
    }

    if (espresso_network_bind_buffer())
    {
      break;
    }

    v3 = v1[1];
    v4 = v1;
    if (v3)
    {
      do
      {
        v1 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v1 = v4[2];
        v5 = *v1 == v4;
        v4 = v1;
      }

      while (!v5);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    if (v1 == v2)
    {
      return 1;
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_2622E8294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t sub_2622E82B0(uint64_t a1, __int128 *a2)
{
  v2 = a1 + 256;
  v3 = a2[3];
  v5 = *a2;
  v4 = a2[1];
  *(a1 + 48) = a2[2];
  *(a1 + 64) = v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  v6 = *(a1 + 24);
  v7 = *(a1 + 56);
  *(a1 + 192) = v6;
  *(a1 + 196) = v7;
  if (v6 <= v7)
  {
    v8 = v7;
    v7 = v6;
  }

  else
  {
    *(a1 + 192) = v7;
    *(a1 + 196) = v6;
    v8 = v6;
  }

  v9 = *(a1 + 16);
  *(a1 + 240) = v9;
  v10 = a1 + 240;
  v65 = *(a1 + 32);
  *&v11 = v9;
  *(&v11 + 1) = v65;
  *(a1 + 200) = v11;
  v12 = vsub_f32(*&v9, *&v65);
  v59 = v9;
  v13 = vmul_f32(v12, v12);
  *v13.i32 = sqrtf(vaddv_f32(v13)) + 0.00000011921;
  v14 = vdiv_f32(vsub_f32(*&v65, *&v9), vdup_lane_s32(v13, 0));
  *(a1 + 216) = v14;
  *(a1 + 224) = xmmword_2623A7700;
  v63 = *(a1 + 128);
  *&v11 = vsub_f32(*&v9, *&v63);
  *v13.i32 = vaddv_f32(vmul_f32(v14, *&v11));
  v15 = vmul_f32(v14, v14);
  *&v11 = vmul_f32(*&v11, *&v11);
  *&v11 = vsqrt_f32(vadd_f32(vzip1_s32(v15, *&v11), vzip2_s32(v15, *&v11)));
  v16 = *v13.i32 / fmaxf(vmul_lane_f32(*&v11, *&v11, 1).f32[0], 1.1755e-38);
  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  if (v16 >= -1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = -1.0;
  }

  v61 = acosf(v18);
  v19 = vsub_f32(*&v65, *&v63);
  v20 = vaddv_f32(vmul_f32(v14, v19));
  v21 = vmul_f32(v19, v19);
  v22 = vsqrt_f32(vadd_f32(vzip1_s32(v15, v21), vzip2_s32(v15, v21)));
  v23 = v20 / fmaxf(vmul_lane_f32(v22, v22, 1).f32[0], 1.1755e-38);
  if (v23 <= 1.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1.0;
  }

  if (v23 >= -1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = -1.0;
  }

  v64 = vdupq_n_s64(0x4066800000000000uLL);
  v26 = vmulq_f64(vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(acosf(v25)), LODWORD(v61))), v64);
  v62 = vdupq_n_s64(0x400921FB60000000uLL);
  v27 = vdup_n_s32(0x43340000u);
  *&v26.f64[0] = vcvt_f32_f64(vdivq_f64(v26, v62));
  v28 = vsub_f32(v27, *&v26.f64[0]);
  *(v2 + 388) = vbsl_s8(vcgt_f32(*&v26.f64[0], v28), v28, *&v26.f64[0]);
  *(v10 + 8) = v7;
  *(v2 + 8) = v8;
  *v2 = v59;
  *(v2 + 16) = v65;
  *(v2 + 24) = v7;
  *(v2 + 40) = v8;
  *(v2 + 32) = v65;
  sub_262246CEC(&v67, *(v10 + 336), v10, (v10 - 160), v10 - 96, 1);
  *(v10 + 168) = v67;
  *(v10 + 184) = v68;
  sub_262246CEC(&v67, *(v10 + 336), (v2 + 16), (v10 - 160), v10 - 96, 1);
  *(v10 + 192) = v67;
  *(v10 + 208) = v68;
  v29 = *(v10 - 44);
  v30 = *(v10 - 40);
  v31 = *(v10 - 32);
  *(v2 + 56) = v29;
  *(v2 + 48) = v30;
  *(v2 + 72) = v29;
  *(v2 + 64) = v31;
  sub_262246CEC(&v67, *(v10 + 336), (v2 + 48), (v10 - 160), v10 - 96, 1);
  *(v10 + 216) = v67;
  *(v10 + 232) = v68;
  v32 = *(v10 - 32);
  v33 = *(v10 - 40);
  *(v2 + 112) = v33;
  v34 = (v2 + 112);
  v35 = *(v10 - 48);
  v36 = *(v10 - 44);
  v34[-2].i32[2] = v35;
  v34[-2].i64[0] = v33;
  v34[-1].i32[2] = v35;
  v34[-1].i64[0] = v32;
  v34->i32[2] = v36;
  v34[1].i32[2] = v36;
  v34[1].i64[0] = v32;
  sub_262246CEC(&v67, *(v10 + 336), v34 - 2, (v10 - 160), v10 - 96, 1);
  *(v10 + 240) = v67;
  *(v10 + 256) = v68;
  sub_262246CEC(&v67, *(v10 + 336), v34, (v10 - 160), v10 - 96, 1);
  v37.i64[1] = *(&v67 + 1);
  *(v10 + 264) = v67;
  *(v10 + 280) = v68;
  *v37.f32 = vmul_f32(vadd_f32(*(v10 - 40), *(v10 - 32)), 0x3F0000003F000000);
  v66 = v37;
  v37.i32[2] = *(v10 - 48);
  v58 = *(v10 - 112);
  v38 = vsubq_f32(v37, v58);
  v39 = *(v10 - 16);
  v40 = vmulq_f32(v39, v38);
  v55 = vmulq_f32(v39, v39);
  v56 = v39;
  v41 = vmulq_f32(v38, v38);
  v57 = vextq_s8(v55, v55, 8uLL).u64[0];
  *v41.i8 = vsqrt_f32(vadd_f32(vzip1_s32(v57, *&vextq_s8(v41, v41, 8uLL)), vadd_f32(vzip1_s32(*v55.i8, *v41.i8), vzip2_s32(*v55.i8, *v41.i8))));
  v42 = (v40.f32[2] + vaddv_f32(*v40.f32)) / fmaxf(vmul_lane_f32(*v41.i8, *v41.i8, 1).f32[0], 1.1755e-38);
  if (v42 <= 1.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 1.0;
  }

  if (v42 >= -1.0)
  {
    v44 = v43;
  }

  else
  {
    v44 = -1.0;
  }

  v60 = acosf(v44);
  v45 = v66;
  v45.i32[2] = *(v10 - 44);
  v46 = vsubq_f32(v45, v58);
  v47 = vmulq_f32(v56, v46);
  v48 = vmulq_f32(v46, v46);
  *v48.i8 = vsqrt_f32(vadd_f32(vzip1_s32(v57, *&vextq_s8(v48, v48, 8uLL)), vadd_f32(vzip1_s32(*v55.i8, *v48.i8), vzip2_s32(*v55.i8, *v48.i8))));
  v49 = (v47.f32[2] + vaddv_f32(*v47.f32)) / fmaxf(vmul_lane_f32(*v48.i8, *v48.i8, 1).f32[0], 1.1755e-38);
  if (v49 <= 1.0)
  {
    v50 = v49;
  }

  else
  {
    v50 = 1.0;
  }

  if (v49 >= -1.0)
  {
    v51 = v50;
  }

  else
  {
    v51 = -1.0;
  }

  v52 = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(acosf(v51)), LODWORD(v60))), v64), v62));
  v53 = vsub_f32(v27, v52);
  result = vbsl_s8(vcgt_f32(v52, v53), v53, v52);
  *(v10 + 160) = result;
  return result;
}

void sub_2622E8724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_2621CBEB0();
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
      sub_26225E2D0(v10);
    }

    v11 = 32 * v7;
    *v11 = *a2;
    v12 = *(a2 + 8);
    *(v11 + 24) = *(a2 + 24);
    *(v11 + 8) = v12;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v3 = *a2;
    v5 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v5;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = v3 + 32;
  }

  *(a1 + 8) = v6;
}

float sub_2622E8828(uint64_t a1, int a2, double a3, __n128 a4, __n128 a5, double a6, int8x16_t a7)
{
  v8 = 208;
  if (!a2)
  {
    v8 = 200;
  }

  a7.i64[0] = *(a1 + v8);
  v9 = *(a1 + 216);
  a5.n128_u64[0] = vmla_f32(*a7.i8, vdup_n_s32(0x3DCCCCCDu), v9);
  v10 = *(a1 + 576);
  a4.n128_u64[0] = vmla_f32(*a7.i8, vdup_n_s32(0xBDCCCCCD), v9);
  v16 = a7;
  v17 = a4;
  v20 = a7;
  v21 = a5;
  sub_262246CEC(v22, v10, &v20, (a1 + 80), a1 + 144, 0);
  v11 = *(a1 + 576);
  v20 = v16;
  v21 = v17;
  sub_262246CEC(v18, v11, &v20, (a1 + 80), a1 + 144, 0);
  result = 0.0;
  v13 = 0.0;
  if (v23 == 1)
  {
    v14 = vsub_f32(v22[0], v22[1]);
    v13 = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
  }

  if (v19 == 1)
  {
    v15 = vsub_f32(v18[0], v18[1]);
    result = sqrtf(vaddv_f32(vmul_f32(v15, v15)));
  }

  if (v13 >= result)
  {
    return v13;
  }

  return result;
}

void sub_2622E8928(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 94;
      v7 = v4 - 94;
      do
      {
        (**v7)(v7);
        v6 -= 94;
        v8 = v7 == v2;
        v7 -= 94;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2622E89E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 752;
    (**(i - 752))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2622E8A58(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v7 = a1;
  while (1)
  {
    if (sub_26225E7AC(*(a4 + 8), (v7 + 8)))
    {
      v8 = sub_26225E814(a4, (v7 + 8));
      v11 = *v7 ? 648 : 644;
      if (*(v8 + v11) <= 15.0)
      {
        v9.i32[0] = 0;
        v10.i32[0] = *v7;
        v12 = vdup_lane_s32(vceq_s32(v10, v9), 0);
        v14 = *(v8 + 200);
        v13 = *(v8 + 208);
        v15 = vbsl_s8(v12, v13, v14);
        v16 = vbsl_s8(v12, v14, v13);
        v17 = vsub_f32(v16, *a3);
        v18 = vsub_f32(v15, *a3);
        v19 = vsub_f32(v16, v15);
        v20 = vmul_f32(v17, v19);
        v21 = vmul_f32(v19, v18);
        v22 = vadd_f32(vzip1_s32(v20, v21), vzip2_s32(v20, v21));
        result = 1;
        if (vmul_lane_f32(v22, v22, 1).f32[0] <= 0.0)
        {
          break;
        }

        v24 = vmul_f32(v17, v17);
        v25 = vmul_f32(v18, v18);
        v26 = vsqrt_f32(vadd_f32(vzip1_s32(v24, v25), vzip2_s32(v24, v25)));
        if ((vcgt_f32(vdup_lane_s32(v26, 1), v26).u32[0] & 1) == 0)
        {
          break;
        }
      }
    }

    v7 += 32;
    if (v7 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_2622E8B7C(uint64_t *result, int a2, int a3, uint64_t *a4)
{
  v4 = result[1];
  if (!v4)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v5 = v4;
    v6 = *(v4 + 28);
    if (v6 != a2)
    {
      break;
    }

    v7 = *(v5 + 32);
    v8 = v7 == a3;
    if (v7 > a3)
    {
LABEL_12:
      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v7 >= a3)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v9 = 0;
      }

      if ((v9 & 0x80) == 0)
      {
        return result;
      }

LABEL_18:
      v4 = *(v5 + 8);
      if (!v4)
      {
        goto LABEL_19;
      }
    }
  }

  if (v6 > a2)
  {
    goto LABEL_12;
  }

  if (v6 >= a2)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  if (v10 < 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_2622E8C74(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    result = 1;
    while (1)
    {
      v4 = *(v3 + 28);
      if (v4 == a2)
      {
        v5 = *(v3 + 32);
        v6 = v5 == a3;
        if (v5 <= a3)
        {
          if (v5 >= a3)
          {
            v7 = 1;
          }

          else
          {
            v7 = -1;
          }

          if (v6)
          {
            v7 = 0;
          }

          if ((v7 & 0x80) == 0)
          {
            return result;
          }

LABEL_17:
          v3 += 8;
        }
      }

      else if (v4 <= a2)
      {
        if (v4 >= a2)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if ((v8 & 0x80) == 0)
        {
          return result;
        }

        goto LABEL_17;
      }

      v3 = *v3;
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_2622E8CD0(uint64_t a1, uint64_t a2)
{
  sub_2622E8DD0(&v10, a1, a2);
  if (v10 == v11)
  {
    v3 = -3.4028e38;
    v2 = 3.4028e38;
    if (!v10)
    {
      return (v3 - v2) < 0.05;
    }

    goto LABEL_14;
  }

  v2 = 3.4028e38;
  v3 = -3.4028e38;
  v4 = v10;
  do
  {
    v5 = *v4++;
    v7 = *(&v5 + 1);
    v6 = *&v5;
    if (*&v5 >= *(&v5 + 1))
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= v3)
    {
      v3 = v8;
    }

    if (v7 < v6)
    {
      v6 = v7;
    }

    if (v2 >= v6)
    {
      v2 = v6;
    }
  }

  while (v4 != v11);
  if (v10)
  {
LABEL_14:
    operator delete(v10);
  }

  return (v3 - v2) < 0.05;
}

void *sub_2622E8D88(void *result, float a2)
{
  v2 = result[5];
  v3 = result[6];
  while (v2 != v3)
  {
    *(*(v2 + 40) + 24) = a2;
    *(*(v2 + 40) + 72) = a2;
    v2 += 120;
  }

  v4 = result[8];
  if (result[9] != v4)
  {
    *(*(v4 + 40) + 24) = a2;
    *(*(result[9] - 80) + 72) = a2;
  }

  return result;
}

void sub_2622E8DD0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *(v4 + 40);
      LODWORD(v7) = *(v6 + 24);
      HIDWORD(v7) = *(v6 + 72);
      v8 = v7;
      sub_2621CBA84(a1, &v8);
      v4 += 120;
    }

    while (v4 != a3);
  }
}

void sub_2622E8E44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2622E8E60(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  v20 = 0uLL;
  v21 = 0;
  if (a2 == a3)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v4 = a2;
    do
    {
      v6 = vsub_f32(*v4, *a1);
      v6.f32[0] = sqrtf(vaddv_f32(vmul_f32(v6, v6)));
      v6.i32[1] = v4[1];
      v19 = v6;
      sub_2621CBA84(&v20, &v19);
      v4 += 2;
    }

    while (v4 != a3);
    v7 = *(&v20 + 1);
    v8 = v20;
    v9 = v20;
    if (v20 == *(&v20 + 1))
    {
      v15 = 0;
      v16 = 0;
      if (!v20)
      {
        return v16 | v15;
      }
    }

    else
    {
      if ((*(&v20 + 1) - v20) >> 3 < 129)
      {
        v13 = 0;
LABEL_14:
        sub_2622E99A8(v9, v7, v7 - v9, 0, v13, v8);
      }

      else
      {
        v10 = MEMORY[0x277D826F0];
        v11 = (*(&v20 + 1) - v20) >> 3;
        while (1)
        {
          v12 = operator new(8 * v11, v10);
          if (v12)
          {
            break;
          }

          v13 = v11 >> 1;
          v14 = v11 > 1;
          v11 >>= 1;
          if (!v14)
          {
            goto LABEL_14;
          }
        }

        v17 = v12;
        sub_2622E99A8(v9, v7, v7 - v9, v12, v11, v8);
        operator delete(v17);
      }

      if (COERCE_FLOAT(*v9) >= 0.1)
      {
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v15 = HIDWORD(*v9);
        v16 = 0x100000000;
      }
    }

    operator delete(v9);
  }

  return v16 | v15;
}

void sub_2622E8FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622E8FE4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 40);
  v2 = *(a2 + 48);
  if (v2 != v3)
  {
    v4 = *(result + 40);
    v5 = *(result + 48);
    if (v4 != v5)
    {
      v6 = *(*(v3 + 40) + 16);
      v7 = vsubq_f32(*(*(v2 - 80) + 64), v6);
      v8 = vaddv_f32(vmul_f32(*v7.f32, *v7.f32));
      if (v8 < 0.000001)
      {
        v8 = 0.000001;
      }

      do
      {
        v9 = *(v4 + 40);
        v10 = *(v9 + 16);
        *(v9 + 24) = DWORD2(v10);
        *(v9 + 16) = vmlaq_n_f32(v6, v7, vaddv_f32(vmul_f32(vsub_f32(*&v10, *v6.f32), *v7.f32)) / v8).u64[0];
        v11 = *(v4 + 40);
        v12 = *(v11 + 64);
        *(v11 + 72) = DWORD2(v12);
        *(v11 + 64) = vmlaq_n_f32(v6, v7, vaddv_f32(vmul_f32(vsub_f32(*&v12, *v6.f32), *v7.f32)) / v8).u64[0];
        v4 += 120;
      }

      while (v4 != v5);
    }
  }

  v13 = *(*(result + 40) + 40);
  v14 = v13[1];
  LODWORD(v15) = v13[1].i64[1];
  LODWORD(v16) = v13[4].i64[1];
  LODWORD(v17) = vsubq_f32(v13[4], v14).u32[0];
  if (fabsf(v17) >= 0.000001)
  {
    v19 = *(*(*(a2 + 40) + 40) + 16);
    v18 = v15 + (((v16 - v15) * vsubq_f32(v19, v14).f32[0]) / v17);
  }

  else
  {
    v18 = (v15 + v16) * 0.5;
    v19 = *(*(*(a2 + 40) + 40) + 16);
  }

  v13[1].i32[2] = v14.i32[2];
  v13[1].i64[0] = v19.i64[0];
  *(*(*(result + 40) + 40) + 24) = v18;
  v20 = *(*(result + 48) - 80);
  v21 = v20[1];
  LODWORD(v22) = v20[1].i64[1];
  v23 = v20[4];
  LODWORD(v24) = v20[4].i64[1];
  LODWORD(v25) = vsubq_f32(v23, v21).u32[0];
  if (fabsf(v25) >= 0.000001)
  {
    v27 = *(*(*(a2 + 48) - 80) + 64);
    v26 = v22 + (((v24 - v22) * vsubq_f32(v27, v21).f32[0]) / v25);
  }

  else
  {
    v26 = (v22 + v24) * 0.5;
    v27 = *(*(*(a2 + 48) - 80) + 64);
  }

  v20[4].i32[2] = v23.i32[2];
  v20[4].i64[0] = v27.i64[0];
  *(*(*(result + 48) - 80) + 72) = v26;
  return result;
}

uint64_t sub_2622E9198(uint64_t a1, uint64_t *a2)
{
  v6 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (a1 + 40);
  if (v4 != v6)
  {
    v7 = v4 - 15;
    v8 = v4 - 15;
    v9 = v4 - 15;
    do
    {
      v10 = *v9;
      v9 -= 15;
      (*v10)(v8);
      v7 -= 15;
      v11 = v8 == v6;
      v8 = v9;
    }

    while (!v11);
  }

  *(a1 + 48) = v6;
  sub_2622E924C(*a2, a2[1], v5);

  return sub_2622E92D4(a1);
}

uint64_t sub_2622E924C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = a3[1];
    do
    {
      if (v6 >= a3[2])
      {
        result = sub_2622E94A4(a3, v5);
        v6 = result;
      }

      else
      {
        result = sub_2622E9338(v6, v5);
        v6 += 120;
        a3[1] = v6;
      }

      a3[1] = v6;
      v5 += 120;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_2622E92D4(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 40);
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = (*(v2 + 80) - *(v2 + 72)) >> 2;
      v6 = (*(v2 + 64) * v5) + (v4 * v3);
      v3 += v5;
      if (v3 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v3;
      }

      v4 = v6 / v7;
      v2 += 120;
    }

    while (v2 != v1);
    *(result + 88) = v4;
  }

  return result;
}

uint64_t sub_2622E9338(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EF000;
  v4 = *(a2 + 8);
  v5 = *(a2 + 21);
  *(a1 + 40) = 0;
  *(a1 + 21) = v5;
  *(a1 + 8) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v7 != v6)
  {
    sub_2622E9834((a1 + 40), 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
  }

  v8 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v8;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_2621C8E70((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_262207574((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 4);
  return a1;
}

uint64_t sub_2622E94A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_2621CBEB0();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v5 = 0x222222222222222;
  }

  else
  {
    v5 = v3;
  }

  v23 = a1;
  if (v5)
  {
    sub_2622E96B0(v5);
  }

  v20 = 0;
  v21 = 120 * v2;
  v22 = 120 * v2;
  sub_2622E9338(120 * v2, a2);
  v6 = *a1;
  v7 = a1[1];
  v8 = 120 * v2 - (v7 - *a1);
  *&v22 = 120 * v2 + 120;
  if (v7 != v6)
  {
    v9 = 0;
    v10 = v21 - 8 * ((v7 - v6) >> 3) - 120;
    v11 = v6;
    v12 = v8;
    do
    {
      sub_2622E9338(v12, v11);
      v11 += 120;
      v12 += 120;
      v9 -= 120;
      v10 += 120;
    }

    while (v11 != v7);
    v13 = v6;
    v14 = v6;
    do
    {
      v15 = *v14;
      v14 += 15;
      (*v15)(v6);
      v13 += 15;
      v6 = v14;
    }

    while (v14 != v7);
  }

  v16 = *a1;
  *a1 = v8;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_2622E9708(&v20);
  return v19;
}

void sub_2622E9650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2622E9708(va);
  _Unwind_Resume(a1);
}

void sub_2622E96B0(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_2622E9708(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 120);
    *(a1 + 16) = i - 120;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2622E9774(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 6;
      v7 = v4 - 6;
      v8 = v4 - 6;
      do
      {
        v9 = *v8;
        v8 -= 6;
        (*v9)(v7);
        v6 -= 6;
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

void sub_2622E9834(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_2622E989C(a2);
  }

  sub_2621CBEB0();
}

void sub_2622E989C(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2622E98F4(uint64_t a1)
{
  sub_2622E992C(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_2622E992C(uint64_t a1)
{
  *a1 = &unk_2874EF000;
  v4 = (a1 + 96);
  sub_26220532C(&v4);
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 40);
  sub_2622E9774(&v4);
  return a1;
}

void sub_2622E99A8(float32x2_t *result, float32x2_t *a2, unint64_t a3, float32x2_t *a4, int64_t a5, float32x2_t a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      v8 = a2[-1];
      v9 = *result;
      if (vcgt_f32(*result, v8).u8[0])
      {
        *result = v8;
        a2[-1] = v9;
      }
    }

    else if (a3 > 128)
    {
      v19 = a4;
      v20 = a3 >> 1;
      v21 = &result[a3 >> 1];
      v22 = a3 >> 1;
      if (a3 <= a5)
      {
        v23 = sub_2622E9BC0(result, v21, v22, a4, a6);
        v24 = &v19[v20];
        sub_2622E9BC0(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v24, v23);
        v25 = &v19[a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = vcgt_f32(*v19, *v26).u8[0];
          if (v27)
          {
            v28 = -1;
          }

          else
          {
            v28 = 0;
          }

          v29 = vbsl_s8(vdup_n_s32(v28), *v26, *v19);
          if (v27)
          {
            v30 = 0;
          }

          else
          {
            v30 = 8;
          }

          v19 = (v19 + v30);
          if (v27)
          {
            v31 = 8;
          }

          else
          {
            v31 = 0;
          }

          v26 = (v26 + v31);
          *v7++ = v29;
          if (v19 == v24)
          {
            while (v26 != v25)
            {
              v33 = *v26++;
              *v7++ = v33;
            }

            return;
          }
        }

        while (v19 != v24)
        {
          v32 = *v19++;
          *v7++ = v32;
        }
      }

      else
      {
        sub_2622E99A8(result, v21, v22, a4, a5);
        sub_2622E99A8(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v19, a5);

        sub_2622E9D94(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v19, a5);
      }
    }

    else if (result != a2)
    {
      v11 = result + 1;
      if (&result[1] != a2)
      {
        v12 = 0;
        v13 = result;
        do
        {
          v14 = *v13;
          v13 = v11;
          v15 = *v11;
          if (vcgt_f32(v14, *v11).u8[0])
          {
            v16 = v12;
            while (1)
            {
              *(result + v16 + 8) = v14;
              if (!v16)
              {
                break;
              }

              v14 = *(result + v16 - 8);
              v16 -= 8;
              if ((vcgt_f32(v14, v15).u8[0] & 1) == 0)
              {
                v17 = (result + v16 + 8);
                goto LABEL_16;
              }
            }

            v17 = result;
LABEL_16:
            *v17 = v15;
          }

          v11 = v13 + 1;
          v12 += 8;
        }

        while (&v13[1] != a2);
      }
    }
  }
}

float32x2_t sub_2622E9BC0(float32x2_t *a1, float32x2_t *a2, unint64_t a3, float32x2_t *a4, float32x2_t result)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
LABEL_9:
      result = *v7;
      *v5 = *v7;
      return result;
    }

    if (a3 == 2)
    {
      v9 = a2[-1];
      v10 = vcgt_f32(*a1, v9).u8[0];
      if (v10)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }

      *a4 = vbsl_s8(vdup_n_s32(v11), v9, *a1);
      v5 = a4 + 1;
      if ((v10 & 1) == 0)
      {
        v7 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v20 = &a1[a3 >> 1];
      sub_2622E99A8(a1, v20, a3 >> 1, a4, a3 >> 1);
      sub_2622E99A8(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v21 = &v7[a3 >> 1];
      while (v21 != a2)
      {
        v22 = vcgt_f32(*v7, *v21).u8[0];
        if (v22)
        {
          v23 = -1;
        }

        else
        {
          v23 = 0;
        }

        result = vbsl_s8(vdup_n_s32(v23), *v21, *v7);
        if (v22)
        {
          v24 = 8;
        }

        else
        {
          v24 = 0;
        }

        v21 = (v21 + v24);
        if (v22)
        {
          v25 = 0;
        }

        else
        {
          v25 = 8;
        }

        v7 = (v7 + v25);
        *v5++ = result;
        if (v7 == v20)
        {
          while (v21 != a2)
          {
            v27 = *v21++;
            result = v27;
            *v5++ = v27;
          }

          return result;
        }
      }

      while (v7 != v20)
      {
        v26 = *v7++;
        result = v26;
        *v5++ = v26;
      }
    }

    else if (a1 != a2)
    {
      v12 = a1 + 1;
      result = *a1;
      *a4 = *a1;
      if (&a1[1] != a2)
      {
        v13 = 0;
        v14 = a4;
        v15 = a4;
        do
        {
          v16 = *v15++;
          result = v16;
          if (vcgt_f32(v16, *v12).u8[0])
          {
            v14[1] = result;
            v17 = a4;
            if (v14 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                v19 = *(a4 + v18 - 8);
                if (COERCE_FLOAT(*v12) >= v19.f32[0])
                {
                  break;
                }

                *v17 = v19;
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }

            result = *v12;
            *v17 = *v12;
          }

          else
          {
            *v15 = *v12;
          }

          ++v12;
          v13 += 8;
          v14 = v15;
        }

        while (v12 != a2);
      }
    }
  }

  return result;
}

float32x2_t *sub_2622E9D94(float32x2_t *result, float32x2_t *a2, float32x2_t *a3, uint64_t a4, uint64_t a5, float32x2_t *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = *a2;
      while (1)
      {
        v13 = *v11;
        if (vcgt_f32(*v11, v12).u8[0])
        {
          break;
        }

        ++v11;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          *v11 = v12;
          *a2 = v13;
          return result;
        }

        v22 = a4 / 2;
        v16 = &v11[a4 / 2];
        v15 = a2;
        if (a2 != a3)
        {
          v23 = a3 - a2;
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[v23 >> 1];
            v27 = *v25;
            v26 = v25 + 1;
            v23 += ~(v23 >> 1);
            if (v27.f32[0] < COERCE_FLOAT(*v16))
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = v15 - a2;
      }

      else
      {
        v14 = v8 / 2;
        v15 = &a2[v8 / 2];
        v16 = a2;
        if (a2 != v11)
        {
          v17 = a2 - v11;
          v16 = v11;
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[v17 >> 1];
            v21 = *v19;
            v20 = v19 + 1;
            v17 += ~(v17 >> 1);
            if (COERCE_FLOAT(*v15) < v21.f32[0])
            {
              v17 = v18;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v17);
        }

        v22 = v16 - v11;
      }

      v28 = v15;
      v29 = a2 - v16;
      if (a2 != v16)
      {
        v28 = v16;
        v30 = v15 - a2;
        if (v15 != a2)
        {
          if (&v16[1] == a2)
          {
            v31 = *v16;
            v79 = v22;
            v81 = a6;
            v32 = a3;
            v33 = v14;
            memmove(v16, a2, v15 - a2);
            v14 = v33;
            v22 = v79;
            a6 = v81;
            a3 = v32;
            v28 = (v16 + v30);
            *(v16 + v30) = v31;
          }

          else if (&a2[1] == v15)
          {
            v34 = v15[-1];
            v28 = v16 + 1;
            if (&v15[-1] != v16)
            {
              v80 = v22;
              v82 = a6;
              v35 = a3;
              v36 = v14;
              memmove(&v16[1], v16, &v15[-1] - v16);
              v14 = v36;
              v22 = v80;
              a6 = v82;
              a3 = v35;
            }

            *v16 = v34;
          }

          else
          {
            v37 = v29 >> 3;
            if (v29 >> 3 == v30 >> 3)
            {
              v38 = v16 + 1;
              v39 = a2 + 1;
              do
              {
                v40 = v38[-1];
                v38[-1] = v39[-1];
                v39[-1] = v40;
                if (v38 == a2)
                {
                  break;
                }

                ++v38;
              }

              while (v39++ != v15);
              v28 = a2;
            }

            else
            {
              v42 = v30 >> 3;
              v43 = v29 >> 3;
              do
              {
                v44 = v43;
                v43 = v42;
                v42 = v44 % v42;
              }

              while (v42);
              v45 = &v16[v43];
              do
              {
                v46 = v45[-1];
                --v45;
                v47 = v46;
                v48 = (v45 + v29);
                v49 = v45;
                do
                {
                  v50 = v48;
                  *v49 = *v48;
                  v51 = &v48[v37];
                  v52 = __OFSUB__(v37, v15 - v48);
                  v54 = v37 - (v15 - v48);
                  v53 = (v54 < 0) ^ v52;
                  v48 = &v16[v54];
                  if (v53)
                  {
                    v48 = v51;
                  }

                  v49 = v50;
                }

                while (v48 != v45);
                *v50 = v47;
              }

              while (v45 != v16);
              v28 = (v16 + v30);
            }
          }
        }
      }

      a4 -= v22;
      v8 -= v14;
      if (v22 + v14 >= a4 + v8)
      {
        v58 = v22;
        v59 = a4;
        v60 = v14;
        v56 = a6;
        result = sub_2622E9D94(v28, v15, a3, v59, v8, a6, a7);
        v15 = v16;
        v8 = v60;
        a4 = v58;
        a3 = v28;
      }

      else
      {
        v55 = v11;
        v56 = a6;
        v57 = a3;
        result = sub_2622E9D94(v55, v16, v28, v22, v14, a6, a7);
        a3 = v57;
        v11 = v28;
      }

      a2 = v15;
      a6 = v56;
      if (!v8)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (a2 != v11)
      {
        v71 = a6;
        v72 = v11;
        do
        {
          v73 = *v72++;
          *v71++ = v73;
        }

        while (v72 != a2);
        while (a2 != a3)
        {
          v74 = vcgt_f32(*a6, *a2).u8[0];
          if (v74)
          {
            v75 = -1;
          }

          else
          {
            v75 = 0;
          }

          v76 = vbsl_s8(vdup_n_s32(v75), *a2, *a6);
          if (v74)
          {
            v77 = 8;
          }

          else
          {
            v77 = 0;
          }

          a2 = (a2 + v77);
          if (v74)
          {
            v78 = 0;
          }

          else
          {
            v78 = 8;
          }

          a6 = (a6 + v78);
          *v11++ = v76;
          if (a6 == v71)
          {
            return result;
          }
        }

        return memmove(v11, a6, v71 - a6);
      }
    }

    else if (a2 != a3)
    {
      v61 = a6;
      v62 = a2;
      do
      {
        v63 = *v62++;
        *v61++ = v63;
      }

      while (v62 != a3);
      while (a2 != v11)
      {
        v64 = v61[-1];
        v65 = a2[-1];
        v66 = vcgt_f32(v65, v64).u8[0];
        if (v66)
        {
          v67 = -1;
        }

        else
        {
          v67 = 0;
        }

        v68 = vbsl_s8(vdup_n_s32(v67), v65, v64);
        if (v66)
        {
          --a2;
        }

        else
        {
          --v61;
        }

        a3[-1] = v68;
        --a3;
        if (v61 == a6)
        {
          return result;
        }
      }

      if (v61 != a6)
      {
        v69 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v70 = v61[-1];
          --v61;
          a3[v69--] = v70;
        }

        while (v61 != a6);
      }
    }
  }

  return result;
}