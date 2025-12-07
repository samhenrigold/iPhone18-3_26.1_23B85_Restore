uint64_t sub_240B23CB8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, void *a6)
{
  sub_240B22DA4(v46, a2);
  sub_240B22DA4(__p, 2 * a2);
  v12 = __clz(a2);
  v13 = (((-1 << (v12 ^ 0x1F)) + a2) >> (v12 ^ 0x1F)) - v12 + 32;
  if (!a2)
  {
    v13 = 0;
  }

  if (v13 >= 7)
  {
    v13 = 7;
  }

  v14 = sub_240B24020(a5, *(*a6 + v13), a4) + a1;
  if (v14 > a2)
  {
LABEL_6:
    a3 = 1;
    goto LABEL_39;
  }

  if (v14 > a1)
  {
    LODWORD(v15) = 0;
    v16 = a2 - a1;
    do
    {
      v17 = __clz(v15);
      v18 = (((-1 << (v17 ^ 0x1F)) + v15) >> (v17 ^ 0x1F)) - v17 + 32;
      if (!v15)
      {
        v18 = 0;
      }

      if (v18 >= 7)
      {
        v18 = 7;
      }

      v15 = sub_240B24020(a5, *(*a6 + v18), a4);
      *(v46[0] + a1) = v15;
      if (v16 <= v15)
      {
        goto LABEL_6;
      }

      ++a1;
      --v16;
    }

    while (v14 != a1);
  }

  if (a3)
  {
    v19 = v46[0];
    v20 = __p[0];
    v21 = __clz(a2) ^ 0x3F;
    if ((a2 & (a2 - 1)) != 0)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = 1 << v22;
    v24 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v25 = vdupq_n_s64(v23 - 1);
    v26 = xmmword_240C111C0;
    v27 = xmmword_240C111D0;
    v28 = (__p[0] + 8);
    v29.i64[0] = 0x100000001;
    v29.i64[1] = 0x100000001;
    v30 = vdupq_n_s64(4uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v25, v27));
      v32 = vuzp1q_s32(v27, v26);
      v33 = vaddq_s32(v32, v29);
      if (vuzp1_s16(v31, *v25.i8).u8[0])
      {
        *(v28 - 2) = v33.i32[0] & ~v32.i32[0];
      }

      if (vuzp1_s16(v31, *&v25).i8[2])
      {
        *(v28 - 1) = v33.i32[1] & ~v32.i32[1];
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, *&v26))).i32[1])
      {
        *v28 = v33.i64[1] & ~v32.i64[1];
      }

      v26 = vaddq_s64(v26, v30);
      v27 = vaddq_s64(v27, v30);
      v28 += 2;
      v24 -= 4;
    }

    while (v24);
    if (a2)
    {
      v34 = 0;
      v35 = v20 - 4;
      v36 = v21 + ((a2 & (a2 - 1)) != 0) + 1;
      do
      {
        v37 = 0;
        v38 = v19[v34] + 1;
        v39 = v36;
        v40 = v23;
        do
        {
          v41 = v37 + v40;
          v42 = *&v35[4 * v37 + 4 * v40];
          v40 >>= 1;
          if (v42 < v38)
          {
            v37 = v41;
          }

          else
          {
            v42 = 0;
          }

          v38 -= v42;
          --v39;
        }

        while (v39);
        *(a3 + 4 * v34) = v37;
        for (i = v37 + 1; i <= v23; i += i & -i)
        {
          --*&v35[4 * i];
        }

        ++v34;
      }

      while (v34 != a2);
    }

    a3 = 0;
  }

LABEL_39:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  return a3;
}

void sub_240B23FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B23FBC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 8);
  sub_240B23988(&v5);
  sub_240B22320(a1);
  return a1;
}

uint64_t sub_240B24020(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *(a1 + 68);
  if (v4)
  {
    v36 = *(a1 + 56);
    v40 = *(a1 + 72);
    *(a1 + 72) = v40 + 1;
    LODWORD(v18) = *(v36 + 4 * (*&v40 & 0xFFFFFLL));
    *(a1 + 68) = v4 - 1;
    goto LABEL_19;
  }

  v7 = a3[2];
  if (v7 > a3[3])
  {
    sub_240B244C4(a3);
  }

  else
  {
    v8 = a3[1];
    v9 = *a3 | (*v7 << v8);
    a3[2] = v7 + ((63 - v8) >> 3);
    *a3 = v9;
    a3[1] = v8 | 0x38;
  }

  v10 = *(a1 + 16);
  if (v10 == 1)
  {
    v18 = sub_240B435F8(*(*(a1 + 8) + 24 * a2), a3);
  }

  else
  {
    v11 = *(a1 + 20);
    v12 = (v11 & 0xFFF) >> *(a1 + 36);
    v13 = *(a1 + 40) & v11 & 0xFFFu;
    v14 = *(*a1 + 8 * (a2 << *(a1 + 32)) + 8 * v12);
    if (v14 <= v13)
    {
      v15 = *(*a1 + 8 * (a2 << *(a1 + 32)) + 8 * v12);
    }

    else
    {
      v15 = 0;
    }

    v16 = HIDWORD(v15);
    v17 = HIWORD(v15);
    if (v14 <= v13)
    {
      v18 = BYTE1(v14);
    }

    else
    {
      v18 = (v11 & 0xFFF) >> *(a1 + 36);
    }

    v19 = v13 + v16 + (v17 ^ WORD1(v14)) * (*(a1 + 20) >> 12);
    v20 = v19 < 0x10000;
    v21 = a3[1];
    v22 = *a3 >> (16 * v20);
    if (v19 < 0x10000)
    {
      v19 = *a3 | (v19 << 16);
    }

    *(a1 + 20) = v19;
    *a3 = v22;
    a3[1] = v21 - 16 * v20;
  }

  v23 = *(a1 + 84);
  v24 = v18 >= v23;
  v25 = v18 - v23;
  if (v24)
  {
    v41 = *(a1 + 92);
    v24 = v25 >= v41;
    v42 = v25 - v41;
    if (v24)
    {
      v44 = *(a1 + 96);
      v43 = *(a1 + 100);
      v45 = *(a1 + 88) - (v44 + v43) + (v42 >> (v44 + v43));
      v46 = *a3 & ~(-1 << v45);
      v47 = a3[1] - (v45 & 0x1F);
      *a3 >>= v45 & 0x1F;
      a3[1] = v47;
      LODWORD(v25) = v25 & ~(-1 << v43) | ((v46 | (((v25 >> v43) & ((1 << v44) - 1) | (1 << v44)) << v45)) << v43);
    }

    v48 = *(a1 + 80);
    v49 = v48 + v25;
    *(a1 + 68) = v48 + v25;
    v50 = a3[2];
    if (v50 > a3[3])
    {
      v83 = v48;
      sub_240B244C4(a3);
      v48 = v83;
    }

    else
    {
      v51 = a3[1];
      v52 = *a3 | (*v50 << v51);
      a3[2] = v50 + ((63 - v51) >> 3);
      *a3 = v52;
      a3[1] = v51 | 0x38;
    }

    v53 = *(a1 + 76);
    if (v10)
    {
      v84 = v48;
      v80 = *(a1 + 76);
      v81 = sub_240B435F8(*(*(a1 + 8) + 24 * v53), a3);
      v53 = v80;
      v48 = v84;
      v61 = v81;
    }

    else
    {
      v54 = *(a1 + 20);
      v55 = (v54 & 0xFFF) >> *(a1 + 36);
      v56 = *(a1 + 40) & v54 & 0xFFFu;
      v57 = *(*a1 + 8 * (v53 << *(a1 + 32)) + 8 * v55);
      if (v57 <= v56)
      {
        v58 = *(*a1 + 8 * (v53 << *(a1 + 32)) + 8 * v55);
      }

      else
      {
        v58 = 0;
      }

      v59 = HIDWORD(v58);
      v60 = HIWORD(v58);
      if (v57 <= v56)
      {
        v61 = BYTE1(v57);
      }

      else
      {
        v61 = (v54 & 0xFFF) >> *(a1 + 36);
      }

      v62 = v56 + v59 + (v60 ^ WORD1(v57)) * (*(a1 + 20) >> 12);
      v63 = v62 < 0x10000;
      v64 = a3[1];
      v65 = *a3 >> (16 * v63);
      if (v62 < 0x10000)
      {
        v62 = *a3 | (v62 << 16);
      }

      *(a1 + 20) = v62;
      *a3 = v65;
      a3[1] = v64 - 16 * v63;
    }

    v66 = (*(a1 + 24) + 16 * v53);
    v67 = v66[1];
    v24 = v61 >= v67;
    v68 = v61 - v67;
    if (v24)
    {
      v69 = *v66;
      v72 = v66 + 2;
      v70 = v66[2];
      v71 = v72[1];
      v73 = v69 - (v70 + v71) + (v68 >> (v70 + v71));
      v74 = *a3 & ~(-1 << v73);
      v75 = a3[1] - (v73 & 0x1F);
      *a3 >>= v73 & 0x1F;
      a3[1] = v75;
      LODWORD(v61) = v61 & ~(-1 << v71) | ((v74 | (((v61 >> v71) & ((1 << v70) - 1) | (1 << v70)) << v73)) << v71);
    }

    v76 = *(a1 + 584);
    if (v61 >= v76)
    {
      v77 = v61 - v76 + 1;
    }

    else
    {
      v77 = *(a1 + 4 * v61 + 104);
    }

    v37 = (a1 + 64);
    v78 = *(a1 + 64);
    if (v77 > v78)
    {
      v77 = *(a1 + 64);
    }

    if (v77 > 0x100000)
    {
      *(a1 + 72) = v78 - 0x100000;
    }

    else
    {
      *(a1 + 72) = v78 - v77;
      if (!v77)
      {
        if (v49 >= 0x100000)
        {
          v82 = 0x100000;
        }

        else
        {
          v82 = v49;
        }

        bzero(*(a1 + 56), (4 * v82));
        v49 = *(a1 + 68);
        v48 = *(a1 + 80);
      }
    }

    if (v49 < v48)
    {
      LODWORD(v18) = 0;
      return v18;
    }

    v36 = *(a1 + 56);
    v79 = *(a1 + 72);
    *(a1 + 72) = v79 + 1;
    LODWORD(v18) = *(v36 + 4 * (*&v79 & 0xFFFFFLL));
    *(a1 + 68) = v49 - 1;
    goto LABEL_20;
  }

  v26 = (*(a1 + 24) + 16 * a2);
  v27 = v26[1];
  v24 = v18 >= v27;
  v28 = v18 - v27;
  if (v24)
  {
    v29 = *v26;
    v32 = v26 + 2;
    v30 = v26[2];
    v31 = v32[1];
    v33 = v29 - (v30 + v31) + (v28 >> (v30 + v31));
    v34 = *a3 & ~(-1 << v33);
    v35 = a3[1] - (v33 & 0x1F);
    *a3 >>= v33 & 0x1F;
    a3[1] = v35;
    LODWORD(v18) = v18 & ~(-1 << v31) | ((v34 | (((v18 >> v31) & ((1 << v30) - 1) | (1 << v30)) << v33)) << v31);
  }

  v36 = *(a1 + 56);
  if (v36)
  {
LABEL_19:
    v37 = (a1 + 64);
LABEL_20:
    v38 = (*v37)++;
    *(v36 + 4 * (*&v38 & 0xFFFFFLL)) = v18;
  }

  return v18;
}

void *sub_240B244C4(void *result)
{
  v1 = result[1];
  if (v1 <= 0x37)
  {
    v2 = result[2];
    v3 = result[3] + 8;
    while (v2 < v3)
    {
      result[2] = v2 + 1;
      v4 = v1 + 8;
      *result |= *v2 << v1;
      result[1] = v1 + 8;
      ++v2;
      v5 = v1 >= 0x30;
      v1 += 8;
      if (v5)
      {
        goto LABEL_8;
      }
    }
  }

  v4 = v1;
LABEL_8:
  result[5] += (63 - v4) >> 3;
  result[1] = ((63 - v4) & 0xFFFFFFFFFFFFFFF8) + v4;
  return result;
}

void sub_240B2453C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    atomic_fetch_add(&qword_27E519020, -*(v2 - 24));
    free(*(v2 - 32));
  }
}

uint64_t *sub_240B24568(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_240B22320((v2 + 48));

    JUMPOUT(0x245CCE590);
  }

  return result;
}

void sub_240B245C8(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 4 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B228D4(v10);
      }

      sub_240B228BC();
    }

    bzero(a1[1], 4 * v6);
    v11 = &v4[4 * v6];
  }

  a1[1] = v11;
}

uint64_t sub_240B246DC(uint64_t a1, uint64_t a2)
{
  v6 = (2 * *(a1 + 8)) ^ (*(a1 + 8) >> 31);
  result = (*(*a2 + 32))(a2, 0x100001200000012, 0x400001402000013, 0, &v6);
  if (!result)
  {
    *(a1 + 8) = -(v6 & 1) ^ (v6 >> 1);
    v5 = (2 * *(a1 + 12)) ^ (*(a1 + 12) >> 31);
    result = (*(*a2 + 32))(a2, 0x100001200000012, 0x400001402000013, 0, &v5);
    if (!result)
    {
      *(a1 + 12) = -(v5 & 1) ^ (v5 >> 1);
    }
  }

  return result;
}

uint64_t sub_240B24808(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == 2)
  {
    *(a1 + 12) = 1;
    *(a1 + 16) = 0x20032DCD5;
  }

  if ((*(*a2 + 64))(a2, v4 != 2))
  {
    return 0;
  }

  result = (*(*a2 + 24))(a2, 0, a1 + 12);
  if (!result)
  {
    if (!(*(*a2 + 64))(a2, *(a1 + 12)))
    {
      result = (*(*a2 + 40))(a2, 24, 10000000, a1 + 16);
      if (result)
      {
        return result;
      }

      if ((*(a1 + 16) - 10000001) < 0xFF676E44)
      {
        return 1;
      }
    }

    if ((*(*a2 + 64))(a2, (*(a1 + 12) & 1) == 0))
    {
      return 0;
    }

    v8 = *(a1 + 20);
    result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x24500000043, 13, &v8);
    if (!result)
    {
      v6 = v8;
      *(a1 + 20) = v8;
      v7 = ((1 << v6) & 0x72106) == 0 || v6 > 0x3F;
      result = v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_240B24A20(uint64_t a1, uint64_t a2)
{
  if (!(*(*a2 + 72))(a2, a1, a1 + 8))
  {
    (*(*a2 + 80))(a2, a1);
    return 0;
  }

  result = (*(*a2 + 24))(a2, 0, a1 + 9);
  if (!result)
  {
    v8 = *(a1 + 56);
    result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x24500000043, 0, &v8);
    if (!result)
    {
      v5 = v8;
      *(a1 + 56) = v8;
      result = v5 > 3;
      if (v5 <= 3)
      {
        if ((*(*a2 + 64))(a2, (*(a1 + 9) & 1) == 0))
        {
          return (*(a1 + 9) != 1 || ((*(*a2 + 96))(a2) & 1) == 0) && *(a1 + 32) == *(a1 + 40);
        }

        v6 = *(a1 + 56);
        if (v6 == 2)
        {
          *(a1 + 16) = 1;
        }

        if (!(*(*a2 + 64))(a2, v6 != 2))
        {
          result = sub_240B24E8C(a2, (a1 + 16));
          if (result)
          {
            return result;
          }

          if (!(*(*a2 + 64))(a2, *(a1 + 16) == 2))
          {
            *(a1 + 120) = *(a1 + 76);
            result = (*(*a2 + 88))(a2, a1 + 112);
            if (result)
            {
              return result;
            }

            *(a1 + 76) = *(a1 + 120);
          }
        }

        if (!(*(*a2 + 64))(a2, (*(a1 + 56) - 3) < 0xFFFFFFFE))
        {
          result = sub_240B24F20(a2, (a1 + 20));
          if (result)
          {
            return result;
          }

          if (!(*(*a2 + 64))(a2, *(a1 + 20) == 2))
          {
            *(a1 + 160) = *(a1 + 84);
            result = (*(*a2 + 88))(a2, a1 + 152);
            if (result)
            {
              return result;
            }

            *(a1 + 84) = *(a1 + 160);
            *(a1 + 176) = *(a1 + 92);
            result = (*(*a2 + 88))(a2, a1 + 168);
            if (result)
            {
              return result;
            }

            *(a1 + 92) = *(a1 + 176);
            *(a1 + 192) = *(a1 + 100);
            result = (*(*a2 + 88))(a2, a1 + 184);
            if (result)
            {
              return result;
            }

            *(a1 + 100) = *(a1 + 192);
          }
        }

        v7 = (a1 + 64);
        *(a1 + 140) = *(a1 + 64);
        *(a1 + 136) = *(a1 + 56);
        *(a1 + 148) = *(a1 + 72);
        result = (*(*a2 + 88))(a2, a1 + 128);
        if (!result)
        {
          *v7 = *(a1 + 140);
          *(a1 + 72) = *(a1 + 148);
          result = sub_240B24FB4(a2, (a1 + 24));
          if (!result)
          {
            if (*(a1 + 56) == 3 || (*v7 & 1) == 0 && *(a1 + 72) == 2 || sub_240B25034(a1))
            {
              return 1;
            }

            return (*(a1 + 9) != 1 || ((*(*a2 + 96))(a2) & 1) == 0) && *(a1 + 32) == *(a1 + 40);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_240B24E8C(uint64_t a1, unsigned int *a2)
{
  v6 = *a2;
  result = (*(*a1 + 32))(a1, 0x8000000180000000, 0x24500000043, 1, &v6);
  if (!result)
  {
    v4 = v6;
    *a2 = v6;
    return ((1 << v4) & 0xC06) == 0 || v4 > 0x3F;
  }

  return result;
}

uint64_t sub_240B24F20(uint64_t a1, unsigned int *a2)
{
  v6 = *a2;
  result = (*(*a1 + 32))(a1, 0x8000000180000000, 0x24500000043, 1, &v6);
  if (!result)
  {
    v4 = v6;
    *a2 = v6;
    return ((1 << v4) & 0xA06) == 0 || v4 > 0x3F;
  }

  return result;
}

uint64_t sub_240B24FB4(uint64_t a1, unsigned int *a2)
{
  v5 = *a2;
  result = (*(*a1 + 32))(a1, 0x8000000180000000, 0x24500000043, 1, &v5);
  if (!result)
  {
    v4 = v5;
    *a2 = v5;
    return v4 > 3;
  }

  return result;
}

uint64_t sub_240B25034(uint64_t a1)
{
  v2 = a1 + 32;
  *(a1 + 40) = *(a1 + 32);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_240B250A4(v4, a1 + 16);
  result = sub_240B25260(v4, v2);
  if (result)
  {
    *(a1 + 40) = *(a1 + 32);
    return 1;
  }

  return result;
}

uint64_t sub_240B250A4(uint64_t result, uint64_t a2)
{
  *(result + 96) = 0;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 40);
    v3 = *a2;
    *result = v2;
    *(result + 4) = v3;
    if (v3 > 9)
    {
      if (v3 == 10)
      {
        v4 = vdupq_n_s64(0x3FD5555555555555uLL);
      }

      else
      {
        v4 = xmmword_240C11440;
      }
    }

    else if (v3 == 1)
    {
      v4 = xmmword_240C11430;
    }

    else
    {
      v5 = *(a2 + 60);
      v6.i64[0] = v5;
      v6.i64[1] = SHIDWORD(v5);
      v4 = vmulq_f64(vcvtq_f64_s64(v6), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL));
    }

    *(result + 8) = v4;
    if (v2 == 3 || !v2)
    {
      v7 = *(a2 + 4);
      *(result + 24) = v7;
      if (v7 > 8)
      {
        if (v7 == 9)
        {
          v8 = xmmword_240C114B0;
          v4 = xmmword_240C114C0;
          v9 = xmmword_240C114D0;
        }

        else
        {
          v8 = xmmword_240C11480;
          v4 = xmmword_240C11490;
          v9 = xmmword_240C114A0;
        }
      }

      else if (v7 == 1)
      {
        v8 = xmmword_240C11450;
        v4 = xmmword_240C11460;
        v9 = xmmword_240C11470;
      }

      else
      {
        v10 = *(a2 + 68);
        v11.i64[0] = v10;
        v11.i64[1] = SHIDWORD(v10);
        v12 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
        v4 = vmulq_f64(vcvtq_f64_s64(v11), v12);
        v13 = *(a2 + 76);
        v11.i64[0] = v13;
        v11.i64[1] = SHIDWORD(v13);
        v9 = vmulq_f64(vcvtq_f64_s64(v11), v12);
        v14 = *(a2 + 84);
        v11.i64[0] = v14;
        v11.i64[1] = SHIDWORD(v14);
        v8 = vmulq_f64(vcvtq_f64_s64(v11), v12);
      }

      *(result + 32) = v4;
      *(result + 48) = v9;
      *(result + 64) = v8;
    }

    if (*(a2 + 48) == 1)
    {
      LODWORD(v4.f64[0]) = *(a2 + 52);
      v4.f64[0] = *&v4.f64[0] * 0.0000001;
      v15 = 0xFFFF;
    }

    else
    {
      v15 = *(a2 + 56);
      v4.f64[0] = 0.0;
    }

    *(result + 80) = v15;
    *(result + 88) = v4.f64[0];
    *(result + 96) = *(a2 + 8);
  }

  else
  {
    *(result + 24) = 2;
    *(result + 80) = 2;
    *result = 0x200000003;
  }

  return result;
}

uint64_t sub_240B25260(double *a1, uint64_t a2)
{
  v136 = *MEMORY[0x277D85DE8];
  v121[0] = 0;
  v121[1] = 0;
  v122 = 0;
  v119[0] = 0;
  v119[1] = 0;
  v120 = 0;
  v117[0] = 0;
  v117[1] = 0;
  v118 = 0;
  v2 = 1;
  if (*a1 > 2u)
  {
    goto LABEL_227;
  }

  v4 = *(a1 + 20);
  if (v4 == 2 || *a1 == 2 && *(a1 + 24))
  {
    goto LABEL_227;
  }

  LOBYTE(__str) = 0;
  sub_240B26750(v121, 0x80uLL, &__str);
  sub_240B26894(0, 0, v121);
  v6 = v121[0];
  if ((v121[1] - v121[0]) <= 7)
  {
    sub_240B26918(v121, 8 - (v121[1] - v121[0]));
    v6 = v121[0];
  }

  v6[1] = 543979626;
  sub_240B26894(71303168, 8, v121);
  v7 = *a1;
  v8 = v121[0];
  v9 = v121[1] - v121[0];
  if ((v121[1] - v121[0]) <= 0xF)
  {
    sub_240B26918(v121, 16 - v9);
    v8 = v121[0];
    v9 = v121[1] - v121[0];
  }

  if (v7 == 2)
  {
    v10 = 1919837043;
  }

  else
  {
    v10 = 1920233069;
  }

  v8[3] = v10;
  v11 = *a1;
  if (v9 <= 0x13)
  {
    sub_240B26918(v121, 20 - v9);
    v8 = v121[0];
    v9 = v121[1] - v121[0];
  }

  if (v11 == 1)
  {
    v12 = 1497453127;
  }

  else
  {
    v12 = 541214546;
  }

  v8[4] = v12;
  if (sub_240B26A50(a1))
  {
    v13 = 543318348;
  }

  else
  {
    v13 = 542792024;
  }

  if (v9 <= 0x17)
  {
    sub_240B26918(v121, 24 - v9);
    v8 = v121[0];
    v9 = v121[1] - v121[0];
  }

  v8[5] = v13;
  if (v9 <= 0x19)
  {
    sub_240B26918(v121, 26 - v9);
    v8 = v121[0];
  }

  *(v8 + 12) = -7417;
  v14 = v121[0];
  v15 = v121[1] - v121[0];
  if ((v121[1] - v121[0]) <= 0x1B)
  {
    sub_240B26918(v121, 28 - v15);
    v14 = v121[0];
    v15 = v121[1] - v121[0];
  }

  v14[13] = 3072;
  if (v15 <= 0x1D)
  {
    sub_240B26918(v121, 30 - v15);
    v14 = v121[0];
  }

  v14[14] = 256;
  v16 = v121[0];
  v17 = v121[1] - v121[0];
  if ((v121[1] - v121[0]) <= 0x1F)
  {
    sub_240B26918(v121, 32 - v17);
    v16 = v121[0];
    v17 = v121[1] - v121[0];
  }

  v16[15] = 0;
  if (v17 <= 0x21)
  {
    sub_240B26918(v121, 34 - v17);
    v16 = v121[0];
  }

  v16[16] = 0;
  v18 = v121[0];
  v19 = v121[1] - v121[0];
  if ((v121[1] - v121[0]) <= 0x23)
  {
    sub_240B26918(v121, 36 - v19);
    v18 = v121[0];
    v19 = v121[1] - v121[0];
  }

  v18[17] = 0;
  if (v19 <= 0x27)
  {
    sub_240B26918(v121, 40 - v19);
    v18 = v121[0];
    v19 = v121[1] - v121[0];
  }

  *(v18 + 9) = 1886610273;
  if (v19 <= 0x2B)
  {
    sub_240B26918(v121, 44 - v19);
    v18 = v121[0];
  }

  *(v18 + 10) = 1280331841;
  sub_240B26894(0, 44, v121);
  sub_240B26894(0, 48, v121);
  sub_240B26894(0, 52, v121);
  sub_240B26894(0, 56, v121);
  sub_240B26894(0, 60, v121);
  sub_240B26894(*(a1 + 24), 64, v121);
  sub_240B26894(63190, 68, v121);
  sub_240B26894(0x10000, 72, v121);
  sub_240B26894(54061, 76, v121);
  v20 = v121[0];
  if ((v121[1] - v121[0]) <= 0x53)
  {
    sub_240B26918(v121, 84 - (v121[1] - v121[0]));
    v20 = v121[0];
  }

  v20[20] = 543979626;
  __p = 0;
  v115 = 0;
  v116 = 0;
  sub_240B26894(0, v119[1] - v119[0], v119);
  v112 = 0;
  v113 = 0;
  v21 = sub_240B26AA4(&v135, off_278CB3240[*a1]);
  v22 = *a1;
  if (*a1 != 2)
  {
    std::string::push_back(v21, 95);
    v23 = *(a1 + 1);
    if (v23 == 2)
    {
      v24 = a1[1];
      __str = 0u;
      v125 = 0u;
      snprintf(&__str, 0x20uLL, "%g", v24);
      sub_240B26AA4(&v123, &__str);
      std::string::push_back(&v123, 59);
      v25 = v123.__r_.__value_.__r.__words[2];
      *&v133 = *(&v123.__r_.__value_.__l + 2);
      v132 = *&v123.__r_.__value_.__l.__data_;
      memset(&v123, 0, sizeof(v123));
      v26 = HIBYTE(v25);
      if ((v26 & 0x80u) == 0)
      {
        v27 = &v132;
      }

      else
      {
        v27 = v132;
      }

      if ((v26 & 0x80u) == 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = *(&v132 + 1);
      }

      std::string::append(&v135, v27, v28);
      if (SBYTE7(v133) < 0)
      {
        operator delete(v132);
      }

      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
      }

      v29 = a1[2];
      __str = 0u;
      v125 = 0u;
      snprintf(&__str, 0x20uLL, "%g", v29);
      sub_240B26AA4(&v132, &__str);
      if ((SBYTE7(v133) & 0x80u) == 0)
      {
        v30 = &v132;
      }

      else
      {
        v30 = v132;
      }

      if ((SBYTE7(v133) & 0x80u) == 0)
      {
        v31 = BYTE7(v133);
      }

      else
      {
        v31 = *(&v132 + 1);
      }

      std::string::append(&v135, v30, v31);
      if (SBYTE7(v133) < 0)
      {
        v32 = v132;
LABEL_73:
        operator delete(v32);
      }
    }

    else
    {
      if (v23 == 1)
      {
        v33 = "D65";
      }

      else if (v23 == 11)
      {
        v33 = "DCI";
      }

      else
      {
        v33 = "EER";
      }

      sub_240B26AA4(&__str, v33);
      if ((SBYTE7(v125) & 0x80u) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str;
      }

      if ((SBYTE7(v125) & 0x80u) == 0)
      {
        v35 = BYTE7(v125);
      }

      else
      {
        v35 = *(&__str + 1);
      }

      std::string::append(&v135, p_str, v35);
      if (SBYTE7(v125) < 0)
      {
        v32 = __str;
        goto LABEL_73;
      }
    }
  }

  if ((*a1 - 1) < 2)
  {
    goto LABEL_148;
  }

  std::string::push_back(&v135, 95);
  v36 = *(a1 + 6);
  if (v36 == 2)
  {
    v37 = a1[4];
    __str = 0u;
    v125 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v37);
    sub_240B26AA4(&v123, &__str);
    std::string::push_back(&v123, 59);
    v38 = v123.__r_.__value_.__r.__words[2];
    *&v133 = *(&v123.__r_.__value_.__l + 2);
    v132 = *&v123.__r_.__value_.__l.__data_;
    memset(&v123, 0, sizeof(v123));
    v39 = HIBYTE(v38);
    if ((v39 & 0x80u) == 0)
    {
      v40 = &v132;
    }

    else
    {
      v40 = v132;
    }

    if ((v39 & 0x80u) == 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = *(&v132 + 1);
    }

    std::string::append(&v135, v40, v41);
    if (SBYTE7(v133) < 0)
    {
      operator delete(v132);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    v42 = a1[5];
    __str = 0u;
    v125 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v42);
    sub_240B26AA4(&v123, &__str);
    std::string::push_back(&v123, 59);
    v43 = v123.__r_.__value_.__r.__words[2];
    *&v133 = *(&v123.__r_.__value_.__l + 2);
    v132 = *&v123.__r_.__value_.__l.__data_;
    memset(&v123, 0, sizeof(v123));
    v44 = HIBYTE(v43);
    if ((v44 & 0x80u) == 0)
    {
      v45 = &v132;
    }

    else
    {
      v45 = v132;
    }

    if ((v44 & 0x80u) == 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = *(&v132 + 1);
    }

    std::string::append(&v135, v45, v46);
    if (SBYTE7(v133) < 0)
    {
      operator delete(v132);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    v47 = a1[6];
    __str = 0u;
    v125 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v47);
    sub_240B26AA4(&v123, &__str);
    std::string::push_back(&v123, 59);
    v48 = v123.__r_.__value_.__r.__words[2];
    *&v133 = *(&v123.__r_.__value_.__l + 2);
    v132 = *&v123.__r_.__value_.__l.__data_;
    memset(&v123, 0, sizeof(v123));
    v49 = HIBYTE(v48);
    if ((v49 & 0x80u) == 0)
    {
      v50 = &v132;
    }

    else
    {
      v50 = v132;
    }

    if ((v49 & 0x80u) == 0)
    {
      v51 = v49;
    }

    else
    {
      v51 = *(&v132 + 1);
    }

    std::string::append(&v135, v50, v51);
    if (SBYTE7(v133) < 0)
    {
      operator delete(v132);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    v52 = a1[7];
    __str = 0u;
    v125 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v52);
    sub_240B26AA4(&v123, &__str);
    std::string::push_back(&v123, 59);
    v53 = v123.__r_.__value_.__r.__words[2];
    *&v133 = *(&v123.__r_.__value_.__l + 2);
    v132 = *&v123.__r_.__value_.__l.__data_;
    memset(&v123, 0, sizeof(v123));
    v54 = HIBYTE(v53);
    if ((v54 & 0x80u) == 0)
    {
      v55 = &v132;
    }

    else
    {
      v55 = v132;
    }

    if ((v54 & 0x80u) == 0)
    {
      v56 = v54;
    }

    else
    {
      v56 = *(&v132 + 1);
    }

    std::string::append(&v135, v55, v56);
    if (SBYTE7(v133) < 0)
    {
      operator delete(v132);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    v57 = a1[8];
    __str = 0u;
    v125 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v57);
    sub_240B26AA4(&v123, &__str);
    std::string::push_back(&v123, 59);
    v58 = v123.__r_.__value_.__r.__words[2];
    *&v133 = *(&v123.__r_.__value_.__l + 2);
    v132 = *&v123.__r_.__value_.__l.__data_;
    memset(&v123, 0, sizeof(v123));
    v59 = HIBYTE(v58);
    if ((v59 & 0x80u) == 0)
    {
      v60 = &v132;
    }

    else
    {
      v60 = v132;
    }

    if ((v59 & 0x80u) == 0)
    {
      v61 = v59;
    }

    else
    {
      v61 = *(&v132 + 1);
    }

    std::string::append(&v135, v60, v61);
    if (SBYTE7(v133) < 0)
    {
      operator delete(v132);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    v62 = a1[9];
    __str = 0u;
    v125 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v62);
    sub_240B26AA4(&v132, &__str);
    if ((SBYTE7(v133) & 0x80u) == 0)
    {
      v63 = &v132;
    }

    else
    {
      v63 = v132;
    }

    if ((SBYTE7(v133) & 0x80u) == 0)
    {
      v64 = BYTE7(v133);
    }

    else
    {
      v64 = *(&v132 + 1);
    }

    std::string::append(&v135, v63, v64);
    if (SBYTE7(v133) < 0)
    {
      v65 = v132;
LABEL_147:
      operator delete(v65);
    }
  }

  else
  {
    if (v36 == 1)
    {
      v66 = "SRG";
    }

    else if (v36 == 11)
    {
      v66 = "DCI";
    }

    else
    {
      v66 = "202";
    }

    sub_240B26AA4(&__str, v66);
    if ((SBYTE7(v125) & 0x80u) == 0)
    {
      v67 = &__str;
    }

    else
    {
      v67 = __str;
    }

    if ((SBYTE7(v125) & 0x80u) == 0)
    {
      v68 = BYTE7(v125);
    }

    else
    {
      v68 = *(&__str + 1);
    }

    std::string::append(&v135, v67, v68);
    if (SBYTE7(v125) < 0)
    {
      v65 = __str;
      goto LABEL_147;
    }
  }

LABEL_148:
  std::string::push_back(&v135, 95);
  sub_240B26AA4(&__str, off_278CB3260[*(a1 + 24)]);
  if ((SBYTE7(v125) & 0x80u) == 0)
  {
    v69 = &__str;
  }

  else
  {
    v69 = __str;
  }

  if ((SBYTE7(v125) & 0x80u) == 0)
  {
    v70 = BYTE7(v125);
  }

  else
  {
    v70 = *(&__str + 1);
  }

  std::string::append(&v135, v69, v70);
  if (SBYTE7(v125) < 0)
  {
    operator delete(__str);
  }

  if (v22 != 2)
  {
    v71 = *(a1 + 20);
    std::string::push_back(&v135, 95);
    if (v71 == 0xFFFF)
    {
      std::string::push_back(&v135, 103);
      v72 = a1[11];
      __str = 0u;
      v125 = 0u;
      snprintf(&__str, 0x20uLL, "%g", v72);
      sub_240B26AA4(&v132, &__str);
      if ((SBYTE7(v133) & 0x80u) == 0)
      {
        v73 = &v132;
      }

      else
      {
        v73 = v132;
      }

      if ((SBYTE7(v133) & 0x80u) == 0)
      {
        v74 = BYTE7(v133);
      }

      else
      {
        v74 = *(&v132 + 1);
      }

      std::string::append(&v135, v73, v74);
      if (SBYTE7(v133) < 0)
      {
        v75 = v132;
LABEL_187:
        operator delete(v75);
      }
    }

    else
    {
      if (v71 <= 12)
      {
        if (v71 == 1)
        {
          v76 = "709";
        }

        else if (v71 == 2)
        {
          v76 = "TF?";
        }

        else
        {
          v76 = "Lin";
        }
      }

      else if (v71 > 16)
      {
        if (v71 == 17)
        {
          v76 = "DCI";
        }

        else
        {
          v76 = "HLG";
        }
      }

      else if (v71 == 13)
      {
        v76 = "SRG";
      }

      else
      {
        v76 = "PeQ";
      }

      sub_240B26AA4(&__str, v76);
      if ((SBYTE7(v125) & 0x80u) == 0)
      {
        v77 = &__str;
      }

      else
      {
        v77 = __str;
      }

      if ((SBYTE7(v125) & 0x80u) == 0)
      {
        v78 = BYTE7(v125);
      }

      else
      {
        v78 = *(&__str + 1);
      }

      std::string::append(&v135, v77, v78);
      if (SBYTE7(v125) < 0)
      {
        v75 = __str;
        goto LABEL_187;
      }
    }
  }

  sub_240B26B5C(&v135, v117);
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  sub_240B26CA8(v117, &v113, &v112);
  sub_240B26D28("desc", v113, v112, v119, &__p);
  sub_240B26AA4(&v123, "CC0");
  sub_240B26B5C(&v123, v117);
  sub_240B26CA8(v117, &v113, &v112);
  sub_240B26D28("cprt", v113, v112, v119, &__p);
  if (*a1 == 1)
  {
    v79 = a1[2];
    if (fabs(v79) < 1.0e-12)
    {
LABEL_220:
      v2 = 1;
      goto LABEL_221;
    }

    v80 = a1[1];
    v81 = 1.0 / v79;
    v82 = v81;
    *&v83 = v80 * v82;
    *&__str = v83 | 0x3F80000000000000;
    v84 = (1.0 - v80 - v79) * v82;
    *(&__str + 2) = v84;
    v85 = sub_240B26E70(&__str, v117);
  }

  else
  {
    v85 = sub_240B26E70(&unk_240C87698, v117);
  }

  v2 = v85;
  if (!v85)
  {
    sub_240B26CA8(v117, &v113, &v112);
    sub_240B26D28("wtpt", v113, v112, v119, &__p);
    if (*a1 == 1)
    {
LABEL_196:
      if (sub_240B26A50(a1))
      {
        v86 = *(a1 + 5);
        v128 = *(a1 + 4);
        v129 = v86;
        v130 = *(a1 + 12);
        v87 = *(a1 + 1);
        __str = *a1;
        v125 = v87;
        v88 = *(a1 + 3);
        v126 = *(a1 + 2);
        v127 = v88;
        v2 = sub_240B27D14(&__str, v117);
        if (!v2)
        {
          sub_240B26CA8(v117, &v113, &v112);
          sub_240B26D28("A2B0", v113, v112, v119, &__p);
          sub_240B27ABC(v117);
        }
      }

      else
      {
        if (v4 <= 15)
        {
          if (v4 != 1)
          {
            if (v4 == 8)
            {
              LODWORD(v132) = 1065353216;
              *&v125 = 0;
              __str = 0uLL;
              sub_240B2860C(&__str, &v132, &v132 + 1, 1uLL);
            }

            LODWORD(v133) = 1025879782;
            v132 = xmmword_240C876A4;
            *&v125 = 0;
            __str = 0uLL;
            sub_240B2860C(&__str, &v132, &v133 + 1, 5uLL);
          }

          LODWORD(v133) = 1034281812;
          v132 = xmmword_240C876B8;
          *&v125 = 0;
          __str = 0uLL;
          sub_240B2860C(&__str, &v132, &v133 + 1, 5uLL);
        }

        if (v4 > 17)
        {
          if (v4 != 18)
          {
            v93 = 1.0 / a1[11];
            *&v132 = v93;
            *&v125 = 0;
            __str = 0uLL;
            sub_240B2860C(&__str, &v132, &v132 + 1, 1uLL);
          }

          sub_240B2877C(&__str, 2);
          sub_240B2890C(&__str, v117);
        }

        else
        {
          if (v4 != 16)
          {
            LODWORD(v133) = 0;
            v132 = *"ff&@";
            *&v125 = 0;
            __str = 0uLL;
            sub_240B2860C(&__str, &v132, &v133 + 1, 5uLL);
          }

          sub_240B2877C(&__str, 1);
          sub_240B2890C(&__str, v117);
        }

        if (__str)
        {
          *(&__str + 1) = __str;
          operator delete(__str);
        }

        sub_240B26CA8(v117, &v113, &v112);
        v95 = *a1;
        v97 = v112;
        v96 = v113;
        if (v95 == 1)
        {
          v98 = "kTRC";
        }

        else
        {
          sub_240B26D28("rTRC", v113, v112, v119, &__p);
          sub_240B26D28("gTRC", v96, v97, v119, &__p);
          v98 = "bTRC";
        }

        sub_240B26D28(v98, v96, v97, v119, &__p);
        v99 = __p;
        v100 = v115;
        v101 = v115 - __p;
        sub_240B26894((v115 - __p) >> 3, 0, v119);
        if (v100 != v99)
        {
          v103 = v121[0];
          v102 = v121[1];
          if ((v101 >> 3) <= 1)
          {
            v104 = 1;
          }

          else
          {
            v104 = v101 >> 3;
          }

          v105 = 8;
          do
          {
            v106 = *v99;
            v99 += 2;
            sub_240B26894((v106 + v102 + LODWORD(v119[1]) - (v103 + LODWORD(v119[0]))), v105, v119);
            v105 += 12;
            --v104;
          }

          while (v104);
        }

        v110 = *v117;
        v111 = *v119;
        v107 = vaddq_s64(vaddq_s64(*v121, *v119), *v117);
        sub_240B26894(vsubq_s64(vdupq_laneq_s64(v107, 1), v107).u32[0], 0, v121);
        sub_240B28A14(a2, v121[0], v121[1], v121[1] - v121[0]);
        sub_240B28B3C(a2, *(a2 + 8), v111, *(&v111 + 1), *(&v111 + 1) - v111);
        sub_240B28B3C(a2, *(a2 + 8), v110, *(&v110 + 1), *(&v110 + 1) - v110);
        v132 = 0uLL;
        *&v133 = 0;
        sub_240B28D90(&v132, *a2, *(a2 + 8), *(a2 + 8) - *a2);
        v108 = v132;
        if (*(&v132 + 1) - v132 >= 0x44uLL)
        {
          *(v132 + 44) = 0;
          v108[16] = 0;
        }

        sub_240B28E0C(&v132, &v135);
        *(*a2 + 84) = *&v135.__r_.__value_.__l.__data_;
        if (v108)
        {
          operator delete(v108);
        }

        v2 = 0;
      }

      goto LABEL_221;
    }

    v89 = a1[2];
    if (v89 != 0.0)
    {
      v90 = a1[1];
      v91 = v89;
      v2 = sub_240B26F3C(&__str, v90, v91);
      if (v2)
      {
        goto LABEL_221;
      }

      v132 = __str;
      v133 = v125;
      v134 = v126;
      v2 = sub_240B27174(&v132, v117);
      if (v2)
      {
        goto LABEL_221;
      }

      sub_240B26CA8(v117, &v113, &v112);
      sub_240B26D28("chad", v113, v112, v119, &__p);
      v92 = *a1;
      if (*a1)
      {
        goto LABEL_203;
      }

      sub_240B27240(a1, v117, &v113, &v112, v119, &__p);
      v109 = sub_240B27410(&__str, a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[1], a1[2]);
      if (v109)
      {
        v2 = v109;
        goto LABEL_221;
      }

      *&v132 = __PAIR64__(HIDWORD(__str), __str);
      DWORD2(v132) = DWORD2(v125);
      v135.__r_.__value_.__r.__words[0] = __PAIR64__(v125, DWORD1(__str));
      LODWORD(v135.__r_.__value_.__r.__words[1]) = HIDWORD(v125);
      v131[0] = DWORD2(__str);
      v131[1] = DWORD1(v125);
      v131[2] = v126;
      if (!sub_240B26E70(&v132, v117))
      {
        sub_240B26CA8(v117, &v113, &v112);
        sub_240B26D28("rXYZ", v113, v112, v119, &__p);
        if (!sub_240B26E70(&v135, v117))
        {
          sub_240B26CA8(v117, &v113, &v112);
          sub_240B26D28("gXYZ", v113, v112, v119, &__p);
          if (!sub_240B26E70(v131, v117))
          {
            sub_240B26CA8(v117, &v113, &v112);
            sub_240B26D28("bXYZ", v113, v112, v119, &__p);
            v92 = *a1;
LABEL_203:
            if (v92 == 2)
            {
              sub_240B274E4(v117);
            }

            goto LABEL_196;
          }
        }
      }
    }

    goto LABEL_220;
  }

LABEL_221:
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v117[0])
  {
    operator delete(v117[0]);
  }

LABEL_227:
  if (v119[0])
  {
    operator delete(v119[0]);
  }

  if (v121[0])
  {
    operator delete(v121[0]);
  }

  return v2;
}

void sub_240B2657C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B26750(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_240B228BC();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_240B26894(uint64_t result, uint64_t a2, char **a3)
{
  v5 = result;
  v6 = *a3;
  v7 = a3[1] - *a3;
  v8 = a2 + 4 >= v7;
  v9 = a2 + 4 - v7;
  if (v9 != 0 && v8)
  {
    sub_240B26918(a3, v9);
    v6 = *a3;
  }

  v6[a2] = HIBYTE(v5);
  (*a3)[a2 + 1] = BYTE2(v5);
  (*a3)[a2 + 2] = BYTE1(v5);
  (*a3)[a2 + 3] = v5;
}

void sub_240B26918(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_240B228BC();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

BOOL sub_240B26A50(_DWORD *a1)
{
  if (*a1 || (a1[20] & 0xFFFFFFFD) != 0x10)
  {
    return 0;
  }

  v1 = a1[6];
  v2 = a1[1];
  if (v1 == 11 && (v2 == 1 || v2 == 11))
  {
    return 1;
  }

  return v1 != 2 && v2 == 1;
}

void *sub_240B26AA4(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_240B29A3C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_240B26B5C(char *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v4 = *a2;
  }

  *&v4[v5] = 1668639853;
  sub_240B26894(0, *(a2 + 8) - *a2, a2);
  sub_240B26894(1, *(a2 + 8) - *a2, a2);
  sub_240B26894(12, *(a2 + 8) - *a2, a2);
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v6 = *a2;
  }

  *&v6[v7] = 1398107749;
  v8 = a1[23];
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 2);
  }

  sub_240B26894((2 * v8), *(a2 + 8) - *a2, a2);
  sub_240B26894(28, *(a2 + 8) - *a2, a2);
  v9 = *(a1 + 1);
  if (a1[23] >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    a1 = *a1;
    v10 = v9;
  }

  for (; v10; --v10)
  {
    v11 = *a1++;
    v13 = 0;
    sub_240B290C0(a2, &v13);
    v12 = v11;
    sub_240B290C0(a2, &v12);
  }
}

void sub_240B26CA8(void *result, void *a2, void *a3)
{
  for (i = result[1] - *result; (i & 3) != 0; i = result[1] - *result)
  {
    v8 = 0;
    sub_240B290C0(result, &v8);
  }

  v7 = *a2 + *a3;
  *a2 = v7;
  *a3 = i - v7;
}

void sub_240B26D28(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a4;
  v11 = *(a4 + 8) - *a4;
  if (v11 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a4, 4uLL);
    v10 = *a4;
  }

  *&v10[v11] = *a1;
  sub_240B26894(0, *(a4 + 8) - *a4, a4);
  v13 = *(a5 + 8);
  v12 = *(a5 + 16);
  if (v13 >= v12)
  {
    v15 = *a5;
    v16 = v13 - *a5;
    v17 = v16 >> 3;
    v18 = (v16 >> 3) + 1;
    if (v18 >> 61)
    {
      sub_240B228BC();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      sub_240B299F4(v20);
    }

    *(8 * v17) = a2;
    v14 = 8 * v17 + 8;
    memcpy(0, v15, v16);
    v21 = *a5;
    *a5 = 0;
    *(a5 + 8) = v14;
    *(a5 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v13 = a2;
    v14 = (v13 + 1);
  }

  *(a5 + 8) = v14;
  v22 = *(a4 + 8) - *a4;

  sub_240B26894(a3, v22, a4);
}

uint64_t sub_240B26E70(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v4 = *a2;
  }

  *&v4[v5] = 542792024;
  sub_240B26894(0, *(a2 + 8) - *a2, a2);
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + v6);
    if (fabsf(v7) > 32768.0)
    {
      break;
    }

    sub_240B26894(((v7 * 65536.0) + 0.5), *(a2 + 8) - *a2, a2);
    v6 += 4;
    if (v6 == 12)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_240B26F3C(uint64_t a1, float a2, float a3)
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
      v8 = &unk_240C813B0;
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
      v13 = &unk_240C813B0;
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
          sub_240B2977C(&v20, &unk_240C813B0, v19);
          sub_240B2977C(&unk_240C813D4, v19, a1);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_240B27174(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v4 = *a2;
  }

  *&v4[v5] = 842229363;
  sub_240B26894(0, *(a2 + 8) - *a2, a2);
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + v6);
    if (fabsf(v7) > 32768.0)
    {
      break;
    }

    sub_240B26894(((v7 * 65536.0) + 0.5), *(a2 + 8) - *a2, a2);
    v6 += 4;
    if (v6 == 36)
    {
      return 0;
    }
  }

  return 1;
}

void sub_240B27240(_DWORD *result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!*result)
  {
    v6 = result[6];
    if (v6 != 2)
    {
      if (v6 == 11)
      {
        v12 = result[1];
        if (v12 == 1)
        {
          LOBYTE(v6) = 12;
        }

        else
        {
          if (v12 != 11)
          {
            return;
          }

          LOBYTE(v6) = 11;
        }
      }

      else if (result[1] != 1)
      {
        return;
      }

      v13 = result[20];
      if (v13 != 2 && v13 != 0xFFFF)
      {
        v14 = *a2;
        v15 = *(a2 + 8) - *a2;
        if (v15 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          sub_240B26918(a2, 4uLL);
          v14 = *a2;
        }

        *&v14[v15] = 1885563235;
        sub_240B26894(0, *(a2 + 8) - *a2, a2);
        v16 = *a2;
        v17 = *(a2 + 8) - *a2;
        if (v17 != -1)
        {
          sub_240B26918(a2, 1uLL);
          v16 = *a2;
        }

        v16[v17] = v6;
        v18 = *a2;
        v19 = *(a2 + 8) - *a2;
        if (v19 != -1)
        {
          sub_240B26918(a2, 1uLL);
          v18 = *a2;
        }

        v18[v19] = v13;
        v20 = *a2;
        v21 = *(a2 + 8) - *a2;
        if (v21 != -1)
        {
          sub_240B26918(a2, 1uLL);
          v20 = *a2;
        }

        v20[v21] = 0;
        v22 = *a2;
        v23 = *(a2 + 8) - *a2;
        if (v23 != -1)
        {
          sub_240B26918(a2, 1uLL);
          v22 = *a2;
        }

        v22[v23] = 1;
        sub_240B26CA8(a2, a3, a4);
        v24 = *a3;
        v25 = *a4;

        sub_240B26D28("cicp", v24, v25, a5, a6);
      }
    }
  }
}

uint64_t sub_240B27410(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  if (sub_240B295BC(v23, v10, v11, v12, v13, v14, v15, v16, v17) || sub_240B26F3C(v22, v16, v17))
  {
    return 1;
  }

  sub_240B2977C(v22, v23, v20);
  result = 0;
  v19 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v19;
  *(a1 + 32) = v21;
  return result;
}

void sub_240B274E4(uint64_t a1)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (v3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a1, 4uLL);
    v2 = *a1;
  }

  *&v2[v3] = 541213037;
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  v4 = *a1;
  v5 = *(a1 + 8) - *a1;
  if (v5 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v4 = *a1;
  }

  v4[v5] = 3;
  v6 = *a1;
  v7 = *(a1 + 8) - *a1;
  if (v7 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v6 = *a1;
  }

  v6[v7] = 3;
  sub_240B29200(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(32, *(a1 + 8) - *a1, a1);
  sub_240B26894(244, *(a1 + 8) - *a1, a1);
  sub_240B26894(148, *(a1 + 8) - *a1, a1);
  sub_240B26894(80, *(a1 + 8) - *a1, a1);
  sub_240B26894(32, *(a1 + 8) - *a1, a1);
  v8 = 1065353216;
  memset(__p, 0, 24);
  sub_240B2860C(__p, &v8, &v9, 1uLL);
}

void sub_240B27A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B27ABC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (v3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a1, 4uLL);
    v2 = *a1;
  }

  *&v2[v3] = 541147757;
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  v4 = *a1;
  v5 = *(a1 + 8) - *a1;
  if (v5 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v4 = *a1;
  }

  v4[v5] = 3;
  v6 = *a1;
  v7 = *(a1 + 8) - *a1;
  if (v7 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v6 = *a1;
  }

  v6[v7] = 3;
  sub_240B29200(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(32, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  v8 = 1065353216;
  memset(__p, 0, sizeof(__p));
  sub_240B2860C(__p, &v8, __p, 1uLL);
}

void sub_240B27CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B27D14(uint64_t a1, uint64_t a2)
{
  v145 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v4 = *a2;
  }

  *&v4[v5] = 829711981;
  sub_240B26894(0, *(a2 + 8) - *a2, a2);
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v6 = *a2;
  }

  v6[v7] = 3;
  v8 = *a2;
  v9 = *(a2 + 8) - *a2;
  if (v9 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v8 = *a2;
  }

  v8[v9] = 3;
  v10 = *a2;
  v11 = *(a2 + 8) - *a2;
  if (v11 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v10 = *a2;
  }

  v10[v11] = 9;
  v12 = *a2;
  v13 = *(a2 + 8) - *a2;
  if (v13 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v12 = *a2;
  }

  v14 = 0;
  v12[v13] = 0;
  do
  {
    v15 = 3;
    do
    {
      if (v14 + v15 == 3)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      sub_240B26894(((v16 * 65536.0) + 0.5), *(a2 + 8) - *a2, a2);
      --v15;
    }

    while (v15);
    ++v14;
  }

  while (v14 != 3);
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 256; ++j)
    {
      v19 = *a2;
      v20 = *(a2 + 8) - *a2;
      if (v20 != -1)
      {
        sub_240B26918(a2, 1uLL);
        v19 = *a2;
      }

      v19[v20] = j;
    }
  }

  v21 = 0;
  v22 = &v139 + 1;
  v23 = -0.8359375;
LABEL_25:
  v121 = v21;
  v24 = vcvts_n_f32_u64(v21, 3uLL);
  v25 = pow(v24, 0.0126833135);
  v26 = v25 + v23;
  if (v25 + v23 < 0.0)
  {
    v26 = 0.0;
  }

  v27 = pow(v26 / (v25 * -18.6875 + 18.8515625), 6.27739464);
  v28 = 0;
  *&v27 = v27;
  v29 = fabsf(*&v27);
  v124 = v24;
  if (v24 == 0.0)
  {
    v29 = 0.0;
  }

  *&v123 = v29;
LABEL_30:
  v122 = v28;
  v30 = v23;
  v31 = vcvts_n_f32_u64(v28, 3uLL);
  v32 = pow(v31, 0.0126833135);
  v33 = v30;
  v34 = v32 + v30;
  if (v32 + v30 < 0.0)
  {
    v34 = 0.0;
  }

  v35 = pow(v34 / (v32 * -18.6875 + 18.8515625), 6.27739464);
  v36 = 0;
  *&v35 = v35;
  v37 = fabsf(*&v35);
  v125 = v31;
  if (v31 == 0.0)
  {
    v37 = 0.0;
  }

  *(&v123 + 1) = v37;
  while (1)
  {
    v126 = v36;
    v38 = vcvts_n_f32_u64(v36, 3uLL);
    *v129 = v124;
    *&v129[1] = v125;
    *&v129[2] = v38;
    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    v41 = *(a1 + 48);
    v42 = *(a1 + 56);
    v43 = *(a1 + 64);
    v44 = *(a1 + 72);
    v45 = *(a1 + 8);
    v46 = *(a1 + 16);
    result = sub_240B295BC(v141, v39, v40, v41, v42, v43, v44, v45, v46);
    if (result)
    {
      return result;
    }

    v51 = v142;
    v50 = v143;
    v52 = v144;
    if (*(a1 + 80) == 16)
    {
      v139 = v123;
      v53 = 0.0;
      if (v38 != 0.0)
      {
        v54 = pow(v38, 0.0126833135);
        v55 = v54 + v33;
        if (v54 + v33 < 0.0)
        {
          v55 = 0.0;
        }

        v56 = pow(v55 / (v54 * -18.6875 + 18.8515625), 6.27739464);
        v53 = fabsf(v56);
      }

      v140 = v53;
      v133 = xmmword_240C114E0;
      v134 = __PAIR64__(LODWORD(v50), LODWORD(v51));
      v135 = v52;
      v136 = xmmword_240C114F0;
      v57.i64[1] = 0x3FD6B4FF3ECEC3F3;
      v137 = xmmword_240C11500;
      v57.i64[0] = 0x3B83126F42200000;
      v138 = 0x3B83126F42200000;
      sub_240B292F0(&v133, &v139, v22, &v140, v57);
      v59 = *(&v139 + 1);
      v58 = *&v139;
      v60 = v140;
    }

    else
    {
      for (k = 0; k != 3; ++k)
      {
        v49.i32[0] = v129[k];
        v48.i32[0] = 0;
        if (*v49.i32 != 0.0)
        {
          v62 = fabs(*v49.i32);
          if (v62 <= 0.5)
          {
            *v48.i64 = *v49.i32 * *v49.i32;
            v63 = 0.333333333;
          }

          else
          {
            v127 = v49;
            *v48.i64 = exp((v62 + -0.559910729) * 5.59181631);
            v49 = v127;
            *v48.i64 = *v48.i64 + 0.28466892;
            v63 = 0.0833333333;
          }

          *v48.i64 = *v48.i64 * v63;
          *v48.i32 = *v48.i64;
          v64.i64[0] = 0x8000000080000000;
          v64.i64[1] = 0x8000000080000000;
          v48 = vbslq_s8(v64, v48, v49);
        }

        *(&v139 + k * 4) = v48.i32[0];
      }

      v65 = v139;
      v66 = v140;
      v67 = powf(((v50 * *(&v139 + 1)) + (v51 * *&v139)) + (v52 * v140), -0.18186);
      if (v67 <= 1000000000.0)
      {
        v68 = v67;
      }

      else
      {
        v68 = 1000000000.0;
      }

      v58 = *&v65 * v68;
      v59 = *(&v65 + 1) * v68;
      *&v139 = *&v65 * v68;
      *(&v139 + 1) = *(&v65 + 1) * v68;
      v60 = v66 * v68;
      v140 = v60;
      v33 = -0.8359375;
    }

    v69 = 0;
    v70 = ((v50 * v59) + (v51 * v58)) + (v52 * v60);
    *&v133 = &v139;
    *(&v133 + 1) = v22;
    v134 = &v140;
    v71 = 0.0;
    v72 = 0.0;
    do
    {
      v73 = *(&v133 + v69);
      v74 = *v73 - v70;
      v75 = 1.0 / v74;
      if (v74 == 0.0)
      {
        v75 = 1.0;
      }

      v76 = *v73 * v75;
      if (v72 < v76 && v74 < 0.0)
      {
        v72 = *v73 * v75;
      }

      v78 = v76 - v75;
      if (v74 <= 0.0)
      {
        v78 = v72;
      }

      if (v71 < v78)
      {
        v71 = v78;
      }

      v69 += 8;
    }

    while (v69 != 24);
    v79 = 0;
    v80 = v71 + ((v72 - v71) * 0.3);
    if (v80 <= 1.0)
    {
      v81 = v80;
    }

    else
    {
      v81 = 1.0;
    }

    if (v80 >= 0.0)
    {
      v82 = v81;
    }

    else
    {
      v82 = 0.0;
    }

    *&v133 = &v139;
    *(&v133 + 1) = v22;
    v134 = &v140;
    do
    {
      **(&v133 + v79) = **(&v133 + v79) + (v82 * (v70 - **(&v133 + v79)));
      v79 += 8;
    }

    while (v79 != 24);
    LODWORD(v133) = 1065353216;
    *(&v133 + 4) = v139;
    *(&v133 + 3) = v140;
    v83 = &v133;
    v84 = 1.0;
    for (m = 4; m != 16; m += 4)
    {
      if (v84 < *(&v133 + m))
      {
        v84 = *(&v133 + m);
        v83 = (&v133 + m);
      }
    }

    v86 = 0;
    v87 = *v83;
    *&v133 = &v139;
    *(&v133 + 1) = v22;
    v134 = &v140;
    v88 = 1.0 / v87;
    do
    {
      **(&v133 + v86) = v88 * **(&v133 + v86);
      v86 += 8;
    }

    while (v86 != 24);
    v89 = *(a1 + 8);
    v90 = *(a1 + 16);
    if (sub_240B26F3C(&v133, v89, v90))
    {
      return 1;
    }

    v91 = v132;
    sub_240B2977C(&v133, v141, v132);
    v92 = 0;
    v131 = 0.0;
    v130 = 0;
    do
    {
      v93 = 0;
      v94 = *(&v130 + v92);
      do
      {
        v94 = v94 + (*(&v139 + v93) * *&v91[v93]);
        v93 += 4;
      }

      while (v93 != 12);
      *(&v130 + v92++) = v94;
      v91 += 12;
    }

    while (v92 != 3);
    v95 = *&v130 / 0.96421;
    if ((*&v130 / 0.96421) <= 0.0088565)
    {
      v96 = (v95 * 7.787) + 0.13793;
    }

    else
    {
      v96 = cbrtf(v95);
    }

    if (*(&v130 + 1) <= 0.0088565)
    {
      v97 = (*(&v130 + 1) * 7.787) + 0.13793;
    }

    else
    {
      v97 = cbrtf(*(&v130 + 1));
    }

    v98 = v22;
    v99 = a1;
    v100 = v131 / 0.82519;
    if ((v131 / 0.82519) <= 0.0088565)
    {
      v101 = (v100 * 7.787) + 0.13793;
    }

    else
    {
      v101 = cbrtf(v100);
    }

    v102 = 0;
    v103 = (v97 * 1.16) + -0.16;
    if (v103 <= 1.0)
    {
      v104 = (v97 * 1.16) + -0.16;
    }

    else
    {
      v104 = 1.0;
    }

    if (v103 >= 0.0)
    {
      v105 = v104;
    }

    else
    {
      v105 = 0.0;
    }

    v128[0] = ((v105 * 255.0) + 0.5);
    v106 = (v96 - v97) * 500.0;
    if (v106 <= 127.0)
    {
      v107 = (v96 - v97) * 500.0;
    }

    else
    {
      v107 = 127.0;
    }

    v108 = v107 + 128.5;
    if (v106 >= -128.0)
    {
      v109 = v108;
    }

    else
    {
      v109 = 0.5;
    }

    v128[1] = v109;
    v110 = (v97 - v101) * 200.0;
    if (v110 <= 127.0)
    {
      v111 = v110;
    }

    else
    {
      v111 = 127.0;
    }

    v112 = v111 + 128.5;
    if (v110 >= -128.0)
    {
      v113 = v112;
    }

    else
    {
      v113 = 0.5;
    }

    v128[2] = v113;
    do
    {
      v114 = v128[v102];
      v115 = *a2;
      v116 = *(a2 + 8) - *a2;
      if (v116 != -1)
      {
        sub_240B26918(a2, 1uLL);
        v115 = *a2;
      }

      v115[v116] = v114;
      ++v102;
    }

    while (v102 != 3);
    v36 = v126 + 1;
    a1 = v99;
    v22 = v98;
    if (v126 == 8)
    {
      v28 = v122 + 1;
      v23 = v33;
      if (v122 != 8)
      {
        goto LABEL_30;
      }

      v21 = v121 + 1;
      if (v121 == 8)
      {
        for (n = 0; n != 3; ++n)
        {
          for (ii = 0; ii != 256; ++ii)
          {
            v119 = *a2;
            v120 = *(a2 + 8) - *a2;
            if (v120 != -1)
            {
              sub_240B26918(a2, 1uLL);
              v119 = *a2;
            }

            v119[v120] = ii;
          }

          result = 0;
        }

        return result;
      }

      goto LABEL_25;
    }
  }
}

void sub_240B28660(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B2867C(float **a1, __int16 a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8) - *a3;
  if (v7 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a3, 4uLL);
    v6 = *a3;
  }

  *&v6[v7] = 1634886000;
  sub_240B26894(0, *(a3 + 8) - *a3, a3);
  sub_240B29200(a2, *(a3 + 8) - *a3, a3);
  sub_240B29200(0, *(a3 + 8) - *a3, a3);
  v9 = *a1;
  v8 = a1[1];
  if (v9 == v8)
  {
    return 0;
  }

  while (fabsf(*v9) <= 32768.0)
  {
    sub_240B26894(((*v9++ * 65536.0) + 0.5), *(a3 + 8) - *a3, a3);
    if (v9 == v8)
    {
      return 0;
    }
  }

  return 1;
}

void sub_240B2877C(void *a1, int a2)
{
  v3 = 0;
  v4 = *sub_240B29264(a1, 64);
  do
  {
    v5 = v3 / 63.0;
    v6 = v5;
    v7 = 0.0;
    if (a2 == 2)
    {
      if (v5 == 0.0)
      {
        goto LABEL_13;
      }

      if (v5 <= 0.5)
      {
        v10 = v6 * v6;
        v9 = 0.333333333;
      }

      else
      {
        v8 = exp((v6 + -0.559910729) * 5.59181631);
        v9 = 0.0833333333;
        v10 = v8 + 0.28466892;
      }

      v13 = v10 * v9;
    }

    else
    {
      if (v5 == 0.0)
      {
        goto LABEL_13;
      }

      v11 = pow(v6, 0.0126833135);
      v12 = v11 + -0.8359375;
      if (v11 + -0.8359375 < 0.0)
      {
        v12 = 0.0;
      }

      v13 = pow(v12 / (v11 * -18.6875 + 18.8515625), 6.27739464);
    }

    v14 = v13;
    v7 = fabsf(v14);
LABEL_13:
    if (v7 <= 1.0)
    {
      v15 = v7;
    }

    else
    {
      v15 = 1.0;
    }

    v16 = v15 * 65535.0;
    *(v4 + 2 * v3++) = llroundf(v16);
  }

  while (v3 != 64);
}

void sub_240B2890C(uint64_t *a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  v7 = v6 + 12;
  v8 = a1[1] - *a1 + v6 + 12;
  v12 = 0;
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v5 = &v4[v8];
      a2[1] = &v4[v8];
    }
  }

  else
  {
    sub_240B26750(a2, v8 - v6, &v12);
    v4 = *a2;
    v5 = a2[1];
  }

  v9 = v5 - v4;
  if (v6 + 4 > v9)
  {
    sub_240B26918(a2, v6 + 4 - v9);
    v4 = *a2;
  }

  *&v4[v6] = 1987212643;
  sub_240B26894(0, v6 + 4, a2);
  sub_240B26894((a1[1] - *a1) >> 1, v6 + 8, a2);
  v10 = *a1;
  if (a1[1] != *a1)
  {
    v11 = 0;
    do
    {
      sub_240B29200(*(v10 + 2 * v11++), v7, a2);
      v10 = *a1;
      v7 += 2;
    }

    while (v11 < (a1[1] - *a1) >> 1);
  }
}

void **sub_240B28A14(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B291B0(v6, v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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

void sub_240B28B3C(uint64_t a1, char *__dst, char *__src, char *a4, int64_t a5)
{
  if (a5 >= 1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if ((v9 - v10) >= a5)
    {
      v16 = v10 - __dst;
      if ((v10 - __dst) >= a5)
      {
        v20 = &__dst[a5];
        v21 = (v10 - a5);
        v22 = *(a1 + 8);
        if (v10 >= a5)
        {
          do
          {
            v23 = *v21++;
            *v22++ = v23;
          }

          while (v21 != v10);
        }

        *(a1 + 8) = v22;
        if (v10 != v20)
        {
          memmove(&__dst[a5], __dst, v10 - v20);
        }

        v24 = __dst;
        v25 = __src;
        v26 = a5;
      }

      else
      {
        v17 = &__src[v16];
        v18 = *(a1 + 8);
        while (v17 != a4)
        {
          v19 = *v17++;
          *v18++ = v19;
        }

        *(a1 + 8) = v18;
        if (v16 < 1)
        {
          return;
        }

        v27 = &__dst[a5];
        v28 = &v18[-a5];
        v29 = v18;
        if (&v18[-a5] < v10)
        {
          do
          {
            v30 = *v28++;
            *v29++ = v30;
          }

          while (v28 != v10);
        }

        *(a1 + 8) = v29;
        if (v18 != v27)
        {
          memmove(&__dst[a5], __dst, v18 - v27);
        }

        v24 = __dst;
        v25 = __src;
        v26 = v10 - __dst;
      }

      memmove(v24, v25, v26);
    }

    else
    {
      v11 = *a1;
      v12 = v10 - *a1 + a5;
      if (v12 < 0)
      {
        sub_240B228BC();
      }

      v13 = (__dst - v11);
      v14 = v9 - v11;
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      if (v15)
      {
        operator new();
      }

      v31 = (__dst - v11);
      memcpy(v13, __src, a5);
      v32 = &v13[a5];
      v33 = v10 - __dst;
      memcpy(v32, __dst, v10 - __dst);
      *(a1 + 8) = __dst;
      v34 = &v13[v11 - __dst];
      memcpy(v34, v11, v31);
      *a1 = v34;
      *(a1 + 8) = &v32[v33];
      *(a1 + 16) = 0;
      if (v11)
      {

        operator delete(v11);
      }
    }
  }
}

uint64_t *sub_240B28D90(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_240B291B0(result, a4);
  }

  return result;
}

void sub_240B28DF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B28E0C(uint64_t a1, int *a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_240B28D90(&v29, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  v28 = 0x80;
  sub_240B290C0(&v29, &v28);
  v4 = (56 - (v30 - v29)) & 0x3F;
  v5 = v4 + v30 - v29;
  v28 = 0;
  if (v30 - v29 >= v5)
  {
    if (v30 - v29 > v5)
    {
      v30 += v4;
    }
  }

  else
  {
    sub_240B26750(&v29, v4, &v28);
  }

  v6 = -8;
  do
  {
    v6 += 8;
    v28 = (8 * (*(a1 + 8) - *a1)) >> v6;
    sub_240B290C0(&v29, &v28);
  }

  while (v6 < 0x38);
  v7 = -271733879;
  v8 = -1732584194;
  v9 = 1732584193;
  v10 = 271733878;
  v11 = v29;
  if (v30 != v29)
  {
    v12 = 0;
    do
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v16 = 5;
      v17 = v10;
      v18 = v8;
      v19 = v7;
      v20 = v9;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v18;
        v20 = v17;
        v24 = (v19 | ~v17) ^ v18;
        v25 = v13 & 0xF;
        v26 = v18 ^ v22 ^ v20;
        if (v14 <= 0x2F)
        {
          v24 = v26;
          v25 = v16 & 0xF;
        }

        if (v14 <= 0x1F)
        {
          v24 = v20 & v22 | v23 & ~v20;
          v25 = v15 & 0xF;
        }

        if (v14 <= 0xF)
        {
          v25 = v14;
        }

        v27 = *&v29[v12 | (4 * v25)];
        if (v14 <= 0xF)
        {
          v24 = v20 & ~v22 | v23 & v22;
        }

        v19 = __ROR4__(v24 + v21 + dword_240C87808[v14] + v27, -byte_240C87908[4 * v14]) + v22;
        ++v14;
        v13 += 7;
        v16 += 3;
        v15 += 5;
        v17 = v23;
        v18 = v22;
      }

      while (v14 != 64);
      v9 += v20;
      v7 += v19;
      v8 += v22;
      v10 += v23;
      v12 += 64;
    }

    while (v12 < v30 - v29);
  }

  *a2 = v9;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_240B290A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B290C0(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_240B228BC();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_240B291B0(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_240B228BC();
}

void sub_240B29200(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8) - *a3;
  v8 = a2 + 2 >= v7;
  v9 = a2 + 2 - v7;
  if (v9 != 0 && v8)
  {
    sub_240B26918(a3, v9);
    v6 = *a3;
  }

  v6[a2] = HIBYTE(a1);
  *(*a3 + a2 + 1) = a1;
}

void *sub_240B29264(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_240B29578(a2);
    }

    sub_240B228BC();
  }

  return a1;
}

void sub_240B292D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B292F0(float *a1, float *a2, float *a3, float *a4, int8x16_t a5)
{
  v35[3] = *MEMORY[0x277D85DE8];
  *v5.i32 = a1[1] * (((a1[5] * *a3) + (a1[4] * *a2)) + (a1[6] * *a4));
  v10 = 0.0;
  if (*v5.i32 != 0.0)
  {
    v33 = v5;
    v11 = pow(fabsf(*v5.i32) * 0.0000999999975, 0.159301758);
    *a5.i64 = pow((v11 * 18.8515625 + 0.8359375) / (v11 * 18.6875 + 1.0), 78.84375);
    v5.i32[0] = v33.i32[0];
    *a5.i32 = *a5.i64;
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    LODWORD(v10) = vbslq_s8(v12, a5, v33).u32[0];
  }

  v13 = a1[7];
  v14 = fminf((v10 - v13) * a1[10], 1.0);
  v15 = a1[13];
  if (v14 >= v15)
  {
    v16 = (v14 - v15) * a1[14];
    v14 = (((1.0 - v15) * (v16 + ((v16 * (v16 * v16)) + ((v16 * v16) * -2.0)))) + ((1.0 - (((v16 * v16) * 3.0) - ((v16 * (v16 * v16)) * 2.0))) * v15)) + ((((v16 * v16) * 3.0) + ((v16 * (v16 * v16)) * -2.0)) * a1[12]);
  }

  *a5.i32 = v13 + ((v14 + (a1[11] * (((1.0 - v14) * (1.0 - v14)) * ((1.0 - v14) * (1.0 - v14))))) * a1[9]);
  v17 = 0.0;
  if (*a5.i32 != 0.0)
  {
    v32 = a5;
    v34 = v5.i32[0];
    v18 = pow(fabsf(*a5.i32), 0.0126833135);
    v19 = v18 + -0.8359375;
    if (v18 + -0.8359375 < 0.0)
    {
      v19 = 0.0;
    }

    v20 = pow(v19 / (v18 * -18.6875 + 18.8515625), 6.27739464);
    v5.i32[0] = v34;
    *v21.i64 = v20 * 10000.0;
    *v21.i32 = *v21.i64;
    v22.i64[0] = 0x8000000080000000;
    v22.i64[1] = 0x8000000080000000;
    LODWORD(v17) = vbslq_s8(v22, v21, v32).u32[0];
  }

  v23 = 0;
  v24 = a1[3];
  if (v17 <= v24)
  {
    v24 = v17;
  }

  if (v17 >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  if (*v5.i32 >= 0.000001)
  {
    v26 = *v5.i32;
  }

  else
  {
    v26 = 0.000001;
  }

  v27 = v25 / v26;
  v28 = a1[16] * v25;
  v29 = a1[15] * v27;
  v35[0] = a2;
  v35[1] = a3;
  v35[2] = a4;
  do
  {
    v30 = v35[v23];
    v31 = v28;
    if (*v5.i32 > 0.000001)
    {
      v31 = v29 * *v30;
    }

    *v30 = v31;
    ++v23;
  }

  while (v23 != 3);
}

void sub_240B29578(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B295BC(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v35 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a9 <= 1.0)
  {
    v12 = a8 < 0.0 || a8 > 1.0;
    if (!v12 && a9 > 0.0)
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
      if (sub_240B29844(v30))
      {
        return 1;
      }

      else
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
  }

  return result;
}

uint64_t sub_240B2977C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v12 = *MEMORY[0x277D85DE8];
  do
  {
    v4 = 0;
    v5 = (a2 + 4 * v3);
    v6 = v5[3];
    v11[0] = *v5;
    v11[1] = v6;
    v11[2] = v5[6];
    v7 = result;
    do
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v9 = v9 + (*(v7 + v8 * 4) * *&v11[v8]);
        ++v8;
      }

      while (v8 != 3);
      v10 = v9;
      *(a3 + 4 * v3 + 12 * v4++) = v10;
      v7 += 12;
    }

    while (v4 != 3);
    ++v3;
  }

  while (v3 != 3);
  return result;
}

uint64_t sub_240B29844(float *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[8];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[3];
  v7 = a1[2];
  v8 = *a1;
  v9 = a1[1];
  v18[0] = v1 * v2 - v3 * v5;
  v18[1] = v7 * v5 - v9 * v2;
  v10 = v4;
  v11 = v6;
  v18[2] = v9 * v3 - v7 * v1;
  v19 = v3 * v10 - v11 * v2;
  v12 = v8;
  v20 = v12 * v2 - v7 * v10;
  v21 = v7 * v11 - v12 * v3;
  v22 = v11 * v5 - v1 * v10;
  v23 = v9 * v10 - v12 * v5;
  v24 = v12 * v1 - v9 * v11;
  v13 = v19 * v9 + v12 * v18[0] + v7 * v22;
  if (fabs(v13) < 1.0e-10)
  {
    return 1;
  }

  v15 = 0;
  v16 = 1.0 / v13;
  do
  {
    v17 = v16 * v18[v15];
    a1[v15++] = v17;
  }

  while (v15 != 9);
  return 0;
}

uint64_t *sub_240B29978(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B2287C(result, a4);
  }

  return result;
}

void sub_240B299D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B299F4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B29A54(void *a1)
{
  *a1 = &unk_2852A1CB8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x245CCE590);
}

void *sub_240B29AC4(void *a1)
{
  *a1 = &unk_2852A1CB8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_240B29B14(uint64_t a1, int a2, int a3)
{
  v6 = sub_240B29BD0(a1);
  sub_240B29BD0(v6 + 200);
  *(a1 + 56) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  sub_240B25034(a1);
  *(a1 + 256) = 1;
  *(a1 + 216) = 1;
  *(a1 + 220) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = a3;
  return sub_240B25034(a1 + 200);
}

uint64_t sub_240B29BD0(uint64_t a1)
{
  *a1 = &unk_2852A1CB8;
  *(a1 + 16) = 0x100000001;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 53) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 68) = 0xD00000000;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 112) = &unk_2852A1260;
  *(a1 + 120) = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B246DC(a1 + 112, &v3);
  *(a1 + 128) = &unk_2852A1A10;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0xD00000000;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B24808(a1 + 128, &v3);
  *(a1 + 152) = &unk_2852A1260;
  *(a1 + 160) = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B246DC(a1 + 152, &v3);
  *(a1 + 168) = &unk_2852A1260;
  *(a1 + 176) = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B246DC(a1 + 168, &v3);
  *(a1 + 184) = &unk_2852A1260;
  *(a1 + 192) = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B246DC(a1 + 184, &v3);
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  (*(*a1 + 16))(a1, &v3);
  return a1;
}

void sub_240B29E74(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B29EA4(uint64_t a1)
{
  for (i = 0; i != -400; i -= 200)
  {
    *(a1 + i + 200) = &unk_2852A1CB8;
    v3 = *(a1 + i + 232);
    if (v3)
    {
      *(a1 + i + 240) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

char *sub_240B29F18(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_281503598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_281503598))
  {
    sub_240B29B14(&unk_27E5165E8, 1, 13);
    __cxa_atexit(sub_240B29EA4, &unk_27E5165E8, &dword_240ABC000);
    __cxa_guard_release(&qword_281503598);
  }

  return &unk_27E5165E8 + 200 * a1;
}

char *sub_240B29FC8(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_27E516910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E516910))
  {
    sub_240B29B14(&unk_27E516780, 1, 8);
    __cxa_atexit(sub_240B29EA4, &unk_27E516780, &dword_240ABC000);
    __cxa_guard_release(&qword_27E516910);
  }

  return &unk_27E516780 + 200 * a1;
}

void sub_240B2A078(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t, double *, int *))
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 != v4)
  {
    v8 = 0;
    if (a3(a2, v3, v4 - v3, v9, &v8) && v8 == 0)
    {
      memset(__p, 0, sizeof(__p));
      if (!sub_240B25260(v9, __p))
      {
        *(a1 + 9) = 0;
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_240B2A104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B2A11C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  sub_240B23590(&v35, a2, a3);
  if (v39)
  {
    *(a1 + 120) = v39;
  }

  else
  {
    sub_240B23590(&v30, a2, a3);
    if (v34)
    {
      *(a1 + 120) = v34;
    }

    else
    {
      sub_240B23590(&v25, a2, a3);
      if (v29)
      {
        *(a1 + 120) = v29;
      }

      else
      {
        v13 = v35;
        v6 = v37;
        v37 = 0;
        v7 = v32;
        v32 = 0;
        v8 = v27;
        v27 = 0;
        v14 = v36;
        v15 = v6;
        v16 = v38;
        v18 = v31;
        v19 = v7;
        v17 = v30;
        v20 = v33;
        v21 = v25;
        v22 = v26;
        v23 = v8;
        v24 = v28;
        *(a1 + 120) = 0;
        sub_240B2A358(a1, &v13);
        for (i = 104; i != -16; i -= 40)
        {
          sub_240B22320((&v13 + i));
        }

        if (!v29)
        {
          v10 = v27;
          v27 = 0;
          if (v10)
          {
            atomic_fetch_add(&qword_27E519020, -*(v10 - 24));
            free(*(v10 - 32));
          }
        }
      }

      if (!v34)
      {
        v11 = v32;
        v32 = 0;
        if (v11)
        {
          atomic_fetch_add(&qword_27E519020, -*(v11 - 24));
          free(*(v11 - 32));
        }
      }
    }

    if (!v39)
    {
      v12 = v37;
      v37 = 0;
      if (v12)
      {
        atomic_fetch_add(&qword_27E519020, -*(v12 - 24));
        free(*(v12 - 32));
      }
    }
  }
}

void sub_240B2A2EC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 104);
  *(v1 - 104) = 0;
  if (!v3 || (atomic_fetch_add(&qword_27E519020, -*(v3 - 24)), free(*(v3 - 32)), !*(v1 - 40)))
  {
    v4 = *(v1 - 56);
    *(v1 - 56) = 0;
    if (v4)
    {
      atomic_fetch_add(&qword_27E519020, -*(v4 - 24));
      free(*(v4 - 32));
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B2A358(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  do
  {
    v5 = a1 + v4;
    v6 = *(a2 + v4);
    *(v5 + 16) = *(a2 + v4 + 16);
    *v5 = v6;
    v7 = *(a2 + v4 + 24);
    *(a2 + v4 + 24) = 0;
    v8 = *(a1 + v4 + 24);
    *(v5 + 24) = v7;
    if (v8)
    {
      atomic_fetch_add(&qword_27E519020, -*(v8 - 24));
      free(*(v8 - 32));
    }

    *(v5 + 32) = *(a2 + v4 + 32);
    v4 += 40;
  }

  while (v4 != 120);
  return a1;
}

uint64_t sub_240B2A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240B2AC3C, sub_240B2A49C, 1, a2);
  }

  v5 = 1;
  do
  {
    result = sub_240B2A49C(v6, v5++);
  }

  while (v3 != v5);
  return result;
}

uint64_t sub_240B2A49C(uint64_t a1, unsigned int a2)
{
  v7 = 0;
  v119[3] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  v9 = *(v8 + 8);
  v10 = **v8;
  v11 = v10[2];
  v12 = v10[3];
  v13 = v11 * (a2 - 1);
  v14 = v10[8];
  v15 = v10[13];
  v16 = v11 * a2;
  v119[0] = v12 + v16;
  v119[1] = v14 + v16;
  v17 = v15 + v16;
  v119[2] = v15 + v16;
  result = v11 * (a2 + 1);
  v19 = v9[3];
  v20 = v9[2] * a2;
  v21 = v19 + v20;
  v22 = v9[8];
  v23 = v22 + v20;
  v118[0] = v19 + v20;
  v118[1] = v22 + v20;
  v24 = v9[13];
  v25 = v24 + v20;
  v118[2] = v24 + v20;
  v26 = **(v8 + 16);
  v27 = v26 - 1;
  v117[0] = 0;
  v117[1] = v26 - 1;
  do
  {
    v28 = 0;
    v29 = v117[v7];
    do
    {
      *(v118[v28] + 4 * v29) = *(v119[v28] + 4 * v29);
      ++v28;
    }

    while (v28 != 3);
    ++v7;
  }

  while (v7 != 2);
  __asm
  {
    FMOV            V0.2S, #-4.0
    FMOV            V1.2S, #3.0
  }

  if ((v26 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v44 = 1;
  }

  else
  {
    v36 = 0;
    v37 = v20 + 4;
    v38 = v24 + v20 + 4;
    v39 = v22 + v37;
    v40 = v19 + v37;
    v41 = vdup_n_s32(0x3D561170u);
    v42 = vdup_n_s32(0x3E505590u);
    v43 = vdup_n_s32(0x3D092563u);
    v44 = 1;
    do
    {
      v45 = **(v8 + 24);
      v2.i32[0] = *(v12 + v16 + 8 + v36 - 4);
      v46 = vdup_lane_s32(v2, 0);
      v47 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v41, v2.f32[0]), v42, (*(v12 + v16 + v36) + *(v12 + v16 + 8 + v36)) + (*(v12 + v13 + 8 + v36 - 4) + *(v12 + result + 8 + v36 - 4))), v43, (*(v12 + v13 + v36) + *(v12 + v13 + 8 + v36)) + (*(v12 + result + v36) + *(v12 + result + 8 + v36)));
      v48 = v45 + 2;
      v49 = vld1_dup_f32(v45++);
      v50 = vmaxnm_f32(vabs_f32(vdiv_f32(vsub_f32(v46, v47), v49)), 0x3F0000003F000000);
      v4.i32[0] = *(v14 + v16 + 8 + v36 - 4);
      v51 = vdup_lane_s32(v4, 0);
      *v3.f32 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v41, *v4.i32), v42, (*(v14 + v16 + v36) + *(v14 + v16 + 8 + v36)) + (*(v14 + v13 + 8 + v36 - 4) + *(v14 + result + 8 + v36 - 4))), v43, (*(v14 + v13 + v36) + *(v14 + v13 + 8 + v36)) + (*(v14 + result + v36) + *(v14 + result + 8 + v36)));
      v52 = vld1_dup_f32(v45);
      v53 = vmaxnm_f32(v50, vabs_f32(vdiv_f32(vsub_f32(v51, *v3.f32), v52)));
      v5.i32[0] = *(v17 + v36 + 4);
      v54 = vdup_lane_s32(*v5.f32, 0);
      v55 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v41, v5.f32[0]), v42, (*(v17 + v36) + *(v17 + v36 + 8)) + (*(v15 + v13 + v36 + 4) + *(v15 + result + v36 + 4))), v43, (*(v15 + v13 + v36) + *(v15 + v13 + v36 + 8)) + (*(v15 + result + v36) + *(v15 + result + v36 + 8)));
      v56 = vld1_dup_f32(v48);
      v2 = vsub_f32(v54, v55);
      v57 = vmaxnm_f32(vmla_f32(_D1, _D0, vmaxnm_f32(v53, vabs_f32(vdiv_f32(v2, v56)))), 0);
      *(v40 + v36) = vmla_f32(v46, v57, vsub_f32(v47, v46)).u32[0];
      *(v39 + v36) = vmla_f32(v51, v57, vsub_f32(*v3.f32, v51)).u32[0];
      *v6.f32 = vmla_f32(v54, v57, vsub_f32(v55, v54));
      *(v38 + v36) = v6.i32[0];
      ++v44;
      v27 = **(v8 + 16) - 1;
      if (v27 >= 4)
      {
        v58 = 4;
      }

      else
      {
        v58 = **(v8 + 16) - 1;
      }

      v36 += 4;
    }

    while (v44 < v58);
  }

  if (v44 + 4 <= v27)
  {
    v59 = 4 * v44;
    v60 = v12 + v13 + 4;
    v61 = v12 + v16 + 4;
    v62 = result + v15 - 4;
    v63 = v12 + result + 4;
    v64 = v14 + v13 + 4;
    v65 = vdupq_n_s32(0x3D561170u);
    v66 = v16 + v15 - 4;
    v67 = v14 + v16 + 4;
    v68 = vdupq_n_s32(0x3E505590u);
    v69 = vdupq_n_s32(0x3D092563u);
    v70 = v14 + result + 4;
    v71.i64[0] = 0x3F0000003F000000;
    v71.i64[1] = 0x3F0000003F000000;
    v72 = v13 + v15 - 4;
    __asm
    {
      FMOV            V6.4S, #-4.0
      FMOV            V7.4S, #3.0
    }

    v75 = v21;
    v76 = v23;
    v77 = v25;
    do
    {
      v78 = **(v8 + 24);
      v79 = *(v61 + v59 - 4);
      v80 = v78 + 2;
      v81 = vld1q_dup_f32(v78++);
      v82 = vmlaq_f32(vmlaq_f32(vmulq_f32(v79, v65), v68, vaddq_f32(vaddq_f32(*(v61 + v59 - 8), *(v61 + v59)), vaddq_f32(*(v60 + v59 - 4), *(v63 + v59 - 4)))), v69, vaddq_f32(vaddq_f32(*(v60 + v59 - 8), *(v60 + v59)), vaddq_f32(*(v63 + v59 - 8), *(v63 + v59))));
      v83 = *(v67 + v59 - 4);
      v84 = vmlaq_f32(vmlaq_f32(vmulq_f32(v83, v65), v68, vaddq_f32(vaddq_f32(*(v67 + v59 - 8), *(v67 + v59)), vaddq_f32(*(v64 + v59 - 4), *(v70 + v59 - 4)))), v69, vaddq_f32(vaddq_f32(*(v64 + v59 - 8), *(v64 + v59)), vaddq_f32(*(v70 + v59 - 8), *(v70 + v59))));
      v85 = vld1q_dup_f32(v78);
      v86 = *(v66 + v59 + 4);
      v87 = vmaxnmq_f32(vmaxnmq_f32(vabsq_f32(vdivq_f32(vsubq_f32(v79, v82), v81)), v71), vabsq_f32(vdivq_f32(vsubq_f32(v83, v84), v85)));
      v6 = vmlaq_f32(vmlaq_f32(vmulq_f32(v86, v65), v68, vaddq_f32(vaddq_f32(*(v66 + v59), *(v66 + v59 + 8)), vaddq_f32(*(v72 + v59 + 4), *(v62 + v59 + 4)))), v69, vaddq_f32(vaddq_f32(*(v72 + v59), *(v72 + v59 + 8)), vaddq_f32(*(v62 + v59), *(v62 + v59 + 8))));
      v88 = vld1q_dup_f32(v80);
      v3 = vsubq_f32(v86, v6);
      v89 = vmaxnmq_f32(vmlaq_f32(_Q7, _Q6, vmaxnmq_f32(v87, vabsq_f32(vdivq_f32(v3, v88)))), 0);
      *(v75 + v59) = vmlaq_f32(v79, v89, vsubq_f32(v82, v79));
      v5 = vmlaq_f32(v83, v89, vsubq_f32(v84, v83));
      *(v76 + v59) = v5;
      *(v77 + v59) = vmlaq_f32(v86, v89, vsubq_f32(v6, v86));
      v90 = v44 + 8;
      v44 += 4;
      v77 += 16;
      v76 += 16;
      v75 += 16;
      v60 += 16;
      v61 += 16;
      v62 += 16;
      v63 += 16;
      v27 = **(v8 + 16) - 1;
      v64 += 16;
      v66 += 16;
      v67 += 16;
      v70 += 16;
      v72 += 16;
    }

    while (v90 <= v27);
  }

  if (v44 < v27)
  {
    v91 = 4 * v44;
    v92 = v12 + v13 + 4;
    v93 = v16 + 4;
    v94 = vdup_n_s32(0x3D561170u);
    v95 = vdup_n_s32(0x3E505590u);
    v96 = v12 + v16 + 4;
    v97 = vdup_n_s32(0x3D092563u);
    v98 = result + v15 - 4;
    v99 = result + 4;
    v100 = v12 + result + 4;
    result = v14 + v13 + 4;
    v101 = v16 + v15 - 4;
    v102 = v14 + v93;
    v103 = v14 + v99;
    v104 = v13 + v15 - 4;
    v105 = v44;
    do
    {
      v106 = **(v8 + 24);
      v3.i32[0] = *(v96 + v91 - 4);
      v107 = vdup_lane_s32(*v3.f32, 0);
      v108 = v106 + 2;
      v109 = vld1_dup_f32(v106++);
      v5.i32[0] = *(v102 + v91 - 4);
      v110 = vdup_lane_s32(*v5.f32, 0);
      v111 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v94, v3.f32[0]), v95, (*(v96 + 4 * v44 - 8) + *(v96 + 4 * v44)) + (*(v92 + 4 * v44 - 4) + *(v100 + 4 * v44 - 4))), v97, (*(v92 + 4 * v44 - 8) + *(v92 + 4 * v44)) + (*(v100 + 4 * v44 - 8) + *(v100 + 4 * v44)));
      v112 = vld1_dup_f32(v106);
      *v3.f32 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v94, v5.f32[0]), v95, (*(v102 + 4 * v44 - 8) + *(v102 + 4 * v44)) + (*(result + 4 * v44 - 4) + *(v103 + 4 * v44 - 4))), v97, (*(result + 4 * v44 - 8) + *(result + 4 * v44)) + (*(v103 + 4 * v44 - 8) + *(v103 + 4 * v44)));
      v6.i32[0] = *(v101 + v91 + 4);
      v113 = vdup_lane_s32(*v6.f32, 0);
      v114 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v94, v6.f32[0]), v95, (*(v101 + 4 * v44) + *(v101 + 4 * v44 + 8)) + (*(v104 + 4 * v44 + 4) + *(v98 + 4 * v44 + 4))), v97, (*(v104 + 4 * v44) + *(v104 + 4 * v44 + 8)) + (*(v98 + 4 * v44) + *(v98 + 4 * v44 + 8)));
      v115 = vld1_dup_f32(v108);
      v116 = vmaxnm_f32(vmla_f32(_D1, _D0, vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(vabs_f32(vdiv_f32(vsub_f32(v107, v111), v109)), 0x3F0000003F000000), vabs_f32(vdiv_f32(vsub_f32(v110, *v3.f32), v112))), vabs_f32(vdiv_f32(vsub_f32(v113, v114), v115)))), 0);
      *(v21 + 4 * v44) = vmla_f32(v107, v116, vsub_f32(v111, v107)).u32[0];
      *(v23 + 4 * v44) = vmla_f32(v110, v116, vsub_f32(*v3.f32, v110)).u32[0];
      *(v25 + 4 * v44) = vmla_f32(v113, v116, vsub_f32(v114, v113)).u32[0];
      ++v105;
      v25 += 4;
      v23 += 4;
      v21 += 4;
      v92 += 4;
      v96 += 4;
      v98 += 4;
      v100 += 4;
      result += 4;
      v101 += 4;
      v102 += 4;
      v103 += 4;
      v104 += 4;
    }

    while (v105 < **(v8 + 16) - 1);
  }

  return result;
}

uint64_t sub_240B2AC3C(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL sub_240B2AC6C(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 8);
  if (v1 == byte_240C85334[v2] && (v3 = *(a1 + 21), v3 == byte_240C85338[v2]) && (v4 = *(a1 + 16), v1 == byte_240C85334[v4]) && v3 == byte_240C85338[v4] && (v5 = *(a1 + 12), v1 == byte_240C85334[v5]))
  {
    return v3 == byte_240C85338[v5];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240B2ACE4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v26 = a1;
  v4 = *a2;
  v3 = a2[1];
  v24 = v4;
  if (v3 < 3 || v4 < 3)
  {
    return 0;
  }

  sub_240B2A11C(v21, v4, v3);
  result = v23;
  if (!v23)
  {
    sub_240B2A358(v18, v21);
    v9 = 0;
    v10 = 4 * v4;
    do
    {
      v11 = 0;
      v28 = 0;
      v29 = (v3 - 1);
      do
      {
        memcpy((v20[5 * v9] + v19 * (&v28)[v11]), (*&a2[10 * v9 + 6] + *(a2 + 2) * (&v28)[v11]), v10);
        ++v11;
      }

      while (v11 != 2);
      ++v9;
    }

    while (v9 != 3);
    v28 = &v25;
    v29 = v18;
    v30 = &v24;
    v31 = &v26;
    v12 = (v3 - 1);
    if (a3)
    {
      sub_240B2A408(a3, v12, &v28);
    }

    else
    {
      v27[0] = 0;
      v27[1] = v27;
      sub_240B2A408(v27, v12, &v28);
    }

    v13 = 0;
    v14 = v25;
    do
    {
      sub_240B59888(&v18[v13 * 4], &v14[v13]);
      v13 += 10;
    }

    while (v13 != 30);
    for (i = 104; i != -16; i -= 40)
    {
      sub_240B22320(&v18[i]);
    }

    if (!v23)
    {
      v16 = &v22;
      v17 = -120;
      do
      {
        sub_240B22320(v16);
        v16 -= 5;
        v17 += 40;
      }

      while (v17);
    }

    return 0;
  }

  return result;
}

void sub_240B2AEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a11 + i));
  }

  if (!a41)
  {
    v43 = &a39;
    v44 = -120;
    do
    {
      sub_240B22320(v43);
      v43 -= 5;
      v44 += 40;
    }

    while (v44);
  }

  _Unwind_Resume(a1);
}

void sub_240B2AF10(void *a1, void *a2, uint64_t a3, uint64_t a4, float *a5, float *a6, uint64_t a7, int **a8, float a9)
{
  v83 = *MEMORY[0x277D85DE8];
  if (sub_240B2AC6C(a7))
  {
    v18 = a1[3];
    if (v18)
    {
      v19 = 0;
      v20 = *a5 * a9;
      v21 = a5[1] * a9;
      v22 = a5[2] * a9;
      v23 = *a6;
      v24 = a6[2];
      v25 = a1[2];
      do
      {
        if (v25)
        {
          v26 = 0;
          v27 = a2[2] * (a1[1] + v19) + 4 * *a1;
          v28 = (a2[13] + v27);
          v29 = (a2[3] + v27);
          v30 = (a2[8] + v27);
          v31 = (*(*a4 + 152) + *(*a4 + 144) * v19);
          v32 = (*(*a4 + 24) + *(*a4 + 16) * v19);
          v33 = (*(*a4 + 88) + *(*a4 + 80) * v19);
          do
          {
            v34 = *v33++;
            v35 = v34;
            v36 = *v32++;
            v37 = v36;
            v38 = *v31++;
            v39 = vmulq_n_f32(vcvtq_f32_s32(v37), v21);
            *v30++ = v39;
            *v29++ = vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_s32(v35), v20), v39, v23);
            *v28++ = vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_s32(v38), v22), v39, v24);
            v26 += 4;
            v25 = a1[2];
          }

          while (v26 < v25);
          v18 = a1[3];
        }

        ++v19;
      }

      while (v19 < v18);
    }
  }

  else
  {
    v40 = 0;
    v81 = 1;
    v82 = 2;
    do
    {
      v41 = *(&v81 + v40);
      v42 = *(a7 + 8 + 4 * v41);
      v43 = *(a7 + 21) - byte_240C85338[v42];
      v44 = a1[3] >> v43;
      if (v44)
      {
        v45 = 0;
        v46 = *(a7 + 20) - byte_240C85334[v42];
        v47 = *a1 >> v46;
        v48 = a1[1] >> v43;
        v49 = a1[2] >> v46;
        v50 = *a4 + (((v41 < 2) ^ v41) << 6);
        v51 = a5[v41] * a9;
        v52 = &a2[5 * v41];
        v53 = 4 * v47;
        do
        {
          if (v49)
          {
            v54 = 0;
            v55 = (v52[3] + v53 + a2[2] * v48);
            v56 = (*(v50 + 24) + *(v50 + 16) * v45);
            do
            {
              v57 = *v56++;
              *v55++ = vmulq_n_f32(vcvtq_f32_s32(v57), v51);
              v54 += 4;
            }

            while (v54 < v49);
          }

          ++v45;
          ++v48;
        }

        while (v45 != v44);
      }

      v40 += 4;
    }

    while (v40 != 12);
    v18 = a1[3];
  }

  if (a8[16] >= 2)
  {
    if (v18)
    {
      v59 = 0;
      v60 = a1[2];
      do
      {
        if (v60)
        {
          v61 = 0;
          v62 = *(a7 + 21);
          v63 = *(*a4 + 88) + (v59 >> (v62 - byte_240C85338[*(a7 + 8)])) * *(*a4 + 80);
          v64 = *(*a4 + 24) + (v59 >> (v62 - byte_240C85338[*(a7 + 12)])) * *(*a4 + 16);
          v65 = *(a3 + 24) + *(a3 + 16) * (a1[1] + v59) + *a1;
          v66 = *(*a4 + 152) + (v59 >> (v62 - byte_240C85338[*(a7 + 16)])) * *(*a4 + 144);
          do
          {
            v68 = *a8;
            v67 = a8[1];
            if (*a8 == v67)
            {
              v69 = 0;
            }

            else
            {
              v69 = 0;
              do
              {
                v70 = *v68++;
                if (*(v63 + 4 * (v61 >> (*(a7 + 20) - byte_240C85334[*(a7 + 8)]))) > v70)
                {
                  ++v69;
                }
              }

              while (v68 != v67);
            }

            v72 = a8[3];
            v71 = a8[4];
            if (v72 == v71)
            {
              v73 = 0;
            }

            else
            {
              v73 = 0;
              v74 = a8[3];
              do
              {
                v75 = *v74++;
                if (*(v64 + 4 * (v61 >> (*(a7 + 20) - byte_240C85334[*(a7 + 12)]))) > v75)
                {
                  ++v73;
                }
              }

              while (v74 != v71);
            }

            v76 = a8[6];
            v77 = a8[7];
            if (v76 == v77)
            {
              v78 = 0;
            }

            else
            {
              v78 = 0;
              v79 = a8[6];
              do
              {
                v80 = *v79++;
                if (*(v66 + 4 * (v61 >> (*(a7 + 20) - byte_240C85334[*(a7 + 16)]))) > v80)
                {
                  ++v78;
                }
              }

              while (v79 != v77);
            }

            *(v65 + v61++) = v78 + v69 + v69 * ((v77 - v76) >> 2) + (v78 + v69 + v69 * ((v77 - v76) >> 2)) * ((v71 - v72) >> 2) + v73;
            v60 = a1[2];
          }

          while (v61 < v60);
          v18 = a1[3];
        }

        ++v59;
      }

      while (v59 < v18);
    }
  }

  else if (v18)
  {
    v58 = 0;
    do
    {
      bzero((*(a3 + 24) + *(a3 + 16) * (v58 + a1[1]) + *a1), a1[2]);
      ++v58;
    }

    while (v58 < a1[3]);
  }
}

uint64_t sub_240B2B35C(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 24))(a2, 0, a1 + 8);
  if (!result)
  {
    if ((*(*a2 + 64))(a2, *(a1 + 8)))
    {
      return 0;
    }

    else
    {
      result = (*(*a2 + 32))(a2, 0x80000200800000E0, 0x10E80001000, 224, a1 + 12);
      if (!result)
      {
        v5 = *(*a2 + 32);

        return v5(a2, 0x8000000480000003, 0x127000000A1, 3, a1 + 16);
      }
    }
  }

  return result;
}

void sub_240B2B4A8(const void **a1, unint64_t a2, int *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v4[4 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v3) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v4;
        v9 = (v7 - v4) >> 1;
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B228D4(v10);
      }

      sub_240B228BC();
    }

    v12 = *a3;
    v13 = (v6 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v6 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = v3 + 8;
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_240C111D0)));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        *(v16 - 1) = v12;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_240C111C0)))).i32[1])
      {
        *v16 = v12;
        v16[1] = v12;
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v11 = &v3[4 * v6];
  }

  a1[1] = v11;
}

void sub_240B2B6EC(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 4 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 62))
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(a1[1], 4 * v6);
    v11 = &v4[4 * v6];
  }

  a1[1] = v11;
}

uint64_t sub_240B2B820(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (*(result + 32) + 16 * a2);
  if (*(result + 96) == 1 && *(result + 128) != a2)
  {
    v4 = *(result + 100);
    v5 = a3 >= v4;
    v6 = a3 - v4;
    if (v5)
    {
      v3 = (result + 108);
    }

    if (v5)
    {
      a3 = v6;
    }
  }

  v7 = *v3;
  v8 = v3[1];
  v5 = a3 >= v8;
  v9 = a3 - v8;
  if (v5)
  {
    v10 = v3[2] + v3[3];
    v7 = v10 + v7 - v10 + (v9 >> v10) + 1;
  }

  v11 = *(result + 136);
  if (v11 <= v7)
  {
    v11 = v7;
  }

  *(result + 136) = v11;
  return result;
}

uint64_t sub_240B2B890(unint64_t *a1)
{
  v2 = a1[2];
  if (v2 > a1[3])
  {
    sub_240B244C4(a1);
    v4 = *a1;
    v5 = a1[1];
  }

  else
  {
    v3 = a1[1];
    v4 = *a1 | (*v2 << v3);
    a1[2] = v2 + ((63 - v3) >> 3);
    v5 = v3 | 0x38;
  }

  v6 = v5 - 1;
  *a1 = v4 >> 1;
  a1[1] = v5 - 1;
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  if (v8 > a1[3])
  {
    sub_240B244C4(a1);
    v9 = *a1;
    v10 = a1[1];
  }

  else
  {
    v9 = (*v8 << v6) | (v4 >> 1);
    a1[2] = v8 + ((64 - v5) >> 3);
    v10 = v6 | 0x38;
  }

  v11 = v10 - 3;
  *a1 = v9 >> 3;
  a1[1] = v10 - 3;
  v12 = v9 & 7;
  if ((v9 & 7) == 0)
  {
    return 1;
  }

  v13 = a1[2];
  if (v13 > a1[3])
  {
    sub_240B244C4(a1);
    v14 = *a1;
    v15 = a1[1];
  }

  else
  {
    v14 = (*v13 << v11) | (v9 >> 3);
    a1[2] = v13 + ((66 - v10) >> 3);
    v15 = v11 | 0x38;
  }

  *a1 = v14 >> v12;
  a1[1] = v15 - v12;
  return (1 << v12) + (v14 & ~(-1 << v12));
}

uint64_t *sub_240B2B9C0(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_240B2287C(a1, a2);
  }

  return a1;
}

void sub_240B2BA1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_240B2BA38(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B2287C(result, a4);
  }

  return result;
}

void sub_240B2BA98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B2BAB4(unint64_t a1, _DWORD *a2, unint64_t *a3)
{
  v7 = a3[2];
  v6 = a3[3];
  if (v7 > v6)
  {
    sub_240B244C4(a3);
    v10 = a3[2];
    v6 = a3[3];
  }

  else
  {
    v8 = a3[1];
    v9 = *a3 | (*v7 << v8);
    v10 = (v7 + ((63 - v8) >> 3));
    *a3 = v9;
    a3[1] = v8 | 0x38;
    a3[2] = v10;
  }

  v11 = 64 - __clz(a1);
  if (v10 > v6)
  {
    sub_240B244C4(a3);
    v13 = *a3;
    v14 = a3[1];
  }

  else
  {
    v12 = a3[1];
    v13 = *a3 | (*v10 << v12);
    a3[2] = v10 + ((63 - v12) >> 3);
    v14 = v12 | 0x38;
  }

  v15 = v13 & ~(-1 << v11);
  v16 = v14 - v11;
  v17 = v13 >> v11;
  *a3 = v13 >> v11;
  a3[1] = v16;
  if (v15 == a1)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v20 = __clz(v15 + 1);
    v21 = v20 ^ 0x3F;
    v22 = 64 - v20;
    if (((v15 + 1) & v15) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    v24 = a3[2];
    if (v24 > a3[3])
    {
      sub_240B244C4(a3);
      v25 = *a3;
      v26 = a3[1];
    }

    else
    {
      v25 = (*v24 << v16) | v17;
      a3[2] = v24 + ((63 - v16) >> 3);
      v26 = v16 | 0x38;
    }

    v19 = v25 & ~(-1 << v23);
    v27 = v26 - v23;
    v28 = v25 >> v23;
    *a3 = v28;
    a3[1] = v26 - v23;
    v29 = v15 - v19;
    if (v15 < v19)
    {
      return 1;
    }

    v31 = __clz(v29 + 1) ^ 0x3F;
    if (((v29 + 1) & v29) != 0)
    {
      v32 = v31 + 1;
    }

    else
    {
      v32 = v31;
    }

    v33 = a3[2];
    if (v33 > a3[3])
    {
      v36 = v32;
      sub_240B244C4(a3);
      v32 = v36;
      v34 = *a3;
      v35 = a3[1];
    }

    else
    {
      v34 = (*v33 << v27) | v28;
      a3[2] = v33 + ((63 - v27) >> 3);
      v35 = v27 | 0x38;
    }

    v18 = v34 & ~(-1 << v32);
    *a3 = v34 >> v32;
    a3[1] = v35 - v32;
  }

  result = 1;
  if (v19 + v18 <= v15)
  {
    *a2 = v15;
    a2[1] = 1 << v15;
    a2[2] = v19;
    a2[3] = v18;
    return 0;
  }

  return result;
}

uint64_t sub_240B2BCB4(uint64_t a1)
{
  *a1 = &unk_2852A2298;
  *(a1 + 20) = xmmword_240C11510;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B2B35C(a1, &v3);
  return a1;
}

uint64_t sub_240B2BD40(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a3;
  v274 = *MEMORY[0x277D85DE8];
  v10 = sub_240B546E4(a1, a3 + 88);
  if (v10)
  {
    return v10;
  }

  if (*(v7 + 96) == 1)
  {
    v10 = sub_240B2BAB4(8uLL, (v7 + 108), a1);
    if (v10)
    {
      return v10;
    }

    ++a2;
    if (*(v7 + 96) & 1) != 0 && (a5)
    {
      return 1;
    }
  }

  v262 = 1;
  v13 = *(a4 + 8) - *a4;
  if (a2 <= v13)
  {
    if (a2 < v13)
    {
      *(a4 + 8) = *a4 + a2;
    }
  }

  else
  {
    sub_240B26918(a4, a2 - v13);
  }

  if (a2 >= 2)
  {
    v11 = sub_240B30E84(a4, &v262, a1);
    if (v11)
    {
      return v11;
    }
  }

  *(v7 + 128) = *(*(a4 + 8) - 1);
  v14 = a1[2];
  if (v14 > a1[3])
  {
    sub_240B244C4(a1);
    v16 = *a1;
    v17 = a1[1];
  }

  else
  {
    v15 = a1[1];
    v16 = *a1 | (*v14 << v15);
    a1[2] = v14 + ((63 - v15) >> 3);
    v17 = v15 | 0x38;
  }

  v18 = v17 - 1;
  *a1 = v16 >> 1;
  a1[1] = v17 - 1;
  *(v7 + 80) = v16 & 1;
  if (v16)
  {
    v22 = 15;
  }

  else
  {
    v19 = a1[2];
    if (v19 > a1[3])
    {
      sub_240B244C4(a1);
      v20 = *a1;
      v21 = a1[1];
    }

    else
    {
      v20 = (*v19 << v18) | (v16 >> 1);
      a1[2] = v19 + ((64 - v17) >> 3);
      v21 = v18 | 0x38;
    }

    *a1 = v20 >> 2;
    a1[1] = v21 - 2;
    v22 = (v20 & 3) + 5;
  }

  *(v7 + 81) = v22;
  v23 = v262;
  sub_240B2D33C((v7 + 32), v262);
  v24 = *(v7 + 81);
  v26 = *(v7 + 32);
  v25 = *(v7 + 40);
  if (v26 != v25)
  {
    do
    {
      if (sub_240B2BAB4(v24, v26, a1))
      {
        return 1;
      }

      v26 += 4;
    }

    while (v26 != v25);
    LOBYTE(v24) = *(v7 + 81);
  }

  LODWORD(v272) = -1;
  sub_240B2B4A8((v7 + 56), v23, &v272);
  v258 = v23;
  v259 = 1 << v24;
  if (*(v7 + 80) != 1)
  {
    v35 = sub_240C0C5EC(8 * v23 * (1 << *(v7 + 81)), (atomic_fetch_add_explicit(dword_27E519008, 1u, memory_order_relaxed) & 0xF) << 7);
    v36 = *v7;
    *v7 = v35;
    if (v36)
    {
      atomic_fetch_add(&qword_27E519020, -*(v36 - 24));
      free(*(v36 - 32));
      v37 = *v7;
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      v37 = v35;
      if (!v23)
      {
        return 0;
      }
    }

    v43 = 0;
    v256 = v37;
    v249 = v7;
LABEL_50:
    v266[0] = 0;
    v266[1] = 0;
    v267 = 0;
    v44 = a1[2];
    if (v44 > a1[3])
    {
      sub_240B244C4(a1);
      v46 = *a1;
      v47 = a1[1];
    }

    else
    {
      v45 = a1[1];
      v46 = *a1 | (*v44 << v45);
      a1[2] = v44 + ((63 - v45) >> 3);
      v47 = v45 | 0x38;
      *a1 = v46;
      a1[1] = v45 | 0x38;
    }

    v48 = v47 - 1;
    v49 = v46 >> 1;
    *a1 = v46 >> 1;
    a1[1] = v47 - 1;
    if (v46)
    {
      *&v272 = 0;
      v61 = a1[2];
      if (v61 > a1[3])
      {
        sub_240B244C4(a1);
        v62 = *a1;
        v64 = a1[1];
      }

      else
      {
        v62 = (*v61 << v48) | v49;
        v63 = v61 + ((64 - v47) >> 3);
        v64 = v48 | 0x38;
        *a1 = v62;
        a1[1] = v48 | 0x38;
        a1[2] = v63;
      }

      v65 = 0;
      v66 = 0;
      *a1 = v62 >> 1;
      a1[1] = v64 - 1;
      do
      {
        v67 = sub_240B2B890(a1);
        *(&v272 + v65) = v67;
        if (v67 > v66)
        {
          v66 = v67;
        }

        v65 += 4;
      }

      while (4 * (v62 & 1) + 4 != v65);
      sub_240B245C8(v266, (v66 + 1));
      v37 = v256;
      v68 = v272;
      if ((v62 & 1) == 0)
      {
        v69 = v266[0];
        *(v266[0] + v272) = 4096;
        goto LABEL_121;
      }

      v90 = SDWORD1(v272);
      if (v272 != DWORD1(v272))
      {
        v91 = a1[2];
        if (v91 > a1[3])
        {
          sub_240B244C4(a1);
          v93 = *a1;
          v94 = a1[1];
        }

        else
        {
          v92 = a1[1];
          v93 = *a1 | (*v91 << v92);
          a1[2] = v91 + ((63 - v92) >> 3);
          v94 = v92 | 0x38;
          *a1 = v93;
          a1[1] = v92 | 0x38;
        }

        *a1 = v93 >> 12;
        a1[1] = v94 - 12;
        v95 = v93 & 0xFFF;
        v69 = v266[0];
        *(v266[0] + v68) = v95;
        *&v69[4 * v90] = 4096 - v95;
        goto LABEL_121;
      }

      goto LABEL_305;
    }

    v50 = a1[2];
    if (v50 > a1[3])
    {
      sub_240B244C4(a1);
      v51 = *a1;
      v53 = a1[1];
    }

    else
    {
      v51 = (*v50 << v48) | v49;
      v52 = v50 + ((64 - v47) >> 3);
      v53 = v48 | 0x38;
      *a1 = v51;
      a1[1] = v48 | 0x38;
      a1[2] = v52;
    }

    v54 = v53 - 1;
    v55 = v51 >> 1;
    *a1 = v51 >> 1;
    a1[1] = v54;
    if (v51)
    {
      v70 = sub_240B2B890(a1);
      sub_240B226FC(&v272, v70 + 1);
      *v266 = v272;
      v267 = v273;
      v69 = v272;
      goto LABEL_121;
    }

    for (i = 0; i != 3; ++i)
    {
      v57 = a1[2];
      if (v57 > a1[3])
      {
        sub_240B244C4(a1);
        v58 = *a1;
        v60 = a1[1];
      }

      else
      {
        v58 = (*v57 << v54) | v55;
        v59 = v57 + ((63 - v54) >> 3);
        v60 = v54 | 0x38;
        *a1 = v58;
        a1[1] = v54 | 0x38;
        a1[2] = v59;
      }

      v54 = v60 - 1;
      v55 = v58 >> 1;
      *a1 = v58 >> 1;
      a1[1] = v60 - 1;
      if ((v58 & 1) == 0)
      {
        break;
      }
    }

    v71 = a1[2];
    if (v71 > a1[3])
    {
      sub_240B244C4(a1);
      v72 = *a1;
      v73 = a1[1];
    }

    else
    {
      v72 = (*v71 << v54) | v55;
      v73 = v54 | 0x38;
      *a1 = v72;
      a1[1] = v73;
      a1[2] = v71 + ((64 - v60) >> 3);
    }

    *a1 = v72 >> i;
    a1[1] = v73 - i;
    v254 = (1 << i) | v72 & ~(-1 << i);
    if (v254 > 0xE)
    {
      goto LABEL_305;
    }

    v74 = sub_240B2B890(a1);
    sub_240B245C8(v266, (v74 + 3));
    v75 = (v266[1] - v266[0]) >> 2;
    sub_240B2B9C0(&v272, v75);
    v251 = v43;
    LODWORD(v268[0]) = 0;
    sub_240B22768(__p, v75, v268);
    v252 = *(&v272 + 1);
    v76 = v272;
    if (*(&v272 + 1) == v272)
    {
      goto LABEL_300;
    }

    v77 = 0;
    v78 = __p[0];
    v79 = (*(&v272 + 1) - v272) >> 2;
    v80 = -1;
    v81 = 0xFFFFFFFFLL;
    do
    {
      v82 = a1[2];
      if (v82 > a1[3])
      {
        sub_240B244C4(a1);
        v84 = *a1;
        v85 = a1[1];
      }

      else
      {
        v83 = a1[1];
        v84 = *a1 | (*v82 << v83);
        a1[2] = v82 + ((63 - v83) >> 3);
        v85 = v83 | 0x38;
        *a1 = v84;
        a1[1] = v83 | 0x38;
      }

      v86 = &unk_240C8140B + 2 * (v84 & 0x7F);
      v87 = *v86;
      *a1 = v84 >> v87;
      a1[1] = v85 - v87;
      v88 = v86[1];
      v76[v77] = v88;
      if (v88 == 13)
      {
        v89 = sub_240B2B890(a1);
        v78[v77] = v89 + 5;
        v77 += (v89 + 3);
      }

      else
      {
        if (v80 < v88)
        {
          v81 = v77;
        }

        if (v80 <= v88)
        {
          v80 = v88;
        }
      }

      ++v77;
    }

    while (v77 < v79);
    if ((v81 & 0x80000000) != 0 || v81 + 1 < v79 && v76[v81 + 1] == 4097)
    {
LABEL_300:
      v114 = __p[0];
      goto LABEL_301;
    }

    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = __p[0];
    v69 = v266[0];
    v101 = *(&v272 + 1);
    v102 = v272;
    v103 = v252;
    while (1)
    {
      v104 = v100[v96];
      if (v104)
      {
        v97 = v104 - 1;
        if (v96)
        {
          v98 = *&v69[4 * v96 - 4];
        }

        else
        {
          v98 = 0;
        }
      }

      if (v97 < 1)
      {
        if (v81 == v96)
        {
          goto LABEL_103;
        }

        v105 = v76[v96];
        if (!v105)
        {
          goto LABEL_103;
        }

        v106 = v103;
        v107 = v105 - 1;
        if (v105 != 1)
        {
          v108 = v254 + ~((13 - v105) >> 1);
          if (v108 >= v107)
          {
            v109 = v107;
          }

          else
          {
            v109 = v108;
          }

          v110 = a1[2];
          if (v110 > a1[3])
          {
            v253 = v101;
            v76 = v102;
            v248 = v109;
            sub_240B244C4(a1);
            v109 = v248;
            v102 = v76;
            v101 = v253;
            v112 = *a1;
            v113 = a1[1];
            v106 = v253;
          }

          else
          {
            v111 = a1[1];
            v112 = *a1 | (*v110 << v111);
            a1[2] = v110 + ((63 - v111) >> 3);
            v113 = v111 | 0x38;
            *a1 = v112;
            a1[1] = v111 | 0x38;
          }

          *a1 = v112 >> (v109 & ~(v109 >> 31));
          a1[1] = v113 - (v109 & ~(v109 >> 31));
          v105 = (1 << v107) + ((v112 & ~(-1 << (v109 & ~(v109 >> 31)))) << (v107 - (v109 & ~(v109 >> 31))));
        }

        *&v69[4 * v96] = v105;
        v103 = v106;
      }

      else
      {
        *&v69[4 * v96] = v98;
        v105 = v98;
        --v97;
      }

      v99 += v105;
LABEL_103:
      if (++v96 >= ((v103 - v76) >> 2))
      {
        *&v69[4 * v81] = 4096 - v99;
        v114 = __p[0];
        if (v99 < 4096)
        {
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
            v76 = v272;
          }

          v7 = v249;
          v43 = v251;
          v37 = v256;
          if (v76)
          {
            *(&v272 + 1) = v76;
            operator delete(v76);
            v69 = v266[0];
          }

LABEL_121:
          v115 = v266[1];
          v116 = (v266[1] - v69) >> 2;
          if (v116 <= v259)
          {
            if (v69 == v266[1])
            {
              v119 = 1;
            }

            else
            {
              v117 = v266[1];
              do
              {
                v118 = *(v117 - 1);
                v117 -= 4;
                v119 = v118 == 0;
                if (v118)
                {
                  break;
                }

                v115 = v117;
              }

              while (v117 != v69);
              v266[1] = v115;
              v116 = (v115 - v69) >> 2;
            }

            if (v115 != v69)
            {
              v120 = 0;
              if (v116 <= 1)
              {
                v121 = 1;
              }

              else
              {
                v121 = v116;
              }

              do
              {
                if (*&v69[4 * v120])
                {
                  sub_240B2B820(v7, v43, v120);
                }

                ++v120;
              }

              while (v121 != v120);
            }

            LODWORD(v122) = v116 - 1;
            if (v119)
            {
              v122 = 0;
            }

            else
            {
              v122 = v122;
            }

            if (v122 < 1)
            {
              v125 = v258;
            }

            else
            {
              v123 = v69;
              v124 = v122;
              v125 = v258;
              while (1)
              {
                v126 = *v123;
                v123 += 4;
                if (v126)
                {
                  break;
                }

                if (!--v124)
                {
                  goto LABEL_145;
                }
              }

              LODWORD(v122) = -1;
            }

LABEL_145:
            *(*(v7 + 56) + 4 * v43) = v122;
            v264 = 0;
            v265 = 0;
            v263 = 0;
            sub_240B2BA38(&v263, v69, v115, v116);
            sub_240B229E0(&v263, *(v7 + 81), v37 + 8 * v43 * (1 << *(v7 + 81)));
            if (v263)
            {
              v264 = v263;
              operator delete(v263);
            }

            if (v266[0])
            {
              operator delete(v266[0]);
            }

            if (++v43 == v125)
            {
              return 0;
            }

            goto LABEL_50;
          }

LABEL_305:
          if (v266[0])
          {
            operator delete(v266[0]);
          }

          return 1;
        }

LABEL_301:
        if (v114)
        {
          __p[1] = v114;
          operator delete(v114);
          v76 = v272;
        }

        if (v76)
        {
          *(&v272 + 1) = v76;
          operator delete(v76);
        }

        goto LABEL_305;
      }
    }
  }

  v27 = *(v7 + 8);
  v28 = *(v7 + 16);
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3);
  v30 = v23 - v29;
  if (v23 <= v29)
  {
    if (v23 < v29)
    {
      v38 = v27 + 24 * v23;
      if (v28 != v38)
      {
        v39 = *(v7 + 16);
        do
        {
          v41 = *(v39 - 24);
          v39 -= 24;
          v40 = v41;
          if (v41)
          {
            *(v28 - 16) = v40;
            operator delete(v40);
          }

          v28 = v39;
        }

        while (v39 != v38);
      }

      *(v7 + 16) = v38;
    }

    sub_240B29264(&v263, v23);
    if (!v23)
    {
LABEL_47:
      v42 = 0;
      v11 = 1;
      goto LABEL_311;
    }
  }

  else
  {
    v31 = *(v7 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((v31 - v28) >> 3) < v30)
    {
      if (v23 <= 0xAAAAAAAAAAAAAAALL)
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v27) >> 3);
        v33 = 2 * v32;
        if (2 * v32 <= v23)
        {
          v33 = v23;
        }

        if (v32 >= 0x555555555555555)
        {
          v34 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v34 = v33;
        }

        if (v34 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    v127 = 24 * ((24 * v30 - 24) / 0x18) + 24;
    bzero(*(v7 + 16), v127);
    *(v7 + 16) = v28 + v127;
    sub_240B29264(&v263, v23);
  }

  v128 = 0;
  v129 = v263;
  do
  {
    v130 = a1[2];
    if (v130 > a1[3])
    {
      sub_240B244C4(a1);
      v132 = *a1;
      v133 = a1[1];
    }

    else
    {
      v131 = a1[1];
      v132 = *a1 | (*v130 << v131);
      a1[2] = v130 + ((63 - v131) >> 3);
      v133 = v131 | 0x38;
    }

    v134 = v133 - 1;
    *a1 = v132 >> 1;
    a1[1] = v133 - 1;
    if (v132)
    {
      v136 = a1[2];
      if (v136 > a1[3])
      {
        sub_240B244C4(a1);
        v137 = *a1;
        v138 = a1[1];
      }

      else
      {
        v137 = (*v136 << v134) | (v132 >> 1);
        a1[2] = v136 + ((64 - v133) >> 3);
        v138 = v134 | 0x38;
      }

      v139 = v138 - 4;
      *a1 = v137 >> 4;
      a1[1] = v138 - 4;
      v140 = v137 & 0xF;
      if ((v137 & 0xF) != 0)
      {
        v141 = a1[2];
        if (v141 > a1[3])
        {
          sub_240B244C4(a1);
          v142 = *a1;
          v143 = a1[1];
        }

        else
        {
          v142 = (*v141 << v139) | (v137 >> 4);
          a1[2] = v141 + ((67 - v138) >> 3);
          v143 = v139 | 0x38;
        }

        *a1 = v142 >> v140;
        a1[1] = v143 - v140;
        v135 = (v142 & ~(-1 << v140)) + (1 << v140) + 1;
      }

      else
      {
        LOWORD(v135) = 2;
      }

      v23 = v258;
    }

    else
    {
      LOWORD(v135) = 1;
    }

    v129[v128] = v135;
    if (v259 < v135)
    {
      v42 = 1;
LABEL_314:
      v11 = 1;
LABEL_315:
      v264 = v129;
      operator delete(v129);
      goto LABEL_316;
    }

    ++v128;
  }

  while (v23 != v128);
  v144 = 0;
  v250 = v7;
  while (1)
  {
    v145 = *(v263 + v144);
    v146 = *(v7 + 8) + 24 * v144;
    if (v145 < 2)
    {
      *(v146 + 8) = *v146;
      sub_240B2B6EC(v146, 0x100uLL);
      goto LABEL_262;
    }

    if (v145 > 0x8000)
    {
      goto LABEL_308;
    }

    v147 = a1[2];
    if (v147 > a1[3])
    {
      sub_240B244C4(a1);
      v149 = *a1;
      v150 = a1[1];
    }

    else
    {
      v148 = a1[1];
      v149 = *a1 | (*v147 << v148);
      a1[2] = v147 + ((63 - v148) >> 3);
      v150 = v148 | 0x38;
      *a1 = v149;
      a1[1] = v148 | 0x38;
    }

    v151 = v149 & 3;
    *a1 = v149 >> 2;
    a1[1] = v150 - 2;
    if (v151 != 1)
    {
      break;
    }

    sub_240B2B6EC(v146, 0x100uLL);
    v152 = *v146;
    v153 = a1[2];
    if (v153 > a1[3])
    {
      sub_240B244C4(a1);
      v155 = *a1;
      v156 = a1[1];
    }

    else
    {
      v154 = a1[1];
      v155 = *a1 | (*v153 << v154);
      a1[2] = v153 + ((63 - v154) >> 3);
      v156 = v154 | 0x38;
      *a1 = v155;
      a1[1] = v154 | 0x38;
    }

    v157 = 0;
    v158 = __clz(v145 - 1);
    v159 = 64 - v158;
    v160 = v155 & 3;
    v161 = v156 - 2;
    v162 = v155 >> 2;
    *a1 = v162;
    a1[1] = v161;
    v163 = v160 + 1;
    *&v272 = 0;
    v164 = ~(-1 << (64 - v158));
    do
    {
      v165 = a1[2];
      if (v165 > a1[3])
      {
        v260 = v163;
        sub_240B244C4(a1);
        v163 = v260;
        v166 = *a1;
        v168 = a1[1];
      }

      else
      {
        v166 = v162 | (*v165 << v161);
        v167 = v165 + ((63 - v161) >> 3);
        v168 = v161 | 0x38;
        *a1 = v166;
        a1[1] = v168;
        a1[2] = v167;
      }

      v169 = v166 & v164;
      v161 = v168 - v159;
      v162 = v166 >> v159;
      *a1 = v162;
      a1[1] = v161;
      if (v145 <= v169)
      {
        goto LABEL_309;
      }

      *(&v272 + v157) = v169;
      v157 += 2;
    }

    while (2 * v160 + 2 != v157);
    if (v160)
    {
      v210 = 0;
      v211 = 2;
      v212 = v160;
      while (2)
      {
        v213 = *(&v272 + v210++);
        v214 = v211;
        v215 = v212;
        do
        {
          if (v213 == *(&v272 + v214))
          {
            goto LABEL_309;
          }

          v214 += 2;
          --v215;
        }

        while (v215);
        --v212;
        v211 += 2;
        if (v210 != v160)
        {
          continue;
        }

        break;
      }

      if (v163 == 4)
      {
        v216 = a1[2];
        if (v216 > a1[3])
        {
          sub_240B244C4(a1);
          v217 = *a1;
          v219 = a1[1];
        }

        else
        {
          v217 = v162 | (*v216 << v161);
          v218 = v216 + ((63 - v161) >> 3);
          v219 = v161 | 0x38;
          *a1 = v217;
          a1[1] = v219;
          a1[2] = v218;
        }

        *a1 = v217 >> 1;
        a1[1] = v219 - 1;
        v163 = v217 & 1 | 4;
      }

      if (v163 <= 2)
      {
        if (v163 == 1)
        {
          goto LABEL_273;
        }

        v244 = v272;
        if (v272 <= WORD1(v272))
        {
          v221 = WORD1(v272);
        }

        else
        {
          v221 = v272;
        }

        if (v272 >= WORD1(v272))
        {
          v244 = WORD1(v272);
        }

        *v152 = 1;
        *(v152 + 1) = v244;
        v152[4] = 1;
        v224 = 6;
        v225 = 2;
      }

      else
      {
        if (v163 == 3)
        {
          v233 = WORD1(v272);
          if (WORD1(v272) <= WORD2(v272))
          {
            v221 = WORD2(v272);
          }

          else
          {
            v221 = WORD1(v272);
          }

          if (WORD1(v272) >= WORD2(v272))
          {
            v233 = WORD2(v272);
          }

          v234 = v272;
          *v152 = 1;
          *(v152 + 1) = v234;
          v152[8] = 1;
          *(v152 + 5) = v234;
          v152[4] = 2;
          *(v152 + 3) = v233;
          v152[12] = 2;
          goto LABEL_290;
        }

        if (v163 != 5)
        {
          v235 = 0;
          v236 = 2;
          do
          {
            v237 = v235++;
            v238 = *(&v272 + v237);
            v239 = v236;
            do
            {
              v240 = *(&v272 + v239);
              if (v238 > v240)
              {
                *(&v272 + v239) = v238;
                *(&v272 + v237) = v240;
                v238 = v240;
              }

              v239 += 2;
            }

            while (v239 != 8);
            v236 += 2;
          }

          while (v235 != 3);
          v241 = v272;
          *v152 = 2;
          *(v152 + 1) = v241;
          v242 = WORD1(v272);
          v152[8] = 2;
          *(v152 + 5) = v242;
          v243 = WORD2(v272);
          v152[4] = 2;
          *(v152 + 3) = v243;
          v221 = WORD3(v272);
          v152[12] = 2;
LABEL_290:
          v224 = 14;
          v225 = 4;
          goto LABEL_274;
        }

        v220 = WORD2(v272);
        if (WORD2(v272) <= WORD3(v272))
        {
          v221 = WORD3(v272);
        }

        else
        {
          v221 = WORD2(v272);
        }

        if (WORD2(v272) >= WORD3(v272))
        {
          v220 = WORD3(v272);
        }

        v222 = v272;
        *v152 = 1;
        *(v152 + 1) = v222;
        v223 = WORD1(v272);
        v152[4] = 2;
        *(v152 + 3) = v223;
        v152[8] = 1;
        *(v152 + 5) = v222;
        v152[12] = 3;
        *(v152 + 7) = v220;
        v152[16] = 1;
        *(v152 + 9) = v222;
        v152[20] = 2;
        *(v152 + 11) = v223;
        v152[24] = 1;
        *(v152 + 13) = v222;
        v152[28] = 3;
        v224 = 30;
        v225 = 8;
      }
    }

    else
    {
LABEL_273:
      v221 = v272;
      *v152 = 0;
      v224 = 2;
      v225 = 1;
    }

LABEL_274:
    v7 = v250;
    v23 = v258;
    *&v152[v224] = v221;
    do
    {
      memcpy(&v152[4 * v225], v152, 4 * v225);
      v225 *= 2;
    }

    while (v225 != 256);
LABEL_262:
    v226 = *(v7 + 8) + 24 * v144;
    v227 = *v226;
    v228 = *(v226 + 8);
    while (v227 != v228)
    {
      if (*v227 <= 8u)
      {
        sub_240B2B820(v7, v144, *(v227 + 1));
      }

      v227 += 4;
    }

    if (++v144 == v23)
    {
      goto LABEL_47;
    }
  }

  LOBYTE(v272) = 0;
  sub_240B43578(v266, v145, &v272);
  v255 = v146;
  v170 = 0;
  v268[0] = 0;
  v268[1] = 0;
  v171 = 32;
  v269 = 0;
  do
  {
    v172 = byte_240C861CE[v151];
    v173 = a1[2];
    if (v173 > a1[3])
    {
      sub_240B244C4(a1);
      v175 = *a1;
      v176 = a1[1];
    }

    else
    {
      v174 = a1[1];
      v175 = *a1 | (*v173 << v174);
      a1[2] = v173 + ((63 - v174) >> 3);
      v176 = v174 | 0x38;
      *a1 = v175;
      a1[1] = v174 | 0x38;
    }

    v177 = &unk_240C81664 + 4 * (v175 & 0xF);
    v178 = *v177;
    *a1 = v175 >> v178;
    a1[1] = v176 - v178;
    v179 = *(v177 + 1);
    *(v268 + v172) = v179;
    if (v179)
    {
      ++v170;
      v180 = 0x20u >> v179;
    }

    else
    {
      v180 = 0;
    }

    v171 -= v180;
    if (v151 > 0x10)
    {
      break;
    }

    ++v151;
  }

  while (v171 > 0);
  if (v170 == 1 || v171 == 0)
  {
    v182 = 0;
    v261 = v266[0];
    *__p = 0u;
    v271 = 0u;
    do
    {
      ++*(__p + *(v268 + v182++));
    }

    while (v182 != 18);
    if (!sub_240B57A54(&v272, 5u, v268, 18, __p))
    {
      goto LABEL_258;
    }

    v183 = 0;
    v184 = 0;
    v185 = 0;
    v257 = 8;
    v186 = 0x8000;
    do
    {
      v187 = a1[2];
      if (v187 > a1[3])
      {
        sub_240B244C4(a1);
        v189 = *a1;
        v190 = a1[1];
      }

      else
      {
        v188 = a1[1];
        v189 = *a1 | (*v187 << v188);
        a1[2] = v187 + ((63 - v188) >> 3);
        v190 = v188 | 0x38;
      }

      v191 = &v272 + 4 * (v189 & 0x1F);
      v192 = *v191;
      v193 = v190 - v192;
      v194 = v189 >> v192;
      *a1 = v194;
      a1[1] = v193;
      v195 = v191[2];
      if (v195 > 0xF)
      {
        v196 = v195 - 14;
        if (v195 == 16)
        {
          v197 = v257;
        }

        else
        {
          v197 = 0;
        }

        if (v184 == v197)
        {
          v198 = v185;
        }

        else
        {
          v198 = 0;
        }

        if (v198 <= 0)
        {
          v199 = v198;
        }

        else
        {
          v199 = (v198 - 2) << (v195 - 14);
        }

        v200 = a1[2];
        if (v200 > a1[3])
        {
          sub_240B244C4(a1);
          v201 = *a1;
          v202 = a1[1];
        }

        else
        {
          v201 = (*v200 << v193) | v194;
          a1[2] = v200 + ((63 - v193) >> 3);
          v202 = v193 | 0x38;
        }

        *a1 = v201 >> v196;
        a1[1] = v202 - v196;
        v185 = v199 + (v201 & ~(-1 << v196)) + 3;
        v203 = v185 - v198;
        v204 = v185 - v198 + v183;
        if (v204 > v145)
        {
          goto LABEL_258;
        }

        v205 = &v261[v183];
        v206 = v203;
        v207 = v203 << (15 - v197);
        if (v197)
        {
          v208 = v207;
        }

        else
        {
          v208 = 0;
        }

        memset(v205, v197, v206);
        v186 -= v208;
        v184 = v197;
        v183 = v204;
      }

      else
      {
        v261[v183] = v195;
        v185 = 0;
        if (v195)
        {
          v186 -= 0x8000u >> v195;
          v257 = v195;
        }

        ++v183;
      }
    }

    while (v145 > v183 && v186 > 0);
    if (!v186)
    {
      bzero(&v261[v183], v145 - v183);
      v272 = 0u;
      v273 = 0u;
      v229 = v145;
      v230 = v266[0];
      do
      {
        v231 = *v230++;
        ++*(&v272 + v231);
        --v229;
      }

      while (v229);
      sub_240B2B6EC(v255, v145 + 376);
      v7 = v250;
      v23 = v258;
      v232 = sub_240B57A54(*v255, 8u, v266[0], v145, &v272);
      sub_240B2B6EC(v255, v232);
      v209 = v232 != 0;
    }

    else
    {
LABEL_258:
      v209 = 0;
      v7 = v250;
      v23 = v258;
    }
  }

  else
  {
    v209 = 0;
  }

  if (v266[0])
  {
    v266[1] = v266[0];
    operator delete(v266[0]);
  }

  if (v209)
  {
    goto LABEL_262;
  }

LABEL_308:
  v161 = a1[1];
LABEL_309:
  v245 = a1[4];
  v246 = a1[3];
  v247 = 8 * (a1[2] - v245 + a1[5]) - v161;
  a1[7] = v247;
  v42 = 1;
  if (v247 <= 8 * (v246 - v245) + 64)
  {
    v129 = v263;
    goto LABEL_314;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_311:
  v129 = v263;
  if (v263)
  {
    goto LABEL_315;
  }

LABEL_316:
  if (!v42)
  {
    return 0;
  }

  return v11;
}

void sub_240B2D2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B2D33C(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v2 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 >= v4)
    {
      return;
    }

    v9 = (v3 + 16 * a2);
  }

  else
  {
    v5 = a1[2];
    if (a2 - v4 > (v5 - v2) >> 4)
    {
      if (!(a2 >> 60))
      {
        v6 = v5 - v3;
        v7 = v6 >> 3;
        if (v6 >> 3 <= a2)
        {
          v7 = a2;
        }

        if (v6 >= 0x7FFFFFFFFFFFFFF0)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        sub_240B2D470(v8);
      }

      sub_240B228BC();
    }

    v9 = &v2[a2 - v4];
    v10 = 16 * a2 - 16 * v4;
    do
    {
      *v2++ = xmmword_240C11520;
      v10 -= 16;
    }

    while (v10);
  }

  a1[1] = v9;
}

void sub_240B2D470(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B2D4B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (*(*(a2 + 408) + 320) + 3);
  if (a4 & 0x1000000) != 0 && (*(a2 + 24))
  {
    v8 += 3;
  }

  if ((*(a2 + 392) & 1) == 0 && *(a2 + 16) != 1 && (!*(a2 + 376) || *(a2 + 396)))
  {
    sub_240B309B8(v102, *(a3 + 88));
    sub_240B30ABC((a1 + 4496), v102);
    *&v98 = &v111;
    sub_240B30C38(&v98);
    v108[0] = &unk_2852A1CB8;
    if (__p)
    {
      v110 = __p;
      operator delete(__p);
    }

    for (i = 200; i != 80; i -= 40)
    {
      sub_240B22320((v102 + i));
    }

    if (SBYTE7(v106) < 0)
    {
      operator delete(v105[0]);
    }

    v10 = *&v102[0];
    *&v102[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v98 = 0uLL;
  v99 = 0;
  v100 = v8;
  v101 = a4 & 1;
  if (!sub_240B2AC6C(a2 + 40))
  {
    v11 = 0;
    v12 = a2 + 48;
    do
    {
      if (*(a2 + 60) != byte_240C85334[*(v12 + 4 * v11)])
      {
        operator new();
      }

      if (*(a2 + 61) != byte_240C85338[*(v12 + 4 * v11)])
      {
        operator new();
      }

      ++v11;
    }

    while (v11 != 3);
  }

  if (*(a2 + 425) == 1)
  {
    operator new();
  }

  v13 = *(a2 + 452);
  if (v13 >= 3)
  {
    operator new();
  }

  if (v13)
  {
    operator new();
  }

  if (*(a2 + 452) >= 2u)
  {
    operator new();
  }

  v14 = *(a2 + 268);
  v15 = v14 != 1;
  v16 = *(a2 + 272);
  v17 = *(a2 + 280);
  if (v16 != v17)
  {
    v18 = *(a2 + 272);
    do
    {
      v19 = *v18++;
      LOBYTE(v15) = v19 == v14 && v15;
    }

    while (v18 != v17);
    if (v15)
    {
      v15 = 1;
    }

    else
    {
      v20 = 0;
      do
      {
        v21 = v16[v20];
        if (v21 != 1)
        {
          v22 = __clz(v21) ^ 0x1F;
          if ((v21 & (v21 - 1)) != 0)
          {
            v23 = v22 + 1;
          }

          else
          {
            v23 = v22;
          }

          sub_240BF7CB8(&v97, *(a2 + 408) + 456, v20 + 3, v23);
        }

        ++v20;
        v16 = *(a2 + 272);
      }

      while (v20 < (*(a2 + 280) - v16) >> 2);
      v15 = 0;
    }
  }

  if ((*(a2 + 24) & 2) != 0)
  {
    operator new();
  }

  if ((*(a2 + 24) & 0x10) != 0)
  {
    operator new();
  }

  if (*(a2 + 268) != 1 && (!v15 || (*(a2 + 280) - *(a2 + 272)) >> 2 != -3))
  {
    v24 = *(a2 + 268);
    v25 = __clz(v24) ^ 0x1F;
    if ((v24 & (v24 - 1)) != 0)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = v25;
    }

    sub_240BF7CB8(&v96, *(a2 + 408) + 456, 0, v26);
  }

  if (a4 & 0x1000000) != 0 && (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 404))
  {
    operator new();
  }

  if ((*(a2 + 392) & 1) == 0 && *(a2 + 16) != 1 && (!*(a2 + 376) || *(a2 + 396)) && *(a2 + 400) == 1)
  {
    v77 = &unk_2852A1CB8;
    v78 = *(a1 + 5200);
    v27 = *(a1 + 5213);
    v79[0] = *(a1 + 5208);
    *(v79 + 5) = v27;
    memset(v80, 0, sizeof(v80));
    sub_240B28D90(v80, *(a1 + 5224), *(a1 + 5232), *(a1 + 5232) - *(a1 + 5224));
    v81 = *(a1 + 5248);
    v82 = *(a1 + 5264);
    v83 = *(a1 + 5280);
    v84 = *(a1 + 5296);
    v28 = *(a1 + 5312);
    v85 = &unk_2852A1260;
    v86 = v28;
    v87 = &unk_2852A1A10;
    v88 = *(a1 + 5328);
    v29 = *(a1 + 5352);
    v89 = &unk_2852A1260;
    v90 = v29;
    v30 = *(a1 + 5368);
    v91 = &unk_2852A1260;
    v92 = v30;
    v31 = *(a1 + 5384);
    v93 = &unk_2852A1260;
    v94 = v31;
    sub_240BF91EC(&v95, a1 + 4496, &v77);
  }

  v32 = *(a3 + 88);
  v34 = *(v32 + 328);
  v33 = *(v32 + 336);
  if (v33 != v34)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v34) >> 5) <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * ((v33 - v34) >> 5);
    if (*(v34 + 12))
    {
      v36 = 0;
      v37 = (v34 + 108);
      v38 = v35 - 1;
      do
      {
        if (v38 == v36)
        {
          break;
        }

        ++v36;
        v39 = *v37;
        v37 += 24;
      }

      while (v39);
    }
  }

  if (*(a1 + 4448))
  {
    v52 = *(a1 + 4208);
    v104 = *(v52 + 56);
    *v105 = *(v52 + 72);
    v106 = *(v52 + 88);
    v107 = *(v52 + 104);
    v102[0] = *(v52 + 8);
    v102[1] = *(v52 + 24);
    *v103 = *(v52 + 40);
    if (v101 == 1)
    {
      operator new();
    }

    operator new();
  }

  v40 = *(a2 + 32);
  if (!v40)
  {
    operator new();
  }

  if (v40 == 2)
  {
    operator new();
  }

  if ((a4 & 0x100) != 0)
  {
    v41 = *(a2 + 16);
    if (v41 == 3 || !v41)
    {
      v42 = *(a2 + 312) == 0;
      for (j = *(a2 + 344); j != *(a2 + 352); j += 40)
      {
        v42 = (*(j + 8) == 0) & v42;
      }

      if ((*(a2 + 256) & 1) != 0 || !v42)
      {
        operator new();
      }
    }

    if ((*(a2 + 392) & 1) == 0 && *(a2 + 16) != 1 && (!*(a2 + 376) || *(a2 + 396)) && (*(a2 + 400) & 1) == 0)
    {
      v58 = &unk_2852A1CB8;
      v59 = *(a1 + 5200);
      v53 = *(a1 + 5213);
      v60[0] = *(a1 + 5208);
      *(v60 + 5) = v53;
      memset(v61, 0, sizeof(v61));
      sub_240B28D90(v61, *(a1 + 5224), *(a1 + 5232), *(a1 + 5232) - *(a1 + 5224));
      v62 = *(a1 + 5248);
      v63 = *(a1 + 5264);
      v64 = *(a1 + 5280);
      v65 = *(a1 + 5296);
      v54 = *(a1 + 5312);
      v66 = &unk_2852A1260;
      v67 = v54;
      v68 = &unk_2852A1A10;
      v69 = *(a1 + 5328);
      v55 = *(a1 + 5352);
      v70 = &unk_2852A1260;
      v71 = v55;
      v56 = *(a1 + 5368);
      v72 = &unk_2852A1260;
      v73 = v56;
      v57 = *(a1 + 5384);
      v74 = &unk_2852A1260;
      v75 = v57;
      sub_240BF91EC(&v76, a1 + 4496, &v58);
    }
  }

  if ((a4 & 0x10000) != 0)
  {
    v44 = *(a2 + 408);
    v45 = *(v44 + 328);
    v46 = *(v44 + 336);
    while (1)
    {
      if (v45 == v46)
      {
        goto LABEL_82;
      }

      if (*(v45 + 12) == 2)
      {
        break;
      }

      v45 += 96;
    }

    v47 = *(a3 + 88);
    v48 = *(v47 + 328);
    if (*(v47 + 336) != v48)
    {
      v49 = 0;
      v50 = 0;
      do
      {
        if (*(v48 + v49 + 12) == 2)
        {
          operator new();
        }

        ++v50;
        v51 = *(a3 + 88);
        v48 = *(v51 + 328);
        v49 += 96;
      }

      while (v50 < 0xAAAAAAAAAAAAAAABLL * ((*(v51 + 336) - v48) >> 5));
    }
  }

LABEL_82:
  operator new();
}

void sub_240B30500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  v18 = *a15;
  if (*a15)
  {
    *(v15 + 168) = v18;
    operator delete(v18);
  }

  v19 = *v16;
  if (*v16)
  {
    *(v15 + 136) = v19;
    operator delete(v19);
  }

  MEMORY[0x245CCE590](v15, 0x10E1C4001FEA094, a3, a4, a5, a6, a7, a8);
  STACK[0x3E8] = &STACK[0x3C0];
  sub_240B30CC0(&STACK[0x3E8]);
  _Unwind_Resume(a1);
}

uint64_t sub_240B309B8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  sub_240B56E08((a1 + 16));
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  sub_240B29BD0(a1 + 216);
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  return a1;
}

void sub_240B30A4C(_Unwind_Exception *a1)
{
  v4 = v1 + 25;
  v5 = -120;
  do
  {
    sub_240B22320(v4);
    v4 -= 5;
    v5 += 40;
  }

  while (v5);
  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  v6 = *v1;
  *v1 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_240B30ABC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 2) = *(a2 + 2);
  v6 = a2[3];
  *(a1 + 30) = *(a2 + 30);
  a1[3] = v6;
  v7 = *(a2 + 5);
  a1[7] = a2[7];
  *(a1 + 5) = v7;
  if (*(a1 + 87) < 0)
  {
    operator delete(a1[8]);
  }

  v8 = *(a2 + 4);
  a1[10] = a2[10];
  *(a1 + 4) = v8;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  a1[11] = a2[11];
  sub_240B30D80((a1 + 12), (a2 + 12));
  v9 = a1[31];
  *(a1 + 112) = *(a2 + 112);
  v10 = a2[29];
  *(a1 + 237) = *(a2 + 237);
  a1[29] = v10;
  if (v9)
  {
    a1[32] = v9;
    operator delete(v9);
    a1[31] = 0;
    a1[32] = 0;
    a1[33] = 0;
  }

  *(a1 + 31) = *(a2 + 31);
  a1[33] = a2[33];
  a2[31] = 0;
  a2[32] = 0;
  a2[33] = 0;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 19);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 18) = v12;
  *(a1 + 19) = v13;
  *(a1 + 17) = v11;
  a1[42] = a2[42];
  *(a1 + 22) = *(a2 + 22);
  a1[47] = a2[47];
  a1[49] = a2[49];
  a1[51] = a2[51];
  sub_240B30E18(a1 + 52);
  *(a1 + 26) = *(a2 + 26);
  v14 = a2[55];
  a1[54] = a2[54];
  a2[52] = 0;
  a2[53] = 0;
  a2[54] = 0;
  a1[55] = v14;
  return a1;
}

void sub_240B30C38(void ***a1)
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
        v6 = v4 - 5;
        sub_240B22320(v4 - 2);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_240B30CC0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240B30D14(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_240B30D14(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_240B30D80(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 120; i += 40)
  {
    v5 = a1 + i;
    v6 = *(a2 + i);
    *(v5 + 16) = *(a2 + i + 16);
    *v5 = v6;
    v7 = *(a2 + i + 24);
    *(a2 + i + 24) = 0;
    v8 = *(a1 + i + 24);
    *(v5 + 24) = v7;
    if (v8)
    {
      atomic_fetch_add(&qword_27E519020, -*(v8 - 24));
      free(*(v8 - 32));
    }

    *(v5 + 32) = *(a2 + i + 32);
  }

  return a1;
}

void sub_240B30E18(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 5;
        sub_240B22320(v3 - 2);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_240B30E84(void **a1, void *a2, unint64_t *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3[2];
  v7 = a3[3];
  if (v6 > v7)
  {
    sub_240B244C4(a3);
    v9 = *a3;
    v11 = a3[1];
    v10 = a3[2];
    v7 = a3[3];
  }

  else
  {
    v8 = a3[1];
    v9 = *a3 | (*v6 << v8);
    v10 = (v6 + ((63 - v8) >> 3));
    v11 = v8 | 0x38;
    *a3 = v9;
    a3[1] = v8 | 0x38;
    a3[2] = v10;
  }

  v12 = v11 - 1;
  v13 = v9 >> 1;
  *a3 = v9 >> 1;
  a3[1] = v11 - 1;
  if (v9)
  {
    if (v10 > v7)
    {
      sub_240B244C4(a3);
      v19 = *a3;
      v21 = a3[1];
    }

    else
    {
      v19 = (*v10 << v12) | v13;
      v20 = v10 + ((64 - v11) >> 3);
      v21 = v12 | 0x38;
      *a3 = v19;
      a3[1] = v12 | 0x38;
      a3[2] = v20;
    }

    *a3 = v19 >> 2;
    a3[1] = v21 - 2;
    v22 = *a1;
    v23 = v19 & 3;
    if ((v19 & 3) != 0)
    {
      for (i = a1[1]; v22 != i; ++v22)
      {
        v25 = a3[2];
        if (v25 > a3[3])
        {
          sub_240B244C4(a3);
          v27 = *a3;
          v28 = a3[1];
        }

        else
        {
          v26 = a3[1];
          v27 = *a3 | (*v25 << v26);
          a3[2] = v25 + ((63 - v26) >> 3);
          v28 = v26 | 0x38;
          *a3 = v27;
          a3[1] = v26 | 0x38;
        }

        *a3 = v27 >> v23;
        a3[1] = v28 - v23;
        *v22 = v27 & ~(-1 << v23);
      }
    }

    else
    {
      v29 = a1[1] - v22;
      if (v29 >= 1)
      {
        bzero(*a1, v29);
      }
    }

LABEL_59:
    v46 = *a1;
    v47 = a1[1];
    if (*a1 != v47)
    {
      v48 = v46 + 1;
      if (v46 + 1 != v47)
      {
        v49 = *v46;
        v50 = v46 + 1;
        do
        {
          v52 = *v50++;
          v51 = v52;
          v53 = v49 >= v52;
          if (v49 <= v52)
          {
            v49 = v51;
          }

          if (!v53)
          {
            v46 = v48;
          }

          v48 = v50;
        }

        while (v50 != v47);
      }
    }

    v54 = *v46;
    *a2 = v54 + 1;
    sub_240B299F4((v54 >> 6) + 1);
  }

  if (v10 > v7)
  {
    sub_240B244C4(a3);
    v14 = *a3;
    v16 = a3[1];
  }

  else
  {
    v14 = (*v10 << v12) | v13;
    v15 = v10 + ((64 - v11) >> 3);
    v16 = v12 | 0x38;
    *a3 = v14;
    a3[1] = v12 | 0x38;
    a3[2] = v15;
  }

  *a3 = v14 >> 1;
  a3[1] = v16 - 1;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  memset(v62, 0, sizeof(v62));
  sub_240B2BCB4(v66);
  v66[6] = 0;
  memset(__p, 0, sizeof(__p));
  v17 = sub_240B2BD40(a3, 1uLL, v62, __p, (a1[1] - *a1) < 3);
  if (v17)
  {
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (*(&v64 + 1))
    {
      *&v65 = *(&v64 + 1);
      operator delete(*(&v64 + 1));
    }

    if (v63)
    {
      *(&v63 + 1) = v63;
      operator delete(v63);
    }

    v58 = &v62[1];
    sub_240B23988(&v58);
    v18 = v62[0];
    v62[0] = 0;
    if (v18)
    {
      atomic_fetch_add(&qword_27E519020, -*(v18 - 24));
      free(*(v18 - 32));
    }

    return v17;
  }

  sub_240B23A18(&v58, v62, a3, 0);
  v30 = *a1;
  if (a1[1] == *a1)
  {
    LODWORD(v35) = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = __p[0];
    do
    {
      v34 = sub_240B24020(&v58, *v33, a3);
      *(*a1 + v31) = v34;
      if (v32 <= v34)
      {
        v32 = v34;
      }

      ++v31;
      v30 = *a1;
      v35 = a1[1] - *a1;
    }

    while (v31 < v35);
    if (v32 >= 0x100)
    {
      goto LABEL_68;
    }
  }

  if (v59 == 1245184)
  {
    if (v14)
    {
      v36 = 0;
      v37 = xmmword_240C11410;
      v38.i64[0] = 0x1010101010101010;
      v38.i64[1] = 0x1010101010101010;
      do
      {
        *&v67[v36] = v37;
        v36 += 16;
        v37 = vaddq_s8(v37, v38);
      }

      while (v36 != 256);
      if (v35 >= 1)
      {
        v39 = 0;
        v40 = v35 & 0x7FFFFFFF;
        do
        {
          v41 = v30[v39];
          v42 = v67[v41];
          v30[v39] = v42;
          if (v41)
          {
            if (v41 > 3)
            {
              v43 = v41 & 0xF;
              if ((v41 & 0xF) == 0 || (*&v67[(v41 - v43) + 1] = vbslq_s8(vcgtq_u8(xmmword_240C11530, vdupq_n_s8(v43)), *&v67[(v41 - v43) + 1], *&v67[(v41 - v43)]), LODWORD(v41) = v41 - v43, v41))
              {
                do
                {
                  LODWORD(v41) = v41 - 16;
                  *&v67[v41 + 1] = *&v67[v41];
                }

                while (v41);
              }
            }

            else
            {
              do
              {
                v67[v41] = v67[(v41 - 1)];
                --v41;
              }

              while (v41);
            }

            v67[0] = v42;
          }

          ++v39;
        }

        while (v39 != v40);
      }
    }

    v44 = v60;
    v60 = 0;
    if (v44)
    {
      atomic_fetch_add(&qword_27E519020, -*(v44 - 24));
      free(*(v44 - 32));
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (*(&v64 + 1))
    {
      *&v65 = *(&v64 + 1);
      operator delete(*(&v64 + 1));
    }

    if (v63)
    {
      *(&v63 + 1) = v63;
      operator delete(v63);
    }

    v58 = &v62[1];
    sub_240B23988(&v58);
    v45 = v62[0];
    v62[0] = 0;
    if (v45)
    {
      atomic_fetch_add(&qword_27E519020, -*(v45 - 24));
      free(*(v45 - 32));
    }

    goto LABEL_59;
  }

LABEL_68:
  v55 = v60;
  v60 = 0;
  if (v55)
  {
    atomic_fetch_add(&qword_27E519020, -*(v55 - 24));
    free(*(v55 - 32));
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*(&v64 + 1))
  {
    *&v65 = *(&v64 + 1);
    operator delete(*(&v64 + 1));
  }

  if (v63)
  {
    *(&v63 + 1) = v63;
    operator delete(v63);
  }

  v58 = &v62[1];
  sub_240B23988(&v58);
  v56 = v62[0];
  v62[0] = 0;
  if (v56)
  {
    atomic_fetch_add(&qword_27E519020, -*(v56 - 24));
    free(*(v56 - 32));
  }

  return 1;
}

void sub_240B314D0(_Unwind_Exception *a1)
{
  if (STACK[0x258])
  {
    operator delete(STACK[0x258]);
  }

  sub_240B23FBC(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void sub_240B31560(uint64_t a1, unint64_t a2)
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

uint64_t sub_240B31610(const void *a1, unint64_t a2, uint64_t a3, int a4, unsigned int a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  if ((a8 == 0) == (*(a10 + 8) != 0))
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_240B228BC();
  }

  return 1;
}

void sub_240B31B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51)
{
  if (a36)
  {
    atomic_fetch_add(&qword_27E519020, -*(a36 - 24));
    free(*(a36 - 32));
  }

  for (i = 144; i != -16; i -= 40)
  {
    sub_240B22320((v51 - 256 + i));
  }

  if (a45)
  {
    (*(a46 + 16))();
  }

  *(v51 - 256) = &a47;
  sub_240B31E8C((v51 - 256));
  if (__p)
  {
    a51 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_240B31C70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (sub_240B328E8(v8, 1uLL))
    {
      return v5;
    }

    for (i = 0; i != v4; ++i)
    {
      sub_240B32AD0(v8, i, 0);
    }

    return 0;
  }

  return (*a1)(a1[1], v8, sub_240B328E8, sub_240B32AD0, 0, a2) != 0;
}

BOOL sub_240B31D24(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
    if (sub_240B32644(v8, 1uLL))
    {
      return v5;
    }

    for (i = 0; i != v4; ++i)
    {
      sub_240B32720(v8, i, 0);
    }

    return 0;
  }

  return (*a1)(a1[1], v8, sub_240B32644, sub_240B32720, 0, a2) != 0;
}

BOOL sub_240B31DD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (sub_240B31F38(v8, 1uLL))
    {
      return v5;
    }

    for (i = 0; i != v4; ++i)
    {
      sub_240B32120(v8, i, 0);
    }

    return 0;
  }

  return (*a1)(a1[1], v8, sub_240B31F38, sub_240B32120, 0, a2) != 0;
}

void sub_240B31E8C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240B31EE0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240B31EE0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
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

  a1[1] = v3;
}

uint64_t sub_240B31F38(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = **(*a1 + 8) * a2;
  LODWORD(v24) = ***a1;
  *(&v24 + 4) = __PAIR64__(v24, v4);
  HIDWORD(v24) = v4;
  v5 = v24;
  if (v24)
  {
    v6 = 4 * v24 + 139;
    if ((v6 & 0x780) != 0)
    {
      v5 = v6 & 0x7FFFFFF80;
    }

    else
    {
      v5 = (v6 & 0x7FFFFFF80) + 128;
    }
  }

  v25 = v5;
  v26 = 0;
  v27 = 4;
  if (sub_240B597F0(&v24))
  {
    v7 = v26;
    v26 = 0;
    if (v7)
    {
      atomic_fetch_add(&qword_27E519020, -*(v7 - 24));
      free(*(v7 - 32));
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v25;
  v10 = v26;
  v11 = v27;
  v12 = *(v3 + 16);
  *v12 = v24;
  v13 = *(v12 + 24);
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  if (v13)
  {
    atomic_fetch_add(&qword_27E519020, -*(v13 - 24));
    free(*(v13 - 32));
  }

  *(v12 + 32) = v11;
  v14 = *(v3 + 24);
  if (*(*v14 + 8))
  {
    v15 = *(v14 + 8);
    v18 = (**v14)(*(*v14 + 24), v2, **(v14 + 16));
    v19 = *v15;
    *v15 = v18;
    if (v19)
    {
      (*(v15[1] + 16))(v19, v16, v17);
    }

    if (!**(v14 + 8))
    {
      return 0xFFFFFFFFLL;
    }

    sub_240B323EC(*(v14 + 24), v2);
    if (v2)
    {
      v20 = 0;
      do
      {
        v21 = **(v14 + 24) + v20;
        v22 = **(v14 + 16);
        v23 = *(v21 + 8) - *v21;
        if (v22 <= v23)
        {
          if (v22 < v23)
          {
            *(v21 + 8) = *v21 + v22;
          }
        }

        else
        {
          sub_240B26918(v21, v22 - v23);
        }

        v20 += 24;
        --v2;
      }

      while (v2);
    }
  }

  return 0;
}

unint64_t *sub_240B32120(unint64_t *result, unsigned int a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = result[1];
  if (*(*v3 + 8))
  {
    v4 = *(**(v3 + 8) + 24 * a3);
  }

  else
  {
    v4 = (**(v3 + 16) + **(v3 + 24) * a2);
  }

  memset(v51, 0, sizeof(v51));
  v5 = **(v3 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = **(v3 + 40);
    do
    {
      v8 = *(v7 + 8 * v6);
      if (v8)
      {
        v9 = *(v8 + 24) + *(v8 + 16) * a2;
      }

      else
      {
        v9 = *(*(v3 + 48) + 24);
      }

      *(v51 + v6++) = v9;
    }

    while (v5 != v6);
    v10 = 0;
    v49 = 0u;
    v50 = 0u;
    __asm { FMOV            V1.4S, #1.0 }

    do
    {
      v16 = v5 * a3;
      v17 = *(v3 + 56);
      result = *(v3 + 64);
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      *(&v49 + v10) = v18 + v19 * (v5 * a3 + v10);
      v20 = *result;
      if (*result)
      {
        v21 = 0;
        v22 = *(v51 + v10);
        result = *(v3 + 72);
        v23 = vld1q_dup_f32(result);
        v24 = (v18 + v19 * (v10 + v16));
        do
        {
          v25 = *v22++;
          *v24++ = vcvtnq_s32_f32(vmulq_f32(v23, vminnmq_f32(vmaxnmq_f32(v25, 0), _Q1)));
          v21 += 4;
        }

        while (v21 < v20);
        v5 = **(v3 + 32);
      }

      ++v10;
    }

    while (v10 < v5);
  }

  else
  {
    v49 = 0uLL;
    v50 = 0uLL;
  }

  if (**(v3 + 80) >= 9uLL)
  {
    v33 = **(v3 + 64);
    if (**(v3 + 88) == 1)
    {
      if (v33)
      {
        v34 = 0;
        v35 = v4 + 1;
        do
        {
          if (v5)
          {
            v36 = &v49;
            v37 = v35;
            v38 = v5;
            do
            {
              v39 = *v36++;
              *(v37 - 1) = *(v39 + 4 * v34);
              v37 += 2;
              --v38;
            }

            while (v38);
          }

          ++v34;
          v35 += 2 * v5;
        }

        while (v34 != v33);
      }
    }

    else if (v33)
    {
      v40 = 0;
      v41 = v4 + 1;
      do
      {
        if (v5)
        {
          v42 = &v49;
          v43 = v41;
          v44 = v5;
          do
          {
            v45 = *v42++;
            *(v43 - 1) = bswap32(*(v45 + 4 * v40)) >> 16;
            v43 += 2;
            --v44;
          }

          while (v44);
        }

        ++v40;
        v41 += 2 * v5;
      }

      while (v40 != v33);
    }
  }

  else
  {
    v26 = **(v3 + 64);
    if (v26)
    {
      v27 = 0;
      v28 = v4;
      do
      {
        if (v5)
        {
          v29 = &v49;
          v30 = v28;
          v31 = v5;
          do
          {
            v32 = *v29++;
            *v30++ = *(v32 + 4 * v27);
            --v31;
          }

          while (v31);
        }

        ++v27;
        v28 += v5;
      }

      while (v27 != v26);
    }
  }

  v46 = *(*v3 + 8);
  if (v46)
  {
    v47 = **(v3 + 96);
    v48 = **(v3 + 64);

    return v46(v47, a3, 0, a2, v48, v4);
  }

  return result;
}

void sub_240B323EC(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = &v3[24 * a2];
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 2) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v16 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B32588(v10);
      }

      sub_240B228BC();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = &v4[v15];
  }
}

void sub_240B32588(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B325E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240B32644(uint64_t **a1, unint64_t a2)
{
  v2 = **a1;
  if (!*(*v2 + 8))
  {
    return 0;
  }

  v3 = a2;
  v4 = *(v2 + 8);
  v5 = (**v2)(*(*v2 + 24), a2, **(v2 + 16));
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    (*(v4[1] + 16))();
  }

  if (**(v2 + 8))
  {
    sub_240B323EC(*(v2 + 24), v3);
    if (v3)
    {
      v7 = 0;
      do
      {
        v8 = **(v2 + 24) + v7;
        v9 = **(v2 + 16);
        v10 = *(v8 + 8) - *v8;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            *(v8 + 8) = *v8 + v9;
          }
        }

        else
        {
          sub_240B26918(v8, v9 - v10);
        }

        v7 += 24;
        --v3;
      }

      while (v3);
    }

    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_240B32720(uint64_t result, unsigned int a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(result + 8);
  if (*(*v3 + 8))
  {
    v4 = *(**(v3 + 8) + 24 * a3);
  }

  else
  {
    v4 = (**(v3 + 16) + **(v3 + 24) * a2);
  }

  memset(v26, 0, sizeof(v26));
  v5 = **(v3 + 32);
  if (v5)
  {
    v6 = **(v3 + 40);
    v7 = v26;
    v8 = **(v3 + 32);
    do
    {
      if (*v6)
      {
        v9 = *(*v6 + 24) + *(*v6 + 16) * a2;
      }

      else
      {
        v9 = *(*(v3 + 48) + 24);
      }

      *v7++ = v9;
      v6 += 8;
      --v8;
    }

    while (v8);
  }

  v10 = **(v3 + 64);
  if (**(v3 + 56))
  {
    if (v10)
    {
      v11 = 0;
      v12 = v4;
      do
      {
        if (v5)
        {
          v13 = v26;
          v14 = v12;
          v15 = v5;
          do
          {
            v16 = *v13++;
            *v14++ = *(v16 + 4 * v11);
            --v15;
          }

          while (v15);
        }

        ++v11;
        v12 += v5;
      }

      while (v11 != v10);
    }
  }

  else if (v10)
  {
    v17 = 0;
    v18 = v4;
    do
    {
      if (v5)
      {
        v19 = v26;
        v20 = v18;
        v21 = v5;
        do
        {
          v22 = *v19++;
          *v20++ = bswap32(*(v22 + 4 * v17));
          --v21;
        }

        while (v21);
      }

      ++v17;
      v18 += v5;
    }

    while (v17 != v10);
  }

  v23 = *(*v3 + 8);
  if (v23)
  {
    v24 = **(v3 + 72);
    v25 = **(v3 + 64);

    return v23(v24, a3, 0, a2, v25, v4);
  }

  return result;
}

uint64_t sub_240B328E8(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = **(*a1 + 8) * a2;
  LODWORD(v24) = ***a1;
  *(&v24 + 4) = __PAIR64__(v24, v4);
  HIDWORD(v24) = v4;
  v5 = v24;
  if (v24)
  {
    v6 = 2 * v24 + 141;
    if ((v6 & 0x780) != 0)
    {
      v5 = v6 & 0x3FFFFFF80;
    }

    else
    {
      v5 = (v6 & 0x3FFFFFF80) + 128;
    }
  }

  v25 = v5;
  v26 = 0;
  v27 = 2;
  if (sub_240B597F0(&v24))
  {
    v7 = v26;
    v26 = 0;
    if (v7)
    {
      atomic_fetch_add(&qword_27E519020, -*(v7 - 24));
      free(*(v7 - 32));
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v25;
  v10 = v26;
  v11 = v27;
  v12 = *(v3 + 16);
  *v12 = v24;
  v13 = *(v12 + 24);
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  if (v13)
  {
    atomic_fetch_add(&qword_27E519020, -*(v13 - 24));
    free(*(v13 - 32));
  }

  *(v12 + 32) = v11;
  v14 = *(v3 + 24);
  if (*(*v14 + 8))
  {
    v15 = *(v14 + 8);
    v18 = (**v14)(*(*v14 + 24), v2, **(v14 + 16));
    v19 = *v15;
    *v15 = v18;
    if (v19)
    {
      (*(v15[1] + 16))(v19, v16, v17);
    }

    if (!**(v14 + 8))
    {
      return 0xFFFFFFFFLL;
    }

    sub_240B323EC(*(v14 + 24), v2);
    if (v2)
    {
      v20 = 0;
      do
      {
        v21 = **(v14 + 24) + v20;
        v22 = **(v14 + 16);
        v23 = *(v21 + 8) - *v21;
        if (v22 <= v23)
        {
          if (v22 < v23)
          {
            *(v21 + 8) = *v21 + v22;
          }
        }

        else
        {
          sub_240B26918(v21, v22 - v23);
        }

        v20 += 24;
        --v2;
      }

      while (v2);
    }
  }

  return 0;
}

unint64_t *sub_240B32AD0(unint64_t *result, unsigned int a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = result[1];
  memset(v34, 0, sizeof(v34));
  v4 = **v3;
  if (v4)
  {
    v5 = 0;
    v6 = **(v3 + 8);
    do
    {
      v7 = *(v6 + 8 * v5);
      if (v7)
      {
        v8 = *(v7 + 24) + *(v7 + 16) * a2;
      }

      else
      {
        v8 = *(*(v3 + 16) + 24);
      }

      *(v34 + v5++) = v8;
    }

    while (v4 != v5);
    v9 = 0;
    v32 = 0u;
    v33 = 0u;
    do
    {
      v10 = v4 * a3;
      v11 = *(v3 + 24);
      result = *(v3 + 32);
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      *(&v32 + v9) = v12 + v13 * (v4 * a3 + v9);
      v14 = *result;
      if (*result)
      {
        v15 = 0;
        v16 = *(v34 + v9);
        v17 = (v12 + v13 * (v9 + v10));
        do
        {
          v18 = *v16++;
          *v17++ = vcvt_f16_f32(v18);
          v15 += 4;
        }

        while (v15 < v14);
        v4 = **v3;
      }

      ++v9;
    }

    while (v9 < v4);
  }

  else
  {
    v32 = 0uLL;
    v33 = 0uLL;
  }

  if (*(*(v3 + 40) + 8))
  {
    v19 = *(**(v3 + 48) + 24 * a3);
  }

  else
  {
    v19 = **(v3 + 56) + **(v3 + 64) * a2;
  }

  v20 = **(v3 + 32);
  if (v20)
  {
    v21 = 0;
    v22 = v4;
    do
    {
      if (v22)
      {
        for (i = 0; i < v22; ++i)
        {
          *(v19 + 2 * (i + v21 * v22)) = *(*(&v32 + i) + 2 * v21);
          v22 = **v3;
        }

        v20 = **(v3 + 32);
        v4 = **v3;
      }

      ++v21;
    }

    while (v21 < v20);
    v24 = 2 * v20;
  }

  else
  {
    v24 = 0;
  }

  if (**(v3 + 72))
  {
    v25 = v24 * v4;
    if (v25)
    {
      for (j = 0; j < v25; j += 2)
      {
        v27 = (v19 + j);
        v28 = *(v19 + j);
        *v27 = *(v19 + j + 1);
        v27[1] = v28;
      }
    }
  }

  v29 = *(*(v3 + 40) + 8);
  if (v29)
  {
    v30 = **(v3 + 80);
    v31 = **(v3 + 32);

    return v29(v30, a3, 0, a2, v31, v19);
  }

  return result;
}

unsigned int *sub_240B32D14(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = result[1];
  if (*result)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  v8 = 4 * *result;
  do
  {
    if ((v7 & 1) == 0)
    {
      v9 = 0;
      v10 = a2 + 40 * v4;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      do
      {
        result = memcpy(v11, (*&v3[10 * v4 + 6] + *&v3[10 * v4 + 4] * v9++), v8);
        v11 += v12;
      }

      while (v5 != v9);
    }

    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t sub_240B32DB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_240B33404(&v29, a1, a6, a2);
  v17 = a3;
  v18 = a4;
  sub_240B335C4(v21, &v17);
  if (!sub_240B3362C(&v29, v21, a5, 0) && !sub_240B33DB0(&v29))
  {
    v9 = 8 * (v23 - v25 + v26) - v22;
    v28 = v9;
    if (v9 <= 8 * (v24 - v25) + 64)
    {
      v10 = v9 >> 3;
      v27 = 1;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      memset(v16, 0, sizeof(v16));
      if (v30 == v31)
      {
        v12 = sub_240B34598(v29.i64, 0, 0, 0) == 0;
      }

      else
      {
        v11 = *v30;
        if (*v30 + v10 <= a4)
        {
          v15[0] = (a3 + v10);
          v15[1] = v11;
          operator new();
        }

        v12 = 0;
      }

      v15[0] = v16;
      sub_240B374BC(v15);
      if (v20)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (v13 && !sub_240B37540(&v29))
      {
        *(a5 + 440) = v10;
      }

      v16[0] = &v17;
      sub_240B375DC(v16);
    }
  }

  return sub_240B37684(&v29);
}

void sub_240B33340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, char **a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  if (__p)
  {
    operator delete(__p);
  }

  a15 = &a17;
  sub_240B374BC(&a15);
  a17 = &a20;
  sub_240B375DC(&a17);
  sub_240B37684(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240B33404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_240B56E88(a1 + 48, a3);
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 840) = 8;
  *(a1 + 848) = 0;
  *(a1 + 856) = 1;
  *(a1 + 864) = 0;
  *(a1 + 880) = 0;
  *(a1 + 872) = 0;
  *(a1 + 1034) = 1;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0;
  sub_240B2BCB4(a1 + 1152);
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  sub_240B63BBC(a1 + 1232);
  *(a1 + 1328) = 257;
  *(a1 + 1400) = 0;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1410) = 1;
  *(a1 + 1416) = 0;
  *(a1 + 1424) = 1;
  *(a1 + 1484) = 0;
  *(a1 + 1468) = 0;
  *(a1 + 1476) = 0;
  *(a1 + 1460) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1456) = 0;
  return a1;
}

void sub_240B33514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = v10[151];
  if (v14)
  {
    v10[152] = v14;
    operator delete(v14);
  }

  sub_240B23FBC((v10 + 133));
  v15 = v10[130];
  if (v15)
  {
    v10[131] = v15;
    operator delete(v15);
  }

  a10 = v10 + 108;
  sub_240B37900(&a10);
  sub_240B3CF1C(v11);
  sub_240B3CEA4((v10 + 6));
  v16 = *v12;
  if (*v12)
  {
    v10[3] = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B335C4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *a2;
  v4 = *a2 + *(a2 + 8) - 8;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (v3 > v4)
  {
    sub_240B244C4(a1);
  }

  else
  {
    v5 = *v3;
    *(a1 + 16) = v3 + 7;
    *a1 = v5;
    *(a1 + 8) = 56;
  }

  return a1;
}

uint64_t sub_240B3362C(uint64x2_t *a1, unint64_t *a2, uint64_t a3, char a4)
{
  a1[48].i64[0] = a3;
  sub_240B699B4(&v71);
  v8 = a1->i64[0];
  *(v8 + 208) = v71.i32[0];
  v9 = v71.i64[1];
  v71.i64[1] = 0;
  sub_240B3ABD8((v8 + 216), v9);
  *(v8 + 224) = v72;
  memcpy((v8 + 240), v73, 0x2B0uLL);
  sub_240B3CB68((v8 + 928));
  *(v8 + 928) = v74;
  *(v8 + 944) = v75;
  v75 = 0;
  v74 = 0u;
  *&v76[0] = &v74;
  sub_240B3CBC8(v76);
  sub_240B38BD0(&v71.i64[1]);
  a1[38].i8[0] = a4;
  v10 = sub_240B546E4(a2, a1[3].i64);
  if (v10)
  {
    return v10;
  }

  sub_240B3CC4C(&v71, a1[3].i64);
  v11 = v73[5];
  a1[45] = v73[4];
  a1[46] = v11;
  a1[47] = v73[6];
  v12 = v73[1];
  a1[41] = v73[0];
  a1[42] = v12;
  v13 = v73[3];
  a1[43] = v73[2];
  a1[44] = v13;
  v14 = v72;
  a1[39] = v71;
  a1[40] = v14;
  v15 = a1[10].u32[0];
  v16 = a1[46].i64[0];
  v72 = 0u;
  memset(v73, 0, 88);
  v71 = 0u;
  sub_240B30D80(a3 + 96, &v71);
  for (i = 13; i != -2; i -= 5)
  {
    sub_240B22320(&v71.i64[i]);
  }

  v19 = *(a3 + 416);
  v18 = *(a3 + 424);
  if (v18 != v19)
  {
    do
    {
      v20 = v18 - 40;
      sub_240B22320((v18 - 16));
      v18 = v20;
    }

    while (v20 != v19);
  }

  *(a3 + 424) = v19;
  v21 = a1[26].i32[2];
  *(a3 + 48) = v21;
  if ((a1[38].i8[0] & 1) == 0 && ((a1[27].i8[8] & 1) != 0 || v21) && ((v22 = a1[4].i32[0], v22 == 3) || !v22))
  {
    v23 = a1->i64[0];
    *(v23 + 4456) = *(a1->i64[0] + 4456) + 1;
    *(v23 + 4464) = 0;
  }

  else
  {
    ++*(a1->i64[0] + 4464);
  }

  if (v16 == 1 && v15 == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = a1[46].i64[1] + v16 * v15 + 2;
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  __p = 0;
  v66 = 0;
  v67 = 0;
  if (v25 > 0x10000)
  {
    v10 = 1;
    goto LABEL_42;
  }

  v69 = 0;
  sub_240B245C8(&v68, v25);
  v27 = a2[1];
  v26 = a2[2];
  v28 = a2[3];
  if (8 * (v26 + a2[5] - a2[4]) - v27 < 8 * (v28 - a2[4]) + 64)
  {
    if (v26 > v28)
    {
      sub_240B244C4(a2);
      v29 = *a2;
      v30 = a2[1];
    }

    else
    {
      v29 = *a2 | (*v26 << v27);
      a2[2] = v26 + ((63 - v27) >> 3);
      v30 = v27 | 0x38;
    }

    v31 = v30 - 1;
    *a2 = v29 >> 1;
    a2[1] = v31;
    if (v29)
    {
      v39 = a2[4];
      v40 = 8 * (a2[3] - v39) + 64;
      v41 = 8 * (a2[2] - v39 + a2[5]) - v31;
      v35 = v40 >= v41;
      v42 = v40 - v41;
      if (!v35 || 12 * v25 > v42)
      {
        goto LABEL_38;
      }

      sub_240B245C8(&__p, v25);
      v45 = __p;
      memset(v81, 0, 24);
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
      memset(v76, 0, sizeof(v76));
      sub_240B2BCB4(v80);
      v80[6] = 0;
      v10 = sub_240B2BD40(a2, 8uLL, v76, v81, 0);
      if (!v10)
      {
        sub_240B23A18(&v71, v76, a2, 0);
        v46 = sub_240B23CB8(0, v25, v45, a2, &v71, v81);
        v10 = v46 ? v46 : (v72.i32[1] != 1245184);
        v47 = *&v73[1];
        *&v73[1] = 0;
        if (v47)
        {
          atomic_fetch_add(&qword_27E519020, -*(v47 - 24));
          free(*(v47 - 32));
        }
      }

      if (*(&v78 + 1))
      {
        *&v79 = *(&v78 + 1);
        operator delete(*(&v78 + 1));
      }

      if (v77)
      {
        *(&v77 + 1) = v77;
        operator delete(v77);
      }

      v71.i64[0] = v76 + 8;
      sub_240B23988(&v71);
      v48 = *&v76[0];
      *&v76[0] = 0;
      if (v48)
      {
        atomic_fetch_add(&qword_27E519020, -*(v48 - 24));
        free(*(v48 - 32));
      }

      if (v81[0])
      {
        operator delete(v81[0]);
      }

      if (v10)
      {
        goto LABEL_39;
      }
    }

    v10 = sub_240B5081C(a2);
    if (v10)
    {
LABEL_39:
      v43 = __p;
      goto LABEL_40;
    }

    v32 = a2[4];
    v33 = 8 * (a2[3] - v32) + 64;
    v34 = 8 * (a2[2] - v32 + a2[5]) - a2[1];
    v35 = v33 >= v34;
    v36 = v33 - v34;
    if (v35 && 12 * v25 <= v36)
    {
      if (v25)
      {
        v37 = v68;
        v38 = v25;
        do
        {
          *v37++ = sub_240B54F60(0x800D00000009, 0x808801D00088015, a2);
          --v38;
        }

        while (v38);
      }

      if (sub_240B5081C(a2))
      {
        v10 = 1;
        goto LABEL_39;
      }

      if (8 * (a2[2] - a2[4] + a2[5]) - a2[1] <= 8 * (a2[3] - a2[4]) + 64)
      {
        v43 = __p;
        v49 = v66;
        v50 = a1[1].i64[0];
        v51 = a1[1].i64[1];
        v52 = (v51 - v50) >> 4;
        if (v25 <= v52)
        {
          if (v25 < v52)
          {
            a1[1].i64[1] = v50 + 16 * v25;
          }

          a1[2].i64[1] = 0;
          v58 = &a1[2].i64[1];
          if (!v25)
          {
LABEL_84:
            if (sub_240B2AC6C(&a1[5].i64[1]) || a1[4].i8[8] < 0 || a1[3].i32[3])
            {
              v10 = 0;
LABEL_40:
              if (v43)
              {
                operator delete(v43);
              }

              goto LABEL_42;
            }

LABEL_83:
            v10 = 1;
            goto LABEL_40;
          }
        }

        else
        {
          v53 = v25 - v52;
          v54 = a1[2].i64[0];
          if (v53 > (v54 - v51) >> 4)
          {
            v55 = v54 - v50;
            v56 = v55 >> 3;
            if (v55 >> 3 <= v25)
            {
              v56 = v25;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFF0)
            {
              v57 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v57 = v56;
            }

            if (!(v57 >> 60))
            {
              operator new();
            }

            sub_240B2291C();
          }

          bzero(a1[1].i64[1], 16 * v53);
          a1[1].i64[1] = v51 + 16 * v53;
          a1[2].i64[1] = 0;
          v58 = &a1[2].i64[1];
          v50 = a1[1].i64[0];
        }

        v59 = 0;
        v60 = 0;
        v61 = v68;
        v62 = v50;
        while (1)
        {
          v63 = v61[v60];
          *v62 = v63;
          v64 = v60;
          if (v43 != v49)
          {
            v64 = v43[v60];
          }

          *(v50 + 16 * v64 + 8) = v60;
          v35 = __CFADD__(v59, v63);
          v59 += v63;
          if (v35)
          {
            goto LABEL_83;
          }

          *v58 = v59;
          ++v60;
          v62 += 2;
          if (v25 == v60)
          {
            if (__CFADD__(v59, (8 * (a2[2] - a2[4] + a2[5]) - a2[1]) >> 3))
            {
              goto LABEL_83;
            }

            goto LABEL_84;
          }
        }
      }
    }

LABEL_38:
    v10 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v10 = 0xFFFFFFFFLL;
LABEL_42:
  if (v68)
  {
    operator delete(v68);
  }

  return v10;
}

void sub_240B33CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B33DB0(uint64_t a1)
{
  v2 = *a1;
  **a1 = *(a1 + 456);
  sub_240B3CC4C(&v60, a1 + 48);
  *(v2 + 11) = v64;
  *(v2 + 13) = v65;
  *(v2 + 15) = v66;
  *(v2 + 17) = v67;
  *(v2 + 3) = v61;
  *(v2 + 5) = *v62;
  *(v2 + 7) = *&v62[16];
  *(v2 + 9) = v63;
  *(v2 + 1) = v60;
  v2[157] = v2;
  sub_240B221C8(&v54, v2[9], v2[10]);
  v3 = v59;
  if (v59)
  {
    return v3;
  }

  v5 = v55;
  v4 = v56;
  v56 = 0;
  v6 = v57;
  v60 = v58;
  *(v2 + 19) = v54;
  v7 = v2[22];
  v2[21] = v5;
  v2[22] = v4;
  if (v7)
  {
    atomic_fetch_add(&qword_27E519020, -*(v7 - 24));
    free(*(v7 - 32));
  }

  v2[23] = v6;
  *(v2 + 12) = v60;
  sub_240B3AC2C(&v49, v2[9], v2[10]);
  v3 = v53;
  if (!v53)
  {
    v8 = v50;
    v9 = v51;
    v51 = 0;
    v10 = v52;
    *(v2 + 64) = v49;
    v2[130] = v8;
    v11 = v2[131];
    v2[131] = v9;
    if (v11)
    {
      atomic_fetch_add(&qword_27E519020, -*(v11 - 24));
      free(*(v11 - 32));
    }

    v2[132] = v10;
    sub_240B22220(&v44, v2[9], v2[10]);
    v3 = v48;
    if (v48)
    {
      goto LABEL_36;
    }

    v12 = v46;
    v46 = 0;
    v13 = v47;
    v2[135] = v45;
    *(v2 + 133) = v44;
    v14 = v2[136];
    v2[136] = v12;
    if (v14)
    {
      atomic_fetch_add(&qword_27E519020, -*(v14 - 24));
      free(*(v14 - 32));
    }

    v2[137] = v13;
    sub_240B23694(&v60, v2[1], v2[2], 1);
    v3 = DWORD2(v66);
    if (DWORD2(v66) || (v15 = *(&v61 + 1), v16 = *v62, v18 = *(&v63 + 1), v17 = v63, v19 = v61, *(&v61 + 1) = 0, *&v63 = 0, *(v2 + 69) = v60, v2[140] = v19, sub_240B2453C(v2 + 141, v15), v2[142] = v16, *(v2 + 143) = *&v62[8], v2[145] = *&v62[24], sub_240B2453C(v2 + 146, v17), v2[147] = v18, v20 = v65, *(v2 + 74) = v64, *(v2 + 75) = v20, v2[152] = v66, v2[195] = 393984, sub_240B22220(&v39, v2[9], v2[10]), (v3 = v43) != 0))
    {
LABEL_33:
      sub_240B6701C(&v60);
      if (!v48)
      {
        v30 = v46;
        v46 = 0;
        if (v30)
        {
          atomic_fetch_add(&qword_27E519020, -*(v30 - 24));
          free(*(v30 - 32));
        }
      }

LABEL_36:
      if (!v53)
      {
        v31 = v51;
        v51 = 0;
        if (v31)
        {
          atomic_fetch_add(&qword_27E519020, -*(v31 - 24));
          free(*(v31 - 32));
        }
      }

      goto LABEL_39;
    }

    v21 = v41;
    v41 = 0;
    v22 = v42;
    v2[201] = v40;
    *(v2 + 199) = v39;
    sub_240B2453C(v2 + 202, v21);
    v2[203] = v22;
    if ((*(a1 + 72) & 0x20) != 0)
    {
      if (*(a1 + 452) == 4)
      {
        goto LABEL_29;
      }

      v37 = 0;
      v36 = 0u;
      memset(v35, 0, sizeof(v35));
      sub_240B30D80((v2 + 204), v35);
      for (i = 104; i != -16; i -= 40)
      {
        sub_240B22320((v35 + i));
      }

      v27 = &v2[15 * *(a1 + 452) + 237];
      v2[219] = v27;
      if (!*v27)
      {
LABEL_29:
        v3 = 1;
        goto LABEL_30;
      }

      if (*(v2 + 398) && *(v2 + 399))
      {
        v28 = 0;
        do
        {
          bzero((v2[202] + v2[201] * v28++), *(v2 + 398));
        }

        while (v28 < *(v2 + 399));
      }
    }

    else
    {
      sub_240B2A11C(v35, v2[9], v2[10]);
      v3 = v38;
      if (v38)
      {
LABEL_30:
        if (!v43)
        {
          v29 = v41;
          v41 = 0;
          if (v29)
          {
            atomic_fetch_add(&qword_27E519020, -*(v29 - 24));
            free(*(v29 - 32));
          }
        }

        goto LABEL_33;
      }

      sub_240B2A358(v34, v35);
      sub_240B30D80((v2 + 204), v34);
      for (j = 104; j != -16; j -= 40)
      {
        sub_240B22320(&v34[j]);
      }

      v2[219] = v2 + 204;
      if (!v38)
      {
        v24 = &v36 + 1;
        v25 = -120;
        do
        {
          sub_240B22320(v24);
          v24 -= 5;
          v25 += 40;
        }

        while (v25);
      }
    }

    v3 = 0;
    goto LABEL_30;
  }

LABEL_39:
  if (!v59)
  {
    v32 = v56;
    v56 = 0;
    if (v32)
    {
      atomic_fetch_add(&qword_27E519020, -*(v32 - 24));
      free(*(v32 - 32));
    }
  }

  if (!v3)
  {
    sub_240B3C9CC(*a1, (a1 + 48));
  }

  return v3;
}