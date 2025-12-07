void sub_C53F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = *(v30 + 24);
  if (v32)
  {
    *(a30 + 272) = v32;
    operator delete(v32);
    v33 = *(a30 + 256);
    if (!v33)
    {
LABEL_3:
      sub_C541D8(a30);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v33 = *(a30 + 256);
    if (!v33)
    {
      goto LABEL_3;
    }
  }

  free(v33);
  sub_C541D8(a30);
  _Unwind_Resume(a1);
}

uint64_t sub_C541D8(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

unsigned int *sub_C54264(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("Flatbuffer vector requested index ", &v10, &v11);
    v5 = std::string::append(&v11, " is out of range", 0x10uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v13 = v5->__r_.__value_.__r.__words[2];
    v12 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (v13 >= 0)
    {
      v7 = &v12;
    }

    else
    {
      v7 = v12;
    }

    if (v13 >= 0)
    {
      v8 = HIBYTE(v13);
    }

    else
    {
      v8 = *(&v12 + 1);
    }

    v9 = sub_2D390(exception, v7, v8);
  }

  return &a1[2 * a2 + 1];
}

void sub_C54348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_C543C8(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[32];
  if (v3)
  {
    free(v3);
  }

  return sub_C541D8(a1);
}

uint64_t sub_C54418(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_C547E0(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 56);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 40);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_27;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_27;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_C54924(&v26, a1, v13);
      v17 = *a1;
      v16 = *(a1 + 16);
      v18 = v27;
      *a1 = v26;
      *(a1 + 16) = v18;
      v26 = v17;
      v27 = v16;
      v19 = *(a1 + 32);
      *(a1 + 32) = v28;
      v28 = v19;
      v20 = v29;
      v21 = v30;
      v29 = *(a1 + 48);
      v22 = *(a1 + 72);
      v23 = *(a1 + 56);
      *(a1 + 48) = v20;
      *(a1 + 56) = v21;
      *(a1 + 72) = v31;
      *(a1 + 64) = *(&v30 + 1);
      v30 = v23;
      v31 = v22;
      v24 = *(a1 + 80);
      *(a1 + 80) = v32;
      v32 = v24;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v21)));
      *(a1 + 24) = 0;
      v26 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v27, v23)));
      BYTE8(v27) = 0;
      if (v24)
      {
        free(v24);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_C546F0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(result + 40);
  v4 = *(result + 48);
  if ((v4 - v5) >= 0x1555555555555555)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v6 = *(result + 80);
  if (v5 && ((v7 = (v6 + 12 * a3), *(result + 36) == v7[1]) ? (v8 = *(result + 32) == *v7) : (v8 = 0), v8))
  {
    *(result + 40) = v5 - 1;
  }

  else
  {
    *(result + 48) = v4 + 1;
  }

  v9 = v6 + 12 * a3;
  v10 = *a2;
  *(v9 + 8) = *(a2 + 2);
  *v9 = v10;
  v11 = *(result + 80);
  v12 = v11 + 12 * a3;
  v13 = v11 + 12 * *(result + 56);
  *a4 = result;
  a4[1] = v12;
  a4[2] = v13;
  return result;
}

uint64_t sub_C547E0(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_C54924(&v18, a1, v5);
    v9 = *a1;
    v8 = *(a1 + 16);
    v10 = v19;
    *a1 = v18;
    *(a1 + 16) = v10;
    v18 = v9;
    v19 = v8;
    v11 = *(a1 + 32);
    *(a1 + 32) = v20;
    v20 = v11;
    v12 = v21;
    v13 = v22;
    v21 = *(a1 + 48);
    v14 = *(a1 + 72);
    v15 = *(a1 + 56);
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 72) = v23;
    *(a1 + 64) = *(&v22 + 1);
    v22 = v15;
    v23 = v14;
    v16 = *(a1 + 80);
    *(a1 + 80) = v24;
    v24 = v16;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v13)));
    *(a1 + 24) = 0;
    v18 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v19, v15)));
    BYTE8(v19) = 0;
    if (v16)
    {
      free(v16);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

float sub_C54924(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  v5 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 80) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_C54A64(a1, a2, a3);
  }

  else
  {
    v7 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v8 = *(a1 + 16) * v7;
      if (*(a2 + 48) - *(a2 + 40) < v8)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v7 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v7 *= 2;
      }

      while (v7 < a3);
    }

    *(a1 + 56) = v7;
    result = *(a1 + 20) * v7;
    *a1 = v8;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_C54A64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 48) - *(a2 + 40);
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_A98D90(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v9 = *(a2 + 64);
    v8 = *(a2 + 68);
    if (*(a2 + 40))
    {
      v10 = 12 * v7;
      v11 = *(a2 + 80);
      while (1)
      {
        v12 = *v11;
        v13 = v11[1];
        if ((v8 != v13 || v9 != v12) && (*(a2 + 36) != v13 || *(a2 + 32) != v12))
        {
          break;
        }

        v11 += 3;
        v10 -= 12;
        if (!v10)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v36 = 12 * v7;
      v11 = *(a2 + 80);
      while (v8 == v11[1] && v9 == *v11)
      {
        v11 += 3;
        v36 -= 12;
        if (!v36)
        {
          goto LABEL_60;
        }
      }
    }
  }

  else
  {
    v11 = *(a2 + 80);
  }

  v16 = *(a2 + 80) + 12 * v7;
  if (v11 != v16)
  {
    do
    {
      v17 = *(a1 + 56) - 1;
      v18 = 0xFF51AFD7ED558CCDLL * (*v11 ^ (*v11 >> 33));
      v19 = (0xC4CEB9FE1A85EC53 * (v18 ^ (v18 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v18 ^ (v18 >> 33))) >> 33);
      v20 = *(a1 + 80);
      v22 = *(a1 + 64);
      v21 = *(a1 + 68);
      v23 = v19 & v17;
      v24 = (v20 + 12 * v23);
      if (v21 != v24[1] || v22 != *v24)
      {
        v26 = 1;
        do
        {
          v23 = (v23 + v26) & v17;
          v24 = (v20 + 12 * v23);
          ++v26;
        }

        while (v21 != v24[1] || v22 != *v24);
      }

      v28 = *v11;
      v24[2] = v11[2];
      *v24 = v28;
      ++*(a1 + 48);
      v11 += 3;
      if (v11 != v16)
      {
        v30 = *(a2 + 64);
        v29 = *(a2 + 68);
        if (*(a2 + 40))
        {
          do
          {
            v32 = *v11;
            v31 = v11[1];
            if ((v29 != v31 || v30 != v32) && (*(a2 + 36) != v31 || *(a2 + 32) != v32))
            {
              break;
            }

            v11 += 3;
          }

          while (v11 != v16);
        }

        else
        {
          do
          {
            if (v29 != v11[1] || v30 != *v11)
            {
              break;
            }

            v11 += 3;
          }

          while (v11 != v16);
        }
      }
    }

    while (v11 != (*(a2 + 80) + 12 * *(a2 + 56)));
  }

LABEL_60:
  ++*(a1 + 28);
}

char *sub_C54CE4(uint64_t *a1, unsigned int a2, char *__dst, _BYTE *__src)
{
  v8 = a2;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v10 - *a1) >> 3;
  if (v11 <= a2)
  {
    v12 = a2 + 1;
    if (v12 <= v11)
    {
      if (v12 < v11)
      {
        v10 = v9 + 8 * v12;
        a1[1] = v10;
      }
    }

    else
    {
      sub_30B70(a1, v12 - v11);
      v9 = *a1;
      v10 = a1[1];
    }
  }

  v13 = (v9 + 8 * v8);
  v14 = (v10 - v9) >> 3;
  if (v14 <= v8)
  {
    v15 = a2 + 1;
    if (v15 <= v14)
    {
      if (v15 < v14)
      {
        a1[1] = v9 + 8 * v15;
      }
    }

    else
    {
      sub_30B70(a1, v15 - v14);
      v9 = *a1;
    }
  }

  v16 = a1[3];
  if ((v16 + 28 * *(v9 + 8 * v8 + 4)) == __src)
  {
    v17.i64[0] = __src;
    v17.i64[1] = __dst;
    v18 = vsubq_s64(v17, vdupq_n_s64(v16));
    v19 = vshrq_n_s64(v18, 2uLL);
    v21.i64[0] = 0x6DB6DB6DB6DB6DB7 * v19.i64[0];
    v21.i64[1] = 0x6DB6DB6DB6DB6DB7 * v19.i64[1];
    v20 = v21.i32[2];
    v22 = vbslq_s8(vcgtq_s64(v18, vdupq_n_s64(0xFFFFFFFFFFFFFFE4)), vshrq_n_u64(v21, 6uLL), vnegq_s64(vshrq_n_u64(vsubq_s64(vdupq_n_s64(0x3FuLL), v21), 6uLL)));
    v23 = (v21.i8[0] & 0x3F) - (v21.i8[8] & 0x3F) + ((v22.i64[0] - v22.i64[1]) << 6);
    if (v23 >= 1)
    {
      v24 = (a1[6] + 8 * v22.i64[1]);
      if ((v21.i8[8] & 0x3F) != 0)
      {
        if (64 - (v21.i8[8] & 0x3Fu) >= v23)
        {
          v25 = (v21.i8[0] & 0x3F) - (v21.i8[8] & 0x3F) + ((v22.i64[0] - v22.i64[1]) << 6);
        }

        else
        {
          v25 = 64 - (v21.i8[8] & 0x3Fu);
        }

        *v24++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v21.i8[8] & 0x3Fu) - v25)) & (-1 << (v21.i8[8] & 0x3F)));
        v23 -= v25;
      }

      v26 = v23 >> 6;
      if (v23 >= 0x40)
      {
        bzero(v24, 8 * v26);
      }

      if ((v23 & 0x3F) != 0)
      {
        v24[v26] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v23 & 0x3F));
      }
    }

    v13[1] = v20;
  }

  else
  {
    v27 = (a1[1] - v9) >> 3;
    if (v27 <= v8)
    {
      v28 = a2 + 1;
      if (v28 <= v27)
      {
        if (v28 < v27)
        {
          a1[1] = v9 + 8 * v28;
        }
      }

      else
      {
        sub_30B70(a1, v28 - v27);
        v9 = *a1;
        v16 = a1[3];
      }
    }

    if ((v16 + 28 * *(v9 + 8 * v8)) == __dst)
    {
      v29.i64[0] = __src;
      v29.i64[1] = __dst;
      v30 = vsubq_s64(v29, vdupq_n_s64(v16));
      v31 = vshrq_n_s64(v30, 2uLL);
      v33.i64[0] = 0x6DB6DB6DB6DB6DB7 * v31.i64[0];
      v32 = v33.i32[0];
      v33.i64[1] = 0x6DB6DB6DB6DB6DB7 * v31.i64[1];
      v34 = vbslq_s8(vcgtq_s64(v30, vdupq_n_s64(0xFFFFFFFFFFFFFFE4)), vshrq_n_u64(v33, 6uLL), vnegq_s64(vshrq_n_u64(vsubq_s64(vdupq_n_s64(0x3FuLL), v33), 6uLL)));
      v35 = (v33.i8[0] & 0x3F) - (v33.i8[8] & 0x3F) + ((v34.i64[0] - v34.i64[1]) << 6);
      if (v35 >= 1)
      {
        v36 = (a1[6] + 8 * v34.i64[1]);
        if ((v33.i8[8] & 0x3F) != 0)
        {
          if (64 - (v33.i8[8] & 0x3Fu) >= v35)
          {
            v37 = (v33.i8[0] & 0x3F) - (v33.i8[8] & 0x3F) + ((v34.i64[0] - v34.i64[1]) << 6);
          }

          else
          {
            v37 = 64 - (v33.i8[8] & 0x3Fu);
          }

          *v36++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v33.i8[8] & 0x3Fu) - v37)) & (-1 << (v33.i8[8] & 0x3F)));
          v35 -= v37;
        }

        v38 = v35 >> 6;
        if (v35 >= 0x40)
        {
          bzero(v36, 8 * v38);
        }

        if ((v35 & 0x3F) != 0)
        {
          v36[v38] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v35 & 0x3F));
        }
      }

      *v13 = v32;
      return __src;
    }

    else
    {
      v39 = (a1[1] - v9) >> 3;
      if (v39 <= v8)
      {
        v40 = a2 + 1;
        if (v40 <= v39)
        {
          if (v40 < v39)
          {
            a1[1] = v9 + 8 * v40;
          }
        }

        else
        {
          sub_30B70(a1, v40 - v39);
          v9 = *a1;
          v16 = a1[3];
        }
      }

      v41 = (v16 + 28 * *(v9 + 8 * v8 + 4));
      v42 = v41 - __src;
      if (v41 != __src)
      {
        memmove(__dst, __src, v41 - __src);
        v16 = a1[3];
        v9 = *a1;
      }

      v43 = &__dst[v42];
      v44 = a1[6];
      v45 = 0x6DB6DB6DB6DB6DB7 * (&v43[-v16] >> 2);
      if (&v43[-v16] <= -28)
      {
        v46 = -((63 - v45) >> 6);
      }

      else
      {
        v46 = v45 >> 6;
      }

      v47 = 8 * v46;
      v48 = (a1[1] - v9) >> 3;
      if (v48 <= v8)
      {
        v49 = a2 + 1;
        if (v49 <= v48)
        {
          if (v49 < v48)
          {
            a1[1] = v9 + 8 * v49;
          }
        }

        else
        {
          sub_30B70(a1, v49 - v48);
          v9 = *a1;
          v16 = a1[3];
        }
      }

      v50 = *(v9 + 8 * v8 + 4);
      v51 = (v50 & 0x3F) - (v45 & 0x3F) + 8 * (((v50 >> 3) & 0x1FFFFFF8) - v47);
      if (v51 >= 1)
      {
        v52 = (v44 + v47);
        if ((v45 & 0x3F) != 0)
        {
          if (64 - (v45 & 0x3F) >= v51)
          {
            v53 = (v50 & 0x3F) - (v45 & 0x3F) + 8 * (((v50 >> 3) & 0x1FFFFFF8) - v47);
          }

          else
          {
            v53 = 64 - (v45 & 0x3F);
          }

          *v52++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v45 & 0x3Fu) - v53)) & (-1 << (v45 & 0x3F)));
          v51 -= v53;
        }

        v54 = v51 >> 6;
        if (v51 >= 0x40)
        {
          bzero(v52, 8 * v54);
        }

        if ((v51 & 0x3F) != 0)
        {
          v52[v54] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v51 & 0x3F));
        }
      }

      v13[1] = -1227133513 * (&v43[-v16] >> 2);
    }
  }

  return __dst;
}

uint64_t sub_C551EC(uint64_t *a1, unsigned int a2, __int128 *a3)
{
  v5 = a2;
  v6 = *a1;
  v7 = (a1[1] - *a1) >> 3;
  if (v7 <= a2)
  {
    v8 = a2 + 1;
    if (v8 <= v7)
    {
      if (v8 < v7)
      {
        a1[1] = v6 + 8 * v8;
      }
    }

    else
    {
      sub_30B70(a1, v8 - v7);
      v6 = *a1;
    }
  }

  v9 = (v6 + 8 * v5);
  v10 = *v9;
  if (*v9 && (v11 = v10 - 1, ((*(a1[6] + ((v11 >> 3) & 0x1FFFFFF8)) >> (v10 - 1)) & 1) == 0))
  {
    *v9 = v11;
    v41 = (a1[3] + 28 * v11);
    v42 = *a3;
    *(v41 + 12) = *(a3 + 12);
    *v41 = v42;
    v39 = *v9;
    *(a1[6] + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
    v40 = a1[3];
  }

  else
  {
    v12 = v9[1];
    v13 = a1[3];
    v14 = a1[4];
    v15 = a1 + 3;
    v16 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 2);
    if (v16 <= (v12 + 1) || ((*(a1[6] + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) != 0)
    {
      v17 = a1[1] - v6;
      v18 = v12 - 1227133513 * ((v14 - v13) >> 2) - v10;
      v19 = 2 * (v12 - v10) + 2;
      if (v5 < v17 >> 3)
      {
        v20 = v18;
      }

      else
      {
        v20 = -1227133513 * ((v14 - v13) >> 2);
      }

      if (v5 < v17 >> 3)
      {
        v21 = v19;
      }

      else
      {
        v21 = 2;
      }

      if (v16 >= v21 + v16)
      {
        if (v16 > v21 + v16)
        {
          v14 = v13 + 28 * (v21 + v16);
          a1[4] = v14;
        }
      }

      else
      {
        sub_C555BC((a1 + 3), v21);
        v13 = a1[3];
        v14 = a1[4];
      }

      sub_4D9168((a1 + 6), 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 2), 0);
      v22 = *v9;
      v23 = v9[1];
      v24 = v22;
      if (v23 != v22)
      {
        memmove((a1[3] + 28 * v16), (a1[3] + 28 * v22), 28 * (v23 - v22));
        v24 = *v9;
        LODWORD(v22) = v9[1];
      }

      v25 = a1[6];
      v26 = (v24 >> 3) & 0x1FFFFFF8;
      v27 = v24 & 0x3F;
      v28 = (v22 & 0x3F) - v27 + 8 * (((v22 >> 3) & 0x1FFFFFF8) - v26);
      if (v28 >= 1)
      {
        v29 = (v25 + v26);
        if ((v24 & 0x3F) != 0)
        {
          if ((64 - v27) >= v28)
          {
            v30 = (v22 & 0x3F) - v27 + 8 * (((v22 >> 3) & 0x1FFFFFF8) - v26);
          }

          else
          {
            v30 = (64 - v27);
          }

          *v29++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v27 - v30)) & (-1 << v27));
          v28 -= v30;
        }

        v31 = v28 >> 6;
        if (v28 >= 0x40)
        {
          bzero(v29, 8 * v31);
        }

        if ((v28 & 0x3F) != 0)
        {
          v29[v31] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v28 & 0x3F));
        }
      }

      v32 = (v16 >> 3) & 0x1FFFFFF8;
      v33 = (v20 & 0xFFFFFFC0) - 8 * v32 - (v16 & 0x3F) + (v20 & 0x3F);
      if (v33 >= 1)
      {
        v34 = (v25 + v32);
        if ((v16 & 0x3F) != 0)
        {
          if (64 - (v16 & 0x3F) >= v33)
          {
            v35 = (v20 & 0xFFFFFFC0) - 8 * v32 - (v16 & 0x3F) + (v20 & 0x3F);
          }

          else
          {
            v35 = 64 - (v16 & 0x3F);
          }

          *v34++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - (v16 & 0x3Fu) - v35)) & (-1 << (v16 & 0x3F));
          v33 -= v35;
        }

        v36 = v33 >> 6;
        if (v33 >= 0x40)
        {
          memset(v34, 255, 8 * v36);
        }

        if ((v33 & 0x3F) != 0)
        {
          v34[v36] |= 0xFFFFFFFFFFFFFFFFLL >> -(v33 & 0x3F);
        }
      }

      *v9 = v16;
      v9[1] = v20;
      v37 = (*v15 + 28 * v20);
      v38 = *a3;
      *(v37 + 12) = *(a3 + 12);
      *v37 = v38;
      v39 = v9[1];
      *(a1[6] + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
      v40 = *v15;
    }

    else
    {
      v44 = (v13 + 28 * v12);
      v45 = *a3;
      *(v44 + 12) = *(a3 + 12);
      *v44 = v45;
      v39 = v9[1];
      *(a1[6] + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
      v40 = a1[3];
    }

    v9[1] = v39 + 1;
  }

  return v40 + 28 * v39;
}

void sub_C555BC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 28 * a2;
      v10 = 28 * a2 - 28;
      if (v10 < 0x1C)
      {
        goto LABEL_33;
      }

      v11 = v10 / 0x1C + 1;
      v12 = v3 + 28 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v13 = v3 + 32;
      *&v14 = 0xFFFFFFFF00000000;
      *(&v14 + 1) = 0xFFFFFFFF00000000;
      v15 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 16) = v14;
        *v13 = xmmword_22AC000;
        *(v13 - 32) = xmmword_22AC010;
        *(v13 + 16) = 0xFFFFFFFFLL;
        v13 += 56;
        v15 -= 2;
      }

      while (v15);
      v3 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_33:
        do
        {
          *v3 = xmmword_22AC010;
          *(v3 + 16) = 0xFFFFFFFF00000000;
          *(v3 + 24) = 0;
          v3 += 28;
        }

        while (v3 != v9);
      }

      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0x924924924924924)
    {
      sub_1794();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x492492492492492)
    {
      v8 = 0x924924924924924;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x924924924924924)
      {
        operator new();
      }

      sub_1808();
    }

    v16 = 28 * v5;
    v17 = 28 * v5 + 28 * a2;
    v18 = 28 * a2 - 28;
    v19 = 28 * v5;
    if (v18 < 0x1C)
    {
      goto LABEL_34;
    }

    v20 = v18 / 0x1C + 1;
    v19 = v16 + 28 * (v20 & 0x1FFFFFFFFFFFFFFELL);
    v21 = 28 * v5 + 32;
    *&v22 = 0xFFFFFFFF00000000;
    *(&v22 + 1) = 0xFFFFFFFF00000000;
    v23 = v20 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v21 - 16) = v22;
      *v21 = xmmword_22AC000;
      *(v21 - 32) = xmmword_22AC010;
      *(v21 + 16) = 0xFFFFFFFFLL;
      v21 += 56;
      v23 -= 2;
    }

    while (v23);
    if (v20 != (v20 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_34:
      do
      {
        *v19 = xmmword_22AC010;
        *(v19 + 16) = 0xFFFFFFFF00000000;
        *(v19 + 24) = 0;
        v19 += 28;
      }

      while (v19 != v17);
    }

    v24 = *a1;
    v25 = *(a1 + 8) - *a1;
    v26 = v16 - v25;
    memcpy((v16 - v25), *a1, v25);
    *a1 = v26;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v24)
    {

      operator delete(v24);
    }
  }
}

uint64_t sub_C5587C(void *a1, uint64_t a2, int a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = sub_504BC8(a1[520] + 24, __ROR8__(*v5, 32), 0, "transfer");
    v11 = (v10 - *v10);
    if (*v11 < 0xBu || (v12 = v11[5]) == 0 || *(v10 + v12) == -1)
    {
      ++v8;
    }

    else
    {
      v13 = __ROR8__(*v5, 32);
      v14 = sub_504BC8(a1[520] + 24, v13, 0, "transfer");
      v15 = (v14 - *v14);
      if (*v15 < 0xBu || (v16 = v15[5]) == 0 || *(v14 + v16) == -1)
      {
        v9 = (v9 + 0x7FFFFFFF);
      }

      else
      {
        v17 = sub_504BC8(a1[520] + 24, v13, 0, "transfer");
        v18 = (v17 - *v17);
        if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
        {
          v9 = (10 * *(v17 + v19) + v9);
        }

        else
        {
          v9 = (v9 - 10);
        }
      }
    }

    ++v5;
  }

  while (v5 != v6);
  if (!v8)
  {
LABEL_46:
    v54 = *a2;
    if (*a2 != *(a2 + 8))
    {
      goto LABEL_47;
    }

    return v9;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      goto LABEL_46;
    }

    v20 = a1[520];
    if (*(v20 + 17) == 1)
    {
      v21 = sub_3D4D04(v20 + 24, 1u, 0);
      if (!v21)
      {
        goto LABEL_87;
      }

      v22 = &v21[-*v21];
      if (*v22 < 5u)
      {
        goto LABEL_87;
      }

      v23 = *(v22 + 2);
      if (!v23)
      {
        goto LABEL_87;
      }

      v24 = &v21[v23 + *&v21[v23]];
      v25 = &v24[-*v24];
      v26 = 0.0;
      if (*v25 >= 0x11u)
      {
        v27 = *(v25 + 8);
        if (v27)
        {
          v26 = (10 * *&v24[v27]);
        }
      }

      v28 = v26 * v8;
      if (v28 < 0.0)
      {
LABEL_27:
        if (v28 > -4.50359963e15)
        {
          v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_44:
          v28 = (v29 >> 1);
          goto LABEL_45;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v28 = 300.0 * v8;
      if (v28 < 0.0)
      {
        goto LABEL_27;
      }
    }

    if (v28 < 4.50359963e15)
    {
      v29 = (v28 + v28) + 1;
      goto LABEL_44;
    }

LABEL_45:
    v9 = (v9 + v28);
    goto LABEL_46;
  }

  v30 = sub_504BC8(a1[520] + 24, __ROR8__(**a2, 32), 0, "transfer");
  v31 = (v30 - *v30);
  if (*v31 >= 7u && (v32 = v31[3]) != 0)
  {
    v33 = *(v30 + v32 + 4) | (*(v30 + v32) << 32);
  }

  else
  {
    v33 = 0xFFFFFFFFLL;
  }

  v34 = sub_504BC8(a1[520] + 24, __ROR8__(*(*(a2 + 8) - 8), 32), 0, "transfer");
  v35 = (v34 - *v34);
  if (*v35 >= 9u && (v36 = v35[4]) != 0)
  {
    v37 = *(v34 + v36 + 4) | (*(v34 + v36) << 32);
  }

  else
  {
    v37 = 0xFFFFFFFFLL;
  }

  v84 = a1;
  v38 = sub_C561BC(&v84, v33);
  v39 = sub_C561BC(&v84, v37);
  v40 = exp(3.14159265 - HIDWORD(v38) * 6.28318531 / 4294967300.0);
  v41 = atan((v40 - 1.0 / v40) * 0.5) * 57.2957795 * 0.0174532925;
  v42 = exp(3.14159265 - HIDWORD(v39) * 6.28318531 / 4294967300.0);
  v43 = atan((v42 - 1.0 / v42) * 0.5) * 57.2957795 * 0.0174532925;
  v44.i64[0] = v38;
  v44.i64[1] = v39;
  v45 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v44), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v83 = vsubq_f64(v45, vdupq_laneq_s64(v45, 1)).f64[0];
  v46 = sin((v41 - v43) * 0.5);
  v47 = v46 * v46;
  v48 = cos(v41);
  v49 = v48 * cos(v43);
  v50 = sin(0.5 * v83);
  v51 = atan2(sqrt(v50 * v50 * v49 + v47), sqrt(1.0 - (v50 * v50 * v49 + v47)));
  v52 = (v51 + v51) * 6372797.56 / 0.9 * 10.0;
  if (v52 >= 0.0)
  {
    if (v52 >= 4.50359963e15)
    {
      goto LABEL_75;
    }

    v53 = (v52 + v52) + 1;
  }

  else
  {
    if (v52 <= -4.50359963e15)
    {
      goto LABEL_75;
    }

    v53 = (v52 + v52) - 1 + (((v52 + v52) - 1) >> 63);
  }

  v52 = (v53 >> 1);
LABEL_75:
  v79 = v52;
  if (v9 > v52)
  {
    v79 = v9;
  }

  if (v79 >= 600)
  {
    v9 = v79;
  }

  else
  {
    v9 = 600;
  }

  v54 = *a2;
  if (*a2 == *(a2 + 8))
  {
    return v9;
  }

LABEL_47:
  v55 = sub_504BC8(a1[520] + 24, __ROR8__(*v54, 32), 0, "transfer");
  v56 = (v55 - *v55);
  if (*v56 >= 7u && (v57 = v56[3]) != 0)
  {
    v58 = *(v55 + v57 + 4) | (*(v55 + v57) << 32);
  }

  else
  {
    v58 = 0xFFFFFFFFLL;
  }

  v59 = sub_504D54(a1[522] + 24, __ROR8__(v58, 32), 0, "transfer node");
  v60 = (v59 - *v59);
  v62 = *v60 >= 7u && (v61 = v60[3]) != 0 && *(v59 + v61) == 3;
  v63 = sub_504BC8(a1[520] + 24, __ROR8__(*(*(a2 + 8) - 8), 32), 0, "transfer");
  v64 = (v63 - *v63);
  if (*v64 >= 9u && (v65 = v64[4]) != 0)
  {
    v66 = *(v63 + v65 + 4) | (*(v63 + v65) << 32);
  }

  else
  {
    v66 = 0xFFFFFFFFLL;
  }

  v67 = sub_504D54(a1[522] + 24, __ROR8__(v66, 32), 0, "transfer node");
  v68 = (v67 - *v67);
  if (*v68 < 7u)
  {
    return v9;
  }

  v69 = v68[3];
  if (!v69)
  {
    return v9;
  }

  if (*(v67 + v69) != 3 || !v62)
  {
    return v9;
  }

  v71 = a1[509];
  if (*(v71 + 17) == 1)
  {
    v72 = sub_3D4D04(v71 + 24, 1u, 0);
    if (v72)
    {
      v73 = &v72[-*v72];
      if (*v73 >= 5u)
      {
        v74 = *(v73 + 2);
        if (v74)
        {
          v75 = &v72[v74 + *&v72[v74]];
          v76 = &v75[-*v75];
          if (*v76 >= 0x17u && (v77 = *(v76 + 11)) != 0)
          {
            v78 = 10 * *&v75[v77];
          }

          else
          {
            v78 = 0;
          }

          goto LABEL_84;
        }
      }
    }

LABEL_87:
    exception = __cxa_allocate_exception(0x40uLL);
    v82 = sub_2D390(exception, "Root quad node of transit routing layer does not contain info object", 0x44uLL);
  }

  v78 = 300;
LABEL_84:
  if (v9 <= v78)
  {
    return v78;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_C55FEC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[10] - a2[9];
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    v8 = (v3 >> 3);
    do
    {
      v10 = __ROR8__(*sub_A9C5E0(a2 + 33, v7), 32);
      v11 = sub_504D54(*(a1 + 4176) + 24, v10, 0, "transfer node");
      v12 = (v11 - *v11);
      v13 = *v12;
      if (v13 >= 7 && v12[3] && (*(v11 + v12[3]) & 0xFE) == 2)
      {
        if (v13 >= 9 && (v14 = v12[4]) != 0)
        {
          v15 = *(v11 + v14 + 4) | (*(v11 + v14) << 32);
          v16 = HIDWORD(v15);
          if (*(a3 + 240))
          {
            goto LABEL_29;
          }
        }

        else
        {
          LODWORD(v15) = -1;
          LODWORD(v16) = 0;
          if (*(a3 + 240))
          {
LABEL_29:
            sub_5AF20();
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
        LODWORD(v15) = -1;
        if (*(a3 + 240))
        {
          goto LABEL_29;
        }
      }

      if (v16 == *(a3 + 4) && v15 == *a3)
      {
        v9 = *(a3 + 248);
        if (v9 == 2)
        {
          v18 = sub_504D54(*(a1 + 4176) + 24, v10, 0, "transfer node");
          v19 = (v18 - *v18);
          if (*v19 >= 7u)
          {
            v20 = v19[3];
            if (v20)
            {
              if (*(v18 + v20) == 3)
              {
                return v7;
              }
            }
          }

          v9 = *(a3 + 248);
        }

        if (!v9)
        {
          v21 = sub_504D54(*(a1 + 4176) + 24, v10, 0, "transfer node");
          v22 = (v21 - *v21);
          if (*v22 >= 7u)
          {
            v23 = v22[3];
            if (v23)
            {
              if (*(v21 + v23) == 2)
              {
                return v7;
              }
            }
          }
        }
      }

      ++v7;
    }

    while (v8 != v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_C561BC(uint64_t *a1, uint64_t a2)
{
  v3 = __ROR8__(a2, 32);
  v4 = sub_504D54(*(*a1 + 4176) + 24, v3, 0, "transfer node");
  v5 = (v4 - *v4);
  if (*v5 < 7u || (v6 = v5[3]) == 0)
  {
    v31 = 0;
    goto LABEL_36;
  }

  v7 = *(v4 + v6);
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      v8 = *a1;
      v9 = sub_504D54(*(v8 + 4176) + 24, v3, 0, "transfer node");
      v10 = (v9 - *v9);
      v11 = *v10;
      if (v11 >= 7 && v10[3] && (*(v9 + v10[3]) & 0xFE) == 2)
      {
        if (v11 >= 9 && (v12 = v10[4]) != 0)
        {
          v13 = *(v9 + v12 + 4) | (*(v9 + v12) << 32);
        }

        else
        {
          v13 = 0xFFFFFFFFLL;
        }

        v27 = v13 & 0xFFFFFFFF00000000;
        v13 = v13;
      }

      else
      {
        v27 = 0;
        v13 = 0xFFFFFFFFLL;
      }

      v25 = sub_503310(*(v8 + 4008) + 24, __ROR8__(v27 | v13, 32), 0, "access point");
      v26 = 14;
      goto LABEL_29;
    }

    v31 = v7;
LABEL_36:
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v36, v31);
    sub_23E08("Attempted to obtain coordinate for transfer node of type ", &v36, &v37);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v37;
    }

    else
    {
      v33 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v35 = sub_2D390(exception, v33, size);
  }

  v14 = *a1;
  v15 = sub_504D54(*(v14 + 4176) + 24, v3, 0, "transfer node");
  v16 = (v15 - *v15);
  v17 = *v16;
  if (v17 >= 7 && v16[3] && ((*(v15 + v16[3]) & 0xFE) == 2 ? (v18 = v17 >= 9) : (v18 = 0), v18 && (v19 = v16[4]) != 0))
  {
    v22 = (v15 + v19);
    v20 = *v22;
    v21 = v22[1];
    if (v20 == 1 && (v21 + 3) < 2)
    {
      return -1;
    }

    v24 = v20 << 32;
  }

  else
  {
    v24 = 0;
    v21 = 0xFFFFFFFFLL;
  }

  v25 = sub_502FF8(*(v14 + 4120) + 24, __ROR8__(v24 | v21, 32), 0, "stop");
  v26 = 6;
LABEL_29:
  v28 = v25 + *(v25 + v26 - *v25);
  v29 = *v28;
  LODWORD(v28) = *(v28 + 4);
  if (v28 >= 0xFFFFFFFE)
  {
    v28 = 4294967294;
  }

  else
  {
    v28 = v28;
  }

  return v29 | (v28 << 32);
}

void sub_C56444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_C5649C(uint64_t a1, void *a2)
{
  v14 = 9;
  strcpy(__p, "algorithm");
  v4 = sub_5F8FC(a2, __p);
  v5 = sub_C567B4(v4);
  if (v14 < 0)
  {
    v6 = v5;
    operator delete(*__p);
    v5 = v6;
  }

  *a1 = v5;
  v14 = 18;
  strcpy(__p, "cost_function_name");
  v7 = sub_5F8FC(a2, __p);
  if (*(v7 + 23) < 0)
  {
    sub_325C((a1 + 8), *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    *(a1 + 24) = v7[2];
    *(a1 + 8) = v8;
  }

  if (v14 < 0)
  {
    operator delete(*__p);
  }

  v14 = 18;
  strcpy(__p, "eta_evaluator_name");
  v9 = sub_5F8FC(a2, __p);
  if (*(v9 + 23) < 0)
  {
    sub_325C((a1 + 32), *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    *(a1 + 48) = v9[2];
    *(a1 + 32) = v10;
  }

  if (v14 < 0)
  {
    operator delete(*__p);
  }

  v14 = 12;
  strcpy(__p, "unpack_paths");
  v11 = sub_5F9D0(a2, __p);
  if (v14 < 0)
  {
    v12 = v11;
    operator delete(*__p);
    v11 = v12;
  }

  *(a1 + 56) = v11;
  operator new();
}

void sub_C56734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 55) < 0)
  {
    operator delete(*(v14 + 32));
  }

  if (*(v14 + 31) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C567B4(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 8)
    {
      if (v1 != 16)
      {
        v2 = a1;
        if (v1 != 22)
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

      if (*a1 == 0x615F66695F726263 && *(a1 + 8) == 0x656C62616C696176)
      {
        return 1;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(&v17, " provided", &v16);
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      v15 = sub_2D390(exception, v13, size);
    }

    if (*a1 != 0x617274736B6A6964)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (*(a1 + 8) == 8 && **a1 == 0x617274736B6A6964)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 != 22)
  {
    if (v3 == 16 && **a1 == 0x615F66695F726263 && *(*a1 + 8) == 0x656C62616C696176)
    {
      return 1;
    }

    goto LABEL_34;
  }

  v2 = *a1;
LABEL_25:
  v7 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 14);
  if (v7 != 0x687469775F726263 || v8 != 0x5F74656B6375625FLL || v9 != 0x6863726165735F74)
  {
    goto LABEL_34;
  }

  return 2;
}

void sub_C569CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_C56A24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 9;
  strcpy(__p, "on_street");
  v5 = sub_5F5AC(a4, __p);
  sub_C5649C(a1, v5);
}

void sub_C56AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C56AF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v17 = 2;
  sub_CCE5F4(__p, &v17);
  v9 = v25;
  *(a1 + 176) = v24;
  *(a1 + 192) = v9;
  *(a1 + 208) = v26;
  v10 = v21;
  *(a1 + 112) = v20;
  *(a1 + 128) = v10;
  v11 = v23;
  *(a1 + 144) = v22;
  *(a1 + 160) = v11;
  v12 = v19;
  *(a1 + 80) = *__p;
  *(a1 + 96) = v12;
  sub_C56C78(a1, a2, a3, __p);
  if (BYTE8(v19) != 1)
  {
    sub_C570A8();
  }

  sub_C5A6E0(a5, __p);
  if (BYTE8(v19) == 1)
  {
    v13 = __p[0];
    if (__p[0])
    {
      v14 = __p[1];
      v15 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v16 = *(v14 - 2);
          if (v16 != -1)
          {
            (off_2672A90[v16])(&v17, v14 - 408);
          }

          *(v14 - 2) = -1;
          v14 -= 410;
        }

        while (v14 != v13);
        v15 = __p[0];
      }

      __p[1] = v13;
      operator delete(v15);
    }
  }
}

void sub_C56C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C584DC(va);
  _Unwind_Resume(a1);
}

void sub_C56C78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v43 = 0u;
  *__p = 0u;
  v45 = 1065353216;
  v7 = *(a3 + 8);
  for (i = *(a3 + 16); v7 != i; v7 += 1920)
  {
    if (*(v7 + 1904) == -1 && *(v7 + 248) == 2)
    {
      if (*(v7 + 240))
      {
        goto LABEL_59;
      }

      if (HIDWORD(*v7) != 1 || *v7 + 3 >= 2)
      {
        v10 = *(a1 + 72);
        v11 = sub_502FF8(*(v10 + 4120) + 24, __ROR8__(*v7, 32), 0, "stop");
        v12 = (v11 - *v11);
        if (*v12 >= 0xDu)
        {
          v13 = v12[6];
          if (v13)
          {
            v15 = *(v11 + v13);
            v14 = *(v11 + v13 + 4);
            if (v14 != -1 && v15 != 0)
            {
              v17 = sub_93D480(*(v10 + 4128) + 24, __ROR8__(v14 | (v15 << 32), 32), 0, "station");
              v18 = (v17 - *v17);
              if (*v18 >= 0xBu)
              {
                v19 = v18[5];
                if (v19)
                {
                  if (*(v17 + v19 + *(v17 + v19)))
                  {
                    if (*(v7 + 240))
                    {
LABEL_59:
                      sub_5AF20();
                    }

                    sub_BC460C(v43, v7, v7);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v20 = (a2 + 8);
  if (v21 == v22)
  {
    goto LABEL_52;
  }

  v23 = 0;
  do
  {
    v24 = v23;
    if (*(v21 + 248) != 2)
    {
      goto LABEL_45;
    }

    if (*(v21 + 240))
    {
      goto LABEL_58;
    }

    if (!sub_A794D0(v43, v21))
    {
      goto LABEL_45;
    }

    v25 = *(v21 + 1904);
    if (v25 == -1 || *(sub_C58590(v20, v25) + 248) != 2)
    {
      goto LABEL_45;
    }

    if (*(v21 + 240))
    {
LABEL_58:
      sub_5AF20();
    }

    if (((v26 = *(a1 + 72), v27 = *v21, HIDWORD(*v21) != 1) || (v27 + 3) >= 2) && (v28 = sub_502FF8(*(v26 + 4120) + 24, __ROR8__(v27, 32), 0, "stop"), v29 = (v28 - *v28), *v29 >= 0xDu) && (v30 = v29[6]) != 0 && ((v32 = *(v28 + v30), v31 = *(v28 + v30 + 4), v31 != -1) ? (v33 = v32 == 0) : (v33 = 1), !v33 && (v34 = sub_93D480(*(v26 + 4128) + 24, __ROR8__(v31 | (v32 << 32), 32), 0, "station"), v35 = (v34 - *v34), *v35 >= 0xBu) && (v36 = v35[5]) != 0 && *(v34 + v36 + *(v34 + v36))))
    {
      v23 = v21;
      if (v24)
      {
        v23 = v24;
        if (*(v21 + 256) < *(v24 + 256))
        {
          v23 = v21;
        }
      }
    }

    else
    {
LABEL_45:
      v23 = v24;
    }

    v21 += 1920;
  }

  while (v21 != v22);
  if (!v23)
  {
LABEL_52:
    *a4 = 0;
    *(a4 + 24) = 0;
  }

  else
  {
    v48[0] = 0;
    v49 = -1;
    v37 = *(v23 + 1896);
    if (v37 != -1)
    {
      v46 = v48;
      (off_2672AC0[v37])(&v46, v23 + 272);
      v49 = v37;
    }

    sub_C5A918(&v41, v47, 1uLL);
    *a4 = v41;
    *(a4 + 16) = v42;
    v42 = 0;
    v41 = 0uLL;
    *(a4 + 24) = 1;
    if (v49 != -1)
    {
      (off_2672A90[v49])(&v46, v48);
    }
  }

  v38 = __p[0];
  if (__p[0])
  {
    do
    {
      v39 = *v38;
      operator delete(v38);
      v38 = v39;
    }

    while (v39);
  }

  v40 = v43[0];
  v43[0] = 0;
  if (v40)
  {
    operator delete(v40);
  }
}

void sub_C57058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_C570A8()
{
  v5 = 0u;
  v6 = 0;
  v7 = -1;
  v8 = 0;
  v10 = 0;
  v9 = 0u;
  v11 = 0x7FFFFFFFLL;
  operator new();
}

void sub_C57778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_C5833C(&a9);
  sub_C578E0(v9);
  sub_C5A434(&STACK[0x660]);
  v12 = STACK[0x6C0];
  if (STACK[0x6C0])
  {
    STACK[0x6C8] = v12;
    operator delete(v12);
  }

  v13 = *(v10 - 256);
  if (!v13)
  {
    sub_C5A4AC(v10 - 224);
    _Unwind_Resume(a1);
  }

  *(v10 - 248) = v13;
  operator delete(v13);
  sub_C5A4AC(v10 - 224);
  _Unwind_Resume(a1);
}

void sub_C578C8()
{
  if (!STACK[0x6C0])
  {
    JUMPOUT(0xC57898);
  }

  JUMPOUT(0xC57890);
}

void **sub_C578E0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 2);
        if (v5 != -1)
        {
          (off_2672A90[v5])(&v7, v3 - 408);
        }

        *(v3 - 2) = -1;
        v3 -= 410;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_C57988(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = 0;
  v32 = 0;
  v3 = *(a2 + 8);
  v33 = 0;
  v34 = -1;
  v28 = (a2 + 8);
  v27 = -286331153 * ((*(a2 + 16) - v3) >> 7);
  if (!v27)
  {
    *a3 = 0;
    a3[1] = 0;
    v24 = v34;
    a3[2] = 0;
    a3[3] = v24;
    a3[5] = 0;
    a3[6] = 0;
    a3[4] = 0;
    goto LABEL_58;
  }

  for (i = 0; i != v27; ++i)
  {
    v5 = sub_C58590(v28, i);
    v6 = v5;
    v7 = *(v5 + 248);
    if (v7 == 3)
    {
      if (*(v5 + 1904) != -1)
      {
        goto LABEL_51;
      }

      sub_C6A554(*(a1 + 72), *(a1 + 64), v5, *(v5 + 256), 1, &__p);
      sub_C5C5C0(&v31, v32, __p, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - __p) >> 5));
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v7 = *(v6 + 248);
    }

    if (v7 == 1)
    {
      if (*(v6 + 1904) != -1 && *(v6 + 1896) != 2)
      {
        goto LABEL_51;
      }

      sub_C6A554(*(a1 + 72), *(a1 + 64), v6, *(v6 + 256), 1, &__p);
      sub_C5C5C0(&v31, v32, __p, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - __p) >> 5));
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v7 = *(v6 + 248);
    }

    if (v7)
    {
      if (v7 != 2 || *(v6 + 1904) != -1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (*(v6 + 240))
      {
        goto LABEL_61;
      }

      if (!sub_C583D8((*(a1 + 72) + 4008), *v6, 1) && (*(v6 + 1904) == -1 || *(v6 + 1896) == 1))
      {
        sub_C6A554(*(a1 + 72), *(a1 + 64), v6, *(v6 + 256), 1, &__p);
        sub_C5C5C0(&v31, v32, __p, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - __p) >> 5));
        if (__p)
        {
          v30 = __p;
          operator delete(__p);
        }
      }

      if (*(v6 + 248) != 2 || *(v6 + 1904) != -1)
      {
        goto LABEL_51;
      }
    }

    if ((*(v6 + 1913) & 1) == 0)
    {
      if (*(v6 + 240))
      {
LABEL_61:
        sub_5AF20();
      }

      v11 = *(a1 + 72);
      v12 = *v6;
      if (HIDWORD(*v6) == 1 && (v12 + 3) < 2 || (v13 = sub_502FF8(*(v11 + 4120) + 24, __ROR8__(v12, 32), 0, "stop"), v14 = (v13 - *v13), *v14 < 0xDu) || (v15 = v14[6]) == 0 || ((v17 = *(v13 + v15), v16 = *(v13 + v15 + 4), v16 != -1) ? (v18 = v17 == 0) : (v18 = 1), v18 || (v19 = sub_93D480(*(v11 + 4128) + 24, __ROR8__(v16 | (v17 << 32), 32), 0, "station"), v20 = (v19 - *v19), *v20 < 0xBu) || (v21 = v20[5]) == 0 || !*(v19 + v21 + *(v19 + v21))))
      {
        sub_C6A554(*(a1 + 72), *(a1 + 64), v6, *(v6 + 256), 1, &__p);
        sub_C5C5C0(&v31, v32, __p, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - __p) >> 5));
        if (__p)
        {
          v30 = __p;
          operator delete(__p);
        }
      }
    }

LABEL_51:
    v23 = v31;
    v22 = v32;
    if (0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 5))
    {
      operator new();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v22 != v23)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  a3[3] = v34;
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
LABEL_58:
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_C57EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (v19)
  {
    *(a9 + 8) = v19;
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
    v21 = __p;
    if (!__p)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }
  }

  operator delete(v21);
  _Unwind_Resume(exception_object);
}

uint64_t sub_C57F7C@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, char **a3@<X8>)
{
  v4 = (result + 8);
  if (0xEEEEEEEEEEEEEEEFLL * ((*(result + 16) - *(result + 8)) >> 7) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v5 = result;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 != -1)
  {
    v6 = a2;
    do
    {
      v7 = *v4 + 1920 * v6;
      if (*(v7 + 1904) != -1)
      {
        v8 = a3[1];
        if (v8 >= a3[2])
        {
          v10 = sub_C59034(a3, v7 + 264);
        }

        else
        {
          *(v8 + 8) = 0;
          *(v8 + 1632) = -1;
          v9 = *(v7 + 1896);
          if (v9 != -1)
          {
            v18 = v8 + 8;
            (off_2672AC0[v9])(&v18, v7 + 272);
            *(v8 + 1632) = v9;
          }

          v10 = (v8 + 1640);
        }

        a3[1] = v10;
      }

      result = sub_C58590(v4, v6);
      v6 = *(result + 1904);
    }

    while (v6 != -1);
  }

  if (!*v5)
  {
    v11 = *a3;
    v12 = a3[1];
    if (*a3 != v12)
    {
      v13 = v12 - 1640;
      if (v12 - 1640 > v11)
      {
        v14 = v11 + 1640;
        do
        {
          result = sub_C596D8((v14 - 1632), v13 + 8);
          v13 -= 1640;
          v15 = v14 >= v13;
          v14 += 1640;
        }

        while (!v15);
      }
    }
  }

  return result;
}

void sub_C58108(_Unwind_Exception *a1)
{
  sub_C58D6C(v2);
  *(v1 + 8) = v3;
  sub_C578E0(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_C58140(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 2);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 4 * a2;
}

void sub_C5825C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_C5833C(uint64_t a1)
{
  if (*(a1 + 1608) == 1)
  {
    sub_3EEA68(a1 + 512);
  }

  v2 = *(a1 + 496);
  if (v2 != -1)
  {
    (off_2672AB0[v2])(&v5, a1 + 256);
  }

  *(a1 + 496) = -1;
  v3 = *(a1 + 240);
  if (v3 != -1)
  {
    (off_2672AB0[v3])(&v6, a1);
  }

  *(a1 + 240) = -1;
  return a1;
}

BOOL sub_C583D8(uint64_t *a1, uint64_t a2, char a3)
{
  v16 = a3;
  v4 = sub_503310(*a1 + 24, __ROR8__(a2, 32), 0, "access point");
  v5 = (v4 - *v4);
  if (*v5 < 0x15u)
  {
    return 0;
  }

  v6 = v5[10];
  if (!v6)
  {
    return 0;
  }

  v7 = (v4 + v6 + *(v4 + v6));
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14[0] = a1;
  v14[1] = &v16;
  v18 = v7 + 1;
  v17 = &v7[2 * *v7 + 1];
  sub_C5A570(&v18, &v17, &v11, &v15, v14);
  v8 = v11;
  v9 = v12;
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v8 != v9;
}

void sub_C584C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C584DC(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 2);
          if (v5 != -1)
          {
            (off_2672A90[v5])(&v7, v3 - 408);
          }

          *(v3 - 2) = -1;
          v3 -= 410;
        }

        while (v3 != v2);
        v4 = *a1;
      }

      *(a1 + 8) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

unint64_t sub_C58590(void *a1, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 7) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 7));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 1920 * a2;
}

void sub_C586CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t *sub_C587B8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  return result;
}

uint64_t sub_C587D8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 240) = -1;
  v4 = *(a2 + 240);
  if (v4 != -1)
  {
    v9 = a1;
    (off_2672AE0[v4])(&v9, a2);
    *(a1 + 240) = v4;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 496) = -1;
  v5 = *(a2 + 496);
  if (v5 != -1)
  {
    v9 = a1 + 256;
    (off_2672AE0[v5])(&v9, a2 + 256);
    *(a1 + 496) = v5;
  }

  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = 0;
  *(a1 + 536) = 0;
  *(a1 + 528) = 0;
  v6 = *(a2 + 520);
  v7 = *(a2 + 528);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_C58904(_Unwind_Exception *a1)
{
  sub_A54EB0(v2);
  sub_A54CEC(v1);
  _Unwind_Resume(a1);
}

void sub_C58934(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 528) = v5;
    operator delete(v5);
  }

  sub_A54CEC(v2);
  sub_A54CEC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_C58960(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 72) = 0;
  *(a1 + 16) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v9;
  v10 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v10;
  sub_81988((a1 + 152), a2 + 152);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_C58AE8(a1 + 176, *(a2 + 176), *(a2 + 184), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 184) - *(a2 + 176)) >> 3));
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_C58AE8(a1 + 200, *(a2 + 200), *(a2 + 208), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 208) - *(a2 + 200)) >> 3));
  *(a1 + 224) = *(a2 + 224);
  return a1;
}

void sub_C58A98(_Unwind_Exception *a1)
{
  sub_48C8F4(v2);
  sub_44D36C(v1);
  _Unwind_Resume(a1);
}

void sub_C58AC8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_C58AE8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x276276276276277)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_C58C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49BBE8(va);
  *(v10 + 8) = v11;
  sub_49DEB0(&a9);
  _Unwind_Resume(a1);
}

void sub_C58C34(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_C58D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49A814(va);
  *(v10 + 8) = v11;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_C58D6C(uint64_t a1)
{
  v2 = *(a1 + 1624);
  if (v2 != -1)
  {
    (off_2672A90[v2])(&v4, a1);
  }

  *(a1 + 1624) = -1;
  return a1;
}

uint64_t sub_C58DC8(uint64_t a1)
{
  v2 = *(a1 + 1632);
  if (v2 != -1)
  {
    (off_2672A90[v2])(&v4, a1 + 8);
  }

  *(a1 + 1632) = -1;
  return a1;
}

uint64_t sub_C58E24(uint64_t a1)
{
  v2 = *(a1 + 1624);
  if (v2 != -1)
  {
    (off_2672A90[v2])(&v4, a1);
  }

  *(a1 + 1624) = -1;
  return a1;
}

void sub_C58E80(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v3) >> 5)
  {
    if (a2)
    {
      v9 = &v3[4 * a2];
      do
      {
        *v3 = 0;
        v3[1] = 0;
        v3[2] = 0;
        v3[3] = -1;
        v3 += 4;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = (v3 - *a1) >> 5;
    v6 = v5 + a2;
    if ((v5 + a2) >> 59)
    {
      sub_1794();
    }

    v7 = v4 - *a1;
    if (v7 >> 4 > v6)
    {
      v6 = v7 >> 4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 32 * v5;
    v11 = (32 * v5 + 32 * a2);
    v12 = (32 * v5);
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = -1;
      v12 += 4;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = (v10 + *a1 - v14);
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        *v17 = *v16;
        v18 = *(v16 + 3);
        v17[2] = *(v16 + 2);
        *v16 = 0;
        *(v16 + 1) = 0;
        *(v16 + 2) = 0;
        v17[3] = v18;
        v16 += 32;
        v17 += 4;
      }

      while (v16 != v14);
      do
      {
        v19 = *v13;
        if (*v13)
        {
          *(v13 + 1) = v19;
          operator delete(v19);
        }

        v13 += 32;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

unsigned int *sub_C59034(char **a1, uint64_t a2)
{
  v2 = 0x4FEC04FEC04FEC05 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x27F6027F6027F6)
  {
    sub_1794();
  }

  if (0x9FD809FD809FD80ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9FD809FD809FD80ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FEC04FEC04FEC05 * ((a1[2] - *a1) >> 3)) >= 0x13FB013FB013FBLL)
  {
    v5 = 0x27F6027F6027F6;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x27F6027F6027F6)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  LOBYTE(dword_8[v6 / 4]) = 0;
  *&stru_650.segname[1640 * v2] = -1;
  v7 = *(a2 + 1632);
  if (v7 != -1)
  {
    v17 = 1640 * v2 + 8;
    (off_2672AC0[v7])(&v17, a2 + 8);
    *&stru_650.segname[1640 * v2] = v7;
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 - (v9 - *a1));
  v11 = (v6 + 1640);
  if (v9 != *a1)
  {
    v12 = 0;
    v13 = -8 * ((v9 - *a1) >> 3) + 1640 * v2;
    do
    {
      LOBYTE(v10[v12 / 4 + 2]) = 0;
      *(v13 + v12 + 1632) = -1;
      v14 = *&v8[v12 + 1632];
      if (v14 != -1)
      {
        v17 = &v10[v12 / 4 + 2];
        (off_2672AF0[v14])(&v17, &v8[v12 + 8]);
        *(v13 + v12 + 1632) = v14;
      }

      v12 += 1640;
    }

    while (&v8[v12] != v9);
    do
    {
      v15 = *(v8 + 408);
      if (v15 != -1)
      {
        (off_2672A90[v15])(&v17, v8 + 8);
      }

      *(v8 + 408) = -1;
      v8 += 1640;
    }

    while (v8 != v9);
    v8 = *a1;
    v11 = (v6 + 1640);
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v11;
}

void sub_C59284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_C58D6C(v9);
  sub_C592A8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_C592A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 1640;
      *(a1 + 16) = v3 - 1640;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_2672A90[v5])(&v7, v3 - 1632);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_C5934C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 1640)
    {
      v6 = *(v4 - 8);
      if (v6 != -1)
      {
        (off_2672A90[v6])(&v8, v4 - 1632);
      }

      *(v4 - 8) = -1;
    }
  }

  return a1;
}

uint64_t *sub_C593F8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  return result;
}

uint64_t sub_C59418(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 240) = -1;
  v4 = *(a2 + 240);
  if (v4 != -1)
  {
    v7 = a1;
    (off_2672B10[v4])(&v7, a2);
    *(a1 + 240) = v4;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 496) = -1;
  v5 = *(a2 + 496);
  if (v5 != -1)
  {
    v7 = a1 + 256;
    (off_2672B10[v5])(&v7, a2 + 256);
    *(a1 + 496) = v5;
  }

  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 544) = *(a2 + 544);
  return a1;
}

__n128 sub_C59520(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(v2 + 63) = *(a2 + 63);
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 16) = v3;
  *v2 = *a2;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = 0;
  *(v2 + 72) = *(a2 + 72);
  *(v2 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v6 = *(a2 + 96);
  *(v2 + 112) = *(a2 + 112);
  *(v2 + 96) = v6;
  v7 = *(a2 + 120);
  *(v2 + 136) = *(a2 + 136);
  *(v2 + 120) = v7;
  *(v2 + 152) = *(a2 + 152);
  *(v2 + 160) = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 176) = *(a2 + 176);
  *(v2 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 200) = *(a2 + 200);
  *(v2 + 216) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  result = *(a2 + 224);
  *(v2 + 224) = result;
  return result;
}

uint64_t sub_C595E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 240) = -1;
  v4 = *(a2 + 240);
  if (v4 != -1)
  {
    v7 = a1;
    (off_2672B10[v4])(&v7, a2);
    *(a1 + 240) = v4;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 496) = -1;
  v5 = *(a2 + 496);
  if (v5 != -1)
  {
    v7 = a1 + 256;
    (off_2672B10[v5])(&v7, a2 + 256);
    *(a1 + 496) = v5;
  }

  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = 0;
  *(a1 + 1608) = 0;
  if (*(a2 + 1608) == 1)
  {
    sub_4C6AE8(a1 + 512, a2 + 512);
    *(a1 + 1608) = 1;
  }

  *(a1 + 1616) = *(a2 + 1616);
  return a1;
}

uint64_t sub_C596D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 1624);
  v3 = *(a2 + 1624);
  if (v2 != -1 || v3 != -1)
  {
    v6 = result;
    v7 = v2 == -1;
    if (v2 == -1)
    {
      v2 = -1;
    }

    if (v3 != -1)
    {
      v7 = v2 == v3;
    }

    if (v7)
    {
      return (off_2672B20[v2])(v12, result, a2);
    }

    else
    {
      v12[0] = 0;
      v13 = -1;
      if (v3 != -1)
      {
        v14 = v12;
        result = (off_2672AF0[v3])(&v14, a2);
        v13 = v3;
        v8 = *(a2 + 1624);
        if (v8 != -1)
        {
          result = (off_2672A90[v8])(&v14, a2);
        }
      }

      *(a2 + 1624) = -1;
      v9 = *(v6 + 1624);
      if (v9 != -1)
      {
        v14 = a2;
        result = (off_2672B50[v9])(&v14, v6);
        *(a2 + 1624) = v9;
        v10 = *(v6 + 1624);
        if (v10 != -1)
        {
          result = (off_2672A90[v10])(&v14, v6);
        }
      }

      *(v6 + 1624) = -1;
      v11 = v13;
      if (v13 != -1)
      {
        v14 = v6;
        result = (off_2672B50[v13])(&v14, v12);
        *(v6 + 1624) = v11;
        if (v13 != -1)
        {
          return (off_2672A90[v13])(&v14, v12);
        }
      }
    }
  }

  return result;
}

void sub_C59890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C58E24(va);
  _Unwind_Resume(a1);
}

void sub_C598B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 2);
  v4 = *a2;
  v5 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v5;
  *a3 = v4;
  *(a3 + 2) = v3;
}

void sub_C598EC(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v7 = -1;
  v4 = *(a1 + 240);
  if (v4 != -1)
  {
    v16 = v6;
    (off_2672B10[v4])(&v16, a1);
    v7 = v4;
  }

  v8 = *(a1 + 248);
  v9[0] = 0;
  v10 = -1;
  v5 = *(a1 + 496);
  if (v5 != -1)
  {
    v16 = v9;
    (off_2672B10[v5])(&v16, a1 + 256);
    v10 = v5;
  }

  v11 = *(a1 + 504);
  v12 = *(a1 + 512);
  __p = *(a1 + 520);
  v14 = *(a1 + 536);
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  v15 = *(a1 + 544);
  sub_C59A64(a1, a2);
  sub_C59A64(a2, v6);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v10 != -1)
  {
    (off_2672AB0[v10])(&v16, v9);
  }

  v10 = -1;
  if (v7 != -1)
  {
    (off_2672AB0[v7])(&v16, v6);
  }
}

uint64_t sub_C59A64(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  v5 = *(a2 + 240);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_2672AB0[v4])(&v10, a1);
    *(a1 + 240) = -1;
    goto LABEL_6;
  }

  v10 = a1;
  (off_2672B40[v5])(&v10, a1, a2);
LABEL_6:
  *(a1 + 248) = *(a2 + 248);
  v6 = *(a1 + 496);
  v7 = *(a2 + 496);
  if (v6 == -1)
  {
    if (v7 == -1)
    {
      goto LABEL_11;
    }
  }

  else if (v7 == -1)
  {
    (off_2672AB0[v6])(&v10, a1 + 256);
    *(a1 + 496) = -1;
    goto LABEL_11;
  }

  v10 = a1 + 256;
  (off_2672B40[v7])(&v10);
LABEL_11:
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  v8 = *(a1 + 520);
  if (v8)
  {
    *(a1 + 528) = v8;
    operator delete(v8);
    *(a1 + 520) = 0;
    *(a1 + 528) = 0;
    *(a1 + 536) = 0;
  }

  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 544) = *(a2 + 544);
  return a1;
}

uint64_t *sub_C59BC4(uint64_t *result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 240);
  if (v4 != -1)
  {
    if (!v4)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_2672AB0[v4])(&v6, v3);
    a3 = v5;
  }

  *(v3 + 240) = -1;
  *v3 = *a3;
  *(v3 + 240) = 0;
  return result;
}

__n128 sub_C59C4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 240);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_2672AB0[v4])(&v12, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 240) = -1;
    *v3 = *a3;
    v7 = *(a3 + 16);
    v8 = *(a3 + 32);
    v9 = *(a3 + 48);
    *(v3 + 63) = *(a3 + 63);
    *(v3 + 32) = v8;
    *(v3 + 48) = v9;
    *(v3 + 16) = v7;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 72) = 0;
    *(v3 + 72) = *(a3 + 72);
    *(v3 + 88) = *(a3 + 88);
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    v10 = *(a3 + 96);
    *(v3 + 112) = *(a3 + 112);
    *(v3 + 96) = v10;
    v11 = *(a3 + 120);
    *(v3 + 136) = *(a3 + 136);
    *(v3 + 120) = v11;
    *(v3 + 152) = *(a3 + 152);
    *(v3 + 160) = *(a3 + 160);
    *(a3 + 152) = 0;
    *(a3 + 160) = 0;
    *(a3 + 168) = 0;
    *(v3 + 176) = 0;
    *(v3 + 184) = 0;
    *(v3 + 192) = 0;
    *(v3 + 176) = *(a3 + 176);
    *(v3 + 192) = *(a3 + 192);
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    *(a3 + 192) = 0;
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
    *(v3 + 216) = 0;
    *(v3 + 200) = *(a3 + 200);
    *(v3 + 216) = *(a3 + 216);
    *(a3 + 208) = 0;
    *(a3 + 216) = 0;
    *(a3 + 200) = 0;
    result = *(a3 + 224);
    *(v3 + 224) = result;
    *(v3 + 240) = 1;
    return result;
  }

  sub_49C5C0(a2, a3);
  return result;
}

uint64_t sub_C59DA4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v8[0] = 0;
  v9 = -1;
  v5 = *(a1 + 240);
  if (v5 != -1)
  {
    v17 = v8;
    (off_2672B10[v5])(&v17, a1, a3);
    v9 = v5;
  }

  v10 = *(a1 + 248);
  v11[0] = 0;
  v12 = -1;
  v6 = *(a1 + 496);
  if (v6 != -1)
  {
    v17 = v11;
    (off_2672B10[v6])(&v17, a1 + 256);
    v12 = v6;
  }

  v13 = *(a1 + 504);
  v14[0] = 0;
  v15 = 0;
  if (*(a1 + 1608) == 1)
  {
    sub_4C6AE8(v14, a1 + 512);
    v15 = 1;
  }

  v16 = *(a1 + 1616);
  sub_C59F1C(a1, a2);
  result = sub_C59F1C(a2, v8);
  if (v15 == 1)
  {
    result = sub_3EEA68(v14);
  }

  if (v12 != -1)
  {
    result = (off_2672AB0[v12])(&v17, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    return (off_2672AB0[v9])(&v17, v8);
  }

  return result;
}

uint64_t sub_C59F1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  v5 = *(a2 + 240);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_2672AB0[v4])(&v10, a1);
    *(a1 + 240) = -1;
    goto LABEL_6;
  }

  v10 = a1;
  (off_2672B40[v5])(&v10, a1, a2);
LABEL_6:
  *(a1 + 248) = *(a2 + 248);
  v6 = *(a1 + 496);
  v7 = *(a2 + 496);
  if (v6 == -1)
  {
    if (v7 == -1)
    {
      goto LABEL_11;
    }
  }

  else if (v7 == -1)
  {
    (off_2672AB0[v6])(&v10, a1 + 256);
    *(a1 + 496) = -1;
    goto LABEL_11;
  }

  v10 = a1 + 256;
  (off_2672B40[v7])(&v10);
LABEL_11:
  *(a1 + 504) = *(a2 + 504);
  if (*(a1 + 1608) == *(a2 + 1608))
  {
    if (*(a1 + 1608))
    {
      sub_4192A0(a1 + 512, a2 + 512);
    }
  }

  else
  {
    v8 = a1 + 512;
    if (*(a1 + 1608))
    {
      sub_3EEA68(v8);
      *(a1 + 1608) = 0;
    }

    else
    {
      sub_4C6AE8(v8, a2 + 512);
      *(a1 + 1608) = 1;
    }
  }

  *(a1 + 1616) = *(a2 + 1616);
  return a1;
}

uint64_t *sub_C5A08C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  return result;
}

uint64_t sub_C5A0AC(char **a1, uint64_t a2)
{
  v2 = 0x4FEC04FEC04FEC05 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x27F6027F6027F6)
  {
    sub_1794();
  }

  if (0x9FD809FD809FD80ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9FD809FD809FD80ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FEC04FEC04FEC05 * ((a1[2] - *a1) >> 3)) >= 0x13FB013FB013FBLL)
  {
    v5 = 0x27F6027F6027F6;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x27F6027F6027F6)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_C595E8(v6 + 8, a2);
  v7 = *a1;
  v8 = a1[1];
  v9 = (1640 * v2 - (v8 - *a1));
  *&stru_650.segname[1640 * v2] = 3;
  if (v8 != v7)
  {
    v15 = 1640 * v2;
    v10 = 0;
    v11 = -8 * ((v8 - v7) >> 3) + 1640 * v2;
    do
    {
      LOBYTE(v9[v10 / 4 + 2]) = 0;
      *(v11 + v10 + 1632) = -1;
      v12 = *&v7[v10 + 1632];
      if (v12 != -1)
      {
        v16 = &v9[v10 / 4 + 2];
        (off_2672AF0[v12])(&v16, &v7[v10 + 8]);
        *(v11 + v10 + 1632) = v12;
      }

      v10 += 1640;
    }

    while (&v7[v10] != v8);
    v6 = v15;
    do
    {
      v13 = *(v7 + 408);
      if (v13 != -1)
      {
        (off_2672A90[v13])(&v17, v7 + 8);
      }

      *(v7 + 408) = -1;
      v7 += 1640;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = (v6 + 1640);
  a1[2] = (1640 * v5);
  if (v7)
  {
    operator delete(v7);
  }

  return v6 + 1640;
}

uint64_t sub_C5A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = 0;
  *(a1 + 240) = -1;
  v10 = *(a2 + 240);
  if (v10 != -1)
  {
    v13 = a1;
    (off_2672AE0[v10])(&v13, a2);
    *(a1 + 240) = v10;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 496) = -1;
  v11 = *(a3 + 240);
  if (v11 != -1)
  {
    v13 = a1 + 256;
    (off_2672AE0[v11])(&v13, a3);
    *(a1 + 496) = v11;
  }

  *(a1 + 504) = *(a3 + 248);
  *(a1 + 512) = 0;
  *(a1 + 1608) = 0;
  if (*(a4 + 1096) == 1)
  {
    sub_790648(a1 + 512, a4);
    *(a1 + 1608) = 1;
  }

  *(a1 + 1616) = a5;
  return a1;
}

void sub_C5A3D4(_Unwind_Exception *a1)
{
  if (*(v1 + 1608) == 1)
  {
    sub_3EEA68(v1 + 512);
  }

  sub_A54CEC(v2);
  sub_A54CEC(v1);
  _Unwind_Resume(a1);
}

void sub_C5A404(_Unwind_Exception *a1)
{
  sub_A54EB0(v2);
  sub_A54CEC(v1);
  _Unwind_Resume(a1);
}

char **sub_C5A434(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 8) == 1)
        {
          sub_3EEA68((v3 - 1104));
        }

        v3 -= 1152;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_C5A4AC(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 32);
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_9:
      v5 = *(a1 + 40);
      v6 = v2;
      if (v5 != v2)
      {
        v7 = *(a1 + 40);
        do
        {
          v9 = *(v7 - 4);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v5 - 3) = v8;
            operator delete(v8);
          }

          v5 = v7;
        }

        while (v7 != v2);
        v6 = *(a1 + 32);
      }

      *(a1 + 40) = v2;
      operator delete(v6);
      v3 = *a1;
      if (*a1)
      {
        goto LABEL_5;
      }

      return a1;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *a1;
  if (*a1)
  {
LABEL_5:
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_C5A570(unsigned int **a1, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v6 = *a1;
  if (*a1 != *a2)
  {
    while (1)
    {
      v11 = *a5;
      v12 = **a5;
      if (*(v12 + 16) != 1)
      {
        break;
      }

      if (sub_2D5204(*v12))
      {
        v12 = *v11;
        goto LABEL_10;
      }

LABEL_5:
      v6 = *a1 + 2;
      *a1 = v6;
      if (v6 == *a2)
      {
        return a3;
      }
    }

    if (v6)
    {
LABEL_10:
      v13 = v6[1] | (*v6 << 32);
    }

    else
    {
      v13 = 0xFFFFFFFFLL;
    }

    v14 = *a5[1];
    v15 = sub_503184(v12 + 24, __ROR8__(v13, 32), 0, "road access point");
    v16 = (v15 - *v15);
    if (*v16 >= 0xDu)
    {
      v17 = v16[6];
      if (v17)
      {
        v18 = (v15 + v17 + *(v15 + v17));
        v21 = *v18;
        v19 = (v18 + 1);
        v20 = v21;
        if (v21)
        {
          v22 = v20;
          v23 = v19;
          while (*v23 != v14)
          {
            ++v23;
            if (!--v22)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v23 = v19;
        }

        if (v23 != &v19[v20])
        {
          if (*a1)
          {
            v10 = (*a1)[1] | (**a1 << 32);
          }

          else
          {
            v10 = 0xFFFFFFFFLL;
          }

          v25 = v10;
          sub_2512DC(a3, &v25);
        }
      }
    }

    goto LABEL_5;
  }

  return a3;
}

uint64_t *sub_C5A6E0(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x4FEC04FEC04FEC05 * ((v2 - *a2) >> 3)) < 0x27F6027F6027F7)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_C5A824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C5A860(va);
  _Unwind_Resume(a1);
}

void sub_C5A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  sub_C58D6C(v5);
  sub_C5934C(va1);
  *(v3 + 8) = v4;
  sub_C5A860(va);
  _Unwind_Resume(a1);
}

void ***sub_C5A860(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 2);
          if (v6 != -1)
          {
            (off_2672A90[v6])(&v8, v4 - 408);
          }

          *(v4 - 2) = -1;
          v4 -= 410;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t *sub_C5A918(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x27F6027F6027F7)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_C5AA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C5A860(va);
  _Unwind_Resume(a1);
}

void sub_C5AA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  sub_C58D6C(v5);
  sub_C5934C(va1);
  *(v3 + 8) = v4;
  sub_C5A860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C5AA90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a3;
  v9 = a1[1];
  v8 = a1[2];
  if (0x4FEC04FEC04FEC05 * ((v8 - v9) >> 3) >= a5)
  {
    v14 = v9 - a2;
    if (0x4FEC04FEC04FEC05 * ((v9 - a2) >> 3) < a5)
    {
      v16 = v14 + a3;
      a1[1] = sub_C5B200(a1, v14 + a3, a4, a1[1]);
      if (v14 < 1)
      {
        return v5;
      }

      sub_C5AE88(a1, v5, v9, v5 + 1640 * a5);
      for (i = (v5 + 1632); ; i += 410)
      {
        while (1)
        {
          v18 = *i;
          v19 = *(v6 + 1632);
          if (v18 != -1)
          {
            break;
          }

          if (v19 != -1)
          {
            goto LABEL_16;
          }

LABEL_17:
          v6 += 1640;
          i += 410;
          if (v6 == v16)
          {
            return v5;
          }
        }

        if (v19 != -1)
        {
LABEL_16:
          __p = i - 406;
          (off_2672B90[v19])(&__p);
          goto LABEL_17;
        }

        (off_2672A90[v18])(&__p, i - 406);
        *i = -1;
        v6 += 1640;
        if (v6 == v16)
        {
          return v5;
        }
      }
    }

    v20 = 1640 * a5;
    sub_C5AE88(a1, a2, a1[1], a2 + 1640 * a5);
    v21 = v20 + v6;
    for (j = (v5 + 1632); ; j += 410)
    {
      while (1)
      {
        v23 = *j;
        v24 = *(v6 + 1632);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_24;
        }

LABEL_25:
        v6 += 1640;
        j += 410;
        if (v6 == v21)
        {
          return v5;
        }
      }

      if (v24 != -1)
      {
LABEL_24:
        __p = j - 406;
        (off_2672B90[v24])(&__p);
        goto LABEL_25;
      }

      (off_2672A90[v23])(&__p, j - 406);
      *j = -1;
      v6 += 1640;
      if (v6 == v21)
      {
        return v5;
      }
    }
  }

  v10 = *a1;
  v11 = a5 + 0x4FEC04FEC04FEC05 * ((v9 - *a1) >> 3);
  if (v11 > 0x27F6027F6027F6)
  {
    sub_1794();
  }

  v12 = 0x4FEC04FEC04FEC05 * ((v8 - v10) >> 3);
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x13FB013FB013FBLL)
  {
    v13 = 0x27F6027F6027F6;
  }

  else
  {
    v13 = v11;
  }

  v39 = a1;
  if (v13)
  {
    if (v13 <= 0x27F6027F6027F6)
    {
      operator new();
    }

    sub_1808();
  }

  v25 = 0;
  v26 = 8 * ((a2 - v10) >> 3);
  __p = 0;
  v36 = v26;
  v37 = v26;
  v38 = 0;
  v27 = 1640 * a5;
  v34 = v26 + 1640 * a5;
  do
  {
    *(v26 + v25 + 8) = 0;
    *(v26 + v25 + 1632) = -1;
    v28 = *(v6 + v25 + 1632);
    if (v28 != -1)
    {
      v40 = v26 + v25 + 8;
      (off_2672AC0[v28])(&v40, v6 + v25 + 8, a3, a4);
      *(v26 + v25 + 1632) = v28;
    }

    v25 += 1640;
  }

  while (v27 != v25);
  v37 = v34;
  v5 = sub_C5AFF4(a1, &__p, v5);
  v29 = v36;
  v30 = v37;
  if (v37 != v36)
  {
    do
    {
      v31 = v30 - 1640;
      v37 = v30 - 1640;
      v32 = *(v30 - 8);
      if (v32 != -1)
      {
        (off_2672A90[v32])(&v40, v30 - 1632);
        v31 = v37;
      }

      *(v30 - 8) = -1;
      v30 = v31;
    }

    while (v31 != v29);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_C5AE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_C592A8(va);
  _Unwind_Resume(a1);
}

void sub_C5AE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_C58D6C(v14 + v13 + 8);
  a13 = v14 + v13;
  sub_C592A8(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_C5AE88(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(result + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      *(v6 + v10 + 8) = 0;
      *(v6 + v10 + 1632) = -1;
      v11 = *(v7 + v10 + 1632);
      if (v11 != -1)
      {
        v16 = v6 + v10 + 8;
        result = (off_2672AF0[v11])(&v16, v7 + v10 + 8);
        *(v6 + v10 + 1632) = v11;
      }

      v10 += 1640;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(v5 + 8) = v8;
  if (v6 != a4)
  {
    v12 = 0;
    v13 = a4 - v6;
    do
    {
      while (1)
      {
        v14 = *(v6 + v12 - 8);
        v15 = *(v7 + v12 - 8);
        if (v14 != -1)
        {
          break;
        }

        if (v15 != -1)
        {
          goto LABEL_10;
        }

LABEL_11:
        v12 -= 1640;
        if (v13 == v12)
        {
          return result;
        }
      }

      if (v15 != -1)
      {
LABEL_10:
        v16 = v6 + v12 - 1632;
        result = (off_2672B70[v15])(&v16);
        goto LABEL_11;
      }

      result = (off_2672A90[v14])(&v16, v6 + v12 - 1632);
      *(v6 + v12 - 8) = -1;
      v12 -= 1640;
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t sub_C5AFF4(uint64_t *a1, void *a2, uint64_t a3)
{
  v22 = a2[1];
  v6 = a1[1];
  if (v6 != a3)
  {
    v7 = a2[2];
    v8 = a3;
    do
    {
      *(v7 + 8) = 0;
      *(v7 + 1632) = -1;
      v9 = *(v8 + 1632);
      if (v9 != -1)
      {
        v23 = v7 + 8;
        (off_2672AF0[v9])(&v23, v8 + 8);
        *(v7 + 1632) = v9;
      }

      v8 += 1640;
      v7 += 1640;
    }

    while (v8 != v6);
    v10 = a3;
    do
    {
      v11 = *(v10 + 1632);
      if (v11 != -1)
      {
        (off_2672A90[v11])(&v23, v10 + 8);
      }

      *(v10 + 1632) = -1;
      v10 += 1640;
    }

    while (v10 != v6);
  }

  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v12 = *a1;
  v13 = a2[1] + *a1 - a3;
  if (*a1 != a3)
  {
    v21 = a2[1] + *a1 - a3;
    v14 = *a1;
    do
    {
      *(v13 + 8) = 0;
      *(v13 + 1632) = -1;
      v15 = *(v14 + 1632);
      if (v15 != -1)
      {
        v23 = v13 + 8;
        (off_2672AF0[v15])(&v23, v14 + 8);
        *(v13 + 1632) = v15;
      }

      v14 += 1640;
      v13 += 1640;
    }

    while (v14 != a3);
    v13 = v21;
    do
    {
      v16 = *(v12 + 1632);
      if (v16 != -1)
      {
        (off_2672A90[v16])(&v23, v12 + 8);
      }

      *(v12 + 1632) = -1;
      v12 += 1640;
    }

    while (v12 != a3);
  }

  a2[1] = v13;
  v17 = *a1;
  *a1 = v13;
  a1[1] = v17;
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
  return v22;
}

uint64_t sub_C5B200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a4;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      *(v4 + 8) = 0;
      *(v4 + 1632) = -1;
      v8 = *(v7 + 1632);
      if (v8 != -1)
      {
        v10 = v4 + 8;
        (off_2672AC0[v8])(&v10, v7 + 8);
        *(v4 + 1632) = v8;
        v4 = v9;
      }

      v7 += 1640;
      v4 += 1640;
      v9 = v4;
    }

    while (v7 != a3);
  }

  return v4;
}

void sub_C5B2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C58D6C(v3);
  sub_C5934C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_C5B2E4(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 1624);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_2672A90[v2])(&v3, v1);
  }

  *(v1 + 1624) = 0;
  return result;
}

uint64_t sub_C5B33C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 1624);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_2672A90[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 1624) = -1;
    result = sub_C59418(v3, a3);
    *(v3 + 1624) = 1;
    return result;
  }

  return sub_C59A64(a2, a3);
}

uint64_t *sub_C5B3E0(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 1624);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      v5 = *a3;
      *(a2 + 8) = *(a3 + 2);
      *a2 = v5;
      return result;
    }

    v6 = a3;
    result = (off_2672A90[v4])(&v8, v3);
    a3 = v6;
  }

  *(v3 + 1624) = -1;
  v7 = *a3;
  *(v3 + 8) = *(a3 + 2);
  *v3 = v7;
  *(v3 + 1624) = 2;
  return result;
}

uint64_t sub_C5B480(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 1624);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 3)
  {
    v6 = a3;
    (off_2672A90[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 1624) = -1;
    result = sub_C595E8(v3, a3);
    *(v3 + 1624) = 3;
    return result;
  }

  return sub_C59F1C(a2, a3);
}

uint64_t *sub_C5B524(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 1624);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_2672A90[v2])(&v3, v1);
  }

  *(v1 + 1624) = 0;
  return result;
}

uint64_t *sub_C5B584(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 1624);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      v5 = *a3;
      *(a2 + 8) = *(a3 + 2);
      *a2 = v5;
      return result;
    }

    v6 = a3;
    result = (off_2672A90[v4])(&v8, v3);
    a3 = v6;
  }

  *(v3 + 1624) = -1;
  v7 = *a3;
  *(v3 + 8) = *(a3 + 2);
  *v3 = v7;
  *(v3 + 1624) = 2;
  return result;
}

void sub_C5B62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1624) == 1)
  {

    sub_C5B73C(a2, a3);
  }

  else
  {
    sub_C587D8(v5, a3);
    v4 = *(a1 + 1624);
    if (v4 != -1)
    {
      (off_2672A90[v4])(&v11, a1);
    }

    *(a1 + 1624) = -1;
    sub_C59418(a1, v5);
    *(a1 + 1624) = 1;
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    if (v8 != -1)
    {
      (off_2672AB0[v8])(&v11, &v7);
    }

    v8 = -1;
    if (v6 != -1)
    {
      (off_2672AB0[v6])(&v11, v5);
    }
  }
}

uint64_t sub_C5B73C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  v5 = *(a2 + 240);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_2672AB0[v4])(&v9, a1);
    *(a1 + 240) = -1;
    goto LABEL_6;
  }

  v9 = a1;
  (off_2672BB0[v5])(&v9, a1, a2);
LABEL_6:
  *(a1 + 248) = *(a2 + 248);
  v6 = *(a1 + 496);
  v7 = *(a2 + 496);
  if (v6 == -1)
  {
    if (v7 == -1)
    {
      goto LABEL_11;
    }
  }

  else if (v7 == -1)
  {
    (off_2672AB0[v6])(&v9, a1 + 256);
    *(a1 + 496) = -1;
    goto LABEL_11;
  }

  v9 = a1 + 256;
  (off_2672BB0[v7])(&v9);
LABEL_11:
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  if (a1 != a2)
  {
    sub_31F64((a1 + 520), *(a2 + 520), *(a2 + 528), (*(a2 + 528) - *(a2 + 520)) >> 3);
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

uint64_t *sub_C5B878(uint64_t *result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 240);
  if (v4 != -1)
  {
    if (!v4)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_2672AB0[v4])(&v6, v3);
    a3 = v5;
  }

  *(v3 + 240) = -1;
  *v3 = *a3;
  *(v3 + 240) = 0;
  return result;
}

void *sub_C5B908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 240) == 1)
  {

    return sub_C5BA4C(a2, a3);
  }

  else
  {
    sub_C58960(v11, a3);
    v5 = *(a1 + 240);
    if (v5 != -1)
    {
      (off_2672AB0[v5])(&v26, a1);
    }

    v6 = *v12;
    *(a1 + 32) = v11[2];
    *(a1 + 48) = v6;
    *(a1 + 63) = *&v12[15];
    *(a1 + 88) = v14;
    *(a1 + 112) = v16;
    *(a1 + 152) = v19;
    v7 = v24;
    *(a1 + 192) = v22;
    v8 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v8;
    *(a1 + 72) = v13;
    v13 = 0uLL;
    *(a1 + 96) = v15;
    *(a1 + 136) = v18;
    *(a1 + 120) = v17;
    v14 = 0;
    v9 = v20;
    v10 = v21;
    v19 = 0;
    v20 = 0uLL;
    *&v21 = 0;
    *(a1 + 160) = v9;
    *(a1 + 176) = v10;
    *(&v21 + 1) = 0;
    v22 = 0;
    *(a1 + 200) = v23;
    *(a1 + 216) = v7;
    v23 = 0uLL;
    v24 = 0;
    *(a1 + 224) = v25;
    *(a1 + 240) = 1;
    return sub_49AEC0(v11);
  }
}

uint64_t sub_C5BA4C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  if (a1 == a2)
  {
    v9 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v9;
    v10 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v10;
    sub_3E428((a1 + 152), a2 + 152);
  }

  else
  {
    sub_146EC((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    v7 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v7;
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
    sub_3E428((a1 + 152), a2 + 152);
    sub_C5BB5C((a1 + 176), *(a2 + 176), *(a2 + 184), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 184) - *(a2 + 176)) >> 3));
    sub_C5BB5C((a1 + 200), *(a2 + 200), *(a2 + 208), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 208) - *(a2 + 200)) >> 3));
  }

  *(a1 + 224) = *(a2 + 224);
  return a1;
}

void sub_C5BB5C(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((v6 - *a1) >> 3) < a4)
  {
    if (v7)
    {
      v8 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v7)
      {
        do
        {
          v12 = *(v9 - 24);
          if (v12)
          {
            v13 = *(v9 - 16);
            v11 = *(v9 - 24);
            if (v13 != v12)
            {
              do
              {
                v14 = *(v13 - 9);
                v13 -= 4;
                if (v14 < 0)
                {
                  operator delete(*v13);
                }
              }

              while (v13 != v12);
              v11 = *(v9 - 24);
            }

            *(v9 - 16) = v12;
            operator delete(v11);
          }

          v9 -= 104;
        }

        while (v9 != v7);
        v10 = *a1;
      }

      a1[1] = v7;
      operator delete(v10);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v8;
    }

    if (a4 <= 0x276276276276276)
    {
      v28 = 0x4EC4EC4EC4EC4EC5 * (v6 >> 3);
      v29 = 2 * v28;
      if (2 * v28 <= a4)
      {
        v29 = a4;
      }

      if (v28 >= 0x13B13B13B13B13BLL)
      {
        v30 = 0x276276276276276;
      }

      else
      {
        v30 = v29;
      }

      if (v30 <= 0x276276276276276)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  if (0x4EC4EC4EC4EC4EC5 * ((v15 - v7) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v23 = a2 + 11;
      do
      {
        v24 = v23 - 11;
        *v7 = *(v23 - 11);
        v25 = *(v23 - 9);
        v26 = *(v23 - 7);
        v27 = *(v23 - 5);
        *(v7 + 64) = *(v23 - 24);
        *(v7 + 32) = v26;
        *(v7 + 48) = v27;
        *(v7 + 16) = v25;
        *(v7 + 72) = *(v23 - 4);
        if (v7 != v23 - 11)
        {
          sub_C5BF94((v7 + 80), *(v23 - 1), *v23, (*v23 - *(v23 - 1)) >> 5);
        }

        v7 += 104;
        v23 += 13;
      }

      while (v24 + 13 != a3);
      v15 = a1[1];
    }

    while (v15 != v7)
    {
      v37 = *(v15 - 24);
      if (v37)
      {
        v38 = *(v15 - 16);
        v36 = *(v15 - 24);
        if (v38 != v37)
        {
          do
          {
            v39 = *(v38 - 9);
            v38 -= 4;
            if (v39 < 0)
            {
              operator delete(*v38);
            }
          }

          while (v38 != v37);
          v36 = *(v15 - 24);
        }

        *(v15 - 16) = v37;
        operator delete(v36);
      }

      v15 -= 104;
    }

    a1[1] = v7;
  }

  else
  {
    v16 = a2 + v15 - v7;
    if (v15 != v7)
    {
      v17 = (v7 + 80);
      v18 = a2 + 11;
      do
      {
        v19 = v18 - 11;
        *(v17 - 5) = *(v18 - 11);
        v20 = *(v18 - 9);
        v21 = *(v18 - 7);
        v22 = *(v18 - 5);
        *(v17 - 16) = *(v18 - 24);
        *(v17 - 3) = v21;
        *(v17 - 2) = v22;
        *(v17 - 4) = v20;
        *(v17 - 2) = *(v18 - 4);
        if (v17 - 10 != v18 - 11)
        {
          sub_C5BF94(v17, *(v18 - 1), *v18, (*v18 - *(v18 - 1)) >> 5);
        }

        v17 += 13;
        v18 += 13;
      }

      while (v19 + 13 != v16);
      v15 = a1[1];
    }

    v40 = v15;
    v31 = v15;
    if (v16 != a3)
    {
      v31 = v15;
      do
      {
        *v31 = *v16;
        v32 = *(v16 + 16);
        v33 = *(v16 + 32);
        v34 = *(v16 + 48);
        *(v31 + 64) = *(v16 + 64);
        *(v31 + 32) = v33;
        *(v31 + 48) = v34;
        *(v31 + 16) = v32;
        LODWORD(v32) = *(v16 + 72);
        *(v31 + 80) = 0;
        v35 = (v31 + 80);
        *(v35 - 2) = v32;
        v35[1] = 0;
        v35[2] = 0;
        sub_C58C34(v35, *(v16 + 80), *(v16 + 88), (*(v16 + 88) - *(v16 + 80)) >> 5);
        v16 += 104;
        v31 = v40 + 104;
        v40 += 104;
      }

      while (v16 != a3);
    }

    a1[1] = v31;
  }
}

void sub_C5BF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49BBE8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_C5BF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49BBE8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_C5BF94(char **a1, char *a2, char *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v30 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v30 = a4;
      }

      v31 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v32 = 0x7FFFFFFFFFFFFFFLL;
      if (!v31)
      {
        v32 = v30;
      }

      if (!(v32 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v23 = 0;
      do
      {
        v26 = &v8[v23];
        v27 = &a2[v23];
        if (a2 != v8)
        {
          v28 = v27[23];
          if (v26[23] < 0)
          {
            if (v28 >= 0)
            {
              v24 = &a2[v23];
            }

            else
            {
              v24 = *&a2[v23];
            }

            if (v28 >= 0)
            {
              v25 = v27[23];
            }

            else
            {
              v25 = *&a2[v23 + 8];
            }

            sub_13B38(&v8[v23], v24, v25);
          }

          else if (v27[23] < 0)
          {
            sub_13A68(&v8[v23], *&a2[v23], *&a2[v23 + 8]);
          }

          else
          {
            v29 = *v27;
            *(v26 + 2) = *(v27 + 2);
            *v26 = v29;
          }
        }

        *(v26 + 6) = *(v27 + 6);
        v23 += 32;
      }

      while (&a2[v23] != a3);
      v13 = a1[1];
      v8 += v23;
    }

    while (v13 != v8)
    {
      v36 = *(v13 - 9);
      v13 -= 4;
      if (v36 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v15 = &a2[v14];
    if (v13 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &v8[v16];
        v20 = &a2[v16];
        if (a2 != v8)
        {
          v21 = v20[23];
          if (v19[23] < 0)
          {
            if (v21 >= 0)
            {
              v17 = &a2[v16];
            }

            else
            {
              v17 = *&a2[v16];
            }

            if (v21 >= 0)
            {
              v18 = v20[23];
            }

            else
            {
              v18 = *&a2[v16 + 8];
            }

            sub_13B38(&v8[v16], v17, v18);
          }

          else if (v20[23] < 0)
          {
            sub_13A68(&v8[v16], *&a2[v16], *&a2[v16 + 8]);
          }

          else
          {
            v22 = *v20;
            *(v19 + 2) = *(v20 + 2);
            *v19 = v22;
          }
        }

        *(v19 + 6) = *(v20 + 6);
        v16 += 32;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v37 = v13;
    v33 = v13;
    if (v15 != a3)
    {
      v33 = v13;
      do
      {
        if (v15[23] < 0)
        {
          sub_325C(v33, *v15, *(v15 + 1));
          v35 = v37;
        }

        else
        {
          v34 = *v15;
          *(v33 + 16) = *(v15 + 2);
          *v33 = v34;
          v35 = v33;
        }

        *(v33 + 24) = *(v15 + 6);
        v15 += 32;
        v33 = v35 + 32;
        v37 = (v35 + 32);
      }

      while (v15 != a3);
    }

    a1[1] = v33;
  }
}

void sub_C5C310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_C5C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_C5C340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1624) == 3)
  {

    return sub_C5C464(a2, a3);
  }

  else
  {
    sub_A54BA4(v6, a3);
    v5 = *(a1 + 1624);
    if (v5 != -1)
    {
      (off_2672A90[v5])(&v11, a1);
    }

    *(a1 + 1624) = -1;
    result = sub_C595E8(a1, v6);
    *(a1 + 1624) = 3;
    if (v10[1096] == 1)
    {
      result = sub_3EEA68(v10);
    }

    if (v9 != -1)
    {
      result = (off_2672AB0[v9])(&v11, &v8);
    }

    v9 = -1;
    if (v7 != -1)
    {
      return (off_2672AB0[v7])(&v11, v6);
    }
  }

  return result;
}

uint64_t sub_C5C464(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  v5 = *(a2 + 240);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_2672AB0[v4])(&v10, a1);
    *(a1 + 240) = -1;
    goto LABEL_6;
  }

  v10 = a1;
  (off_2672BB0[v5])(&v10, a1, a2);
LABEL_6:
  *(a1 + 248) = *(a2 + 248);
  v6 = *(a1 + 496);
  v7 = *(a2 + 496);
  if (v6 == -1)
  {
    if (v7 == -1)
    {
      goto LABEL_11;
    }
  }

  else if (v7 == -1)
  {
    (off_2672AB0[v6])(&v10, a1 + 256);
    *(a1 + 496) = -1;
    goto LABEL_11;
  }

  v10 = a1 + 256;
  (off_2672BB0[v7])(&v10);
LABEL_11:
  *(a1 + 504) = *(a2 + 504);
  if (*(a1 + 1608) == *(a2 + 1608))
  {
    if (*(a1 + 1608))
    {
      sub_4D6664(a1 + 512, a2 + 512);
    }
  }

  else
  {
    v8 = a1 + 512;
    if (*(a1 + 1608))
    {
      sub_3EEA68(v8);
      *(a1 + 1608) = 0;
    }

    else
    {
      sub_790648(v8, a2 + 512);
      *(a1 + 1608) = 1;
    }
  }

  *(a1 + 1616) = *(a2 + 1616);
  return a1;
}

char *sub_C5C5C0(uint64_t *a1, char *a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return a2;
  }

  v5 = a1[1];
  v6 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 5)) >= a5)
  {
    v11 = v5 - a2;
    if ((0xAAAAAAAAAAAAAAABLL * ((v5 - a2) >> 5)) < a5)
    {
      v12 = v11 + a3;
      v13 = a1[1];
      if ((v11 + a3) == a4)
      {
        v14 = a1[1];
      }

      else
      {
        v38 = (v11 + a3);
        v14 = a1[1];
        do
        {
          v39 = v38[1];
          *v14 = *v38;
          *(v14 + 1) = v39;
          v40 = v38[2];
          v41 = v38[3];
          v42 = v38[5];
          *(v14 + 4) = v38[4];
          *(v14 + 5) = v42;
          *(v14 + 2) = v40;
          *(v14 + 3) = v41;
          v38 += 6;
          v14 += 96;
          v13 += 96;
        }

        while (v38 != a4);
      }

      a1[1] = v13;
      if (v11 >= 1)
      {
        v43 = &a2[96 * a5];
        v44 = &v13[-96 * a5];
        for (i = v13; v44 < v5; i += 96)
        {
          v46 = *(v44 + 1);
          *i = *v44;
          *(i + 1) = v46;
          v47 = *(v44 + 2);
          v48 = *(v44 + 3);
          v49 = *(v44 + 5);
          *(i + 4) = *(v44 + 4);
          *(i + 5) = v49;
          *(i + 2) = v47;
          *(i + 3) = v48;
          v44 += 96;
        }

        a1[1] = i;
        if (v14 != v43)
        {
          v50 = 0;
          v51 = -96 * a5;
          do
          {
            v52 = &v13[v50];
            *(v52 - 12) = *&v13[v51 - 96];
            v53 = *&v13[v51 - 88];
            *(v52 - 72) = *&v13[v51 - 72];
            *(v52 - 88) = v53;
            v54 = *&v13[v51 - 56];
            v55 = *&v13[v51 - 40];
            v56 = *&v13[v51 - 24];
            *(v52 - 9) = *&v13[v51 - 9];
            *(v52 - 24) = v56;
            *(v52 - 40) = v55;
            *(v52 - 56) = v54;
            v50 -= 96;
            v51 -= 96;
            v43 += 96;
          }

          while (v13 != v43);
        }

        v57 = a2;
        do
        {
          *v57 = *a3;
          v58 = *(a3 + 8);
          *(v57 + 24) = *(a3 + 24);
          *(v57 + 8) = v58;
          v59 = *(a3 + 40);
          v60 = *(a3 + 56);
          v61 = *(a3 + 72);
          *(v57 + 87) = *(a3 + 87);
          *(v57 + 72) = v61;
          *(v57 + 56) = v60;
          *(v57 + 40) = v59;
          a3 += 96;
          v57 += 96;
        }

        while (a3 != v12);
      }

      return a2;
    }

    v15 = &a2[96 * a5];
    v16 = v5 - 96 * a5;
    if (v16 >= v5)
    {
      a1[1] = v5;
      if (v5 == v15)
      {
LABEL_38:
        v68 = a3 + 96 * a5;
        v69 = a2;
        do
        {
          *v69 = *a3;
          v70 = *(a3 + 8);
          *(v69 + 24) = *(a3 + 24);
          *(v69 + 8) = v70;
          v71 = *(a3 + 40);
          v72 = *(a3 + 56);
          v73 = *(a3 + 72);
          *(v69 + 87) = *(a3 + 87);
          *(v69 + 72) = v73;
          *(v69 + 56) = v72;
          *(v69 + 40) = v71;
          a3 += 96;
          v69 += 96;
        }

        while (a3 != v68);
        return a2;
      }
    }

    else
    {
      v17 = (v5 - 96 * a5);
      v18 = a1[1];
      do
      {
        v19 = v17[1];
        *v18 = *v17;
        v18[1] = v19;
        v20 = v17[2];
        v21 = v17[3];
        v22 = v17[5];
        v18[4] = v17[4];
        v18[5] = v22;
        v18[2] = v20;
        v18[3] = v21;
        v17 += 6;
        v18 += 6;
      }

      while (v17 < v5);
      a1[1] = v18;
      if (v5 == v15)
      {
        goto LABEL_38;
      }
    }

    v62 = 0;
    do
    {
      v63 = &v62[v5];
      *(v63 - 12) = *&v62[v16 - 96];
      v64 = *&v62[v16 - 88];
      *(v63 - 72) = *&v62[v16 - 72];
      *(v63 - 88) = v64;
      v65 = *&v62[v16 - 56];
      v66 = *&v62[v16 - 40];
      v67 = *&v62[v16 - 24];
      *(v63 - 9) = *&v62[v16 - 9];
      *(v63 - 24) = v67;
      *(v63 - 40) = v66;
      *(v63 - 56) = v65;
      v62 -= 96;
    }

    while (&a2[96 * a5 - v5] != v62);
    goto LABEL_38;
  }

  v7 = *a1;
  v8 = a5 - 0x5555555555555555 * ((v5 - *a1) >> 5);
  if (v8 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 5);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x155555555555555)
  {
    v10 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v23 = 32 * ((a2 - v7) >> 5);
  v24 = 96 * a5;
  v25 = v23 + 96 * a5;
  v26 = v23;
  do
  {
    v27 = *(a3 + 16);
    *v26 = *a3;
    v26[1] = v27;
    v28 = *(a3 + 32);
    v29 = *(a3 + 48);
    v30 = *(a3 + 80);
    v26[4] = *(a3 + 64);
    v26[5] = v30;
    v26[2] = v28;
    v26[3] = v29;
    v26 += 6;
    a3 += 96;
    v24 -= 96;
  }

  while (v24);
  v31 = a1[1] - a2;
  memcpy((v23 + 96 * a5), a2, v31);
  v34 = v25 + v31;
  a1[1] = a2;
  v35 = *a1;
  v36 = &a2[-*a1];
  v37 = v23 - v36;
  memcpy((v23 - v36), *a1, v36);
  *a1 = v37;
  a1[1] = v34;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v23;
}

uint64_t sub_C5C9FC(uint64_t a1, void *a2, void *a3, int a4, int a5, char a6)
{
  *a1 = a2;
  v11 = (a1 + 8);
  v12 = sub_93D480(a2[514] + 24, __ROR8__(*a3, 32), 0, "station");
  v13 = (v12 - *v12);
  if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
  }

  else
  {
    v15 = 0;
  }

  sub_BF50FC(v15, v11);
  sub_C4F900(a2, v11, a4, a5, a1 + 32);
  *(a1 + 328) = a5;
  if ((a6 & 1) == 0)
  {
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v17 == v18)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    while (1)
    {
      v19 = sub_994FB4(a2[521] + 24, __ROR8__(*v17, 32), 0, "transfer graph");
      v20 = (v19 - *v19);
      if (*v20 >= 0x11u)
      {
        v21 = v20[8];
        if (v21)
        {
          if (*(v19 + v21))
          {
            break;
          }
        }
      }

      if (++v17 == v18)
      {
        goto LABEL_14;
      }
    }
  }

  v16 = 1;
LABEL_15:
  *(a1 + 329) = v16;
  sub_A80078((a1 + 336), a1 + 32);
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 1065353216;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 1065353216;
  sub_C5CBCC(a1);
  sub_C5CF34(a1);
  return a1;
}

void sub_C5CB7C(_Unwind_Exception *a1)
{
  sub_C543C8((v1 + 32));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_C5CBCC(void *result)
{
  v1 = result[1];
  v48 = result[2];
  if (v1 != v48)
  {
    do
    {
      v49 = v1;
      sub_C5FC54((*result + 4168), *v1, &v51);
      v3 = v51;
      v4 = v52;
      v5 = v55;
      v6 = v56;
      if (v51 != v55 || v52 != v56)
      {
        v8 = v54;
        v9 = v53;
        do
        {
          v10 = result[31];
          if (result[32] == v10)
          {
            goto LABEL_62;
          }

          v11 = result[33];
          v12 = v11 - 1;
          v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
          v14 = v13 ^ (v13 >> 33);
          v15 = result[36];
          v16 = *(result + 69);
          v17 = *(result + 68);
          v18 = (v11 - 1) & v14;
          v19 = (v15 + 12 * v18);
          v21 = *v19;
          v20 = v19[1];
          if (v16 == v20 && v17 == v21)
          {
            goto LABEL_62;
          }

          if (v10)
          {
            v23 = 1;
            while (*(result + 61) == v20 && *(result + 60) == v21 || __PAIR64__(v20, v21) != v9)
            {
              v18 = (v18 + v23) & v12;
              v24 = (v15 + 12 * v18);
              v21 = *v24;
              v20 = v24[1];
              ++v23;
              if (v16 == v20 && v17 == v21)
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            v26 = 1;
            while (__PAIR64__(v20, v21) != v9)
            {
              v18 = (v18 + v26) & v12;
              v27 = (v15 + 12 * v18);
              v21 = *v27;
              v20 = v27[1];
              ++v26;
              if (v16 == v20 && v17 == v21)
              {
                goto LABEL_62;
              }
            }
          }

          if (v18 == -1 || v18 == v11)
          {
            goto LABEL_62;
          }

          v29 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) >> 33));
          v30 = v12 & (v29 ^ (v29 >> 33));
          v31 = (v15 + 12 * v30);
          v32 = *v31;
          v33 = v31[1];
          if (v16 == v33 && v17 == v32)
          {
            goto LABEL_62;
          }

          v35 = *(v15 + 12 * v18 + 8);
          if (v10)
          {
            v36 = 1;
            while (*(result + 61) == v33 && *(result + 60) == v32 || __PAIR64__(v33, v32) != v8)
            {
              v30 = (v30 + v36) & v12;
              v37 = (v15 + 12 * v30);
              v32 = *v37;
              v33 = v37[1];
              ++v36;
              if (v16 == v33 && v17 == v32)
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            v39 = 1;
            while (__PAIR64__(v33, v32) != v8)
            {
              v30 = (v30 + v39) & v12;
              v40 = (v15 + 12 * v30);
              v32 = *v40;
              v33 = v40[1];
              ++v39;
              if (v16 == v33 && v17 == v32)
              {
                goto LABEL_62;
              }
            }
          }

          if (v30 == -1 || v30 == v11)
          {
LABEL_62:
            exception = __cxa_allocate_exception(0x40uLL);
            v47 = sub_2D390(exception, "element is out of range", 0x17uLL);
          }

          v50 = v35 | (*(v15 + 12 * v30 + 8) << 32);
          sub_C60CA4(result + 53, &v50, &v50);
          ++v4;
          v42 = (v3 - *v3);
          if (*v42 >= 0xFu)
          {
            if (v42[7])
            {
              v43 = (v3 + v42[7] + *(v3 + v42[7]));
              if (v4 < *v43)
              {
                v44 = &v43[v4];
                v45 = v3 + v42[3] + *(v3 + v42[3]) + 4;
                v9 = *(v45 + 8 * *(v44 + 2) + 4) | (*(v45 + 8 * *(v44 + 2)) << 32);
                v8 = *(v45 + 8 * *(v44 + 3) + 4) | (*(v45 + 8 * *(v44 + 3)) << 32);
              }
            }
          }
        }

        while (v3 != v5 || v4 != v6);
      }

      v1 = v49 + 1;
    }

    while (v49 + 1 != v48);
  }
}

void sub_C5CF34(void *a1)
{
  v1 = a1[1];
  v15 = a1[2];
  if (v1 != v15)
  {
    while (1)
    {
      sub_C5FB1C((*a1 + 4168), *v1, &v18);
      v16 = v1;
      if (v21 != v20)
      {
        if (((v21 - v20) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      if (v25 != v24)
      {
        if (((v25 - v24) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      if (v18 != v22 || v19 != v23)
      {
        break;
      }

LABEL_26:
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      ++v1;
      if (v16 + 1 == v15)
      {
        return;
      }
    }

    v4 = v19;
    v5 = v19 + 1;
    while (1)
    {
      v17 = v5;
      ++v4;
      v6 = (v18 - *v18);
      if (*v6 < 0xDu)
      {
        goto LABEL_15;
      }

      v7 = v6[6];
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *(v18 + v7);
      v9 = (v18 + v7 + v8);
      if (v4 >= *v9)
      {
        goto LABEL_15;
      }

      v10 = &v9[v4];
      v11 = v10[1];
      v12 = (v10 + v11 + 4);
      v13 = (v12 - *v12);
      if (*v13 < 5u)
      {
LABEL_24:
        v5 = v17 + 1;
        if (v18 == v22)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v14 = v13[2];
        if (v14)
        {
          if (*(v12 + v14 + *(v12 + v14)))
          {
            operator new();
          }

          goto LABEL_24;
        }

LABEL_15:
        v5 = v17 + 1;
        if (v18 == v22)
        {
LABEL_16:
          if (v4 == v23)
          {
            goto LABEL_26;
          }
        }
      }
    }
  }
}

void sub_C5DDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
    if (!a17)
    {
LABEL_3:
      sub_C606A8(&a28);
      _Unwind_Resume(a1);
    }
  }

  else if (!a17)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  sub_C606A8(&a28);
  _Unwind_Resume(a1);
}

void sub_C5DF18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_C55FEC(*a1, (a1 + 32), a2);
  sub_C5E308(a1, v8, &__p);
  v9 = __p;
  if (__p != v25)
  {
    if (*(a1 + 328))
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(v10 + 248);
    if (*(v10 + 240))
    {
      while (v9[512] != v11)
      {
        v9 += 560;
        if (v9 == v25)
        {
          goto LABEL_18;
        }
      }

LABEL_35:
      sub_5AF20();
    }

    v14 = v10;
    v13 = *v10;
    v12 = *(v14 + 4);
    while (1)
    {
      if (v9[512] == v11)
      {
        if (*(v9 + 126))
        {
          goto LABEL_35;
        }

        if (*(v9 + 67) == v12 && *(v9 + 66) == v13)
        {
          break;
        }
      }

      v9 += 560;
      if (v9 == v25)
      {
        goto LABEL_18;
      }
    }
  }

  if (v9 != v25)
  {
    *a4 = *v9;
    sub_C587D8(a4 + 8, (v9 + 8));
    v15 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_18:
  *(a4 + 8) = 0;
  *a4 = -1;
  *(a4 + 248) = -1;
  v16 = *(a2 + 240);
  if (v16 != -1)
  {
    v26 = a4 + 8;
    (off_2672BD0[v16])(&v26, a2);
    *(a4 + 248) = v16;
  }

  *(a4 + 256) = *(a2 + 248);
  *(a4 + 264) = 0;
  *(a4 + 504) = -1;
  v17 = *(a3 + 240);
  if (v17 != -1)
  {
    v26 = a4 + 264;
    (off_2672BD0[v17])(&v26, a3);
    *(a4 + 504) = v17;
  }

  *(a4 + 512) = *(a3 + 248);
  *(a4 + 520) = 0xFFFFFFFFLL;
  *(a4 + 528) = 0;
  *(a4 + 544) = 0;
  *(a4 + 536) = 0;
  *(a4 + 552) = 0x7FFFFFFF;
  v15 = __p;
  if (__p)
  {
LABEL_23:
    v18 = v15;
    if (v25 != v15)
    {
      v19 = v25 - 552;
      do
      {
        v21 = *(v19 + 65);
        if (v21)
        {
          *(v19 + 66) = v21;
          operator delete(v21);
        }

        v22 = *(v19 + 124);
        if (v22 != -1)
        {
          (off_2672BC0[v22])(&v26, v19 + 256);
        }

        *(v19 + 124) = -1;
        v23 = *(v19 + 60);
        if (v23 != -1)
        {
          (off_2672BC0[v23])(&v26, v19);
        }

        *(v19 + 60) = -1;
        v20 = v19 - 8;
        v19 -= 560;
      }

      while (v20 != v15);
      v18 = __p;
    }

    v25 = v15;
    operator delete(v18);
  }
}

void sub_C5E17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A54EB0(v9);
  sub_A54CEC(v10);
  sub_C5E228(&a9);
  _Unwind_Resume(a1);
}

void sub_C5E1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A54EB0(v9);
  sub_C5E228(&a9);
  _Unwind_Resume(a1);
}

void sub_C5E1D8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_C55FEC(*a1, a1 + 4, a2);

  sub_C5E308(a1, v5, a3);
}

char **sub_C5E228(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 552;
      do
      {
        v7 = *(v5 + 65);
        if (v7)
        {
          *(v5 + 66) = v7;
          operator delete(v7);
        }

        v8 = *(v5 + 124);
        if (v8 != -1)
        {
          (off_2672BC0[v8])(&v11, v5 + 256);
        }

        *(v5 + 124) = -1;
        v9 = *(v5 + 60);
        if (v9 != -1)
        {
          (off_2672BC0[v9])(&v12, v5);
        }

        *(v5 + 60) = -1;
        v6 = v5 - 8;
        v5 -= 560;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_C5E308(void **a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 != -1)
  {
    if (*(a1 + 328))
    {
      v6 = a2;
      if (*(a1 + 328) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_4;
    }

    if (sub_C5EABC(a1, a2))
    {
      v6 = a2;
      if (*(a1 + 328) != 1)
      {
        goto LABEL_8;
      }

LABEL_4:
      if (!sub_C5EC2C(a1, v6))
      {
        goto LABEL_9;
      }

LABEL_8:
      v7 = __ROR8__(*sub_A9C5E0(a1 + 37, v6), 32);
      sub_504D54((*a1)[522] + 24, v7, 0, "transfer node");
      v8 = sub_504D54((*a1)[522] + 24, v7, 0, "transfer node");
      v9 = (v8 - *v8);
      if (*v9 >= 7u)
      {
        v10 = v9[3];
        if (v10)
        {
          v11 = *(v8 + v10);
          if (v11 == 3 || v11 == 2)
          {
            a3[1] = 0;
            a3[2] = 0;
            *a3 = 0;
            operator new();
          }
        }
      }

      exception = __cxa_allocate_exception(0x40uLL);
      v13 = sub_2D390(exception, "Unknown transfer node type", 0x1AuLL);
    }
  }

LABEL_9:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_C5E9B8(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(__p, a17);
  sub_C60304(__p);
  sub_A54CEC(&STACK[0x278]);
  sub_C5E228(a10);
  sub_A54CEC(&STACK[0x378]);
  _Unwind_Resume(a1);
}

void sub_C5EA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char **a10)
{
  sub_C5E228(a10);
  sub_A54CEC(&STACK[0x378]);
  _Unwind_Resume(a1);
}

BOOL sub_C5EABC(void *a1, unsigned int a2)
{
  v3 = a2;
  result = sub_C5F8E4(a1, a2);
  if (result)
  {
    v5 = __ROR8__(*sub_A9C5E0(a1 + 37, v3), 32);
    v6 = sub_504D54(*(*a1 + 4176) + 24, v5, 0, "transfer node");
    v7 = (v6 - *v6);
    result = 1;
    if (*v7 >= 7u)
    {
      v8 = v7[3];
      if (v8)
      {
        if (*(v6 + v8) == 2)
        {
          v9 = sub_504D54(*(*a1 + 4176) + 24, v5, 0, "transfer node");
          v10 = (v9 - *v9);
          v11 = *v10;
          if (v11 >= 7 && v10[3] && (*(v9 + v10[3]) & 0xFE) == 2)
          {
            if (v11 >= 9 && (v12 = v10[4]) != 0)
            {
              v13 = *(v9 + v12 + 4) | (*(v9 + v12) << 32);
            }

            else
            {
              v13 = 0xFFFFFFFFLL;
            }

            v14 = v13 & 0xFFFFFFFF00000000;
            v13 = v13;
          }

          else
          {
            v14 = 0;
            v13 = 0xFFFFFFFFLL;
          }

          v15 = sub_503310(*(*a1 + 4008) + 24, __ROR8__(v14 | v13, 32), 0, "access point");
          v16 = (v15 - *v15);
          if (*v16 < 7u)
          {
            return 0;
          }

          v17 = v16[3];
          if (!v17 || !*(v15 + v17))
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_C5EC2C(void *a1, unsigned int a2)
{
  v3 = a2;
  result = sub_C5F8E4(a1, a2);
  if (result)
  {
    v5 = __ROR8__(*sub_A9C5E0(a1 + 37, v3), 32);
    v6 = sub_504D54(*(*a1 + 4176) + 24, v5, 0, "transfer node");
    v7 = (v6 - *v6);
    result = 1;
    if (*v7 >= 7u)
    {
      v8 = v7[3];
      if (v8)
      {
        if (*(v6 + v8) == 2)
        {
          v9 = sub_504D54(*(*a1 + 4176) + 24, v5, 0, "transfer node");
          v10 = (v9 - *v9);
          v11 = *v10;
          if (v11 >= 7 && v10[3] && (*(v9 + v10[3]) & 0xFE) == 2)
          {
            if (v11 >= 9 && (v12 = v10[4]) != 0)
            {
              v13 = *(v9 + v12 + 4) | (*(v9 + v12) << 32);
            }

            else
            {
              v13 = 0xFFFFFFFFLL;
            }

            v14 = v13 & 0xFFFFFFFF00000000;
            v13 = v13;
          }

          else
          {
            v14 = 0;
            v13 = 0xFFFFFFFFLL;
          }

          v15 = sub_503310(*(*a1 + 4008) + 24, __ROR8__(v14 | v13, 32), 0, "access point");
          v16 = (v15 - *v15);
          if (*v16 < 9u)
          {
            return 0;
          }

          v17 = v16[4];
          if (!v17 || !*(v15 + v17))
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_C5ED9C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v25 = a2 | (a3 << 32);
  if (sub_C606EC((a1 + 424), &v25))
  {
    return 0;
  }

  v7 = *sub_A9C5E0((a1 + 296), a2);
  v8 = *sub_A9C5E0((a1 + 296), a3);
  v9 = __ROR8__(v7, 32);
  v10 = sub_504D54(*(*a1 + 4176) + 24, v9, 0, "transfer node");
  v11 = (v10 - *v10);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = *(v10 + v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = __ROR8__(v8, 32);
  v15 = sub_504D54(*(*a1 + 4176) + 24, v14, 0, "transfer node");
  v16 = (v15 - *v15);
  if (*v16 >= 7u && (v17 = v16[3]) != 0)
  {
    v18 = *(v15 + v17);
    v19 = v18 == 2;
    v20 = v13 == 2;
    if (v13 == 2 && v18 == 2)
    {
      return 0;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v20 = v13 == 2;
  }

  if (v18 != 3)
  {
    v20 = 0;
  }

  if ((v20 || v13 == 3 && v19) && *(a1 + 329) == 1)
  {
    v21 = sub_504D54(*(*a1 + 4176) + 24, v9, 0, "transfer node");
    v22 = (v21 - *v21);
    if (*v22 >= 0xBu && v22[5] && *(v21 + v22[5] + *(v21 + v22[5])))
    {
      operator new();
    }

    v23 = sub_504D54(*(*a1 + 4176) + 24, v14, 0, "transfer node");
    v24 = (v23 - *v23);
    if (*v24 >= 0xBu && v24[5])
    {
      if (*(v23 + v24[5] + *(v23 + v24[5])))
      {
        operator new();
      }
    }

    sub_BD71E4(0, 0, &v25, 0, 1);
    sub_BD71E4(0, 0, &v25, 0, 1);
    return 0;
  }

  return 1;
}

void sub_C5F27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_C5F2E8(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (sub_A80C90(a1 + 336, a2) == 0x7FFFFFFF)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = sub_2D390(exception, "No path to given vertex id", 0x1AuLL);
  }

  v5 = a2;
  v6 = sub_A80CE0(a1 + 336, a2);
  sub_A80D30(a1 + 336, v5);
  if (v6 != -1)
  {
    v7 = *(a1 + 104);
    v8 = *(a1 + 112) - v7;
    if (v6 < (v8 >> 3))
    {
      if (v6 < (v8 >> 3))
      {
        operator new();
      }

      v9 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v9, "key out of range");
    }

    v10 = __cxa_allocate_exception(0x40uLL);
    v11 = sub_2D390(v10, "vertex id out of range", 0x16uLL);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0xFFFFFFFFLL;
}

void sub_C5F698(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_C5F6E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v14[0] = 0;
  v15 = -1;
  v4 = *(result + 240);
  if (v4 == -1)
  {
    v5 = (result + 248);
    v9 = *(result + 248);
    v16 = v9;
    v8 = (a2 + 240);
    v7 = *(a2 + 240);
    if (v7 == -1)
    {
      *v5 = *(a2 + 248);
      *(a2 + 248) = v9;
      return result;
    }
  }

  else
  {
    v17 = v14;
    result = (off_2672BE0[v4])(&v17, result);
    v15 = v4;
    v5 = (v3 + 248);
    v6 = *(v3 + 240);
    v16 = *(v3 + 248);
    v8 = (a2 + 240);
    v7 = *(a2 + 240);
    if (v6 == -1)
    {
      if (v7 == -1)
      {
        v10 = (a2 + 248);
        *v5 = *(a2 + 248);
        v12 = v15;
        if (v15 == -1)
        {
          *v10 = v16;
          return result;
        }

        goto LABEL_16;
      }
    }

    else if (v7 == -1)
    {
      result = (off_2672BC0[v6])(&v17, v3);
      *(v3 + 240) = -1;
      goto LABEL_10;
    }
  }

  v17 = v3;
  result = (off_2672BF0[v7])(&v17, v3, a2);
LABEL_10:
  v10 = (a2 + 248);
  v11 = *(a2 + 240);
  *v5 = *(a2 + 248);
  v12 = v15;
  if (v11 != -1)
  {
    if (v15 == -1)
    {
      result = (off_2672BC0[v11])(&v17, a2);
      *v8 = -1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v15 != -1)
  {
LABEL_16:
    v17 = a2;
    result = (off_2672BF0[v12])(&v17, a2, v14);
  }

LABEL_17:
  v13 = v15;
  *v10 = v16;
  if (v13 != -1)
  {
    return (off_2672BC0[v13])(&v17, v14);
  }

  return result;
}

BOOL sub_C5F8E4(void *a1, unsigned int a2)
{
  v3 = __ROR8__(*sub_A9C5E0(a1 + 37, a2), 32);
  v4 = sub_504D54(*(*a1 + 4176) + 24, v3, 0, "transfer node");
  v5 = (v4 - *v4);
  if (*v5 < 7u)
  {
    return 0;
  }

  v6 = v5[3];
  if (!v6)
  {
    return 0;
  }

  v7 = *(v4 + v6);
  if ((v7 - 4) < 0xFFFFFFFE)
  {
    return 0;
  }

  v9 = sub_504D54(*(*a1 + 4176) + 24, v3, 0, "transfer node");
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 >= 7 && v10[3] && (*(v9 + v10[3]) & 0xFE) == 2)
  {
    if (v11 >= 9 && (v12 = v10[4]) != 0)
    {
      v13 = *(v9 + v12 + 4) | (*(v9 + v12) << 32);
    }

    else
    {
      v13 = 0xFFFFFFFFLL;
    }

    v14 = v13 & 0xFFFFFFFF00000000;
    v15 = v13;
    v16 = *a1;
    v17 = *(*a1 + 16);
    if (v7 == 3 && v17 != 0)
    {
      return v14 == 0x100000000 && (v15 + 3) < 2 || (sub_2D5204(**(v16 + 4120)) & 1) != 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0xFFFFFFFFLL;
    v16 = *a1;
    v17 = *(*a1 + 16);
    if (v7 == 3 && v17 != 0)
    {
      return v14 == 0x100000000 && (v15 + 3) < 2 || (sub_2D5204(**(v16 + 4120)) & 1) != 0;
    }
  }

  if (v7 != 2 || v17 == 0)
  {
    if (v7 != 2)
    {
      return 1;
    }
  }

  else
  {
    v20 = sub_2D5204(**(v16 + 4008));
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = sub_503310(*(*a1 + 4008) + 24, __ROR8__(v14 | v15, 32), 0, "access point");
  v22 = (v21 - *v21);
  if (*v22 >= 0x13u)
  {
    v23 = v22[9];
    if (v23)
    {
      v24 = (v21 + v23 + *(v21 + v23));
      v27 = *v24;
      v25 = v24 + 1;
      v26 = v27;
      if (v27)
      {
        v28 = v26;
        for (i = v25; *i != 9; ++i)
        {
          if (!--v28)
          {
            return 1;
          }
        }
      }

      else
      {
        i = v25;
      }

      if (i != &v25[v26])
      {
        return 0;
      }
    }
  }

  return 1;
}

void sub_C5FB1C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __ROR8__(a2, 32);
  v14 = sub_994FB4(*a1 + 24, v5, 0, "transfer graph");
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_C604E0(&v14);
  v6 = sub_994FB4(*a1 + 24, v5, 0, "transfer graph");
  v7 = (v6 - *v6);
  if (*v7 < 0xDu)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = v7[6];
    if (v8)
    {
      LODWORD(v8) = *(v6 + v8 + *(v6 + v8));
    }
  }

  v9 = v6;
  v10 = v8;
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_C604E0(&v9);
  sub_C6039C(a3, &v14, &v9);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_C5FC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_C5FC54@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __ROR8__(a2, 32);
  v6 = sub_994FB4(*a1 + 24, v5, 0, "transfer graph");
  v7 = v6;
  v8 = (v6 - *v6);
  if (*v8 >= 0xFu && v8[7] && (v9 = v6 + v8[7] + *(v6 + v8[7]), *v9))
  {
    v10 = v6 + v8[3] + *(v6 + v8[3]) + 4;
    v11 = (v10 + 8 * *(v9 + 2));
    v12 = v11[1];
    v13 = *v11 << 32;
    v14 = *(v10 + 8 * *(v9 + 3) + 4);
    v15 = *(v10 + 8 * *(v9 + 3)) << 32;
  }

  else
  {
    v15 = 0;
    v13 = 0;
    v14 = 0xFFFFFFFFLL;
    v12 = 0xFFFFFFFFLL;
  }

  v16 = sub_994FB4(*a1 + 24, v5, 0, "transfer graph");
  v17 = (v16 - *v16);
  if (*v17 < 0xFu)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = v17[7];
    if (v18)
    {
      LODWORD(v18) = *(v16 + v18 + *(v16 + v18));
    }
  }

  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 12) = v13 | v12;
  *(a3 + 20) = v15 | v14;
  *(a3 + 32) = v16;
  *(a3 + 40) = v18;
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *(a3 + 44) = result;
  return result;
}

void *sub_C5FDA0(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_C5FDF4(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x75075075075075)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 4) >= 0x3A83A83A83A83ALL)
  {
    v5 = 0x75075075075075;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x75075075075075)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 560 * v2;
  v15 = 560 * v2;
  v16 = 0;
  *v14 = *a2;
  sub_C587D8(560 * v2 + 8, (a2 + 2));
  v15 += 560;
  sub_C5FFD4(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  for (i = v15; v15 != v7; i = v15)
  {
    v15 = i - 560;
    v9 = *(i - 32);
    if (v9)
    {
      *(i - 24) = v9;
      operator delete(v9);
    }

    v10 = *(i - 56);
    if (v10 != -1)
    {
      (off_2672BC0[v10])(&v18, i - 296);
    }

    *(i - 56) = -1;
    v11 = *(i - 312);
    if (v11 != -1)
    {
      (off_2672BC0[v11])(&v18, i - 552);
    }

    *(i - 312) = -1;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_C5FFD4(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  if (v5 != *a1)
  {
    v8 = v4 + *a1 - v5;
    v9 = *a1;
    do
    {
      sub_C60104(v8, v9);
      v9 += 560;
      v8 += 560;
    }

    while (v9 != v5);
    do
    {
      v10 = *(v6 + 528);
      if (v10)
      {
        *(v6 + 536) = v10;
        operator delete(v10);
      }

      v11 = *(v6 + 504);
      if (v11 != -1)
      {
        (off_2672BC0[v11])(&v16, v6 + 264);
      }

      *(v6 + 504) = -1;
      v12 = *(v6 + 248);
      if (v12 != -1)
      {
        (off_2672BC0[v12])(&v17, v6 + 8);
      }

      *(v6 + 248) = -1;
      v6 += 560;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v13 = *a1;
  *a1 = v7;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t sub_C60104(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 248) = -1;
  v4 = *(a2 + 248);
  if (v4 != -1)
  {
    v7 = a1 + 8;
    (off_2672BE0[v4])(&v7, a2 + 8);
    *(a1 + 248) = v4;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = 0;
  *(a1 + 504) = -1;
  v5 = *(a2 + 504);
  if (v5 != -1)
  {
    v7 = a1 + 264;
    (off_2672BE0[v5])(&v7, a2 + 264);
    *(a1 + 504) = v5;
  }

  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = 0;
  *(a2 + 528) = 0u;
  *(a1 + 552) = *(a2 + 552);
  return a1;
}

void **sub_C60208(void **a1)
{
  sub_C6023C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_C6023C(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 560;
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }

    v5 = *(i - 56);
    if (v5 != -1)
    {
      (off_2672BC0[v5])(&v7, i - 296);
    }

    *(i - 56) = -1;
    v6 = *(i - 312);
    if (v6 != -1)
    {
      (off_2672BC0[v6])(&v8, i - 552);
    }

    *(i - 312) = -1;
  }
}

uint64_t sub_C60304(uint64_t a1)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    *(a1 + 536) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 504);
  if (v3 != -1)
  {
    (off_2672BC0[v3])(&v6, a1 + 264);
  }

  *(a1 + 504) = -1;
  v4 = *(a1 + 248);
  if (v4 != -1)
  {
    (off_2672BC0[v4])(&v7, a1 + 8);
  }

  *(a1 + 248) = -1;
  return a1;
}

uint64_t sub_C6039C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = a2[2];
  v4 = a2[3];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = *a3;
  v7 = *(a3 + 2);
  *(a1 + 64) = 0;
  *(a1 + 48) = v7;
  *(a1 + 40) = v6;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  v9 = a3[2];
  v8 = a3[3];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_C604B4(void *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *v2 = v4;
    operator delete(v4);
  }

  sub_4A48(a1);
}

void sub_C604E0(int **a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 0xDu)
  {
    v2 = v1[6];
    if (v1[6])
    {
      v4 = *(a1 + 2);
      v5 = (*a1 + v2 + *(*a1 + v2));
      if (v4 < *v5)
      {
        v6 = a1[2];
        v7 = &v5[v4];
        v8 = v7[1];
        a1[3] = v6;
        v9 = (v7 + v8 + 4);
        v10 = (v9 - *v9);
        if (*v10 >= 5u)
        {
          v11 = v10[2];
          if (v11)
          {
            v12 = (v9 + v11 + *(v9 + v11));
            v13 = *v12;
            if (v13)
            {
              v14 = 2 * v13;
              v15 = (v12 + 1);
              do
              {
                v16 = (*a1 + *(*a1 - **a1 + 8));
                v17 = *(&v16[2 * *v15 + 2] + *v16) | (*(&v16[2 * *v15 + 1] + *v16) << 32);
                v18 = a1[4];
                if (v6 < v18)
                {
                  *v6 = v17;
                  v6 += 2;
                }

                else
                {
                  v19 = a1[2];
                  v20 = v6 - v19;
                  v21 = (v6 - v19) >> 3;
                  v22 = v21 + 1;
                  if ((v21 + 1) >> 61)
                  {
                    sub_1794();
                  }

                  v23 = v18 - v19;
                  if (v23 >> 2 > v22)
                  {
                    v22 = v23 >> 2;
                  }

                  if (v23 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v24 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v24 = v22;
                  }

                  if (v24)
                  {
                    if (!(v24 >> 61))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v25 = (v6 - v19) >> 3;
                  v26 = (8 * v21);
                  v27 = (8 * v21 - 8 * v25);
                  *v26 = v17;
                  v6 = (v26 + 1);
                  memcpy(v27, v19, v20);
                  a1[2] = v27;
                  a1[3] = v6;
                  a1[4] = 0;
                  if (v19)
                  {
                    operator delete(v19);
                  }
                }

                a1[3] = v6;
                ++v15;
                v14 -= 2;
              }

              while (v14);
            }
          }
        }
      }
    }
  }
}

void *sub_C606A8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_C606EC(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *a2;
  v3 = a2[1];
  v5 = (v4 + (((v3 + 2656449171) ^ 0x7A69) << 6) + (((v3 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u) ^ (v3 + 2656449171) ^ 0x7A69;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v4 + (((v3 + 2656449171) ^ 0x7A69) << 6) + (((v3 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u) ^ (v3 + 2656449171) ^ 0x7A69;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 + 0x7FFFFFFFFFFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v5 == v12)
        {
          if (*(result + 4) == v4 && *(result + 5) == v3)
          {
            return result;
          }
        }

        else if ((v12 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v14 = result[1];
      if (v5 == v14)
      {
        if (*(result + 4) == v4 && *(result + 5) == v3)
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_C607FC(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *a2;
  v3 = a2[1];
  v5 = (v4 + (((v3 + 2656449171) ^ 0x7A69) << 6) + (((v3 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u) ^ (v3 + 2656449171) ^ 0x7A69;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v4 + (((v3 + 2656449171) ^ 0x7A69) << 6) + (((v3 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u) ^ (v3 + 2656449171) ^ 0x7A69;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 + 0x7FFFFFFFFFFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v5)
        {
          if (*(result + 4) == v4 && *(result + 5) == v3)
          {
            return result;
          }
        }

        else if ((v12 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v14 = result[1];
      if (v14 == v5)
      {
        if (*(result + 4) == v4 && *(result + 5) == v3)
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_C6090C(void *a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = (v5 + (((v4 + 2656449171) ^ 0x7A69) << 6) + (((v4 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u) ^ (v4 + 2656449171) ^ 0x7A69;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (((v4 + 2656449171) ^ 0x7A69) << 6) + (((v4 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u) ^ (v4 + 2656449171) ^ 0x7A69;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 + 0x7FFFFFFFFFFFFFFFLL);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v5 && *(v11 + 5) == v4)
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 4) != v5 || *(v11 + 5) != v4)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_C60C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_C60CA4(void *a1, unsigned int *a2, void *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = (v4 + (((v3 + 2656449171) ^ 0x7A69) << 6) + (((v3 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u) ^ (v3 + 2656449171) ^ 0x7A69;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (v4 + (((v3 + 2656449171) ^ 0x7A69) << 6) + (((v3 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u) ^ (v3 + 2656449171) ^ 0x7A69;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 + 0x7FFFFFFFFFFFFFFFLL);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v4 && *(v10 + 5) == v3)
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v4 || *(v10 + 5) != v3)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_C6118C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C6127C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C6129C(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v18 = a2 != 0;
  sub_CCE5F4(v19, &v18);
  v12 = v19[7];
  *(a1 + 616) = v19[6];
  *(a1 + 632) = v12;
  *(a1 + 81) = v20;
  v13 = v19[3];
  *(a1 + 552) = v19[2];
  *(a1 + 568) = v13;
  v14 = v19[5];
  *(a1 + 584) = v19[4];
  *(a1 + 600) = v14;
  v15 = v19[1];
  *(a1 + 520) = v19[0];
  *(a1 + 536) = v15;
  *a6 = v9;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0;
  *(a6 + 64) = 1065353216;
  *(a6 + 72) = 0u;
  *(a6 + 88) = 0u;
  *(a6 + 104) = 1065353216;
  sub_C7B278(*(a1 + 1), a6, a3);
  sub_C7B5D8(a6, a3);
  sub_7E9A4(v19);
  sub_C729D0(a1 + 2, a6, *a1, a1[1]);
  v16 = sub_681D7C((a1 + 16));
  sub_CCE624((a1 + 520), v16);
  *(a1 + 67) = sub_7EA60(v19) + *(a1 + 67);
  sub_7E9A4(v19);
  sub_C710EC(a1 + 20, a6);
  v17 = sub_681D7C((a1 + 160));
  sub_CCE624((a1 + 520), v17);
  *(a1 + 68) = sub_7EA60(v19) + *(a1 + 68);
  sub_7E9A4(v19);
  sub_C74D50((a1 + 304), a6, a4, a5);
}

void sub_C61680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C618BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_513574(v14 + 680);
  sub_C62988(v14 + 24);
  _Unwind_Resume(a1);
}

void sub_C61900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C61920(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v8);
  sub_C61A20(a1, a2, &v6);
  if (v7)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *a1;
  }

  sub_C6129C((a1 + 24), 0, a2, v4, &v6, v5);
}

void sub_C619F4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 48) == 1)
  {
    v3 = *(v1 - 72);
    if (v3)
    {
      *(v1 - 64) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C61A20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = result;
  v3 = *(a2 + 264);
  v4 = *(a2 + 272);
  if (v3 == v4)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    v31 = *(a2 + 272);
    v34 = 0;
    __dst = 0;
    v36 = 0;
    do
    {
      v5 = *(v33 + 16);
      if (*v3)
      {
        v6 = HIDWORD(*v3);
      }

      else
      {
        v6 = 0xFFFFFFFFLL;
      }

      v7 = HIDWORD(*v3) == 0xFFFFFFFFLL || *v3 == 0;
      v8 = *v3 << 32;
      if (v7)
      {
        v8 = 0;
      }

      v9 = sub_93D480(*(v5 + 4112) + 24, __ROR8__(v8 | v6, 32), 0, "station");
      v10 = (v9 - *v9);
      if (*v10 >= 0xDu)
      {
        v11 = v10[6];
        if (v11)
        {
          v12 = (v9 + v11 + *(v9 + v11));
          v13 = *v12;
          if (v13)
          {
            v32 = v3;
            v14 = 8 * v13;
            v15 = v12 + 1;
            do
            {
              v16 = *(v5 + 4112);
              if (*(v16 + 16) != 1 || sub_2D5204(*v16))
              {
                operator new();
              }

              v15 += 2;
              v14 -= 8;
            }

            while (v14);
            v4 = v31;
            v3 = v32;
          }
        }
      }

      ++v3;
    }

    while (v3 != v4);
    v17 = 126 - 2 * __clz((__dst - v34) >> 3);
    if (__dst == v34)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    result = sub_BD71E4(v34, __dst, &v37, v18, 1);
    v19 = v34;
    v20 = __dst;
    if (v34 != __dst)
    {
      v21 = v34 + 8;
      while (v21 != __dst)
      {
        LODWORD(v23) = *v21;
        v22 = v21[1];
        v25 = *(v21 - 2);
        v24 = *(v21 - 1);
        v21 += 2;
        if (v24 == v22 && v25 == v23)
        {
          v27 = v21 - 4;
          if (v21 != __dst)
          {
            do
            {
              v28 = v23;
              v23 = *v21;
              if (v28 != *v21 || v27[1] != HIDWORD(*v21))
              {
                *(v27 + 1) = v23;
                v27 += 2;
              }

              v21 += 2;
            }

            while (v21 != v20);
            v20 = __dst;
          }

          if (v27 + 2 != v20)
          {
            v20 = v27 + 2;
          }

          break;
        }
      }
    }

    *a3 = v19;
    *(a3 + 8) = v20;
    *(a3 + 16) = v36;
    *(a3 + 24) = 1;
  }

  return result;
}

void sub_C6211C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C621CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    if (v6 != v5)
    {
      v8 = v6 - 1920;
      do
      {
        v10 = *(v8 + 1896);
        if (v10 != -1)
        {
          (off_2672C00[v10])(&v13, v8 + 272);
        }

        *(v8 + 1896) = -1;
        v11 = *(v8 + 240);
        if (v11 != -1)
        {
          (off_2672C20[v11])(&v14, v8);
        }

        *(v8 + 240) = -1;
        v9 = v8 == v5;
        v8 -= 1920;
      }

      while (!v9);
      v7 = *v4;
    }

    *(a1 + 16) = v5;
    operator delete(v7);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_6BE5B4(a1 + 32, (a2 + 32));
  sub_6BE5B4(a1 + 72, (a2 + 72));
  return a1;
}

void sub_C622F4(uint64_t a1, _BYTE *a2)
{
  v2 = 0;
  v31 = *a2;
  v30[0] = a1;
  v30[1] = &v31;
  v23 = a2;
  v24 = 0;
  v25 = 0xFFFFFFFFLL;
  v26 = 0x7FFFFFFF;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  while (1)
  {
    v3 = v2;
    v4 = 0xEEEEEEEEEEEEEEEFLL * ((*(v23 + 2) - *(v23 + 1)) >> 7);
    if (v4 <= v3)
    {
      break;
    }

    v5 = sub_C58590(v23 + 1, v3);
    v6 = *(v5 + 1904) == -1 || *(v5 + 1908) == 0;
    v3 = v24;
    if (v6 && *(v5 + 248) == 2)
    {
      if (v24 == -1)
      {
        goto LABEL_16;
      }

      v4 = 0xEEEEEEEEEEEEEEEFLL * ((*(v23 + 2) - *(v23 + 1)) >> 7);
      break;
    }

    v2 = ++v24;
    if (v3 == -2)
    {
      goto LABEL_16;
    }
  }

  if (v4 <= v3)
  {
    v24 = -1;
  }

LABEL_16:
  sub_C62BF4(&v23);
  v16 = 0;
  v17 = -1;
  v18 = 0xFFFFFFFFLL;
  v19 = 0x7FFFFFFF;
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_C629E4(&v23, &v16, v30);
  v8 = __p;
  if (__p)
  {
    v9 = v21;
    v10 = __p;
    if (v21 != __p)
    {
      do
      {
        v11 = *(v9 - 2);
        if (v11 != -1)
        {
          (off_2672C00[v11])(&v32, v9 - 408);
        }

        *(v9 - 2) = -1;
        v9 -= 410;
      }

      while (v9 != v8);
      v10 = __p;
    }

    v21 = v8;
    operator delete(v10);
  }

  v12 = v27;
  if (v27)
  {
    v13 = v28;
    v14 = v27;
    if (v28 != v27)
    {
      do
      {
        v15 = *(v13 - 2);
        if (v15 != -1)
        {
          (off_2672C00[v15])(&v32, v13 - 408);
        }

        *(v13 - 2) = -1;
        v13 -= 410;
      }

      while (v13 != v12);
      v14 = v27;
    }

    v28 = v12;
    operator delete(v14);
  }
}

void sub_C624F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_C62B4C(va);
  sub_C62B4C(va1);
  _Unwind_Resume(a1);
}

void sub_C62544(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v8);
  sub_C61A20(a1, a2, &v6);
  if (v7)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  sub_C6129C((a1 + 24), 1, a2, v4, &v6, v5);
}

void sub_C62618(_Unwind_Exception *exception_object)
{
  if (*(v1 - 48) == 1)
  {
    v3 = *(v1 - 72);
    if (v3)
    {
      *(v1 - 64) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_C62644(uint64_t a1)
{
  sub_7E9A4(v10);
  sub_C56AF0(a1 + 680, a1 + 1184, a1 + 1296, &__p);
  if (__p != v9)
  {
    v7 = xmmword_22A83F0;
    sub_C62E30((a1 + 1408), &v7, &v7, &__p);
  }

  v2 = sub_73ECC(a1 + 680);
  sub_CCE624(a1 + 1720, v2);
  *(a1 + 1728) = sub_7EA60(v10) + *(a1 + 1728);
  v3 = __p;
  if (__p)
  {
    v4 = v9;
    v5 = __p;
    if (v9 != __p)
    {
      do
      {
        v6 = *(v4 - 2);
        if (v6 != -1)
        {
          (off_2672C00[v6])(&v7, v4 - 408);
        }

        *(v4 - 2) = -1;
        v4 -= 410;
      }

      while (v4 != v3);
      v5 = __p;
    }

    v9 = v3;
    operator delete(v5);
  }
}

void sub_C62750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

void sub_C62764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

double sub_C6277C(uint64_t a1, void *a2)
{
  sub_7E9A4(v7);
  sub_501CE8(&v6, *(a1 + 16));
  sub_C6AA6C(&v6, (a1 + 1408), a2, a1 + 1184, a1 + 1296);
  sub_C6F9F4(a1 + 896, a1 + 1408);
  v4 = sub_73EE4(a1 + 896);
  sub_CCE624(a1 + 1856, v4);
  result = sub_7EA60(v7) + *(a1 + 1864);
  *(a1 + 1864) = result;
  return result;
}

uint64_t sub_C62808(uint64_t a1)
{
  v14 = xmmword_22A83F0;
  if (!sub_A5436C((a1 + 1408), &v14))
  {
    return 0x7FFFFFFFLL;
  }

  v2 = sub_A5436C((a1 + 1408), &v14);
  if (!v2)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v3 = v2[4];
  v4 = v2[5];
  if (v3 == v4)
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
    return (v5 + v6 + v7);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = v3[408];
    result = 0x7FFFFFFFLL;
    if (v8 == 1)
    {
      v12 = v3[138];
      if (v12 == 0x7FFFFFFF)
      {
        return result;
      }

      LODWORD(v10) = 0;
      v13 = 0;
    }

    else
    {
      if (v8 == 3)
      {
        v10 = v3[406];
        if (v10 == 0x7FFFFFFF || (v10 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
        {
          return result;
        }
      }

      else
      {
        if (v8 != 2)
        {
          return result;
        }

        v10 = v3[4] << 32;
        if (v10 == 0x7FFFFFFF00000000)
        {
          return result;
        }
      }

      v12 = 0;
      v13 = HIDWORD(v10);
    }

    v6 += v10;
    v7 += v13;
    v5 += v12;
    v3 += 410;
  }

  while (v3 != v4);
  if (v6 != 0x7FFFFFFF && v7 != 0x7FFFFFFF && v5 != 0x7FFFFFFF)
  {
    return (v5 + v6 + v7);
  }

  return result;
}

uint64_t sub_C62988(uint64_t a1)
{
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
    if ((*(a1 + 335) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 335) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 312));
  return a1;
}

uint64_t sub_C629E4(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  while (a1[2] != *(a2 + 8))
  {
    if (**(a3 + 8))
    {
      v7 = *(a1 + 2);
    }

    else
    {
      v7 = 0x1FFFFFFFELL;
    }

    if (**(a3 + 8))
    {
      v8 = 0x1FFFFFFFDLL;
    }

    else
    {
      v8 = *(a1 + 2);
    }

    sub_C9E5B4(*a3 + 3896, v7, v8, a1[6]);
    v9 = a1[2];
    if (v9 != -1)
    {
      v10 = v9 + 1;
      a1[2] = v10;
      if (0xEEEEEEEEEEEEEEEFLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 7) <= v10)
      {
        goto LABEL_4;
      }

      if (v10 != -1)
      {
        while (1)
        {
          v11 = v10;
          v12 = 0xEEEEEEEEEEEEEEEFLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 7);
          if (v12 <= v11)
          {
            break;
          }

          v13 = sub_C58590((*a1 + 8), v11);
          v14 = *(v13 + 1904) == -1 || *(v13 + 1908) == 0;
          v11 = a1[2];
          if (v14 && *(v13 + 248) == 2)
          {
            if (v11 == -1)
            {
              goto LABEL_5;
            }

            v12 = 0xEEEEEEEEEEEEEEEFLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 7);
            break;
          }

          LODWORD(v10) = v11 + 1;
          a1[2] = v11 + 1;
          if (v11 == -2)
          {
            goto LABEL_5;
          }
        }

        if (v12 <= v11)
        {
LABEL_4:
          a1[2] = -1;
        }
      }
    }

LABEL_5:
    sub_C62BF4(a1);
  }

  return a3;
}

uint64_t sub_C62B4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 != -1)
        {
          (off_2672C00[v5])(&v7, v3 - 1632);
        }

        *(v3 - 8) = -1;
        v3 -= 1640;
      }

      while (v3 != v2);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_C62BF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != -1)
  {
    v3 = *a1;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    v4 = (v3 + 8);
    if (0xEEEEEEEEEEEEEEEFLL * ((v6 - v5) >> 7) > v1)
    {
      v7 = sub_C58590(v4, v1);
      if (*(v7 + 240))
      {
        sub_5AF20();
      }

      v8 = *v7;
      v9 = *(v7 + 256);
      sub_C57F7C(*a1, *(a1 + 8), &__p);
      v11 = __p;
      v10 = v22;
      v12 = v23;
      v22 = 0;
      v23 = 0;
      __p = 0;
      *(a1 + 16) = v8;
      *(a1 + 24) = v9;
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(a1 + 40);
        v15 = *(a1 + 32);
        if (v14 != v13)
        {
          do
          {
            v16 = *(v14 - 8);
            if (v16 != -1)
            {
              (off_2672C00[v16])(&v24, v14 - 1632);
            }

            *(v14 - 8) = -1;
            v14 -= 1640;
          }

          while (v14 != v13);
          v15 = *(a1 + 32);
        }

        *(a1 + 40) = v13;
        operator delete(v15);
        v17 = __p;
        *(a1 + 32) = v11;
        *(a1 + 40) = v10;
        *(a1 + 48) = v12;
        if (v17)
        {
          v18 = v22;
          v19 = v17;
          if (v22 != v17)
          {
            do
            {
              v20 = *(v18 - 2);
              if (v20 != -1)
              {
                (off_2672C00[v20])(&v24, v18 - 408);
              }

              *(v18 - 2) = -1;
              v18 -= 410;
            }

            while (v18 != v17);
            v19 = __p;
          }

          v22 = v17;
          operator delete(v19);
        }
      }

      else
      {
        *(a1 + 32) = v11;
        *(a1 + 40) = v10;
        *(a1 + 48) = v12;
      }
    }
  }
}

uint64_t sub_C62D88(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 != -1)
        {
          (off_2672C00[v5])(&v7, v3 - 1632);
        }

        *(v3 - 8) = -1;
        v3 -= 1640;
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_C62E30(void *a1, unint64_t *a2, _OWORD *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v7 = (((0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v8 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v9 = ((v8 ^ (v8 >> 33)) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_33;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = ((v8 ^ (v8 >> 33)) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = v9 & (*&v10 - 1);
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (result = *v13) == 0)
  {
LABEL_33:
    operator new();
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = *(result + 8);
      if (v15 == v9)
      {
        v16 = *(result + 20) == HIDWORD(v4) && *(result + 16) == v4;
        if (v16 && *(result + 24) == v5)
        {
          return result;
        }
      }

      else if ((v15 & (*&v10 - 1)) != v12)
      {
        goto LABEL_33;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v17 = *(result + 8);
    if (v17 == v9)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v12)
    {
      goto LABEL_33;
    }

LABEL_22:
    result = *result;
    if (!result)
    {
      goto LABEL_33;
    }
  }

  v18 = *(result + 20) == HIDWORD(v4) && *(result + 16) == v4;
  if (!v18 || *(result + 24) != v5)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_C63260(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[4];
      if (v3)
      {
        v4 = v1[5];
        v5 = v1[4];
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 8);
            if (v6 != -1)
            {
              (off_2672C00[v6])(&v7, v4 - 1632);
            }

            *(v4 - 8) = -1;
            v4 -= 1640;
          }

          while (v4 != v3);
          v5 = v1[4];
        }

        v1[5] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

double sub_C63328(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  return result;
}

void sub_C63344(uint64_t *a1, uint64_t a2)
{
  sub_501CE8(&v6, *a1);
  v4 = *(a2 + 24);
  for (i = *(a2 + 32); v4 != i; v4 += 232)
  {
    sub_C6CC7C(&v6, a1 + 1, v4);
  }
}

uint64_t sub_C633AC(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = a2;
  return result;
}

void sub_C633B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 56))
  {
    sub_C6359C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_C633C8(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_C633C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  sub_7E9A4(v18);
  *(v13 + 64) = 0;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  sub_C64450(v17, v11[1], *(v10 + 121));
  sub_C63770(v11, v10, v17, v16);
  v14 = sub_3B8508();
  sub_104A22C(v16, v14 & *(v10 + 123));
  v15 = sub_C638A0(v10);
  sub_7E974(v18);
  sub_C63C68(v11, v10, v16, v15);
  *(v13 + 24) = sub_7EA60(v18);
  *(v13 + 40) = sub_1049974(v16);
  *(v13 + 48) = sub_1031BE8(v16);
  *(v13 + 56) = sub_10499A8(v16);
  *(v13 + 64) = sub_10499B0(v16);
  sub_7E974(v18);
  sub_C64280(v11, v10, v16, v15);
}

void sub_C63540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_C6579C(va);
  sub_C643B4(&STACK[0xF80]);
  sub_C5A434(v7);
  _Unwind_Resume(a1);
}

void sub_C6359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  sub_7E9A4(v18);
  *(v13 + 64) = 0;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  sub_C64450(v17, v11[1], *(v10 + 121));
  sub_C65C5C(v11, v10, v17, v16);
  v14 = sub_3B8508();
  sub_104A22C(v16, v14 & *(v10 + 123));
  v15 = sub_C638A0(v10);
  sub_7E974(v18);
  sub_C65D8C(v11, v10, v16, v15);
  *(v13 + 24) = sub_7EA60(v18);
  *(v13 + 40) = sub_1049974(v16);
  *(v13 + 48) = sub_1031BE8(v16);
  *(v13 + 56) = sub_10499A8(v16);
  *(v13 + 64) = sub_10499B0(v16);
  sub_7E974(v18);
  sub_C663A4(v11, v10, v16, v15);
}

void sub_C63714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_C66B9C(va);
  sub_C643B4(&STACK[0xF80]);
  sub_C5A434(v7);
  _Unwind_Resume(a1);
}

void sub_C63770(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 64);
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v10 = sub_3AF5C0(*(a1 + 8));
      v11 = v10[1];
      v12[0] = *v10;
      v12[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1045748(a4, a3, v12);
    }

    v7 = a4;
    v8 = a3;
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 122);
    v7 = a4;
    v8 = a3;
  }

  sub_1045744(v7, v8, v6);
}

uint64_t sub_C638A0(uint64_t a1)
{
  v2 = *(a1 + 60);
  result = 0x7FFFFFFFLL;
  if (v2 != 0x7FFFFFFF)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v4 = *(a1 + 8);
    if (v4 != *a1)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v10 = *(a1 + 24);
    memset(__p, 0, 24);
    __p[3] = __p;
    v6 = 0;
    operator new();
  }

  return result;
}

void sub_C63C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_93BE50(&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_C63C68(uint64_t **a1, unsigned int **a2, int32x2_t *a3, int a4)
{
  v7 = *(a2 + 16);
  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      if (a2[4] != a2[5])
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v24 = sub_2D390(exception, "Bucket search algorithm called with destination query terminals in the request", 0x4EuLL);
      }

      sub_1048350(a3, a2, 0x7FFFFFFF, *a1, -1, a4, 0xFFFFFFFF, 0xFFFFFFFF, -1, 1);
    }
  }

  else
  {
    v9 = sub_3AF30C(a1[1], a2 + 9);
    if (*(a2 + 16))
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = 0;
    }

    sub_1047FF0(a3, a2, a2 + 4, v9, 0x7FFFFFFF, *a1, -1, a4, v10, SHIDWORD(v10), 0xFFFFFFFF);
  }

  if ((a2[5] - a2[4]) >= 0x21)
  {
    v11 = sub_10309DC(a3);
    if (*v11 == v11[1])
    {
      v12 = *a2;
      v13 = a2[1];
      if (*a2 != v13)
      {
        do
        {
          if (*(*&v12 + 48) > 0.95)
          {
            operator new();
          }

          *&v12 += 96;
        }

        while (v12 != v13);
      }

      sub_2D31D4(0, 0, &v27, 0, 1);
      if (sub_7E7E4(1u))
      {
        sub_19594F8(&v27);
        v14 = sub_4A5C(&v27, "On-street walking one-to-many query (", 37);
        v15 = sub_7052C(v14, 0);
        v16 = sub_4A5C(v15, ") did not reach any of the destination query terminals; Origin road segment ids: ", 81);
        sub_C64978(0, 0, ", ", __p);
        if ((v26 & 0x80u) == 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v18 = v26;
        }

        else
        {
          v18 = __p[1];
        }

        sub_4A5C(v16, v17, v18);
        if (v26 < 0)
        {
          operator delete(__p[0]);
          v19 = v37;
          if ((v37 & 0x10) == 0)
          {
LABEL_25:
            if ((v19 & 8) == 0)
            {
              v20 = 0;
              v26 = 0;
LABEL_36:
              *(__p + v20) = 0;
              sub_7E854(__p, 1u);
              if (v26 < 0)
              {
                operator delete(__p[0]);
              }

              if (v35 < 0)
              {
                operator delete(v34);
              }

              std::locale::~locale(&v29);
              std::ostream::~ostream();
              std::ios::~ios();
              return;
            }

            v22 = v30;
            v20 = v31 - v30;
            if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
            {
LABEL_44:
              sub_3244();
            }

LABEL_31:
            if (v20 >= 0x17)
            {
              operator new();
            }

            v26 = v20;
            if (v20)
            {
              memmove(__p, v22, v20);
            }

            goto LABEL_36;
          }
        }

        else
        {
          v19 = v37;
          if ((v37 & 0x10) == 0)
          {
            goto LABEL_25;
          }
        }

        v21 = v36;
        if (v36 < v33)
        {
          v36 = v33;
          v21 = v33;
        }

        v22 = v32;
        v20 = v21 - v32;
        if (v21 - v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_44;
        }

        goto LABEL_31;
      }
    }
  }
}

void sub_C64220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a18);
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_C64280(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a4;
  v6 = *(a2 + 64) == 2;
  sub_FBB328(v5, *(a1 + 8), a2 + 96, (a2 + 72));
}

void sub_C64394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C5A434(v3);
  sub_C64C18(va);
  _Unwind_Resume(a1);
}

void *sub_C643B4(void *a1)
{
  v2 = a1[224];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[194];
  if (v3)
  {
    free(v3);
  }

  sub_C64754(a1 + 42);
  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[10];
  a1[10] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    a1[5] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_C64450(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = sub_3AF6B4(a2);
  sub_F92178(a1 + 8, a2, v3);
  *(a1 + 144) = sub_3AF6B4(a2);
  sub_1011FA4((a1 + 152), a2);
  v6 = sub_3AF144(a2);
  sub_2BDE28(v6);
  sub_10BD0E0((a1 + 192), a2);
  v7 = sub_3B0708(a2);
  v8 = sub_3B0BCC(a2);
  *(a1 + 224) = v7;
  *(a1 + 232) = v8;
  sub_1061BA8(a1 + 240, a2);
  sub_1080920(a1 + 336, a2, a1 + 240);
  v9 = sub_3B0BCC(a2);
  *(a1 + 1472) = sub_3C0614(v9, 1u, 1) != 0;
  *(a1 + 1473) = sub_3B8508();
  *(a1 + 1474) = 0;
  *(a1 + 1506) = 0;
  *(a1 + 1508) = 0;
  *(a1 + 1496) = 0x3E4CCCCD3F000000;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0u;
  *(a1 + 1536) = 32;
  *(a1 + 1552) = 0;
  *(a1 + 1480) = 16;
  *(a1 + 1488) = 6;
  *(a1 + 1504) = 0;
  *(a1 + 1585) = 0;
  *(a1 + 1588) = 0;
  *(a1 + 1576) = 0x3E4CCCCD3F000000;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) &= 0xC000000000000000;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 32;
  v10 = (a1 + 1704);
  *(a1 + 1704) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1560) = 16;
  *(a1 + 1568) = 6;
  *(a1 + 1584) = 0;
  *(a1 + 1505) = 1;
  *(a1 + 1544) = 0;
  v11 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  *(a1 + 1552) = v11;
  v12 = *(a1 + 1536);
  if (v12)
  {
    v13 = (a1 + 1544);
    v14 = (v11 + 8 * v12);
    v15 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v15 < 0xF || v11 < a1 + 1552 && v13 < v14)
    {
      goto LABEL_15;
    }

    v16 = v15 + 1;
    v17 = vld1q_dup_f64(v13);
    v18 = v11 + 1;
    v19 = v16 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    v11 = (v11 + 8 * (v16 & 0x3FFFFFFFFFFFFFFCLL));
    if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_15:
      do
      {
        v11->f64[0] = *v13;
        v11 = (v11 + 8);
      }

      while (v11 != v14);
    }
  }

  *(a1 + 1585) = 1;
  *v10 = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0;
  v20 = malloc_type_malloc(88 * *(a1 + 1696), 0x1060040C48E6172uLL);
  *(a1 + 1792) = v20;
  v21 = *(a1 + 1696);
  if (v21)
  {
    v22 = 88 * v21;
    do
    {
      v23 = *(a1 + 1720);
      *v20 = *v10;
      v20[1] = v23;
      v24 = *(a1 + 1736);
      v25 = *(a1 + 1752);
      v26 = *(a1 + 1768);
      *(v20 + 10) = *(a1 + 1784);
      v20[3] = v25;
      v20[4] = v26;
      v20[2] = v24;
      v20 = (v20 + 88);
      v22 -= 88;
    }

    while (v22);
  }

  return a1;
}