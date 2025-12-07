uint64_t ***sub_26225D2CC(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 16) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_26225D3F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26225D40C(uint64_t a1, const std::string *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, unsigned __int8 **a7, int a8, std::string *__str)
{
  v59 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE728;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 520) = 0;
  v55 = (a1 + 608);
  v56 = (a1 + 552);
  v57 = (a1 + 656);
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  v16 = (a1 + 688);
  *(a1 + 688) = 0;
  *(a1 + 704) = 0;
  *(a1 + 696) = 0;
  v17 = (a1 + 720);
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 728) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 636) = 0;
  std::string::operator=((a1 + 584), a2);
  std::string::operator=(v55, __str);
  *(a1 + 632) = a8;
  v18 = *a4;
  v19 = a4[1];
  v20 = a4[3];
  *(a1 + 112) = a4[2];
  *(a1 + 128) = v20;
  *(a1 + 80) = v18;
  *(a1 + 96) = v19;
  v21 = *a5;
  v22 = a5[2];
  *(a1 + 160) = a5[1];
  *(a1 + 176) = v22;
  *(a1 + 144) = v21;
  *(a1 + 576) = a6;
  sub_2622E82B0(a1, a3);
  v23 = *(a1 + 128);
  v24 = *(a1 + 208);
  v25 = vsub_f32(*(a1 + 200), *&v23);
  v26 = vmul_f32(v25, v25);
  *(a1 + 636) = **a7 | 0x100;
  *(a1 + 638) = (*a7)[1] | 0x100;
  *&v23 = vsub_f32(v24, *&v23);
  *&v23 = vmul_f32(*&v23, *&v23);
  *(a1 + 640) = 16843009;
  __src = vsqrt_f32(vzip1_s32(vadd_f32(v26, vdup_lane_s32(v26, 1)), vadd_f32(*&v23, vdup_lane_s32(*&v23, 1))));
  sub_26225E46C(v57, &__src, &v59, 2uLL);
  *(a1 + 680) = 1;
  v27 = *(a1 + 536);
  v28 = *(a1 + 528);
  v29 = v27 - v28;
  v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v28) >> 3);
  if (v30 > 1)
  {
    if (v29 != 48)
    {
      v36 = (v28 + 48);
      while (v27 != v36)
      {
        v27 -= 3;
        __src = v27;
        sub_26225D12C(&__src);
      }

      *(a1 + 536) = v36;
    }
  }

  else
  {
    v31 = 2 - v30;
    v32 = *(a1 + 544);
    if (0xAAAAAAAAAAAAAAABLL * ((v32 - v27) >> 3) < v31)
    {
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v28) >> 3);
      v34 = 2 * v33;
      if (2 * v33 <= 2)
      {
        v34 = 2;
      }

      if (v33 >= 0x555555555555555)
      {
        v35 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v35 = v34;
      }

      sub_26225E0A4(v35);
    }

    v37 = 24 * ((24 - v29) / 0x18uLL) + 24;
    bzero(*(a1 + 536), v37);
    *(a1 + 536) = v27 + v37;
  }

  LOWORD(__src) = 257;
  sub_26225E59C(v56, &__src, &__src + 2);
  LOWORD(__src) = 257;
  sub_26225E59C(v16, &__src, &__src + 2);
  *v44.i64 = sub_262240264((a1 + 80), a1 + 144, 384, 288, v38, v39, v40, v41, v42, v43);
  v45.i64[0] = *(a1 + 216);
  v45.i32[2] = 0;
  v46 = vmlaq_f32(vmulq_f32(v45, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL));
  v47 = vmulq_f32(v44, vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
  v48 = vmulq_f32(v44, v44);
  v49 = vmulq_f32(v46, v46);
  v50 = (v47.f32[2] + vaddv_f32(*v47.f32)) / fmaxf(sqrtf(v48.f32[2] + vaddv_f32(*v48.f32)) * sqrtf(v49.f32[1] + (v49.f32[2] + v49.f32[0])), 1.1755e-38);
  v51 = 1.0;
  if (v50 <= 1.0)
  {
    v51 = v50;
  }

  if (v50 >= -1.0)
  {
    v52 = v51;
  }

  else
  {
    v52 = -1.0;
  }

  v53 = acosf(v52) * 180.0 / 3.14159274;
  if ((180.0 - v53) < v53)
  {
    v53 = 180.0 - v53;
  }

  *(a1 + 712) = v53;
  LOWORD(__src) = 0;
  sub_26225E59C(v17, &__src, &__src + 2);
  return a1;
}

void sub_26225D890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13)
{
  if (*v16)
  {
    operator delete(*v16);
  }

  if (*v15)
  {
    operator delete(*v15);
  }

  v18 = *a12;
  if (*a12)
  {
    *(v13 + 664) = v18;
    operator delete(v18);
  }

  if (*(v13 + 631) < 0)
  {
    operator delete(*a10);
  }

  if (*(v13 + 607) < 0)
  {
    operator delete(*v14);
  }

  if (*a11)
  {
    operator delete(*a11);
  }

  a13 = (v13 + 528);
  sub_26225D098(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_26225D91C(uint64_t **a1, void *a2, __int128 **a3)
{
  v3 = *sub_26225E318(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_26225DAA0(uint64_t a1, uint64_t a2)
{
  memcpy((a1 + 16), (a2 + 16), 0x1F9uLL);
  if (a1 != a2)
  {
    v4 = (a1 + 528);
    v5 = *(a2 + 528);
    v6 = *(a2 + 536);
    v7 = v6 - v5;
    v8 = *(a1 + 544);
    v9 = *(a1 + 528);
    if (v8 - v9 < v6 - v5)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      if (v9)
      {
        v11 = *(a1 + 536);
        v12 = *(a1 + 528);
        if (v11 != v9)
        {
          do
          {
            v11 -= 3;
            v23 = v11;
            sub_26225D12C(&v23);
          }

          while (v11 != v9);
          v12 = *v4;
        }

        *(a1 + 536) = v9;
        operator delete(v12);
        v8 = 0;
        *v4 = 0;
        *(a1 + 536) = 0;
        *(a1 + 544) = 0;
      }

      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
        v14 = 2 * v13;
        if (2 * v13 <= v10)
        {
          v14 = v10;
        }

        if (v13 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        sub_26225E054((a1 + 528), v15);
      }

      sub_2621CBEB0();
    }

    v16 = *(a1 + 536) - v9;
    if (v16 >= v7)
    {
      sub_26225DD8C(*(a2 + 528), *(a2 + 536), *(a1 + 528));
      v19 = v18;
      v20 = *(a1 + 536);
      if (v20 != v18)
      {
        do
        {
          v20 -= 3;
          v23 = v20;
          sub_26225D12C(&v23);
        }

        while (v20 != v19);
      }

      *(a1 + 536) = v19;
    }

    else
    {
      v17 = sub_26225DD8C(*(a2 + 528), (v5 + v16), *(a1 + 528));
      *(a1 + 536) = sub_26225DF6C(a1 + 528, v17, v6, *(a1 + 536));
    }
  }

  sub_26225DCF4((a1 + 552), a2 + 552);
  *(a1 + 576) = *(a2 + 576);
  std::string::operator=((a1 + 584), (a2 + 584));
  std::string::operator=((a1 + 608), (a2 + 608));
  v21 = *(a2 + 648);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 648) = v21;
  if (a1 != a2)
  {
    sub_2621CA9DC((a1 + 656), *(a2 + 656), *(a2 + 664), (*(a2 + 664) - *(a2 + 656)) >> 2);
  }

  *(a1 + 680) = *(a2 + 680);
  sub_26225DCF4((a1 + 688), a2 + 688);
  *(a1 + 712) = *(a2 + 712);
  sub_26225DCF4((a1 + 720), a2 + 720);
  return a1;
}

uint64_t *sub_26225DCF4(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > a1[2] << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          a1[1] = 0;
          a1[2] = 0;
          v4 = *(a2 + 8);
        }

        sub_2621DC9F8(a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    a1[1] = v6;
  }

  return a1;
}

uint64_t *sub_26225DD8C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (a3 != v4)
      {
        v7 = *v4;
        v6 = v4[1];
        v8 = v6 - *v4;
        v9 = a3[2];
        v10 = *a3;
        if (v9 - *a3 < v8)
        {
          if (v10)
          {
            sub_26225D180(a3);
            operator delete(*a3);
            v9 = 0;
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
          }

          v11 = v8 >> 5;
          if (!((v8 >> 5) >> 59))
          {
            if (v9 >> 4 > v11)
            {
              v11 = v9 >> 4;
            }

            if (v9 >= 0x7FFFFFFFFFFFFFE0)
            {
              v12 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            sub_26225E160(a3, v12);
          }

          sub_2621CBEB0();
        }

        v13 = a3[1];
        if (v13 - v10 >= v8)
        {
          if (v7 != v6)
          {
            v18 = *v4;
            v19 = *a3;
            do
            {
              v20 = *v18;
              v18 += 8;
              *v19 = v20;
              v19 += 8;
              std::string::operator=((v10 + 8), (v7 + 8));
              v10 = v19;
              v7 = v18;
            }

            while (v18 != v6);
            v13 = a3[1];
            v10 = v19;
          }

          while (v13 != v10)
          {
            if (*(v13 - 1) < 0)
            {
              operator delete(*(v13 - 24));
            }

            v13 -= 32;
          }

          a3[1] = v10;
        }

        else
        {
          if (v13 == v10)
          {
            v14 = *v4;
          }

          else
          {
            v14 = v7 + v13 - v10;
            v15 = *v4;
            v16 = *a3;
            do
            {
              v17 = *v15;
              v15 += 8;
              *v16 = v17;
              v16 += 8;
              std::string::operator=((v10 + 8), (v7 + 8));
              v10 = v16;
              v7 = v15;
            }

            while (v15 != v14);
            v13 = a3[1];
          }

          a3[1] = sub_26225E1A0(a3, v14, v6, v13);
        }
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t *sub_26225DF6C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        sub_26225E160(a4, (v6 - *v5) >> 5);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_26225E02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_26225D12C(&a15);
  sub_26225E0FC(&a9);
  _Unwind_Resume(a1);
}

void sub_26225E054(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_26225E0A4(a2);
  }

  sub_2621CBEB0();
}

void sub_26225E0A4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_26225E0FC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      sub_26225D12C(&v5);
    }
  }

  return a1;
}

void sub_26225E160(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_26225E2D0(a2);
  }

  sub_2621CBEB0();
}

uint64_t sub_26225E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        sub_2621CC810(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *v8 = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  sub_26225E270(v11);
  return v4;
}

uint64_t sub_26225E270(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

void sub_26225E2D0(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_2621C6A34();
}

void *sub_26225E318(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_26225E3EC(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_26225E3EC(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_26225E3A0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_26225CF9C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_26225E3EC(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void **sub_26225E46C(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2621C8EEC(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

void *sub_26225E59C(void **a1, _BYTE *a2, _BYTE *a3)
{
  a1[1] = 0;
  if ((a1[2] & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    v4 = *a1;
    if (*a1)
    {
      operator delete(v4);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    operator new();
  }

  return sub_26225E638(a1, a2, a3, 2);
}

void *sub_26225E638(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (v4)
  {
    v6 = v5 - 1;
    if (((v5 - 1) ^ (v4 - 1)) < 0x40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = v5 - 1;
  }

  v7 = v6 >> 6;
  if (v5 >= 0x41)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(*result + 8 * v8) = 0;
LABEL_9:
  if (a2 != a3)
  {
    v9 = v4 & 0x3F;
    v10 = (*result + 8 * (v4 >> 6));
    do
    {
      v11 = 1 << v9;
      if (*a2 == 1)
      {
        v12 = *v10 | v11;
      }

      else
      {
        v12 = *v10 & ~v11;
      }

      *v10 = v12;
      ++a2;
      v10 += v9 == 63;
      if (v9 == 63)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t **sub_26225E6DC(uint64_t **a1, unsigned __int8 a2, _BYTE **a3)
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
      v5 = *(v3 + 32);
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

uint64_t sub_26225E7AC(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      if ((sub_26225E3EC(a2, v3 + 4) & 0x80) == 0)
      {
        if ((sub_26225E3EC(v3 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_26225E814(uint64_t a1, void *a2)
{
  v2 = *sub_26225E318(a1, &v4, a2);
  if (!v2)
  {
    sub_2621C84A8("map::at:  key not found");
  }

  return v2 + 64;
}

uint64_t sub_26225E854(uint64_t **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *sub_26225E930(a1, &v6, a2, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_26225E930(uint64_t a1, uint64_t **a2, int a3, int a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      if (v8 == a3)
      {
        v9 = *(v7 + 9);
        v10 = v9 == a4;
        if (v9 <= a4)
        {
          if (v9 >= a4)
          {
            v11 = 1;
          }

          else
          {
            v11 = -1;
          }

          if (v10)
          {
            v11 = 0;
          }

          if ((v11 & 0x80) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_18;
        }

LABEL_12:
        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v8 > a3)
        {
          goto LABEL_12;
        }

        if (v8 >= a3)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if ((v12 & 0x80) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        result = v7 + 1;
        v5 = v7[1];
        if (!v5)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v7 = result;
LABEL_21:
  *a2 = v7;
  return result;
}

uint64_t sub_26225E9A4(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_26225E3EC((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_26225E3EC(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_26225EA24(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE728;
  memcpy((a1 + 16), (a2 + 16), 0x1F9uLL);
  *(a1 + 528) = 0;
  *(a1 + 544) = 0;
  *(a1 + 536) = 0;
  v4 = *(a2 + 528);
  v5 = *(a2 + 536);
  if (v5 != v4)
  {
    sub_26225E054((a1 + 528), 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
  }

  sub_2621DDAB4((a1 + 552), a2 + 552);
  *(a1 + 576) = *(a2 + 576);
  if (*(a2 + 607) < 0)
  {
    sub_2621CC810((a1 + 584), *(a2 + 584), *(a2 + 592));
  }

  else
  {
    v6 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 584) = v6;
  }

  if (*(a2 + 631) < 0)
  {
    sub_2621CC810((a1 + 608), *(a2 + 608), *(a2 + 616));
  }

  else
  {
    v7 = *(a2 + 608);
    *(a1 + 624) = *(a2 + 624);
    *(a1 + 608) = v7;
  }

  v8 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 632) = v8;
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  sub_2621C8E70((a1 + 656), *(a2 + 656), *(a2 + 664), (*(a2 + 664) - *(a2 + 656)) >> 2);
  *(a1 + 680) = *(a2 + 680);
  sub_2621DDAB4((a1 + 688), a2 + 688);
  *(a1 + 712) = *(a2 + 712);
  sub_2621DDAB4((a1 + 720), a2 + 720);
  return a1;
}

void sub_26225EBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 607) < 0)
  {
    operator delete(*v11);
  }

  if (*v10)
  {
    operator delete(*v10);
  }

  sub_26225D098(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_26225EC78(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    result = 1;
    while (1)
    {
      v4 = *(v3 + 32);
      if (v4 == a2)
      {
        v5 = *(v3 + 36);
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

uint64_t sub_26225ECD4(uint64_t **a1, uint64_t a2, __int128 **a3)
{
  v3 = *sub_26225EE54(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_26225EDD8(char *a1)
{
  if (a1)
  {
    sub_26225EDD8(*a1);
    sub_26225EDD8(*(a1 + 1));
    if (a1[119] < 0)
    {
      operator delete(*(a1 + 12));
    }

    if (a1[95] < 0)
    {
      operator delete(*(a1 + 9));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t *sub_26225EE54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = *(a3 + 24);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = sub_26225E3EC(a3, v4 + 4);
        if (!v9)
        {
          v10 = *(v8 + 14);
          v9 = v7 < v10 ? -1 : 1;
          if (v7 == v10)
          {
            break;
          }
        }

        if ((v9 & 0x80) == 0)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_20;
        }
      }

      v11 = sub_26225E3EC(v8 + 4, a3);
      if (!v11)
      {
        v12 = *(v8 + 14);
        v11 = v12 < v7 ? -1 : 1;
        if (v12 == v7)
        {
          break;
        }
      }

      if ((v11 & 0x80) == 0)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_20:
  *a2 = v8;
  return v5;
}

void sub_26225EF1C(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 95) < 0)
    {
      operator delete(__p[9]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_26225EF98(uint64_t *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = a1[1];
      v7 = v3;
      if (*a1 == v3)
      {
        goto LABEL_9;
      }

      v8 = a1[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = *(v8 + 8);
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if ((sub_26225E3EC(v7 + 4, v5 + 4) & 0x80) != 0)
      {
LABEL_9:
        if (!v6)
        {
          v15 = v3;
LABEL_14:
          operator new();
        }

        v15 = v7;
        v11 = v7 + 1;
      }

      else
      {
        v11 = sub_26225E318(a1, &v15, v5 + 4);
      }

      if (!*v11)
      {
        goto LABEL_14;
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  return a1;
}

void sub_26225F140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_26225E3A0(&a9);
  sub_26225CF48(*v9);
  _Unwind_Resume(a1);
}

uint64_t sub_26225F17C(uint64_t a1, char a2, _OWORD *a3)
{
  v5 = a2;
  v3 = sub_26225F3EC(a1, a3);
  return sub_26225F4E8(v3, &v5);
}

void sub_26225F1B8(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EEC38;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26225F1EC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *a1 = &unk_2874EEC38;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v4 = a2[1];
  v3 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v3;
  *(a1 + 24) = v4;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 56) = v5;
  *(a1 + 64) = 1;
  v7 = v6 * v5;
  *(a1 + 104) = v7;
  *(a1 + 112) = 0;
  if (v7)
  {
    operator new();
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_26225F30C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26225F328(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      result = MEMORY[0x266727400](result, 0x1000C8077774924);
      *(v1 + 24) = 0;
    }
  }

  return result;
}

void sub_26225F378(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2874EEC58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_26225F3EC(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EEC38;
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
    sub_26225F984(&v7, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_26225F4D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26225F4E8(uint64_t a1, char *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v36, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v36);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v36, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v36);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  memset(v36, 0, sizeof(v36));
  v14 = *(a1 + 104);
  v15 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v14)
    {
      v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
      v17 = vdupq_n_s64(v14 - 1);
      v18 = xmmword_2623A7950;
      v19 = xmmword_2623A7960;
      v20 = xmmword_2623A7970;
      v21 = xmmword_2623A7980;
      v22 = xmmword_2623A77F0;
      v23 = xmmword_2623A7800;
      v24 = xmmword_2623A7630;
      v25 = xmmword_2623A7620;
      v26 = (v15 + 7);
      v27 = vdupq_n_s64(0x10uLL);
      do
      {
        v28 = vmovn_s64(vcgeq_u64(v17, v25));
        if (vuzp1_s8(vuzp1_s16(v28, *v17.i8), *v17.i8).u8[0])
        {
          *(v26 - 7) = v13;
        }

        if (vuzp1_s8(vuzp1_s16(v28, *&v17), *&v17).i8[1])
        {
          *(v26 - 6) = v13;
        }

        if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v24))), *&v17).i8[2])
        {
          *(v26 - 5) = v13;
          *(v26 - 4) = v13;
        }

        v29 = vmovn_s64(vcgeq_u64(v17, v23));
        if (vuzp1_s8(*&v17, vuzp1_s16(v29, *&v17)).i32[1])
        {
          *(v26 - 3) = v13;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(v29, *&v17)).i8[5])
        {
          *(v26 - 2) = v13;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v22)))).i8[6])
        {
          *(v26 - 1) = v13;
          *v26 = v13;
        }

        v30 = vmovn_s64(vcgeq_u64(v17, v21));
        if (vuzp1_s8(vuzp1_s16(v30, *v17.i8), *v17.i8).u8[0])
        {
          v26[1] = v13;
        }

        if (vuzp1_s8(vuzp1_s16(v30, *&v17), *&v17).i8[1])
        {
          v26[2] = v13;
        }

        if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v20))), *&v17).i8[2])
        {
          v26[3] = v13;
          v26[4] = v13;
        }

        v31 = vmovn_s64(vcgeq_u64(v17, v19));
        if (vuzp1_s8(*&v17, vuzp1_s16(v31, *&v17)).i32[1])
        {
          v26[5] = v13;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(v31, *&v17)).i8[5])
        {
          v26[6] = v13;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v18)))).i8[6])
        {
          v26[7] = v13;
          v26[8] = v13;
        }

        v23 = vaddq_s64(v23, v27);
        v24 = vaddq_s64(v24, v27);
        v25 = vaddq_s64(v25, v27);
        v22 = vaddq_s64(v22, v27);
        v21 = vaddq_s64(v21, v27);
        v20 = vaddq_s64(v20, v27);
        v19 = vaddq_s64(v19, v27);
        v26 += 16;
        v18 = vaddq_s64(v18, v27);
        v16 -= 16;
      }

      while (v16);
    }
  }

  else if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v33 = 0;
      *(v15 + *(a1 + 64) * *(&v36[0] + 1) + *(a1 + 56) * *&v36[0]) = v13;
      do
      {
        v34 = *(v36 + v33 + 8) + 1;
        *(v36 + v33 + 8) = v34;
        if (v34 != *(a1 + 16 + v33))
        {
          break;
        }

        *(v36 + v33 + 8) = 0;
        v33 -= 8;
      }

      while (v33 != -16);
    }
  }

  return a1;
}

void sub_26225FA1C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_26225FA34(uint64_t *a1, uint64_t a2, unsigned int a3, void *a4, void *a5, void *a6, char a7)
{
  v789 = *MEMORY[0x277D85DE8];
  v728 = a3;
  v9 = a4;
  v10 = a5;
  v690 = v9;
  objc_msgSend_referenceOriginTransform(v9, v11, v12);
  v791 = __invert_f4(v790);
  v15 = 0;
  v759[0] = v791;
  do
  {
    *(&v775[0].data + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2623A7990, COERCE_FLOAT(*&v759[0].columns[v15])), xmmword_2623A7700, *v759[0].columns[v15].f32, 1), xmmword_2623A79A0, v759[0].columns[v15], 2), xmmword_2623A7810, v759[0].columns[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  v700 = *&v775[0].width;
  v704 = *&v775[0].data;
  v695 = *&v775[1].width;
  v699 = *&v775[1].data;
  v16 = objc_msgSend_camera(v9, v13, v14);
  objc_msgSend_transform(v16, v17, v18);
  v19 = 0;
  v759[0].columns[0] = v20;
  v759[0].columns[1] = v21;
  v759[0].columns[2] = v22;
  v759[0].columns[3] = v23;
  do
  {
    *(&v775[0].data + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v704, COERCE_FLOAT(*&v759[0].columns[v19])), v700, *v759[0].columns[v19].f32, 1), v699, v759[0].columns[v19], 2), v695, v759[0].columns[v19], 3);
    ++v19;
  }

  while (v19 != 4);
  v24 = 0;
  v25 = *&v775[0].data;
  v26 = *&v775[0].width;
  v27 = *&v775[1].data;
  v28 = *&v775[1].width;
  v759[0].columns[0] = xmmword_2623A78C0;
  v759[0].columns[1] = xmmword_2623A7990;
  v759[0].columns[2] = xmmword_2623A79B0;
  v759[0].columns[3] = xmmword_2623A7810;
  do
  {
    *(&v775[0].data + v24 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*&v759[0].columns[v24])), v26, *v759[0].columns[v24].f32, 1), v27, v759[0].columns[v24], 2), v28, v759[0].columns[v24], 3);
    ++v24;
  }

  while (v24 != 4);
  v726 = v775[0];
  v727 = v775[1];

  v724 = 0u;
  v725 = 0u;
  v723 = 0u;
  v31 = objc_msgSend_camera(v690, v29, v30);
  objc_msgSend_intrinsics(v31, v32, v33);
  DWORD2(v723) = v34;
  DWORD2(v724) = v35;
  *&v723 = v36;
  *&v724 = v37;
  DWORD2(v725) = v38;
  *&v725 = v39;

  v40 = v10;
  v722[0] = 0;
  v722[1] = 0;
  v721 = v722;
  v705 = a2;
  v691 = v40;
  if (a3)
  {
    if (objc_msgSend_count(v40, v41, v42))
    {
      v44 = objc_msgSend_objectAtIndexedSubscript_(v691, v43, 0);
      v47 = objc_msgSend_identifier(v44, v45, v46);
      v50 = objc_msgSend_UUIDString(v47, v48, v49);
      v51 = v50;
      v54 = objc_msgSend_UTF8String(v50, v52, v53);
      sub_2621D0F64(&v765, v54);

      sub_2621D0F64(__p, "");
      v57 = objc_msgSend_parentIdentifier(v44, v55, v56);
      LOBYTE(v50) = v57 == 0;

      if ((v50 & 1) == 0)
      {
        v60 = objc_msgSend_parentIdentifier(v44, v58, v59);
        v63 = objc_msgSend_UUIDString(v60, v61, v62);
        v64 = v63;
        v67 = objc_msgSend_UTF8String(v63, v65, v66);
        sub_2621D0F64(v775, v67);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *&v775[0].data;
        __p[2] = v775[0].width;
        HIBYTE(v775[0].width) = 0;
        LOBYTE(v775[0].data) = 0;
      }

      objc_msgSend_quad(v44, v58, v59);
      v759[0].columns[0].i32[2] = v68;
      v759[0].columns[1].i32[2] = v69;
      v759[0].columns[0].i64[0] = v70;
      v759[0].columns[1].i64[0] = v71;
      v759[0].columns[2].i32[2] = v72;
      v759[0].columns[3].i32[2] = v73;
      v759[0].columns[2].i64[0] = v74;
      v759[0].columns[3].i64[0] = v75;
      sub_26225D2CC((*(a2 + 120) + 152), a3);
      LOWORD(v783[0].__locale_) = -1;
      v732 = 0;
      v733 = 0uLL;
      sub_26225D384(&v732, v783, &v783[0].__locale_ + 2);
    }

    goto LABEL_139;
  }

  v767 = 0u;
  *v768 = 0u;
  v765 = 0u;
  v766 = 0u;
  obj = v40;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, &v765, v759, 16))
  {
    v79 = **(&v765 + 1);
    v80 = objc_msgSend_identifier(**(&v765 + 1), v77, v78);
    v83 = objc_msgSend_UUIDString(v80, v81, v82);
    v84 = v83;
    v87 = objc_msgSend_UTF8String(v83, v85, v86);
    sub_2621D0F64(&v732, v87);

    objc_msgSend_quad(v79, v88, v89);
    LODWORD(__p[1]) = v90;
    LODWORD(v745) = v91;
    __p[0] = v92;
    __p[2] = v93;
    LODWORD(v746) = v94;
    LODWORD(v747) = v95;
    *(&v745 + 1) = v96;
    *(&v746 + 1) = v97;
    sub_26225D2CC((*(v705 + 120) + 152), 0);
    v757[0] = objc_msgSend_edgeStates(v79, v98, v99) >> 24;
    v757[1] = objc_msgSend_edgeStates(v79, v100, v101) >> 8;
    __dst[1] = 0;
    *&v730 = 0;
    __dst[0] = 0;
    sub_26225D384(__dst, v757, &v758);
  }

  v104 = v721;
  if (v721 != v722)
  {
    do
    {
      if (*(v104 + 55) < 0)
      {
        v105 = v104;
        sub_2621CC810(__dst, v104[4], v104[5]);
      }

      else
      {
        *__dst = *(v104 + 2);
        v105 = v104;
        *&v730 = v104[6];
      }

      v106 = v721;
      obja = BYTE7(v730);
      if (v721 != v722)
      {
        v107 = *(v705 + 20);
        if ((SBYTE7(v730) & 0x80u) == 0)
        {
          v108 = BYTE7(v730);
        }

        else
        {
          v108 = __dst[1];
        }

        if ((SBYTE7(v730) & 0x80u) == 0)
        {
          v109 = __dst;
        }

        else
        {
          v109 = __dst[0];
        }

        do
        {
          v110 = (v106 + 4);
          v111 = *(v106 + 55);
          v112 = v111;
          v31 = v106[5];
          if ((v111 & 0x80u) != 0)
          {
            v111 = v106[5];
          }

          if (v111 != v108 || (v112 >= 0 ? (v113 = v106 + 4) : (v113 = *v110), memcmp(v113, v109, v108)))
          {
            v114 = v105[33];
            v115 = vsub_f32(v114, v106[33]);
            if (sqrtf(vaddv_f32(vmul_f32(v115, v115))) < v107)
            {
              v116 = v105[74];
              LODWORD(v775[0].data) = 0;
              if (v112 < 0)
              {
                sub_2621CC810(&v775[0].height, *v110, v31);
              }

              else
              {
                *&v775[0].height = *v110;
                v775[0].rowBytes = v106[6];
              }

              sub_2622E8724(v116, v775);
              if (SHIBYTE(v775[0].rowBytes) < 0)
              {
                operator delete(v775[0].height);
              }

              v114 = v105[33];
            }

            v117 = vsub_f32(v114, v106[34]);
            if (sqrtf(vaddv_f32(vmul_f32(v117, v117))) < v107)
            {
              v31 = v105[74];
              LODWORD(v775[0].data) = 1;
              if (*(v106 + 55) < 0)
              {
                sub_2621CC810(&v775[0].height, v106[4], v106[5]);
              }

              else
              {
                *&v775[0].height = *v110;
                v775[0].rowBytes = v106[6];
              }

              sub_2622E8724(v31, v775);
              if (SHIBYTE(v775[0].rowBytes) < 0)
              {
                operator delete(v775[0].height);
              }
            }

            v118 = v105[34];
            v119 = vsub_f32(v118, v106[33]);
            if (sqrtf(vaddv_f32(vmul_f32(v119, v119))) < v107)
            {
              v31 = v105[74];
              LODWORD(v775[0].data) = 0;
              if (*(v106 + 55) < 0)
              {
                sub_2621CC810(&v775[0].height, v106[4], v106[5]);
              }

              else
              {
                *&v775[0].height = *v110;
                v775[0].rowBytes = v106[6];
              }

              sub_2622E8724(v31 + 24, v775);
              if (SHIBYTE(v775[0].rowBytes) < 0)
              {
                operator delete(v775[0].height);
              }

              v118 = v105[34];
            }

            v120 = vsub_f32(v118, v106[34]);
            if (sqrtf(vaddv_f32(vmul_f32(v120, v120))) < v107)
            {
              v31 = v105[74];
              LODWORD(v775[0].data) = 1;
              if (*(v106 + 55) < 0)
              {
                sub_2621CC810(&v775[0].height, v106[4], v106[5]);
              }

              else
              {
                *&v775[0].height = *v110;
                v775[0].rowBytes = v106[6];
              }

              sub_2622E8724(v31 + 24, v775);
              if (SHIBYTE(v775[0].rowBytes) < 0)
              {
                operator delete(v775[0].height);
              }
            }
          }

          v121 = v106[1];
          if (v121)
          {
            do
            {
              v122 = v121;
              v121 = *v121;
            }

            while (v121);
          }

          else
          {
            do
            {
              v122 = v106[2];
              v160 = *v122 == v106;
              v106 = v122;
            }

            while (!v160);
          }

          v106 = v122;
        }

        while (v122 != v722);
      }

      if (obja < 0)
      {
        operator delete(__dst[0]);
      }

      v123 = v105[1];
      if (v123)
      {
        do
        {
          v124 = v123;
          v123 = *v123;
        }

        while (v123);
      }

      else
      {
        do
        {
          v124 = v105[2];
          v160 = *v124 == v105;
          v105 = v124;
        }

        while (!v160);
      }

      v104 = v124;
    }

    while (v124 != v722);
    v104 = v721;
  }

  if (v104 != v722)
  {
    v125 = 0x572620AE4C415CLL;
    v126 = 0x51B3BEA3677D46CFLL;
    while (1)
    {
      v775[0].data = 0x100000000;
      memset(__p, 0, sizeof(__p));
      sub_2621DD5D0(__p, v775, &v775[0].height, 2uLL);
      v31 = __p[0];
      v693 = __p[1];
      v696 = v104;
      if (__p[0] == __p[1])
      {
        goto LABEL_117;
      }

      do
      {
        v733 = 0uLL;
        v732 = 0;
        v701 = v31;
        v127 = (v104[74] + 24 * *v31);
        v129 = *v127;
        v128 = v127[1];
        v706 = v128;
        if (*v127 == v128)
        {
          v149 = 0;
          v132 = 0;
          v152 = 1;
          v104 = v696;
        }

        else
        {
          do
          {
            v775[0].data = (v129 + 8);
            v130 = sub_26225D91C(&v721, (v129 + 8), v775);
            v131 = v733;
            if (v733 >= *(&v733 + 1))
            {
              v133 = ((v733 - v732) >> 4) * v126;
              v134 = v133 + 1;
              if (v133 + 1 > v125)
              {
                sub_2621CBEB0();
              }

              v135 = ((*(&v733 + 1) - v732) >> 4) * v126;
              if (2 * v135 > v134)
              {
                v134 = 2 * v135;
              }

              if (v135 >= 0x2B9310572620AELL)
              {
                v136 = v125;
              }

              else
              {
                v136 = v134;
              }

              v775[1].data = &v732;
              if (v136)
              {
                if (v136 <= v125)
                {
                  operator new();
                }

                sub_2621C6A34();
              }

              v775[0].data = 0;
              v775[0].height = 752 * v133;
              v775[0].width = 752 * v133;
              v775[0].rowBytes = 0;
              sub_26225EA24(752 * v133, (v130 + 8));
              v137 = v733;
              v138 = v732;
              v139 = (v775[0].height - (v733 - v732));
              v775[0].width += 752;
              if (v733 != v732)
              {
                v140 = v126;
                v141 = v125;
                v142 = 0;
                v143 = v775[0].height - 16 * ((v733 - v732) >> 4) - 752;
                v144 = v732;
                v145 = v775[0].height - (v733 - v732);
                do
                {
                  sub_26225EA24(v145, v144);
                  v144 += 752;
                  v145 += 752;
                  v142 -= 752;
                  v143 += 752;
                }

                while (v144 != v137);
                v146 = v138;
                v125 = v141;
                v126 = v140;
                v128 = v706;
                do
                {
                  (**v138)(v138);
                  v138 += 752;
                  v146 += 752;
                }

                while (v138 != v137);
              }

              v147 = v732;
              v148 = *(&v733 + 1);
              v732 = v139;
              objf = v775[0].width;
              v733 = *&v775[0].width;
              v775[0].width = v147;
              v775[0].rowBytes = v148;
              v775[0].height = v147;
              v775[0].data = v147;
              sub_2622E89E8(v775);
              v132 = objf;
            }

            else
            {
              sub_26225EA24(v733, (v130 + 8));
              v132 = (v131 + 752);
            }

            *&v733 = v132;
            v129 += 32;
          }

          while (v129 != v128);
          v149 = v732;
          v150 = v732;
          v104 = v696;
          v31 = v701;
          if (v732 != v132)
          {
            while (1)
            {
              v151 = vsub_f32(v150[25], v150[26]);
              if (sqrtf(vaddv_f32(vmul_f32(v151, v151))) <= 0.5)
              {
                break;
              }

              v150 += 94;
              if (v150 == v132)
              {
                v152 = 0;
                goto LABEL_103;
              }
            }

            v157 = *v701;
            v154 = v157 >> 6;
            v155 = 1 << v157;
            *(v696[77] + 8 * v154) |= v155;
            goto LABEL_106;
          }

          v152 = 1;
        }

LABEL_103:
        v153 = *v31;
        v154 = v153 >> 6;
        v155 = 1 << v153;
        *(v104[77] + 8 * v154) &= ~v155;
        if (v152)
        {
          v156 = (v104[94] + 8 * v154);
LABEL_113:
          v161 = *v156 & ~v155;
          goto LABEL_115;
        }

LABEL_106:
        v158 = v149 + 752;
        do
        {
          v159 = *(v158 - 72);
          v160 = v159 != 1 || v158 == v132;
          v158 += 752;
        }

        while (!v160);
        v156 = (v104[94] + 8 * v154);
        if (v159)
        {
          goto LABEL_113;
        }

        v161 = *v156 | v155;
LABEL_115:
        *v156 = v161;
        v775[0].data = &v732;
        sub_2622E8928(v775);
        v31 += 4;
      }

      while (v31 != v693);
      v31 = __p[0];
LABEL_117:
      if (v31)
      {
        operator delete(v31);
      }

      v162 = v104[1];
      if (v162)
      {
        do
        {
          v163 = v162;
          v162 = *v162;
        }

        while (v162);
      }

      else
      {
        do
        {
          v163 = v104[2];
          v160 = *v163 == v104;
          v104 = v163;
        }

        while (!v160);
      }

      v104 = v163;
      if (v163 == v722)
      {
        v104 = v721;
        break;
      }
    }
  }

  if (v104 != v722)
  {
    sub_2621CBF10(1uLL);
  }

  HIDWORD(v164) = 0;
  v775[0].data = v727.width;
  v165 = *a6;
  v166 = a6[1];
  if (*a6 != v166)
  {
    v775[0].width = 0;
    v775[0].height = 0;
    v775[0].data = &v775[0].height;
    do
    {
      v167 = v165[1];
      LODWORD(v102) = llround(COERCE_FLOAT(*v165) / 0.2);
      LODWORD(v103) = llround(COERCE_FLOAT(HIDWORD(*v165)) / 0.2);
      __p[0] = (v102 | (v103 << 32));
      LODWORD(v31) = llround(*&v167 / 0.2);
      LODWORD(v164) = llround(*(&v167 + 1) / 0.2);
      v732 = (v31 | (v164 << 32));
      sub_2622E8B7C(v775, v102, v103, __p);
      sub_2622E8B7C(v775, v31, v164, &v732);
      v165 += 4;
    }

    while (v165 != v166);
    v168 = v721;
    height = v775[0].height;
    if (v721 != v722)
    {
      do
      {
        v170 = llround(COERCE_FLOAT(v168[34]) / 0.2);
        v171 = llround(COERCE_FLOAT(HIDWORD(v168[34])) / 0.2);
        v172 = sub_2622E8C74(height, llround(COERCE_FLOAT(v168[33]) / 0.2), llround(COERCE_FLOAT(HIDWORD(v168[33])) / 0.2));
        v173 = v168[98];
        v174 = *v173 & 0xFFFFFFFFFFFFFFFELL | v172;
        *v173 = v174;
        *v173 = v174 & 0xFFFFFFFFFFFFFFFDLL | (2 * (sub_2622E8C74(height, v170, v171) != 0));
        v175 = v168[1];
        if (v175)
        {
          do
          {
            v176 = v175;
            v175 = *v175;
          }

          while (v175);
        }

        else
        {
          do
          {
            v176 = v168[2];
            v160 = *v176 == v168;
            v168 = v176;
          }

          while (!v160);
        }

        v168 = v176;
      }

      while (v176 != v722);
    }

    sub_2621C6C04(height);
  }

LABEL_139:

  v177 = a3;
  LOBYTE(v765) = a3;
  v178 = v705;
  if (!a3)
  {
    v775[0].width = 0;
    v775[0].height = 0;
    v775[0].data = &v775[0].height;
    v759[0].columns[0].i64[0] = &v765;
    v179 = sub_26225E6DC((v705 + 128), 0, v759);
    v180 = v179[5];
    v181 = v179 + 6;
    if (v180 != (v179 + 6))
    {
      do
      {
        if (sub_26225E7AC(v722[0], v180 + 6))
        {
          v182 = sub_26225E814(&v721, v180 + 6);
          v183 = *(v180 + 24) ? 432 : 408;
          if (*(v182 + v183 + 16) == 1 && ((*(*(sub_26225E814(&v721, v180 + 6) + 552) + ((*(v180 + 24) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v180 + 24)) & 1) == 0)
          {
            v759[0].columns[0].i64[0] = (v180 + 4);
            v184 = sub_26225E854(v775, *(v180 + 8), *(v180 + 9), v759);
            *(v184 + 40) = v180[5];
            std::string::operator=((v184 + 48), v180 + 2);
            std::string::operator=((v184 + 72), v180 + 3);
            v185 = *(v180 + 6);
            *(v184 + 112) = v180[14];
            *(v184 + 96) = v185;
          }
        }

        v186 = v180[1];
        if (v186)
        {
          do
          {
            v187 = v186;
            v186 = *v186;
          }

          while (v186);
        }

        else
        {
          do
          {
            v187 = v180[2];
            v160 = *v187 == v180;
            v180 = v187;
          }

          while (!v160);
        }

        v180 = v187;
      }

      while (v187 != v181);
    }

    v759[0].columns[0].i64[0] = &v765;
    v188 = sub_26225E6DC((v705 + 128), v765, v759);
    v189 = v188[7];
    v190 = *&v775[0].height;
    v191 = v188 + 5;
    v192 = *(v188 + 5);
    v188[5] = v775[0].data;
    *(v188 + 3) = v190;
    v193 = v188 + 6;
    *&v775[0].data = v192;
    v775[0].width = v189;
    if (*(&v190 + 1))
    {
      v194 = (v190 + 16);
    }

    else
    {
      v194 = v191;
    }

    *v194 = v193;
    v195 = v775[0].height;
    v196 = (v775[0].height + 16);
    if (!v189)
    {
      v196 = v775;
    }

    v196->data = &v775[0].height;
    sub_26225CE9C(v195);
    v177 = 0;
  }

  v707 = v177 - 1;
  if ((v177 - 1) > 1u)
  {
LABEL_228:
    v719 = 0;
    v720 = 0;
    v718 = &v719;
    v200 = v721;
    if (a3)
    {
      goto LABEL_229;
    }

    if (v721 == v722)
    {
LABEL_613:
      v648 = *(v178 + 136);
      if (!v648)
      {
LABEL_619:
        operator new();
      }

      while (1)
      {
        v649 = v648;
        if (!*(v648 + 32))
        {
          break;
        }

        v648 = *v648;
        if (!*v649)
        {
          goto LABEL_619;
        }
      }

      if (!v720)
      {
        goto LABEL_578;
      }

      v651 = v718;
      if (v718 == &v719)
      {
        goto LABEL_578;
      }

      while (1)
      {
        v652 = *(v651 + 8);
        v653 = (v651 + 6);
        v654 = v651 + 12;
        v655 = *(v651 + 24);
        v656 = *(v651 + 25);
        v657 = *(v651 + 27);
        v658 = *(v651 + 9);
        if (sub_26225EC78(v649[6], *(v651 + 8), v658))
        {
          v659 = v655;
          obje = (v651 + 6);
          v660 = *sub_26225E930((v649 + 5), v775, v652, v658);
          if (!v660)
          {
            sub_2621C84A8("map::at:  key not found");
          }

          v661 = (v660 + 48);
          v662 = *(v660 + 71);
          v663 = v662;
          v664 = *(v660 + 56);
          if ((v662 & 0x80u) == 0)
          {
            v665 = *(v660 + 71);
          }

          else
          {
            v665 = *(v660 + 56);
          }

          v666 = *(v651 + 71);
          v667 = v666;
          v668 = v651[7];
          if ((v666 & 0x80u) == 0)
          {
            v669 = *(v651 + 71);
          }

          else
          {
            v669 = v651[7];
          }

          if (v665 == v669)
          {
            v698 = *(v660 + 56);
            v670 = *(v660 + 100);
            v671 = *(v660 + 108);
            v694 = *(v660 + 96);
            if ((v662 & 0x80u) == 0)
            {
              v672 = (v660 + 48);
            }

            else
            {
              v672 = *(v660 + 48);
            }

            if ((v666 & 0x80u) == 0)
            {
              v673 = v651 + 6;
            }

            else
            {
              v673 = obje->__r_.__value_.__r.__words[0];
            }

            if (!memcmp(v672, v673, v665) && v694 == v659)
            {
              v676 = (v656 - v670) <= 0.05 && (v657 - v671) <= 5.0;
              v661 = (v660 + 48);
              v664 = v698;
              if (!v676)
              {
                v775[0].data = v651 + 4;
                v677 = sub_26225E854(v649 + 5, *(v651 + 8), *(v651 + 9), v775);
                *(v677 + 40) = v651[5];
                std::string::operator=((v677 + 48), obje);
                std::string::operator=((v677 + 72), v651 + 3);
                v678 = *(v651 + 6);
                *(v677 + 112) = v651[14];
                *(v677 + 96) = v678;
                v662 = *(v660 + 71);
                v664 = *(v660 + 56);
                v666 = *(v651 + 71);
                v668 = v651[7];
                v667 = *(v651 + 71);
                v663 = *(v660 + 71);
                v661 = (v660 + 48);
              }
            }

            else
            {
              v661 = (v660 + 48);
              v664 = v698;
            }
          }

          if (v663 >= 0)
          {
            v679 = v662;
          }

          else
          {
            v679 = v664;
          }

          if (v667 >= 0)
          {
            v680 = v666;
          }

          else
          {
            v680 = v668;
          }

          v178 = v705;
          v653 = (v651 + 6);
          if (v679 == v680)
          {
            v681 = v663 >= 0 ? v661 : *v661;
            v682 = v667 >= 0 ? v651 + 6 : obje->__r_.__value_.__r.__words[0];
            if (!memcmp(v681, v682, v679))
            {
              goto LABEL_664;
            }
          }

          v775[0].data = v651 + 4;
          v675 = sub_26225E854(v649 + 5, *(v651 + 8), *(v651 + 9), v775);
          v654 = v651 + 12;
        }

        else
        {
          v775[0].data = v651 + 4;
          v675 = sub_26225E854(v649 + 5, v652, *(v651 + 9), v775);
        }

        v683 = v675;
        v675[1].__r_.__value_.__r.__words[2] = v651[5];
        std::string::operator=(v675 + 2, v653);
        std::string::operator=(v683 + 3, v651 + 3);
        v684 = *v654;
        v683[4].__r_.__value_.__r.__words[2] = v654[2];
        *&v683[4].__r_.__value_.__l.__data_ = v684;
LABEL_664:
        v685 = v651[1];
        if (v685)
        {
          do
          {
            v686 = v685;
            v685 = *v685;
          }

          while (v685);
        }

        else
        {
          do
          {
            v686 = v651[2];
            v160 = *v686 == v651;
            v651 = v686;
          }

          while (!v160);
        }

        v651 = v686;
        if (v686 == &v719)
        {
          goto LABEL_578;
        }
      }
    }

    v240 = *(v178 + 120);
    while (1)
    {
      if ((v200[61] & 1) != 0 || *(v200 + 512) == 1)
      {
        v241 = vsub_f32(v200[33], v200[34]);
        if (sqrtf(vaddv_f32(vmul_f32(v241, v241))) > *(v240 + 20) && *(v200 + 744) == 1)
        {
          break;
        }
      }

LABEL_264:
      v247 = v200[1];
      if (v247)
      {
        do
        {
          v248 = v247;
          v247 = *v247;
        }

        while (v247);
      }

      else
      {
        do
        {
          v248 = v200[2];
          v160 = *v248 == v200;
          v200 = v248;
        }

        while (!v160);
      }

      v200 = v248;
      if (v248 == v722)
      {
        goto LABEL_478;
      }
    }

    v759[0].columns[0].i64[0] = 0x100000000;
    memset(v775, 0, 24);
    sub_2621DD5D0(v775, v759, &v759[0].columns[0].i32[2], 2uLL);
    data = v775[0].data;
    v243 = v775[0].height;
    if (v775[0].data == v775[0].height)
    {
      v246 = 1;
      if (v775[0].data)
      {
LABEL_262:
        operator delete(data);
      }
    }

    else
    {
      v244 = v775[0].data + 4;
      do
      {
        v245 = sub_2622CFE08(v240, v200 + 8, *(v244 - 1));
        if (v245)
        {
          break;
        }

        v160 = v244 == v243;
        v244 += 4;
      }

      while (!v160);
      v246 = !v245;
      if (data)
      {
        goto LABEL_262;
      }
    }

    if (!v246)
    {
      goto LABEL_273;
    }

    goto LABEL_264;
  }

  v197 = *(v705 + 160);
  if (v197)
  {
    v198 = *(v705 + 160);
    while (1)
    {
      v199 = *(v198 + 32);
      if (v199 <= a3)
      {
        if (v199 >= a3)
        {
          if (a7)
          {
            goto LABEL_228;
          }

          LOBYTE(__p[0]) = a3;
          while (1)
          {
            v201 = *(v197 + 32);
            if (v201 <= a3)
            {
              if (v201 >= a3)
              {
                v202 = v721;
                if (v721 != v722)
                {
                  do
                  {
                    v775[0].data = __p;
                    v203 = sub_26225E6DC((v178 + 152), __p[0], v775);
                    v204 = sub_26225E9A4((v203 + 5), v202 + 4);
                    v775[0].data = __p;
                    if (sub_26225E6DC((v178 + 152), __p[0], v775) + 6 != v204)
                    {
                      if (*(v204 + 695) < 0)
                      {
                        sub_2621CC810(&v765, *(v204 + 672), *(v204 + 680));
                      }

                      else
                      {
                        v765 = *(v204 + 672);
                        *&v766 = *(v204 + 688);
                      }

                      v206 = *(v204 + 80);
                      v207 = *(v204 + 112);
                      v208 = *(v204 + 260);
                      objb = *(v204 + 256);
                      if (LOBYTE(__p[0]) == 2)
                      {
                        v205.i32[0] = *(v202 + 65);
                        if (vabds_f32(*v205.i32, v208) > 0.1)
                        {
                          v702 = v205;
                          v775[0].data = __p;
                          v209 = sub_26225E6DC((v178 + 128), 2u, v775);
                          v210 = v209[5];
                          v211 = v209 + 6;
                          v212 = *v702.i32;
                          if (v210 != (v209 + 6))
                          {
                            v213 = vdup_lane_s32(v702, 0);
                            do
                            {
                              if (*(v210 + 71) < 0)
                              {
                                sub_2621CC810(v775, v210[6], v210[7]);
                              }

                              else
                              {
                                *&v775[0].data = *(v210 + 3);
                                v775[0].width = v210[8];
                              }

                              v214 = *(v202 + 55);
                              if (v214 >= 0)
                              {
                                v215 = *(v202 + 55);
                              }

                              else
                              {
                                v215 = v202[5];
                              }

                              width_high = HIBYTE(v775[0].width);
                              v217 = SHIBYTE(v775[0].width);
                              if ((v775[0].width & 0x8000000000000000) != 0)
                              {
                                width_high = v775[0].height;
                              }

                              if (v215 == width_high)
                              {
                                v218 = *(v210 + 24);
                                v219 = v214 >= 0 ? v202 + 4 : v202[4];
                                v220 = (v775[0].width & 0x8000000000000000) == 0 ? v775 : v775[0].data;
                                v221 = !memcmp(v219, v220, v215) && v218 == 3;
                                v178 = v705;
                                if (v221)
                                {
                                  v210[14] = v213;
                                  *(v210 + 25) = 0;
                                }
                              }

                              if (v217 < 0)
                              {
                                operator delete(v775[0].data);
                              }

                              v222 = v210[1];
                              if (v222)
                              {
                                do
                                {
                                  v223 = v222;
                                  v222 = *v222;
                                }

                                while (v222);
                              }

                              else
                              {
                                do
                                {
                                  v223 = v210[2];
                                  v160 = *v223 == v210;
                                  v210 = v223;
                                }

                                while (!v160);
                              }

                              v210 = v223;
                            }

                            while (v223 != v211);
                            v212 = *v702.i32;
                          }

                          v208 = v212;
                        }
                      }

                      v703 = LODWORD(v208);
                      v759[0].columns[0].i8[0] = 0;
                      v775[0].data = v759;
                      v224 = sub_26225E6DC((v178 + 152), 0, v775);
                      v225 = sub_26225E9A4((v224 + 5), &v765);
                      v759[0].columns[0].i8[0] = 0;
                      v775[0].data = v759;
                      if (sub_26225E6DC((v178 + 152), 0, v775) + 6 != v225)
                      {
                        sub_26225EA24(v775, (v225 + 8));
                        v228 = vsub_f32(*&v781, *(&v780 + 8));
                        v229 = vaddv_f32(vmul_f32(vsub_f32(v206, *(&v780 + 8)), v228));
                        v230 = vaddv_f32(vmul_f32(v228, v228));
                        if (v230 < 0.000001)
                        {
                          v230 = 0.000001;
                        }

                        *v227.f32 = vmla_n_f32(*(&v780 + 8), v228, v229 / v230);
                        v231 = vaddv_f32(vmul_f32(vsub_f32(v207, *(&v780 + 8)), v228)) / v230;
                        v232 = v227;
                        v232.i32[2] = objb;
                        *v226.f32 = vmla_n_f32(*(&v780 + 8), v228, v231);
                        v233 = v226;
                        v233.i32[2] = objb;
                        v759[0].columns[0] = v232;
                        v759[0].columns[1] = v233;
                        v226.i32[2] = v703;
                        v227.i32[2] = v703;
                        v759[0].columns[2] = v226;
                        v759[0].columns[3] = v227;
                        sub_2622E82B0((v202 + 8), v759);
                        sub_2622E82B0(v204 + 64, v759);
                        sub_26225CFEC(v775);
                      }

                      if (SBYTE7(v766) < 0)
                      {
                        operator delete(v765);
                      }
                    }

                    v234 = v202[1];
                    if (v234)
                    {
                      do
                      {
                        v235 = v234;
                        v234 = *v234;
                      }

                      while (v234);
                    }

                    else
                    {
                      do
                      {
                        v235 = v202[2];
                        v160 = *v235 == v202;
                        v202 = v235;
                      }

                      while (!v160);
                    }

                    v202 = v235;
                  }

                  while (v235 != v722);
                }

                goto LABEL_228;
              }

              ++v197;
            }

            v197 = *v197;
            if (!v197)
            {
              goto LABEL_228;
            }
          }
        }

        ++v198;
      }

      v198 = *v198;
      if (!v198)
      {
        goto LABEL_228;
      }
    }
  }

  v719 = 0;
  v720 = 0;
  v718 = &v719;
  v200 = v721;
LABEL_229:
  if (v200 == v722)
  {
    goto LABEL_478;
  }

  v236 = *(v178 + 120);
  while (1)
  {
    if ((v200[61] & 1) != 0 || (v200[64] & 1) != 0 || (v200[70] & 1) != 0 || *(v200 + 584) == 1)
    {
      v237 = vsub_f32(v200[33], v200[34]);
      if (sqrtf(vaddv_f32(vmul_f32(v237, v237))) > *(v236 + 72) && (*(v200 + 488) && *(v200 + 177) > *(v236 + 76) || *(v200 + 512) == 1 && *(v200 + 178) > *(v236 + 76) || a3 == 1 && (v200[70] & 1) != 0 || (v200[73] & 1) != 0))
      {
        break;
      }
    }

    v238 = v200[1];
    if (v238)
    {
      do
      {
        v239 = v238;
        v238 = *v238;
      }

      while (v238);
    }

    else
    {
      do
      {
        v239 = v200[2];
        v160 = *v239 == v200;
        v200 = v239;
      }

      while (!v160);
    }

    v200 = v239;
    if (v239 == v722)
    {
      goto LABEL_478;
    }
  }

LABEL_273:
  v249 = v690;
  if (!*(v178 + 216))
  {
    v250 = objc_alloc_init(RSSemanticSegmentation);
    v251 = *(v178 + 216);
    *(v178 + 216) = v250;

    v178 = v705;
  }

  if (*(v178 + 208))
  {

    v178 = v705;
    goto LABEL_277;
  }

  v261 = *(v178 + 216);
  v262 = v249;
  v263 = v262;
  if (!v261)
  {
    goto LABEL_312;
  }

  v264 = v262;
  v267 = v264;
  if ((*(v261 + 96) & 1) == 0)
  {
    v268 = objc_msgSend_colorBuffer(v264, v265, v266);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v268);
    v272 = objc_msgSend_colorBuffer(v267, v270, v271);
    Width = CVPixelBufferGetWidth(v272);
    v276 = objc_msgSend_colorBuffer(v267, v274, v275);
    v277 = CVPixelBufferGetHeight(v276);
    v278 = sub_2623091D4([RSCVPixelRotate alloc], 90, PixelFormatType, v277, Width);
    v279 = *(v261 + 8);
    *(v261 + 8) = v278;

    v280 = sub_2623091D4([RSCVPixelRotate alloc], 270, 1278226488, 256.0, 192.0);
    v281 = *(v261 + 16);
    *(v261 + 16) = v280;

    v282 = sub_2623091D4([RSCVPixelRotate alloc], 180, PixelFormatType, Width, v277);
    v283 = *(v261 + 24);
    *(v261 + 24) = v282;

    v284 = sub_2623091D4([RSCVPixelRotate alloc], 180, 1278226488, 256.0, 192.0);
    v285 = *(v261 + 32);
    *(v261 + 32) = v284;

    v286 = sub_2623091D4([RSCVPixelRotate alloc], 270, PixelFormatType, v277, Width);
    v287 = *(v261 + 40);
    *(v261 + 40) = v286;

    v288 = sub_2623091D4([RSCVPixelRotate alloc], 90, 1278226488, 256.0, 192.0);
    v289 = *(v261 + 48);
    *(v261 + 48) = v288;

    *(v261 + 96) = 1;
  }

  if (*(v261 + 97) != 1 || (v290 = *(v261 + 88), v290 != objc_msgSend_deviceOrientation(v267, v265, v266)))
  {
    if (MEMORY[0x277D4B6F8] && MEMORY[0x277D4B720] && MEMORY[0x277D4B710])
    {
      *(v261 + 88) = objc_msgSend_deviceOrientation(v267, v265, v266);
      v291 = objc_alloc_init(MEMORY[0x277D4B720]);
      v292 = *(v261 + 64);
      *(v261 + 64) = v291;

      v295 = objc_msgSend_deviceOrientation(v267, v293, v294);
      if ((v295 - 3) < 2)
      {
        objc_msgSend_setNetworkModeEnum_(*(v261 + 64), v296, 1);
        v342 = objc_alloc(MEMORY[0x277D4B710]);
        v300 = objc_msgSend_initWithOutputResolution_(v342, v343, v344, 256.0, 192.0);
        goto LABEL_314;
      }

      if ((v295 - 1) <= 1)
      {
        objc_msgSend_setNetworkModeEnum_(*(v261 + 64), v296, 2);
        v297 = objc_alloc(MEMORY[0x277D4B710]);
        v300 = objc_msgSend_initWithOutputResolution_(v297, v298, v299, 192.0, 256.0);
LABEL_314:
        v345 = *(v261 + 72);
        *(v261 + 72) = v300;

        *(v261 + 80) = objc_msgSend_networkModeEnum(*(v261 + 64), v346, v347);
        objc_msgSend_setEngineType_(*(v261 + 64), v348, 1);
        objc_msgSend_setRunByE5RT_(*(v261 + 64), v349, 1);
        LODWORD(v350) = 1053609165;
        objc_msgSend_setUncertaintyThreshold_(*(v261 + 64), v351, v352, v350);
        objc_msgSend_setModelConfig_(*(v261 + 64), v353, 0);
        v354 = objc_alloc(MEMORY[0x277D4B6F8]);
        LODWORD(v355) = 1053609165;
        v357 = objc_msgSend_initWithComputeEngine_andNetworkConfiguration_uncertaintyThreshold_(v354, v356, 1, 0, v355);
        v358 = *(v261 + 56);
        *(v261 + 56) = v357;

        *(v261 + 97) = 1;
        goto LABEL_315;
      }
    }

LABEL_312:
    *(v705 + 208) = 0;

    v178 = v705;
    goto LABEL_478;
  }

LABEL_315:

  v361 = objc_msgSend_colorBuffer(v267, v359, v360);
  v364 = objc_msgSend_deviceOrientation(v267, v362, v363);
  v367 = 0;
  if (v364 <= 2)
  {
    if (v364 == 1)
    {
      v370 = 16;
      v371 = 8;
    }

    else
    {
      v368 = 0;
      v369 = 0;
      if (v364 != 2)
      {
        goto LABEL_386;
      }

      v370 = 48;
      v371 = 40;
    }

LABEL_384:
    v367 = *(v261 + v371);
    v368 = *(v261 + v370);
    v449 = sub_2623092DC(v367, v361);
    v450 = *(v261 + 56);
    v453 = objc_msgSend_semantic(*(v261 + 72), v451, v452);
    IOSurface = CVPixelBufferGetIOSurface(v453);
    v457 = objc_msgSend_confidence(*(v261 + 72), v455, v456);
    v458 = CVPixelBufferGetIOSurface(v457);
    v461 = objc_msgSend_uncertainty(*(v261 + 72), v459, v460);
    v462 = CVPixelBufferGetIOSurface(v461);
    objc_msgSend_runWithInput_output_confidenceOutput_uncertaintyOutput_resampleOutput_networkConfiguration_(v450, v463, v449, IOSurface, v458, v462, 1, *(v261 + 80));
    v466 = objc_msgSend_semantic(*(v261 + 72), v464, v465);
    v369 = sub_2623092DC(v368, v466);
    goto LABEL_386;
  }

  if (v364 != 3)
  {
    v368 = 0;
    v369 = 0;
    if (v364 != 4)
    {
      goto LABEL_386;
    }

    v370 = 32;
    v371 = 24;
    goto LABEL_384;
  }

  v467 = *(v261 + 56);
  v468 = objc_msgSend_semantic(*(v261 + 72), v365, v366);
  v469 = CVPixelBufferGetIOSurface(v468);
  v472 = objc_msgSend_confidence(*(v261 + 72), v470, v471);
  v473 = CVPixelBufferGetIOSurface(v472);
  v476 = objc_msgSend_uncertainty(*(v261 + 72), v474, v475);
  v477 = CVPixelBufferGetIOSurface(v476);
  objc_msgSend_runWithInput_output_confidenceOutput_uncertaintyOutput_resampleOutput_networkConfiguration_(v467, v478, v361, v469, v473, v477, 1, 1);
  v369 = objc_msgSend_semantic(*(v261 + 72), v479, v480);
  v367 = 0;
  v368 = 0;
LABEL_386:

  *(v705 + 208) = v369;
  v481 = v369 == 0;

  v178 = v705;
  if (v481)
  {
    goto LABEL_478;
  }

LABEL_277:
  if (v707 <= 1u)
  {
    CVPixelBufferLockBaseAddress(*(v178 + 208), 1uLL);
  }

  v252 = v249;
  v255 = v252;
  *&__p[1] = 0u;
  v745 = 0u;
  v746 = 0u;
  v747 = 0u;
  v748 = 0u;
  v749 = 0u;
  v751 = 0;
  __p[0] = &unk_2874EEB10;
  v750[2] = 0;
  v752 = 257;
  v256 = &unk_2874EEC38;
  v733 = 0u;
  v734 = 0u;
  v735 = 0u;
  v736 = 0u;
  v737 = 0u;
  v738 = 0u;
  v741 = 0;
  v732 = &unk_2874EEC38;
  v740 = 0;
  v742 = 257;
  if (!a3)
  {
    v301 = objc_msgSend_colorBuffer(v252, v253, v254);
    v302 = CVPixelBufferGetWidth(v301);
    v305 = objc_msgSend_colorBuffer(v255, v303, v304);
    v308 = (CVPixelBufferGetHeight(v305) / *v178);
    objc = (v302 / *v178);
    v697 = v308;
    v309 = *(v178 + 224);
    if (!v309)
    {
      operator new();
    }

    v310 = objc_msgSend_colorBuffer(v255, v306, v307);
    (*(*v309 + 2))(v309, v310);
    sub_26222B530(v309, v311, v312);
    v315 = sub_26222B4BC(v309, v313, v314);
    (*(*v309 + 3))(v309);
    v316 = v309[5];
    v319 = objc_msgSend_width(v316, v317, v318);
    v324 = objc_msgSend_height(v316, v320, v321);
    if (*(v705 + 369) == 1)
    {
      __dst[0] = objc_msgSend_height(v316, v322, v323);
      v783[0].__locale_ = objc_msgSend_width(v316, v325, v326);
      sub_262223490(&v765, __dst, v783);
      sub_26225F17C(v775, 0, &v765);
      v327 = *&v775[1].rowBytes;
      v328 = *&v775[2].rowBytes;
      *(v705 + 304) = *&v775[2].height;
      *(v705 + 320) = v328;
      *(v705 + 336) = *&v775[3].height;
      v329 = *&v775[0].rowBytes;
      *(v705 + 240) = *&v775[0].height;
      *(v705 + 256) = v329;
      *(v705 + 272) = *&v775[1].height;
      *(v705 + 288) = v327;
      rowBytes = v775[3].rowBytes;
      v331 = v776;
      if (v776)
      {
        atomic_fetch_add_explicit((v776 + 8), 1uLL, memory_order_relaxed);
      }

      v332 = *(v705 + 360);
      *(v705 + 352) = rowBytes;
      *(v705 + 360) = v331;
      if (v332)
      {
        sub_2621D1B78(v332);
      }

      *(v705 + 376) = v777;
      *(v705 + 368) = WORD4(v776);
      v775[0].data = &unk_2874EEC38;
      if (v776)
      {
        sub_2621D1B78(v776);
      }
    }

    v333 = *(v705 + 376);
    v334 = objc_msgSend_width(v316, v322, v323);
    memset(v775, 0, 24);
    v775[0].rowBytes = v319;
    v775[1].data = v324;
    v775[1].height = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v316, v335, v333, v334, v775, 0);

    v766 = 0u;
    v767 = 0u;
    v765 = 0u;
    sub_26222D2A8(v768, v705 + 232);
    v765 = *&v768[1];
    v766 = *&v768[3];
    v767 = *&v768[5];
    if (v773 == 1)
    {
      v336 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v337 = sub_2621D552C(v336, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v337, " ", 1);
      v338 = MEMORY[0x277D82670];
      v339 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
      sub_2621D552C(v339, " ", 1);
      sub_2621D552C(v339, "operator=", 9);
      std::ios_base::getloc((v339 + *(*v339 - 24)));
      v340 = std::locale::use_facet(v775, MEMORY[0x277D82680]);
      (v340->__vftable[2].~facet_0)(v340, 10);
      std::locale::~locale(v775);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D8074("err", "empty tensor in");
      std::ios_base::getloc((v338 + *(*v338 - 24)));
      v341 = std::locale::use_facet(v775, MEMORY[0x277D82680]);
      (v341->__vftable[2].~facet_0)(v341, 10);
      std::locale::~locale(v775);
      std::ostream::put();
      std::ostream::flush();
    }

    if (HIBYTE(v752) == 1)
    {
      *&__p[1] = v765;
      v745 = v766;
      v746 = v767;
      *&v747 = *(&v765 + 1);
      *(&v747 + 1) = 1;
      v750[0] = v765 * *(&v765 + 1);
      v750[1] = 0;
      sub_2621D7174(v775, v750);
    }

    v372 = 0;
    v373 = &v765;
    v374 = 1;
    do
    {
      v375 = __p[v372 + 1];
      v376 = *v373;
      if ((v374 & 1) == 0)
      {
        break;
      }

      v374 = 0;
      v373 = (&v765 + 8);
      v372 = 1;
    }

    while (v375 == v376);
    if (v375 == v376)
    {
      if (v772)
      {
        memset(v775, 0, 48);
        v377 = v750[0];
        v378 = v753;
        if (v752)
        {
          if (v750[0])
          {
            v379 = v774;
            do
            {
              v380 = *v379++;
              *v378++ = v380;
              --v377;
            }

            while (v377);
          }
        }

        else if (v750[0])
        {
          v482 = 0;
          v483 = v747;
          v484 = v774;
          do
          {
            v485 = 0;
            v378[*(&v483 + 1) * v775[0].height + v483 * v775[0].data] = v484[v482];
            do
            {
              v486 = (*(&v775[0].height + v485 * 8) + 1);
              *(&v775[0].height + v485 * 8) = v486;
              if (v486 != __p[v485 + 2])
              {
                break;
              }

              *(&v775[0].height + v485 * 8) = 0;
              --v485;
            }

            while (v485 != -2);
            ++v482;
          }

          while (v482 != v377);
        }
      }

      else
      {
        memset(v775, 0, 48);
        v409 = v750[0];
        v410 = v753;
        if (v752)
        {
          if (v750[0])
          {
            v411 = 0;
            v412 = v769;
            v413 = v770;
            v414 = v774;
            do
            {
              v415 = 0;
              v410[v411] = v414[v413 * v775[0].height + v412 * v775[0].data];
              do
              {
                v416 = (*(&v775[0].height + v415 * 8) + 1);
                *(&v775[0].height + v415 * 8) = v416;
                if (v416 != __p[v415 + 2])
                {
                  break;
                }

                *(&v775[0].height + v415 * 8) = 0;
                --v415;
              }

              while (v415 != -2);
              ++v411;
            }

            while (v411 != v409);
          }
        }

        else if (v750[0])
        {
          v487 = 0;
          v488 = v747;
          v489 = v769;
          v490 = v770;
          v491 = v774;
          do
          {
            v492 = 0;
            v410[*(&v488 + 1) * v775[0].height + v488 * v775[0].data] = v491[v490 * v775[0].height + v489 * v775[0].data];
            do
            {
              v493 = (*(&v775[0].height + v492 * 8) + 1);
              *(&v775[0].height + v492 * 8) = v493;
              if (v493 != __p[v492 + 2])
              {
                break;
              }

              *(&v775[0].height + v492 * 8) = 0;
              --v492;
            }

            while (v492 != -2);
            ++v487;
          }

          while (v487 != v409);
        }
      }
    }

    else
    {
      if (v772)
      {
        v781 = 0uLL;
        v782 = 0uLL;
        v779 = 0uLL;
        v780 = 0uLL;
        v777 = 0uLL;
        v778 = 0uLL;
        v776 = 0uLL;
        memset(v775, 0, sizeof(v775));
        v730 = 0uLL;
        v731 = 0uLL;
        *__dst = 0uLL;
        sub_2621D96E4(v775, &__p[1], &v765, __dst);
        v381 = 0;
        v382 = __dst;
        v383 = 1;
        do
        {
          v384 = *v382;
          v385 = __p[v381 + 1];
          if ((v383 & 1) == 0)
          {
            break;
          }

          v383 = 0;
          v382 = &__dst[1];
          v381 = 1;
        }

        while (v384 == v385);
        if (v384 != v385)
        {
          v386 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
          v387 = sub_2621D552C(v386, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
          sub_2621D552C(v387, " ", 1);
          v388 = MEMORY[0x277D82670];
          v389 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
          sub_2621D552C(v389, " ", 1);
          sub_2621D552C(v389, "broadcast_assign_continue", 25);
          std::ios_base::getloc((v389 + *(*v389 - 24)));
          v390 = std::locale::use_facet(v783, MEMORY[0x277D82680]);
          (v390->__vftable[2].~facet_0)(v390, 10);
          std::locale::~locale(v783);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D58EC("err", "broadcast assign issue");
          std::ios_base::getloc((v388 + *(*v388 - 24)));
          v391 = std::locale::use_facet(v783, MEMORY[0x277D82680]);
          (v391->__vftable[2].~facet_0)(v391, 10);
          std::locale::~locale(v783);
          std::ostream::put();
          std::ostream::flush();
        }

        v784 = 0u;
        v785 = 0u;
        *&v783[0].__locale_ = 0u;
        v787 = 0u;
        v788 = 0u;
        v786 = 0u;
        v392 = v750[0];
        v393 = v753;
        if (v752)
        {
          if (v750[0])
          {
            v394 = 0;
            v395 = v775[1].data;
            v396 = v775[0].rowBytes;
            v397 = (v775[1].data - v775[0].rowBytes) >> 3;
            if (v397 <= 1)
            {
              v397 = 1;
            }

            v398 = v774;
            do
            {
              v786 = *&v783[0].__locale_;
              if (v395 != v396)
              {
                v399 = v396;
                v400 = v397;
                do
                {
                  v401 = *v399++;
                  *(&v786 + v401) = 0;
                  --v400;
                }

                while (v400);
              }

              v402 = 0;
              v403 = 0;
              v404 = &v786;
              v405 = 1;
              do
              {
                v406 = v405;
                v403 += *(&v780 + v402) * *v404;
                v404 = (&v786 + 8);
                v402 = 1;
                v405 = 0;
              }

              while ((v406 & 1) != 0);
              v393[v394] = v398[v403];
              for (i = 1; i != -1; --i)
              {
                v408 = (v783[i].__locale_ + 1);
                v783[i].__locale_ = v408;
                if (v408 != __dst[i])
                {
                  break;
                }

                v783[i].__locale_ = 0;
              }

              ++v394;
            }

            while (v394 != v392);
          }
        }

        else if (v750[0])
        {
          v494 = 0;
          v495 = v775[1].data;
          v496 = v775[0].rowBytes;
          v497 = (v775[1].data - v775[0].rowBytes) >> 3;
          if (v497 <= 1)
          {
            v497 = 1;
          }

          v498 = v747;
          v499 = v774;
          do
          {
            locale = v783[0].__locale_;
            v501 = v783[1].__locale_;
            v786 = *&v783[0].__locale_;
            if (v495 != v496)
            {
              v502 = v496;
              v503 = v497;
              do
              {
                v504 = *v502++;
                *(&v786 + v504) = 0;
                --v503;
              }

              while (v503);
            }

            v505 = 0;
            v506 = 0;
            v507 = &v786;
            v508 = 1;
            do
            {
              v509 = v508;
              v506 += *(&v780 + v505) * *v507;
              v507 = (&v786 + 8);
              v505 = 1;
              v508 = 0;
            }

            while ((v509 & 1) != 0);
            v393[v501 * *(&v498 + 1) + locale * v498] = v499[v506];
            for (j = 1; j != -1; --j)
            {
              v511 = (v783[j].__locale_ + 1);
              v783[j].__locale_ = v511;
              if (v511 != __dst[j])
              {
                break;
              }

              v783[j].__locale_ = 0;
            }

            ++v494;
          }

          while (v494 != v392);
        }
      }

      else
      {
        v781 = 0uLL;
        v782 = 0uLL;
        v779 = 0uLL;
        v780 = 0uLL;
        v777 = 0uLL;
        v778 = 0uLL;
        v776 = 0uLL;
        memset(v775, 0, sizeof(v775));
        v730 = 0uLL;
        v731 = 0uLL;
        *__dst = 0uLL;
        sub_2621D96E4(v775, &__p[1], &v765, __dst);
        v417 = 0;
        v418 = __dst;
        v419 = 1;
        do
        {
          v420 = *v418;
          v421 = __p[v417 + 1];
          if ((v419 & 1) == 0)
          {
            break;
          }

          v419 = 0;
          v418 = &__dst[1];
          v417 = 1;
        }

        while (v420 == v421);
        if (v420 != v421)
        {
          v422 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
          v423 = sub_2621D552C(v422, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
          sub_2621D552C(v423, " ", 1);
          v424 = MEMORY[0x277D82670];
          v425 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
          sub_2621D552C(v425, " ", 1);
          sub_2621D552C(v425, "broadcast_assign_stride", 23);
          std::ios_base::getloc((v425 + *(*v425 - 24)));
          v426 = std::locale::use_facet(v783, MEMORY[0x277D82680]);
          (v426->__vftable[2].~facet_0)(v426, 10);
          std::locale::~locale(v783);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D58EC("err", "broadcast assign issue");
          std::ios_base::getloc((v424 + *(*v424 - 24)));
          v427 = std::locale::use_facet(v783, MEMORY[0x277D82680]);
          (v427->__vftable[2].~facet_0)(v427, 10);
          std::locale::~locale(v783);
          std::ostream::put();
          std::ostream::flush();
        }

        v784 = 0u;
        v785 = 0u;
        *&v783[0].__locale_ = 0u;
        v787 = 0u;
        v788 = 0u;
        v786 = 0u;
        v428 = v750[0];
        v429 = v753;
        if (v752)
        {
          if (v750[0])
          {
            v430 = 0;
            v431 = v775[1].data;
            v432 = v775[0].rowBytes;
            v433 = (v775[1].data - v775[0].rowBytes) >> 3;
            if (v433 <= 1)
            {
              v433 = 1;
            }

            v434 = v772;
            v435 = v769;
            v436 = v770;
            v437 = v774;
            do
            {
              v786 = *&v783[0].__locale_;
              if (v431 != v432)
              {
                v438 = v432;
                v439 = v433;
                do
                {
                  v440 = *v438++;
                  *(&v786 + v440) = 0;
                  --v439;
                }

                while (v439);
              }

              v441 = 0;
              v442 = 0;
              v443 = &v786;
              v444 = 1;
              do
              {
                v445 = v444;
                v442 += *(&v780 + v441) * *v443;
                v443 = (&v786 + 8);
                v441 = 1;
                v444 = 0;
              }

              while ((v445 & 1) != 0);
              v446 = &v437[v442];
              if (!v434)
              {
                v446 = &v437[*(&v786 + 1) * v436 + v786 * v435];
              }

              v429[v430] = *v446;
              for (k = 1; k != -1; --k)
              {
                v448 = (v783[k].__locale_ + 1);
                v783[k].__locale_ = v448;
                if (v448 != __dst[k])
                {
                  break;
                }

                v783[k].__locale_ = 0;
              }

              ++v430;
            }

            while (v430 != v428);
          }
        }

        else if (v750[0])
        {
          v512 = 0;
          v513 = v775[1].data;
          v514 = v775[0].rowBytes;
          v515 = (v775[1].data - v775[0].rowBytes) >> 3;
          if (v515 <= 1)
          {
            v515 = 1;
          }

          v516 = v747;
          v517 = v772;
          v518 = v769;
          v519 = v770;
          v520 = v774;
          do
          {
            v521 = v256;
            v522 = v783[0].__locale_;
            v523 = v783[1].__locale_;
            v786 = *&v783[0].__locale_;
            if (v513 != v514)
            {
              v524 = v514;
              v525 = v515;
              do
              {
                v526 = *v524++;
                *(&v786 + v526) = 0;
                --v525;
              }

              while (v525);
            }

            v527 = 0;
            v528 = 0;
            v529 = &v786;
            v530 = 1;
            do
            {
              v531 = v530;
              v528 += *(&v780 + v527) * *v529;
              v529 = (&v786 + 8);
              v527 = 1;
              v530 = 0;
            }

            while ((v531 & 1) != 0);
            v532 = v522 * v516;
            v533 = v523 * *(&v516 + 1);
            v534 = &v520[v528];
            if (!v517)
            {
              v534 = &v520[*(&v786 + 1) * v519 + v786 * v518];
            }

            v429[v533 + v532] = *v534;
            v535 = 1;
            v256 = v521;
            do
            {
              v536 = (v783[v535].__locale_ + 1);
              v783[v535].__locale_ = v536;
              if (v536 != __dst[v535])
              {
                break;
              }

              v783[v535--].__locale_ = 0;
            }

            while (v535 != -1);
            ++v512;
          }

          while (v512 != v428);
        }
      }

      sub_2621C57C8(v775);
    }

    v768[0] = &unk_2874EEC38;
    if (v771)
    {
      sub_2621D1B78(v771);
    }

    v537 = *(v705 + 208);
    CVPixelBufferLockBaseAddress(v537, 1uLL);
    v538 = CVPixelBufferGetWidth(v537);
    v539 = CVPixelBufferGetHeight(v537);
    BaseAddress = CVPixelBufferGetBaseAddress(v537);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v537);
    v775[0].data = BaseAddress;
    v775[0].height = v539;
    v775[0].width = v538;
    v775[0].rowBytes = BytesPerRow;
    if (*(v705 + 192) == objc)
    {
      v542 = *(v705 + 176);
      if (*(v705 + 184) == v697 && v542)
      {
LABEL_442:
        vImageScale_Planar8(v775, (v705 + 176), 0, 0);
        CVPixelBufferUnlockBaseAddress(v537, 1uLL);
LABEL_443:
        __dst[0] = v697;
        v783[0].__locale_ = objc;
        sub_262223490(&v765, __dst, v783);
        sub_26225F1EC(v775, &v765, *(v705 + 176));
        v736 = *&v775[1].rowBytes;
        v737 = *&v775[2].height;
        v738 = *&v775[2].rowBytes;
        v739 = *&v775[3].height;
        v733 = *&v775[0].height;
        v734 = *&v775[0].rowBytes;
        v735 = *&v775[1].height;
        v543 = v775[3].rowBytes;
        v544 = v776;
        if (v776)
        {
          atomic_fetch_add_explicit((v776 + 8), 1uLL, memory_order_relaxed);
        }

        v545 = v741;
        v740 = v543;
        v741 = v544;
        if (v545)
        {
          sub_2621D1B78(v545);
        }

        v743 = v777;
        v742 = WORD4(v776);
        v775[0].data = &unk_2874EEC38;
        if (v776)
        {
          sub_2621D1B78(v776);
        }

        goto LABEL_450;
      }
    }

    else
    {
      v542 = *(v705 + 176);
    }

    if (v542)
    {
      free(v542);
    }

    if (MEMORY[0x266728070](v705 + 176, v697, objc, 8, 0))
    {
      goto LABEL_443;
    }

    goto LABEL_442;
  }

  v257 = CVPixelBufferGetBaseAddress(*(v178 + 208));
  __dst[0] = CVPixelBufferGetWidth(*(v178 + 208));
  v783[0].__locale_ = CVPixelBufferGetHeight(*(v178 + 208));
  sub_262223490(&v765, v783, __dst);
  sub_26225F1EC(v775, &v765, v257);
  v736 = *&v775[1].rowBytes;
  v737 = *&v775[2].height;
  v738 = *&v775[2].rowBytes;
  v739 = *&v775[3].height;
  v733 = *&v775[0].height;
  v734 = *&v775[0].rowBytes;
  v735 = *&v775[1].height;
  v258 = v775[3].rowBytes;
  v259 = v776;
  if (v776)
  {
    atomic_fetch_add_explicit((v776 + 8), 1uLL, memory_order_relaxed);
  }

  v260 = v741;
  v740 = v258;
  v741 = v259;
  if (v260)
  {
    sub_2621D1B78(v260);
  }

  v743 = v777;
  v742 = WORD4(v776);
  v775[0].data = &unk_2874EEC38;
  if (v776)
  {
    sub_2621D1B78(v776);
  }

  CVPixelBufferUnlockBaseAddress(*(v178 + 208), 1uLL);
LABEL_450:
  sub_2621D1AA0(v759, __p);
  sub_26222D2A8(&v761, &v732);
  v732 = v256;
  if (v741)
  {
    sub_2621D1B78(v741);
  }

  __p[0] = &unk_2874EEB10;
  if (v751)
  {
    sub_2621D1B78(v751);
  }

  v178 = v705;
  if (a3)
  {
    v546 = *(&v762 + 1) * v762;
    if (*(&v762 + 1) * v762)
    {
      v547 = 0;
      v548 = *(&v762 + 1) * v762;
      v549 = v764;
      do
      {
        v550 = *v549++;
        if (v550 == 31)
        {
          ++v547;
        }

        --v548;
      }

      while (v548);
      v756 = 0;
      v755 = 0;
      v754 = &v755;
      if (v547 >= 0x2711)
      {
        LOWORD(v775[0].data) = 7943;
        sub_2622E70F4(&v754, v775, &v775[0].data + 2);
        goto LABEL_465;
      }
    }

    else
    {
      v756 = 0;
      v755 = 0;
      v754 = &v755;
    }

    LOWORD(v775[0].data) = 1798;
    BYTE2(v775[0].data) = 31;
    sub_2622E70F4(&v754, v775, &v775[0].data + 3);
LABEL_465:
    if (v546)
    {
      if ((v546 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2621CBEB0();
    }

    sub_26225F1EC(&v765, &v762, 0);
    sub_2622CEEEC(__p, &v765);
  }

  sub_2622CFEEC(&v715);
  sub_26225CE9C(v719);
  v551 = v716;
  v718 = v715;
  v719 = v716;
  v720 = v717;
  if (v717)
  {
    v716[2] = &v719;
    v715 = &v716;
    v716 = 0;
    v717 = 0;
    v551 = 0;
  }

  else
  {
    v718 = &v719;
  }

  sub_26225CE9C(v551);
  if (v707 <= 1u)
  {
    CVPixelBufferUnlockBaseAddress(*(v705 + 208), 1uLL);
  }

  v761 = &unk_2874EEC38;
  if (v763)
  {
    sub_2621D1B78(v763);
  }

  v759[0].columns[0].i64[0] = &unk_2874EEB10;
  if (v760)
  {
    sub_2621D1B78(v760);
  }

LABEL_478:
  if (v707 <= 1u)
  {
    v552 = *(v178 + 160);
    if (!v552)
    {
      goto LABEL_509;
    }

    while (*(v552 + 32))
    {
      v552 = *v552;
      if (!v552)
      {
        goto LABEL_508;
      }
    }

    v553 = v718;
    if (v718 != &v719)
    {
      do
      {
        if (*(v553 + 95) < 0)
        {
          sub_2621CC810(v775, v553[9], v553[10]);
        }

        else
        {
          *&v775[0].data = *(v553 + 9);
          v775[0].width = v553[11];
        }

        v554 = *(v553 + 24);
        objd = v553[14];
        LOBYTE(v765) = 0;
        v759[0].columns[0].i64[0] = &v765;
        v555 = sub_26225E6DC((v178 + 152), 0, v759);
        v556 = sub_26225E9A4((v555 + 5), v775);
        LOBYTE(v765) = 0;
        v759[0].columns[0].i64[0] = &v765;
        if (sub_26225E6DC((v178 + 152), 0, v759) + 6 != v556)
        {
          if (v554 > 1)
          {
            v565 = *(v556 + 260);
            if (v554 == 2 && (v566 = *(v556 + 256), objd.f32[0] <= v566))
            {
              *(v553 + 28) = v566;
            }

            else if (v554 == 3 && objd.f32[0] >= v565)
            {
              *(v553 + 28) = v565;
            }
          }

          else
          {
            v557 = *(v556 + 264);
            v558 = *(v556 + 272);
            v559 = vsub_f32(objd, v557);
            v560 = vmul_f32(v559, v559);
            v561 = vsub_f32(objd, v558);
            v562 = vmul_f32(v561, v561);
            v563 = vsqrt_f32(vadd_f32(vzip1_s32(v560, v562), vzip2_s32(v560, v562)));
            if (v563.f32[0] >= v563.f32[1])
            {
              v567 = vsub_f32(v558, v557);
              if (v563.f32[0] > sqrtf(vaddv_f32(vmul_f32(v567, v567))))
              {
                v553[14] = v558;
              }
            }

            else
            {
              v564 = vsub_f32(v557, v558);
              if (v563.f32[1] > sqrtf(vaddv_f32(vmul_f32(v564, v564))))
              {
                v553[14] = v557;
              }
            }
          }
        }

        if (SHIBYTE(v775[0].width) < 0)
        {
          operator delete(v775[0].data);
        }

        v568 = v553[1];
        if (v568)
        {
          do
          {
            v569 = v568;
            v568 = *v568;
          }

          while (v568);
        }

        else
        {
          do
          {
            v569 = v553[2];
            v160 = *v569 == v553;
            v553 = v569;
          }

          while (!v160);
        }

        v553 = v569;
      }

      while (v569 != &v719);
    }
  }

LABEL_508:
  if (!a3)
  {
    goto LABEL_613;
  }

LABEL_509:
  LOBYTE(__p[0]) = a3;
  v775[0].data = __p;
  v570 = sub_26225E6DC((v178 + 128), a3, v775);
  v571 = v570[5];
  v759[0].columns[1].i64[0] = 0;
  v759[0].columns[0].i64[1] = 0;
  v759[0].columns[0].i64[0] = &v759[0].columns[0].i64[1];
  v572 = v570 + 6;
  if (v571 != (v570 + 6))
  {
    do
    {
      if (*(v571 + 71) < 0)
      {
        sub_2621CC810(v775, v571[6], v571[7]);
      }

      else
      {
        *&v775[0].data = *(v571 + 3);
        v775[0].width = v571[8];
      }

      LODWORD(v775[0].rowBytes) = *(v571 + 24);
      *&v765 = v775;
      v573 = sub_26225ECD4(v759, v775, &v765);
      *(v573 + 64) = v571[5];
      std::string::operator=((v573 + 72), v571 + 2);
      std::string::operator=((v573 + 96), v571 + 3);
      v574 = *(v571 + 6);
      *(v573 + 136) = v571[14];
      *(v573 + 120) = v574;
      if (SHIBYTE(v775[0].width) < 0)
      {
        operator delete(v775[0].data);
      }

      v575 = v571[1];
      if (v575)
      {
        do
        {
          v576 = v575;
          v575 = *v575;
        }

        while (v575);
      }

      else
      {
        do
        {
          v576 = v571[2];
          v160 = *v576 == v571;
          v571 = v576;
        }

        while (!v160);
      }

      v571 = v576;
    }

    while (v576 != v572);
  }

  v577 = v718;
  if (v718 == &v719)
  {
    goto LABEL_569;
  }

  do
  {
    v579 = *(v577 + 26);
    v578 = *(v577 + 27);
    v580 = *(v577 + 25);
    if (*(v577 + 71) < 0)
    {
      sub_2621CC810(v775, v577[6], v577[7]);
    }

    else
    {
      *&v775[0].data = *(v577 + 3);
      v775[0].width = v577[8];
    }

    v581 = *(v577 + 24);
    LODWORD(v775[0].rowBytes) = v581;
    v582 = v759[0].columns[0].i64[1];
    if (!v759[0].columns[0].i64[1])
    {
      goto LABEL_540;
    }

    while (1)
    {
      v583 = sub_26225E3EC(v775, (v582 + 32));
      if (v583 || ((v584 = *(v582 + 56), v581 < v584) ? (v583 = -1) : (v583 = 1), v581 != v584))
      {
        if (v583 < 0)
        {
          goto LABEL_539;
        }
      }

      v585 = sub_26225E3EC((v582 + 32), v775);
      if (!v585)
      {
        v586 = *(v582 + 56);
        v585 = v586 < v581 ? -1 : 1;
        if (v586 == v581)
        {
          break;
        }
      }

      if ((v585 & 0x80) == 0)
      {
        break;
      }

      v582 += 8;
LABEL_539:
      v582 = *v582;
      if (!v582)
      {
        goto LABEL_540;
      }
    }

    v591 = *sub_26225EE54(v759, &v765, v775);
    if (!v591)
    {
      sub_2621C84A8("map::at:  key not found");
    }

    v592 = v591[33];
    v593 = v591[31];
    v594 = v578 - v592;
    if ((v580 - v593) > 0.05 || v594 > 5.0 || (v579 - v591[32]) > 100.0)
    {
      *&v765 = v775;
      v597 = sub_26225ECD4(v759, v775, &v765);
      *(v597 + 64) = v577[5];
      std::string::operator=((v597 + 72), v577 + 2);
      std::string::operator=((v597 + 96), v577 + 3);
      v598 = *(v577 + 6);
      *(v597 + 136) = v577[14];
      *(v597 + 120) = v598;
    }

    v599 = fabsf(v594);
    if (fabsf(v580 - v593) < 0.05 && v599 > 5.0)
    {
      *&v765 = v775;
      v601 = sub_26225ECD4(v759, v775, &v765);
      *(v601 + 64) = v577[5];
      std::string::operator=((v601 + 72), v577 + 2);
      std::string::operator=((v601 + 96), v577 + 3);
      v602 = *(v577 + 6);
      *(v601 + 136) = v577[14];
      *(v601 + 120) = v602;
    }

    if (v578 > 70.0 && v592 > 70.0 && v580 > 0.9 && v593 > 0.9)
    {
LABEL_540:
      *&v765 = v775;
      v587 = sub_26225ECD4(v759, v775, &v765);
      *(v587 + 64) = v577[5];
      std::string::operator=((v587 + 72), v577 + 2);
      std::string::operator=((v587 + 96), v577 + 3);
      v588 = *(v577 + 6);
      *(v587 + 136) = v577[14];
      *(v587 + 120) = v588;
    }

    if (SHIBYTE(v775[0].width) < 0)
    {
      operator delete(v775[0].data);
    }

    v589 = v577[1];
    if (v589)
    {
      do
      {
        v590 = v589;
        v589 = *v589;
      }

      while (v589);
    }

    else
    {
      do
      {
        v590 = v577[2];
        v160 = *v590 == v577;
        v577 = v590;
      }

      while (!v160);
    }

    v577 = v590;
  }

  while (v590 != &v719);
LABEL_569:
  sub_26225CE9C(v570[6]);
  v570[6] = 0;
  v570[7] = 0;
  v570[5] = v572;
  v603 = v759[0].columns[0].i64[0];
  v178 = v705;
  if (v759[0].columns[0].i64[0] != &v759[0].columns[0].u32[2])
  {
    v604 = 0;
    do
    {
      *&v765 = v604 | (*(v603 + 120) << 32);
      v775[0].data = &v765;
      v605 = sub_26225E854(v570 + 5, v604, DWORD1(v765), v775);
      *(v605 + 40) = *(v603 + 64);
      std::string::operator=((v605 + 48), (v603 + 72));
      std::string::operator=((v605 + 72), (v603 + 96));
      v606 = *(v603 + 120);
      *(v605 + 112) = *(v603 + 136);
      *(v605 + 96) = v606;
      v607 = *(v603 + 8);
      if (v607)
      {
        do
        {
          v608 = v607;
          v607 = v607->columns[0].i64[0];
        }

        while (v607);
      }

      else
      {
        do
        {
          v608 = *(v603 + 16);
          v160 = v608->columns[0].i64[0] == v603;
          v603 = v608;
        }

        while (!v160);
      }

      ++v604;
      v603 = v608;
    }

    while (v608 != &v759[0].columns[0].u32[2]);
  }

  sub_26225EDD8(v759[0].columns[0].i64[1]);
LABEL_578:
  v775[0].data = &v728;
  v609 = sub_26225E6DC((v178 + 128), v728, v775);
  if (v609[7])
  {
    v610 = v609[5];
    v611 = v609 + 6;
    if (v610 != (v609 + 6))
    {
      while (2)
      {
        if (!sub_26225E7AC(v722[0], v610 + 6))
        {
          goto LABEL_590;
        }

        v775[0].data = v610 + 6;
        v612 = sub_26225D91C(&v721, v610 + 6, v775);
        v613 = *(v610 + 24);
        v614 = v610[14];
        *&v615 = v612[34];
        v616 = v612[32];
        if (!v613)
        {
          *&v617 = v610[14];
          goto LABEL_589;
        }

        *&v617 = v612[33];
        if (v613 == 2)
        {
          v614.i32[1] = HIDWORD(v612[32]);
        }

        else
        {
          if (v613 == 1)
          {
            *&v615 = v610[14];
LABEL_589:
            *&v618 = v617;
            *(&v618 + 1) = v616;
            *&v619 = v615;
            *(&v619 + 1) = v616;
            *&v775[0].data = v618;
            *&v775[0].width = v619;
            *(&v615 + 1) = vdup_lane_s32(v616, 1);
            *(&v617 + 1) = *(&v615 + 1);
            *&v775[1].data = v615;
            *&v775[1].width = v617;
            sub_2622E82B0((v612 + 8), v775);
            if (!a3)
            {
              v775[0].data = v610 + 6;
              v622 = sub_26225D91C(&v721, v610 + 6, v775);
              v623 = v622[74];
              v624 = *v623;
              v625 = *(v623 + 8);
              if (*v623 != v625)
              {
                do
                {
                  if (*v624 == 1)
                  {
                    v775[0].data = v624 + 2;
                    v630 = sub_26225D91C(&v721, v624 + 1, v775);
                    v631 = *(v630 + 6);
                    *&v775[0].data = *(v630 + 5);
                    *&v775[0].width = v631;
                    v632 = *(v630 + 8);
                    *&v775[1].data = *(v630 + 7);
                    *&v775[1].width = v632;
                    v775[0].width = v622[33];
                    v775[1].data = v775[0].width;
                    *&v765 = v624 + 2;
                    v633 = sub_26225D91C(&v721, v624 + 1, &v765);
                    sub_2622E82B0((v633 + 8), v775);
                  }

                  else if (!*v624)
                  {
                    v775[0].data = v624 + 2;
                    v626 = sub_26225D91C(&v721, v624 + 1, v775);
                    v627 = *(v626 + 6);
                    *&v775[0].data = *(v626 + 5);
                    *&v775[0].width = v627;
                    v628 = *(v626 + 8);
                    *&v775[1].data = *(v626 + 7);
                    *&v775[1].width = v628;
                    v775[0].data = v622[33];
                    v775[1].width = v775[0].data;
                    *&v765 = v624 + 2;
                    v629 = sub_26225D91C(&v721, v624 + 1, &v765);
                    sub_2622E82B0((v629 + 8), v775);
                  }

                  v624 += 8;
                }

                while (v624 != v625);
                v623 = v622[74];
              }

              v634 = *(v623 + 24);
              v635 = *(v623 + 32);
              while (v634 != v635)
              {
                if (*v634 == 1)
                {
                  v775[0].data = v634 + 2;
                  v640 = sub_26225D91C(&v721, v634 + 1, v775);
                  v641 = *(v640 + 6);
                  *&v775[0].data = *(v640 + 5);
                  *&v775[0].width = v641;
                  v642 = *(v640 + 8);
                  *&v775[1].data = *(v640 + 7);
                  *&v775[1].width = v642;
                  v775[0].width = v622[34];
                  v775[1].data = v775[0].width;
                  *&v765 = v634 + 2;
                  v643 = sub_26225D91C(&v721, v634 + 1, &v765);
                  sub_2622E82B0((v643 + 8), v775);
                }

                else if (!*v634)
                {
                  v775[0].data = v634 + 2;
                  v636 = sub_26225D91C(&v721, v634 + 1, v775);
                  v637 = *(v636 + 6);
                  *&v775[0].data = *(v636 + 5);
                  *&v775[0].width = v637;
                  v638 = *(v636 + 8);
                  *&v775[1].data = *(v636 + 7);
                  *&v775[1].width = v638;
                  v775[0].data = v622[34];
                  v775[1].width = v775[0].data;
                  *&v765 = v634 + 2;
                  v639 = sub_26225D91C(&v721, v634 + 1, &v765);
                  sub_2622E82B0((v639 + 8), v775);
                }

                v634 += 8;
              }
            }

LABEL_590:
            v620 = v610[1];
            if (v620)
            {
              do
              {
                v621 = v620;
                v620 = *v620;
              }

              while (v620);
            }

            else
            {
              do
              {
                v621 = v610[2];
                v160 = *v621 == v610;
                v610 = v621;
              }

              while (!v160);
            }

            v610 = v621;
            if (v621 == v611)
            {
              goto LABEL_611;
            }

            continue;
          }

          v614 = vdup_lane_s32(v614, 0);
          v614.i32[0] = v612[32];
        }

        break;
      }

      v616 = v614;
      goto LABEL_589;
    }
  }

LABEL_611:
  sub_26225EF98(v759, &v721);
  v775[0].data = &v728;
  v644 = sub_26225E6DC((v178 + 152), v728, v775);
  v645 = (v644 + 6);
  sub_26225CF48(v644[6]);
  v646 = v759[0].columns[0].i64[1];
  v644[5] = v759[0].columns[0].i64[0];
  v644[6] = v646;
  v647 = v759[0].columns[1].i64[0];
  v644[7] = v759[0].columns[1].i64[0];
  if (v647)
  {
    v646[2] = v645;
    v759[0].columns[0].i64[0] = &v759[0].columns[0].i64[1];
    v759[0].columns[0].i64[1] = 0;
    v759[0].columns[1].i64[0] = 0;
    v646 = 0;
  }

  else
  {
    v644[5] = v645;
  }

  sub_26225CF48(v646);
  v775[0].data = &v728;
  v650 = sub_26225E6DC((v178 + 152), v728, v775);
  sub_26225EF98(a1, v650 + 5);
  sub_26225CE9C(v719);
  sub_26225CF48(v722[0]);
}

void sub_2622646CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41)
{
  sub_26225CE9C(a38);
  sub_26225CF48(a41);

  _Unwind_Resume(a1);
}

void *sub_262264EB4(void *a1)
{
  a1[19] = &unk_2874EEC38;
  v2 = a1[35];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  *a1 = &unk_2874EEB10;
  v3 = a1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

id sub_262264F2C(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = a3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v52, v60, 16);
  if (v8)
  {
    v9 = *v53;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v12 = objc_msgSend_parentIdentifier(v11, v6, v7, v48.i64[0]);
        v15 = v12;
        if (v12)
        {
          v16 = objc_msgSend_UUIDString(v12, v13, v14);
          v17 = v16;
          v20 = objc_msgSend_UTF8String(v16, v18, v19);
          sub_2621D0F64(__p, v20);

          objc_msgSend_quad(v11, v21, v22);
          v49 = v23;
          v48 = v24;
          v25 = sub_26225E9A4(a2, __p);
          if (a2 + 8 != v25)
          {
            sub_26225EA24(v57, v25 + 64);
            v28 = vsub_f32(v59, v58);
            v29 = vaddv_f32(vmul_f32(vsub_f32(*v49.i8, v58), v28));
            v30 = vaddv_f32(vmul_f32(v28, v28));
            if (v30 < 0.000001)
            {
              v30 = 0.000001;
            }

            *&v31 = vmla_n_f32(v58, v28, v29 / v30);
            v32 = vsub_f32(*&v31, v58);
            v33 = vsub_f32(*&v31, v59);
            if (vaddv_f32(vmul_f32(v32, v33)) > 0.00001)
            {
              v34 = vmul_f32(v32, v32);
              v35 = vmul_f32(v33, v33);
              v36 = vsqrt_f32(vadd_f32(vzip1_s32(v34, v35), vzip2_s32(v34, v35)));
              *&v31 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v36, 1), v36)), 0), v59, v58);
            }

            *&v37 = vmla_n_f32(v58, v28, vaddv_f32(vmul_f32(vsub_f32(*v48.i8, v58), v28)) / v30);
            v38 = vsub_f32(*&v37, v58);
            v39 = vsub_f32(*&v37, v59);
            if (vaddv_f32(vmul_f32(v38, v39)) > 0.00001)
            {
              v40 = vmul_f32(v38, v38);
              v41 = vmul_f32(v39, v39);
              v42 = vsqrt_f32(vadd_f32(vzip1_s32(v40, v41), vzip2_s32(v40, v41)));
              *&v37 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v42, 1), v42)), 0), v59, v58);
            }

            v43 = vsub_f32(*v49.i8, *&v31);
            if (sqrtf(vaddv_f32(vmul_f32(v43, v43))) > 0.000001 || (v44 = vsub_f32(*v48.i8, *&v37), sqrtf(vaddv_f32(vmul_f32(v44, v44))) > 0.000001))
            {
              *&v45 = v31;
              *(&v45 + 1) = vextq_s8(v49, v49, 8uLL).u64[0];
              *&v46 = v37;
              *(&v46 + 1) = *(&v45 + 1);
              *(&v37 + 1) = vextq_s8(v48, v48, 8uLL).u64[0];
              *(&v31 + 1) = *(&v37 + 1);
              src[0] = v45;
              src[1] = v46;
              src[2] = v37;
              src[3] = v31;
              if (v11)
              {
                objc_copyStruct(v11 + 272, src, 64, 1, 0);
              }

              if (objc_msgSend_individualUpdate(v11, v26, v27, v48.i64[0]) == 2 && v11)
              {
                v11[105] = 1;
              }
            }

            sub_26225CFEC(v57);
          }

          if (v51 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v52, v60, 16);
    }

    while (v8);
  }

  return v4;
}

void sub_2622652C4(uint64_t a1, float32x4_t **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = 126 - 2 * __clz((v4 - v3) >> 4);
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  sub_262265680(v3, v4, v6, 1);
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = v9;
      if (v9 >= 0x11)
      {
        do
        {
          v11 = *(v10 - 32);
          v12 = vsubq_f32(*(v10 - 16), v11).u64[0];
          v11.i64[0] = vsubq_f32(*v7, v11).u64[0];
          if ((vmuls_lane_f32(-v11.f32[0], v12, 1) + (v12.f32[0] * v11.f32[1])) > 0.0)
          {
            break;
          }

          v9 -= 16;
          v10 -= 16;
        }

        while (v10 > 0x10);
      }

      if (!v9 || (v13 = vmovn_s32(vmvnq_s8(vceqq_f32(*(v10 - 16), *v7))), v13.i8[0] & 1 | v13.i8[2] & 1))
      {
        v14 = v9;
        if (((v9 >> 4) + 1) >> 60)
        {
          sub_2621CBEB0();
        }

        if (v9 >> 4 != -1)
        {
          sub_2621CBF10((v9 >> 4) + 1);
        }

        v15 = (16 * (v9 >> 4));
        *v15 = *v7;
        v9 = &v15[1];
        memcpy(0, 0, v14);
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = *a2;
    v8 = a2[1];
  }

  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v8 == v7)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      --v8;
      v17 = v16;
      if (v16 >= 0x11)
      {
        do
        {
          v18 = *(v17 - 32);
          v19 = vsubq_f32(*(v17 - 16), v18).u64[0];
          v18.i64[0] = vsubq_f32(*v8, v18).u64[0];
          if ((vmuls_lane_f32(-v18.f32[0], v19, 1) + (v19.f32[0] * v18.f32[1])) > 0.0)
          {
            break;
          }

          v16 -= 16;
          v17 -= 16;
        }

        while (v17 > 0x10);
      }

      if (v16)
      {
        v20 = vmovn_s32(vmvnq_s8(vceqq_f32(*(v17 - 16), *v8)));
        if (!(v20.i8[0] & 1 | v20.i8[2] & 1))
        {
          continue;
        }
      }

      v21 = v16;
      v22 = v16 >> 4;
      if (((v16 >> 4) + 1) >> 60)
      {
        sub_2621CBEB0();
      }

      if (v16 >> 4 != -1)
      {
        sub_2621CBF10((v16 >> 4) + 1);
      }

      *(16 * v22) = *v8;
      v16 = 16 * v22 + 16;
      memcpy(0, 0, v21);
    }

    while (v8 != v7);
  }

  if (v16 >= 0x11)
  {
    sub_2622669D0(a1, *(a1 + 8), 0x10, (v16 - 16), (v16 - 32) >> 4);
  }
}

void sub_262265634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  v12 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262265680(uint64_t result, float32x4_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v126 = vmovn_s32(vcgtq_f32(*v11, *v8));
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v8, *v11))).u8[0])
      {
        if ((v126.i8[0] & 1) == 0)
        {
          return result;
        }
      }

      else if ((v126.i8[2] & 1) == 0)
      {
        return result;
      }

      v191 = *v11;
      goto LABEL_370;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v139 = v11 + 1;
      v141 = v11 == a2 || v139 == a2;
      if (a4)
      {
        if (v141)
        {
          return result;
        }

        v142 = 0;
        v143 = v11;
        while (1)
        {
          v144 = v143;
          v143 = v139;
          v145 = v144[1];
          v146 = vmovn_s32(vmvnq_s8(vceqq_f32(v145, *v144))).u8[0];
          v147 = vmovn_s32(vcgtq_f32(*v144, v145));
          if (v146)
          {
            if ((v147.i8[0] & 1) == 0)
            {
              goto LABEL_242;
            }
          }

          else if ((v147.i8[2] & 1) == 0)
          {
            goto LABEL_242;
          }

          v148 = v144[1];
          v144[1] = *v144;
          v149 = v11;
          if (v144 == v11)
          {
            goto LABEL_241;
          }

          v150 = v142;
          while (1)
          {
            v151 = *(&v11[-1] + v150);
            if (v148.f32[0] != *&v151)
            {
              if (v148.f32[0] >= *&v151)
              {
                v149 = (v11 + v150);
                goto LABEL_241;
              }

              goto LABEL_238;
            }

            if (v148.f32[1] >= *(&v151 + 1))
            {
              break;
            }

LABEL_238:
            --v144;
            *(v11 + v150) = *(v11 + v150 - 16);
            v150 -= 16;
            if (!v150)
            {
              v149 = v11;
              goto LABEL_241;
            }
          }

          v149 = v144;
LABEL_241:
          *v149 = v148;
LABEL_242:
          v139 = v143 + 1;
          v142 += 16;
          if (&v143[1] == a2)
          {
            return result;
          }
        }
      }

      if (v141)
      {
        return result;
      }

      while (2)
      {
        v196 = v7;
        v7 = v139;
        v197 = v196[1];
        v198 = vmovn_s32(vmvnq_s8(vceqq_f32(v197, *v196))).u8[0];
        v199 = vmovn_s32(vcgtq_f32(*v196, v197));
        if (v198)
        {
          if ((v199.i8[0] & 1) == 0)
          {
LABEL_326:
            ++v139;
            if ((v7 + 16) == a2)
            {
              return result;
            }

            continue;
          }
        }

        else if ((v199.i8[2] & 1) == 0)
        {
          goto LABEL_326;
        }

        break;
      }

      v200 = *v139;
      LODWORD(v201) = HIDWORD(v139->i64[0]);
      do
      {
        while (1)
        {
          v202 = v196;
          v196[1] = *v196;
          v203 = v196[-1];
          --v196;
          v204 = v203.f32[1];
          v205 = v200.f32[0] < v203.f32[0];
          if (v200.f32[0] == v203.f32[0])
          {
            break;
          }

          if (!v205)
          {
            goto LABEL_325;
          }
        }
      }

      while (v201 < v204);
LABEL_325:
      *v202 = v200;
      goto LABEL_326;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v152 = (v12 - 2) >> 1;
      v153 = v152;
      while (2)
      {
        v154 = v153;
        if (v152 < v153)
        {
          goto LABEL_270;
        }

        v155 = (2 * v153) | 1;
        v156 = &v11[v155];
        if (2 * v154 + 2 >= v12)
        {
          goto LABEL_253;
        }

        v157 = v156[1];
        v158 = vmovn_s32(vmvnq_s8(vceqq_f32(*v156, v157))).u8[0];
        v159 = vmovn_s32(vcgtq_f32(v157, *v156)).u32[0];
        if (v158)
        {
          if ((v159 & 1) == 0)
          {
LABEL_253:
            v160 = v11[v154];
            v161 = vmovn_s32(vcgtq_f32(v160, *v156)).u32[0];
            if (vmovn_s32(vmvnq_s8(vceqq_f32(*v156, v160))).u8[0])
            {
              if (v161)
              {
                goto LABEL_270;
              }
            }

            else if ((v161 & 0x10000) != 0)
            {
              goto LABEL_270;
            }

            v162 = v11[v154];
            v11[v154] = *v156;
            if (v152 < v155)
            {
LABEL_258:
              v163 = v156;
LABEL_269:
              *v163 = v162;
LABEL_270:
              v153 = v154 - 1;
              if (v154)
              {
                continue;
              }

              while (2)
              {
                v170 = 0;
                v171 = *v11;
                v172 = v11;
LABEL_272:
                v173 = v172;
                v174 = &v172[v170];
                v172 = v174 + 1;
                v175 = 2 * v170;
                v170 = (2 * v170) | 1;
                v176 = v175 + 2;
                if (v176 < v12)
                {
                  v178 = v174[2];
                  v177 = v174 + 2;
                  v179 = v177[-1];
                  v180 = vmovn_s32(vcgtq_f32(v178, v179)).u32[0];
                  if (vmovn_s32(vmvnq_s8(vceqq_f32(v179, v178))).u8[0])
                  {
                    if ((v180 & 1) == 0)
                    {
                      goto LABEL_278;
                    }
                  }

                  else if ((v180 & 0x10000) == 0)
                  {
                    goto LABEL_278;
                  }

                  v172 = v177;
                  v170 = v176;
                }

LABEL_278:
                *v173 = *v172;
                if (v170 > ((v12 - 2) >> 1))
                {
                  if (v172 == --a2)
                  {
                    goto LABEL_292;
                  }

                  *v172 = *a2;
                  *a2 = v171;
                  v181 = (v172 - v11 + 16) >> 4;
                  v182 = v181 - 2;
                  if (v181 < 2)
                  {
                    goto LABEL_293;
                  }

                  v183 = v182 >> 1;
                  v184 = &v11[v182 >> 1];
                  v185 = vmovn_s32(vcgtq_f32(*v172, *v184));
                  if ((vmovn_s32(vmvnq_s8(vceqq_f32(*v184, *v172))).u8[0] & 1) == 0)
                  {
                    if ((v185.i8[2] & 1) == 0)
                    {
                      goto LABEL_293;
                    }

LABEL_285:
                    v171 = *v172;
                    *v172 = *v184;
                    if (v182 >= 2)
                    {
                      while (1)
                      {
                        v186 = v183 - 1;
                        v183 = (v183 - 1) >> 1;
                        v172 = &v11[v183];
                        v187 = COERCE_FLOAT(*v172) < v171.f32[0];
                        if (COERCE_FLOAT(*v172) == v171.f32[0])
                        {
                          v187 = COERCE_FLOAT(HIDWORD(v172->i64[0])) < v171.f32[1];
                        }

                        if (!v187)
                        {
                          break;
                        }

                        *v184 = *v172;
                        v184 = &v11[v183];
                        if (v186 <= 1)
                        {
                          goto LABEL_292;
                        }
                      }
                    }

                    v172 = v184;
LABEL_292:
                    *v172 = v171;
                    goto LABEL_293;
                  }

                  if (v185.i8[0])
                  {
                    goto LABEL_285;
                  }

LABEL_293:
                  if (v12-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_272;
              }
            }

            while (2)
            {
              v164 = 2 * v155;
              v155 = (2 * v155) | 1;
              v163 = &v11[v155];
              v165 = v164 + 2;
              if (v165 < v12)
              {
                v166 = v163[1];
                v167 = vmovn_s32(vmvnq_s8(vceqq_f32(*v163, v166))).u8[0];
                v168 = vmovn_s32(vcgtq_f32(v166, *v163)).u32[0];
                if (v167)
                {
                  if ((v168 & 1) == 0)
                  {
                    goto LABEL_265;
                  }

LABEL_264:
                  ++v163;
                  v155 = v165;
                }

                else if ((v168 & 0x10000) != 0)
                {
                  goto LABEL_264;
                }
              }

LABEL_265:
              v169 = COERCE_FLOAT(*v163) < v162.f32[0];
              if (COERCE_FLOAT(*v163) == v162.f32[0])
              {
                v169 = COERCE_FLOAT(HIDWORD(v163->i64[0])) < v162.f32[1];
              }

              if (v169)
              {
                goto LABEL_258;
              }

              *v156 = *v163;
              v156 = v163;
              if (v152 < v155)
              {
                goto LABEL_269;
              }

              continue;
            }
          }
        }

        else if ((v159 & 0x10000) == 0)
        {
          goto LABEL_253;
        }

        break;
      }

      ++v156;
      v155 = 2 * v154 + 2;
      goto LABEL_253;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    if (v12 >= 0x81)
    {
      v15 = *v13;
      v16 = vmovn_s32(vcgtq_f32(*v11, *v13)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v13, *v11))).u8[0])
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_24:
        v23 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v15))).u8[0];
        v24 = vmovn_s32(vcgtq_f32(v15, *v8)).u32[0];
        if (v23)
        {
          v25 = v24;
        }

        else
        {
          v25 = BYTE2(v24);
        }

        v35 = a2 - 1;
        if ((v25 & 1) == 0)
        {
          v36 = *v11;
          *v11 = *v13;
          *v13 = v36;
          v37 = COERCE_FLOAT(*v8) < v36.f32[0];
          if (COERCE_FLOAT(*v8) == v36.f32[0])
          {
            v37 = COERCE_FLOAT(HIDWORD(v8->i64[0])) < v36.f32[1];
          }

          v35 = a2 - 1;
          v38 = v13;
          if (!v37)
          {
            goto LABEL_51;
          }

LABEL_50:
          *v38 = *v35;
          *v35 = v36;
          goto LABEL_51;
        }

LABEL_49:
        v36 = *v11;
        v38 = v11;
        goto LABEL_50;
      }

      if ((v16 & 0x10000) != 0)
      {
        goto LABEL_24;
      }

LABEL_15:
      v17 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v15))).u8[0];
      v18 = vmovn_s32(vcgtq_f32(v15, *v8)).u32[0];
      if (v17)
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if ((v18 & 0x10000) == 0)
      {
        goto LABEL_51;
      }

      v29 = *v13;
      *v13 = *v8;
      *v8 = v29;
      v30 = vmovn_s32(vcgtq_f32(*v11, *v13)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v13, *v11))).u8[0])
      {
        v31 = v30;
      }

      else
      {
        v31 = BYTE2(v30);
      }

      v35 = &v11[v12 >> 1];
      if (v31)
      {
        goto LABEL_49;
      }

LABEL_51:
      v42 = v11 + 1;
      v43 = v11[1];
      v44 = v13 - 1;
      v45 = v13[-1];
      v46 = vmovn_s32(vmvnq_s8(vceqq_f32(v45, v43))).u8[0];
      v47 = vmovn_s32(vcgtq_f32(v43, v45)).u32[0];
      if (v46)
      {
        if ((v47 & 1) == 0)
        {
          goto LABEL_53;
        }

LABEL_57:
        v50 = vmovn_s32(vmvnq_s8(vceqq_f32(*v9, v45))).u8[0];
        v51 = vmovn_s32(vcgtq_f32(v45, *v9)).u32[0];
        if (v50)
        {
          v52 = v51;
        }

        else
        {
          v52 = BYTE2(v51);
        }

        v56 = a2 - 2;
        if ((v52 & 1) == 0)
        {
          v57 = *v42;
          *v42 = *v44;
          *v44 = v57;
          v58 = COERCE_FLOAT(*v9) < v57.f32[0];
          if (COERCE_FLOAT(*v9) == v57.f32[0])
          {
            v58 = COERCE_FLOAT(HIDWORD(v9->i64[0])) < v57.f32[1];
          }

          v56 = a2 - 2;
          v42 = v13 - 1;
          if (!v58)
          {
            goto LABEL_76;
          }

LABEL_75:
          *v42 = *v56;
          *v56 = v57;
          goto LABEL_76;
        }

LABEL_74:
        v57 = *v42;
        goto LABEL_75;
      }

      if ((v47 & 0x10000) != 0)
      {
        goto LABEL_57;
      }

LABEL_53:
      v48 = vmovn_s32(vmvnq_s8(vceqq_f32(*v9, v45))).u8[0];
      v49 = vmovn_s32(vcgtq_f32(v45, *v9)).u32[0];
      if (v48)
      {
        if ((v49 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      else if ((v49 & 0x10000) == 0)
      {
        goto LABEL_76;
      }

      v53 = *v44;
      *v44 = *v9;
      *v9 = v53;
      v54 = vmovn_s32(vcgtq_f32(*v42, *v44)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v44, *v42))).u8[0])
      {
        v55 = v54;
      }

      else
      {
        v55 = BYTE2(v54);
      }

      v56 = v13 - 1;
      if (v55)
      {
        goto LABEL_74;
      }

LABEL_76:
      v59 = v11 + 2;
      v60 = v11[2];
      v62 = v13[1];
      v61 = v13 + 1;
      v63 = v62;
      v64 = vmovn_s32(vmvnq_s8(vceqq_f32(v62, v60))).u8[0];
      v65 = vmovn_s32(vcgtq_f32(v60, v62)).u32[0];
      if (v64)
      {
        if ((v65 & 1) == 0)
        {
          goto LABEL_78;
        }

LABEL_82:
        v68 = vmovn_s32(vmvnq_s8(vceqq_f32(*v10, v63))).u8[0];
        v69 = vmovn_s32(vcgtq_f32(v63, *v10)).u32[0];
        if (v68)
        {
          v70 = v69;
        }

        else
        {
          v70 = BYTE2(v69);
        }

        v74 = a2 - 3;
        if ((v70 & 1) == 0)
        {
          v75 = *v59;
          *v59 = *v61;
          *v61 = v75;
          v76 = COERCE_FLOAT(*v10) < v75.f32[0];
          if (COERCE_FLOAT(*v10) == v75.f32[0])
          {
            v76 = COERCE_FLOAT(HIDWORD(v10->i64[0])) < v75.f32[1];
          }

          v74 = a2 - 3;
          v59 = v61;
          if (!v76)
          {
            goto LABEL_97;
          }

LABEL_96:
          *v59 = *v74;
          *v74 = v75;
          goto LABEL_97;
        }

LABEL_95:
        v75 = *v59;
        goto LABEL_96;
      }

      if ((v65 & 0x10000) != 0)
      {
        goto LABEL_82;
      }

LABEL_78:
      v66 = vmovn_s32(vmvnq_s8(vceqq_f32(*v10, v63))).u8[0];
      v67 = vmovn_s32(vcgtq_f32(v63, *v10)).u32[0];
      if (v66)
      {
        if ((v67 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      else if ((v67 & 0x10000) == 0)
      {
        goto LABEL_97;
      }

      v71 = *v61;
      *v61 = *v10;
      *v10 = v71;
      v72 = vmovn_s32(vcgtq_f32(*v59, *v61)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v61, *v59))).u8[0])
      {
        v73 = v72;
      }

      else
      {
        v73 = BYTE2(v72);
      }

      v74 = v61;
      if (v73)
      {
        goto LABEL_95;
      }

LABEL_97:
      v77 = *v14;
      v78 = *v44;
      v79 = vmovn_s32(vcgtq_f32(*v44, *v14)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v14, *v44))).u8[0])
      {
        if ((v79 & 1) == 0)
        {
          goto LABEL_99;
        }

LABEL_103:
        v82 = *v61;
        v83 = vmovn_s32(vcgtq_f32(v77, *v61)).u32[0];
        if (vmovn_s32(vmvnq_s8(vceqq_f32(*v61, v77))).u8[0])
        {
          if ((v83 & 1) == 0)
          {
LABEL_113:
            v87 = *v44;
            *v44 = *v14;
            *v14 = v87;
            v88 = v82.f32[0] < v87.f32[0];
            if (v82.f32[0] == v87.f32[0])
            {
              v88 = v82.f32[1] < v87.f32[1];
            }

            v44 = v14;
            if (!v88)
            {
              goto LABEL_118;
            }

LABEL_117:
            *v44 = *v61;
            *v61 = v87;
LABEL_118:
            v89 = *v11;
            *v11 = *v14;
            *v14 = v89;
            goto LABEL_119;
          }
        }

        else if ((v83 & 0x10000) == 0)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if ((v79 & 0x10000) != 0)
        {
          goto LABEL_103;
        }

LABEL_99:
        v80 = vmovn_s32(vmvnq_s8(vceqq_f32(*v61, v77))).u8[0];
        v81 = vmovn_s32(vcgtq_f32(v77, *v61)).u32[0];
        if (v80)
        {
          if ((v81 & 1) == 0)
          {
            goto LABEL_118;
          }
        }

        else if ((v81 & 0x10000) == 0)
        {
          goto LABEL_118;
        }

        v84 = *v14;
        v85 = *v61;
        *v14 = *v61;
        *v61 = v84;
        v86 = v85.f32[0] < v78.f32[0];
        if (v85.f32[0] == v78.f32[0])
        {
          v86 = v85.f32[1] < v78.f32[1];
        }

        v61 = v14;
        if (!v86)
        {
          goto LABEL_118;
        }
      }

      v87 = *v44;
      goto LABEL_117;
    }

    v19 = *v11;
    v20 = vmovn_s32(vcgtq_f32(*v13, *v11)).u32[0];
    if (vmovn_s32(vmvnq_s8(vceqq_f32(*v11, *v13))).u8[0])
    {
      if (v20)
      {
        goto LABEL_27;
      }
    }

    else if ((v20 & 0x10000) != 0)
    {
LABEL_27:
      v26 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v19))).u8[0];
      v27 = vmovn_s32(vcgtq_f32(v19, *v8)).u32[0];
      if (v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = BYTE2(v27);
      }

      v39 = a2 - 1;
      if ((v28 & 1) == 0)
      {
        v40 = *v14;
        *v14 = *v11;
        *v11 = v40;
        v41 = COERCE_FLOAT(*v8) < v40.f32[0];
        if (COERCE_FLOAT(*v8) == v40.f32[0])
        {
          v41 = COERCE_FLOAT(HIDWORD(v8->i64[0])) < v40.f32[1];
        }

        v39 = a2 - 1;
        v14 = v11;
        if (!v41)
        {
          goto LABEL_119;
        }

        goto LABEL_71;
      }

LABEL_70:
      v40 = *v14;
LABEL_71:
      *v14 = *v39;
      *v39 = v40;
      goto LABEL_119;
    }

    v21 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v19))).u8[0];
    v22 = vmovn_s32(vcgtq_f32(v19, *v8)).u32[0];
    if (v21)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_119;
      }

LABEL_33:
      v32 = *v11;
      *v11 = *v8;
      *v8 = v32;
      v33 = vmovn_s32(vcgtq_f32(*v13, *v11)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v11, *v13))).u8[0])
      {
        v34 = v33;
      }

      else
      {
        v34 = BYTE2(v33);
      }

      v39 = v11;
      if ((v34 & 1) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_70;
    }

    if ((v22 & 0x10000) != 0)
    {
      goto LABEL_33;
    }

LABEL_119:
    --a3;
    if (a4)
    {
      goto LABEL_131;
    }

    v90 = v11[-1];
    v91 = vmovn_s32(vmvnq_s8(vceqq_f32(v90, *v11))).u8[0];
    v92 = vmovn_s32(vcgtq_f32(*v11, v90)).u32[0];
    if (v91)
    {
      if ((v92 & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_131;
    }

    if ((v92 & 0x10000) != 0)
    {
LABEL_131:
      v96 = v11 + 1;
      v97 = *v11;
      LODWORD(v98) = HIDWORD(v11->i64[0]);
      while (COERCE_FLOAT(*v96) != v97.f32[0])
      {
        if (COERCE_FLOAT(*v96) >= v97.f32[0])
        {
          goto LABEL_137;
        }

LABEL_136:
        ++v96;
      }

      if (COERCE_FLOAT(HIDWORD(v96->i64[0])) < v98)
      {
        goto LABEL_136;
      }

LABEL_137:
      v99 = v96 - 1;
      i = a2 - 1;
      if (&v96[-1] == v11)
      {
        i = a2;
        if (v96 < a2)
        {
          for (i = a2 - 1; ; --i)
          {
            v102 = *i;
            if (COERCE_FLOAT(*i) == v97.f32[0])
            {
              if (v96 >= i || v102.f32[1] < v98)
              {
                break;
              }
            }

            else if (v96 >= i || v102.f32[0] < v97.f32[0])
            {
              break;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v101 = COERCE_FLOAT(*i) < v97.f32[0];
          if (COERCE_FLOAT(*i) == v97.f32[0])
          {
            v101 = COERCE_FLOAT(HIDWORD(i->i64[0])) < v98;
          }

          if (v101)
          {
            break;
          }

          --i;
        }
      }

      if (v96 >= i)
      {
        goto LABEL_166;
      }

      v103 = v96;
      v104 = i;
      while (2)
      {
        v105 = *v103;
        *v103++ = *v104;
        *v104 = v105;
        while (2)
        {
          if (COERCE_FLOAT(*v103) != v97.f32[0])
          {
            if (COERCE_FLOAT(*v103) >= v97.f32[0])
            {
              break;
            }

            goto LABEL_158;
          }

          if (COERCE_FLOAT(HIDWORD(v103->i64[0])) < v98)
          {
LABEL_158:
            ++v103;
            continue;
          }

          break;
        }

        v99 = v103 - 1;
        do
        {
          while (1)
          {
            v106 = v104[-1];
            --v104;
            v107 = v106.f32[1];
            v108 = v106.f32[0] < v97.f32[0];
            if (v106.f32[0] == v97.f32[0])
            {
              break;
            }

            if (v108)
            {
              goto LABEL_165;
            }
          }
        }

        while (v107 >= v98);
LABEL_165:
        if (v103 < v104)
        {
          continue;
        }

        break;
      }

LABEL_166:
      if (v99 != v11)
      {
        *v11 = *v99;
      }

      *v99 = v97;
      if (v96 < i)
      {
LABEL_171:
        result = sub_262265680(v7, v99, a3, a4 & 1);
        a4 = 0;
        v11 = v99 + 1;
      }

      else
      {
        v109 = sub_262266C3C(v11, v99);
        v11 = v99 + 1;
        result = sub_262266C3C(v99 + 1, a2);
        if (result)
        {
          a2 = v99;
          if (v109)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v109)
        {
          goto LABEL_171;
        }
      }
    }

    else
    {
LABEL_122:
      v93 = *v11;
      v94 = *v8;
      LODWORD(v95) = HIDWORD(v11->i64[0]);
      if (COERCE_FLOAT(*v11) == COERCE_FLOAT(*v8))
      {
        if (v95 < v94.f32[1])
        {
LABEL_124:
          for (++v11; ; ++v11)
          {
            if (v93.f32[0] == COERCE_FLOAT(*v11))
            {
              if (v95 < COERCE_FLOAT(HIDWORD(v11->i64[0])))
              {
                goto LABEL_179;
              }
            }

            else if (v93.f32[0] < COERCE_FLOAT(*v11))
            {
              goto LABEL_179;
            }
          }
        }
      }

      else if (COERCE_FLOAT(*v11) < COERCE_FLOAT(*v8))
      {
        goto LABEL_124;
      }

      for (++v11; v11 < a2; ++v11)
      {
        v110 = v93.f32[0] < COERCE_FLOAT(*v11);
        if (v93.f32[0] == COERCE_FLOAT(*v11))
        {
          v110 = v95 < COERCE_FLOAT(HIDWORD(v11->i64[0]));
        }

        if (v110)
        {
          break;
        }
      }

LABEL_179:
      j = a2;
      if (v11 < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          if (v93.f32[0] == v94.f32[0])
          {
            if (v93.f32[1] >= v94.f32[1])
            {
              break;
            }
          }

          else if (v93.f32[0] >= v94.f32[0])
          {
            break;
          }

          v112 = j[-1];
          v94.i64[0] = v112.i64[0];
        }
      }

      while (v11 < j)
      {
        v113 = *v11;
        *v11++ = *j;
        *j = v113;
        while (1)
        {
          v114 = v93.f32[0] < COERCE_FLOAT(*v11);
          if (v93.f32[0] == COERCE_FLOAT(*v11))
          {
            v114 = v93.f32[1] < COERCE_FLOAT(HIDWORD(v11->i64[0]));
          }

          if (v114)
          {
            break;
          }

          ++v11;
        }

        do
        {
          while (1)
          {
            v115 = j[-1];
            --j;
            v116 = v115.f32[1];
            v117 = v93.f32[0] < v115.f32[0];
            if (v93.f32[0] != v115.f32[0])
            {
              break;
            }

            if (v93.f32[1] >= v116)
            {
              goto LABEL_195;
            }
          }
        }

        while (v117);
LABEL_195:
        ;
      }

      v118 = v11 - 1;
      if (&v11[-1] != v7)
      {
        *v7 = *v118;
      }

      a4 = 0;
      *v118 = v93;
    }
  }

  if (v12 == 3)
  {
    v127 = v11 + 1;
    v128 = v11[1];
    v129 = vmovn_s32(vcgtq_f32(*v11, v128)).u32[0];
    if (vmovn_s32(vmvnq_s8(vceqq_f32(v128, *v11))).u8[0])
    {
      if ((v129 & 1) == 0)
      {
LABEL_211:
        v130 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v128))).u8[0];
        v131 = vmovn_s32(vcgtq_f32(v128, *v8));
        if (v130)
        {
          if ((v131.i8[0] & 1) == 0)
          {
            return result;
          }
        }

        else if ((v131.i8[2] & 1) == 0)
        {
          return result;
        }

        v228 = v11[1];
        v11[1] = *v8;
        *v8 = v228;
        v229 = v11[1];
        v230 = vmovn_s32(vmvnq_s8(vceqq_f32(v229, *v11))).u8[0];
        v231 = vmovn_s32(vcgtq_f32(*v11, v229));
        if (v230)
        {
          if ((v231.i8[0] & 1) == 0)
          {
            return result;
          }
        }

        else if ((v231.i8[2] & 1) == 0)
        {
          return result;
        }

        goto LABEL_369;
      }
    }

    else if ((v129 & 0x10000) == 0)
    {
      goto LABEL_211;
    }

    v192 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v128))).u8[0];
    v193 = vmovn_s32(vcgtq_f32(v128, *v8)).u32[0];
    if (v192)
    {
      if ((v193 & 1) == 0)
      {
        goto LABEL_308;
      }
    }

    else if ((v193 & 0x10000) == 0)
    {
LABEL_308:
      v191 = *v11;
      *v11 = v11[1];
      v11[1] = v191;
      v194 = COERCE_FLOAT(*v8) < v191.f32[0];
      if (COERCE_FLOAT(*v8) == v191.f32[0])
      {
        v194 = COERCE_FLOAT(HIDWORD(v8->i64[0])) < v191.f32[1];
      }

      v7 = &v11[1];
      if (!v194)
      {
        return result;
      }

LABEL_370:
      *v7 = *v8;
      *v8 = v191;
      return result;
    }

    v127 = a2 - 1;
LABEL_369:
    v191 = *v11;
    v8 = v127;
    goto LABEL_370;
  }

  if (v12 == 4)
  {
    v132 = v11 + 1;
    v133 = v11[1];
    v134 = v11 + 2;
    v135 = *v11;
    if (vmovn_s32(vmvnq_s8(vceqq_f32(v133, *v11))).u8[0])
    {
      if ((vmovn_s32(vcgtq_f32(v135, v133)).u8[0] & 1) == 0)
      {
LABEL_216:
        v136 = *v134;
        v137 = vmovn_s32(vmvnq_s8(vceqq_f32(*v134, v133))).u8[0];
        v138 = vmovn_s32(vcgtq_f32(v133, *v134)).u32[0];
        if (v137)
        {
          if ((v138 & 1) == 0)
          {
            goto LABEL_385;
          }
        }

        else if ((v138 & 0x10000) == 0)
        {
LABEL_385:
          v238 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v136))).u8[0];
          v239 = vmovn_s32(vcgtq_f32(v136, *v8));
          if (v238)
          {
            if ((v239.i8[0] & 1) == 0)
            {
              return result;
            }
          }

          else if ((v239.i8[2] & 1) == 0)
          {
            return result;
          }

          v240 = *v134;
          *v134 = *v8;
          *v8 = v240;
          v241 = vmovn_s32(vcgtq_f32(*v132, *v134));
          if (vmovn_s32(vmvnq_s8(vceqq_f32(*v134, *v132))).u8[0])
          {
            if ((v241.i8[0] & 1) == 0)
            {
              return result;
            }
          }

          else if ((v241.i8[2] & 1) == 0)
          {
            return result;
          }

          v224 = v11[2];
          goto LABEL_394;
        }

        v136 = *v132;
        v232 = *v134;
        *v132 = *v134;
        *v134 = v136;
        v233 = v232.f32[0] < v135.f32[0];
        if (v232.f32[0] == v135.f32[0])
        {
          v233 = v232.f32[1] < v135.f32[1];
        }

        v234 = v11 + 1;
        if (!v233)
        {
          goto LABEL_385;
        }

        goto LABEL_379;
      }
    }

    else if ((vmovn_s32(vcgtq_f32(v135, v133)).i8[2] & 1) == 0)
    {
      goto LABEL_216;
    }

    v136 = *v134;
    if (vmovn_s32(vmvnq_s8(vceqq_f32(*v134, v133))).u8[0])
    {
      LOBYTE(v195) = vmovn_s32(vcgtq_f32(v133, v136)).u8[0];
    }

    else
    {
      v195 = vmovn_s32(vcgtq_f32(v133, v136)).i16[1];
    }

    v234 = v11 + 2;
    if ((v195 & 1) == 0)
    {
      v235 = *v11;
      *v11 = v11[1];
      v11[1] = v235;
      v237 = v136.f32[0] < v235.f32[0];
      if (v136.f32[0] == v235.f32[0])
      {
        v237 = v136.f32[1] < v235.f32[1];
      }

      v234 = v11 + 2;
      v236 = v11 + 1;
      if (!v237)
      {
        goto LABEL_385;
      }

      goto LABEL_384;
    }

LABEL_379:
    v235 = *v11;
    v236 = v11;
LABEL_384:
    *v236 = *v234;
    *v234 = v235;
    v136 = v11[2];
    goto LABEL_385;
  }

  if (v12 != 5)
  {
    goto LABEL_10;
  }

  v119 = v11 + 1;
  v120 = v11[1];
  v121 = v11 + 2;
  v122 = *v11;
  if (vmovn_s32(vmvnq_s8(vceqq_f32(v120, *v11))).u8[0])
  {
    if ((vmovn_s32(vcgtq_f32(v122, v120)).u8[0] & 1) == 0)
    {
      goto LABEL_203;
    }

LABEL_297:
    v123 = *v121;
    if (vmovn_s32(vmvnq_s8(vceqq_f32(*v121, v120))).u8[0])
    {
      if ((vmovn_s32(vcgtq_f32(v120, v123)).u8[0] & 1) == 0)
      {
        goto LABEL_299;
      }

LABEL_334:
      v119 = v11 + 2;
LABEL_335:
      v189 = *v11;
      v121 = v119;
      v119 = v11;
LABEL_336:
      *v119 = *v121;
      *v121 = v189;
      v123 = v11[2];
    }

    else
    {
      if (vmovn_s32(vcgtq_f32(v120, v123)).i8[2])
      {
        goto LABEL_334;
      }

LABEL_299:
      v189 = *v11;
      *v11 = v11[1];
      v11[1] = v189;
      v190 = v123.f32[0] < v189.f32[0];
      if (v123.f32[0] == v189.f32[0])
      {
        v190 = v123.f32[1] < v189.f32[1];
      }

      if (v190)
      {
        goto LABEL_336;
      }
    }
  }

  else
  {
    if (vmovn_s32(vcgtq_f32(v122, v120)).i8[2])
    {
      goto LABEL_297;
    }

LABEL_203:
    v123 = *v121;
    v124 = vmovn_s32(vmvnq_s8(vceqq_f32(*v121, v120))).u8[0];
    v125 = vmovn_s32(vcgtq_f32(v120, *v121)).u32[0];
    if (v124)
    {
      if ((v125 & 1) == 0)
      {
        goto LABEL_337;
      }
    }

    else if ((v125 & 0x10000) == 0)
    {
      goto LABEL_337;
    }

    v123 = *v119;
    v206 = *v121;
    *v119 = *v121;
    *v121 = v123;
    v207 = v206.f32[0] < v122.f32[0];
    if (v206.f32[0] == v122.f32[0])
    {
      v207 = v206.f32[1] < v122.f32[1];
    }

    if (v207)
    {
      goto LABEL_335;
    }
  }

LABEL_337:
  v208 = v11[3];
  v209 = vmovn_s32(vmvnq_s8(vceqq_f32(v208, v123))).u8[0];
  v210 = vmovn_s32(vcgtq_f32(v123, v208)).u32[0];
  if (v209)
  {
    if ((v210 & 1) == 0)
    {
      goto LABEL_350;
    }
  }

  else if ((v210 & 0x10000) == 0)
  {
    goto LABEL_350;
  }

  v208 = v11[2];
  v211 = v11[3];
  v212 = v11[1];
  v11[2] = v211;
  v11[3] = v208;
  v213 = v211.f32[0] < v212.f32[0];
  if (v211.f32[0] == v212.f32[0])
  {
    v213 = v211.f32[1] < v212.f32[1];
  }

  if (v213)
  {
    v214 = *v11;
    v215 = v11[1];
    v11[1] = v211;
    v11[2] = v215;
    v216 = v211.f32[0] < v214.f32[0];
    if (v211.f32[0] == v214.f32[0])
    {
      v216 = v211.f32[1] < v214.f32[1];
    }

    if (v216)
    {
      v217 = *v11;
      *v11 = v211;
      v11[1] = v217;
    }
  }

LABEL_350:
  v218 = vmovn_s32(vcgtq_f32(v208, *v8));
  if (vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v208))).u8[0])
  {
    if ((v218.i8[0] & 1) == 0)
    {
      return result;
    }
  }

  else if ((v218.i8[2] & 1) == 0)
  {
    return result;
  }

  v219 = v11[3];
  v11[3] = *v8;
  *v8 = v219;
  v221 = v11[2];
  v220 = v11[3];
  v222 = vmovn_s32(vmvnq_s8(vceqq_f32(v220, v221))).u8[0];
  v223 = vmovn_s32(vcgtq_f32(v221, v220));
  if (v222)
  {
    if ((v223.i8[0] & 1) == 0)
    {
      return result;
    }
  }

  else if ((v223.i8[2] & 1) == 0)
  {
    return result;
  }

  v225 = v11[2];
  v224 = v11[3];
  v226 = v11[1];
  v11[2] = v224;
  v11[3] = v225;
  v227 = v224.f32[0] < v226.f32[0];
  if (v224.f32[0] == v226.f32[0])
  {
    v227 = v224.f32[1] < v226.f32[1];
  }

  if (v227)
  {
LABEL_394:
    v242 = *v11;
    v243 = v11[1];
    v11[1] = v224;
    v11[2] = v243;
    v244 = v224.f32[0] < v242.f32[0];
    if (v224.f32[0] == v242.f32[0])
    {
      v244 = v224.f32[1] < v242.f32[1];
    }

    if (v244)
    {
      v245 = *v11;
      *v11 = v224;
      v11[1] = v245;
    }
  }

  return result;
}

void sub_2622669D0(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      sub_2621CBEB0();
    }

    v13 = v9 - v11;
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

    v15 = (__dst - v11) >> 4;
    if (v14)
    {
      sub_2621CBF10(v14);
    }

    v32 = 16 * v15;
    v33 = 16 * a5;
    v34 = (16 * v15);
    do
    {
      v35 = *v6;
      v6 += 16;
      *v34++ = v35;
      v33 -= 16;
    }

    while (v33);
    memcpy((v32 + 16 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 16 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 4;
  if (v17 >= a5)
  {
    v28 = &__dst[16 * a5];
    v29 = &v10[-16 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 16;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v28);
    }

    v27 = 16 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[16 * a5];
    v22 = &v10[v19];
    if (&v20[-16 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -16 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 16;
        v23 += 16;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[16 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

BOOL sub_262266C3C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 != 4)
      {
        if (v2 != 5)
        {
          goto LABEL_21;
        }

        v4 = a1 + 1;
        v5 = a1[1];
        v6 = a1 + 2;
        v7 = *a1;
        if (vmovn_s32(vmvnq_s8(vceqq_f32(v5, *a1))).u8[0])
        {
          if ((vmovn_s32(vcgtq_f32(v7, v5)).u8[0] & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((vmovn_s32(vcgtq_f32(v7, v5)).i8[2] & 1) == 0)
        {
LABEL_9:
          v8 = *v6;
          v9 = vmovn_s32(vmvnq_s8(vceqq_f32(*v6, v5))).u8[0];
          v10 = vmovn_s32(vcgtq_f32(v5, *v6)).u32[0];
          if (v9)
          {
            if ((v10 & 1) == 0)
            {
              goto LABEL_100;
            }
          }

          else if ((v10 & 0x10000) == 0)
          {
            goto LABEL_100;
          }

          v8 = *v4;
          v63 = *v6;
          *v4 = *v6;
          *v6 = v8;
          v64 = v63.f32[0] < v7.f32[0];
          if (v63.f32[0] == v7.f32[0])
          {
            v64 = v63.f32[1] < v7.f32[1];
          }

          if (!v64)
          {
LABEL_100:
            v65 = a1[3];
            v66 = vmovn_s32(vmvnq_s8(vceqq_f32(v65, v8))).u8[0];
            v67 = vmovn_s32(vcgtq_f32(v8, v65)).u32[0];
            if (v66)
            {
              if ((v67 & 1) == 0)
              {
                goto LABEL_113;
              }
            }

            else if ((v67 & 0x10000) == 0)
            {
LABEL_113:
              v75 = a2[-1];
              v76 = vmovn_s32(vmvnq_s8(vceqq_f32(v75, v65))).u8[0];
              v77 = vmovn_s32(vcgtq_f32(v65, v75));
              if (v76)
              {
                if ((v77.i8[0] & 1) == 0)
                {
                  return 1;
                }
              }

              else if ((v77.i8[2] & 1) == 0)
              {
                return 1;
              }

              v78 = a1[3];
              a1[3] = a2[-1];
              a2[-1] = v78;
              v80 = a1[2];
              v79 = a1[3];
              v81 = vmovn_s32(vmvnq_s8(vceqq_f32(v79, v80))).u8[0];
              v82 = vmovn_s32(vcgtq_f32(v80, v79));
              if (v81)
              {
                if ((v82.i8[0] & 1) == 0)
                {
                  return 1;
                }
              }

              else if ((v82.i8[2] & 1) == 0)
              {
                return 1;
              }

              v84 = a1[2];
              v83 = a1[3];
              v85 = a1[1];
              a1[2] = v83;
              a1[3] = v84;
              v86 = v83.f32[0] < v85.f32[0];
              if (v83.f32[0] == v85.f32[0])
              {
                v86 = v83.f32[1] < v85.f32[1];
              }

              if (!v86)
              {
                return 1;
              }

LABEL_148:
              v98 = *a1;
              v99 = a1[1];
              a1[1] = v83;
              a1[2] = v99;
              v100 = v83.f32[0] < v98.f32[0];
              if (v83.f32[0] == v98.f32[0])
              {
                v100 = v83.f32[1] < v98.f32[1];
              }

              if (v100)
              {
                v101 = *a1;
                *a1 = v83;
                a1[1] = v101;
              }

              return 1;
            }

            v65 = a1[2];
            v68 = a1[3];
            v69 = a1[1];
            a1[2] = v68;
            a1[3] = v65;
            v70 = v68.f32[0] < v69.f32[0];
            if (v68.f32[0] == v69.f32[0])
            {
              v70 = v68.f32[1] < v69.f32[1];
            }

            if (v70)
            {
              v71 = *a1;
              v72 = a1[1];
              a1[1] = v68;
              a1[2] = v72;
              v73 = v68.f32[0] < v71.f32[0];
              if (v68.f32[0] == v71.f32[0])
              {
                v73 = v68.f32[1] < v71.f32[1];
              }

              if (v73)
              {
                v74 = *a1;
                *a1 = v68;
                a1[1] = v74;
              }
            }

            goto LABEL_113;
          }

          goto LABEL_98;
        }

        v8 = *v6;
        if (vmovn_s32(vmvnq_s8(vceqq_f32(*v6, v5))).u8[0])
        {
          if ((vmovn_s32(vcgtq_f32(v5, v8)).u8[0] & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if ((vmovn_s32(vcgtq_f32(v5, v8)).i8[2] & 1) == 0)
        {
LABEL_47:
          v42 = *a1;
          *a1 = a1[1];
          a1[1] = v42;
          v43 = v8.f32[0] < v42.f32[0];
          if (v8.f32[0] == v42.f32[0])
          {
            v43 = v8.f32[1] < v42.f32[1];
          }

          if (!v43)
          {
            goto LABEL_100;
          }

LABEL_99:
          *v4 = *v6;
          *v6 = v42;
          v8 = a1[2];
          goto LABEL_100;
        }

        v4 = a1 + 2;
LABEL_98:
        v42 = *a1;
        v6 = v4;
        v4 = a1;
        goto LABEL_99;
      }

      v26 = a1 + 1;
      v27 = a1[1];
      v28 = a1 + 2;
      v29 = *a1;
      if (vmovn_s32(vmvnq_s8(vceqq_f32(v27, *a1))).u8[0])
      {
        if ((vmovn_s32(vcgtq_f32(v29, v27)).u8[0] & 1) == 0)
        {
LABEL_28:
          v30 = *v28;
          v31 = vmovn_s32(vmvnq_s8(vceqq_f32(*v28, v27))).u8[0];
          v32 = vmovn_s32(vcgtq_f32(v27, *v28)).u32[0];
          if (v31)
          {
            if ((v32 & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          else if ((v32 & 0x10000) == 0)
          {
LABEL_139:
            v93 = a2[-1];
            v94 = vmovn_s32(vmvnq_s8(vceqq_f32(v93, v30))).u8[0];
            v95 = vmovn_s32(vcgtq_f32(v30, v93));
            if (v94)
            {
              if ((v95.i8[0] & 1) == 0)
              {
                return 1;
              }
            }

            else if ((v95.i8[2] & 1) == 0)
            {
              return 1;
            }

            v96 = *v28;
            *v28 = a2[-1];
            a2[-1] = v96;
            v97 = vmovn_s32(vcgtq_f32(*v26, *v28));
            if (vmovn_s32(vmvnq_s8(vceqq_f32(*v28, *v26))).u8[0])
            {
              if ((v97.i8[0] & 1) == 0)
              {
                return 1;
              }
            }

            else if ((v97.i8[2] & 1) == 0)
            {
              return 1;
            }

            v83 = a1[2];
            goto LABEL_148;
          }

          v30 = *v26;
          v87 = *v28;
          *v26 = *v28;
          *v28 = v30;
          v88 = v87.f32[0] < v29.f32[0];
          if (v87.f32[0] == v29.f32[0])
          {
            v88 = v87.f32[1] < v29.f32[1];
          }

          v89 = a1 + 1;
          if (!v88)
          {
            goto LABEL_139;
          }

          goto LABEL_133;
        }
      }

      else if ((vmovn_s32(vcgtq_f32(v29, v27)).i8[2] & 1) == 0)
      {
        goto LABEL_28;
      }

      v30 = *v28;
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v28, v27))).u8[0])
      {
        LOBYTE(v44) = vmovn_s32(vcgtq_f32(v27, v30)).u8[0];
      }

      else
      {
        v44 = vmovn_s32(vcgtq_f32(v27, v30)).i16[1];
      }

      v89 = a1 + 2;
      if ((v44 & 1) == 0)
      {
        v90 = *a1;
        *a1 = a1[1];
        a1[1] = v90;
        v92 = v30.f32[0] < v90.f32[0];
        if (v30.f32[0] == v90.f32[0])
        {
          v92 = v30.f32[1] < v90.f32[1];
        }

        v89 = a1 + 2;
        v91 = a1 + 1;
        if (!v92)
        {
          goto LABEL_139;
        }

        goto LABEL_138;
      }

LABEL_133:
      v90 = *a1;
      v91 = a1;
LABEL_138:
      *v91 = *v89;
      *v89 = v90;
      v30 = a1[2];
      goto LABEL_139;
    }

    v14 = a1 + 1;
    v15 = a1[1];
    v16 = a2 - 1;
    v17 = vmovn_s32(vcgtq_f32(*a1, v15)).u32[0];
    if (vmovn_s32(vmvnq_s8(vceqq_f32(v15, *a1))).u8[0])
    {
      if ((v17 & 1) == 0)
      {
LABEL_18:
        v18 = vmovn_s32(vmvnq_s8(vceqq_f32(*v16, v15))).u8[0];
        v19 = vmovn_s32(vcgtq_f32(v15, *v16));
        if (v18)
        {
          if ((v19.i8[0] & 1) == 0)
          {
            return 1;
          }
        }

        else if ((v19.i8[2] & 1) == 0)
        {
          return 1;
        }

        v45 = a1[1];
        a1[1] = *v16;
        *v16 = v45;
        v46 = a1[1];
        v47 = vmovn_s32(vmvnq_s8(vceqq_f32(v46, *a1))).u8[0];
        v48 = vmovn_s32(vcgtq_f32(*a1, v46));
        if (v47)
        {
          if ((v48.i8[0] & 1) == 0)
          {
            return 1;
          }
        }

        else if ((v48.i8[2] & 1) == 0)
        {
          return 1;
        }

        goto LABEL_60;
      }
    }

    else if ((v17 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    v33 = vmovn_s32(vmvnq_s8(vceqq_f32(*v16, v15))).u8[0];
    v34 = vmovn_s32(vcgtq_f32(v15, *v16)).u32[0];
    if (v33)
    {
      if ((v34 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((v34 & 0x10000) == 0)
    {
LABEL_34:
      v35 = *a1;
      *a1 = a1[1];
      a1[1] = v35;
      v36 = COERCE_FLOAT(*v16) < v35.f32[0];
      if (COERCE_FLOAT(*v16) == v35.f32[0])
      {
        v36 = COERCE_FLOAT(HIDWORD(v16->i64[0])) < v35.f32[1];
      }

      ++a1;
      if (!v36)
      {
        return 1;
      }

      goto LABEL_61;
    }

    v14 = a2 - 1;
LABEL_60:
    v35 = *a1;
    v16 = v14;
LABEL_61:
    *a1 = *v16;
    *v16 = v35;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v11 = a2[-1];
    v12 = vmovn_s32(vmvnq_s8(vceqq_f32(v11, *a1))).u8[0];
    v13 = vmovn_s32(vcgtq_f32(*a1, v11));
    if (v12)
    {
      if ((v13.i8[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if ((v13.i8[2] & 1) == 0)
    {
      return 1;
    }

    v41 = *a1;
    *a1 = a2[-1];
    a2[-1] = v41;
    return 1;
  }

LABEL_21:
  v20 = a1 + 2;
  v21 = a1 + 1;
  v22 = a1[1];
  v23 = *a1;
  if (vmovn_s32(vmvnq_s8(vceqq_f32(v22, *a1))).u8[0])
  {
    if ((vmovn_s32(vcgtq_f32(v23, v22)).u8[0] & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_40:
    v37 = *v20;
    v38 = vmovn_s32(vmvnq_s8(vceqq_f32(*v20, v22))).u8[0];
    v39 = vmovn_s32(vcgtq_f32(v22, *v20)).u32[0];
    if (v38)
    {
      v40 = v39;
    }

    else
    {
      v40 = BYTE2(v39);
    }

    v52 = a1 + 2;
    if ((v40 & 1) == 0)
    {
      v53 = *a1;
      *a1 = a1[1];
      a1[1] = v53;
      v54 = v37.f32[0] < v53.f32[0];
      if (v37.f32[0] == v53.f32[0])
      {
        v54 = v37.f32[1] < v53.f32[1];
      }

      v52 = a1 + 2;
      if (!v54)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

LABEL_69:
    v53 = *a1;
    v21 = a1;
LABEL_74:
    *v21 = *v52;
    *v52 = v53;
    goto LABEL_75;
  }

  if (vmovn_s32(vcgtq_f32(v23, v22)).i8[2])
  {
    goto LABEL_40;
  }

LABEL_23:
  v24 = vmovn_s32(vmvnq_s8(vceqq_f32(*v20, v22))).u8[0];
  v25 = vmovn_s32(vcgtq_f32(v22, *v20)).u32[0];
  if (v24)
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_63;
  }

  if ((v25 & 0x10000) != 0)
  {
LABEL_63:
    v49 = *v21;
    v50 = *v20;
    *v21 = *v20;
    *v20 = v49;
    v51 = v50.f32[0] < v23.f32[0];
    if (v50.f32[0] == v23.f32[0])
    {
      v51 = v50.f32[1] < v23.f32[1];
    }

    v52 = a1 + 1;
    if (!v51)
    {
      goto LABEL_75;
    }

    goto LABEL_69;
  }

LABEL_75:
  v55 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v56 = 0;
  v57 = 0;
  while (1)
  {
    v58 = vmovn_s32(vcgtq_f32(*v20, *v55));
    if ((vmovn_s32(vmvnq_s8(vceqq_f32(*v55, *v20))).u8[0] & 1) == 0)
    {
      break;
    }

    if (v58.i8[0])
    {
      goto LABEL_81;
    }

LABEL_89:
    v20 = v55;
    v56 += 16;
    if (++v55 == a2)
    {
      return 1;
    }
  }

  if ((v58.i8[2] & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_81:
  v59 = *v55;
  LODWORD(v60) = HIDWORD(v55->i64[0]);
  *v55 = *v20;
  v61 = v56;
  do
  {
    v62 = *(&a1[1] + v61);
    if (v59.f32[0] == *&v62)
    {
      if (v60 >= *(&v62 + 1))
      {
        goto LABEL_88;
      }
    }

    else if (v59.f32[0] >= *&v62)
    {
      v20 = (a1 + v61 + 32);
      goto LABEL_88;
    }

    --v20;
    *(a1 + v61 + 32) = *(a1 + v61 + 16);
    v61 -= 16;
  }

  while (v61 != -32);
  v20 = a1;
LABEL_88:
  *v20 = v59;
  if (++v57 != 8)
  {
    goto LABEL_89;
  }

  return &v55[1] == a2;
}

uint64_t sub_262267420(uint64_t result, unint64_t a2, double a3, float a4)
{
  v4 = result;
  v27 = LODWORD(a3);
  v26 = a2;
  if (a2)
  {
    sub_26222AF58(v25, &v26);
    result = sub_262224FE8(v4, v25);
    v9 = a2 - 1;
    if (a2 == 1)
    {
      return sub_26226B214(v4, &v27, v7);
    }

    else
    {
      v10 = 0;
      *v8.i32 = (a4 - *&a3) / v9;
      v11 = *(v4 + 144);
      v12 = vdupq_n_s64(v9);
      v13 = vdupq_lane_s32(v8, 0);
      v14 = vdupq_lane_s32(*&a3, 0);
      v15 = xmmword_2623A7620;
      v16 = vdupq_n_s64(4uLL);
      v17 = (v11 + 4);
      v18 = xmmword_2623A7630;
      do
      {
        v19 = vorrq_s8(vdupq_n_s64(v10), xmmword_2623A7630);
        v20 = vmovn_s64(vcgeq_u64(v12, v15));
        *v21.i32 = v10;
        v22 = v10 + 1;
        *&v21.i32[1] = v22;
        v23 = vmlaq_f32(v14, vcvt_hight_f32_f64(v21, vcvtq_f64_u64(v19)), v13);
        if (vuzp1_s16(v20, *v12.i8).u8[0])
        {
          *(v17 - 1) = v23.i32[0];
        }

        if (vuzp1_s16(v20, *&v12).i8[2])
        {
          *v17 = v23.i32[1];
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v18))).i32[1])
        {
          *(v11 + 4 * v19.i64[0]) = v23.i32[2];
          *(v11 + 4 * v19.i64[1]) = v23.i32[3];
        }

        v18 = vaddq_s64(v18, v16);
        v15 = vaddq_s64(v15, v16);
        v17 += 4;
        v10 = v22 + 3;
      }

      while (v10 != ((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    }
  }

  else
  {
    *result = &unk_2874EF6A8;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 120) = 0;
    *(result + 128) = 0;
    *(result + 136) = 257;
  }

  return result;
}

void sub_2622675CC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EF6A8;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262267600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[21] = *MEMORY[0x277D85DE8];
  sub_26222AF58(v6, (a3 + 8));
  sub_262268318(a1, v6);
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  sub_262229F7C(&v16, a3);
  v13 = v17;
  v14 = v18;
  v15 = v19;
  *&v6[0].__locale_ = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  sub_262229F7C(v12, &v16);
  *&v6[0].__locale_ = v9;
  v7 = v10;
  v8 = v11;
  sub_262268410(v20, v6);
}

void sub_262268030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, std::locale a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a51)
  {
    sub_2621D1B78(a51);
  }

  STACK[0x270] = &unk_2874EE910;
  if (STACK[0x2F0])
  {
    sub_2621D1B78(STACK[0x2F0]);
  }

  if (a32)
  {
    sub_2621D1B78(a32);
  }

  if (STACK[0x258])
  {
    sub_2621D1B78(STACK[0x258]);
  }

  STACK[0x340] = &unk_2874EE910;
  if (STACK[0x3C0])
  {
    sub_2621D1B78(STACK[0x3C0]);
  }

  *v51 = &unk_2874EE788;
  v53 = v51[16];
  if (v53)
  {
    sub_2621D1B78(v53);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26226829C(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 136) == 1)
  {
    v2 = *(result + 144);
    v3 = *v2;
    if (v1 >= 2)
    {
      v4 = v1 - 1;
      v5 = v2 + 1;
      do
      {
        v6 = *v5++;
        v3 = v3 + v6;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v7 = *(result + 144);
    v8 = *v7;
    if (v1 >= 2)
    {
      v9 = v1 - 1;
      v10 = 1;
      do
      {
        v8 = v8 + v7[*(result + 56) * v10];
        if (v10 + 1 == v1)
        {
          v10 = 0;
        }

        else
        {
          ++v10;
        }

        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_262268318(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EE788;
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
  *(a1 + 56) = 1;
  v4 = *(a1 + 8);
  *(a1 + 104) = v4;
  *(a1 + 112) = 0;
  if (v4)
  {
    sub_262204144(&v5, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_2622683F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262268410(uint64_t a1, _OWORD *a2)
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

void sub_262268E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
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

void sub_262268EA8(uint64_t a1, __int128 *a2)
{
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

void sub_262269214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262269274(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v16, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v16);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D8074("err", "empty tensor in");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v16, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v16);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a1 + 137) == 1)
  {
    v13 = *(a2 + 168);
    v14 = *(a2 + 184);
    *(a1 + 8) = *(a2 + 152);
    *(a1 + 104) = *(a1 + 8);
    *(a1 + 24) = v13;
    *(a1 + 40) = v14;
    *(a1 + 56) = 1;
    *(a1 + 112) = 0;
    sub_2621D7174(v16, (a1 + 104));
  }

  if (sub_26226A160(a2, a1) == 2)
  {
    sub_26220571C(v16, (a2 + 152));
    sub_26226A1C8(v16, a2);
    sub_262205814(a1, v16);
    *&v16[0] = &unk_2874EE910;
    if (v17)
    {
      sub_2621D1B78(v17);
    }
  }

  else
  {
    sub_26226A1C8(a1, a2);
  }

  return a1;
}

void sub_262269524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_26226956C(uint64_t a1, unint64_t *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 1159);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "at", 2);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v23[0] = v13;
  v21 = 0;
  if (v13 >= *(a1 + 8))
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 1167);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "at", 2);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621DA198("err", "shape", &v21, "=", v23, "should smaller then", (a1 + 8));
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  return *(a1 + 144) + 4 * *(a1 + 56) * v13;
}

unint64_t sub_262269944(uint64_t a1, unint64_t *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 1125);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "at", 2);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v23[0] = v13;
  v21 = 0;
  if (v13 >= *(a1 + 8))
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 1133);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "at", 2);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621DA198("err", "shape", &v21, "=", v23, "should smaller then", (a1 + 8));
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  return *(a1 + 144) + 4 * *(a1 + 56) * v13;
}

uint64_t sub_262269D1C(uint64_t a1, int *a2, int *a3)
{
  v32[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v5 = a1;
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 1159);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "at", 2);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(v29, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(v29, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    std::ostream::flush();
    a1 = v5;
  }

  v15 = 0;
  v16 = MEMORY[0x277D82670];
  v26 = a1;
  v27 = 0;
  v17 = a1 + 8;
  v18 = *a3;
  v32[0] = *a2;
  v32[1] = v18;
  v19 = 1;
  v20 = MEMORY[0x277D82680];
  v30 = 0u;
  v31 = 0u;
  *&v29[0].__locale_ = 0u;
  do
  {
    v21 = v32[v15];
    if (v21 >= *(v17 + v15 * 8))
    {
      sub_2621D552C(v16, "runtime_err in ", 15);
      sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v16, " ", 1);
      v22 = MEMORY[0x266727260](v16, 1167);
      sub_2621D552C(v22, " ", 1);
      sub_2621D552C(v22, "at", 2);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v28, v20);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v28);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v27, "=", &v32[v15], "should smaller then", (v17 + v15 * 8));
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v24 = std::locale::use_facet(&v28, v20);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v28);
      std::ostream::put();
      std::ostream::flush();
    }

    v27 = v19;
    v29[v15++].__locale_ = v21;
    ++v19;
  }

  while (v15 != 2);
  return v26[18] + 2 * v26[8] * v29[1].__locale_ + 2 * v26[7] * v29[0].__locale_;
}

uint64_t sub_26226A160(void *a1, void *a2)
{
  if (a1[15] != a2[15])
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[7] != a2[7] || a1[14] != a2[14])
  {
    return 2;
  }

  if (a1[13] == a2[13])
  {
    return 1;
  }

  return 2;
}

uint64_t sub_26226A1C8(uint64_t result, uint64_t a2)
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
            v13 = *v9++;
            v12 = v13;
            if (v13 >= v11)
            {
              v12 = v11;
            }

            if (v12 <= v10)
            {
              v12 = v10;
            }

            *v8++ = v12;
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
          v73 = *v69++;
          v72 = v73;
          if (v73 >= v71)
          {
            v72 = v71;
          }

          if (v72 <= v70)
          {
            v72 = v70;
          }

          v8[v68 * v67] = v72;
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
          if (v41 >= v40)
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
        if (v79 >= v78)
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
          v26 = *(a2 + 200);
          v28 = *(&v116 + 1);
          v27 = v117;
          v29 = (v117 - *(&v116 + 1)) >> 3;
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v30 = v127;
          v31 = *(a2 + 144);
          v25 = *(a2 + 208);
          do
          {
            v130[0].__locale_ = v23;
            locale = v23;
            if (v27 != v28)
            {
              v33 = v28;
              v34 = v29;
              do
              {
                v35 = *v33++;
                v130[v35].__locale_ = 0;
                --v34;
              }

              while (v34);
              locale = v130[0].__locale_;
            }

            v36 = *(v31 + 4 * locale * v30);
            if (v36 >= v25)
            {
              v36 = v25;
            }

            if (v36 <= v26)
            {
              v36 = v26;
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
        v83 = *(a2 + 200);
        v85 = *(&v116 + 1);
        v84 = v117;
        v86 = (v117 - *(&v116 + 1)) >> 3;
        if (v86 <= 1)
        {
          v86 = 1;
        }

        v87 = v127;
        v88 = *(v3 + 56);
        v89 = *(a2 + 144);
        v82 = *(a2 + 208);
        do
        {
          v130[0].__locale_ = v80;
          v90 = v80;
          if (v84 != v85)
          {
            v91 = v85;
            v92 = v86;
            do
            {
              v93 = *v91++;
              v130[v93].__locale_ = 0;
              --v92;
            }

            while (v92);
            v90 = v130[0].__locale_;
          }

          v94 = *(v89 + 4 * v90 * v87);
          if (v94 >= v82)
          {
            v94 = v82;
          }

          if (v94 <= v83)
          {
            v94 = v83;
          }

          *(v22 + 4 * v80 * v88) = v94;
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
          v54 = *(a2 + 200);
          v56 = *(&v116 + 1);
          v55 = v117;
          v57 = (v117 - *(&v116 + 1)) >> 3;
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v127;
          v59 = *(a2 + 136);
          v60 = *(a2 + 144);
          v53 = *(a2 + 208);
          do
          {
            v130[0].__locale_ = v51;
            v61 = v51;
            if (v55 != v56)
            {
              v62 = v56;
              v63 = v57;
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
            if (v59)
            {
              v65 = v58;
            }

            v66 = *(v60 + 4 * v65 * v61);
            if (v66 >= v53)
            {
              v66 = v53;
            }

            if (v66 <= v54)
            {
              v66 = v54;
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
        v98 = *(a2 + 200);
        v100 = *(&v116 + 1);
        v99 = v117;
        v101 = (v117 - *(&v116 + 1)) >> 3;
        if (v101 <= 1)
        {
          v101 = 1;
        }

        v102 = v127;
        v103 = *(v3 + 56);
        v104 = *(a2 + 136);
        v105 = *(a2 + 144);
        v97 = *(a2 + 208);
        do
        {
          v130[0].__locale_ = v95;
          v106 = v95;
          if (v99 != v100)
          {
            v107 = v100;
            v108 = v101;
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
          if (v104)
          {
            v110 = v102;
          }

          v111 = *(v105 + 4 * v110 * v106);
          if (v111 >= v97)
          {
            v111 = v97;
          }

          if (v111 <= v98)
          {
            v111 = v98;
          }

          *(v50 + 4 * v95 * v103) = v111;
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

void sub_26226AA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::locale::~locale((v13 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26226AA3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v108 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v4 = *(result + 8);
  if (v4 == *a2)
  {
    v6 = *(result + 104);
    v7 = *(result + 144);
    if (*(a2 + 184))
    {
      if (*(result + 136))
      {
        if (v6)
        {
          v8 = *(a2 + 192);
          do
          {
            v9 = *v8++;
            *v7++ = *(a2 + 248) + v9;
            --v6;
          }

          while (v6);
        }
      }

      else if (v6)
      {
        v54 = 0;
        v55 = *(result + 56);
        v56 = *(a2 + 192);
        do
        {
          v57 = *v56++;
          v7[v55 * v54] = *(a2 + 248) + v57;
          if (v54 + 1 == v4)
          {
            v54 = 0;
          }

          else
          {
            ++v54;
          }

          --v6;
        }

        while (v6);
      }
    }

    else if (*(result + 136))
    {
      if (v6)
      {
        v30 = 0;
        v31 = *(a2 + 192);
        do
        {
          *v7++ = *(a2 + 248) + *(v31 + 4 * *(a2 + 104) * v30);
          if (v30 + 1 == v4)
          {
            v30 = 0;
          }

          else
          {
            ++v30;
          }

          --v6;
        }

        while (v6);
      }
    }

    else if (v6)
    {
      v58 = 0;
      v59 = *(result + 56);
      v60 = *(a2 + 192);
      do
      {
        v7[v59 * v58] = *(a2 + 248) + *(v60 + 4 * *(a2 + 104) * v58);
        if (v58 + 1 == v4)
        {
          v58 = 0;
        }

        else
        {
          ++v58;
        }

        --v6;
      }

      while (v6);
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v93 = 0uLL;
      v94 = 0uLL;
      v91 = 0uLL;
      v92 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      v87 = 0uLL;
      v88 = 0uLL;
      sub_262205FA8(&v90, v5, a2, &v87);
      v10 = v87;
      if (v87 != *v5)
      {
        v11 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v12 = sub_2621D552C(v11, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v12, " ", 1);
        v13 = MEMORY[0x277D82670];
        v14 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v14, " ", 1);
        sub_2621D552C(v14, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v15 = std::locale::use_facet(v105, MEMORY[0x277D82680]);
        (v15->__vftable[2].~facet_0)(v15, 10);
        std::locale::~locale(v105);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v16 = std::locale::use_facet(v105, MEMORY[0x277D82680]);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(v105);
        std::ostream::put();
        std::ostream::flush();
      }

      v106 = 0u;
      v107 = 0u;
      *&v105[0].__locale_ = 0u;
      v17 = *(v3 + 104);
      v18 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v17)
        {
          v19 = 0;
          v20 = 0;
          v22 = *(&v91 + 1);
          v21 = v92;
          v23 = (v92 - *(&v91 + 1)) >> 3;
          if (v23 <= 1)
          {
            v23 = 1;
          }

          v24 = v102;
          v25 = *(a2 + 192);
          do
          {
            v105[0].__locale_ = v19;
            locale = v19;
            if (v21 != v22)
            {
              v27 = v22;
              v28 = v23;
              do
              {
                v29 = *v27++;
                v105[v29].__locale_ = 0;
                --v28;
              }

              while (v28);
              locale = v105[0].__locale_;
            }

            *(v18 + 4 * v20) = *(a2 + 248) + *(v25 + 4 * locale * v24);
            if ((v19 + 1) == v10)
            {
              v19 = 0;
            }

            else
            {
              v19 = (v19 + 1);
            }

            ++v20;
          }

          while (v20 != v17);
        }
      }

      else if (v17)
      {
        v61 = 0;
        v62 = 0;
        v64 = *(&v91 + 1);
        v63 = v92;
        v65 = (v92 - *(&v91 + 1)) >> 3;
        if (v65 <= 1)
        {
          v65 = 1;
        }

        v66 = v102;
        v67 = *(v3 + 56);
        v68 = *(a2 + 192);
        do
        {
          v105[0].__locale_ = v61;
          v69 = v61;
          if (v63 != v64)
          {
            v70 = v64;
            v71 = v65;
            do
            {
              v72 = *v70++;
              v105[v72].__locale_ = 0;
              --v71;
            }

            while (v71);
            v69 = v105[0].__locale_;
          }

          *(v18 + 4 * v61 * v67) = *(a2 + 248) + *(v68 + 4 * v69 * v66);
          if ((v61 + 1) == v10)
          {
            v61 = 0;
          }

          else
          {
            v61 = (v61 + 1);
          }

          ++v62;
        }

        while (v62 != v17);
      }
    }

    else
    {
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v93 = 0uLL;
      v94 = 0uLL;
      v91 = 0uLL;
      v92 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      v87 = 0uLL;
      v88 = 0uLL;
      sub_262205FA8(&v90, v5, a2, &v87);
      v32 = v87;
      if (v87 != *v5)
      {
        v33 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v34 = sub_2621D552C(v33, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v34, " ", 1);
        v35 = MEMORY[0x277D82670];
        v36 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v36, " ", 1);
        sub_2621D552C(v36, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v36 + *(*v36 - 24)));
        v37 = std::locale::use_facet(v105, MEMORY[0x277D82680]);
        (v37->__vftable[2].~facet_0)(v37, 10);
        std::locale::~locale(v105);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v35 + *(*v35 - 24)));
        v38 = std::locale::use_facet(v105, MEMORY[0x277D82680]);
        (v38->__vftable[2].~facet_0)(v38, 10);
        std::locale::~locale(v105);
        std::ostream::put();
        std::ostream::flush();
      }

      v106 = 0u;
      v107 = 0u;
      *&v105[0].__locale_ = 0u;
      v39 = *(v3 + 104);
      v40 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v39)
        {
          v41 = 0;
          v42 = 0;
          v44 = *(&v91 + 1);
          v43 = v92;
          v45 = (v92 - *(&v91 + 1)) >> 3;
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v102;
          v47 = *(a2 + 184);
          v48 = *(a2 + 192);
          do
          {
            v105[0].__locale_ = v41;
            v49 = v41;
            if (v43 != v44)
            {
              v50 = v44;
              v51 = v45;
              do
              {
                v52 = *v50++;
                v105[v52].__locale_ = 0;
                --v51;
              }

              while (v51);
              v49 = v105[0].__locale_;
            }

            v53 = *(a2 + 104);
            if (v47)
            {
              v53 = v46;
            }

            *(v40 + 4 * v42) = *(a2 + 248) + *(v48 + 4 * v53 * v49);
            if ((v41 + 1) == v32)
            {
              v41 = 0;
            }

            else
            {
              v41 = (v41 + 1);
            }

            ++v42;
          }

          while (v42 != v39);
        }
      }

      else if (v39)
      {
        v73 = 0;
        v74 = 0;
        v76 = *(&v91 + 1);
        v75 = v92;
        v77 = (v92 - *(&v91 + 1)) >> 3;
        if (v77 <= 1)
        {
          v77 = 1;
        }

        v78 = v102;
        v79 = *(v3 + 56);
        v80 = *(a2 + 184);
        v81 = *(a2 + 192);
        do
        {
          v105[0].__locale_ = v73;
          v82 = v73;
          if (v75 != v76)
          {
            v83 = v76;
            v84 = v77;
            do
            {
              v85 = *v83++;
              v105[v85].__locale_ = 0;
              --v84;
            }

            while (v84);
            v82 = v105[0].__locale_;
          }

          v86 = *(a2 + 104);
          if (v80)
          {
            v86 = v78;
          }

          *(v40 + 4 * v73 * v79) = *(a2 + 248) + *(v81 + 4 * v86 * v82);
          if ((v73 + 1) == v32)
          {
            v73 = 0;
          }

          else
          {
            v73 = (v73 + 1);
          }

          ++v74;
        }

        while (v74 != v39);
      }
    }

    return sub_2621C57C8(&v90);
  }

  return result;
}

void sub_26226B1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::locale::~locale((v13 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26226B214(uint64_t a1, __int32 *a2, int16x4_t a3)
{
  if (*(a1 + 137) == 1)
  {
    v5 = MEMORY[0x277D82670];
    v6 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v7 = sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v8 = sub_2621D552C(v7, " ", 1);
    v9 = MEMORY[0x266727260](v8, 664);
    v10 = sub_2621D552C(v9, " ", 1);
    v11 = sub_2621D552C(v10, "operator=", 9);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v13 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
  }

  a3.i32[0] = *a2;
  v14 = *(a1 + 104);
  v15 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v14)
    {
      v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = vdupq_n_s64(v14 - 1);
      v18 = xmmword_2623A7630;
      v19 = xmmword_2623A7620;
      v20 = (v15 + 8);
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v19));
        if (vuzp1_s16(v22, a3).u8[0])
        {
          *(v20 - 2) = a3.i32[0];
        }

        if (vuzp1_s16(v22, a3).i8[2])
        {
          *(v20 - 1) = a3.i32[0];
        }

        if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
        {
          *v20 = a3.i32[0];
          v20[1] = a3.i32[0];
        }

        v18 = vaddq_s64(v18, v21);
        v19 = vaddq_s64(v19, v21);
        v20 += 4;
        v16 -= 4;
      }

      while (v16);
    }
  }

  else if (v14)
  {
    v23 = 0;
    v24 = *(a1 + 56);
    v25 = *(a1 + 8);
    do
    {
      *(v15 + 4 * v24 * v23) = a3.i32[0];
      if (v23 + 1 == v25)
      {
        v23 = 0;
      }

      else
      {
        ++v23;
      }

      --v14;
    }

    while (v14);
  }

  return a1;
}

void sub_26226B4C4(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5, void *a6, uint64_t a7)
{
  v9 = a6;
  v10 = (a3 + qword_2623A85E0[a5]);
  if (v10[1] != *v10)
  {
    sub_2621C7F54(1uLL);
  }
}

void sub_26226C308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p)
{
  sub_262258C88(&STACK[0x280]);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26226C538(void *a1, void *a2, uint64_t *a3)
{
  v14 = a1;
  v7 = a2;
  v8 = *a3;
  v9 = a3[1];
  while (v8 != v9)
  {
    v10 = objc_msgSend_parentIdentifier(*(v8 + 8), v5, v6);

    if (v10)
    {
      v11 = objc_msgSend_parentIdentifier(*(v8 + 8), v5, v6);
      isEqual = objc_msgSend_isEqual_(v11, v12, v14);

      if (isEqual)
      {
        sub_26225A86C(v8, v7);
      }
    }

    v8 += 176;
  }
}

const void **sub_26226C61C(const void **result, __int128 *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v23 = v2;
    if (v9)
    {
      sub_26226C934(v9);
    }

    v11 = 24 * v6;
    v19 = 0;
    v20 = v11;
    v12 = 0;
    v21 = v11;
    v22 = 0;
    if (*(a2 + 23) < 0)
    {
      sub_2621CC810(v11, *a2, *(a2 + 1));
      v11 = v20;
      v14 = v21;
      v12 = v22;
    }

    else
    {
      v13 = *a2;
      *(v11 + 16) = *(a2 + 2);
      *v11 = v13;
      v14 = v11;
    }

    v10 = (v14 + 24);
    v15 = v2[1] - *v2;
    v16 = (v11 - v15);
    memcpy((v11 - v15), *v2, v15);
    v17 = *v2;
    *v2 = v16;
    v2[1] = v10;
    v18 = v2[2];
    v2[2] = v12;
    v21 = v17;
    v22 = v18;
    v19 = v17;
    v20 = v17;
    result = sub_26226C98C(&v19);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_2621CC810(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 2) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = v4 + 24;
    v2[1] = v4 + 24;
  }

  v2[1] = v10;
  return result;
}

void sub_26226C784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26226C98C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_26226C7A4(uint64_t **a1, void *a2, __int128 **a3)
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
      v5 = v3;
      if ((sub_26225E3EC(a2, v3 + 4) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((sub_26225E3EC(v5 + 4, a2) & 0x80) == 0)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void sub_26226C8D8(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_26226C934(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_26226C98C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}