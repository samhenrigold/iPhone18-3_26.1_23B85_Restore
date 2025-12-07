BOOL sub_240B42BDC(uint64_t a1, char a2, uint64_t a3, unsigned int *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, unint64_t *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = 1 << a2;
  v23 = 1 << a2;
  if (a7)
  {
    if (a4)
    {
      v24 = (a4[a7] + *(a3 + 4 * a7 - 4) + 1) / 2;
    }

    else
    {
      v24 = *(a3 + 4 * a7 - 4);
    }
  }

  else if (a4)
  {
    v24 = *a4;
  }

  else
  {
    v24 = 32;
  }

  v25 = byte_240C848C4[a10];
  v26 = qword_240C83970[3 * v25 + a6];
  v27 = sub_240B426A4(a17, *(a15 + a9), *(a16 + 4 * a7), v25, a6);
  v28 = v27;
  if (v24 >= 0x40)
  {
    v29 = 64;
  }

  else
  {
    v29 = v24;
  }

  if (v24 >= 8)
  {
    v29 = (v29 >> 1) + 4;
  }

  v52 = a1;
  v30 = sub_240B24020(a13, *(*a14 + (v27 + a1 + v29 * *(a17 + 120))), a12);
  if (v30 > 63 * v22)
  {
    return 1;
  }

  v32 = v30;
  v33 = v28;
  v34 = 0;
  v35 = v22 << 6;
  v36 = v23 - 1;
  if (byte_240C87EA0[a10] <= 1u)
  {
    v37 = 1;
  }

  else
  {
    v37 = byte_240C87EA0[a10];
  }

  v38 = vdupq_n_s64(v37 - 1);
  v39 = (v36 + v30) >> a2;
  if (byte_240C87EBB[a10] <= 1u)
  {
    v40 = 1;
  }

  else
  {
    v40 = byte_240C87EBB[a10];
  }

  v41 = (v37 + 3) & 0x1FC;
  v42 = a3 + 4 * a7 + 8;
  v43 = vdupq_n_s64(4uLL);
  do
  {
    v44 = v42;
    v45 = v41;
    v46 = xmmword_240C111D0;
    v47 = xmmword_240C111C0;
    do
    {
      v48 = vmovn_s64(vcgeq_u64(v38, v46));
      if (vuzp1_s16(v48, *v38.i8).u8[0])
      {
        *(v44 - 2) = v39;
      }

      if (vuzp1_s16(v48, *&v38).i8[2])
      {
        *(v44 - 1) = v39;
      }

      if (vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, *&v47))).i32[1])
      {
        *v44 = v39;
        v44[1] = v39;
      }

      v47 = vaddq_s64(v47, v43);
      v46 = vaddq_s64(v46, v43);
      v44 += 4;
      v45 -= 4;
    }

    while (v45);
    ++v34;
    v42 += 4 * a5;
  }

  while (v34 != v40);
  result = v30 != 0;
  if (v35 > v23 && v32)
  {
    v49 = v32 <= ((4 * v22) & 0xFFFFFFFFFFFFFFFuLL);
    v50 = (458 * v33 + 37 * *(a17 + 120)) + v52;
    do
    {
      v51 = sub_240B24020(a13, *(*a14 + v50 + (v49 | (2 * (word_240C83B30[v23 >> a2] + word_240C83AB0[(v36 + v32) >> a2])))), a12);
      *(a18 + 4 * *(a11 + (v26 << 8) + 4 * v23)) += ((v51 >> 1) ^ -(v51 & 1)) << a19;
      v49 = v51 != 0;
      v32 -= v49;
      ++v23;
      result = v32 != 0;
    }

    while (v23 < v35 && v32);
  }

  return result;
}

BOOL sub_240B42F10(uint64_t a1, char a2, uint64_t a3, unsigned int *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, unint64_t *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = 1 << a2;
  v23 = 1 << a2;
  if (a7)
  {
    if (a4)
    {
      v24 = (a4[a7] + *(a3 + 4 * a7 - 4) + 1) / 2;
    }

    else
    {
      v24 = *(a3 + 4 * a7 - 4);
    }
  }

  else if (a4)
  {
    v24 = *a4;
  }

  else
  {
    v24 = 32;
  }

  v25 = byte_240C848C4[a10];
  v26 = qword_240C83970[3 * v25 + a6];
  v27 = sub_240B426A4(a17, *(a15 + a9), *(a16 + 4 * a7), v25, a6);
  v28 = v27;
  if (v24 >= 0x40)
  {
    v29 = 64;
  }

  else
  {
    v29 = v24;
  }

  if (v24 >= 8)
  {
    v29 = (v29 >> 1) + 4;
  }

  v52 = a1;
  v30 = sub_240B24020(a13, *(*a14 + (v27 + a1 + v29 * *(a17 + 120))), a12);
  if (v30 > 63 * v22)
  {
    return 1;
  }

  v32 = v30;
  v33 = v28;
  v34 = 0;
  v35 = v22 << 6;
  v36 = v23 - 1;
  if (byte_240C87EA0[a10] <= 1u)
  {
    v37 = 1;
  }

  else
  {
    v37 = byte_240C87EA0[a10];
  }

  v38 = vdupq_n_s64(v37 - 1);
  v39 = (v36 + v30) >> a2;
  if (byte_240C87EBB[a10] <= 1u)
  {
    v40 = 1;
  }

  else
  {
    v40 = byte_240C87EBB[a10];
  }

  v41 = (v37 + 3) & 0x1FC;
  v42 = a3 + 4 * a7 + 8;
  v43 = vdupq_n_s64(4uLL);
  do
  {
    v44 = v42;
    v45 = v41;
    v46 = xmmword_240C111D0;
    v47 = xmmword_240C111C0;
    do
    {
      v48 = vmovn_s64(vcgeq_u64(v38, v46));
      if (vuzp1_s16(v48, *v38.i8).u8[0])
      {
        *(v44 - 2) = v39;
      }

      if (vuzp1_s16(v48, *&v38).i8[2])
      {
        *(v44 - 1) = v39;
      }

      if (vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, *&v47))).i32[1])
      {
        *v44 = v39;
        v44[1] = v39;
      }

      v47 = vaddq_s64(v47, v43);
      v46 = vaddq_s64(v46, v43);
      v44 += 4;
      v45 -= 4;
    }

    while (v45);
    ++v34;
    v42 += 4 * a5;
  }

  while (v34 != v40);
  result = v30 != 0;
  if (v35 > v23 && v32)
  {
    v49 = v32 <= ((4 * v22) & 0xFFFFFFFFFFFFFFFuLL);
    v50 = (458 * v33 + 37 * *(a17 + 120)) + v52;
    do
    {
      v51 = sub_240B24020(a13, *(*a14 + v50 + (v49 | (2 * (word_240C83B30[v23 >> a2] + word_240C83AB0[(v36 + v32) >> a2])))), a12);
      *(a18 + 2 * *(a11 + (v26 << 8) + 4 * v23)) += (-(v51 & 1) ^ (v51 >> 1)) << a19;
      v49 = v51 != 0;
      v32 -= v49;
      ++v23;
      result = v32 != 0;
    }

    while (v23 < v35 && v32);
  }

  return result;
}

void *sub_240B43240(void *result, unint64_t a2)
{
  v2 = 0;
  v3 = result[906] + a2;
  v4 = result[905];
  result[903] = *(result[901] + 24) + *(result[901] + 16) * v3 + 4 * v4;
  v5 = result[820];
  v6 = result + 833;
  v7 = 56;
  do
  {
    v8 = result[v2 + 912];
    result[904] = *(result[902] + 24) + *(result[902] + 16) * v3 + v4;
    if (v5)
    {
      v9 = 0;
      v10 = a2 >> v8;
      v11 = v6;
      v12 = v5;
      do
      {
        *v11 = *(result[899] + v9 + v7) + *(result[899] + v9 + 48) * v10;
        if (v10)
        {
          v13 = *(result[899] + v9 + v7) + *(result[899] + v9 + 48) * (v10 - 1);
        }

        else
        {
          v13 = 0;
        }

        v11[33] = v13;
        v11 += 3;
        v9 += 120;
        --v12;
      }

      while (v12);
    }

    ++v2;
    v7 += 40;
    ++v6;
  }

  while (v2 != 3);
  return result;
}

void sub_240B43310(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_240B43464(a2);
  }

  sub_240B228BC();
}

uint64_t *sub_240B43360(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B433DC(result, a4);
  }

  return result;
}

void sub_240B433C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B433DC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_240B4341C(a2);
  }

  sub_240B228BC();
}

void sub_240B4341C(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B43464(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B434D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0;
  v9 = **(a1 + 8);
  v8 = *(*(a1 + 8) + 8);
  v10 = (v8 - v9) >> 3;
  if (v10 <= 1)
  {
    v10 = 1;
  }

  do
  {
    if (v8 != v9)
    {
      for (i = 0; i != v10; ++i)
      {
        if (a5)
        {
          v12 = 0;
          v13 = *(a1 + 24 + 24 * i + 8 * v7) + 4 * *(a1 + 16);
          v14 = *(a1 + 288);
          do
          {
            *(*(a7 + 8 * v7) + 4 * v12) += *(v13 + 4 * v12) << *(v14 + 4 * i);
            ++v12;
          }

          while (a5 != v12);
        }
      }
    }

    ++v7;
  }

  while (v7 != 3);
  *(a1 + 16) += a5;
  return 0;
}

uint64_t *sub_240B43578(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_240B291B0(a1, a2);
  }

  return a1;
}

void sub_240B435DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B435F8(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = (a1 + 4 * *a2);
  v4 = *v3;
  if (v4 <= 8)
  {
    v5 = a2[1];
  }

  else
  {
    v5 = a2[1] - 8;
    v2 >>= 8;
    v3 += 4 * *(v3 + 1) + 4 * (v2 & ~(-1 << (v4 - 8)));
    LODWORD(v4) = *v3;
  }

  *a2 = v2 >> v4;
  a2[1] = v5 - v4;
  return *(v3 + 1);
}

unint64_t sub_240B43650(unint64_t __src, char *__dst, uint64_t a3, int a4, int a5)
{
  v5 = __src;
  if (a4 == 32)
  {
    return memcpy(__dst, __src, 4 * a3);
  }

  if (a3)
  {
    v6 = a4 - 1;
    v7 = ~a5 + a4;
    v8 = ~(-1 << (a4 - 1));
    do
    {
      v9 = *v5++;
      v10 = v9 >> v6;
      __src = v9 & v8;
      if ((v9 & v8) != 0)
      {
        v11 = __src >> v7;
        v12 = __src << (23 - v7);
        v13 = v12 & 0x7FFFFF;
        v14 = __clz(v12 & 0x7FFFFF);
        v15 = v12 << (23 - (v14 ^ 0x1F));
        v16 = 9 - v14;
        LODWORD(__src) = v15 & 0x7FFFFE;
        if (v11)
        {
          v16 = v11;
          LODWORD(__src) = v13;
        }

        if (a5 > 7)
        {
          __src = v13;
        }

        else
        {
          v11 = v16;
          __src = __src;
        }

        *__dst = __src | ((v10 != 0) << 31) | ((((-1 << (a5 - 1)) + 1 + v11) << 23) + 1065353216);
      }

      else
      {
        if (v10)
        {
          v17 = -0.0;
        }

        else
        {
          v17 = 0.0;
        }

        *__dst = v17;
      }

      __dst += 4;
      --a3;
    }

    while (a3);
  }

  return __src;
}

uint64_t sub_240B43734(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *a1)
  {
    v3 = *(a1 + 48);
    if (v3 == *(a1 + 4))
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 48);
  }

  sub_240B3AC2C(&v12, v2, v3);
  v4 = v16;
  if (!v16)
  {
    v7 = v13;
    v6 = v14;
    v14 = 0;
    v8 = v15;
    *a1 = v12;
    v9 = *(a1 + 24);
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    if (v9)
    {
      atomic_fetch_add(&qword_27E519020, -*(v9 - 24));
      free(*(v9 - 32));
      v10 = v16;
      *(a1 + 32) = v8;
      if (v10)
      {
        return v4;
      }
    }

    else
    {
      *(a1 + 32) = v8;
    }

    v11 = v14;
    v14 = 0;
    if (v11)
    {
      atomic_fetch_add(&qword_27E519020, -*(v11 - 24));
      free(*(v11 - 32));
    }
  }

  return v4;
}

void sub_240B43884(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B438A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = *a1;
  if (*a1 <= 2)
  {
    if (v5 == 1)
    {
      v6 = *(a1 + 16);
    }

    else
    {
      if (v5 != 2)
      {
        return result;
      }

      v6 = a3 + *(a1 + 16);
    }

    return v6 + 1;
  }

  switch(v5)
  {
    case 3:
      v6 = *(a1 + 16) + 2 * a3;
      return v6 + 1;
    case 4:
      v6 = 3 * a3 + *(a1 + 8);
      return v6 + 1;
    case 5:
      return 3 * a3 + *(a1 + 24) * a2 + *(a1 + 16) + 18;
  }

  return result;
}

char *sub_240B43928(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_240B43F9C(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x38E38E38E38E38ELL)
      {
        sub_240B37D9C(v10);
      }
    }

    sub_240B228BC();
  }

  v11 = a1[1] - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 3) >= a4)
  {
    result = sub_240B43B64(a2, a3, v8);
    v13 = result;
    v14 = a1[1];
    if (v14 != result)
    {
      v15 = v14 - 72;
      v16 = (v14 - 72);
      v17 = (v14 - 72);
      do
      {
        v18 = *v17;
        v17 -= 9;
        result = (*v18)(v16);
        v15 -= 72;
        v19 = v16 == v13;
        v16 = v17;
      }

      while (!v19);
    }

    a1[1] = v13;
  }

  else
  {
    sub_240B43B64(a2, a2 + v11, v8);
    result = sub_240B43E74(a2 + v11, a3, a1[1]);
    a1[1] = result;
  }

  return result;
}

void *sub_240B43AD0(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_240B43B14(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    v3 = (a1 + 24);
    sub_240B37900(&v3);
    v3 = a1;
    sub_240B379C0(&v3);
  }

  return a1;
}

uint64_t sub_240B43B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v6;
      if (a3 != v5)
      {
        v7 = (a3 + 32);
        v8 = *(a3 + 32);
        v10 = *(v5 + 32);
        v9 = *(v5 + 40);
        v11 = v9 - v10;
        v12 = *(a3 + 48);
        if (v12 - v8 < (v9 - v10))
        {
          if (v8)
          {
            v13 = *(a3 + 40);
            v14 = *(a3 + 32);
            if (v13 != v8)
            {
              v15 = v13 - 24;
              v16 = (v13 - 24);
              v17 = (v13 - 24);
              do
              {
                v18 = *v17;
                v17 -= 3;
                (*v18)(v16);
                v15 -= 24;
                v19 = v16 == v8;
                v16 = v17;
              }

              while (!v19);
              v14 = *v7;
            }

            *(a3 + 40) = v8;
            operator delete(v14);
            v12 = 0;
            *v7 = 0;
            *(a3 + 40) = 0;
            *(a3 + 48) = 0;
          }

          v20 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
          if (v20 <= 0xAAAAAAAAAAAAAAALL)
          {
            v21 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
            if (2 * v21 > v20)
            {
              v20 = 2 * v21;
            }

            if (v21 >= 0x555555555555555)
            {
              v22 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v22 = v20;
            }

            sub_240B440F0((a3 + 32), v22);
          }

          sub_240B228BC();
        }

        v23 = *(a3 + 40);
        v24 = v23 - v8;
        if (v23 - v8 >= v11)
        {
          if (v10 != v9)
          {
            do
            {
              v33 = *(v10 + 8);
              *(v8 + 16) = *(v10 + 16);
              *(v8 + 8) = v33;
              v10 += 24;
              v8 += 24;
            }

            while (v10 != v9);
            v23 = *(a3 + 40);
          }

          if (v23 != v8)
          {
            v34 = v23 - 24;
            v35 = (v23 - 24);
            v36 = (v23 - 24);
            do
            {
              v37 = *v36;
              v36 -= 3;
              (*v37)(v35);
              v34 -= 24;
              v19 = v35 == v8;
              v35 = v36;
            }

            while (!v19);
          }

          *(a3 + 40) = v8;
        }

        else
        {
          if (v23 != v8)
          {
            v25 = v8 + 8;
            v26 = (v10 + 8);
            v27 = v24;
            do
            {
              v28 = *v26;
              *(v25 + 8) = *(v26 + 2);
              *v25 = v28;
              v25 += 24;
              v26 += 3;
              v27 -= 24;
            }

            while (v27);
            v23 = *(a3 + 40);
          }

          v29 = v10 + v24;
          v30 = v23;
          if (v29 != v9)
          {
            v31 = v23;
            v30 = v23;
            do
            {
              *v30 = &unk_2852A1C40;
              v32 = *(v29 + 8);
              *(v30 + 16) = *(v29 + 16);
              *(v30 + 8) = v32;
              v29 += 24;
              v30 += 24;
              v31 += 24;
            }

            while (v29 != v9);
          }

          *(a3 + 40) = v30;
        }
      }

      v38 = *(v5 + 56);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 56) = v38;
      v5 += 72;
      a3 += 72;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_240B43E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      *v7 = &unk_2852A1210;
      v8 = *(a1 + v6 + 8);
      *(v7 + 24) = *(a1 + v6 + 24);
      *(v7 + 8) = v8;
      *(a3 + v6 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      sub_240B4403C((a3 + v6 + 32), *(a1 + v6 + 32), *(a1 + v6 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + v6 + 40) - *(a1 + v6 + 32)) >> 3));
      v9 = *(a1 + v6 + 56);
      *(v7 + 64) = *(a1 + v6 + 64);
      *(v7 + 56) = v9;
      v6 += 72;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_240B43F9C(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 72;
      v6 = v3 - 72;
      v7 = (v3 - 72);
      do
      {
        v8 = *v7;
        v7 -= 9;
        (*v8)(v6);
        v5 -= 72;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_240B4403C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B440F0(result, a4);
  }

  return result;
}

void sub_240B440F0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_240B38528(a2);
  }

  sub_240B228BC();
}

uint64_t sub_240B44140(uint64_t *a1, uint64_t a2, uint64x2_t *a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  v87 = *MEMORY[0x277D85DE8];
  sub_240B64760(&v77, a3[1].i64[0], a3[1].i64[1], *(a1 + 16), 0);
  v16 = v84;
  if (!v84)
  {
    *v71 = v77;
    v77 = 0uLL;
    v72 = v79;
    *&v71[16] = v78;
    v73 = v80;
    v78 = 0;
    v79 = 0uLL;
    v80 = 0;
    v17 = *a1;
    v18 = a1[1] - *a1;
    v74 = v81;
    v75 = v82;
    v19 = a1[9];
    v20 = v18 >> 6;
    v76 = v83;
    v61 = a5;
    if (v19 < v18 >> 6)
    {
      v21 = a1[30];
      v22 = (v17 + (v19 << 6) + 48);
      while (*(v22 - 1) <= v21 && *v22 <= v21)
      {
        v22 += 8;
        if (v20 == ++v19)
        {
          goto LABEL_48;
        }
      }
    }

    if (v19 >= v20)
    {
      if (!a8)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v57 = a2;
      v59 = a8 ^ 1;
      v60 = a8;
      v24 = v19;
      v58 = a6;
      do
      {
        v25 = v17 + (v24 << 6);
        v26 = *(v25 + 56);
        v27 = v26;
        if (SHIDWORD(v26) < v26)
        {
          v27 = HIDWORD(v26);
        }

        if (v27 <= a6 && v27 >= a5)
        {
          v29.i64[0] = v26;
          v29.i64[1] = HIDWORD(v26);
          v30 = vnegq_s64(v29);
          v31 = vshlq_u64(*a3, v30);
          v32 = vshlq_u64(a3[1], v30);
          v33 = vbslq_s8(vcgtq_u64(vaddq_s64(v32, v31), *(v25 + 40)), vqsubq_u64(*(v25 + 40), v31), v32);
          v64 = v33;
          v34 = v33.i64[1];
          if (v33.i64[0] && v33.i64[1] != 0)
          {
            if (v60 && *(a1 + 258) == 1)
            {
              v36 = 4 * v33.i64[0];
              v38 = v31.i64[1];
              v37 = v31.i64[0];
              do
              {
                bzero((*(v25 + 24) + *(v25 + 16) * v38++ + 4 * v37), v36);
                --v34;
              }

              while (v34);
            }

            else
            {
              sub_240B3AC2C(&v67, v33.u32[0], v33.u32[2]);
              v16 = v70;
              if (v70)
              {
                goto LABEL_60;
              }

              v40 = v67;
              v39 = DWORD1(v67);
              v41 = __p[0];
              *&v85[0] = *(&v67 + 1);
              v62 = v69;
              v63 = __p[1];
              v42 = v59;
              if (!v67)
              {
                v42 = 1;
              }

              if ((v42 & 1) == 0 && DWORD1(v67))
              {
                v43 = __p[1];
                v44 = DWORD1(v67);
                do
                {
                  bzero(v43, 4 * v40);
                  v43 = &v41[v43];
                  --v44;
                }

                while (v44);
              }

              v45 = *(v25 + 56);
              v46 = *&v71[8];
              if (*&v71[8] >= *&v71[16])
              {
                v48 = (*&v71[8] - *v71) >> 6;
                v49 = v48 + 1;
                if ((v48 + 1) >> 58)
                {
                  sub_240B228BC();
                }

                v50 = *&v71[16] - *v71;
                if ((*&v71[16] - *v71) >> 5 > v49)
                {
                  v49 = v50 >> 5;
                }

                if (v50 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v51 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v51 = v49;
                }

                v69 = v71;
                if (v51)
                {
                  sub_240B45274(v51);
                }

                v52 = v48 << 6;
                *&v67 = 0;
                *(&v67 + 1) = v52;
                __p[1] = 0;
                *v52 = v40;
                *(v52 + 4) = v39;
                *(v52 + 8) = *&v85[0];
                *(v52 + 16) = v41;
                *(v52 + 24) = v63;
                *(v52 + 32) = v62;
                *(v52 + 40) = v64;
                *(v52 + 56) = v45;
                __p[0] = ((v48 << 6) + 64);
                v53 = (v48 << 6) + *v71 - *&v71[8];
                sub_240B452BC(*v71, *&v71[8], v53);
                v54 = *v71;
                v55 = *&v71[16];
                *v71 = v53;
                v65 = __p[0];
                *&v71[8] = *__p;
                __p[0] = v54;
                __p[1] = v55;
                *&v67 = v54;
                *(&v67 + 1) = v54;
                sub_240B45340(&v67);
                v47 = v65;
              }

              else
              {
                **&v71[8] = v40;
                *(v46 + 4) = v39;
                *(v46 + 8) = *&v85[0];
                *(v46 + 16) = v41;
                *(v46 + 24) = v63;
                *(v46 + 32) = v62;
                *(v46 + 40) = v64;
                *(v46 + 56) = v45;
                v47 = (v46 + 64);
              }

              *&v71[8] = v47;
              a6 = v58;
              a5 = v61;
            }
          }
        }

        ++v24;
        v17 = *a1;
      }

      while (v24 < (a1[1] - *a1) >> 6);
      a2 = v57;
      a8 = v60;
LABEL_48:
      if (!a8)
      {
LABEL_53:
        if (*v71 != *&v71[8])
        {
          v67 = xmmword_240C11540;
          v85[0] = xmmword_240C84F6C;
          v85[1] = unk_240C84F7C;
          __p[0] = 1056964608;
          __p[1] = 0;
          v69 = 0;
          v70 = 0;
          sub_240B43818(&__p[1], v85, v86);
        }

        v16 = 0;
        if (!a9 || !a11)
        {
          goto LABEL_60;
        }

        if ((a1[32] & 1) != 0 || *(*(a2 + 408) + 320))
        {
          v16 = 0;
          *a11 = 0;
          goto LABEL_60;
        }

LABEL_52:
        v16 = 0;
LABEL_60:
        *&v67 = &v72;
        sub_240B37900(&v67);
        *&v67 = v71;
        sub_240B379C0(&v67);
        goto LABEL_61;
      }
    }

    if (*(a1 + 258))
    {
      goto LABEL_52;
    }

    goto LABEL_53;
  }

LABEL_61:
  sub_240B43B14(&v77);
  return v16;
}

void sub_240B44860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_240B43AD0(&a21);
  sub_240B3CF1C(&a41);
  sub_240B43B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240B448E8(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, uint64_t a5, void *a6, double a7, __n128 a8)
{
  v10 = 0;
  v11 = *(a2 + 408);
  v113 = 0;
  v114 = a5;
  v92 = a5;
  v87 = v11;
  if (*(a1 + 256) == 1)
  {
    v10 = 0;
    v14 = *(a2 + 32);
    v16 = *(v11 + 104) == 1 && v14 == 1;
    if (v14)
    {
      v17 = *(v11 + 24);
    }

    else
    {
      v17 = 0;
    }

    v112 = v16;
    do
    {
      v18 = *(a1 + 64);
      v19 = 1.0 / ~(-1 << v18);
      if (v18 > 31)
      {
        v19 = 0.0;
      }

      v111 = v19;
      v20 = *(a2 + 32);
      v21 = v10;
      if (!v20)
      {
        v111 = *(*(a4 + 4208) + 4 * v10 + 256);
        v21 = 1 - v10;
        if (v10 == 2)
        {
          v21 = 2;
        }
      }

      v22 = (*a3 + (v21 << 6));
      if (*(v22 + 5))
      {
        v23 = *(v22 + 6) == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        return 1;
      }

      v24 = *(a5 + 24) + 40 * v10;
      v25 = *(v24 + 24);
      v26 = *(v24 + 32);
      v27 = v22[14];
      v28 = v22[15];
      v29 = *a6 >> v27;
      v30 = a6[1] >> v28;
      v31 = (a6[2] + (1 << v27) - 1) / (1 << v27);
      v32 = (a6[3] + (1 << v28) - 1) / (1 << v28);
      v33 = *v22;
      v34 = v22[1];
      if (v33 >= v31 + v29)
      {
        v35 = v31 + v29;
      }

      else
      {
        v35 = *v22;
      }

      if (v34 >= v32 + v30)
      {
        v36 = v32 + v30;
      }

      else
      {
        v36 = v22[1];
      }

      v37 = v35 >= v29;
      v38 = v35 - v29;
      if (!v37)
      {
        v38 = 0;
      }

      if (v31 + v29 > v33)
      {
        v31 = v38;
      }

      v39 = v36 - v30;
      if (v36 < v30)
      {
        v39 = 0;
      }

      if (v32 + v30 > v34)
      {
        v32 = v39;
      }

      v110[0] = v29;
      v110[1] = v30;
      v110[2] = v31;
      v110[3] = v32;
      v109 = v25;
      if (v26 != v32 || v25 != v31)
      {
        return 1;
      }

      if (v10 != 2 || v20)
      {
        if (v17)
        {
          v42 = *(v11 + 28);
          v107 = *(v11 + 32);
          v108 = v42;
          v99 = v110;
          v100 = v22;
          v101 = &v112;
          v102 = &v114;
          v103 = &v109;
          v104 = &v108;
          v105 = &v107;
          v106 = &v113;
          v115 = 0;
          v116 = &v115;
          if (!v26)
          {
            goto LABEL_55;
          }

          v43 = 0;
          v117 = sub_240B2AC64;
          v118 = &v99;
          do
          {
            sub_240B450C4(&v117, v43++);
          }

          while (v26 != v43);
        }

        else
        {
          v99 = v110;
          v100 = v22;
          v101 = &v112;
          v102 = a1;
          v103 = &v109;
          v104 = &v111;
          v105 = &v114;
          v106 = &v113;
          v115 = 0;
          v116 = &v115;
          if (!v26)
          {
            goto LABEL_55;
          }

          v44 = 0;
          v117 = sub_240B2AC64;
          v118 = &v99;
          do
          {
            sub_240B44E94(&v117, v44++);
          }

          while (v26 != v44);
        }
      }

      else
      {
        v99 = v110;
        v100 = v22;
        v101 = a3;
        v102 = &v114;
        v103 = &v113;
        v104 = &v109;
        v105 = &v111;
        v115 = 0;
        v116 = &v115;
        if (!v26)
        {
          goto LABEL_55;
        }

        v41 = 0;
        v117 = sub_240B2AC64;
        v118 = &v99;
        do
        {
          sub_240B451D0(&v117, v41++);
        }

        while (v26 != v41);
      }

      a5 = v92;
      v11 = v87;
LABEL_55:
      if (v112)
      {
        v10 = 1;
        v113 = 1;
        break;
      }

      v10 = v113 + 1;
      v113 = v10;
    }

    while (v10 < 3);
  }

  v88 = *(v11 + 320);
  if (!v88)
  {
    return 0;
  }

  v46 = 0;
  v85 = a3;
  v86 = a6;
  while (1)
  {
    v47 = *(v11 + 328) + 96 * v46;
    v98 = *(v47 + 28);
    v48 = *(v47 + 24);
    v49 = 0.0;
    if ((v48 & 1) == 0)
    {
      v49 = 1.0 / ~(-1 << v98);
    }

    v50 = (*a3 + (v10 << 6));
    v51 = v46 + 3;
    v52 = (*(a5 + 24) + 40 * (v46 + 3));
    v54 = v52[3];
    v53 = v52[4];
    v55 = v50[14];
    v56 = v50[15];
    v57 = *a6 >> v55;
    v58 = a6[1] >> v56;
    result = 1;
    v59 = (a6[2] + (1 << v55) - 1) / (1 << v55);
    v60 = (a6[3] + (1 << v56) - 1) / (1 << v56);
    v61 = *v50;
    v62 = v50[1];
    if (v61 >= v59 + v57)
    {
      v63 = v59 + v57;
    }

    else
    {
      v63 = *v50;
    }

    if (v62 >= v60 + v58)
    {
      v64 = v60 + v58;
    }

    else
    {
      v64 = v50[1];
    }

    v37 = v63 >= v57;
    v65 = v63 - v57;
    if (!v37)
    {
      v65 = 0;
    }

    if (v59 + v57 > v61)
    {
      v59 = v65;
    }

    v66 = v64 - v58;
    if (v64 < v58)
    {
      v66 = 0;
    }

    if (v60 + v58 > v62)
    {
      v60 = v66;
    }

    if (v53 != v60 || v54 != v59)
    {
      break;
    }

    if (v53)
    {
      v68 = 0;
      v96 = *(v47 + 32);
      v69 = v52[2];
      a8.n128_f32[0] = v49;
      v94 = v69;
      v95 = v52[1];
      v91 = 4 * v95;
      v89 = v46;
      v90 = 4 * v57;
      v70 = v58;
      v93 = a8;
      do
      {
        v71 = *(*(a5 + 24) + 40 * v51);
        v72 = *(v71 + 16);
        v73 = *(v71 + 24);
        v74 = *(v50 + 2);
        v75 = *(v50 + 3);
        if (v48)
        {
          sub_240B43650(v75 + v74 * (v68 + v58) + 4 * v57, (v73 + v72 * (v68 + v94) + 4 * v95), v54, v98, v96);
          a8 = v93;
          a5 = v92;
        }

        else if (*(a1 + 64) > 22)
        {
          if (v54)
          {
            v80 = (v73 + v91 + v72 * v69);
            v81 = (v75 + v90 + v74 * v70);
            v82 = v54;
            do
            {
              v83 = *v81++;
              v84 = v49 * v83;
              *v80++ = v84;
              --v82;
            }

            while (v82);
          }
        }

        else if (v54)
        {
          v76 = 0;
          v77 = (v73 + v91 + v72 * v69);
          v78 = (v75 + v90 + v74 * v70);
          do
          {
            v79 = *v78++;
            *v77++ = vmulq_n_f32(vcvtq_f32_s32(v79), a8.n128_f32[0]);
            v76 += 4;
          }

          while (v76 < v54);
        }

        ++v68;
        ++v69;
        ++v70;
      }

      while (v68 != v53);
      v10 = v113;
      a3 = v85;
      a6 = v86;
      v11 = v87;
      v46 = v89;
    }

    ++v46;
    v113 = ++v10;
    if (v46 == v88)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_240B44E94(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = (*(*(v2 + 8) + 24) + *(*(v2 + 8) + 16) * (*(*v2 + 8) + a2) + 4 * **v2);
  v4 = *(v2 + 24);
  if (**(v2 + 16) == 1)
  {
    v5 = **(v2 + 32);
    v6 = **(v2 + 40);
    if (*(v4 + 64) > 22)
    {
      v23 = *(**(v2 + 48) + 24);
      if (v5)
      {
        v24 = (*(*v23 + 24) + *(*v23 + 16) * (v23[2] + a2) + 4 * v23[1]);
        v25 = v3;
        v26 = v5;
        do
        {
          v27 = *v25++;
          v28 = v6 * v27;
          *v24++ = v28;
          --v26;
        }

        while (v26);
      }

      if (v5)
      {
        v29 = (*(v23[5] + 24) + *(v23[5] + 16) * (v23[7] + a2) + 4 * v23[6]);
        v30 = v3;
        v31 = v5;
        do
        {
          v32 = *v30++;
          v33 = v6 * v32;
          *v29++ = v33;
          --v31;
        }

        while (v31);
      }

      if (v5)
      {
        v34 = (*(v23[10] + 24) + *(v23[10] + 16) * (v23[12] + a2) + 4 * v23[11]);
        do
        {
          v35 = *v3++;
          v36 = v6 * v35;
          *v34++ = v36;
          --v5;
        }

        while (v5);
      }
    }

    else if (v5)
    {
      v7 = 0;
      v8 = *(**(v2 + 48) + 24);
      result = v8[11];
      v9 = *(v8[10] + 24) + *(v8[10] + 16) * (v8[12] + a2);
      v10 = (*(*v8 + 24) + *(*v8 + 16) * (v8[2] + a2) + 4 * v8[1]);
      v11 = v6;
      v12 = (*(v8[5] + 24) + *(v8[5] + 16) * (v8[7] + a2) + 4 * v8[6]);
      v13 = (v9 + 4 * result);
      do
      {
        v14 = *v3;
        v3 += 4;
        v15 = vmulq_n_f32(vcvtq_f32_s32(v14), v11);
        *v10++ = v15;
        *v12++ = v15;
        *v13++ = v15;
        v7 += 4;
      }

      while (v7 < v5);
    }
  }

  else
  {
    v16 = (*(**(v2 + 48) + 24) + 40 * **(v2 + 56));
    v17 = (*(*v16 + 24) + *(*v16 + 16) * (v16[2] + a2) + 4 * v16[1]);
    v18 = **(v2 + 32);
    v19 = **(v2 + 40);
    if (*(v4 + 64) > 22)
    {
      for (; v18; --v18)
      {
        v37 = *v3++;
        v38 = v19 * v37;
        *v17++ = v38;
      }
    }

    else if (v18)
    {
      v20 = 0;
      v21 = v19;
      do
      {
        v22 = *v3;
        v3 += 4;
        *v17 = vmulq_n_f32(vcvtq_f32_s32(v22), v21);
        v17 += 4;
        v20 += 4;
      }

      while (v20 < v18);
    }
  }

  return result;
}

unsigned int *sub_240B450C4(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = a2;
  v4 = *(*(v2 + 8) + 24) + *(*(v2 + 8) + 16) * (*(*v2 + 8) + a2) + 4 * **v2;
  if (**(v2 + 16) == 1)
  {
    for (i = 0; i != 120; i += 40)
    {
      v6 = (*(**(v2 + 24) + 24) + i);
      result = sub_240B43650(v4, (*(*v6 + 24) + *(*v6 + 16) * (v6[2] + v3) + 4 * v6[1]), **(v2 + 32), **(v2 + 40), **(v2 + 48));
    }
  }

  else
  {
    v8 = (*(**(v2 + 24) + 24) + 40 * **(v2 + 56));
    v9 = (*(*v8 + 24) + *(*v8 + 16) * (v8[2] + a2) + 4 * v8[1]);
    v10 = **(v2 + 32);
    v11 = **(v2 + 40);
    v12 = **(v2 + 48);

    return sub_240B43650(v4, v9, v10, v11, v12);
  }

  return result;
}

uint64_t sub_240B451D0(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = *v2[5];
  if (v3)
  {
    v4 = 0;
    v5 = **v2;
    v6 = (*v2)[1] + a2;
    v7 = v2[1][3] + v2[1][2] * v6;
    v8 = *(*v2[2] + 24) + *(*v2[2] + 16) * v6;
    v9 = (*(*v2[3] + 24) + 40 * *v2[4]);
    v10 = v9[1];
    v11 = *(*v9 + 24) + *(*v9 + 16) * (v9[2] + a2);
    v12 = (v7 + 4 * v5);
    v13 = (v8 + 4 * v5);
    v14 = (v11 + 4 * v10);
    v15 = *v2[6];
    do
    {
      v16 = *v12++;
      v17 = v16;
      v18 = *v13++;
      *v14++ = vmulq_n_f32(vcvtq_f32_s32(vaddq_s32(v18, v17)), v15);
      v4 += 4;
    }

    while (v4 < v3);
  }

  return result;
}

void sub_240B45274(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B452BC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      v7 = *(v5 + 3);
      v8 = *(v5 + 4);
      *(v5 + 3) = 0;
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      v9 = *(v5 + 40);
      *(a3 + 56) = *(v5 + 7);
      *(a3 + 40) = v9;
      v5 += 4;
      a3 += 64;
    }

    while (v5 != a2);
    do
    {
      sub_240B22320(v4 + 3);
      v4 += 4;
    }

    while (v4 != a2);
  }
}

uint64_t sub_240B45340(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    sub_240B22320((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_240B45394(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[3];
  if (v4)
  {
    v5 = 0;
    v7 = *(a4 + 16);
    v6 = *(a4 + 24);
    v8 = a3[2];
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = v6 + *a3 + v7 * (a3[1] + v5);
        v11 = *(a2 + 24) + *(a2 + 16) * (result[1] + v5) + 4 * *result;
        do
        {
          v12 = *(v11 + 4 * v9);
          if (v12 <= -128)
          {
            v12 = -128;
          }

          if (v12 >= 127)
          {
            LOBYTE(v12) = 127;
          }

          *(v10 + v9++) = v12;
          v8 = a3[2];
        }

        while (v9 < v8);
        v4 = a3[3];
      }

      ++v5;
    }

    while (v5 < v4);
  }

  return result;
}

uint64_t sub_240B4541C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  if (byte_240C87EA0[a4] <= 1u)
  {
    v6 = 1;
  }

  else
  {
    v6 = byte_240C87EA0[a4];
  }

  if (byte_240C87EBB[a4] <= 1u)
  {
    v7 = 1;
  }

  else
  {
    v7 = byte_240C87EBB[a4];
  }

  while (2)
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 40) + a3 * *(a1 + 48);
      if (a5 && *(v9 + a2 + v8) != 255)
      {
        return 1;
      }

      if (v8 | v5)
      {
        v10 = 2 * a4;
      }

      else
      {
        v10 = 2 * a4 + 1;
      }

      *(v9 + a2 + v8++) = v10;
    }

    while (v6 != v8);
    ++v5;
    ++a3;
    if (v5 != v7)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t sub_240B454AC(unsigned int **a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5)
{
  v52 = a3;
  if (*(a1 + 258) == 1)
  {
    v5 = a4;
    v7 = a2;
    v8 = a1;
    v48 = 0u;
    memset(v47, 0, sizeof(v47));
    v49 = 8;
    v50 = 0;
    v51 = 1;
    if (a5)
    {
      sub_240B649A8(v47, a1);
    }

    else
    {
      v10 = *(a1 + 16);
      memset(v54, 0, sizeof(v54));
      v55 = *(a1 + 3);
      LODWORD(v56) = v10;
      *(&v56 + 1) = a1[9];
      v57 = *(a1 + 80);
      if (v54 != a1)
      {
        sub_240B43928(&v54[1] + 1, a1[3], a1[4], 0x8E38E38E38E38E39 * ((a1[4] - a1[3]) >> 3));
      }

      v36 = v8;
      v12 = *v8;
      v11 = v8[1];
      while (1)
      {
        if (v12 == v11)
        {
          v9 = 0;
          v40 = *&v54[1];
          v42 = *(&v54[2] + 1);
          v46 = 0;
          v39 = v54[0];
          memset(v54, 0, sizeof(v54));
          v41 = *(&v54[1] + 8);
          v45 = v57;
          v43 = v55;
          v44 = v56;
          goto LABEL_28;
        }

        v14 = *(v12 + 5);
        v13 = *(v12 + 6);
        v15 = *(v12 + 7);
        sub_240B3AC2C(&v58, v14, v13);
        v9 = v61;
        if (v61)
        {
          break;
        }

        v53 = v58;
        v16 = v59;
        v17 = v60;
        if (v12[1] && *v12)
        {
          v18 = 0;
          v19 = *(&v59 + 1);
          do
          {
            memcpy(v19, (*(v12 + 3) + *(v12 + 2) * v18++), 4 * *v12);
            v19 += v16;
          }

          while (v18 < v12[1]);
        }

        v20 = *(&v54[0] + 1);
        if (*(&v54[0] + 1) >= *&v54[1])
        {
          v22 = (*(&v54[0] + 1) - *&v54[0]) >> 6;
          v23 = v22 + 1;
          if ((v22 + 1) >> 58)
          {
            sub_240B228BC();
          }

          v24 = *&v54[1] - *&v54[0];
          if ((*&v54[1] - *&v54[0]) >> 5 > v23)
          {
            v23 = v24 >> 5;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFC0)
          {
            v25 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          v60 = v54;
          if (v25)
          {
            sub_240B45274(v25);
          }

          v26 = v22 << 6;
          *&v58 = 0;
          *(&v58 + 1) = v26;
          *(&v59 + 1) = 0;
          *v26 = v53;
          *(v26 + 16) = v16;
          *(v26 + 32) = v17;
          *(v26 + 40) = v14;
          *(v26 + 48) = v13;
          *(v26 + 56) = v15;
          *&v59 = (v22 << 6) + 64;
          v27 = (v22 << 6) + *&v54[0] - *(&v54[0] + 1);
          sub_240B452BC(*&v54[0], *(&v54[0] + 1), v27);
          v28 = *&v54[0];
          v29 = *&v54[1];
          *&v54[0] = v27;
          v38 = v59;
          *(v54 + 8) = v59;
          *&v59 = v28;
          *(&v59 + 1) = v29;
          *&v58 = v28;
          *(&v58 + 1) = v28;
          sub_240B45340(&v58);
          v21 = v38;
        }

        else
        {
          **(&v54[0] + 1) = v53;
          *(v20 + 16) = v16;
          *(v20 + 32) = v17;
          *(v20 + 40) = v14;
          *(v20 + 48) = v13;
          *(v20 + 56) = v15;
          v21 = v20 + 64;
        }

        *(&v54[0] + 1) = v21;
        v12 += 16;
      }

      v46 = v61;
LABEL_28:
      *&v58 = &v54[1] + 8;
      sub_240B37900(&v58);
      *&v58 = v54;
      sub_240B379C0(&v58);
      v8 = v36;
      v5 = a4;
      if (v9)
      {
        sub_240B43B14(&v39);
LABEL_45:
        *&v39 = &v47[1] + 8;
        sub_240B37900(&v39);
        *&v39 = v47;
        sub_240B379C0(&v39);
        return v9;
      }

      v54[0] = v39;
      v39 = 0uLL;
      *(&v54[1] + 8) = v41;
      *&v54[1] = v40;
      *(&v54[2] + 1) = v42;
      v40 = 0;
      v41 = 0uLL;
      v42 = 0;
      v55 = v43;
      v56 = v44;
      v57 = v45;
      sub_240B649A8(v47, v54);
      *&v58 = &v54[1] + 8;
      sub_240B37900(&v58);
      *&v58 = v54;
      sub_240B379C0(&v58);
      sub_240B43B14(&v39);
      v7 = a2;
    }

    if (*(&v48 + 1) * v48 < v8[30] * v8[30])
    {
      v5 = 0;
    }

    sub_240B64600(v47, (v8 + 59), v5);
    if (v51)
    {
      v9 = 1;
    }

    else
    {
      if (*(*(a3 + 4208) + 120))
      {
        v30 = 0;
        do
        {
          (*(**(a3 + 4488) + 16))(*(a3 + 4488), v30++);
          v31 = *(*(a3 + 4208) + 120);
        }

        while (v30 < v31);
      }

      else
      {
        v31 = 0;
      }

      LOBYTE(v53) = 0;
      *&v58 = v7;
      *(&v58 + 1) = &v52;
      *&v39 = &v53;
      *(&v39 + 1) = &v52;
      v40 = v8;
      *&v41 = v7;
      *(&v41 + 1) = v47;
      if (v5)
      {
        v32 = sub_240B459BC(v5, v31, &v58, &v39);
      }

      else
      {
        *&v54[0] = 0;
        *(&v54[0] + 1) = v54;
        v32 = sub_240B459BC(v54, v31, &v58, &v39);
      }

      v9 = v32;
      if (!v32)
      {
        v33 = atomic_load(&v53);
        v9 = v33 & 1;
      }
    }

    goto LABEL_45;
  }

  return 0;
}

void sub_240B45960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  sub_240B3CF1C(&a41);
  sub_240B3CF1C(&a27);
  _Unwind_Resume(a1);
}

BOOL sub_240B459BC(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v8[0] = a3;
  v8[1] = a4;
  if (!*a1)
  {
    v5 = 1;
    if (sub_240B45A70(v8, 1))
    {
      return v5;
    }

    for (i = 0; i != v4; ++i)
    {
      sub_240B45ABC(v8, i, 0);
    }

    return 0;
  }

  return (*a1)(a1[1], v8, sub_240B45A70, sub_240B45ABC, 0, a2) != 0;
}

uint64_t sub_240B45A70(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(v2 + 12))
  {
    v3 = *(v2 + 24) & 1;
  }

  else
  {
    v3 = 1;
  }

  if (sub_240BF0E54(*(*(*a1)[1] + 4488), a2, v3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_240B45ABC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  v5 = atomic_load(*v3);
  if ((v5 & 1) == 0)
  {
    v6 = *(**(v3 + 8) + 4488);
    v7 = a2;
    v29 = a2;
    v30 = a3;
    v28 = v6;
    (*(*v6 + 24))(&v25);
    v9 = *&v25;
    *__p = v25;
    v32 = v26;
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    v12 = **(v3 + 8);
    v13 = *(v12 + 4208);
    v14 = v13[11];
    v15 = v13[17];
    v16 = v15 * (v7 / v14);
    v18 = v13[1];
    v17 = v13[2];
    *&v25 = v15 * (v7 % v14);
    *(&v25 + 1) = v16;
    v19 = v18 - v25;
    if (v18 < v25)
    {
      v19 = 0;
    }

    if (v25 + v15 <= v18)
    {
      v19 = v15;
    }

    v20 = v16 + v15;
    v21 = v17 >= v16;
    v22 = v17 - v16;
    if (!v21)
    {
      v22 = 0;
    }

    if (v20 <= v17)
    {
      v23 = v15;
    }

    else
    {
      v23 = v22;
    }

    v26 = v19;
    v27 = v23;
    if (sub_240B448E8(v4, v10, v11, v12, &v28, &v25, v9, v8) || (v24 = v28, ++*(*(v28 + 224) + v29), (*(*v24 + 32))(v24)))
    {
      atomic_store(1u, *v3);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_240B45C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t *sub_240B45C3C(int64x2_t *result, uint64_t *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2[2];
  v4 = a2[3];
  memset(v39, 0, sizeof(v39));
  if (v4)
  {
    v5 = 0;
    v7 = *(a3 + 16);
    v6 = *(a3 + 24);
    v8 = result + 4;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v14 = *a2;
      v15 = a2[1];
      if (v3 < 0x11)
      {
        v18 = 0;
      }

      else
      {
        v16 = (v6 + v7 * (v15 + v5) + 4 * v14);
        v17 = 16;
        do
        {
          v18 = v17;
          v19 = -2;
          v20 = v39;
          v21 = v8;
          do
          {
            v22 = v21[-4];
            v23 = *v21;
            v24 = vaddq_s64(*v21, v22);
            v21[-4] = *v21;
            v25 = veorq_s8(vshlq_n_s64(v22, 0x17uLL), v22);
            *v20++ = v24;
            *v21++ = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v23, 5uLL), v23), v25), vshrq_n_u64(v25, 0x12uLL));
            v19 += 2;
          }

          while (v19 < 6);
          v26 = -4;
          v27 = v39;
          v28 = v16;
          do
          {
            v29 = *v27++;
            *v28++ = vorrq_s8(vshrq_n_u32(v29, 9uLL), _Q0);
            v26 += 4;
          }

          while (v26 < 0xC);
          v17 = v18 + 16;
          v16 += 4;
        }

        while (v18 + 16 < v3);
      }

      v30 = -2;
      result = v39;
      v31 = v8;
      do
      {
        v32 = v31[-4];
        v33 = *v31;
        v34 = vaddq_s64(*v31, v32);
        v31[-4] = *v31;
        v35 = veorq_s8(vshlq_n_s64(v32, 0x17uLL), v32);
        *result++ = v34;
        *v31++ = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v33, 5uLL), v33), v35), vshrq_n_u64(v35, 0x12uLL));
        v30 += 2;
      }

      while (v30 < 6);
      if (v18 < v3)
      {
        v36 = (v6 + v7 * (v15 + v5) + 4 * v18 + 4 * v14);
        v37 = v39;
        do
        {
          v38 = *v37++;
          *v36++ = vorrq_s8(vshrq_n_u32(v38, 9uLL), _Q0);
          v18 += 4;
        }

        while (v18 < v3);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void sub_240B45DEC(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B45E44(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B45E9C(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_240B228BC();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    sub_240B49380(v5);
  }

  v6 = 40 * v2;
  v7 = *a2;
  v8 = a2[1];
  *(v6 + 32) = *(a2 + 4);
  *v6 = v7;
  *(v6 + 16) = v8;
  v9 = 40 * v2 + 40;
  v10 = *(a1 + 8) - *a1;
  v11 = 40 * v2 - v10;
  memcpy((v6 - v10), *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_240B45F80(void *a1)
{
  a1[11] = a1[10];
  a1[14] = a1[13];
  a1[17] = a1[16];
  a1[20] = a1[19];
  v1 = a1[1];
  v2 = a1[2];
  if (v1 != v2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_240B228BC();
  }
}

__n128 sub_240B46608(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = a2 - 3;
  v11 = &a2[-5].n128_i8[8];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (a2[-1].n128_u64[1] >= v12[1].n128_u64[0])
        {
          return result;
        }

LABEL_110:
        v206 = v12[1].n128_u64[0];
        v178 = *v12;
        v94 = *v9;
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = v94;
        result = v178;
        v95 = v206;
LABEL_111:
        a2[-1].n128_u64[1] = v95;
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v96 = v12[2].n128_u64[1];
      v97 = v12[4].n128_u64[0];
      if (v96 >= v12[1].n128_u64[0])
      {
        if (v97 < v96)
        {
          v148 = v12[2].n128_u64[1];
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          v12[3] = result;
          v12[4].n128_u64[0] = v148;
          if (v12[2].n128_u64[1] < v12[1].n128_u64[0])
          {
            v209 = v12[1].n128_u64[0];
            v183 = *v12;
            *v12 = *(v12 + 24);
            v12[1].n128_u64[0] = v12[2].n128_u64[1];
            result = v183;
            *(v12 + 24) = v183;
            v12[2].n128_u64[1] = v209;
          }
        }
      }

      else
      {
        if (v97 < v96)
        {
          v207 = v12[1].n128_u64[0];
          v179 = *v12;
          *v12 = v12[3];
          v12[1].n128_u64[0] = v12[4].n128_u64[0];
          result = v179;
          v12[3] = v179;
          v98 = v207;
          goto LABEL_189;
        }

        v211 = v12[1].n128_u64[0];
        v186 = *v12;
        *v12 = *(v12 + 24);
        v12[1].n128_u64[0] = v12[2].n128_u64[1];
        result = v186;
        *(v12 + 24) = v186;
        v12[2].n128_u64[1] = v211;
        if (v97 < v12[2].n128_u64[1])
        {
          v98 = v12[2].n128_u64[1];
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          v12[3] = result;
LABEL_189:
          v12[4].n128_u64[0] = v98;
        }
      }

      if (a2[-1].n128_u64[1] >= v12[4].n128_u64[0])
      {
        return result;
      }

      result = v12[3];
      v154 = v12[4].n128_u64[0];
      v155 = a2[-1].n128_u64[1];
      v12[3] = *v9;
      v12[4].n128_u64[0] = v155;
      a2[-1].n128_u64[1] = v154;
      *v9 = result;
      if (v12[4].n128_u64[0] >= v12[2].n128_u64[1])
      {
        return result;
      }

      v156 = v12[2].n128_u64[1];
      result = *(v12 + 24);
      *(v12 + 24) = v12[3];
      v12[2].n128_u64[1] = v12[4].n128_u64[0];
      v12[3] = result;
      v12[4].n128_u64[0] = v156;
LABEL_193:
      if (v12[2].n128_u64[1] < v12[1].n128_u64[0])
      {
        v212 = v12[1].n128_u64[0];
        v187 = *v12;
        *v12 = *(v12 + 24);
        v12[1].n128_u64[0] = v12[2].n128_u64[1];
        result = v187;
        *(v12 + 24) = v187;
        v12[2].n128_u64[1] = v212;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_240B48CC8(v12, (v12 + 24), v12 + 3, (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = (v12 + 24);
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v103[2].n128_u64[1];
            v105 = v103[1].n128_u64[0];
            v103 = v99;
            if (v104 < v105)
            {
              v180 = *v99;
              v106 = v102;
              while (1)
              {
                v107 = v12 + v106;
                *(v107 + 24) = *(v12 + v106);
                *(v107 + 5) = *(v12[1].n128_u64 + v106);
                if (!v106)
                {
                  break;
                }

                v106 -= 24;
                if (v104 >= *(v107 - 1))
                {
                  v108 = &v12[1].n128_i64[1] + v106;
                  goto LABEL_130;
                }
              }

              v108 = v12;
LABEL_130:
              result = v180;
              *v108 = v180;
              *(v108 + 16) = v104;
            }

            v99 = (v103 + 24);
            v102 += 24;
          }

          while (&v103[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v149 = a1[2].n128_u64[1];
          v150 = a1[1].n128_u64[0];
          a1 = v99;
          if (v149 < v150)
          {
            v184 = *v99;
            v151 = v99;
            do
            {
              *v151 = *(v151 - 24);
              v151[1].n128_u64[0] = v151[-1].n128_u64[1];
              v152 = v151[-2].n128_u64[0];
              v151 = (v151 - 24);
            }

            while (v149 < v152);
            result = v184;
            *v151 = v184;
            v151[1].n128_u64[0] = v149;
          }

          v99 = (a1 + 24);
        }

        while (&a1[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v109 = (v14 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = v12 + 24 * v112;
            if (2 * v111 + 2 < v14)
            {
              v114 = *(v113 + 2);
              v115 = *(v113 + 5);
              v116 = v114 >= v115;
              v117 = v114 >= v115 ? 0 : 24;
              v113 += v117;
              if (!v116)
              {
                v112 = 2 * v111 + 2;
              }
            }

            v118 = v12 + 24 * v111;
            v119 = *(v118 + 2);
            if (*(v113 + 2) >= v119)
            {
              v181 = *v118;
              do
              {
                v120 = v118;
                v118 = v113;
                v121 = *v113;
                *(v120 + 2) = *(v113 + 2);
                *v120 = v121;
                if (v109 < v112)
                {
                  break;
                }

                v122 = (2 * v112) | 1;
                v113 = v12 + 24 * v122;
                v123 = 2 * v112 + 2;
                if (v123 < v14)
                {
                  v124 = *(v113 + 2);
                  v125 = *(v113 + 5);
                  v126 = v124 >= v125;
                  v127 = v124 >= v125 ? 0 : 24;
                  v113 += v127;
                  if (!v126)
                  {
                    v122 = v123;
                  }
                }

                v112 = v122;
              }

              while (*(v113 + 2) >= v119);
              *v118 = v181;
              *(v118 + 2) = v119;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        v128 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v129 = 0;
          v208 = v12[1].n128_u64[0];
          v182 = *v12;
          v130 = v12;
          do
          {
            v131 = v130 + 24 * v129;
            v132 = (v131 + 24);
            v133 = (2 * v129) | 1;
            v129 = 2 * v129 + 2;
            if (v129 >= v128)
            {
              v129 = v133;
            }

            else
            {
              v134 = *(v131 + 5);
              v135 = *(v131 + 8);
              v136 = (v131 + 48);
              if (v134 >= v135)
              {
                v129 = v133;
              }

              else
              {
                v132 = v136;
              }
            }

            v137 = *v132;
            v130[1].n128_u64[0] = v132[1].n128_u64[0];
            *v130 = v137;
            v130 = v132;
          }

          while (v129 <= ((v128 - 2) >> 1));
          a2 = (a2 - 24);
          if (v132 == a2)
          {
            result = v182;
            v132[1].n128_u64[0] = v208;
            *v132 = v182;
          }

          else
          {
            v138 = *a2;
            v132[1].n128_u64[0] = a2[1].n128_u64[0];
            *v132 = v138;
            result = v182;
            a2[1].n128_u64[0] = v208;
            *a2 = v182;
            v139 = v132 - v12 + 24;
            if (v139 >= 25)
            {
              v140 = (-2 - 0x5555555555555555 * (v139 >> 3)) >> 1;
              v141 = (v12 + 24 * v140);
              v142 = v132[1].n128_u64[0];
              if (v141[1].n128_u64[0] < v142)
              {
                v159 = *v132;
                do
                {
                  v143 = v132;
                  v132 = v141;
                  v144 = *v141;
                  v143[1].n128_u64[0] = v141[1].n128_u64[0];
                  *v143 = v144;
                  if (!v140)
                  {
                    break;
                  }

                  v140 = (v140 - 1) >> 1;
                  v141 = (v12 + 24 * v140);
                }

                while (v141[1].n128_u64[0] < v142);
                result = v159;
                *v132 = v159;
                v132[1].n128_u64[0] = v142;
              }
            }
          }
        }

        while (v128-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = a2[-1].n128_u64[1];
    if (v13 >= 0xC01)
    {
      v18 = v16[1].n128_u64[0];
      if (v18 >= v12[1].n128_u64[0])
      {
        if (v17 < v18)
        {
          v190 = v16[1].n128_u64[0];
          v162 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v22;
          a2[-1].n128_u64[1] = v190;
          *v9 = v162;
          if (v16[1].n128_u64[0] < v12[1].n128_u64[0])
          {
            v191 = v12[1].n128_u64[0];
            v163 = *v12;
            v23 = *v16;
            v12[1].n128_u64[0] = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v191;
            *v16 = v163;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v188 = v12[1].n128_u64[0];
          v160 = *v12;
          v19 = *v9;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v19;
          goto LABEL_26;
        }

        v194 = v12[1].n128_u64[0];
        v166 = *v12;
        v26 = *v16;
        v12[1].n128_u64[0] = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v194;
        *v16 = v166;
        if (a2[-1].n128_u64[1] < v16[1].n128_u64[0])
        {
          v188 = v16[1].n128_u64[0];
          v160 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v27;
LABEL_26:
          a2[-1].n128_u64[1] = v188;
          *v9 = v160;
        }
      }

      v28 = v12 + 24 * v15;
      v29 = (v28 - 24);
      v30 = *(v28 - 1);
      v31 = a2[-2].n128_u64[0];
      if (v30 >= v12[2].n128_u64[1])
      {
        if (v31 < v30)
        {
          v195 = v29[1].n128_u64[0];
          v167 = *v29;
          v35 = *v10;
          v29[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v29 = v35;
          a2[-2].n128_u64[0] = v195;
          *v10 = v167;
          if (v29[1].n128_u64[0] < v12[2].n128_u64[1])
          {
            v36 = *(v12 + 24);
            v37 = v12[2].n128_u64[1];
            v38 = v29[1].n128_u64[0];
            *(v12 + 24) = *v29;
            v12[2].n128_u64[1] = v38;
            v29[1].n128_u64[0] = v37;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v31 < v30)
        {
          v32 = *(v12 + 24);
          v33 = v12[2].n128_u64[1];
          v34 = a2[-2].n128_u64[0];
          *(v12 + 24) = *v10;
          v12[2].n128_u64[1] = v34;
          goto LABEL_38;
        }

        v41 = *(v12 + 24);
        v42 = v12[2].n128_u64[1];
        v43 = v29[1].n128_u64[0];
        *(v12 + 24) = *v29;
        v12[2].n128_u64[1] = v43;
        v29[1].n128_u64[0] = v42;
        *v29 = v41;
        if (a2[-2].n128_u64[0] < v29[1].n128_u64[0])
        {
          v197 = v29[1].n128_u64[0];
          v169 = *v29;
          v44 = *v10;
          v29[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v29 = v44;
          v32 = v169;
          v33 = v197;
LABEL_38:
          a2[-2].n128_u64[0] = v33;
          *v10 = v32;
        }
      }

      v45 = v12 + 24 * v15;
      v46 = *(v45 + 5);
      v47 = a2[-4].n128_u64[1];
      if (v46 >= v12[4].n128_u64[0])
      {
        if (v47 < v46)
        {
          v198 = *(v45 + 5);
          v170 = *(v45 + 24);
          v51 = *v11;
          *(v45 + 5) = a2[-4].n128_u64[1];
          *(v45 + 24) = v51;
          a2[-4].n128_u64[1] = v198;
          *v11 = v170;
          if (*(v45 + 5) < v12[4].n128_u64[0])
          {
            v52 = v12[3];
            v53 = v12[4].n128_u64[0];
            v54 = *(v45 + 5);
            v12[3] = *(v45 + 24);
            v12[4].n128_u64[0] = v54;
            *(v45 + 5) = v53;
            *(v45 + 24) = v52;
          }
        }
      }

      else
      {
        if (v47 < v46)
        {
          v48 = v12[3];
          v49 = v12[4].n128_u64[0];
          v50 = a2[-4].n128_u64[1];
          v12[3] = *v11;
          v12[4].n128_u64[0] = v50;
          goto LABEL_47;
        }

        v55 = v12[3];
        v56 = v12[4].n128_u64[0];
        v57 = *(v45 + 5);
        v12[3] = *(v45 + 24);
        v12[4].n128_u64[0] = v57;
        *(v45 + 5) = v56;
        *(v45 + 24) = v55;
        if (a2[-4].n128_u64[1] < *(v45 + 5))
        {
          v199 = *(v45 + 5);
          v171 = *(v45 + 24);
          v58 = *v11;
          *(v45 + 5) = a2[-4].n128_u64[1];
          *(v45 + 24) = v58;
          v48 = v171;
          v49 = v199;
LABEL_47:
          a2[-4].n128_u64[1] = v49;
          *v11 = v48;
        }
      }

      v59 = v16[1].n128_u64[0];
      v60 = *(v45 + 5);
      if (v59 >= v29[1].n128_u64[0])
      {
        if (v60 < v59)
        {
          v201 = v16[1].n128_u64[0];
          v173 = *v16;
          *v16 = *(v45 + 24);
          v16[1].n128_u64[0] = *(v45 + 5);
          *(v45 + 5) = v201;
          *(v45 + 24) = v173;
          if (v16[1].n128_u64[0] < v29[1].n128_u64[0])
          {
            v202 = v29[1].n128_u64[0];
            v174 = *v29;
            *v29 = *v16;
            v29[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v202;
            *v16 = v174;
          }
        }
      }

      else
      {
        if (v60 < v59)
        {
          v200 = v29[1].n128_u64[0];
          v172 = *v29;
          *v29 = *(v45 + 24);
          v29[1].n128_u64[0] = *(v45 + 5);
          goto LABEL_56;
        }

        v203 = v29[1].n128_u64[0];
        v175 = *v29;
        *v29 = *v16;
        v29[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v203;
        *v16 = v175;
        if (*(v45 + 5) < v16[1].n128_u64[0])
        {
          v200 = v16[1].n128_u64[0];
          v172 = *v16;
          *v16 = *(v45 + 24);
          v16[1].n128_u64[0] = *(v45 + 5);
LABEL_56:
          *(v45 + 5) = v200;
          *(v45 + 24) = v172;
        }
      }

      v204 = v12[1].n128_u64[0];
      v176 = *v12;
      v61 = *v16;
      v12[1].n128_u64[0] = v16[1].n128_u64[0];
      *v12 = v61;
      v16[1].n128_u64[0] = v204;
      *v16 = v176;
      goto LABEL_58;
    }

    v20 = v12[1].n128_u64[0];
    if (v20 >= v16[1].n128_u64[0])
    {
      if (v17 < v20)
      {
        v192 = v12[1].n128_u64[0];
        v164 = *v12;
        v24 = *v9;
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = v24;
        a2[-1].n128_u64[1] = v192;
        *v9 = v164;
        if (v12[1].n128_u64[0] < v16[1].n128_u64[0])
        {
          v193 = v16[1].n128_u64[0];
          v165 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = v12[1].n128_u64[0];
          *v16 = v25;
          v12[1].n128_u64[0] = v193;
          *v12 = v165;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v20)
    {
      v189 = v16[1].n128_u64[0];
      v161 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v16 = v21;
LABEL_35:
      a2[-1].n128_u64[1] = v189;
      *v9 = v161;
      goto LABEL_58;
    }

    v196 = v16[1].n128_u64[0];
    v168 = *v16;
    v39 = *v12;
    v16[1].n128_u64[0] = v12[1].n128_u64[0];
    *v16 = v39;
    v12[1].n128_u64[0] = v196;
    *v12 = v168;
    if (a2[-1].n128_u64[1] < v12[1].n128_u64[0])
    {
      v189 = v12[1].n128_u64[0];
      v161 = *v12;
      v40 = *v9;
      v12[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v12 = v40;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v62 = v12[1].n128_u64[0];
LABEL_61:
      v157 = *v12;
      v63 = v12;
      do
      {
        v64 = v63;
        v63 = (v63 + 24);
      }

      while (v64[2].n128_u64[1] < v62);
      v65 = a2;
      if (v64 == v12)
      {
        v68 = a2;
        while (v63 < v68)
        {
          v66 = (v68 - 24);
          v69 = v68[-1].n128_u64[1];
          v68 = (v68 - 24);
          if (v69 < v62)
          {
            goto LABEL_71;
          }
        }

        v66 = v68;
      }

      else
      {
        do
        {
          v66 = (v65 - 24);
          v67 = v65[-1].n128_u64[1];
          v65 = (v65 - 24);
        }

        while (v67 >= v62);
      }

LABEL_71:
      v12 = v63;
      if (v63 < v66)
      {
        v70 = v66;
        do
        {
          v71 = *v12;
          v72 = v12[1].n128_u64[0];
          v73 = v70[1].n128_u64[0];
          *v12 = *v70;
          v12[1].n128_u64[0] = v73;
          v70[1].n128_u64[0] = v72;
          *v70 = v71;
          do
          {
            v74 = v12[2].n128_u64[1];
            v12 = (v12 + 24);
          }

          while (v74 < v62);
          do
          {
            v75 = v70[-1].n128_u64[1];
            v70 = (v70 - 24);
          }

          while (v75 >= v62);
        }

        while (v12 < v70);
      }

      v76 = (v12 - 24);
      if (&v12[-2].n128_i8[8] != a1)
      {
        v77 = *v76;
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v77;
      }

      result = v157;
      *v76 = v157;
      v12[-1].n128_u64[1] = v62;
      if (v63 < v66)
      {
        goto LABEL_82;
      }

      v78 = sub_240B48F10(a1, &v12[-2].n128_i8[8], v157);
      if (sub_240B48F10(v12, a2, v79))
      {
        a2 = (v12 - 24);
        if (!v78)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v78)
      {
LABEL_82:
        result = sub_240B46608(a1, (v12 - 24), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v62 = v12[1].n128_u64[0];
      if (v12[-1].n128_u64[1] < v62)
      {
        goto LABEL_61;
      }

      v158 = *v12;
      if (v62 >= a2[-1].n128_u64[1])
      {
        v82 = &v12[1].n128_u64[1];
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v83 = *(v82 + 16);
          v82 += 24;
        }

        while (v62 >= v83);
      }

      else
      {
        v80 = v12;
        do
        {
          v12 = (v80 + 24);
          v81 = v80[2].n128_u64[1];
          v80 = (v80 + 24);
        }

        while (v62 >= v81);
      }

      v84 = a2;
      if (v12 < a2)
      {
        v85 = a2;
        do
        {
          v84 = (v85 - 24);
          v86 = v85[-1].n128_u64[1];
          v85 = (v85 - 24);
        }

        while (v62 < v86);
      }

      while (v12 < v84)
      {
        v205 = v12[1].n128_u64[0];
        v177 = *v12;
        v87 = *v84;
        v12[1].n128_u64[0] = v84[1].n128_u64[0];
        *v12 = v87;
        v84[1].n128_u64[0] = v205;
        *v84 = v177;
        do
        {
          v88 = v12[2].n128_u64[1];
          v12 = (v12 + 24);
        }

        while (v62 >= v88);
        do
        {
          v89 = v84[-1].n128_u64[1];
          v84 = (v84 - 24);
        }

        while (v62 < v89);
      }

      v90 = (v12 - 24);
      if (&v12[-2].n128_i8[8] != a1)
      {
        v91 = *v90;
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v91;
      }

      a4 = 0;
      result = v158;
      *v90 = v158;
      v12[-1].n128_u64[1] = v62;
    }
  }

  v92 = v12[2].n128_u64[1];
  v93 = a2[-1].n128_u64[1];
  if (v92 >= v12[1].n128_u64[0])
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *(v12 + 24);
    v146 = v12[2].n128_u64[1];
    v147 = a2[-1].n128_u64[1];
    *(v12 + 24) = *v9;
    v12[2].n128_u64[1] = v147;
    a2[-1].n128_u64[1] = v146;
    *v9 = result;
    goto LABEL_193;
  }

  if (v93 < v92)
  {
    goto LABEL_110;
  }

  v210 = v12[1].n128_u64[0];
  v185 = *v12;
  *v12 = *(v12 + 24);
  v12[1].n128_u64[0] = v12[2].n128_u64[1];
  result = v185;
  *(v12 + 24) = v185;
  v12[2].n128_u64[1] = v210;
  if (a2[-1].n128_u64[1] < v12[2].n128_u64[1])
  {
    result = *(v12 + 24);
    v95 = v12[2].n128_u64[1];
    v153 = a2[-1].n128_u64[1];
    *(v12 + 24) = *v9;
    v12[2].n128_u64[1] = v153;
    goto LABEL_111;
  }

  return result;
}

void sub_240B4757C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = *a1;
    v9 = v3 - *a1;
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3) + 1;
    if (v10 > 0x666666666666666)
    {
      sub_240B228BC();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x666666666666666)
      {
        operator new();
      }

      sub_240B2291C();
    }

    v13 = 8 * (v9 >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v7 = v13 + 40;
    v15 = v13 - v9;
    memcpy((v13 - v9), v8, v9);
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

__n128 sub_240B476B0(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = a2 - 3;
  v11 = &a2[-5].n128_i8[8];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (a2[-1].n128_u64[0] >= v12->n128_u64[1])
        {
          return result;
        }

LABEL_111:
        v208 = v12[1].n128_u64[0];
        v183 = *v12;
        v93 = *v9;
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = v93;
        result = v183;
        v94 = v208;
LABEL_112:
        a2[-1].n128_u64[1] = v94;
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v95 = v12[2].n128_u64[0];
      v96 = v12[3].n128_u64[1];
      if (v95 >= v12->n128_u64[1])
      {
        if (v96 < v95)
        {
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          v153 = v12[2].n128_u64[0];
          v152 = v12[2].n128_u64[1];
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          v12[3] = result;
          v12[4].n128_u64[0] = v152;
          if (v153 < v12->n128_u64[1])
          {
            v211 = v12[1].n128_u64[0];
            v186 = *v12;
            *v12 = *(v12 + 24);
            v12[1].n128_u64[0] = v12[2].n128_u64[1];
            result = v186;
            *(v12 + 24) = v186;
            v12[2].n128_u64[1] = v211;
          }
        }
      }

      else
      {
        if (v96 < v95)
        {
          v209 = v12[1].n128_u64[0];
          v184 = *v12;
          *v12 = v12[3];
          v12[1].n128_u64[0] = v12[4].n128_u64[0];
          result = v184;
          v12[3] = v184;
          v97 = v209;
          goto LABEL_191;
        }

        v213 = v12[1].n128_u64[0];
        v188 = *v12;
        *v12 = *(v12 + 24);
        v12[1].n128_u64[0] = v12[2].n128_u64[1];
        result = v188;
        *(v12 + 24) = v188;
        v12[2].n128_u64[1] = v213;
        if (v96 < v12[2].n128_u64[0])
        {
          v97 = v12[2].n128_u64[1];
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          v12[3] = result;
LABEL_191:
          v12[4].n128_u64[0] = v97;
        }
      }

      if (a2[-1].n128_u64[0] >= v12[3].n128_u64[1])
      {
        return result;
      }

      result = v12[3];
      v161 = v12[4].n128_u64[0];
      v162 = a2[-1].n128_u64[1];
      v12[3] = *v9;
      v12[4].n128_u64[0] = v162;
      a2[-1].n128_u64[1] = v161;
      *v9 = result;
      if (v12[3].n128_u64[1] >= v12[2].n128_u64[0])
      {
        return result;
      }

      result = *(v12 + 24);
      *(v12 + 24) = v12[3];
      v164 = v12[2].n128_u64[0];
      v163 = v12[2].n128_u64[1];
      v12[2].n128_u64[1] = v12[4].n128_u64[0];
      v12[3] = result;
      v12[4].n128_u64[0] = v163;
      if (v164 >= v12->n128_u64[1])
      {
        return result;
      }

LABEL_195:
      v214 = v12[1].n128_u64[0];
      v189 = *v12;
      *v12 = *(v12 + 24);
      v12[1].n128_u64[0] = v12[2].n128_u64[1];
      result = v189;
      *(v12 + 24) = v189;
      v12[2].n128_u64[1] = v214;
      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_240B4861C(v12, (v12 + 24), v12 + 3, (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v98 = (v12 + 24);
      v100 = v12 == a2 || v98 == a2;
      if (a4)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v12;
          do
          {
            v103 = v98;
            v104 = v102[2].n128_u64[0];
            if (v104 < v102->n128_u64[1])
            {
              v105 = v103->n128_u64[0];
              v106 = v102[2].n128_u64[1];
              v107 = v101;
              while (1)
              {
                v108 = v12 + v107;
                result = *(v12 + v107);
                *(v108 + 24) = result;
                *(v108 + 5) = *(v12[1].n128_u64 + v107);
                if (!v107)
                {
                  break;
                }

                v107 -= 24;
                if (v104 >= *(v108 - 2))
                {
                  v109 = (v12 + v107 + 24);
                  goto LABEL_131;
                }
              }

              v109 = v12;
LABEL_131:
              v109->n128_u64[0] = v105;
              v109->n128_u64[1] = v104;
              v109[1].n128_u64[0] = v106;
            }

            v98 = (v103 + 24);
            v101 += 24;
            v102 = v103;
          }

          while (&v103[1].n128_i8[8] != a2);
        }
      }

      else if (!v100)
      {
        do
        {
          v154 = v98;
          v155 = a1[2].n128_u64[0];
          if (v155 < a1->n128_u64[1])
          {
            v156 = v98->n128_u64[0];
            v157 = a1[2].n128_u64[1];
            v158 = v154;
            do
            {
              result = *(v158 - 24);
              *v158 = result;
              v158[1].n128_u64[0] = v158[-1].n128_u64[1];
              v159 = v158[-3].n128_u64[1];
              v158 = (v158 - 24);
            }

            while (v155 < v159);
            v158->n128_u64[0] = v156;
            v158->n128_u64[1] = v155;
            v158[1].n128_u64[0] = v157;
          }

          v98 = (v154 + 24);
          a1 = v154;
        }

        while (&v154[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v110 = (v14 - 2) >> 1;
        v111 = v110;
        do
        {
          v112 = v111;
          if (v110 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = &v12->n128_u64[3 * v113];
            if (2 * v112 + 2 < v14)
            {
              v115 = v114[1];
              v116 = v114[4];
              v117 = v115 >= v116;
              v118 = v115 >= v116 ? 0 : 24;
              v114 = (v114 + v118);
              if (!v117)
              {
                v113 = 2 * v112 + 2;
              }
            }

            v119 = &v12->n128_u64[3 * v112];
            v120 = v119[1];
            if (v114[1] >= v120)
            {
              v121 = *v119;
              v122 = v119[2];
              do
              {
                v123 = v119;
                v119 = v114;
                v124 = *v114;
                v123[2] = v114[2];
                *v123 = v124;
                if (v110 < v113)
                {
                  break;
                }

                v125 = (2 * v113) | 1;
                v114 = &v12->n128_u64[3 * v125];
                v126 = 2 * v113 + 2;
                if (v126 < v14)
                {
                  v127 = v114[1];
                  v128 = v114[4];
                  v129 = v127 >= v128;
                  v130 = v127 >= v128 ? 0 : 24;
                  v114 = (v114 + v130);
                  if (!v129)
                  {
                    v125 = v126;
                  }
                }

                v113 = v125;
              }

              while (v114[1] >= v120);
              *v119 = v121;
              v119[1] = v120;
              v119[2] = v122;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        v131 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v132 = 0;
          v210 = v12[1].n128_u64[0];
          v185 = *v12;
          v133 = v12;
          do
          {
            v134 = v133 + 24 * v132;
            v135 = (v134 + 24);
            v136 = (2 * v132) | 1;
            v132 = 2 * v132 + 2;
            if (v132 >= v131)
            {
              v132 = v136;
            }

            else
            {
              v137 = *(v134 + 4);
              v138 = *(v134 + 7);
              v139 = (v134 + 48);
              if (v137 >= v138)
              {
                v132 = v136;
              }

              else
              {
                v135 = v139;
              }
            }

            v140 = *v135;
            v133[1].n128_u64[0] = v135[1].n128_u64[0];
            *v133 = v140;
            v133 = v135;
          }

          while (v132 <= ((v131 - 2) >> 1));
          a2 = (a2 - 24);
          if (v135 == a2)
          {
            result = v185;
            v135[1].n128_u64[0] = v210;
            *v135 = v185;
          }

          else
          {
            v141 = *a2;
            v135[1].n128_u64[0] = a2[1].n128_u64[0];
            *v135 = v141;
            result = v185;
            a2[1].n128_u64[0] = v210;
            *a2 = v185;
            v142 = v135 - v12 + 24;
            if (v142 >= 25)
            {
              v143 = (-2 - 0x5555555555555555 * (v142 >> 3)) >> 1;
              v144 = (v12 + 24 * v143);
              v145 = v135->n128_u64[1];
              if (v144->n128_u64[1] < v145)
              {
                v146 = v135->n128_u64[0];
                v147 = v135[1].n128_u64[0];
                do
                {
                  v148 = v135;
                  v135 = v144;
                  result = *v144;
                  v148[1].n128_u64[0] = v144[1].n128_u64[0];
                  *v148 = result;
                  if (!v143)
                  {
                    break;
                  }

                  v143 = (v143 - 1) >> 1;
                  v144 = (v12 + 24 * v143);
                }

                while (v144->n128_u64[1] < v145);
                v135->n128_u64[0] = v146;
                v135->n128_u64[1] = v145;
                v135[1].n128_u64[0] = v147;
              }
            }
          }
        }

        while (v131-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = a2[-1].n128_u64[0];
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_u64[1];
      if (v18 >= v12->n128_u64[1])
      {
        if (v17 < v18)
        {
          v192 = v16[1].n128_u64[0];
          v167 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v22;
          a2[-1].n128_u64[1] = v192;
          *v9 = v167;
          if (v16->n128_u64[1] < v12->n128_u64[1])
          {
            v193 = v12[1].n128_u64[0];
            v168 = *v12;
            v23 = *v16;
            v12[1].n128_u64[0] = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v193;
            *v16 = v168;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v190 = v12[1].n128_u64[0];
          v165 = *v12;
          v19 = *v9;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v19;
          goto LABEL_26;
        }

        v196 = v12[1].n128_u64[0];
        v171 = *v12;
        v26 = *v16;
        v12[1].n128_u64[0] = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v196;
        *v16 = v171;
        if (a2[-1].n128_u64[0] < v16->n128_u64[1])
        {
          v190 = v16[1].n128_u64[0];
          v165 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v27;
LABEL_26:
          a2[-1].n128_u64[1] = v190;
          *v9 = v165;
        }
      }

      v28 = v12 + 24 * v15;
      v29 = (v28 - 24);
      v30 = *(v28 - 2);
      v31 = a2[-3].n128_u64[1];
      if (v30 >= v12[2].n128_u64[0])
      {
        if (v31 < v30)
        {
          v197 = v29[1].n128_u64[0];
          v172 = *v29;
          v35 = *v10;
          v29[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v29 = v35;
          a2[-2].n128_u64[0] = v197;
          *v10 = v172;
          if (v29->n128_u64[1] < v12[2].n128_u64[0])
          {
            v36 = *(v12 + 24);
            v37 = v12[2].n128_u64[1];
            v38 = v29[1].n128_u64[0];
            *(v12 + 24) = *v29;
            v12[2].n128_u64[1] = v38;
            v29[1].n128_u64[0] = v37;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v31 < v30)
        {
          v32 = *(v12 + 24);
          v33 = v12[2].n128_u64[1];
          v34 = a2[-2].n128_u64[0];
          *(v12 + 24) = *v10;
          v12[2].n128_u64[1] = v34;
          goto LABEL_38;
        }

        v41 = *(v12 + 24);
        v42 = v12[2].n128_u64[1];
        v43 = v29[1].n128_u64[0];
        *(v12 + 24) = *v29;
        v12[2].n128_u64[1] = v43;
        v29[1].n128_u64[0] = v42;
        *v29 = v41;
        if (a2[-3].n128_u64[1] < v29->n128_u64[1])
        {
          v199 = v29[1].n128_u64[0];
          v174 = *v29;
          v44 = *v10;
          v29[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v29 = v44;
          v32 = v174;
          v33 = v199;
LABEL_38:
          a2[-2].n128_u64[0] = v33;
          *v10 = v32;
        }
      }

      v45 = v12 + 24 * v15;
      v46 = *(v45 + 4);
      v47 = a2[-4].n128_u64[0];
      if (v46 >= v12[3].n128_u64[1])
      {
        if (v47 < v46)
        {
          v200 = *(v45 + 5);
          v175 = *(v45 + 24);
          v51 = *v11;
          *(v45 + 5) = a2[-4].n128_u64[1];
          *(v45 + 24) = v51;
          a2[-4].n128_u64[1] = v200;
          *v11 = v175;
          if (*(v45 + 4) < v12[3].n128_u64[1])
          {
            v52 = v12[3];
            v53 = v12[4].n128_u64[0];
            v54 = *(v45 + 5);
            v12[3] = *(v45 + 24);
            v12[4].n128_u64[0] = v54;
            *(v45 + 5) = v53;
            *(v45 + 24) = v52;
          }
        }
      }

      else
      {
        if (v47 < v46)
        {
          v48 = v12[3];
          v49 = v12[4].n128_u64[0];
          v50 = a2[-4].n128_u64[1];
          v12[3] = *v11;
          v12[4].n128_u64[0] = v50;
          goto LABEL_47;
        }

        v55 = v12[3];
        v56 = v12[4].n128_u64[0];
        v57 = *(v45 + 5);
        v12[3] = *(v45 + 24);
        v12[4].n128_u64[0] = v57;
        *(v45 + 5) = v56;
        *(v45 + 24) = v55;
        if (a2[-4].n128_u64[0] < *(v45 + 4))
        {
          v201 = *(v45 + 5);
          v176 = *(v45 + 24);
          v58 = *v11;
          *(v45 + 5) = a2[-4].n128_u64[1];
          *(v45 + 24) = v58;
          v48 = v176;
          v49 = v201;
LABEL_47:
          a2[-4].n128_u64[1] = v49;
          *v11 = v48;
        }
      }

      v59 = v16->n128_u64[1];
      v60 = *(v45 + 4);
      if (v59 >= v29->n128_u64[1])
      {
        if (v60 < v59)
        {
          v203 = v16[1].n128_u64[0];
          v178 = *v16;
          *v16 = *(v45 + 24);
          v16[1].n128_u64[0] = *(v45 + 5);
          *(v45 + 5) = v203;
          *(v45 + 24) = v178;
          if (v16->n128_u64[1] < v29->n128_u64[1])
          {
            v204 = v29[1].n128_u64[0];
            v179 = *v29;
            *v29 = *v16;
            v29[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v204;
            *v16 = v179;
          }
        }
      }

      else
      {
        if (v60 < v59)
        {
          v202 = v29[1].n128_u64[0];
          v177 = *v29;
          *v29 = *(v45 + 24);
          v29[1].n128_u64[0] = *(v45 + 5);
          goto LABEL_56;
        }

        v205 = v29[1].n128_u64[0];
        v180 = *v29;
        *v29 = *v16;
        v29[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v205;
        *v16 = v180;
        if (*(v45 + 4) < v16->n128_u64[1])
        {
          v202 = v16[1].n128_u64[0];
          v177 = *v16;
          *v16 = *(v45 + 24);
          v16[1].n128_u64[0] = *(v45 + 5);
LABEL_56:
          *(v45 + 5) = v202;
          *(v45 + 24) = v177;
        }
      }

      v206 = v12[1].n128_u64[0];
      v181 = *v12;
      v61 = *v16;
      v12[1].n128_u64[0] = v16[1].n128_u64[0];
      *v12 = v61;
      result = v181;
      v16[1].n128_u64[0] = v206;
      *v16 = v181;
      goto LABEL_58;
    }

    v20 = v12->n128_u64[1];
    if (v20 >= v16->n128_u64[1])
    {
      if (v17 < v20)
      {
        v194 = v12[1].n128_u64[0];
        v169 = *v12;
        v24 = *v9;
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = v24;
        result = v169;
        a2[-1].n128_u64[1] = v194;
        *v9 = v169;
        if (v12->n128_u64[1] < v16->n128_u64[1])
        {
          v195 = v16[1].n128_u64[0];
          v170 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = v12[1].n128_u64[0];
          *v16 = v25;
          result = v170;
          v12[1].n128_u64[0] = v195;
          *v12 = v170;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v20)
    {
      v191 = v16[1].n128_u64[0];
      v166 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v16 = v21;
LABEL_35:
      result = v166;
      a2[-1].n128_u64[1] = v191;
      *v9 = v166;
      goto LABEL_58;
    }

    v198 = v16[1].n128_u64[0];
    v173 = *v16;
    v39 = *v12;
    v16[1].n128_u64[0] = v12[1].n128_u64[0];
    *v16 = v39;
    result = v173;
    v12[1].n128_u64[0] = v198;
    *v12 = v173;
    if (a2[-1].n128_u64[0] < v12->n128_u64[1])
    {
      v191 = v12[1].n128_u64[0];
      v166 = *v12;
      v40 = *v9;
      v12[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v12 = v40;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v62 = v12->n128_u64[1];
LABEL_61:
      v63 = v12->n128_u64[0];
      v64 = v12[1].n128_u64[0];
      v65 = v12;
      do
      {
        v66 = v65;
        v65 = (v65 + 24);
      }

      while (v66[2].n128_u64[0] < v62);
      v67 = a2;
      if (v66 == v12)
      {
        v70 = a2;
        while (v65 < v70)
        {
          v68 = (v70 - 24);
          v71 = v70[-1].n128_u64[0];
          v70 = (v70 - 24);
          if (v71 < v62)
          {
            goto LABEL_71;
          }
        }

        v68 = v70;
      }

      else
      {
        do
        {
          v68 = (v67 - 24);
          v69 = v67[-1].n128_u64[0];
          v67 = (v67 - 24);
        }

        while (v69 >= v62);
      }

LABEL_71:
      v12 = v65;
      if (v65 < v68)
      {
        v72 = v68;
        do
        {
          result = *v12;
          v73 = v12[1].n128_u64[0];
          v74 = v72[1].n128_u64[0];
          *v12 = *v72;
          v12[1].n128_u64[0] = v74;
          v72[1].n128_u64[0] = v73;
          *v72 = result;
          do
          {
            v75 = v12[2].n128_u64[0];
            v12 = (v12 + 24);
          }

          while (v75 < v62);
          do
          {
            v76 = v72[-1].n128_u64[0];
            v72 = (v72 - 24);
          }

          while (v76 >= v62);
        }

        while (v12 < v72);
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        result = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = result;
      }

      v12[-2].n128_u64[1] = v63;
      v12[-1].n128_u64[0] = v62;
      v12[-1].n128_u64[1] = v64;
      if (v65 < v68)
      {
        goto LABEL_82;
      }

      v77 = sub_240B48864(a1, &v12[-2].n128_u64[1], result);
      if (sub_240B48864(v12, a2, v78))
      {
        a2 = (v12 - 24);
        if (!v77)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v77)
      {
LABEL_82:
        result = sub_240B476B0(a1, (v12 - 24), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v62 = v12->n128_u64[1];
      if (v12[-1].n128_u64[0] < v62)
      {
        goto LABEL_61;
      }

      if (v62 >= a2[-1].n128_u64[0])
      {
        v81 = &v12[1].n128_u64[1];
        do
        {
          v12 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v82 = *(v81 + 8);
          v81 += 24;
        }

        while (v62 >= v82);
      }

      else
      {
        v79 = v12;
        do
        {
          v12 = (v79 + 24);
          v80 = v79[2].n128_u64[0];
          v79 = (v79 + 24);
        }

        while (v62 >= v80);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v84 = a2;
        do
        {
          v83 = (v84 - 24);
          v85 = v84[-1].n128_u64[0];
          v84 = (v84 - 24);
        }

        while (v62 < v85);
      }

      v86 = a1->n128_u64[0];
      v87 = a1[1].n128_u64[0];
      while (v12 < v83)
      {
        v207 = v12[1].n128_u64[0];
        v182 = *v12;
        v88 = *v83;
        v12[1].n128_u64[0] = v83[1].n128_u64[0];
        *v12 = v88;
        result = v182;
        v83[1].n128_u64[0] = v207;
        *v83 = v182;
        do
        {
          v89 = v12[2].n128_u64[0];
          v12 = (v12 + 24);
        }

        while (v62 >= v89);
        do
        {
          v90 = v83[-1].n128_u64[0];
          v83 = (v83 - 24);
        }

        while (v62 < v90);
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        result = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = result;
      }

      a4 = 0;
      v12[-2].n128_u64[1] = v86;
      v12[-1].n128_u64[0] = v62;
      v12[-1].n128_u64[1] = v87;
    }
  }

  v91 = v12[2].n128_u64[0];
  v92 = a2[-1].n128_u64[0];
  if (v91 >= v12->n128_u64[1])
  {
    if (v92 >= v91)
    {
      return result;
    }

    result = *(v12 + 24);
    v150 = v12[2].n128_u64[1];
    v151 = a2[-1].n128_u64[1];
    *(v12 + 24) = *v9;
    v12[2].n128_u64[1] = v151;
    a2[-1].n128_u64[1] = v150;
    *v9 = result;
    if (v12[2].n128_u64[0] >= v12->n128_u64[1])
    {
      return result;
    }

    goto LABEL_195;
  }

  if (v92 < v91)
  {
    goto LABEL_111;
  }

  v212 = v12[1].n128_u64[0];
  v187 = *v12;
  *v12 = *(v12 + 24);
  v12[1].n128_u64[0] = v12[2].n128_u64[1];
  result = v187;
  *(v12 + 24) = v187;
  v12[2].n128_u64[1] = v212;
  if (a2[-1].n128_u64[0] < v12[2].n128_u64[0])
  {
    result = *(v12 + 24);
    v94 = v12[2].n128_u64[1];
    v160 = a2[-1].n128_u64[1];
    *(v12 + 24) = *v9;
    v12[2].n128_u64[1] = v160;
    goto LABEL_112;
  }

  return result;
}

__n128 sub_240B4861C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u64[1];
  v7 = a3->n128_u64[1];
  if (v6 >= a1->n128_u64[1])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[1] < a3->n128_u64[1])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5->n128_u64[1] < a4->n128_u64[1])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u64[1] < a3->n128_u64[1])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u64[1] < a2->n128_u64[1])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u64[1] < a1->n128_u64[1])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_240B48864(uint64_t a1, void *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 3);
      v8 = *(a1 + 32);
      v9 = *(a2 - 2);
      if (v8 < *(a1 + 8))
      {
        if (v9 >= v8)
        {
          v37 = *(a1 + 16);
          v38 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 24) = v38;
          v39 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 40) = v37;
          if (*(a2 - 2) >= v39)
          {
            return 1;
          }

          v10 = *(a1 + 40);
          v11 = *(a1 + 24);
          v40 = *(a2 - 1);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v40;
        }

        else
        {
          v10 = *(a1 + 16);
          v11 = *a1;
          v12 = *(a2 - 1);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *v7 = v11;
        *(a2 - 1) = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      v26 = *(a2 - 1);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *v7 = v25;
      *(a2 - 1) = v24;
      if (*(a1 + 32) >= *(a1 + 8))
      {
        return 1;
      }

LABEL_51:
      v63 = *(a1 + 16);
      v64 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v64;
      *(a1 + 40) = v63;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_240B4861C(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 3), a3);
      return 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 8);
    v21 = *(a1 + 56);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        v34 = *(a1 + 32);
        v33 = *(a1 + 40);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v33;
        if (v34 < v20)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
        }
      }
    }

    else
    {
      if (v21 < v19)
      {
        v22 = *(a1 + 16);
        v23 = *a1;
        *a1 = *(a1 + 48);
        *(a1 + 16) = *(a1 + 64);
LABEL_47:
        *(a1 + 48) = v23;
        *(a1 + 64) = v22;
        goto LABEL_48;
      }

      v53 = *(a1 + 16);
      v54 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 24) = v54;
      v55 = *(a1 + 32);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 40) = v53;
      if (v21 < v55)
      {
        v22 = *(a1 + 40);
        v23 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        goto LABEL_47;
      }
    }

LABEL_48:
    if (*(a2 - 2) >= *(a1 + 56))
    {
      return 1;
    }

    v56 = a2 - 3;
    v57 = *(a1 + 64);
    v58 = *(a1 + 48);
    v59 = *(a2 - 1);
    *(a1 + 48) = *(a2 - 3);
    *(a1 + 64) = v59;
    *v56 = v58;
    v56[2] = v57;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v60 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    v62 = *(a1 + 32);
    v61 = *(a1 + 40);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v60;
    *(a1 + 64) = v61;
    if (v62 >= *(a1 + 8))
    {
      return 1;
    }

    goto LABEL_51;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 2) < *(a1 + 8))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 1);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v6;
      *(a2 - 3) = v5;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 32);
  v15 = *(a1 + 8);
  v16 = *(a1 + 56);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 24);
      *(a1 + 24) = *v13;
      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 64);
      *v13 = v27;
      *(a1 + 64) = v28;
      if (v29 < v15)
      {
        v30 = *(a1 + 16);
        v31 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v31;
        *(a1 + 40) = v30;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 24) = v42;
      v43 = *(a1 + 32);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 40) = v41;
      if (v16 >= v43)
      {
        goto LABEL_34;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_34:
  v44 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    v47 = v44[1];
    if (v47 < v13[1])
    {
      v48 = *v44;
      v49 = v44[2];
      v50 = v45;
      while (1)
      {
        v51 = a1 + v50;
        *(v51 + 72) = *(a1 + v50 + 48);
        *(v51 + 88) = *(a1 + v50 + 64);
        if (v50 == -48)
        {
          break;
        }

        v50 -= 24;
        if (v47 >= *(v51 + 32))
        {
          v52 = (a1 + v50 + 72);
          goto LABEL_42;
        }
      }

      v52 = a1;
LABEL_42:
      *v52 = v48;
      v52[1] = v47;
      v52[2] = v49;
      if (++v46 == 8)
      {
        return v44 + 3 == a2;
      }
    }

    v13 = v44;
    v45 += 24;
    v44 += 3;
    if (v44 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_240B48CC8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2[1].n128_u64[0];
  v7 = a3[1].n128_u64[0];
  if (v6 >= a1[1].n128_u64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2[1].n128_u64[0] < a1[1].n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3[1].n128_u64[0] < a2[1].n128_u64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1].n128_u64[0] < a3[1].n128_u64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3[1].n128_u64[0] < a2[1].n128_u64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2[1].n128_u64[0] < a1[1].n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5[1].n128_u64[0] < a4[1].n128_u64[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4[1].n128_u64[0] < a3[1].n128_u64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3[1].n128_u64[0] < a2[1].n128_u64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2[1].n128_u64[0] < a1[1].n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_240B48F10(uint64_t a1, __int128 *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 24);
      v8 = *(a1 + 40);
      v9 = *(a2 - 1);
      if (v8 < *(a1 + 16))
      {
        if (v9 >= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 1) >= *(a1 + 40))
          {
            return 1;
          }

          v10 = *(a1 + 40);
          v11 = *(a1 + 24);
          v37 = *(a2 - 1);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v37;
        }

        else
        {
          v10 = *(a1 + 16);
          v11 = *a1;
          v12 = *(a2 - 1);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *v7 = v11;
        *(a2 - 1) = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      v26 = *(a2 - 1);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *v7 = v25;
      *(a2 - 1) = v24;
LABEL_50:
      if (*(a1 + 40) < *(a1 + 16))
      {
        v55 = *(a1 + 16);
        v56 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v56;
        *(a1 + 40) = v55;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_240B48CC8(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v19 = *(a1 + 40);
    v20 = *(a1 + 16);
    v21 = *(a1 + 64);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 40) < v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v34;
          *(a1 + 40) = v33;
        }
      }

      goto LABEL_47;
    }

    if (v21 >= v19)
    {
      v47 = *(a1 + 16);
      v48 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v48;
      *(a1 + 40) = v47;
      if (v21 >= *(a1 + 40))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v23;
    *(a1 + 64) = v22;
LABEL_47:
    if (*(a2 - 1) >= *(a1 + 64))
    {
      return 1;
    }

    v49 = a2 - 24;
    v50 = *(a1 + 64);
    v51 = *(a1 + 48);
    v52 = *(a2 - 1);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 64) = v52;
    *v49 = v51;
    *(v49 + 16) = v50;
    if (*(a1 + 64) >= *(a1 + 40))
    {
      return 1;
    }

    v53 = *(a1 + 40);
    v54 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v54;
    *(a1 + 64) = v53;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 1) < *(a1 + 16))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 1);
      *a1 = *(a2 - 24);
      *(a1 + 16) = v6;
      *(a2 - 24) = v5;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 40);
  v15 = *(a1 + 16);
  v16 = *(a1 + 64);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 40) < v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 >= *(a1 + 40))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_33:
  v40 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 2);
    if (v43 < *(v13 + 2))
    {
      v58 = *v40;
      v44 = v41;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 72) = *(a1 + v44 + 48);
        *(v45 + 88) = *(a1 + v44 + 64);
        if (v44 == -48)
        {
          break;
        }

        v44 -= 24;
        if (v43 >= *(v45 + 40))
        {
          v46 = a1 + v44 + 72;
          goto LABEL_41;
        }
      }

      v46 = a1;
LABEL_41:
      *v46 = v58;
      *(v46 + 16) = v43;
      if (++v42 == 8)
      {
        return (v40 + 24) == a2;
      }
    }

    v13 = v40;
    v41 += 24;
    v40 = (v40 + 24);
    if (v40 == a2)
    {
      return 1;
    }
  }
}

void sub_240B49380(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_240B2291C();
}

void *sub_240B493D8(void *result, void *a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = a2[13];
  if (a3 < (a2[14] - v3) >> 3)
  {
    v6 = *(v3 + 8 * a3);
    if (v6)
    {
      v7 = result;
      sub_240B49544(result, v6);
      v8 = 0;
      while (1)
      {
        v9 = (a2[10] + 40 * v8);
        v10 = v9[2];
        v11 = v9[4];
        if (v10 >= a3)
        {
          if (v11)
          {
            v15 = 0;
            v16 = 0;
            do
            {
              v17 = a2[16] + 16 * v9[3];
              if (*(v17 + v15) > a3)
              {
                break;
              }

              sub_240B495E8(v7, (v17 + v15 + 8));
              ++v16;
              v15 += 16;
            }

            while (v16 < v9[4]);
            v10 = v9[2];
          }

          if (v10 <= a3)
          {
            return std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
          }
        }

        else
        {
          if (v11)
          {
            v12 = 0;
            v13 = 0;
            do
            {
              v14 = a2[19] + 16 * v9[3];
              if (*(v14 + v12) <= a3)
              {
                break;
              }

              sub_240B495E8(v7, (v14 + v12 + 8));
              ++v13;
              v12 += 16;
            }

            while (v13 < v9[4]);
          }

          ++v9;
        }

        v8 = *v9;
        if (*v9 == -1)
        {
          return std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
        }
      }
    }
  }

  return result;
}

void sub_240B49520(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B49544(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_240B299F4(a2);
    }

    sub_240B228BC();
  }
}

void sub_240B495E8(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_240B228BC();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_240B299F4(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void *sub_240B496C0(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_240B228BC();
  }

  return a1;
}

void sub_240B49748(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float32x4_t sub_240B49764(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  if (*(*v2 + 16))
  {
    v4 = 0;
    v5 = *v3;
    v6 = *(v2 + 8);
    v7 = v6[2] * (v3[1] + a2);
    v8 = (v6[3] + v7 + 4 * *v3);
    v9 = (v6[8] + v7 + 4 * v5);
    v10 = (v6[13] + v7 + 4 * v5);
    v11 = **(v2 + 16);
    v12 = v11[2] * a2;
    v13 = (v11[3] + v12);
    v14 = (v11[8] + v12);
    v15 = (v11[13] + v12);
    do
    {
      v16 = *v8++;
      v17 = v16;
      v18 = *v9++;
      v19 = v18;
      v20 = *v10++;
      v21 = *(v2 + 24);
      v22 = *(v21 + 144);
      v23 = vaddq_f32(v17, v19);
      v24 = vsubq_f32(v19, v17);
      v25 = (v21 + 160);
      v26 = vld1q_dup_f32(v25);
      v27 = vsubq_f32(v23, v26);
      v28 = (v21 + 164);
      v29 = vld1q_dup_f32(v28);
      v30 = (v21 + 168);
      v31 = vsubq_f32(v24, v29);
      v32 = vld1q_dup_f32(v30);
      v33 = vsubq_f32(v20, v32);
      v34 = vmlaq_f32(vdupq_lane_s32(*v22.i8, 0), v27, vmulq_f32(v27, v27));
      v35 = vmlaq_f32(vdupq_lane_s32(*v22.i8, 1), v31, vmulq_f32(v31, v31));
      v36 = vmlaq_f32(vdupq_laneq_s32(v22, 2), v33, vmulq_f32(v33, v33));
      result = vmlaq_f32(vmlaq_f32(vmulq_f32(*v21, v34), v35, *(v21 + 16)), v36, *(v21 + 32));
      v38 = vmlaq_f32(vmlaq_f32(vmulq_f32(*(v21 + 48), v34), v35, *(v21 + 64)), v36, *(v21 + 80));
      v39 = vmlaq_f32(vmlaq_f32(vmulq_f32(*(v21 + 96), v34), v35, *(v21 + 112)), v36, *(v21 + 128));
      *v13++ = result;
      *v14++ = v38;
      *v15++ = v39;
      v4 += 4;
    }

    while (v4 < *(*v2 + 16));
  }

  return result;
}

void sub_240B4988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[3] = a4;
  v7 = a3;
  v4 = *(a2 + 24);
  v6[0] = a2;
  v6[1] = a1;
  v6[2] = &v7;
  v8[0] = 0;
  v8[1] = v8;
  if (v4)
  {
    v5 = 0;
    v9[0] = sub_240B2AC64;
    v9[1] = v6;
    do
    {
      sub_240B49764(v9, v5++);
    }

    while (v4 != v5);
  }
}

void sub_240B49900(uint64_t a1)
{
  for (i = 0; i != 9; ++i)
  {
    v2 = &dword_240C81F54[i];
    v3 = vld1q_dup_f32(v2);
    *(a1 + 16 * i) = v3;
  }

  *(a1 + 144) = xmmword_240C87740;
  *(a1 + 176) = xmmword_240C81EB8;
  v4 = (a1 + 160);
  v5 = 4;
  do
  {
    *v4 = cbrtf(*(v4 - 4));
    ++v4;
    --v5;
  }

  while (v5);
}

uint64_t sub_240B4997C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 56);
  v4 = *(a2 + 69);
  *(a1 + 16) = *(a2 + 64);
  v5 = (a1 + 16);
  *(a1 + 21) = v4;
  if (a2 + 48 != a1)
  {
    sub_240B28A14((a1 + 32), *(a2 + 80), *(a2 + 88), *(a2 + 88) - *(a2 + 80));
  }

  v6 = 0;
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  *(a1 + 104) = *(a2 + 152);
  *(a1 + 88) = v9;
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 120) = *(a2 + 168);
  *(a1 + 136) = *(a2 + 184);
  *(a1 + 160) = *(a2 + 208);
  *(a1 + 176) = *(a2 + 224);
  *(a1 + 192) = *(a2 + 240);
  LODWORD(v7) = *(a2 + 300);
  *(a1 + 200) = v7;
  *(a1 + 864) = v7;
  v10 = *(a2 + 484);
  v11 = *(a2 + 500);
  *(a1 + 236) = *(a2 + 516);
  *(a1 + 220) = v11;
  *(a1 + 204) = v10;
  *(a1 + 240) = *(a2 + 480);
  v12 = *(a2 + 41);
  *(a1 + 241) = v12;
  v13 = *(a2 + 520);
  *(a1 + 804) = *(a2 + 528);
  *(a1 + 796) = v13;
  do
  {
    *(a1 + v6 + 812) = cbrtf(*(a1 + v6 + 796));
    v6 += 4;
  }

  while (v6 != 12);
  *(a1 + 808) = 1065353216;
  *(a1 + 824) = 1065353216;
  *(a1 + 828) = *(a2 + 532);
  if (*(a1 + 28) == 1)
  {
    if ((*(a1 + 64) & 1) != 0 || (v14 = 0, v15 = *(a1 + 72), v15 <= 0x12) && ((1 << v15) & 0x72102) != 0)
    {
      v14 = *(a1 + 56) != 1 || *v5 == 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = a1;
  if (v12)
  {
    v17 = a1;
    if (!v14)
    {
      v17 = sub_240B29FC8(*(a1 + 56) == 1);
    }
  }

  return sub_240B49B44(a1, v17);
}

uint64_t sub_240B49B44(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  *(a1 + 256) = v4;
  v5 = (a1 + 264);
  v7 = (a2 + 16);
  v6 = *(a2 + 16);
  *(a1 + 269) = *(a2 + 21);
  *(a1 + 264) = v6;
  if (a1 + 248 != a2)
  {
    sub_240B28A14((a1 + 280), *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
    v4 = *(a1 + 256);
  }

  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  v10 = *(a2 + 88);
  *(a1 + 352) = *(a2 + 104);
  *(a1 + 320) = v9;
  *(a1 + 336) = v10;
  *(a1 + 304) = v8;
  *(a1 + 368) = *(a2 + 120);
  *(a1 + 384) = *(a2 + 136);
  *(a1 + 408) = *(a2 + 160);
  *(a1 + 424) = *(a2 + 176);
  *(a1 + 440) = *(a2 + 192);
  *(a1 + 456) = v4;
  *(a1 + 464) = *v5;
  *(a1 + 469) = *(v5 + 5);
  sub_240B28A14((a1 + 480), *(a1 + 280), *(a1 + 288), *(a1 + 288) - *(a1 + 280));
  v11 = *(a1 + 320);
  *(a1 + 504) = *(a1 + 304);
  *(a1 + 520) = v11;
  *(a1 + 536) = *(a1 + 336);
  *(a1 + 552) = *(a1 + 352);
  *(a1 + 568) = *(a1 + 368);
  *(a1 + 584) = *(a1 + 384);
  *(a1 + 608) = *(a1 + 408);
  *(a1 + 624) = *(a1 + 424);
  *(a1 + 640) = *(a1 + 440);
  *(a1 + 512) = 0;
  *(a1 + 520) = 8;
  *(a1 + 648) = sub_240B4A210(a1 + 16, v7);
  v13 = *(a1 + 240);
  v14 = *(a1 + 204);
  v15 = *(a1 + 220);
  v73 = v14;
  v74 = v15;
  v75 = *(a1 + 236);
  v16 = (a1 + 852);
  *(a1 + 852) = 0x3F3717593E59B3D0;
  *(a1 + 860) = 1033100696;
  if (*(a2 + 20) == 1 && *(a2 + 16) == 1)
  {
    goto LABEL_5;
  }

  if (*(a2 + 56) != 1)
  {
    v22 = sub_240B29F18(0);
    v23 = *(v22 + 5);
    if (v23 > 8)
    {
      if (v23 == 9)
      {
        v24 = xmmword_240C114B0;
        v25 = xmmword_240C114C0;
        v26 = xmmword_240C114D0;
      }

      else
      {
        v24 = xmmword_240C11480;
        v25 = xmmword_240C11490;
        v26 = xmmword_240C114A0;
      }
    }

    else if (v23 == 1)
    {
      v24 = xmmword_240C11450;
      v25 = xmmword_240C11460;
      v26 = xmmword_240C11470;
    }

    else
    {
      v27 = *(v22 + 84);
      v28.i64[0] = v27;
      v28.i64[1] = SHIDWORD(v27);
      v29 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
      v25 = vmulq_f64(vcvtq_f64_s64(v28), v29);
      v30 = *(v22 + 92);
      v28.i64[0] = v30;
      v28.i64[1] = SHIDWORD(v30);
      v26 = vmulq_f64(vcvtq_f64_s64(v28), v29);
      v31 = *(v22 + 100);
      v28.i64[0] = v31;
      v28.i64[1] = SHIDWORD(v31);
      v24 = vmulq_f64(vcvtq_f64_s64(v28), v29);
    }

    v32 = *(v22 + 4);
    if (v32 > 9)
    {
      if (v32 == 10)
      {
        v33 = vdupq_n_s64(0x3FD5555555555555uLL);
      }

      else
      {
        v33 = xmmword_240C11440;
      }
    }

    else if (v32 == 1)
    {
      v33 = xmmword_240C11430;
    }

    else
    {
      v34 = *(v22 + 76);
      v35.i64[0] = v34;
      v35.i64[1] = SHIDWORD(v34);
      v33 = vmulq_f64(vcvtq_f64_s64(v35), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL));
    }

    v36 = v25.f64[0];
    v37 = v25.f64[1];
    v38 = v26.f64[0];
    v39 = v26.f64[1];
    v40 = v24.f64[0];
    v41 = v24.f64[1];
    v42 = v33.f64[0];
    v43 = v33.f64[1];
    if (!sub_240B4A278(v82, v36, v37, v38, v39, v40, v41, v42, v43) && !sub_240B4A430(&v76, v42, v43))
    {
      sub_240B2977C(&v76, v82, v72);
    }

    v44 = *(a2 + 20);
    if (v44 > 8)
    {
      if (v44 == 9)
      {
        v45 = xmmword_240C114B0;
        v46 = xmmword_240C114C0;
        v47 = xmmword_240C114D0;
      }

      else
      {
        v45 = xmmword_240C11480;
        v46 = xmmword_240C11490;
        v47 = xmmword_240C114A0;
      }
    }

    else if (v44 == 1)
    {
      v45 = xmmword_240C11450;
      v46 = xmmword_240C11460;
      v47 = xmmword_240C11470;
    }

    else
    {
      v48 = *(a2 + 84);
      v49.i64[0] = v48;
      v49.i64[1] = SHIDWORD(v48);
      v50 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
      v46 = vmulq_f64(vcvtq_f64_s64(v49), v50);
      v51 = *(a2 + 92);
      v49.i64[0] = v51;
      v49.i64[1] = SHIDWORD(v51);
      v47 = vmulq_f64(vcvtq_f64_s64(v49), v50);
      v52 = *(a2 + 100);
      v49.i64[0] = v52;
      v49.i64[1] = SHIDWORD(v52);
      v45 = vmulq_f64(vcvtq_f64_s64(v49), v50);
    }

    v53 = *v7;
    if (*v7 > 9)
    {
      if (v53 == 10)
      {
        v54 = vdupq_n_s64(0x3FD5555555555555uLL);
      }

      else
      {
        v54 = xmmword_240C11440;
      }
    }

    else if (v53 == 1)
    {
      v54 = xmmword_240C11430;
    }

    else
    {
      v55 = *(a2 + 76);
      v56.i64[0] = v55;
      v56.i64[1] = SHIDWORD(v55);
      v54 = vmulq_f64(vcvtq_f64_s64(v56), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL));
    }

    v57 = v46.f64[0];
    v58 = v46.f64[1];
    v59 = v47.f64[0];
    v60 = v47.f64[1];
    v61 = v45.f64[0];
    v62 = v45.f64[1];
    *v54.f64 = v54.f64[0];
    v63 = v54.f64[1];
    if (sub_240B4A278(v82, v57, v58, v59, v60, v61, v62, *v54.f64, v63))
    {
      return 1;
    }

    *v16 = *&v82[12];
    *(a1 + 860) = *&v82[20];
    if (*(a1 + 241) != 1)
    {
      goto LABEL_5;
    }

    v64 = *v7;
    if (*v7 > 9)
    {
      if (v64 == 10)
      {
        v65 = vdupq_n_s64(0x3FD5555555555555uLL);
        v66 = 0.33333;
      }

      else
      {
        v65.f64[1] = 0.351;
        v66 = 0.314;
      }
    }

    else if (v64 == 1)
    {
      v65.f64[1] = 0.329;
      v66 = 0.3127;
    }

    else
    {
      v67 = *(a2 + 76);
      v68.i64[0] = v67;
      v68.i64[1] = SHIDWORD(v67);
      v65 = vmulq_f64(vcvtq_f64_s64(v68), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL));
      v66 = v65.f64[0];
    }

    v69 = v65.f64[1];
    if (sub_240B4A430(&v76, v66, v69))
    {
      return 1;
    }

    sub_240B2977C(&v76, v82, v71);
    if (sub_240B29844(v71))
    {
      return 1;
    }

    sub_240B2977C(v71, v72, v70);
    sub_240B2977C(v70, a1 + 204, &v73);
    v13 = 0;
LABEL_5:
    if (*(a2 + 56) != 1)
    {
      goto LABEL_9;
    }
  }

  *v82 = v73;
  *&v82[16] = v74;
  v83 = v75;
  v76 = *v16;
  v17 = *(a1 + 860);
  v78 = v76;
  v77 = v17;
  v79 = v17;
  v80 = v76;
  v81 = v17;
  sub_240B2977C(&v76, v82, &v73);
LABEL_9:
  if (*(a1 + 241) == 1)
  {
    v18 = 0;
    v19 = *(a1 + 200);
    do
    {
      *v12.i32 = (255.0 / v19) * *(&v73 + v18);
      v12 = vdupq_lane_s32(*v12.i8, 0);
      *(a1 + 652 + 16 * v18++) = v12;
    }

    while (v18 != 9);
    *&v14 = fabs(v19 + -255.0);
    *(a1 + 844) = (*&v14 <= 0.100000001) & v13;
  }

  if (*(a2 + 64) == 1)
  {
    LODWORD(v14) = *(a2 + 68);
    *&v14 = v14 * 0.0000001;
  }

  else
  {
    *&v14 = 0x3FD89D89E0000000;
    if (*(a2 + 72) != 17)
    {
      *&v14 = 1.0;
    }
  }

  result = 0;
  v21 = *&v14;
  *(a1 + 848) = v21;
  return result;
}

BOOL sub_240B4A210(uint64_t a1, uint64_t a2)
{
  result = sub_240B4A668(a1, a2);
  if (result)
  {
    result = 0;
    if (*(a1 + 48) == *(a2 + 48))
    {
      if (*(a1 + 48))
      {
        v5 = *(a1 + 52);
        v6 = *(a2 + 52);
      }

      else
      {
        v5 = *(a1 + 56);
        v6 = *(a2 + 56);
      }

      if (v5 == v6)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_240B4A278(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v35 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a9 <= 1.0 && a8 >= 0.0 && a8 <= 1.0 && a9 > 0.0)
  {
    *&v32 = __PAIR64__(LODWORD(a4), LODWORD(a2));
    *(&v32 + 1) = __PAIR64__(LODWORD(a3), LODWORD(a6));
    *&v33 = __PAIR64__(LODWORD(a7), LODWORD(a5));
    *(&v33 + 2) = (1.0 - a2) - a3;
    *(&v33 + 3) = (1.0 - a4) - a5;
    v34 = (1.0 - a6) - a7;
    v30[0] = v32;
    v30[1] = v33;
    v31 = v34;
    result = sub_240B29844(v30);
    if (!result)
    {
      v28[0] = a8 / a9;
      v28[1] = 1.0;
      v29 = ((1.0 - a8) - a9) / a9;
      v14 = COERCE_INT(fabs(v29)) > 2139095039;
      result = 1;
      if (COERCE_INT(fabs(a8 / a9)) <= 2139095039 && !v14)
      {
        v15 = 0;
        v16 = v30;
        do
        {
          v17 = 0;
          v18 = 0.0;
          do
          {
            v18 = v18 + (*(v16 + v17 * 4) * v28[v17]);
            ++v17;
          }

          while (v17 != 3);
          v19 = v18;
          *&v27[v15++] = v19;
          v16 = (v16 + 12);
        }

        while (v15 != 3);
        v20 = v27[0];
        v21 = 0;
        v22 = 0;
        v23 = v27[1];
        v24 = 0;
        v25 = 0;
        v26 = v27[2];
        sub_240B2977C(&v32, &v20, a1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_240B4A430(uint64_t a1, float a2, float a3)
{
  v35 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a3 <= 1.0 && a2 >= 0.0 && a2 <= 1.0 && a3 > 0.0)
  {
    v33[0] = a2 / a3;
    v33[1] = 1.0;
    v34 = ((1.0 - a2) - a3) / a3;
    v6 = COERCE_UNSIGNED_INT(fabs(v34)) > 0x7F7FFFFF;
    if (COERCE_INT(fabs(a2 / a3)) <= 2139095039 && !v6)
    {
      v7 = 0;
      v8 = &unk_240C816B0;
      do
      {
        v9 = 0;
        v10 = 0.0;
        do
        {
          v10 = v10 + (*&v8[v9 * 4] * v33[v9]);
          ++v9;
        }

        while (v9 != 3);
        v11 = v10;
        *(&v30 + v7++) = v11;
        v8 += 12;
      }

      while (v7 != 3);
      v12 = 0;
      v13 = &unk_240C816B0;
      do
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v15 = v15 + (*&v13[v14 * 4] * *&dword_240C876E0[v14]);
          ++v14;
        }

        while (v14 != 3);
        v16 = v15;
        *(&v27 + v12++) = v16;
        v13 += 12;
      }

      while (v12 != 3);
      result = 1;
      if (v30 != 0.0 && v31 != 0.0 && v32 != 0.0)
      {
        v20 = v27 / v30;
        v21 = 0;
        v22 = 0;
        v23 = v28 / v31;
        v24 = 0;
        v25 = 0;
        v26 = v29 / v32;
        v17 = COERCE_UNSIGNED_INT(fabs(v28 / v31)) < 0x7F800000;
        v18 = COERCE_UNSIGNED_INT(fabs(v29 / v32)) < 0x7F800000;
        if (COERCE_INT(fabs(v27 / v30)) <= 2139095039 && v17 && v18)
        {
          sub_240B2977C(&v20, &unk_240C816B0, v19);
          sub_240B2977C(&unk_240C816D4, v19, a1);
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL sub_240B4A668(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[10];
  result = 0;
  if (v2 == a2[10] && *a1 == *a2 && (*a1 != 2 || a1[15] == a2[15] && a1[16] == a2[16]))
  {
    if ((v2 - 3) > 0xFFFFFFFD)
    {
      return 1;
    }

    v3 = a1[1];
    if (v3 == a2[1] && (v3 != 2 || a1[17] == a2[17] && a1[18] == a2[18] && a1[19] == a2[19] && a1[20] == a2[20] && a1[21] == a2[21] && a1[22] == a2[22]))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_240B4A744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if ((v2 != 2 || (*(a1 + 304) || *(a1 + 268) == 1) && ((*(a1 + 312) & 1) != 0 || *(a1 + 320) != 16)) && ((*(a1 + 241) & 1) != 0 || *(a2 + 28) == 1 && ((*(a2 + 64) & 1) != 0 || (v4 = *(a2 + 72), v4 <= 0x12) && ((1 << v4) & 0x72102) != 0) && (v2 != 1 || *(a2 + 16) == 1)))
  {
    return sub_240B49B44(a1, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t JxlSignatureCheck(unsigned __int8 *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a1)
  {
    if (*a1 == 255)
    {
      if (a2 != 1)
      {
        if (a1[1] == 10)
        {
          return 2;
        }

        return 1;
      }

      return 0;
    }
  }

  else
  {
    if (a2 < 0xC)
    {
      return 0;
    }

    if (!a1[1] && !a1[2] && a1[3] == 12 && a1[4] == 74 && a1[5] == 88 && a1[6] == 76 && a1[7] == 32 && a1[8] == 13 && a1[9] == 10 && a1[10] == 135 && a1[11] == 10)
    {
      return 3;
    }
  }

  return 1;
}

void JxlDecoderRewind_0(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 39) = 0;
  sub_240B4ADF0((a1 + 840), 0);
  *(a1 + 840) = 0;
  *(a1 + 896) = 0;
  *(a1 + 3552) = 0;
  *(a1 + 963) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 946) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1008) = *(a1 + 1012);
  *(a1 + 1016) = 98;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1048) = 8;
  *(a1 + 1056) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1176) = *(a1 + 1168);
  *(a1 + 3592) = 0u;
  *(a1 + 3608) = 0;
  sub_240B4AED0((a1 + 3304), 0);
  sub_240B4AF1C((a1 + 3312), 0);
  *(a1 + 3320) = 0;
  *(a1 + 3336) = *(a1 + 3328);
  sub_240B4AF68((a1 + 3296), 0);
  bzero(&v16, 0x690uLL);
  sub_240B5B484(&v16);
  sub_240B579D4(&v47);
  sub_240B5B388(v50);
  *(a1 + 1200) = v17;
  *(a1 + 1216) = v18;
  *(a1 + 1224) = v19;
  *(a1 + 1232) = v20;
  *(a1 + 1248) = v22;
  *(a1 + 1256) = v23[0];
  *(a1 + 1261) = *(v23 + 5);
  v2 = (a1 + 1272);
  v3 = *(a1 + 1272);
  if (v3)
  {
    *(a1 + 1280) = v3;
    operator delete(v3);
    *v2 = 0;
    *(a1 + 1280) = 0;
    *(a1 + 1288) = 0;
  }

  *v2 = *__p;
  *(a1 + 1288) = v25;
  __p[1] = 0;
  v25 = 0;
  __p[0] = 0;
  *(a1 + 1296) = v26;
  *(a1 + 1312) = v27;
  *(a1 + 1328) = v28;
  *(a1 + 1344) = v29;
  v4 = v32;
  *(a1 + 1360) = v30;
  *(a1 + 1376) = v31;
  *(a1 + 1400) = v4;
  v5 = v34;
  *(a1 + 1416) = v33;
  *(a1 + 1432) = v5;
  v6 = v35[0];
  *(a1 + 1443) = *(v35 + 3);
  *(a1 + 1440) = v6;
  v7 = v36;
  *(a1 + 1472) = v37;
  *(a1 + 1456) = v7;
  v8 = v38;
  *(a1 + 1504) = v39;
  *(a1 + 1512) = v40;
  *(a1 + 1488) = v8;
  sub_240B4B0EC((a1 + 1520));
  *(a1 + 1520) = v41;
  v9 = v44;
  *(a1 + 1536) = v42;
  v42 = 0;
  v41 = 0uLL;
  *(a1 + 1552) = v43;
  *(a1 + 1568) = v9;
  v10 = v45[2];
  *(a1 + 1584) = v45[0];
  *(a1 + 1589) = *(v45 + 5);
  *(a1 + 1608) = v46;
  *(a1 + 1600) = v10;
  *(a1 + 1624) = v48;
  *(a1 + 1640) = v49;
  *(a1 + 1656) = v50[4];
  v11 = v54;
  *(a1 + 1704) = v53;
  *(a1 + 1720) = v11;
  *(a1 + 1736) = v55;
  v12 = v52;
  *(a1 + 1672) = v51;
  *(a1 + 1688) = v12;
  memcpy((a1 + 1744), v56, 0x464uLL);
  v16 = &unk_2852A1C90;
  v57 = &v41;
  sub_240B4B18C(&v57);
  v21 = &unk_2852A1CB8;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(a1 + 2880) = *(a1 + 1200);
  *(a1 + 2896) = *(a1 + 1216);
  *(a1 + 2904) = *(a1 + 1224);
  *(a1 + 2912) = *(a1 + 1232);
  *(a1 + 2928) = *(a1 + 1248);
  *(a1 + 2936) = *(a1 + 1256);
  *(a1 + 2941) = *(a1 + 1261);
  sub_240B28A14((a1 + 2952), *(a1 + 1272), *(a1 + 1280), *(a1 + 1280) - *(a1 + 1272));
  v13 = *(a1 + 1312);
  *(a1 + 2976) = *(a1 + 1296);
  *(a1 + 2992) = v13;
  *(a1 + 3008) = *(a1 + 1328);
  *(a1 + 3024) = *(a1 + 1344);
  *(a1 + 3040) = *(a1 + 1360);
  *(a1 + 3056) = *(a1 + 1376);
  *(a1 + 3080) = *(a1 + 1400);
  *(a1 + 3096) = *(a1 + 1416);
  *(a1 + 3112) = *(a1 + 1432);
  *(a1 + 3120) = *(a1 + 1440);
  *(a1 + 3123) = *(a1 + 1443);
  *(a1 + 3136) = *(a1 + 1456);
  *(a1 + 3152) = *(a1 + 1472);
  *(a1 + 3168) = *(a1 + 1488);
  v14 = *(a1 + 1520);
  v15 = *(a1 + 1528);
  *(a1 + 3184) = *(a1 + 1504);
  *(a1 + 3192) = *(a1 + 1512);
  sub_240B4B24C((a1 + 3200), v14, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 5));
  *(a1 + 3232) = *(a1 + 1552);
  *(a1 + 3248) = *(a1 + 1568);
  *(a1 + 3264) = *(a1 + 1584);
  *(a1 + 3269) = *(a1 + 1589);
  *(a1 + 3280) = *(a1 + 1600);
  *(a1 + 3288) = *(a1 + 1608);
  operator new();
}

void sub_240B4ADF0(size_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    v4 = (3 * v2) >> 1;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 0x40)
    {
      v5 = 64;
    }

    else
    {
      v5 = v4;
    }

    v6 = sub_240C0C5EC(v5 + 8, (atomic_fetch_add_explicit(dword_27E519008, 1u, memory_order_relaxed) & 0xF) << 7);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      v9 = v6;
      if (v8)
      {
        memcpy(v6, v8, *a1);
        v9 = (v7 + *a1);
      }

      *v9 = 0;
      v10 = a1[2];
      a1[1] = v5;
      a1[2] = v7;
      if (v10)
      {
        atomic_fetch_add(&qword_27E519020, -*(v10 - 24));
        v11 = *(v10 - 32);

        free(v11);
      }
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
    }
  }
}

uint64_t sub_240B4AED0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_240B4B720(result);

    JUMPOUT(0x245CCE590);
  }

  return result;
}

uint64_t sub_240B4AF1C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_240B37684(result);

    JUMPOUT(0x245CCE590);
  }

  return result;
}

uint64_t **sub_240B4AF68(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v6 = (v2 + 52);
    sub_240B30C38(&v6);
    v2[27] = &unk_2852A1CB8;
    v3 = v2[31];
    if (v3)
    {
      v2[32] = v3;
      operator delete(v3);
    }

    for (i = 25; i != 10; i -= 5)
    {
      sub_240B22320(&v2[i]);
    }

    if (*(v2 + 87) < 0)
    {
      operator delete(v2[8]);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    JUMPOUT(0x245CCE590);
  }

  return result;
}

void *sub_240B4B064(void *a1)
{
  *a1 = &unk_2852A1C90;
  v4 = (a1 + 41);
  sub_240B4B18C(&v4);
  a1[6] = &unk_2852A1CB8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_240B4B0EC(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 96;
      v6 = v3 - 96;
      v7 = (v3 - 96);
      do
      {
        v8 = *v7;
        v7 -= 12;
        (*v8)(v6);
        v5 -= 96;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_240B4B18C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 12;
      v7 = v4 - 12;
      v8 = v4 - 12;
      do
      {
        v9 = *v8;
        v8 -= 12;
        (*v9)(v7);
        v6 -= 12;
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

std::string *sub_240B4B24C(std::string *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = result->__r_.__value_.__r.__words[0];
  if (0xAAAAAAAAAAAAAAABLL * ((result->__r_.__value_.__r.__words[2] - result->__r_.__value_.__r.__words[0]) >> 5) < a4)
  {
    sub_240B4B0EC(&result->__r_.__value_.__l.__data_);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((v7->__r_.__value_.__r.__words[2] - v7->__r_.__value_.__r.__words[0]) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v7->__r_.__value_.__r.__words[2] - v7->__r_.__value_.__r.__words[0]) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B4B5D4(v7, v10);
    }

    sub_240B228BC();
  }

  size = result->__r_.__value_.__l.__size_;
  v12 = size - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((size - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      v17 = 0;
      do
      {
        v18 = v8 + v17;
        *(v18 + 8) = *(a2 + v17 + 8);
        v19 = *(a2 + v17 + 24);
        *(v18 + 32) = *(a2 + v17 + 32);
        *(v18 + 24) = v19;
        *(v18 + 40) = *(a2 + v17 + 40);
        result = std::string::operator=((v8 + v17 + 48), (a2 + v17 + 48));
        v20 = *(a2 + v17 + 88);
        *(v18 + 72) = *(a2 + v17 + 72);
        *(v18 + 88) = v20;
        v17 += 96;
      }

      while (a2 + v17 != a3);
      v8 += v17;
      size = v7->__r_.__value_.__l.__size_;
    }

    if (size != v8)
    {
      v21 = size - 96;
      v22 = (size - 96);
      v23 = (size - 96);
      do
      {
        v24 = *v23;
        v23 -= 12;
        result = (*v24)(v22);
        v21 -= 96;
        v25 = v22 == v8;
        v22 = v23;
      }

      while (!v25);
    }

    v7->__r_.__value_.__l.__size_ = v8;
  }

  else
  {
    if (size != v8)
    {
      v13 = 0;
      do
      {
        v14 = v8 + v13;
        *(v14 + 8) = *(a2 + v13 + 8);
        v15 = *(a2 + v13 + 24);
        *(v14 + 32) = *(a2 + v13 + 32);
        *(v14 + 24) = v15;
        *(v14 + 40) = *(a2 + v13 + 40);
        std::string::operator=((v8 + v13 + 48), (a2 + v13 + 48));
        v16 = *(a2 + v13 + 88);
        *(v14 + 72) = *(a2 + v13 + 72);
        *(v14 + 88) = v16;
        v13 += 96;
      }

      while (v12 != v13);
      size = v7->__r_.__value_.__l.__size_;
    }

    result = sub_240B4B47C(a2 + v12, a3, size);
    v7->__r_.__value_.__l.__size_ = result;
  }

  return result;
}

uint64_t sub_240B4B47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      *v7 = &unk_2852A1AF0;
      v8 = a1 + v6;
      *(v7 + 8) = *(a1 + v6 + 8);
      *(v7 + 16) = &unk_2852A1288;
      v9 = *(a1 + v6 + 24);
      *(v7 + 32) = *(a1 + v6 + 32);
      *(v7 + 24) = v9;
      *(v7 + 40) = *(a1 + v6 + 40);
      if (*(a1 + v6 + 71) < 0)
      {
        sub_240B4B67C((v7 + 48), *(v8 + 48), *(v8 + 56));
      }

      else
      {
        v10 = *(v8 + 48);
        *(v7 + 64) = *(v8 + 64);
        *(v7 + 48) = v10;
      }

      v11 = a3 + v6;
      v12 = *(a1 + v6 + 72);
      *(v11 + 88) = *(a1 + v6 + 88);
      *(v11 + 72) = v12;
      v6 += 96;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_240B4B5D4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_240B4B624(a2);
  }

  sub_240B228BC();
}

void sub_240B4B624(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240B2291C();
}

void *sub_240B4B67C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_240B29A3C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_240B4B720(uint64_t a1)
{
  *(a1 + 5392) = &unk_2852A1CB8;
  v2 = *(a1 + 5424);
  if (v2)
  {
    *(a1 + 5432) = v2;
    operator delete(v2);
  }

  *(a1 + 5192) = &unk_2852A1CB8;
  v3 = *(a1 + 5224);
  if (v3)
  {
    *(a1 + 5232) = v3;
    operator delete(v3);
  }

  *(a1 + 4944) = &unk_2852A1CB8;
  v4 = *(a1 + 4976);
  if (v4)
  {
    *(a1 + 4984) = v4;
    operator delete(v4);
  }

  v14 = (a1 + 4912);
  sub_240B30C38(&v14);
  *(a1 + 4712) = &unk_2852A1CB8;
  v5 = *(a1 + 4744);
  if (v5)
  {
    *(a1 + 4752) = v5;
    operator delete(v5);
  }

  v6 = (a1 + 4696);
  v7 = -120;
  do
  {
    sub_240B22320(v6);
    v6 -= 5;
    v7 += 40;
  }

  while (v7);
  if (*(a1 + 4583) < 0)
  {
    operator delete(*(a1 + 4560));
  }

  v8 = *(a1 + 4496);
  *(a1 + 4496) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 4488);
  *(a1 + 4488) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 4480);
  *(a1 + 4480) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 4424);
  if (v11)
  {
    *(a1 + 4432) = v11;
    operator delete(v11);
  }

  sub_240B22320((a1 + 4304));
  v14 = (a1 + 4248);
  sub_240B31E8C(&v14);
  v14 = (a1 + 4224);
  sub_240B4B980(&v14);
  v12 = *(a1 + 4216);
  *(a1 + 4216) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return sub_240B4BA48(a1);
}

void sub_240B4B980(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 144;
      do
      {
        v7 = *(v6 + 7);
        if (v7)
        {
          *(v6 + 8) = v7;
          operator delete(v7);
        }

        v8 = *(v6 + 4);
        if (v8)
        {
          *(v6 + 5) = v8;
          operator delete(v8);
        }

        v10 = (v6 + 8);
        sub_240B23988(&v10);
        sub_240B22320(v6);
        v9 = v6 == v2;
        v6 -= 144;
      }

      while (!v9);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_240B4BA48(uint64_t a1)
{
  v2 = (a1 + 3944);
  v3 = 4200;
  do
  {
    v3 -= 456;
    v4 = (a1 + v3);
    v23 = (a1 + v3 + 416);
    sub_240B30C38(&v23);
    *(a1 + v3 + 216) = &unk_2852A1CB8;
    v5 = *(a1 + v3 + 248);
    if (v5)
    {
      v4[32] = v5;
      operator delete(v5);
    }

    v6 = -120;
    v7 = v2;
    do
    {
      sub_240B22320(v7);
      v7 -= 5;
      v6 += 40;
    }

    while (v6);
    if (*(v4 + 87) < 0)
    {
      operator delete(v4[8]);
    }

    v8 = *v4;
    *v4 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v2 -= 57;
  }

  while (v3 != 2376);
  v9 = (a1 + 2360);
  do
  {
    v3 -= 120;
    v10 = -120;
    v11 = v9;
    do
    {
      sub_240B22320(v11);
      v11 -= 5;
      v10 += 40;
    }

    while (v10);
    v9 -= 15;
  }

  while (v3 != 1896);
  v12 = *(a1 + 1856);
  if (v12)
  {
    *(a1 + 1864) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 1832);
  if (v13)
  {
    *(a1 + 1840) = v13;
    operator delete(v13);
  }

  for (i = 0; i != -72; i -= 24)
  {
    v15 = *(a1 + i + 1808);
    if (v15)
    {
      *(a1 + i + 1816) = v15;
      operator delete(v15);
    }
  }

  for (j = 1736; j != 1616; j -= 40)
  {
    sub_240B22320((a1 + j));
  }

  sub_240B22320((a1 + 1616));
  v17 = *(a1 + 1568);
  if (v17)
  {
    *(a1 + 1576) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 1536);
  if (v18)
  {
    *(a1 + 1544) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 1512);
  if (v19)
  {
    *(a1 + 1520) = v19;
    operator delete(v19);
  }

  v20 = *(a1 + 1488);
  if (v20)
  {
    *(a1 + 1496) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 1464);
  if (v21)
  {
    *(a1 + 1472) = v21;
    operator delete(v21);
  }

  v23 = (a1 + 1440);
  sub_240B4BC78(&v23);
  sub_240B4BCCC((a1 + 1256));
  sub_240B22320((a1 + 1168));
  sub_240B22320((a1 + 1128));
  sub_240B22320((a1 + 1088));
  sub_240B22320((a1 + 1048));
  v23 = (a1 + 928);
  sub_240B3CBC8(&v23);
  sub_240B38BD0((a1 + 216));
  sub_240B22320((a1 + 176));
  return a1;
}

void sub_240B4BC78(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240B4BD60(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_240B4BCCC(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_240B4BD60(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 536;
    do
    {
      v5 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v5;
        operator delete(v5);
      }

      v6 = v4 == v3;
      v4 -= 536;
    }

    while (!v6);
  }

  a1[1] = v3;
}

uint64_t JxlDecoderCreate(uint64_t *a1)
{
  if (!a1)
  {
    v4 = sub_240B5BFC8;
    v5 = 0;
LABEL_9:
    v2 = sub_240B5BFD4;
    goto LABEL_10;
  }

  v1 = a1[1];
  v2 = a1[2];
  if ((v1 == 0) != (v2 == 0))
  {
    return 0;
  }

  v5 = *a1;
  if (v1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = sub_240B5BFC8;
  }

  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v4(v5, 3640, 0x10F0040289BC776);
  v3 = v6;
  if (v6)
  {
    bzero(v6, 0xE38uLL);
    sub_240B2BCB4(v3 + 192);
    *(v3 + 240) = 0;
    *(v3 + 268) = 1245184;
    *(v3 + 280) = 0;
    *(v3 + 288) = 0;
    *(v3 + 328) = 0;
    *(v3 + 296) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 332) = xmmword_240C11420;
    *(v3 + 348) = 0u;
    *(v3 + 364) = 0u;
    *(v3 + 380) = 0u;
    *(v3 + 396) = 0u;
    *(v3 + 412) = 0u;
    *(v3 + 428) = 0u;
    *(v3 + 444) = 0u;
    *(v3 + 460) = 0u;
    *(v3 + 476) = 0u;
    *(v3 + 492) = 0u;
    *(v3 + 508) = 0u;
    *(v3 + 524) = 0u;
    *(v3 + 540) = 0u;
    *(v3 + 556) = 0u;
    *(v3 + 572) = 0u;
    *(v3 + 588) = 0u;
    *(v3 + 604) = 0u;
    *(v3 + 620) = 0u;
    *(v3 + 636) = 0u;
    *(v3 + 652) = 0u;
    *(v3 + 668) = 0u;
    *(v3 + 684) = 0u;
    *(v3 + 700) = 0u;
    *(v3 + 716) = 0u;
    *(v3 + 732) = 0u;
    *(v3 + 748) = 0u;
    *(v3 + 764) = 0u;
    *(v3 + 780) = 0u;
    *(v3 + 796) = 0u;
    *(v3 + 812) = 0u;
    *(v3 + 828) = 0;
    *(v3 + 856) = 0;
    *(v3 + 840) = 0u;
    *(v3 + 864) = 0x3E800000001;
    *(v3 + 872) = 0;
    *(v3 + 880) = 0u;
    *(v3 + 1040) = 1;
    *(v3 + 1168) = 0;
    *(v3 + 1176) = 0u;
    sub_240B5B484(v3 + 1192);
    sub_240B579D4((v3 + 1616));
    sub_240B5B388(v3 + 1648);
    sub_240B5B484(v3 + 2872);
    *(v3 + 3312) = 0;
    *(v3 + 3296) = 0u;
    *(v3 + 3328) = 0u;
    *(v3 + 3344) = 0u;
    *(v3 + 3408) = 0u;
    *(v3 + 3424) = 0u;
    *(v3 + 3440) = 0u;
    *(v3 + 3456) = 0u;
    *(v3 + 3472) = 0u;
    *(v3 + 3488) = 0u;
    *(v3 + 3504) = 0u;
    *(v3 + 3520) = 0;
    *(v3 + 3616) = 0;
    *(v3 + 3624) = 0u;
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v2;
    JxlDecoderReset(v3);
  }

  return v3;
}

void sub_240B4C034(_Unwind_Exception *a1)
{
  sub_240B4C100((v1 + 149));
  v4 = (v1 + 109);
  v5 = *v2;
  if (*v2)
  {
    v1[147] = v5;
    operator delete(v5);
  }

  v6 = *v4;
  if (*v4)
  {
    v1[110] = v6;
    operator delete(v6);
  }

  sub_240B4C188((v1 + 6));
  v7 = v1[3];
  v1[3] = 0;
  if (v7)
  {
    MEMORY[0x245CCE590](v7, 0xC0C40D1025EB5);
  }

  _Unwind_Resume(a1);
}

void sub_240B4C0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v11 = *(v10 + 160);
  if (v11)
  {
    *(v10 + 168) = v11;
    operator delete(v11);
  }

  v12 = *(v10 + 136);
  if (v12)
  {
    *(v10 + 144) = v12;
    operator delete(v12);
  }

  a10 = (v10 + 112);
  sub_240B23988(&a10);
  sub_240B22320((v10 + 104));
  v13 = *(v10 + 80);
  if (v13)
  {
    *(v10 + 88) = v13;
    operator delete(v13);
  }

  JUMPOUT(0x240B4C088);
}

uint64_t sub_240B4C100(uint64_t a1)
{
  *a1 = &unk_2852A1C90;
  v4 = (a1 + 328);
  sub_240B4B18C(&v4);
  *(a1 + 48) = &unk_2852A1CB8;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_240B4C188(uint64_t a1)
{
  sub_240B22320((a1 + 808));
  sub_240B22320((a1 + 248));
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v6 = (a1 + 64);
  sub_240B23988(&v6);
  sub_240B22320((a1 + 56));
  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  return a1;
}

void *JxlDecoderDestroy(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v19 = result[2];
    v3 = result[445];
    if (v3)
    {
      sub_240B1D6B8(v3);
    }

    v4 = v1[438];
    if (v4)
    {
      v1[439] = v4;
      operator delete(v4);
    }

    v5 = v1[435];
    if (v5)
    {
      v1[436] = v5;
      operator delete(v5);
    }

    v6 = v1[432];
    if (v6)
    {
      v1[433] = v6;
      operator delete(v6);
    }

    v7 = v1[429];
    if (v7)
    {
      v1[430] = v7;
      operator delete(v7);
    }

    v8 = v1[426];
    if (v8)
    {
      v1[427] = v8;
      operator delete(v8);
    }

    v9 = v1[419];
    v1[419] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[416];
    if (v10)
    {
      v1[417] = v10;
      operator delete(v10);
    }

    sub_240B4AF1C(v1 + 414, 0);
    sub_240B4AED0(v1 + 413, 0);
    sub_240B4AF68(v1 + 412, 0);
    v1[359] = &unk_2852A1C90;
    v20 = (v1 + 400);
    sub_240B4B18C(&v20);
    v1[365] = &unk_2852A1CB8;
    v11 = v1[369];
    if (v11)
    {
      v1[370] = v11;
      operator delete(v11);
    }

    v1[149] = &unk_2852A1C90;
    v20 = (v1 + 190);
    sub_240B4B18C(&v20);
    v1[155] = &unk_2852A1CB8;
    v12 = v1[159];
    if (v12)
    {
      v1[160] = v12;
      operator delete(v12);
    }

    v13 = v1[146];
    if (v13)
    {
      v1[147] = v13;
      operator delete(v13);
    }

    v14 = v1[109];
    if (v14)
    {
      v1[110] = v14;
      operator delete(v14);
    }

    sub_240B22320(v1 + 107);
    sub_240B22320(v1 + 37);
    v15 = v1[20];
    if (v15)
    {
      v1[21] = v15;
      operator delete(v15);
    }

    v16 = v1[17];
    if (v16)
    {
      v1[18] = v16;
      operator delete(v16);
    }

    v20 = (v1 + 14);
    sub_240B23988(&v20);
    sub_240B22320(v1 + 13);
    v17 = v1[10];
    if (v17)
    {
      v1[11] = v17;
      operator delete(v17);
    }

    v18 = v1[3];
    v1[3] = 0;
    if (v18)
    {
      MEMORY[0x245CCE590](v18, 0xC0C40D1025EB5);
    }

    return v19(v2, v1);
  }

  return result;
}

void JxlDecoderSkipFrames(char **a1, uint64_t a2)
{
  v2 = &a1[422][a2];
  a1[422] = v2;
  a1[436] = a1[435];
  v3 = &v2[a1[425]];
  v4 = a1[432];
  if (v3 < (a1[433] - v4) >> 3)
  {
    v6 = *&v4[8 * v3];
    v7 = a1[430];
    v8 = a1[429];
    if (v6 < (v7 - v8) >> 2)
    {
      v9 = 0;
      v39[0] = v6;
      v10 = a1 + 435;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      v11 = (a1[427] - a1[426]) >> 2;
      memset(v38, 0, sizeof(v38));
      do
      {
        sub_240B38D70(v38 + 3 * v9, (v7 - v8) >> 2);
        v7 = a1[430];
        v8 = a1[429];
        if (v7 != v8)
        {
          v12 = 0;
          v13 = (v7 - v8) >> 2;
          v14 = *(v38 + 3 * v9);
          if (v13 <= 1)
          {
            v13 = 1;
          }

          v15 = v11;
          do
          {
            if ((*&v8[4 * v12] & (1 << v9)) != 0)
            {
              v15 = v12;
            }

            *(v14 + 8 * v12++) = v15;
          }

          while (v13 != v12);
        }

        ++v9;
      }

      while (v9 != 8);
      if (v6 != -1)
      {
        if (((v6 + 1) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_240B228BC();
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      sub_240B495E8(&v35, v39);
      v16 = 0;
      MEMORY[0xFFFFFFFFFFFFFFFF] = 1;
      do
      {
        v17 = *(*(v38 + v16) - 8);
        v34 = v17;
        if (v17 != v11 && !*v17)
        {
          sub_240B495E8(&v35, &v34);
          *v17 = 1;
          sub_240B495E8(&v31, &v34);
        }

        v16 += 24;
      }

      while (v16 != 192);
      v18 = v35;
      v19 = v36;
      while (v18 != v19)
      {
        v21 = *(v19 - 1);
        v19 -= 8;
        v20 = v21;
        v36 = v19;
        if (v21)
        {
          v22 = 0;
          v23 = v38;
          do
          {
            if ((*&a1[426][4 * v20] >> v22))
            {
              v24 = *(*v23 + 8 * v20 - 8);
              v34 = v24;
              if (v24 != v11 && !*v24)
              {
                sub_240B495E8(&v35, &v34);
                *v24 = 1;
                sub_240B495E8(&v31, &v34);
              }
            }

            ++v22;
            v23 += 3;
          }

          while (v22 != 8);
          v18 = v35;
          v19 = v36;
        }
      }

      if (v18)
      {
        operator delete(v18);
      }

      for (i = 0; i != -192; i -= 24)
      {
        v26 = *(&v38[10] + i + 8);
        if (v26)
        {
          *(&v38[11] + i) = v26;
          operator delete(v26);
        }
      }

      LOBYTE(v38[0]) = 0;
      sub_240B26750(a1 + 435, a1[435] - a1[436], v38);
      v27 = v31;
      v28 = v32;
      if (v31 != v32)
      {
        v29 = v31;
        do
        {
          v30 = *v29++;
          *(*v10 + v30) = 1;
        }

        while (v29 != v28);
      }

      if (v27)
      {
        operator delete(v27);
      }
    }
  }
}

void sub_240B4C7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t JxlDecoderSkipCurrentFrame(uint64_t a1)
{
  if (*(a1 + 3368) != 2)
  {
    return 1;
  }

  *(a1 + 3368) = 0;
  sub_240B4C880(a1, *(a1 + 3360));
  result = 0;
  if (*(a1 + 3373) == 1)
  {
    result = 0;
    *(a1 + 1056) = 0;
  }

  return result;
}

uint64_t sub_240B4C880(uint64_t result, unint64_t a2)
{
  v2 = *(result + 3600);
  v3 = v2;
  if ((*(result + 952) & 1) == 0)
  {
    v4 = *(result + 904);
    if (*(result + 920) - v4 >= v2)
    {
      v3 = *(result + 3600);
    }

    else
    {
      v3 = *(result + 920) - v4;
    }
  }

  v5 = *(result + 3504);
  v6 = *(result + 3512);
  if (v5 == v6)
  {
    if (a2 <= v3)
    {
      *(result + 3592) += a2;
      *(result + 3600) = v2 - a2;
      v11 = *(result + 904) + a2;
    }

    else
    {
      *(result + 3536) = a2 - v3;
      *(result + 3592) += v3;
      *(result + 3600) = v2 - v3;
      v11 = *(result + 904) + v3;
    }

    *(result + 904) = v11;
  }

  else
  {
    v7 = *(result + 3536) + a2;
    *(result + 3536) = v7;
    v8 = *(result + 3528);
    v9 = v6 - v5;
    if (v8 + v7 >= v9)
    {
      if (v8 + v7 - v9 < v8)
      {
        v8 = v8 + v7 - v9;
      }

      *(result + 3592) += v8;
      *(result + 3600) = v2 - v8;
      *(result + 904) += v8;
      v10 = v7 - v9;
      if (v7 < v9)
      {
        v10 = 0;
      }

      *(result + 3536) = v10;
      *(result + 3528) = 0;
      *(result + 3512) = v5;
    }
  }

  return result;
}

uint64_t JxlDecoderSetParallelRunner(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a1 + 32))
  {
    operator new();
  }

  return 1;
}

uint64_t JxlDecoderSizeHintBasicInfo(uint64_t a1)
{
  if (*(a1 + 39))
  {
    return 0;
  }

  else
  {
    return *(a1 + 1016);
  }
}

uint64_t JxlDecoderSubscribeEvents(_DWORD *a1, int a2)
{
  if (a1[8] | a2 & 0x3F)
  {
    return 1;
  }

  result = 0;
  a1[252] = a2;
  a1[253] = a2;
  return result;
}

uint64_t JxlDecoderSetKeepOrientation(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  result = 0;
  *(a1 + 1000) = a2 != 0;
  return result;
}

uint64_t JxlDecoderSetUnpremultiplyAlpha(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  result = 0;
  *(a1 + 1001) = a2 != 0;
  return result;
}

uint64_t JxlDecoderSetRenderSpotcolors(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  result = 0;
  *(a1 + 1002) = a2 != 0;
  return result;
}

uint64_t JxlDecoderSetCoalescing(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  result = 0;
  *(a1 + 1003) = a2 != 0;
  return result;
}

uint64_t JxlDecoderSetInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 3592) || (*(a1 + 3608) & 1) != 0)
  {
    return 1;
  }

  result = 0;
  *(a1 + 3592) = a2;
  *(a1 + 3600) = a3;
  return result;
}

uint64_t JxlDecoderReleaseInput(uint64_t a1)
{
  v1 = *(a1 + 3600);
  *(a1 + 3592) = 0u;
  return v1;
}

uint64_t JxlDecoderProcessInput(uint64_t a1)
{
  v347[5] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1 == 3)
  {
    return 1;
  }

  v2 = a1;
  if (!v1)
  {
    *(a1 + 32) = 1;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v316 = JxlSignatureCheck(*(a1 + 3592), *(a1 + 3600));
    v27 = v316;
    if (v316 == 1)
    {
      return v27;
    }

    if (!v316)
    {
      if (*(v2 + 3608))
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    *(v2 + 36) = 1;
    if (v316 == 3)
    {
      *(v2 + 1024) = 1;
    }

    else
    {
      *(v2 + 37) = 1;
    }
  }

  v3 = (v2 + 953);
  v339 = (v2 + 3296);
  v341 = (v2 + 3312);
  v336 = (v2 + 3408);
  v342 = (v2 + 3328);
  v343 = v2;
  v4 = *(v2 + 3552);
  v340 = (v2 + 953);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (!v4)
        {
LABEL_280:
          if (*(v2 + 1024))
          {
            v179 = *(v2 + 3600);
            if (!v179)
            {
              if (*(v2 + 32) != 2)
              {
                goto LABEL_573;
              }

              if ((*(v2 + 3608) & 1) == 0)
              {
                v27 = (*(v2 + 1008) >> 13) & 2;
LABEL_558:
                if (v27)
                {
                  if (v27 != 2)
                  {
                    return v27;
                  }

                  goto LABEL_573;
                }
              }

              return *(v2 + 32) != 2;
            }

            v180 = *(v2 + 1008);
            if ((v180 & 0x4000) != 0 && *(v2 + 32) == 2 && *(v2 + 37) == 1)
            {
              if (v179 == 1)
              {
                v183 = *(v2 + 904);
LABEL_571:
                v317 = 106;
                goto LABEL_572;
              }

              v181 = *(v2 + 3592);
              if (*v181 == 255 && v181[1] == 10)
              {
                return *(v2 + 32) != 2;
              }

              v182 = 1;
            }

            else
            {
              v182 = 0;
            }

            v183 = *(v2 + 904);
            if (v179 < 8)
            {
              goto LABEL_571;
            }

            v184 = *(v2 + 3592);
            v185 = *v184;
            v186 = *(v184 + 4);
            *v3 = v186;
            if (v185 == 0x1000000)
            {
              if (v179 < 0x10)
              {
                v317 = 114;
LABEL_572:
                *(v2 + 1016) = v317 - v183;
                goto LABEL_573;
              }

              v187 = bswap64(*(v184 + 8));
              v188 = 16;
            }

            else
            {
              v187 = bswap32(v185);
              v188 = 8;
            }

            v189 = __CFADD__(v183, v187);
            v190 = v187 >= v188 || v187 == 0;
            v27 = 1;
            if (!v190 || v189)
            {
              return v27;
            }

            v191 = *v3 != 1651470946;
            if (*v3 == 1651470946)
            {
              if (v179 < (v188 | 4))
              {
                goto LABEL_573;
              }

              v186 = *(v184 + v188);
            }

            v3[1] = v186;
            v192 = *(v2 + 1032) + 1;
            *(v2 + 1032) = v192;
            if (v182 && *v3 == 541874250)
            {
              return *(v2 + 32) != 2;
            }

            if (v192 == 2)
            {
              if (*v3 != 1887007846)
              {
                return v27;
              }
            }

            else if (*v3 == 1887007846)
            {
              return v27;
            }

            v193 = v187 == 0;
            *(v2 + 952) = v187 == 0;
            *(v2 + 912) = v188 + v183;
            v194 = v187 + v183;
            if (!v187)
            {
              v194 = 0;
            }

            *(v2 + 920) = v194;
            if (v187)
            {
              v195 = v187 - v188;
            }

            else
            {
              v195 = 0;
            }

            *(v2 + 928) = v195;
            *(v2 + 936) = v187;
            *(v2 + 944) = v188;
            if ((v180 & 0x4000) != 0)
            {
              v196 = !v191;
              v197 = *(v2 + 962);
              v198 = *(v2 + 3560);
              if (v198)
              {
                sub_240B1D6B8(v198);
                *(v2 + 3560) = 0;
              }

              *(v2 + 3568) = 0;
              *(v2 + 3569) = v196 & v197;
              *(v2 + 3570) = v193;
              *(v2 + 3576) = v195;
              *(v2 + 3584) = 0;
            }

            switch(*v3)
            {
              case 0x70797466:
                v4 = 1;
                break;
              case 0x636C786A:
                if (*(v2 + 37))
                {
                  return v27;
                }

                *(v2 + 37) = 1;
                v4 = 3;
                break;
              case 0x706C786A:
                v4 = 4;
                break;
              default:
                v4 = 2;
                break;
            }

            *(v2 + 3552) = v4;
            if ((*(v2 + 1009) & 0x40) != 0)
            {
              *(v2 + 961) = 1;
              *(v2 + 964) = 0;
              return 0x4000;
            }
          }

          else
          {
            if (*(v2 + 32) == 2)
            {
              return 0;
            }

            v4 = 3;
            *(v2 + 3552) = 3;
            *(v2 + 952) = 1;
          }
        }

        v5 = *(v2 + 944);
        v6 = *(v2 + 3592) + v5;
        *(v2 + 3592) = v6;
        v7 = *(v2 + 3600) - v5;
        *(v2 + 3600) = v7;
        v8 = *(v2 + 904) + v5;
        *(v2 + 904) = v8;
        *(v2 + 944) = 0;
        if ((*(v2 + 1009) & 0x40) != 0 && *(v2 + 964) == 1)
        {
          v9 = *(v2 + 992);
          v10 = (*(v2 + 968) + v9);
          *&v346 = v10;
          v11 = *(v2 + 976);
          v12 = v11 - v9;
          v347[0] = v11 - v9;
          v13 = v8 - *(v2 + 912);
          v14 = *(v2 + 3584);
          v15 = (v6 + v14 - v13);
          v16 = v13 - v14 + v7;
          if (*(v2 + 3569) == 1)
          {
            if ((*(v2 + 3568) & 1) == 0)
            {
              v17 = v16 >= 4;
              v16 -= 4;
              if (!v17)
              {
                goto LABEL_35;
              }

              if ((*(v2 + 3570) & 1) == 0)
              {
                v18 = *(v2 + 3576);
                v17 = v18 >= 4;
                v19 = v18 - 4;
                if (!v17)
                {
LABEL_258:
                  v27 = 1;
                  goto LABEL_259;
                }

                *(v2 + 3576) = v19;
              }

              v15 += 4;
              *(v2 + 3584) = v14 + 4;
              *(v2 + 3568) = 1;
            }

            v20 = *(v2 + 3560);
            if (!v20)
            {
              v21 = malloc_type_malloc(0x1428uLL, 0x10F2040F1FA04F5uLL);
              v20 = v21;
              if (v21)
              {
                *(v21 + 5) = sub_240C06630;
                *(v21 + 6) = sub_240C0663C;
                *(v21 + 7) = 0;
                *(v21 + 29) = 0;
                *(v21 + 4) = 64;
                v22 = *(v21 + 336);
                *v21 = 0u;
                *(v21 + 9) = 0;
                *(v21 + 15) = 0;
                *(v21 + 170) = 0;
                *(v21 + 42) = 0;
                *(v21 + 152) = 0u;
                *(v21 + 168) = 0u;
                *(v21 + 12) = 0u;
                *(v21 + 216) = 0u;
                *(v21 + 23) = 0u;
                *(v21 + 83) = 0;
                *(v21 + 648) = 0u;
                *(v21 + 43) = 0u;
                *(v21 + 336) = v22 & 0xFFC0 | 0x10;
                *(v21 + 169) = 0;
                *(v21 + 100) = xmmword_240C11580;
                *(v21 + 21) = 0;
                *(v21 + 11) = 0;
                *(v21 + 24) = 0;
                *(v21 + 30) = 0;
                *(v21 + 31) = 0;
                *(v21 + 96) = 63;
                *(v21 + 89) = 0;
                v23 = malloc_type_malloc(0x580uLL, 0x10F00400AFAC3FDuLL);
                if (v23)
                {
                  v24 = v23;
                  bzero(v23, 0x568uLL);
                  v24[316] = 1;
                  v24[1360] = 0;
                  *(v24 + 40) = &unk_278CB2FB8;
                  *(v24 + 104) = &unk_278CB3068;
                  *(v24 + 173) = sub_240C06630;
                  *(v24 + 174) = sub_240C0663C;
                  *(v24 + 175) = 0;
                  *(v20 + 88) = v24;
                }

                else
                {
                  free(v20);
                  v20 = 0;
                }
              }

              *(v343 + 3560) = v20;
            }

            if (v20[29] < 0)
            {
              v27 = 1;
              v2 = v343;
              goto LABEL_259;
            }

            if (v11 == v9)
            {
              v28 = 0;
            }

            else
            {
              if (!v346)
              {
                v168 = sub_240B1D794(v20, 0xFFFFFFEC, 0);
                v36 = v15;
                goto LABEL_254;
              }

              v28 = &v346;
            }

            if (v20[18])
            {
              v29 = v20 + 16;
              v30 = 2;
            }

            else
            {
              *(v20 + 4) = v16;
              v30 = 1;
              v29 = v15;
            }

            v31 = v20 + 16;
            v32 = v20 + 71;
            *(v20 + 3) = v29;
            v337 = (v20 + 172);
            v338 = v20 + 180;
            v33 = v20 + 188;
            v34 = v20 + 324;
            v35 = v16;
            v36 = v15;
LABEL_48:
            while (2)
            {
              while (2)
              {
                if (v30 != 1)
                {
                  if (v30 == 2)
                  {
                    if (*(v20 + 15) && (v37 = sub_240B1D7B4(v20, v347, v28, 1), (v37 & 0x80000000) != 0))
                    {
                      v30 = v37;
                    }

                    else
                    {
                      v38 = v20[18];
                      if (v38)
                      {
                        if (!*(v20 + 4))
                        {
                          v20[18] = 0;
                          v30 = 1;
                          *(v20 + 3) = v36;
                          *(v20 + 4) = v35;
                          continue;
                        }

                        if (v35)
                        {
                          v39 = *v36++;
                          *(v31 + v38) = v39;
                          v40 = (v20[18] + 1);
                          v20[18] = v40;
                          *(v20 + 4) = v40;
                          --v35;
                          v30 = 1;
                          continue;
                        }
                      }

                      else
                      {
                        v36 = *(v20 + 3);
                        v165 = *(v20 + 4);
                        if (v165)
                        {
                          v166 = 0;
                          do
                          {
                            v167 = *v36++;
                            *(v31 + v166) = v167;
                            v166 = v20[18] + 1;
                            v20[18] = v166;
                            --v165;
                          }

                          while (v165);
                        }

                        v35 = 0;
                      }

                      v30 = 2;
                    }
                  }

                  else if (v20[18])
                  {
                    v20[18] = 0;
                  }

                  else
                  {
                    v169 = v20[4];
                    v170 = (64 - v169) >> 3;
                    v171 = (64 - v169) & 0xFFFFFFF8;
                    v35 = *(v20 + 4) + v170;
                    v36 = (*(v20 + 3) - v170);
                    *(v20 + 3) = v36;
                    *(v20 + 4) = v35;
                    if (v171 == 64)
                    {
                      v172 = 0;
                    }

                    else
                    {
                      v172 = *(v20 + 1) << v171;
                    }

                    *(v20 + 1) = v172;
                    v20[4] = v171 + v169;
                  }

                  v314 = v16 - v35;
                  v315 = v20;
LABEL_253:
                  v168 = sub_240B1D794(v315, v30, v314);
                  v3 = v340;
LABEL_254:
                  v2 = v343;
                  if (v168)
                  {
                    *(v343 + 3584) += v36 - v15;
                    if ((*(v343 + 3570) & 1) == 0)
                    {
                      *(v343 + 3576) -= v36 - v15;
                    }

                    v27 = dword_240C857E0[v168 - 1];
                    goto LABEL_259;
                  }

                  goto LABEL_258;
                }

                break;
              }

              switch(*v20)
              {
                case 0:
                  v56 = sub_240B1D668(v20 + 1);
                  v30 = 2;
                  if (!v56)
                  {
                    continue;
                  }

                  v57 = *(v20 + 336);
                  *(v20 + 336) = v57 & 0xFFDF;
                  v58 = *(v20 + 1);
                  v59 = v20[4];
                  v20[4] = v59 + 1;
                  if (((v58 >> v59) & 1) == 0)
                  {
                    v61 = 16;
                    goto LABEL_218;
                  }

                  v20[4] = v59 + 4;
                  v60 = (v58 >> (v59 + 1)) & 7;
                  if (v60)
                  {
                    v61 = v60 + 17;
LABEL_218:
                    v20[169] = v61;
                    v77 = 2;
                    goto LABEL_219;
                  }

                  v20[4] = v59 + 7;
                  v164 = (v58 >> (v59 + 4)) & 7;
                  if (!v164)
                  {
                    v61 = 17;
                    goto LABEL_218;
                  }

                  if (v164 != 1)
                  {
                    v61 = v164 | 8;
                    goto LABEL_218;
                  }

                  v30 = -13;
                  if ((v57 & 0x20) != 0)
                  {
                    v20[4] = v59 + 8;
                    if (((v58 >> (v59 + 7)) & 1) == 0)
                    {
                      *(v20 + 336) = v57;
                      v30 = 1;
                      *v20 = 1;
                    }
                  }

                  continue;
                case 1:
                  v62 = v20[4];
                  if ((v62 - 59) >= 6)
                  {
                    v66 = *(v20 + 1);
                  }

                  else
                  {
                    v63 = *(v20 + 4);
                    v30 = 2;
                    if (!v63)
                    {
                      continue;
                    }

                    v64 = *(v20 + 1);
                    *(v20 + 1) = v64 >> 8;
                    v65 = *(v20 + 3);
                    *(&v67 + 1) = *v65;
                    *&v67 = v64;
                    v66 = v67 >> 8;
                    *(v20 + 1) = v66;
                    v62 -= 8;
                    *(v20 + 3) = v65 + 1;
                    *(v20 + 4) = v63 - 1;
                  }

                  v55 = (v66 >> v62) & 0x3F;
                  v20[169] = v55;
                  v20[4] = v62 + 6;
                  v30 = -13;
                  if ((v55 - 31) < 0xFFFFFFEB)
                  {
                    continue;
                  }

                  *v20 = 2;
LABEL_107:
                  v20[20] = (1 << v55) - 16;
                  v78 = (*(v20 + 5))(*(v20 + 7), 12336, 0x10000007B5B4437);
                  *(v20 + 30) = v78;
                  v30 = -30;
                  if (!v78)
                  {
                    continue;
                  }

                  *(v20 + 31) = v78 + 7584;
                  *v20 = 3;
LABEL_109:
                  v20[66] = 0;
                  *(v20 + 17) = xmmword_240C11590;
                  *(v20 + 18) = xmmword_240C115A0;
                  *(v20 + 19) = xmmword_240C115B0;
                  *(v20 + 9) = 0u;
                  *(v20 + 10) = 0u;
                  *(v20 + 22) = 0;
                  *(v20 + 24) = 0;
                  *(v20 + 25) = 0;
                  *(v20 + 27) = 0;
                  *(v20 + 28) = 0;
                  *(v20 + 42) = 0;
                  *(v20 + 43) = 0;
                  *(v20 + 352) = 0;
                  *v337 = 0;
                  *(v20 + 87) = 0;
                  *v20 = 4;
LABEL_110:
                  v30 = sub_240B1D8F0(v20, v20 + 1);
                  if (v30 != 1)
                  {
                    continue;
                  }

                  v79 = *(v20 + 336);
                  if ((v79 & 6) == 0)
                  {
                    goto LABEL_115;
                  }

                  v80 = v20[4];
                  v81 = -v80 & 7;
                  if (v81)
                  {
                    v82 = *(v20 + 1) >> v80;
                    v20[4] = v81 + v80;
                    v30 = -14;
                    if ((v82 & ~(-1 << v81)) != 0)
                    {
                      continue;
                    }
                  }

                  if ((v79 & 4) != 0)
                  {
                    v43 = 12;
                    goto LABEL_223;
                  }

LABEL_115:
                  if (!v20[66])
                  {
                    goto LABEL_222;
                  }

                  sub_240B1DDB8(v20);
                  if ((v20[168] & 2) != 0)
                  {
                    v43 = 11;
                    goto LABEL_223;
                  }

LABEL_117:
                  v74 = 0;
                  *(v20 + 115) = v20 + 240;
                  *(v20 + 47) = 0u;
                  *v20 = 18;
LABEL_118:
                  v30 = sub_240B1DE24(v20, v20 + 1, &v32[v74]);
                  if (v30 == 1)
                  {
                    ++v32[v20[1]];
                    v45 = v20[1];
                    if (v32[v45] <= 1u)
                    {
                      v20[1] = v45 + 1;
                      v30 = 1;
                      continue;
                    }

                    v46 = v45;
                    *v20 = 19;
LABEL_157:
                    v30 = sub_240B1DFD4(v32[v46] + 2, v32[v46] + 2, (*(v20 + 30) + 2528 * v45), 0, v20);
                    if (v30 == 1)
                    {
                      *v20 = 20;
LABEL_159:
                      v30 = sub_240B1DFD4(26, 0x1Au, (*(v20 + 31) + 1584 * v20[1]), 0, v20);
                      if (v30 == 1)
                      {
                        *v20 = 21;
LABEL_161:
                        v114 = v20[1];
                        v115 = *(v20 + 31);
                        LODWORD(v344) = 0;
                        if (v20[167])
                        {
                          v116 = v20[67];
                          goto LABEL_172;
                        }

                        v117 = (v115 + 1584 * v114);
                        v118 = v20[4];
                        if ((v118 - 50) >= 0xF)
                        {
                          v122 = *(v20 + 1);
LABEL_169:
                          v125 = v122 >> v118;
                          v126 = &v117[4 * (v122 >> v118)];
                          v127 = *v126;
                          if (v127 >= 9)
                          {
                            v118 += 8;
                            v126 += 4 * (BYTE1(v125) & ~(-1 << (v127 - 8)) & 0x7F) + 4 * *(v126 + 1);
                            v127 = *v126;
                          }

                          v20[4] = v118 + v127;
                          v116 = *(v126 + 1);
LABEL_172:
                          v128 = (&unk_240C86480 + 4 * v116);
                          v129 = *(v128 + 2);
                          v130 = *v128;
                          v131 = v20[4];
                          v132 = 64 - v131;
                          if (64 - v131 >= v129)
                          {
                            v136 = *(v20 + 1);
LABEL_178:
                            v20[4] = v131 + v129;
                            v20[v114 + 68] = ((v136 >> v131) & ~(-1 << v129)) + v130;
                            v20[167] = 0;
                            v138 = v20[1] + 1;
                            *v20 = 18;
                            v20[1] = v138;
                            v30 = 1;
                            v32 = v20 + 71;
                            continue;
                          }

                          v133 = *(v20 + 4) - 1;
                          while (v133 != -1)
                          {
                            v134 = *(v20 + 1);
                            *(v20 + 1) = v134 >> 8;
                            v135 = *(v20 + 3);
                            *(&v137 + 1) = *v135;
                            *&v137 = v134;
                            v136 = v137 >> 8;
                            *(v20 + 1) = v136;
                            v131 -= 8;
                            v20[4] = v131;
                            *(v20 + 3) = v135 + 1;
                            *(v20 + 4) = v133--;
                            v132 += 8;
                            if (v132 >= v129)
                            {
                              goto LABEL_178;
                            }
                          }

                          v20[67] = v116;
                          v20[167] = 1;
                        }

                        else
                        {
                          v119 = *(v20 + 4) - 1;
                          while (v119 != -1)
                          {
                            v120 = *(v20 + 1);
                            *(v20 + 1) = v120 >> 8;
                            v121 = *(v20 + 3);
                            *(&v123 + 1) = *v121;
                            *&v123 = v120;
                            v122 = v123 >> 8;
                            *(v20 + 1) = v122;
                            v124 = v118 - 8;
                            v20[4] = v118 - 8;
                            *(v20 + 3) = v121 + 1;
                            *(v20 + 4) = v119--;
                            LODWORD(v121) = v118 - 58;
                            v118 -= 8;
                            if (v121 >= 0xF)
                            {
                              v118 = v124;
                              goto LABEL_169;
                            }
                          }

                          if (sub_240B1EF80(v117, (v20 + 2), &v344))
                          {
                            v116 = v344;
                            goto LABEL_172;
                          }
                        }

                        v30 = 2;
                        v32 = v20 + 71;
                        continue;
                      }
                    }
                  }

                  continue;
                case 2:
                  LODWORD(v55) = v20[169];
                  goto LABEL_107;
                case 3:
                  goto LABEL_109;
                case 4:
                  goto LABEL_110;
                case 5:
                  v68 = v20[4];
                  if ((v68 - 59) >= 6)
                  {
                    v72 = *(v20 + 1);
                  }

                  else
                  {
                    v69 = *(v20 + 4);
                    v30 = 2;
                    if (!v69)
                    {
                      continue;
                    }

                    v70 = *(v20 + 1);
                    *(v20 + 1) = v70 >> 8;
                    v71 = *(v20 + 3);
                    *(&v73 + 1) = *v71;
                    *&v73 = v70;
                    v72 = v73 >> 8;
                    *(v20 + 1) = v72;
                    v68 -= 8;
                    *(v20 + 3) = v71 + 1;
                    *(v20 + 4) = v69 - 1;
                  }

                  v83 = v72 >> v68;
                  v20[4] = v68 + 6;
                  v84 = (v72 >> v68) & 3;
                  v20[80] = v84;
                  v20[81] = ((v83 >> 2) & 0xF) << v84;
                  v85 = (*(v20 + 5))(*(v20 + 7), v20[71], 0x100000077774924);
                  *(v20 + 87) = v85;
                  v30 = -21;
                  if (!v85)
                  {
                    continue;
                  }

                  LODWORD(i) = 0;
                  *v20 = 6;
LABEL_124:
                  LODWORD(v44) = *v32;
                  if (i < *v32)
                  {
                    for (i = i; i < v44; ++i)
                    {
                      v86 = v20[4];
                      if ((v86 - 63) >= 2)
                      {
                        v90 = *(v20 + 1);
                      }

                      else
                      {
                        v87 = *(v20 + 4);
                        if (!v87)
                        {
                          v20[1] = i;
LABEL_216:
                          v30 = 2;
                          goto LABEL_48;
                        }

                        v88 = *(v20 + 1);
                        *(v20 + 1) = v88 >> 8;
                        v89 = *(v20 + 3);
                        *(&v91 + 1) = *v89;
                        *&v91 = v88;
                        v90 = v91 >> 8;
                        *(v20 + 1) = v90;
                        v86 -= 8;
                        *(v20 + 3) = v89 + 1;
                        *(v20 + 4) = v87 - 1;
                      }

                      v20[4] = v86 + 2;
                      *(*(v20 + 87) + i) = (v90 >> v86) & 3;
                      v44 = v20[71];
                    }
                  }

                  *v20 = 22;
LABEL_132:
                  v30 = sub_240B1F1BC((v44 << 6), v20 + 171, v337, v20);
                  if (v30 != 1)
                  {
                    continue;
                  }

                  *v338 = 0u;
                  *(v20 + 46) = 0u;
                  v92 = *v32;
                  if (v92)
                  {
                    v93 = 0;
                    v94 = *v337;
                    v95 = *v337;
                    do
                    {
                      v96 = 0;
                      v97 = 0;
                      do
                      {
                        v98 = v94[64 * v93];
                        v97 |= (v95[v96 + 1] ^ v98 | v95[v96 + 2] ^ v98 | v94[v96 | (v93 << 6)] ^ v98 | v94[(v96 | (v93 << 6)) + 3] ^ v98);
                        v17 = v96 >= 0x3C;
                        v96 += 4;
                      }

                      while (!v17);
                      if (!v97)
                      {
                        *(v338 + ((v93 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v93;
                      }

                      ++v93;
                      v95 += 64;
                    }

                    while (v93 != v92);
                  }

                  *v20 = 23;
LABEL_142:
                  v99 = v20[80];
                  v100 = v20[81];
                  v101 = v100 + 16;
                  v102 = v99 + 1;
                  if ((v20[168] & 0x20) != 0)
                  {
                    if (v100 > 0x7FFFFFFB)
                    {
                      v103 = -2147483636;
                    }

                    else
                    {
                      v103 = v100 + 16;
                      v104 = -1;
                      v105 = ((2147483644 - v100) >> v99) + 4;
                      do
                      {
                        v106 = v104++;
                        v107 = v105 > 3;
                        v105 >>= 1;
                      }

                      while (v107);
                      if ((((((2147483644 - v100) >> v99) + 4) >> v104) & 1 | (2 * (v106 + 2))) != 4)
                      {
                        v103 = v100 + ((((((((2147483644 - v100) >> v99) + 4) >> v104) & 1 | (2 * (v106 + 2))) - 5) << v99) | ~(-1 << v99)) + 17;
                      }
                    }

                    v331 = v101 + (62 << v102);
                    v332 = v103;
                  }

                  else
                  {
                    v331 = v101 + (24 << v102);
                    v332 = v331;
                  }

                  v30 = sub_240B1F1BC((4 * v20[73]), v20 + 82, v20 + 42, v20);
                  if (v30 != 1)
                  {
                    continue;
                  }

                  v329 = v35;
                  v330 = v15;
                  v108 = v20[171];
                  v109 = (*(v20 + 5))(*(v20 + 7), 2536 * v108, 0x2000093837F09);
                  v20[46] = 16777472;
                  *(v20 + 94) = v108;
                  *(v20 + 21) = v109;
                  *(v20 + 22) = v109 + 8 * v108;
                  v110 = v20[72];
                  v111 = (*(v20 + 5))(*(v20 + 7), 4328 * v110, 0x2000093837F09);
                  v20[52] = 46138048;
                  *(v20 + 106) = v110;
                  *(v20 + 24) = v111;
                  *(v20 + 25) = v111 + 8 * v110;
                  v112 = v20[82];
                  v113 = (*(v20 + 5))(*(v20 + 7), (4 * (v332 + 376) + 8) * v112, 0x2000093837F09);
                  *(v20 + 116) = v331;
                  *(v20 + 117) = v332;
                  *(v20 + 118) = v112;
                  *(v20 + 27) = v113;
                  *(v20 + 28) = v113 + 8 * v112;
                  if (v109 && v111 && v113)
                  {
                    v75 = 0;
                    *v20 = 24;
                    v76 = v20 + 42;
                    v35 = v329;
                    v15 = v330;
                    goto LABEL_183;
                  }

                  v168 = sub_240B1D794(v20, 0xFFFFFFEA, v16 - v329);
                  v3 = v340;
                  v15 = v330;
                  goto LABEL_254;
                case 6:
                  LODWORD(i) = v20[1];
                  goto LABEL_124;
                case 7:
                case 8:
                case 9:
                case 10:
                  goto LABEL_206;
                case 11:
                  v30 = sub_240B1F020(v347, v28, v20);
                  if (v30 == 1)
                  {
                    *v20 = 14;
                  }

                  continue;
                case 12:
                  v48 = v20[66];
                  if (v48 < 1)
                  {
                    goto LABEL_222;
                  }

                  v49 = v20[4];
                  v50 = v48 + 1;
                  do
                  {
                    if ((v49 - 57) <= 7)
                    {
                      v51 = *(v20 + 4);
                      if (!v51)
                      {
                        goto LABEL_216;
                      }

                      v52 = *(v20 + 1);
                      *(v20 + 1) = v52 >> 8;
                      v53 = *(v20 + 3);
                      *(&v54 + 1) = *v53;
                      *&v54 = v52;
                      *(v20 + 1) = v54 >> 8;
                      v49 -= 8;
                      *(v20 + 3) = v53 + 1;
                      *(v20 + 4) = v51 - 1;
                    }

                    v49 += 8;
                    v20[4] = v49;
                    v20[66] = v50 - 2;
                    --v50;
                  }

                  while (v50 > 1);
LABEL_222:
                  v43 = 14;
                  goto LABEL_223;
                case 13:
                case 15:
                case 16:
                  v30 = sub_240B1D7B4(v20, v347, v28, 0);
                  if (v30 != 1)
                  {
                    continue;
                  }

                  sub_240B20DC0(v20);
                  if (v20[22] == 1 << v20[169])
                  {
                    v20[21] = v20[20];
                  }

                  if (*v20 == 16)
                  {
                    v43 = 10;
                    goto LABEL_223;
                  }

                  if (*v20 == 15)
                  {
                    v41 = *(v20 + 89);
                    if (!v41 || *(v41 + 16) == *(v41 + 20) || (v42 = v20[19] + sub_240B20E08(v20, v20[19]), v20[19] = v42, v30 = 1, v42 < v20[22]))
                    {
                      if (v20[66])
                      {
                        v43 = 7;
                      }

                      else
                      {
                        v43 = 14;
                      }

                      goto LABEL_223;
                    }

                    continue;
                  }

                  if (v20[1])
                  {
                    v77 = 8;
LABEL_219:
                    *v20 = v77;
                    v30 = 1;
                    continue;
                  }

                  if (!v20[66])
                  {
                    goto LABEL_222;
                  }

                  v43 = 9;
                  goto LABEL_223;
                case 14:
                  v30 = -10;
                  if (v20[66] < 0)
                  {
                    continue;
                  }

                  sub_240B22024(v20);
                  if ((v20[168] & 1) == 0)
                  {
                    v43 = 3;
LABEL_223:
                    *v20 = v43;
                    v30 = 1;
                    continue;
                  }

                  v158 = v20[4];
                  v159 = -v158 & 7;
                  if (v159)
                  {
                    v160 = *(v20 + 1) >> v158;
                    v158 += v159;
                    v20[4] = v158;
                    v30 = -15;
                    if ((v160 & ~(-1 << v159)) != 0)
                    {
                      continue;
                    }
                  }

                  if (!v20[18])
                  {
                    v161 = (64 - v158) >> 3;
                    v162 = (64 - v158) & 0xFFFFFFF8;
                    v35 = *(v20 + 4) + v161;
                    v36 = (*(v20 + 3) - v161);
                    *(v20 + 3) = v36;
                    *(v20 + 4) = v35;
                    if (v162 == 64)
                    {
                      v163 = 0;
                    }

                    else
                    {
                      v163 = *(v20 + 1) << v162;
                    }

                    *(v20 + 1) = v163;
                    v20[4] = v162 + v158;
                  }

                  *v20 = 26;
LABEL_236:
                  if (*(v20 + 15))
                  {
                    v30 = sub_240B1D7B4(v20, v347, v28, 1);
                    if (v30 != 1)
                    {
                      continue;
                    }
                  }

                  v314 = v16 - v35;
                  v315 = v20;
                  v30 = 1;
                  goto LABEL_253;
                case 17:
                  goto LABEL_117;
                case 18:
                  v74 = v20[1];
                  if (v74 < 3)
                  {
                    goto LABEL_118;
                  }

                  v43 = 5;
                  goto LABEL_223;
                case 19:
                  v45 = v20[1];
                  v46 = v45;
                  goto LABEL_157;
                case 20:
                  goto LABEL_159;
                case 21:
                  goto LABEL_161;
                case 22:
                  LODWORD(v44) = *v32;
                  goto LABEL_132;
                case 23:
                  goto LABEL_142;
                case 24:
                  v75 = v20[1];
                  if (v75)
                  {
                    if (v75 != 2)
                    {
                      v76 = v20 + 48;
                      if (v75 == 1)
                      {
                        goto LABEL_183;
                      }

                      v314 = v16 - v35;
                      v315 = v20;
                      v30 = -31;
                      goto LABEL_253;
                    }

                    v76 = v20 + 54;
                  }

                  else
                  {
                    v76 = v20 + 42;
                  }

LABEL_183:
                  if (*v33 == 1)
                  {
                    v139 = v20[637];
                  }

                  else
                  {
                    v139 = 0;
                    *(v20 + 319) = *(v76 + 1);
                    v20[637] = 0;
                    v20[188] = 1;
                  }

                  if (v139 >= *(v76 + 10))
                  {
LABEL_191:
                    v20[188] = 0;
                    v20[1] = v75 + 1;
                    v30 = 1;
                    v32 = v20 + 71;
                    if (v75 >= 2)
                    {
                      *v20 = 25;
LABEL_193:
                      v144 = v20[75];
                      v145 = (v144 << 6);
                      v146 = *(v20 + 86);
                      *(v20 + 19) = v146 + v145;
                      v20[64] = (*(v338 + ((v144 >> 3) & 0x1FFFFFFC)) >> v144) & 1;
                      *(v20 + 43) = *(*(v20 + 21) + 8 * *(v146 + v145));
                      *(v20 + 18) = &unk_240C864E8 + 512 * (*(*(v20 + 87) + v144) & 3);
                      *(v20 + 20) = *(v20 + 42);
                      *(v20 + 17) = **(v20 + 24);
                      v147 = sub_240B1F5EC(v20);
                      v30 = -27;
                      if (v147)
                      {
                        v148 = v20[81];
                        if (v148)
                        {
                          v149 = 16;
                          v150 = v20[81];
                          do
                          {
                            *(v33 + v149) = 0;
                            v34[v149] = v149 - 15;
                            ++v149;
                            --v150;
                          }

                          while (v150);
                        }

                        else
                        {
                          v149 = 16;
                        }

                        v151 = *(v20 + 117);
                        if (v149 < v151)
                        {
                          v152 = 0;
                          v153 = v20[80];
                          v154 = 1;
                          do
                          {
                            v155 = 1;
                            do
                            {
                              v156 = v149 + v155 - 1;
                              *(v33 + v156) = v154;
                              v34[v156] = v148 + ((((v152 + 2) << v154) - 4) << v153) + v155;
                            }

                            while (!(v155++ >> v153));
                            v149 = v149 + v155 - 1;
                            v154 += v152;
                            v152 ^= 1u;
                          }

                          while (v149 < v151);
                        }

                        *v20 = 7;
LABEL_206:
                        v30 = sub_240B1F6B0(v20);
                        if (v30 == 2)
                        {
                          v30 = sub_240B20154(v20);
                        }
                      }
                    }
                  }

                  else
                  {
                    v140 = *(v20 + 319);
                    while (1)
                    {
                      LODWORD(v344) = 0;
                      v141 = sub_240B1DFD4(*(v76 + 8), *(v76 + 9), v140, &v344, v20);
                      if (v141 != 1)
                      {
                        break;
                      }

                      v142 = *(v20 + 319);
                      v143 = v20[637];
                      *(*v76 + 8 * v143) = v142;
                      v140 = (v142 + 4 * v344);
                      *(v20 + 319) = v140;
                      v20[637] = v143 + 1;
                      if (v143 + 1 >= *(v76 + 10))
                      {
                        v75 = v20[1];
                        goto LABEL_191;
                      }
                    }

                    v30 = v141;
                    v32 = v20 + 71;
                  }

                  continue;
                case 25:
                  goto LABEL_193;
                case 26:
                  goto LABEL_236;
                default:
                  continue;
              }
            }
          }

          if ((*(v2 + 3570) & 1) == 0 && *(v2 + 3576) < v16)
          {
            v16 = *(v2 + 3576);
          }

          if (v12 >= v16)
          {
            v25 = v16;
          }

          else
          {
            v25 = v11 - v9;
          }

          memcpy(v10, v15, v25);
          *&v346 = v346 + v25;
          if (*(v2 + 3570) == 1)
          {
            *(v2 + 3584) += v25;
            if (v12 >= v16)
            {
LABEL_34:
              v27 = 0;
              goto LABEL_259;
            }
          }

          else
          {
            v26 = *(v2 + 3576);
            *(v2 + 3576) = v26 - v25;
            *(v2 + 3584) += v25;
            if (v12 >= v16)
            {
              if (v26 != v25)
              {
LABEL_35:
                v27 = 2;
                goto LABEL_259;
              }

              goto LABEL_34;
            }
          }

          v27 = 7;
LABEL_259:
          *(v2 + 992) = v346 - *(v2 + 968);
          if ((v27 & 5) != 0)
          {
            goto LABEL_558;
          }

          v4 = *(v2 + 3552);
        }

        if (v4 > 1)
        {
          break;
        }

        if (!v4)
        {
          goto LABEL_280;
        }

        if (v4 == 1)
        {
          if (*(v2 + 928) < 0xCuLL)
          {
            return 1;
          }

          v176 = *(v2 + 3600);
          v17 = v176 >= 4;
          v177 = v176 - 4;
          if (!v17)
          {
            goto LABEL_573;
          }

          v178 = *(v2 + 3592);
          if (*v178 != 543979626)
          {
            return 1;
          }

          *(v2 + 3592) = v178 + 1;
          *(v2 + 3600) = v177;
          *(v2 + 904) += 4;
          goto LABEL_545;
        }
      }

      if (v4 != 2)
      {
        break;
      }

      if (*(v2 + 952) == 1)
      {
        if ((*(v2 + 3608) & 1) == 0 && *(v2 + 963) == 1)
        {
          v318 = *(v2 + 3600);
          *(v2 + 3592) += v318;
          *(v2 + 3600) = 0;
          v319 = *(v2 + 904) + v318;
          goto LABEL_568;
        }

        return *(v2 + 32) != 2;
      }

      v199 = *(v2 + 920);
      v200 = *(v2 + 904);
      v201 = v199 - v200;
      v202 = *(v2 + 3600);
      v203 = v202 - (v199 - v200);
      if (v202 < v199 - v200)
      {
        *(v2 + 1016) = v201 + 98;
        *(v2 + 3592) += v202;
        *(v2 + 3600) = 0;
        v319 = v202 + v200;
LABEL_568:
        *(v2 + 904) = v319;
LABEL_573:
        if ((*(v2 + 3608) & 1) == 0)
        {
          return 2;
        }

        return 1;
      }

      v4 = 0;
      *(v2 + 3592) += v201;
      *(v2 + 3600) = v203;
      *(v2 + 904) = v199;
      *(v2 + 3552) = 0;
    }

    if (v4 == 3)
    {
      break;
    }

    if (v4 == 4)
    {
      if (*(v2 + 37))
      {
        return 1;
      }

      v173 = *(v2 + 3600);
      v17 = v173 >= 4;
      v174 = v173 - 4;
      if (!v17)
      {
        goto LABEL_573;
      }

      if ((*(v2 + 952) & 1) == 0 && *(v2 + 928) < 4uLL)
      {
        return 1;
      }

      v175 = *(v2 + 3592);
      if ((*v175 & 0x80) != 0)
      {
        *(v2 + 37) = 1;
      }

      *(v2 + 3592) = v175 + 4;
      *(v2 + 3600) = v174;
      *(v2 + 904) += 4;
      v4 = 3;
LABEL_546:
      *(v2 + 3552) = v4;
    }
  }

  if (!*(v2 + 24))
  {
    operator new();
  }

  if ((*(v2 + 39) & 1) == 0)
  {
    if ((*(v2 + 38) & 1) == 0)
    {
      v346 = 0uLL;
      v27 = sub_240B503E8(v2, &v346);
      v2 = v343;
      if (v27)
      {
LABEL_529:
        v3 = v340;
        if (v27 != 2)
        {
          return v27;
        }

LABEL_530:
        if (*(v2 + 904) != *(v2 + 920) || (*(v2 + 952) & 1) != 0)
        {
          goto LABEL_573;
        }

        v4 = 0;
        goto LABEL_546;
      }

      if (*(&v346 + 1) <= 1uLL)
      {
        sub_240B5051C(v343);
        v27 = 2;
LABEL_528:
        v2 = v343;
        goto LABEL_529;
      }

      if (*v346 != 255 || *(v346 + 1) != 10)
      {
        v27 = 1;
        goto LABEL_529;
      }

      *(v343 + 38) = 1;
      sub_240B4C880(v343, 2uLL);
    }

    v345 = 0uLL;
    v27 = sub_240B503E8(v2, &v345);
    if (!v27)
    {
      sub_240B505D8(v347, v345, *(&v345 + 1));
    }

    goto LABEL_528;
  }

  v204 = *(v2 + 1008);
  if ((v204 & 0x40) != 0)
  {
    *(v2 + 1008) = v204 & 0xFFFFFFBF;
    return 64;
  }

  if (!v204)
  {
    goto LABEL_543;
  }

  if ((*(v2 + 41) & 1) == 0)
  {
    if (*(v2 + 40))
    {
      v345 = 0uLL;
      v27 = sub_240B503E8(v2, &v345);
      if (!v27)
      {
        sub_240B505D8(&v346, v345, *(&v345 + 1));
      }
    }

    else
    {
      v345 = 0uLL;
      v27 = sub_240B503E8(v2, &v345);
      if (!v27)
      {
        sub_240B505D8(v347, v345, *(&v345 + 1));
      }
    }

    goto LABEL_528;
  }

  if ((v204 & 0x100) != 0)
  {
    *(v2 + 1008) = v204 & 0xFFFFFEFF;
    return 256;
  }

  *(v2 + 42) = 1;
  if ((*(v2 + 896) & 1) == 0 && *(v2 + 1444) == 1)
  {
    *(v2 + 897) = 1;
  }

  while (2)
  {
    if ((v204 & 0x1600) == 0)
    {
      goto LABEL_543;
    }

    v205 = *(v2 + 3368);
    if (!v205)
    {
      if ((*(v2 + 3374) & 1) == 0)
      {
        if (!*v339)
        {
          operator new();
        }

        operator new();
      }

      goto LABEL_543;
    }

    if (v205 == 2)
    {
      goto LABEL_361;
    }

    if (v205 != 1)
    {
      goto LABEL_498;
    }

    v206 = *(v2 + 3312);
    *(v206 + 1328) = *(v2 + 1002);
    if ((*(v2 + 897) & 1) == 0 && (*(v2 + 1009) & 0x80) != 0)
    {
      v207 = sub_240B50B4C(v206, *(v2 + 1040));
      v2 = v343;
      *(v343 + 1044) = v207;
      v206 = *(v343 + 3312);
    }

    else
    {
      *(v2 + 1044) = 0;
    }

    *(v2 + 3372) = 0;
    *(v2 + 3320) = 0;
    *(v2 + 3336) = *(v2 + 3328);
    v209 = *(v206 + 16);
    v208 = *(v206 + 24);
    LOBYTE(v346) = 0;
    v210 = v208 - v209;
    if (v210)
    {
      sub_240B26750(v342, v210 >> 4, &v346);
      v2 = v343;
    }

    if ((*(v2 + 897) & 1) == 0)
    {
      v204 = *(v2 + 1008);
      if ((v204 & 0x1000) == 0)
      {
        if ((*(v2 + 3374) & 1) == 0)
        {
          *(v2 + 3368) = 0;
          sub_240B4C880(v2, *(v2 + 3360));
          v3 = v340;
LABEL_503:
          v204 = *(v2 + 1008);
          continue;
        }

        v3 = v340;
LABEL_543:
        *(v2 + 32) = 2;
        if (*(v2 + 952))
        {
          return 0;
        }

        if ((v204 & 0x4000) == 0)
        {
          return *(v2 + 32) != 2;
        }

LABEL_545:
        v4 = 2;
        goto LABEL_546;
      }
    }

    break;
  }

  *(v2 + 3368) = 2;
LABEL_361:
  if (*(v2 + 1056))
  {
    *&v346 = 0;
    v347[0] = 0;
    sub_240B50C64(v2, &v346, v347);
    v211 = *(v2 + 1152);
    if (v211 == 2)
    {
      v213 = HIDWORD(v211);
    }

    else if (v211 == 1)
    {
      v213 = *(v2 + 1220);
    }

    else if (v211 || (v212 = *(v2 + 1132), v212 >= 6))
    {
      v213 = 0;
    }

    else
    {
      v213 = dword_240C83EA8[v212];
    }

    v214 = *(v2 + 3312);
    v215 = *(v2 + 1072);
    v216 = *(v2 + 1088);
    v217 = *(v2 + 1064);
    v218 = *(v2 + 1120);
    v219 = v346;
    v220 = v347[0];
    v221 = *(v2 + 1128);
    v222 = *(v2 + 1132);
    v223 = *(v2 + 1136);
    v224 = *(v2 + 1144);
    v225 = *(v2 + 1001);
    v226 = *(v2 + 1000);
    v227 = *v214;
    v227[270].i64[0] = v346;
    v227[270].i64[1] = v220;
    v227[271].i32[0] = v221;
    v227[271].i32[1] = v222;
    v227[271].i64[1] = v223;
    v227[272].i64[0] = v224;
    v228 = *v214;
    v228[272].i64[1] = v213;
    v228[273] = v215;
    v228[274] = v216;
    v229 = *v214;
    v229[275].i64[0] = v217;
    v229[275].i64[1] = v218;
    if (v222)
    {
      v230 = 1;
    }

    else
    {
      v230 = 2;
    }

    if (v222 == 2)
    {
      v230 = 0;
    }

    v231 = (v219 << v230) * v221;
    if (v224 >= 2)
    {
      v231 = (v224 + v231 - 1) / v224 * v224;
    }

    v229[276].i64[0] = v231;
    v232 = v214[96][5].i64[1];
    for (j = *(v232 + 328); j != *(v232 + 336); j += 96)
    {
      if (!*(j + 12))
      {
        if ((*(j + 72) & v225) == 1)
        {
          v229[278].i8[1] = 1;
        }

        break;
      }
    }

    if ((v226 & 1) == 0)
    {
      v234 = *(v232 + 248);
      v229[278].i32[1] = v234;
      if (v234 >= 5)
      {
        v229[270] = vextq_s8(v229[270], v229[270], 8uLL);
      }
    }

    v229[277].i64[0] = v229[276].i64[1];
    v235 = *(v2 + 1168);
    if (*(v2 + 1176) != v235)
    {
      v236 = 0;
      v237 = 0;
      v238 = 28;
      v333 = v219;
      do
      {
        v239 = *(v2 + 1152);
        if (v239 == 2)
        {
          v241 = HIDWORD(v239);
        }

        else if (v239 == 1)
        {
          v241 = *(*(v2 + 1520) + v238);
        }

        else if (v239 || (v240 = *(v235 + v236 + 4), v240 >= 6))
        {
          v241 = 0;
        }

        else
        {
          v241 = dword_240C83EA8[v240];
        }

        v242 = (v235 + v236);
        v243 = *v242;
        v244 = v242[1];
        v245 = *(v242 + 2);
        v246 = 1;
        if (!v244)
        {
          v246 = 2;
        }

        if (v244 == 2)
        {
          v246 = 0;
        }

        v247 = (v219 << v246) * v243;
        if (v245 >= 2)
        {
          v247 = (v245 + v247 - 1) / v245 * v245;
        }

        v249 = *(v242 + 3);
        v248 = *(v242 + 4);
        v250 = *(v242 + 1);
        v251 = **v341;
        v252 = v251[554];
        v253 = v251[555];
        if (v252 >= v253)
        {
          v255 = v251[553];
          v256 = 0x2E8BA2E8BA2E8BA3 * ((v252 - v255) >> 3);
          v257 = v256 + 1;
          if ((v256 + 1) > 0x2E8BA2E8BA2E8BALL)
          {
            sub_240B228BC();
          }

          v258 = 0x2E8BA2E8BA2E8BA3 * ((v253 - v255) >> 3);
          if (2 * v258 > v257)
          {
            v257 = 2 * v258;
          }

          if (v258 >= 0x1745D1745D1745DLL)
          {
            v259 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v259 = v257;
          }

          if (v259)
          {
            if (v259 <= 0x2E8BA2E8BA2E8BALL)
            {
              operator new();
            }

            sub_240B2291C();
          }

          v260 = 88 * v256;
          *v260 = v243;
          *(v260 + 4) = v244;
          *(v260 + 8) = v250;
          *(v260 + 16) = v245;
          *(v260 + 24) = v241;
          *(v260 + 32) = 0u;
          *(v260 + 48) = 0u;
          *(v260 + 64) = v249;
          *(v260 + 72) = v248;
          *(v260 + 80) = v247;
          v254 = 88 * v256 + 88;
          v261 = v251[553];
          v262 = v251[554] - v261;
          v263 = v260 - v262;
          memcpy((v260 - v262), v261, v262);
          v264 = v251[553];
          v251[553] = v263;
          v251[554] = v254;
          v251[555] = 0;
          if (v264)
          {
            operator delete(v264);
          }

          v2 = v343;
          v219 = v333;
        }

        else
        {
          *v252 = v243;
          *(v252 + 4) = v244;
          *(v252 + 8) = v250;
          *(v252 + 16) = v245;
          *(v252 + 24) = v241;
          *(v252 + 32) = 0u;
          *(v252 + 48) = 0u;
          *(v252 + 64) = v249;
          *(v252 + 72) = v248;
          v254 = v252 + 88;
          *(v252 + 80) = v247;
          v2 = v343;
        }

        v251[554] = v254;
        ++v237;
        v235 = *(v2 + 1168);
        v238 += 96;
        v236 += 40;
      }

      while (v237 < 0xCCCCCCCCCCCCCCCDLL * ((*(v2 + 1176) - v235) >> 3));
    }
  }

  else
  {
    if (*(v2 + 897))
    {
      return 3;
    }

    if (*(v2 + 3373) == 1 && (*(v2 + 3384) & 1) == 0)
    {
      return 5;
    }
  }

  v265 = sub_240B3905C(*(v2 + 3312));
  v346 = 0uLL;
  v27 = sub_240B503E8(v2, &v346);
  if (v27)
  {
    goto LABEL_528;
  }

  v266 = *(v343 + 3312);
  v267 = *(v343 + 3320);
  v269 = v266[2];
  v268 = v266[3];
  v335 = v266;
  if (v267 < (v268 - v269) >> 4)
  {
    v334 = v265;
    v270 = 0;
    v271 = 16 * v267;
    while ((*v342)[v267])
    {
      v272 = *(v269 + v271) + v270;
      ++v267;
      v271 += 16;
      v270 = v272;
      if (v267 >= (v268 - v269) >> 4)
      {
        goto LABEL_433;
      }
    }

    v273 = *(v269 + v271);
    v274 = __CFADD__(v273, v270);
    if ((v273 + v270) <= *(&v346 + 1) && !v274)
    {
      operator new();
    }

LABEL_433:
    v266 = *v341;
    v265 = v334;
  }

  v275 = 1;
  if (!sub_240B34598(v266, 0, 0, 0))
  {
    v276 = *(v343 + 3328);
    v277 = *(v343 + 3336) - v276;
    v278 = *(v343 + 3320);
    if (v278 >= v277)
    {
      v279 = 0;
    }

    else
    {
      v279 = 0;
      v280 = 16 * v278;
      do
      {
        if (*(v276 + v278) != 1)
        {
          break;
        }

        v279 += *(v335[2] + v280);
        *(v343 + 3320) = ++v278;
        v280 += 16;
      }

      while (v278 < v277);
    }

    *(v343 + 3360) -= v279;
    sub_240B4C880(v343, v279);
    v275 = 0;
  }

  if (v275)
  {
    return 1;
  }

  v281 = *v341;
  v282 = ((*v341)[3] - (*v341)[2]) >> 4;
  v283 = (*v341)[177];
  if (v282 == v283)
  {
    v284 = 1;
  }

  else
  {
    v284 = *(v281 + 1410) ^ 1;
  }

  v285 = *(v343 + 1044);
  if (v285 >= 1 && ((*(v343 + 3372) | v284) & 1) == 0)
  {
    *(v343 + 3372) = 1;
    *(v343 + 1048) = 8;
    return 0x8000;
  }

  v286 = v281[170];
  v287 = v281[171];
  v288 = v286 + 1;
  v289 = v286 == v287 || v288 == v287;
  v290 = v289;
  v291 = v281[170];
  if (!v289)
  {
    v292 = *v286;
    v293 = v286 + 1;
    v291 = v281[170];
    v294 = v286 + 1;
    do
    {
      v296 = *v294++;
      v295 = v296;
      if (v296 < v292)
      {
        v292 = v295;
        v291 = v293;
      }

      v293 = v294;
    }

    while (v294 != v287);
  }

  if (v282 == v283)
  {
    if ((*(v343 + 897) & 1) == 0)
    {
      if ((v281[178] & 1) != 0 || *(v281 + 1408) != 1 || *(v281 + 1409) != 1)
      {
        goto LABEL_492;
      }

      v297 = v281[173];
      v298 = v281[174];
      if (v297 == v298)
      {
LABEL_467:
        if (v286 != v287)
        {
          v299 = *(v281 + 40);
          do
          {
            v300 = *(v288 - 1);
          }

          while (v299 <= v300 && v288++ != v287);
          if (v299 > v300)
          {
            goto LABEL_492;
          }
        }

        v302 = *(v281 + 16);
        if (v302 == 3 || v302 == 0)
        {
          if ((v281[38] & 1) != 0 || (v307 = *(v281 + 90)) != 0)
          {
            v307 = 1 << *(v281 + 93);
          }

          for (k = v281[49]; k != v281[50]; k += 40)
          {
            if (*(k + 8))
            {
              v305 = 1;
            }

            else
            {
              v305 = *(v281 + 304);
            }

            if (v305)
            {
              v306 = 1 << *(k + 20);
            }

            else
            {
              v306 = 0;
            }

            v307 |= v306;
          }
        }

        else
        {
          v307 = 0;
        }

        v308 = v281[9];
        if ((v308 & 2) != 0)
        {
          v309 = *(*v281 + 4208);
          v310 = *(v309 + 1288);
          v311 = *(v309 + 1296);
          if (v310 == v311)
          {
            v312 = 0;
          }

          else
          {
            v312 = 0;
            do
            {
              v313 = *v310;
              v310 += 10;
              v312 |= 1 << v313;
            }

            while (v310 != v311);
          }

          v307 |= v312;
        }

        if ((v308 & 0x20) != 0)
        {
          v307 |= 16 << *(v281 + 113);
        }
      }

      else
      {
        while (*v297)
        {
          if (++v297 == v298)
          {
            goto LABEL_467;
          }
        }

LABEL_492:
        v307 = 0;
      }

      *(*v336 + 4 * *(v343 + 3392) - 4) = v307;
    }

    if (sub_240B37540(v281))
    {
      return 1;
    }

    v2 = v343;
    if ((*(v343 + 897) & 1) != 0 || *(v343 + 3373) == 1)
    {
      *(v343 + 1056) = 0;
      *(v343 + 1176) = *(v343 + 1168);
    }

LABEL_498:
    *(v2 + 3368) = 0;
    sub_240B4AF68(v339, 0);
    if (*(v2 + 897) == 1)
    {
      *(v2 + 896) = 1;
      *(v2 + 1008) &= ~0x200u;
      return 512;
    }

    v3 = v340;
    if (*(v2 + 3373) == 1 && (*(v2 + 1009) & 0x10) != 0 && *(v2 + 3384) != 1)
    {
      return 4096;
    }

    goto LABEL_503;
  }

  if (v285 < 2 || v265 > *v291)
  {
    sub_240B5051C(v343);
    v2 = v343;
    v3 = v340;
    goto LABEL_530;
  }

  v321 = *(v343 + 3352);
  if ((v290 & 1) == 0)
  {
    v322 = *v286;
    v323 = v286 + 1;
    do
    {
      v325 = *v323++;
      v324 = v325;
      if (v325 < v322)
      {
        v322 = v324;
        v286 = v288;
      }

      v288 = v323;
    }

    while (v323 != v287);
  }

  v326 = *v286;
  if (*(v321 + 112) <= v326)
  {
    v321 = 1;
  }

  else
  {
    v327 = *(v321 + 116);
    if (v327)
    {
      v328 = (v321 + 120);
      LODWORD(v321) = 8;
      do
      {
        if (v328[11] < v326 && *v328 < v321)
        {
          LODWORD(v321) = *v328;
        }

        ++v328;
        --v327;
      }

      while (v327);
      v321 = v321;
    }

    else
    {
      v321 = 8;
    }
  }

  *(v343 + 1048) = v321;
  return 0x8000;
}