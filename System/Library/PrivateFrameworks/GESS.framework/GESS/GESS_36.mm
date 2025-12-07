uint64_t sub_24BF73F4C(unsigned int a1)
{
  if (!HIWORD(a1))
  {
    LODWORD(v1) = 0;
    v2 = 0;
    v3 = a1 >> 8;
    while (1)
    {
      v4 = &unk_24BFF5237 + 2 * v2;
      v5 = *v4;
      v6 = v3 == v5;
      if (v3 < v5)
      {
LABEL_12:
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = byte_24BFF54A6[v10];
          if (byte_24BFF54A6[v10] < 0)
          {
            v12 = byte_24BFF54A6[++v10] | ((v12 & 0x7F) << 8);
          }

          a1 -= v12;
          if ((a1 & 0x80000000) != 0)
          {
            break;
          }

          v11 ^= 1u;
          ++v10;
        }

        while (v10 < 0x135);
        return v11 & 1;
      }

      v7 = v4[1];
      v8 = (v1 + v7);
      if (v6 && v7 != 0)
      {
        break;
      }

LABEL_11:
      ++v2;
      LODWORD(v1) = v8;
      if (v2 == 41)
      {
        goto LABEL_12;
      }
    }

    v1 = v1;
    while (byte_24BFF5289[v1] != a1)
    {
      if (++v1 >= v8)
      {
        goto LABEL_11;
      }
    }

LABEL_35:
    v11 = 0;
    return v11 & 1;
  }

  if (!(a1 >> 17))
  {
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = a1;
    while (1)
    {
      v16 = &unk_24BFF53AB + 2 * v14;
      v17 = *v16;
      v18 = BYTE1(a1) == v17;
      if (BYTE1(a1) < v17)
      {
LABEL_29:
        v22 = 0;
        v11 = 1;
        do
        {
          v23 = byte_24BFF55DB[v22];
          if (byte_24BFF55DB[v22] < 0)
          {
            v23 = byte_24BFF55DB[++v22] | ((v23 & 0x7F) << 8);
          }

          v15 -= v23;
          if (v15 < 0)
          {
            break;
          }

          v11 ^= 1u;
          ++v22;
        }

        while (v22 < 0x1A3);
        return v11 & 1;
      }

      v19 = v16[1];
      v20 = (v13 + v19);
      if (v18 && v19 != 0)
      {
        break;
      }

LABEL_28:
      ++v14;
      LODWORD(v13) = v20;
      if (v14 == 38)
      {
        goto LABEL_29;
      }
    }

    v13 = v13;
    while (byte_24BFF53F7[v13] != a1)
    {
      if (++v13 >= v20)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_35;
  }

  v11 = (a1 - 196608 < 0xFFFFFA1E) & ~vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_24BFF4CB0, vaddq_s32(vdupq_n_s32(a1), xmmword_24BFF4CA0))));
  if (a1 - 917760 >= 0xFFF5124B || a1 - 1114112 >= 0xFFFD01F0)
  {
    v11 = 0;
  }

  if (a1 >> 1 == 89103)
  {
    v11 = 0;
  }

  if (a1 >= 0x110000)
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_24BF74150(uint64_t a1, char a2, unsigned int a3)
{
  v11 = 92;
  sub_24BF716D8(a1, &v11);
  v10 = a2;
  sub_24BF716D8(a1, &v10);
  v9 = 12336;
  v6 = 1;
  do
  {
    *(&v9 + v6--) = a0123456789abcd_0[a3 & 0xF];
    v7 = a3 > 0xF;
    a3 >>= 4;
  }

  while (v7);
  sub_24BF71780(a1, &v9, &v10);
  return a1;
}

uint64_t sub_24BF741F4(uint64_t a1, char a2, unsigned int a3)
{
  v12 = 92;
  sub_24BF716D8(a1, &v12);
  v11 = a2;
  sub_24BF716D8(a1, &v11);
  v9 = 808464432;
  v6 = 3;
  do
  {
    v10[v6-- - 4] = a0123456789abcd_0[a3 & 0xF];
    v7 = a3 > 0xF;
    a3 >>= 4;
  }

  while (v7);
  sub_24BF71780(a1, &v9, v10);
  return a1;
}

uint64_t sub_24BF74298(uint64_t a1, char a2, unsigned int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  LOBYTE(v9) = 92;
  sub_24BF716D8(a1, &v9);
  LOBYTE(v9) = a2;
  sub_24BF716D8(a1, &v9);
  v9 = 0x3030303030303030;
  v6 = 7;
  do
  {
    *(&v9 + v6--) = a0123456789abcd_0[a3 & 0xF];
    v7 = a3 > 0xF;
    a3 >>= 4;
  }

  while (v7);
  sub_24BF71780(a1, &v9, &v10);
  return a1;
}

uint64_t sub_24BF7436C(uint64_t *a1, char **a2)
{
  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (!a1[4])
    {
      return 0x7FFFFFFFLL;
    }
  }

  else if (!*(a1 + 47))
  {
    return 0x7FFFFFFFLL;
  }

  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = a1[1];
    v3 = *a2;
    if (*a2 == (*a1 + v2))
    {
      a1 = *a1;
LABEL_13:
      v3 = a1 + v2 - 1;
      goto LABEL_14;
    }
  }

  else
  {
    v3 = *a2;
    if (*a2 == a1 + v2)
    {
      goto LABEL_13;
    }
  }

  if (*v3 - 127 < 0xFFFFFF82)
  {
    return 0x7FFFFFFFLL;
  }

  *a2 = v3 + 1;
LABEL_14:
  result = (*(a2 + 2) + *v3);
  *(a2 + 2) = result;
  return result;
}

uint64_t sub_24BF743F8(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v21[251] = *MEMORY[0x277D85DE8];
  v18 = &unk_285F9F098;
  __p = v21;
  v20 = xmmword_24BFF4C90;
  LODWORD(v16) = 0;
  sub_24BF745A8(&v18, &v16);
  v8 = a1;
  if (*(a1 + 23) < 0)
  {
    v8 = *a1;
  }

  v16 = v8;
  v17 = 0;
  while (1)
  {
    v9 = sub_24BF7436C(a1, &v16);
    v15 = v9;
    if (!v9 || v9 >= a4)
    {
      break;
    }

    sub_24BF745A8(&v18, &v15);
  }

  if (a4 >= 1)
  {
    v10 = v20 - 1;
    v11 = a4 & 0x7FFFFFFF;
    do
    {
      if (a4 == *(__p + v10))
      {
        v12 = *(a1 + 47);
        if (v12 < 0)
        {
          v13 = *(a1 + 24);
          v12 = *(a1 + 32);
        }

        else
        {
          v13 = (a1 + 24);
        }

        sub_24BF71780(a2, v13, &v13[v12]);
        --v10;
      }

      LOBYTE(v15) = *a3;
      sub_24BF716D8(a2, &v15);
      --a4;
      ++a3;
      --v11;
    }

    while (v11);
  }

  if (__p != v21)
  {
    operator delete(__p);
  }

  return a2;
}

void sub_24BF74580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p != v14)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF745A8(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = v4 + 1;
  if (*(result + 24) < (v4 + 1))
  {
    result = (**result)(result);
    v4 = *(v3 + 16);
    v5 = v4 + 1;
  }

  v6 = *a2;
  v7 = *(v3 + 8);
  *(v3 + 16) = v5;
  *(v7 + 4 * v4) = v6;
  return result;
}

void sub_24BF7461C(void *a1, unint64_t a2)
{
  v2 = a1[3] + (a1[3] >> 1);
  v3 = 0x3FFFFFFFFFFFFFFFLL;
  if (a2 > 0x3FFFFFFFFFFFFFFFLL)
  {
    v3 = a2;
  }

  if (!(v2 >> 62))
  {
    v3 = a1[3] + (a1[3] >> 1);
  }

  if (v2 >= a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = a2;
  }

  if (!(v4 >> 62))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BF746EC(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, char *a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v68 = *MEMORY[0x277D85DE8];
  v55 = a4;
  v56 = &unk_285F9EFD0;
  __p = v59;
  v58 = xmmword_24BFF4C90;
  v12 = *(a5 + 8);
  if (v12 <= 2)
  {
    if (v12 < 2)
    {
      if (__PAIR128__(a3, a2) >= 0xA)
      {
        v20 = 4;
        v41 = a2;
        v42 = a3;
        while (1)
        {
          if (v41 <= 0x63)
          {
            v20 -= 2;
            goto LABEL_76;
          }

          if (v41 <= 0x3E7)
          {
            break;
          }

          *(&v43 + 1) = v42;
          *&v43 = v41;
          if (v43 >> 4 < 0x271)
          {
            goto LABEL_76;
          }

          *(&v44 + 1) = v42;
          *&v44 = v41;
          v20 += 4;
          v41 = __udivti3();
          v42 = v45;
          if ((v44 >> 5) <= 0xC34)
          {
            v20 -= 3;
            goto LABEL_76;
          }
        }

        --v20;
LABEL_76:
        v11 = a1;
        v6 = a6;
      }

      else
      {
        v20 = 1;
      }

      v60 = 0u;
      memset(v61, 0, 23);
      sub_24BF71D34(&v60, v10, v9, v20);
      sub_24BF7174C(&v60, v49, &v56);
      goto LABEL_78;
    }

    if (v12 == 2)
    {
      v33 = &v58 + 15;
      v34 = -1;
      v35 = a2;
      v36 = a3;
      do
      {
        v18 = v35 <= 7;
        *(&v37 + 1) = v36;
        *&v37 = v35;
        v35 = v37 >> 3;
        v36 >>= 3;
        ++v33;
        ++v34;
      }

      while (!v18);
      v20 = v34 + 1;
      if ((*(a5 + 9) & 0x80) != 0 && a2 | a3 && *(a5 + 4) <= v20)
      {
        if (a4)
        {
          v38 = 12288;
        }

        else
        {
          v38 = 48;
        }

        v8 = (v38 | a4) + 0x1000000;
        v55 = v8;
      }

      if (v34 <= 0x1F3)
      {
        *&v58 = v34 + 1;
        do
        {
          *v33-- = v10 & 7 | 0x30;
          v18 = v10 >= 8;
          *(&v48 + 1) = v9;
          *&v48 = v10;
          v10 = v48 >> 3;
          v18 = v9 >= !v18;
          v9 >>= 3;
        }

        while (v18);
        goto LABEL_78;
      }

      v60 = 0u;
      memset(v61, 0, 27);
      v21 = &v61[-2] + v34;
      do
      {
        *(&v61[-2] + v34) = v10 & 7 | 0x30;
        *(&v39 + 1) = v9;
        *&v39 = v10;
        v18 = v10 <= 7;
        v9 >>= 3;
        --v34;
        v10 = v39 >> 3;
      }

      while (!v18);
      goto LABEL_18;
    }

LABEL_82:
    sub_24BF713F4("invalid format specifier");
  }

  if (v12 - 3 < 2)
  {
    if ((*(a5 + 9) & 0x80) != 0)
    {
      if (v12 == 4)
      {
        v23 = 22576;
      }

      else
      {
        v23 = 30768;
      }

      if (a4)
      {
        v23 <<= 8;
      }

      v8 = (v23 | a4) + 0x2000000;
      v55 = v8;
    }

    v24 = &v58 + 15;
    v25 = -1;
    v26 = a2;
    v27 = a3;
    do
    {
      v18 = v26 <= 0xF;
      *(&v28 + 1) = v27;
      *&v28 = v26;
      v26 = v28 >> 4;
      v27 >>= 4;
      ++v24;
      ++v25;
    }

    while (!v18);
    v20 = v25 + 1;
    if (v25 <= 0x1F3)
    {
      *&v58 = v25 + 1;
      if (v12 == 4)
      {
        v46 = "0123456789ABCDEF";
      }

      else
      {
        v46 = "0123456789abcdef";
      }

      do
      {
        *v24-- = v46[v10 & 0xF];
        v18 = v10 >= 0x10;
        *(&v47 + 1) = v9;
        *&v47 = v10;
        v10 = v47 >> 4;
        v18 = v9 >= !v18;
        v9 >>= 4;
      }

      while (v18);
    }

    else
    {
      v60 = 0u;
      memset(v61, 0, 17);
      v29 = &v61[-2] + v25;
      if (v12 == 4)
      {
        v30 = "0123456789ABCDEF";
      }

      else
      {
        v30 = "0123456789abcdef";
      }

      do
      {
        *(&v61[-2] + v25) = v30[v10 & 0xF];
        *(&v31 + 1) = v9;
        *&v31 = v10;
        v18 = v10 <= 0xF;
        v9 >>= 4;
        --v25;
        v10 = v31 >> 4;
      }

      while (!v18);
      sub_24BF7174C(&v60, v29 + 1, &v56);
    }

    goto LABEL_78;
  }

  if (v12 - 5 >= 2)
  {
    if (v12 == 15)
    {
      LOBYTE(v60) = 0;
      BYTE1(v60) = a2;
      v32 = sub_24BF73B78(a1, a5, 1, 1uLL, &v60);
      goto LABEL_79;
    }

    goto LABEL_82;
  }

  if ((*(a5 + 9) & 0x80) != 0)
  {
    if (v12 == 6)
    {
      v13 = 16944;
    }

    else
    {
      v13 = 25136;
    }

    if (a4)
    {
      v13 <<= 8;
    }

    v8 = (v13 | a4) + 0x2000000;
    v55 = v8;
  }

  v14 = &v58 + 15;
  v15 = -1;
  v16 = a2;
  v17 = a3;
  do
  {
    v18 = v16 <= 1;
    *(&v19 + 1) = v17;
    *&v19 = v16;
    v16 = v19 >> 1;
    v17 >>= 1;
    ++v14;
    ++v15;
  }

  while (!v18);
  v20 = v15 + 1;
  if (v15 <= 0x1F3)
  {
    *&v58 = v15 + 1;
    do
    {
      *v14-- = v10 & 1 | 0x30;
      v18 = v10 >= 2;
      *(&v40 + 1) = v9;
      *&v40 = v10;
      v10 = v40 >> 1;
      v18 = v9 >= !v18;
      v9 >>= 1;
    }

    while (v18);
    goto LABEL_78;
  }

  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v21 = &v61[-2] + v15;
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  do
  {
    *(&v61[-2] + v15) = v10 & 1 | 0x30;
    *(&v22 + 1) = v9;
    *&v22 = v10;
    v18 = v10 <= 1;
    v9 >>= 1;
    --v15;
    v10 = v22 >> 1;
  }

  while (!v18);
LABEL_18:
  sub_24BF7174C(&v60, v21 + 1, &v56);
LABEL_78:
  v50 = sub_24BF73A3C(v6, v20);
  *&v60 = &v55;
  *(&v60 + 1) = v6;
  v61[0] = &v56;
  v32 = sub_24BF73AA8(v11, a5, v20 + HIBYTE(v8) + v50, v20 + HIBYTE(v8) + v50, &v60);
LABEL_79:
  v51 = v32;
  if (__p != v59)
  {
    operator delete(__p);
  }

  return v51;
}

void sub_24BF74C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p != v15)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF74C8C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_24BF74CE0(std::__shared_count *this)
{
  this->__vftable = &unk_285F9F050;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__shared_owners_) < 0)
  {
    operator delete(this[2].__shared_owners_);
  }

  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::__shared_count::~__shared_count(this);
}

uint64_t sub_24BF74D60(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v22 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v20) = v14;
      sub_24BF716D8(v7, &v20);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v20) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, &v20);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 28);
  v21 = 0;
  v20 = 0;
  sub_24BF71660(&v20, v16, v17);
  result = sub_24BF7174C(&v20, v18, v7);
  if (v11 != v13)
  {
    return sub_24BF73C54(result, v11 - v13, a2 + 11);
  }

  return result;
}

void *sub_24BF74E8C(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v31 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v29) = v14;
      sub_24BF716D8(v7, &v29);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v29) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, &v29);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 28);
  v18 = v17;
  v19 = *(a5 + 32);
  v20 = v7[2];
  v21 = v20 + v17;
  if (v7[3] >= v21 && (v7[2] = v21, (v22 = v7[1]) != 0))
  {
    v23 = "0123456789abcdef";
    if (v19)
    {
      v23 = "0123456789ABCDEF";
    }

    v24 = (v20 + v18 + v22 - 1);
    do
    {
      *v24-- = v23[v16 & 0xF];
      v9 = v16 >= 0x10;
      v16 >>= 4;
    }

    while (v9);
  }

  else
  {
    v30 = 0;
    v29 = 0;
    if (v19)
    {
      v25 = "0123456789ABCDEF";
    }

    else
    {
      v25 = "0123456789abcdef";
    }

    v26 = v18 - 1;
    do
    {
      *(&v29 + v26--) = v25[v16 & 0xF];
      v27 = v16 > 0xF;
      v16 >>= 4;
    }

    while (v27);
    v7 = sub_24BF7174C(&v29, &v29 + v18, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

void *sub_24BF7506C(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v26[0]) = v14;
      sub_24BF716D8(v7, v26);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v26[0]) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, v26);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 28);
  v18 = v17;
  v19 = v7[2];
  v20 = v19 + v17;
  if (v7[3] >= v20 && (v7[2] = v20, (v21 = v7[1]) != 0))
  {
    v22 = (v19 + v18 + v21 - 1);
    do
    {
      *v22-- = v16 & 1 | 0x30;
      v9 = v16 >= 2;
      v16 >>= 1;
    }

    while (v9);
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v23 = v18 - 1;
    do
    {
      *(v26 + v23--) = v16 & 1 | 0x30;
      v24 = v16 > 1;
      v16 >>= 1;
    }

    while (v24);
    v7 = sub_24BF7174C(v26, v26 + v18, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

void *sub_24BF7521C(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v26[2] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v26[0]) = v14;
      sub_24BF716D8(v7, v26);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v26[0]) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, v26);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 28);
  v18 = v17;
  v19 = v7[2];
  v20 = v19 + v17;
  if (v7[3] >= v20 && (v7[2] = v20, (v21 = v7[1]) != 0))
  {
    v22 = (v19 + v18 + v21 - 1);
    do
    {
      *v22-- = v16 & 7 | 0x30;
      v9 = v16 >= 8;
      v16 >>= 3;
    }

    while (v9);
  }

  else
  {
    memset(v26, 0, 11);
    v23 = v18 - 1;
    do
    {
      *(v26 + v23--) = v16 & 7 | 0x30;
      v24 = v16 > 7;
      v16 >>= 3;
    }

    while (v24);
    v7 = sub_24BF7174C(v26, v26 + v18, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

uint64_t sub_24BF753C8(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF5232[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  sub_24BF71780(v7, *a5, (*a5 + *(a5 + 8)));
  if (v11 == v13)
  {
    return v7;
  }

  return sub_24BF73C54(v7, v11 - v13, a2 + 11);
}

uint64_t sub_24BF75488(uint64_t a1, float a2)
{
  v6 = 0;
  if ((LODWORD(a2) & 0x80000000) != 0)
  {
    HIDWORD(v6) = 256;
    a2 = -a2;
  }

  v5 = xmmword_24BFF4D10;
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return sub_24BF75530(a1, 0, 0xFFFFFFFF00000000, 0x100000020000000, &v6);
  }

  v4 = sub_24BF755D0(a2);
  return sub_24BF75954(a1, &v4, &v5, v6, 0);
}

uint64_t sub_24BF75530(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a3;
  v12 = a4;
  v5 = *(a5 + 4);
  if ((a4 & 0xFF000000FF000000) == 0x100000030000000)
  {
    BYTE3(v12) = 32;
  }

  v6 = "NAN";
  if ((v5 & 0x10000) == 0)
  {
    v6 = "nan";
  }

  v7 = "INF";
  if ((v5 & 0x10000) == 0)
  {
    v7 = "inf";
  }

  if (!a2)
  {
    v6 = v7;
  }

  if (BYTE1(v5))
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  LOBYTE(v10[0]) = BYTE1(v5);
  v10[1] = v6;
  return sub_24BF75884(a1, &v11, v8, v8, v10);
}

unint64_t sub_24BF755D0(float a1)
{
  v1 = LODWORD(a1) & 0x7FFFFF;
  if ((LODWORD(a1) >> 23))
  {
    v2 = (LODWORD(a1) >> 23) - 150;
    if (!v1)
    {
      v22 = 631305 * v2 - 261663;
      v3 = (v22 >> 21);
      v23 = qword_24BFF57E8[31 - (v22 >> 21)];
      v24 = 40 - ((LODWORD(a1) >> 23) + 106 + ((-1741647 * v3) >> 19));
      v25 = (v23 - (v23 >> 25)) >> v24;
      v26 = (v23 + (v23 >> 24)) >> v24;
      if ((v2 & 0xFFFFFFFE) != 2)
      {
        LODWORD(v25) = v25 + 1;
      }

      v27 = v26 / 0xA;
      if (10 * v27 < v25)
      {
        v28 = ((v23 >> (39 - ((LODWORD(a1) >> 23) + 106 + ((-1741647 * v3) >> 19)))) + 1) >> 1;
        if ((LODWORD(a1) >> 23) == 115)
        {
          v1 = v28 & 0x7FFFFFFE;
        }

        else if (v28 >= v25)
        {
          v1 = ((v23 >> (39 - ((LODWORD(a1) >> 23) + 106 + ((-1741647 * v3) >> 19)))) + 1) >> 1;
        }

        else
        {
          v1 = v28 + 1;
        }

        return v1 | (v3 << 32);
      }

      LODWORD(v3) = v3 - 1;
      do
      {
        v16 = v27;
        HIDWORD(v29) = -1030792151 * v27;
        LODWORD(v29) = -1030792151 * v27;
        v27 = v29 >> 2;
        LODWORD(v3) = v3 + 2;
      }

      while (v27 <= 0x28F5C28);
      goto LABEL_33;
    }

    v1 |= 0x800000u;
  }

  else
  {
    if (!v1)
    {
      v3 = 0;
      return v1 | (v3 << 32);
    }

    v2 = -149;
  }

  v3 = ((315653 * v2) >> 20);
  v4 = qword_24BFF57E8[32 - ((315653 * v2) >> 20)];
  v5 = v2 + ((1741647 - 1741647 * v3) >> 19);
  v6 = v4 >> ~v5;
  v7 = 2 * v1;
  v8 = (((((2 * (v1 & 0xFFFFFF)) | 1) << v5) << 32) * v4) >> 64;
  v9 = ((((((2 * (v1 & 0xFFFFFF)) | 1) << v5) << 32) * v4) >> 96) / 0x64;
  v10 = ((((((2 * (v1 & 0xFFFFFF)) | 1) << v5) << 32) * v4) >> 96) % 0x64;
  if (v10 >= v6)
  {
    if (v10 > v6)
    {
      goto LABEL_22;
    }

    v14 = v4 * (v7 - 1);
    v15 = (v1 & 1) == 0;
    if ((v14 >> (32 - v5)))
    {
      v15 = 0;
    }

    if (!(v15 | (v14 >> -v5) & 1))
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v11 = v1 & 1;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8 == 0;
  }

  if (!v12 || v11 == 0)
  {
LABEL_19:
    LODWORD(v3) = v3 - 1;
    do
    {
      v16 = v9;
      HIDWORD(v17) = -1030792151 * v9;
      LODWORD(v17) = -1030792151 * v9;
      v9 = v17 >> 2;
      LODWORD(v3) = v3 + 2;
    }

    while (v9 <= 0x28F5C28);
LABEL_33:
    HIDWORD(v31) = -858993459 * v16;
    LODWORD(v31) = -858993459 * v16;
    v30 = v31 >> 1;
    if (v30 >= 0x1999999A)
    {
      v1 = v16;
    }

    else
    {
      v1 = v30;
    }

    if (v30 >= 0x1999999A)
    {
      v3 = v3;
    }

    else
    {
      v3 = (v3 + 1);
    }

    return v1 | (v3 << 32);
  }

  --v9;
  v10 = 100;
LABEL_22:
  v18 = 10 * v9;
  v19 = v10 - (v6 >> 1);
  v20 = 6554 * v19 + 32770;
  v1 = v18 + HIWORD(v20);
  if (((6554 * v19 - 32766) >> 1) <= 0xCCCu)
  {
    v21 = v4 * v7;
    if (((v21 >> -v5) & 1) == (v19 & 1))
    {
      v12 = (v21 >> (32 - v5)) == 0;
      v33 = HIWORD(v20) & 1;
      if (!v12)
      {
        v33 = 0;
      }

      v1 -= v33;
    }

    else
    {
      --v1;
    }
  }

  return v1 | (v3 << 32);
}

uint64_t sub_24BF75884(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, char **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF5232[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (*a5)
  {
    v15 = byte_24BFF57DD[*a5];
    sub_24BF716D8(v7, &v15);
  }

  sub_24BF71780(v7, a5[1], a5[1] + 3);
  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

uint64_t sub_24BF75954(uint64_t a1, unsigned int *a2, unsigned int *a3, unint64_t a4, std::locale *a5)
{
  v60 = a4;
  v59 = *a2;
  v10 = (qword_24BFF5020[__clz(v59 | 1) ^ 0x1F] + v59) >> 32;
  v58 = v10;
  v57 = 48;
  v11 = HIDWORD(a4);
  v56 = BYTE5(a4);
  if (BYTE5(a4))
  {
    v12 = (v10 + 1);
  }

  else
  {
    v12 = v10;
  }

  if ((a4 & 0x2000000000000) != 0)
  {
    if (a5)
    {
      std::locale::locale(&v40, a5);
    }

    else
    {
      MEMORY[0x24C254700](&v40);
    }

    v14 = std::locale::use_facet(&v40, MEMORY[0x277D826C0]);
    v13 = (v14->__vftable[1].~facet)(v14);
    std::locale::~locale(&v40);
    LODWORD(v10) = v58;
  }

  else
  {
    v13 = 46;
  }

  v55 = v13;
  v15 = a2[1];
  v16 = v10 + v15;
  if (BYTE4(a4) == 1 || !BYTE4(a4) && (v16 < -3 || (a4 <= 0 ? (v17 = 16) : (v17 = a4), v16 > v17)))
  {
    v18 = v16 - 1;
    if ((v11 & 0x80000) != 0)
    {
      v19 = (a4 - v10) & ~((a4 - v10) >> 31);
      v12 += v19;
    }

    else if (v10 == 1)
    {
      v13 = 0;
      LODWORD(v19) = 0;
      v55 = 0;
    }

    else
    {
      LODWORD(v19) = 0;
    }

    if ((v11 & 0x10000) != 0)
    {
      v29 = 69;
    }

    else
    {
      v29 = 101;
    }

    LOBYTE(v40.__locale_) = v56;
    HIDWORD(v40.__locale_) = v59;
    LODWORD(v41) = v10;
    BYTE4(v41) = v13;
    LODWORD(v42) = v19;
    BYTE4(v42) = 48;
    BYTE5(v42) = v29;
    LODWORD(v43) = v16 - 1;
    if (*a3 < 1)
    {
      return sub_24BF75D98(&v40, a1);
    }

    v30 = 2;
    if (v13)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    if (v16 < 1)
    {
      v18 = 1 - v16;
    }

    v32 = 3;
    if (v18 > 999)
    {
      v32 = 4;
    }

    if (v18 > 99)
    {
      v30 = v32;
    }

    return sub_24BF75F38(a1, a3, v12 + v30 + v31, v12 + v30 + v31, &v40);
  }

  v54 = v10 + v15;
  if ((v15 & 0x80000000) == 0)
  {
    v20 = v12 + v15;
    v21 = a4 - v16;
    v53 = a4 - v16;
    if ((v11 & 0x80000) != 0)
    {
      if (v21 > 0 || v11 == 2)
      {
        v23 = v21 < 1;
        v24 = v20 + 1 + v21;
        if (v23)
        {
          ++v20;
        }

        else
        {
          v20 = v24;
        }
      }

      else
      {
        v53 = 0;
        ++v20;
      }
    }

    sub_24BF760DC(v49, a5, (v11 >> 17) & 1);
    v34 = sub_24BF73A3C(v49, v16);
    v40.__locale_ = &v56;
    v41 = &v59;
    v42 = &v58;
    v43 = a2;
    v44 = v49;
    v45 = &v60;
    v46 = &v55;
    v47 = &v53;
    v48 = &v57;
    v28 = sub_24BF76308(a1, a3, v20 + v34, v20 + v34, &v40);
    goto LABEL_50;
  }

  if (v16 < 1)
  {
    if (a4 >= -v16)
    {
      v36 = -v16;
    }

    else
    {
      v36 = a4;
    }

    if (a4 <= -1 || v10 != 0)
    {
      v36 = -v16;
    }

    LODWORD(v49[0]) = v36;
    if (v36 | v10)
    {
      LOBYTE(v53) = 1;
    }

    else
    {
      LOBYTE(v53) = (v11 & 0x80000) != 0;
      if ((v11 & 0x80000) == 0)
      {
        v38 = 1;
LABEL_67:
        v40.__locale_ = &v56;
        v41 = &v57;
        v42 = &v53;
        v43 = &v55;
        v44 = v49;
        v45 = &v59;
        v46 = &v58;
        return sub_24BF76984(a1, a3, v12 + (v38 + v36), v12 + (v38 + v36), &v40);
      }
    }

    v38 = 2;
    goto LABEL_67;
  }

  v25 = (a4 - v10) & ((v11 << 12) >> 31);
  v53 = v25;
  sub_24BF760DC(v49, a5, (v11 >> 17) & 1);
  v26 = sub_24BF73A3C(v49, v16);
  v40.__locale_ = &v56;
  v41 = &v59;
  v42 = &v58;
  v43 = &v54;
  v27 = v12 + (v25 & ~(v25 >> 31)) + 1 + v26;
  v44 = &v55;
  v45 = v49;
  v46 = &v53;
  v47 = &v57;
  v28 = sub_24BF765B8(a1, a3, v27, v27, &v40);
LABEL_50:
  v35 = v28;
  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  return v35;
}

void sub_24BF75D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_24BE8AAC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF75D98(unsigned __int8 *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v16[0] = byte_24BFF57DD[*a1];
    sub_24BF716D8(a2, v16);
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a1[12];
  if (v6)
  {
    v7 = &v16[v5 + 1];
    v8 = v5 - 1;
    if (v5 < 3)
    {
      v11 = *(a1 + 1);
      v10 = &v16[v5 + 1];
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = (v8 >> 1) + 1;
      v10 = &v16[v5 + 1];
      do
      {
        v11 = v4 / 0x64;
        *(v10 - 1) = *&a00010203040506[2 * (v4 % 0x64)];
        v10 -= 2;
        --v9;
        v4 /= 0x64u;
      }

      while (v9 > 1);
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    *--v10 = (v11 % 0xA) | 0x30;
    v11 /= 0xAu;
LABEL_9:
    *(v10 - 1) = v6;
    sub_24BF71660((v10 - 2), v11, 1);
    goto LABEL_11;
  }

  sub_24BF71660(v16, v4, v5);
  v7 = v12;
LABEL_11:
  v13 = sub_24BF7174C(v16, v7, a2);
  v14 = *(a1 + 4);
  if (v14 >= 1)
  {
    do
    {
      sub_24BF716D8(v13, a1 + 20);
      --v14;
    }

    while (v14);
  }

  v16[0] = a1[21];
  sub_24BF716D8(v13, v16);
  return sub_24BF75FDC(*(a1 + 6), v13);
}

uint64_t sub_24BF75F38(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  result = sub_24BF75D98(a5, v7);
  if (v11 != v13)
  {

    return sub_24BF73C54(result, v11 - v13, a2 + 11);
  }

  return result;
}

uint64_t sub_24BF75FDC(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 & 0x80000000) != 0)
  {
    v12 = 45;
    sub_24BF716D8(a2, &v12);
    v3 = -v3;
  }

  else
  {
    v11 = 43;
    sub_24BF716D8(a2, &v11);
  }

  if (v3 >= 0x64)
  {
    v4 = &a00010203040506[2 * (v3 / 0x64)];
    if (v3 >= 0x3E8)
    {
      v10 = *v4;
      sub_24BF716D8(a2, &v10);
    }

    v9 = v4[1];
    sub_24BF716D8(a2, &v9);
    v3 %= 0x64u;
  }

  v5 = &a00010203040506[2 * v3];
  v8 = *v5;
  sub_24BF716D8(a2, &v8);
  v7 = v5[1];
  sub_24BF716D8(a2, &v7);
  return a2;
}

uint64_t sub_24BF760DC(uint64_t a1, std::locale *a2, int a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a3)
  {
    sub_24BF761F4(&__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      __c = v8;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v5 = __p;
      __c = v8;
    }

    std::string::operator=(a1, &v5);
    if (__c)
    {
      std::string::assign((a1 + 24), 1uLL, __c);
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_24BF7619C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 47) < 0)
  {
    operator delete(*(v21 + 24));
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

double sub_24BF761F4@<D0>(uint64_t *__return_ptr a1@<X8>, std::locale *a2@<X0>)
{
  if (a2)
  {
    std::locale::locale(v7, a2);
  }

  else
  {
    MEMORY[0x24C254700](v7);
  }

  v3 = std::locale::use_facet(v7, MEMORY[0x277D826C0]);
  std::locale::~locale(v7);
  (v3->__vftable[1].__on_zero_shared)(v7, v3);
  locale = HIBYTE(v8);
  if (v8 < 0)
  {
    locale = v7[1].__locale_;
  }

  if (locale)
  {
    v5 = (v3->__vftable[1].~facet_0)(v3);
  }

  else
  {
    v5 = 0;
  }

  result = *&v7[0].__locale_;
  *a1 = *&v7[0].__locale_;
  a1[2] = v8;
  *(a1 + 24) = v5;
  return result;
}

void sub_24BF762DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF76308(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (**a5)
  {
    v19 = byte_24BFF57DD[**a5];
    sub_24BF716D8(v7, &v19);
  }

  v14 = sub_24BF7642C(v7, *a5[1], *a5[2], *(a5[3] + 1), a5[4]);
  v15 = v14;
  if ((a5[5][6] & 8) != 0)
  {
    sub_24BF716D8(v14, a5[6]);
    v16 = *a5[7];
    if (v16 >= 1)
    {
      v17 = a5[8];
      do
      {
        sub_24BF716D8(v15, v17);
        --v16;
      }

      while (v16);
    }
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v15, v11 - v13, a2 + 11);
  }

  return v15;
}

uint64_t sub_24BF7642C(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 47);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 32);
  }

  if (v7)
  {
    v13 = &unk_285F9EFD0;
    __p = v16;
    v15 = xmmword_24BFF4C90;
    v18 = 0;
    v17 = 0;
    sub_24BF71660(&v17, a2, a3);
    sub_24BF7174C(&v17, v9, &v13);
    LOBYTE(v17) = 48;
    if (a4 >= 1)
    {
      do
      {
        sub_24BF716D8(&v13, &v17);
        --a4;
      }

      while (a4);
    }

    v10 = sub_24BF743F8(a5, a1, __p, v15);
    if (__p != v16)
    {
      operator delete(__p);
    }
  }

  else
  {
    LOWORD(__p) = 0;
    v13 = 0;
    sub_24BF71660(&v13, a2, a3);
    v10 = sub_24BF7174C(&v13, v11, a1);
    LOBYTE(v13) = 48;
    if (a4 >= 1)
    {
      do
      {
        sub_24BF716D8(v10, &v13);
        --a4;
      }

      while (a4);
    }
  }

  return v10;
}

void sub_24BF76590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p != v10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF765B8(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (**a5)
  {
    v18 = byte_24BFF57DD[**a5];
    sub_24BF716D8(v7, &v18);
  }

  v14 = sub_24BF766CC(v7, *a5[1], *a5[2], *a5[3], *a5[4], a5[5]);
  v15 = *a5[6];
  if (v15 >= 1)
  {
    v16 = a5[7];
    do
    {
      sub_24BF716D8(v14, v16);
      --v15;
    }

    while (v15);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v14, v11 - v13, a2 + 11);
  }

  return v14;
}

uint64_t sub_24BF766CC(uint64_t a1, unsigned int a2, int a3, int a4, int a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = *(a6 + 47);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a6 + 32);
  }

  if (!v8)
  {
    if (!a5)
    {
      sub_24BF71660(&v24, a2, a3);
      v15 = v22;
      return sub_24BF7174C(&v24, v15, a1);
    }

    v15 = &v24 + a3 + 1;
    v16 = a3 - a4;
    if (a3 - a4 < 2)
    {
      v19 = a2;
      v18 = &v24 + a3 + 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = (v16 >> 1) + 1;
      v18 = &v24 + a3 + 1;
      do
      {
        v19 = a2 / 0x64;
        *(v18 - 1) = *&a00010203040506[2 * (a2 % 0x64)];
        v18 -= 2;
        --v17;
        a2 /= 0x64u;
      }

      while (v17 > 1);
      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    *--v18 = (v19 % 0xA) | 0x30;
    v19 /= 0xAu;
LABEL_17:
    *(v18 - 1) = a5;
    sub_24BF71660(&v18[-a4 - 1], v19, a4);
    return sub_24BF7174C(&v24, v15, a1);
  }

  v24 = &unk_285F9EFD0;
  __p = v27;
  v26 = xmmword_24BFF4C90;
  if (a5)
  {
    v10 = &v28[a3 + 1];
    v11 = a3 - a4;
    if (a3 - a4 < 2)
    {
      v14 = a2;
      v13 = &v28[a3 + 1];
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = (v11 >> 1) + 1;
      v13 = &v28[a3 + 1];
      do
      {
        v14 = a2 / 0x64;
        *(v13 - 1) = *&a00010203040506[2 * (a2 % 0x64)];
        v13 -= 2;
        --v12;
        a2 /= 0x64u;
      }

      while (v12 > 1);
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    *--v13 = (v14 % 0xA) | 0x30;
    v14 /= 0xAu;
LABEL_10:
    *(v13 - 1) = a5;
    sub_24BF71660(&v13[-a4 - 1], v14, a4);
    goto LABEL_19;
  }

  sub_24BF71660(v28, a2, a3);
  v10 = v20;
LABEL_19:
  sub_24BF7174C(v28, v10, &v24);
  sub_24BF743F8(a6, a1, __p, a4);
  v21 = sub_24BF7174C(__p + a4, __p + v26, a1);
  if (__p != v27)
  {
    operator delete(__p);
  }

  return v21;
}

uint64_t sub_24BF76984(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  result = sub_24BF76A28(a5, v7);
  if (v11 != v13)
  {

    return sub_24BF73C54(result, v11 - v13, a2 + 11);
  }

  return result;
}

uint64_t sub_24BF76A28(unsigned __int8 **a1, uint64_t a2)
{
  v2 = a2;
  v12 = *MEMORY[0x277D85DE8];
  if (**a1)
  {
    LOBYTE(v10) = byte_24BFF57DD[**a1];
    sub_24BF716D8(a2, &v10);
  }

  sub_24BF716D8(v2, a1[1]);
  if (*a1[2] == 1)
  {
    sub_24BF716D8(v2, a1[3]);
    v4 = *a1[4];
    if (v4 >= 1)
    {
      v5 = a1[1];
      do
      {
        sub_24BF716D8(v2, v5);
        --v4;
      }

      while (v4);
    }

    v6 = *a1[5];
    v7 = *a1[6];
    v11 = 0;
    v10 = 0;
    sub_24BF71660(&v10, v6, v7);
    return sub_24BF7174C(&v10, v8, v2);
  }

  return v2;
}

uint64_t sub_24BF76B30(uint64_t a1, double a2)
{
  v7 = 0;
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    HIDWORD(v7) = 256;
    a2 = -a2;
  }

  v6 = xmmword_24BFF4D10;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return sub_24BF75530(a1, 0, 0xFFFFFFFF00000000, 0x100000020000000, &v7);
  }

  v5[0] = sub_24BF76BD8(a2);
  v5[1] = v4;
  return sub_24BF77078(a1, v5, &v6, v7, 0);
}

unint64_t sub_24BF76BD8(double a1)
{
  v1 = *&a1 & 0xFFFFFFFFFFFFFLL;
  v2 = (*&a1 >> 52) & 0x7FFLL;
  if (!v2)
  {
    if (!v1)
    {
      return 0;
    }

    v3 = -1074;
    goto LABEL_6;
  }

  v3 = v2 - 1075;
  if (v1)
  {
    v1 |= 0x10000000000000uLL;
LABEL_6:
    v4 = 2 - ((315653 * v3) >> 20);
    v5 = sub_24BF76FC8(v4);
    v7 = v3 + ((1741647 * v4) >> 19);
    v8 = v6 >> ~(v3 + ((1741647 * v4) >> 19));
    v9 = 2 * v1;
    v10 = ((2 * (v1 & 0x1FFFFFFFFFFFFFLL)) | 1) << (v3 + ((1741647 * v4) >> 19));
    v11 = v10 * v6;
    v12 = (v10 * v6) >> 64;
    v13 = (v10 * v5) >> 64;
    v14 = v11 + v13;
    if (__CFADD__(v11, v13))
    {
      v15 = v12 + 1;
    }

    else
    {
      v15 = v12;
    }

    v16 = ((v15 * 0x20C49BA5E353F7CFuLL) >> 64) >> 7;
    v17 = v15 - 1000 * v16;
    if (v8 <= v17)
    {
      if (v8 < v17 || ((v20 = (__PAIR128__(v6, v5) * (v9 - 1)) >> 64, v21 = (v20 >> -v7) & 1, (v20 << v7) | ((v5 * (v9 - 1)) >> -v7)) ? (v22 = 0) : (v22 = (v1 & 1) == 0), !(v22 | v21)))
      {
LABEL_30:
        v27 = v17 - (v8 >> 1);
        v28 = 656 * v27 + 32800;
        v29 = HIWORD(v28) + 10 * v16;
        if (((656 * v27 - 32736) & 0xFFF0u) <= 0x28F)
        {
          v30 = (__PAIR128__(v6, v5) * v9) >> 64;
          if (((v30 >> -v7) & 1) == (v27 & 1))
          {
            v18 = ((v30 << v7) | ((v5 * v9) >> (64 - v7))) == 0;
            LODWORD(v45) = HIWORD(v28) & 1;
            if (v18)
            {
              v45 = v45;
            }

            else
            {
              v45 = 0;
            }

            v29 -= v45;
          }

          else
          {
            --v29;
          }
        }

        return v29;
      }
    }

    else
    {
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 == 0;
      }

      if (v18 && (v1 & 1) != 0)
      {
        --v16;
        v17 = 1000;
        goto LABEL_30;
      }
    }

    if (0xABCC77118461CEFDLL * v16 >= 0xABCC77118461CEFDLL || (((v16 * 0xABCC77118461CEFDLL) >> 64) & 0x3FFFFFF) != 0)
    {
      v24 = -2;
      do
      {
        v25 = v16;
        *(&v26 + 1) = v16;
        *&v26 = 0x8F5C28F5C28F5C29 * v16;
        v16 = v26 >> 2;
        v24 += 2;
      }

      while (v16 <= 0x28F5C28F5C28F5CLL);
      goto LABEL_49;
    }

    v37 = v16 / 0x5F5E100;
    v38 = 6;
    do
    {
      v39 = v37;
      HIDWORD(v40) = -1030792151 * v37;
      LODWORD(v40) = -1030792151 * v37;
      LODWORD(v37) = v40 >> 2;
      v38 += 2;
    }

    while (v37 <= 0x28F5C28);
    goto LABEL_61;
  }

  v31 = (631305 * v3 - 261663) >> 21;
  v32 = v3 + ((-1741647 * v31) >> 19);
  sub_24BF76FC8(-v31);
  v34 = (v33 + (v33 >> 53)) >> (11 - v32);
  if ((v3 & 0xFFFFFFFE) == 2)
  {
    v35 = (v33 - (v33 >> 54)) >> (11 - v32);
  }

  else
  {
    v35 = ((v33 - (v33 >> 54)) >> (11 - v32)) + 1;
  }

  v36 = v34 / 0xA;
  if (10 * (v34 / 0xA) >= v35)
  {
    if (0xABCC77118461CEFDLL * v36 >= 0xABCC77118461CEFDLL || (((v36 * 0xABCC77118461CEFDLL) >> 64) & 0x3FFFFFF) != 0)
    {
      v42 = -2;
      do
      {
        v25 = v36;
        *(&v43 + 1) = v36;
        *&v43 = 0x8F5C28F5C28F5C29 * v36;
        v36 = v43 >> 2;
        v42 += 2;
      }

      while (v36 <= 0x28F5C28F5C28F5CLL);
LABEL_49:
      *(&v44 + 1) = v25;
      *&v44 = 0xCCCCCCCCCCCCCCCDLL * v25;
      v29 = v44 >> 1;
      if (v29 >= 0x199999999999999ALL)
      {
        return v25;
      }

      return v29;
    }

    v46 = v36 / 0x5F5E100;
    v47 = 6;
    do
    {
      v39 = v46;
      HIDWORD(v48) = -1030792151 * v46;
      LODWORD(v48) = -1030792151 * v46;
      LODWORD(v46) = v48 >> 2;
      v47 += 2;
    }

    while (v46 <= 0x28F5C28);
LABEL_61:
    HIDWORD(v49) = -858993459 * v39;
    LODWORD(v49) = -858993459 * v39;
    LODWORD(v29) = v49 >> 1;
    if (v29 >= 0x1999999A)
    {
      return v39;
    }

    else
    {
      return v29;
    }
  }

  v29 = ((v33 >> (10 - v32)) + 1) >> 1;
  if (v3 == -77)
  {
    v29 &= 0x7FFFFFFFFFFFFFFEuLL;
  }

  else if (v29 < v35)
  {
    ++v29;
  }

  return v29;
}

unint64_t sub_24BF76FC8(int a1)
{
  v2 = (a1 + 292) / 27;
  v3 = 27 * v2 - 292;
  v4 = (&unk_24BFF5A58 + 16 * v2);
  result = *v4;
  v6 = v4[1];
  v7 = a1 - v3;
  if (a1 != v3)
  {
    v8 = ((1741647 * a1) >> 19) - (v7 + ((1741647 * v3) >> 19));
    return (((2 * ((__PAIR128__(v6, result) * qword_24BFF5BD8[v7]) >> 64)) << ~v8) | ((qword_24BFF5BD8[v7] * result) >> v8)) + 1;
  }

  return result;
}

uint64_t sub_24BF77078(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, std::locale *a5)
{
  v10 = byte_24BFF5120[__clz(*a2 | 1) ^ 0x3F];
  v11 = qword_24BFF5160[v10];
  v61 = *a2;
  v62 = a4;
  v12 = v10 - (v11 > v61);
  v60 = v12;
  v59 = 48;
  v13 = HIDWORD(a4);
  v58 = BYTE5(a4);
  if (BYTE5(a4))
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = v12;
  }

  if ((a4 & 0x2000000000000) != 0)
  {
    if (a5)
    {
      std::locale::locale(&v42, a5);
    }

    else
    {
      MEMORY[0x24C254700](&v42);
    }

    v16 = std::locale::use_facet(&v42, MEMORY[0x277D826C0]);
    v15 = (v16->__vftable[1].~facet)(v16);
    std::locale::~locale(&v42);
    v12 = v60;
  }

  else
  {
    v15 = 46;
  }

  v57 = v15;
  v17 = *(a2 + 8);
  v18 = v12 + v17;
  if (BYTE4(a4) == 1 || !BYTE4(a4) && (v18 < -3 || (a4 <= 0 ? (v19 = 16) : (v19 = a4), v18 > v19)))
  {
    v20 = v18 - 1;
    if ((v13 & 0x80000) != 0)
    {
      v21 = (a4 - v12) & ~((a4 - v12) >> 31);
      v14 += v21;
    }

    else if (v12 == 1)
    {
      v15 = 0;
      LODWORD(v21) = 0;
      v57 = 0;
    }

    else
    {
      LODWORD(v21) = 0;
    }

    if ((v13 & 0x10000) != 0)
    {
      v31 = 69;
    }

    else
    {
      v31 = 101;
    }

    LOBYTE(v42.__locale_) = v58;
    v43 = v61;
    LODWORD(v44) = v12;
    BYTE4(v44) = v15;
    LODWORD(v45) = v21;
    BYTE4(v45) = 48;
    BYTE5(v45) = v31;
    LODWORD(v46) = v18 - 1;
    if (*a3 < 1)
    {
      return sub_24BF774CC(&v42, a1);
    }

    v32 = 2;
    if (v15)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    if (v18 < 1)
    {
      v20 = 1 - v18;
    }

    v34 = 3;
    if (v20 > 999)
    {
      v34 = 4;
    }

    if (v20 > 99)
    {
      v32 = v34;
    }

    return sub_24BF77678(a1, a3, v14 + v32 + v33, v14 + v32 + v33, &v42);
  }

  v56 = v12 + v17;
  if ((v17 & 0x80000000) == 0)
  {
    v22 = v17 + v14;
    v23 = a4 - v18;
    v55 = a4 - v18;
    if ((v13 & 0x80000) != 0)
    {
      if (v23 > 0 || v13 == 2)
      {
        v25 = v23 < 1;
        v26 = v22 + 1 + v23;
        if (v25)
        {
          ++v22;
        }

        else
        {
          v22 = v26;
        }
      }

      else
      {
        v55 = 0;
        ++v22;
      }
    }

    sub_24BF760DC(v51, a5, (v13 >> 17) & 1);
    v36 = sub_24BF73A3C(v51, v18);
    v42.__locale_ = &v58;
    v43 = &v61;
    v44 = &v60;
    v45 = a2;
    v46 = v51;
    v47 = &v62;
    v48 = &v57;
    v49 = &v55;
    v50 = &v59;
    v30 = sub_24BF7771C(a1, a3, v22 + v36, v22 + v36, &v42);
    goto LABEL_50;
  }

  if (v18 < 1)
  {
    if (a4 >= -v18)
    {
      v38 = -v18;
    }

    else
    {
      v38 = a4;
    }

    if (a4 <= -1 || v12 != 0)
    {
      v38 = -v18;
    }

    LODWORD(v51[0]) = v38;
    if (v38 | v12)
    {
      LOBYTE(v55) = 1;
    }

    else
    {
      LOBYTE(v55) = (v13 & 0x80000) != 0;
      if ((v13 & 0x80000) == 0)
      {
        v40 = 1;
LABEL_67:
        v42.__locale_ = &v58;
        v43 = &v59;
        v44 = &v55;
        v45 = &v57;
        v46 = v51;
        v47 = &v61;
        v48 = &v60;
        return sub_24BF77DB0(a1, a3, (v40 + v38) + v14, (v40 + v38) + v14, &v42);
      }
    }

    v40 = 2;
    goto LABEL_67;
  }

  v27 = (a4 - v12) & ((v13 << 12) >> 31);
  v55 = v27;
  sub_24BF760DC(v51, a5, (v13 >> 17) & 1);
  v28 = sub_24BF73A3C(v51, v18);
  v42.__locale_ = &v58;
  v43 = &v61;
  v44 = &v60;
  v45 = &v56;
  v29 = (v27 & ~(v27 >> 31)) + 1 + v14 + v28;
  v46 = &v57;
  v47 = v51;
  v48 = &v55;
  v49 = &v59;
  v30 = sub_24BF779CC(a1, a3, v29, v29, &v42);
LABEL_50:
  v37 = v30;
  if (v54 < 0)
  {
    operator delete(__p);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  return v37;
}

void sub_24BF7749C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_24BE8AAC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF774CC(unsigned __int8 *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v16[0] = byte_24BFF57DD[*a1];
    sub_24BF716D8(a2, v16);
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 4);
  v6 = a1[20];
  if (v6)
  {
    v7 = &v16[v5 + 1];
    v8 = v5 - 1;
    if (v5 < 3)
    {
      v11 = *(a1 + 1);
      v10 = &v16[v5 + 1];
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = (v8 >> 1) + 1;
      v10 = &v16[v5 + 1];
      do
      {
        v11 = v4 / 0x64;
        *(v10 - 1) = *&a00010203040506[2 * (v4 % 0x64)];
        v10 -= 2;
        --v9;
        v4 /= 0x64uLL;
      }

      while (v9 > 1);
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    *--v10 = (v11 % 0xA) | 0x30;
    v11 /= 0xAuLL;
LABEL_9:
    *(v10 - 1) = v6;
    sub_24BF71A20((v10 - 2), v11, 1);
    goto LABEL_11;
  }

  sub_24BF71A20(v16, *(a1 + 1), v5);
  v7 = v12;
LABEL_11:
  v13 = sub_24BF7174C(v16, v7, a2);
  v14 = *(a1 + 6);
  if (v14 >= 1)
  {
    do
    {
      sub_24BF716D8(v13, a1 + 28);
      --v14;
    }

    while (v14);
  }

  v16[0] = a1[29];
  sub_24BF716D8(v13, v16);
  return sub_24BF75FDC(*(a1 + 8), v13);
}

uint64_t sub_24BF77678(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  result = sub_24BF774CC(a5, v7);
  if (v11 != v13)
  {

    return sub_24BF73C54(result, v11 - v13, a2 + 11);
  }

  return result;
}

uint64_t sub_24BF7771C(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (**a5)
  {
    v19 = byte_24BFF57DD[**a5];
    sub_24BF716D8(v7, &v19);
  }

  v14 = sub_24BF77840(v7, *a5[1], *a5[2], *(a5[3] + 2), a5[4]);
  v15 = v14;
  if ((a5[5][6] & 8) != 0)
  {
    sub_24BF716D8(v14, a5[6]);
    v16 = *a5[7];
    if (v16 >= 1)
    {
      v17 = a5[8];
      do
      {
        sub_24BF716D8(v15, v17);
        --v16;
      }

      while (v16);
    }
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v15, v11 - v13, a2 + 11);
  }

  return v15;
}

uint64_t sub_24BF77840(uint64_t a1, unint64_t a2, int a3, int a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 47);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 32);
  }

  if (v7)
  {
    v13 = &unk_285F9EFD0;
    __p = v16;
    v15 = xmmword_24BFF4C90;
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    sub_24BF71A20(v17, a2, a3);
    sub_24BF7174C(v17, v9, &v13);
    LOBYTE(v17[0]) = 48;
    if (a4 >= 1)
    {
      do
      {
        sub_24BF716D8(&v13, v17);
        --a4;
      }

      while (a4);
    }

    v10 = sub_24BF743F8(a5, a1, __p, v15);
    if (__p != v16)
    {
      operator delete(__p);
    }
  }

  else
  {
    v13 = 0;
    __p = 0;
    LODWORD(v15) = 0;
    sub_24BF71A20(&v13, a2, a3);
    v10 = sub_24BF7174C(&v13, v11, a1);
    LOBYTE(v13) = 48;
    if (a4 >= 1)
    {
      do
      {
        sub_24BF716D8(v10, &v13);
        --a4;
      }

      while (a4);
    }
  }

  return v10;
}

void sub_24BF779A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p != v11)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF779CC(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (**a5)
  {
    v18 = byte_24BFF57DD[**a5];
    sub_24BF716D8(v7, &v18);
  }

  v14 = sub_24BF77AE0(v7, *a5[1], *a5[2], *a5[3], *a5[4], a5[5]);
  v15 = *a5[6];
  if (v15 >= 1)
  {
    v16 = a5[7];
    do
    {
      sub_24BF716D8(v14, v16);
      --v15;
    }

    while (v15);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v14, v11 - v13, a2 + 11);
  }

  return v14;
}

uint64_t sub_24BF77AE0(uint64_t a1, unint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = *(a6 + 47);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a6 + 32);
  }

  if (!v8)
  {
    if (!a5)
    {
      sub_24BF71A20(&v24, a2, a3);
      v15 = v22;
      return sub_24BF7174C(&v24, v15, a1);
    }

    v15 = &v24 + a3 + 1;
    v16 = a3 - a4;
    if (a3 - a4 < 2)
    {
      v19 = a2;
      v18 = &v24 + a3 + 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = (v16 >> 1) + 1;
      v18 = &v24 + a3 + 1;
      do
      {
        v19 = a2 / 0x64;
        *(v18 - 1) = *&a00010203040506[2 * (a2 % 0x64)];
        v18 -= 2;
        --v17;
        a2 /= 0x64uLL;
      }

      while (v17 > 1);
      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    *--v18 = (v19 % 0xA) | 0x30;
    v19 /= 0xAuLL;
LABEL_17:
    *(v18 - 1) = a5;
    sub_24BF71A20(&v18[-a4 - 1], v19, a4);
    return sub_24BF7174C(&v24, v15, a1);
  }

  v24 = &unk_285F9EFD0;
  __p = v27;
  v26 = xmmword_24BFF4C90;
  if (a5)
  {
    v10 = &v28[a3 + 1];
    v11 = a3 - a4;
    if (a3 - a4 < 2)
    {
      v14 = a2;
      v13 = &v28[a3 + 1];
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = (v11 >> 1) + 1;
      v13 = &v28[a3 + 1];
      do
      {
        v14 = a2 / 0x64;
        *(v13 - 1) = *&a00010203040506[2 * (a2 % 0x64)];
        v13 -= 2;
        --v12;
        a2 /= 0x64uLL;
      }

      while (v12 > 1);
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    *--v13 = (v14 % 0xA) | 0x30;
    v14 /= 0xAuLL;
LABEL_10:
    *(v13 - 1) = a5;
    sub_24BF71A20(&v13[-a4 - 1], v14, a4);
    goto LABEL_19;
  }

  sub_24BF71A20(v28, a2, a3);
  v10 = v20;
LABEL_19:
  sub_24BF7174C(v28, v10, &v24);
  sub_24BF743F8(a6, a1, __p, a4);
  v21 = sub_24BF7174C(__p + a4, __p + v26, a1);
  if (__p != v27)
  {
    operator delete(__p);
  }

  return v21;
}

uint64_t sub_24BF77DB0(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  result = sub_24BF77E54(a5, v7);
  if (v11 != v13)
  {

    return sub_24BF73C54(result, v11 - v13, a2 + 11);
  }

  return result;
}

uint64_t sub_24BF77E54(unsigned __int8 **a1, uint64_t a2)
{
  v2 = a2;
  v12 = *MEMORY[0x277D85DE8];
  if (**a1)
  {
    LOBYTE(v10[0]) = byte_24BFF57DD[**a1];
    sub_24BF716D8(a2, v10);
  }

  sub_24BF716D8(v2, a1[1]);
  if (*a1[2] == 1)
  {
    sub_24BF716D8(v2, a1[3]);
    v4 = *a1[4];
    if (v4 >= 1)
    {
      v5 = a1[1];
      do
      {
        sub_24BF716D8(v2, v5);
        --v4;
      }

      while (v4);
    }

    v6 = *a1[5];
    v7 = *a1[6];
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    sub_24BF71A20(v10, v6, v7);
    return sub_24BF7174C(v10, v8, v2);
  }

  return v2;
}

uint64_t sub_24BF77F5C(uint64_t a1, char *__s)
{
  if (!__s)
  {
    sub_24BF713F4("string pointer is null");
  }

  v4 = &__s[strlen(__s)];

  return sub_24BF7174C(__s, v4, a1);
}

void *sub_24BF77FB4(void *a1, unint64_t a2, unsigned int *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  do
  {
    ++v5;
    v7 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v7);
  v15 = a2;
  v16 = v5;
  if (a3)
  {
    return sub_24BF78124(a1, a3, v5 + 2, v5 + 2, &v15);
  }

  LOBYTE(v17[0]) = 48;
  sub_24BF716D8(a1, v17);
  LOBYTE(v17[0]) = 120;
  sub_24BF716D8(v4, v17);
  v9 = v4[2];
  if (v4[3] < (v9 + v5) || (v4[2] = v9 + v5, (v10 = v4[1]) == 0))
  {
    v13 = v5 - 1;
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    do
    {
      *(v17 + v13--) = a0123456789abcd_0[v3 & 0xF];
      v7 = v3 > 0xF;
      v3 >>= 4;
    }

    while (v7);
    return sub_24BF7174C(v17, v17 + v5, v4);
  }

  v11 = (v10 + v9 + v5 - 1);
  do
  {
    *v11-- = a0123456789abcd_0[v3 & 0xF];
    v12 = v3 >= 0x10;
    v3 >>= 4;
  }

  while (v12);
  return v4;
}

void *sub_24BF78124(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v26 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  LOBYTE(v24[0]) = 48;
  sub_24BF716D8(v7, v24);
  LOBYTE(v24[0]) = 120;
  sub_24BF716D8(v7, v24);
  v14 = *a5;
  v15 = *(a5 + 8);
  v16 = v15;
  v17 = v7[2];
  v18 = v17 + v15;
  if (v7[3] >= v18 && (v7[2] = v18, (v19 = v7[1]) != 0))
  {
    v20 = (v17 + v16 + v19 - 1);
    do
    {
      *v20-- = a0123456789abcd_0[v14 & 0xF];
      v9 = v14 >= 0x10;
      v14 >>= 4;
    }

    while (v9);
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v16 - 1;
    v25 = 0;
    do
    {
      *(v24 + v21--) = a0123456789abcd_0[v14 & 0xF];
      v22 = v14 > 0xF;
      v14 >>= 4;
    }

    while (v22);
    v7 = sub_24BF7174C(v24, v24 + v16, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

unsigned __int8 *sub_24BF782BC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 1);
  if ((a1 + 1) == a2)
  {
    sub_24BF713F4("invalid format string");
  }

  v5 = *v3;
  if (v5 == 123)
  {
    *(a3 + 24) = sub_24BF7174C((a1 + 1), (a1 + 2), *(a3 + 24));
  }

  else
  {
    if (v5 == 125)
    {
      v6 = *(a3 + 16);
      if ((v6 & 0x80000000) == 0)
      {
        *(a3 + 16) = v6 + 1;
        sub_24BF79234(a3 + 24, v6, &v26);
        v7 = *(a3 + 24);
        switch(v27)
        {
          case 1:
            goto LABEL_16;
          case 2:
            goto LABEL_26;
          case 3:
            goto LABEL_23;
          case 4:
            goto LABEL_25;
          case 5:
            goto LABEL_21;
          case 6:
            goto LABEL_29;
          case 7:
            v21 = 0xFFFFFFFF00000000;
            LOBYTE(v22) = 0;
            *(&v22 + 1) = 0;
            *(&v22 + 3) = 32;
            BYTE7(v22) = 1;
            v8 = sub_24BF71F90(v7, v26.n128_u8[0], &v21);
            goto LABEL_36;
          case 8:
            goto LABEL_27;
          case 9:
            goto LABEL_28;
          case 10:
          case 11:
            goto LABEL_24;
          case 12:
            goto LABEL_22;
          case 13:
            goto LABEL_20;
          case 14:
            v21 = 0xFFFFFFFF00000000;
            LOBYTE(v22) = 0;
            *(&v22 + 1) = 0;
            *(&v22 + 3) = 32;
            BYTE7(v22) = 1;
            v8 = sub_24BF77FB4(v7, v26.n128_u64[0], &v21);
            goto LABEL_36;
          case 15:
            v14 = *(a3 + 48);
            v18 = 0;
            *&v19 = 0;
            DWORD2(v19) = 0;
            v21 = v7;
            v22 = *(a3 + 32);
            v23 = v14;
            (v26.n128_u64[1])(v26.n128_u64[0], &v18, &v21);
            goto LABEL_33;
          default:
            break;
        }

LABEL_37:
        *(a3 + 24) = v7;
        return v3 + 1;
      }

LABEL_40:
      sub_24BF713F4("cannot switch from manual to automatic argument indexing");
    }

    v16 = a3;
    v17 = 0;
    if (v5 == 58)
    {
      v10 = *(a3 + 16);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_40;
      }

      *(a3 + 16) = v10 + 1;
      v17 = v10;
    }

    else
    {
      v3 = sub_24BF79270((a1 + 1), a2, &v16);
    }

    if (v3 == a2)
    {
LABEL_41:
      sub_24BF713F4("missing '}' in format string");
    }

    v11 = *v3;
    if (v11 != 58)
    {
      if (v11 == 125)
      {
        sub_24BF79234(a3 + 24, v17, &v26);
        v7 = *(a3 + 24);
        v18 = v7;
        v19 = *(a3 + 32);
        v12 = *(a3 + 48);
        v20 = v12;
        switch(v27)
        {
          case 1:
LABEL_16:
            v8 = sub_24BF71554(v7, v26.n128_u32[0]);
            goto LABEL_36;
          case 2:
LABEL_26:
            v8 = sub_24BF71848(v7, v26.n128_u32[0]);
            goto LABEL_36;
          case 3:
LABEL_23:
            v8 = sub_24BF71908(v7, v26.n128_u64[0]);
            goto LABEL_36;
          case 4:
LABEL_25:
            v8 = sub_24BF71AA4(v7, v26.n128_u64[0]);
            goto LABEL_36;
          case 5:
LABEL_21:
            v8 = sub_24BF71B74(v7, v26.n128_i64[0], v26.n128_i64[1]);
            goto LABEL_36;
          case 6:
LABEL_29:
            v8 = sub_24BF71E0C(v7, v26.n128_u64[0], v26.n128_u64[1]);
            goto LABEL_36;
          case 7:
            v8 = sub_24BF714C0(&v18, v26.n128_u8[0]);
            goto LABEL_36;
          case 8:
LABEL_27:
            LOBYTE(v21) = v26.n128_u8[0];
            sub_24BF716D8(v7, &v21);
            goto LABEL_37;
          case 9:
LABEL_28:
            v8 = sub_24BF75488(v7, v26.n128_f32[0]);
            goto LABEL_36;
          case 10:
          case 11:
LABEL_24:
            v8 = sub_24BF76B30(v7, v26.n128_f64[0]);
            goto LABEL_36;
          case 12:
LABEL_22:
            v8 = sub_24BF77F5C(v7, v26.n128_u64[0]);
            goto LABEL_36;
          case 13:
LABEL_20:
            v8 = sub_24BF7174C(v26.n128_u64[0], (v26.n128_u64[0] + v26.n128_u64[1]), v7);
            goto LABEL_36;
          case 14:
            v8 = sub_24BF7150C(&v18, v26.n128_u64[0]);
LABEL_36:
            v7 = v8;
            break;
          case 15:
            v24[0] = 0;
            v24[1] = 0;
            v25 = 0;
            v21 = v7;
            v22 = v19;
            v23 = v12;
            (v26.n128_u64[1])(v26.n128_u64[0], v24, &v21);
LABEL_33:
            v7 = v21;
            break;
          default:
            goto LABEL_37;
        }

        goto LABEL_37;
      }

      goto LABEL_41;
    }

    v13 = sub_24BF787B4(a3, v17, v3 + 1, a2);
    if (v13 == a2 || (v3 = v13, *v13 != 125))
    {
      sub_24BF713F4("unknown format specifier");
    }
  }

  return v3 + 1;
}

uint64_t sub_24BF786E0(uint64_t result, char *__s, char *a3)
{
  if (__s != a3)
  {
    v4 = __s;
    v5 = result;
    v6 = (a3 - __s);
    v7 = memchr(__s, 125, a3 - __s);
    if (v7)
    {
      v8 = v7;
      do
      {
        v9 = v8 + 1;
        if (v8 + 1 == a3 || *v9 != 125)
        {
          sub_24BF713F4("unmatched '}' in format string");
        }

        v10 = *v5;
        *(v10 + 24) = sub_24BF7174C(v4, v9, *(*v5 + 24));
        v4 = v8 + 2;
        v6 = (a3 - (v8 + 2));
        v8 = memchr(v8 + 2, 125, v6);
      }

      while (v8);
    }

    v11 = *v5;
    result = sub_24BF7174C(v4, &v6[v4], *(v11 + 24));
    *(v11 + 24) = result;
  }

  return result;
}

unsigned __int8 *sub_24BF787B4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = sub_24BF79234(a1 + 24, a2, &__s);
  v8 = v53;
  if (v53 == 15)
  {
    v9 = *(a1 + 8) + *a1 - a3;
    *a1 = a3;
    *(a1 + 8) = v9;
    (__s.n128_u64[1])(__s.n128_u64[0], a1, a1 + 24, v7);
    return *a1;
  }

  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  DWORD1(v50) = -1;
  *(&v50 + 9) = 0;
  BYTE11(v50) = 32;
  BYTE13(v50) = 0;
  HIBYTE(v50) = 1;
  DWORD2(v51[0]) = 0;
  LODWORD(v51[2]) = 0;
  if (a4 - a3 < 2)
  {
    if (a3 == a4)
    {
      goto LABEL_107;
    }

    goto LABEL_8;
  }

  v10 = a3[1] - 60;
  if (v10 > 0x22 || ((1 << v10) & 0x400000005) == 0)
  {
LABEL_8:
    v11 = *a3;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v12 = 0;
  v13 = v53 - 1;
  v14 = 1 << v53;
  v15 = (1 << v53) & 0x3E00;
  v16 = (1 << v53) & 0xE2A;
  while (2)
  {
    switch(v11)
    {
      case ' ':
      case '+':
      case '-':
        if (!v8)
        {
          goto LABEL_107;
        }

        if (!v16 || v12 >= 2)
        {
          goto LABEL_156;
        }

        switch(v11)
        {
          case ' ':
            v17 = 48;
            break;
          case '+':
            v17 = 32;
            break;
          case '-':
            v17 = 16;
            break;
          default:
            goto LABEL_58;
        }

        *(&v50 + 9) = *(&v50 + 9) & 0xFF8F | v17;
LABEL_58:
        ++a3;
        v12 = 2;
        goto LABEL_66;
      case '#':
        if (!v8)
        {
          goto LABEL_107;
        }

        if (v13 > 0xA || v12 >= 3)
        {
          goto LABEL_156;
        }

        *(&v50 + 9) |= 0x80u;
        ++a3;
        v12 = 3;
        goto LABEL_66;
      case '.':
        if (!v8)
        {
          goto LABEL_107;
        }

        if (!v15 || v12 >= 6)
        {
          goto LABEL_156;
        }

        a3 = sub_24BF7974C(a3, a4, &v50 + 1, &v51[1] + 2, a1);
        v12 = 6;
        goto LABEL_66;
      case '0':
        if (v12 >= 4)
        {
          goto LABEL_156;
        }

        if (v13 < 0xB)
        {
          if ((BYTE9(v50) & 0xF) == 0)
          {
            *(&v50 + 9) |= 4u;
            BYTE11(v50) = 48;
          }

          ++a3;
          v12 = 4;
LABEL_66:
          if (a3 == a4)
          {
            goto LABEL_107;
          }

          v11 = *a3;
          continue;
        }

        if (v8)
        {
          sub_24BF713F4("format specifier requires numeric argument");
        }

LABEL_107:
        v54 = v51[0];
        v55 = *&v51[1];
        sub_24BF7950C(&v50, &v54, a1 + 24);
        v54 = *(&v51[1] + 8);
        v55 = *(&v51[2] + 1);
        sub_24BF795AC(&v50 + 4, &v54, a1 + 24);
        if (a3 == a4 || *a3 != 125)
        {
          sub_24BF713F4("missing '}' in format string");
        }

        v31 = *(a1 + 24);
        v32 = *(a1 + 48);
        switch(v53)
        {
          case 1:
            v33 = __s.n128_u32[0];
            if ((*(&v50 + 9) & 0x100) == 0 || (LODWORD(v55) = 1, v54 = __s.n128_u32[0], (sub_24BF720A4(v31, &v54, &v50, v32) & 1) == 0))
            {
              if ((v33 & 0x80000000) != 0)
              {
                v33 = -v33;
                v34 = 0x100002D00000000;
              }

              else
              {
                v34 = dword_24BFF4D20[(*(&v50 + 9) >> 4) & 7] << 32;
              }

              v45 = v34 | v33;
              goto LABEL_150;
            }

            goto LABEL_152;
          case 2:
            v43 = __s.n128_u32[0];
            v44 = *(&v50 + 9);
            if ((*(&v50 + 9) & 0x100) == 0)
            {
              goto LABEL_134;
            }

            LODWORD(v55) = 2;
            v54 = __s.n128_u32[0];
            if ((sub_24BF720A4(v31, &v54, &v50, v32) & 1) == 0)
            {
              v44 = *(&v50 + 9);
LABEL_134:
              v45 = v43 | (dword_24BFF4D20[(v44 >> 4) & 7] << 32);
LABEL_150:
              v35 = sub_24BF72274(v31, v45, &v50);
              goto LABEL_151;
            }

            goto LABEL_152;
          case 3:
            v40 = __s.n128_u64[0];
            if ((*(&v50 + 9) & 0x100) != 0)
            {
              LODWORD(v55) = 3;
              v54 = __s.n128_u64[0];
              if (sub_24BF720A4(v31, &v54, &v50, v32))
              {
                goto LABEL_152;
              }
            }

            if ((v40 & 0x8000000000000000) != 0)
            {
              v40 = -v40;
              v41 = 16777261;
            }

            else
            {
              v41 = dword_24BFF4D20[(*(&v50 + 9) >> 4) & 7];
            }

            goto LABEL_147;
          case 4:
            v40 = __s.n128_u64[0];
            v42 = *(&v50 + 9);
            if ((*(&v50 + 9) & 0x100) == 0)
            {
              goto LABEL_129;
            }

            LODWORD(v55) = 4;
            v54 = __s.n128_u64[0];
            if (sub_24BF720A4(v31, &v54, &v50, v32))
            {
              goto LABEL_152;
            }

            v42 = *(&v50 + 9);
LABEL_129:
            v41 = dword_24BFF4D20[(v42 >> 4) & 7];
LABEL_147:
            v35 = sub_24BF79AF8(v31, v40, v41, &v50);
            goto LABEL_151;
          case 5:
            v36 = __s.n128_u64[1];
            v37 = __s.n128_u64[0];
            v38 = *(&v50 + 9);
            if ((*(&v50 + 9) & 0x100) == 0)
            {
              goto LABEL_118;
            }

            LODWORD(v55) = 5;
            v54 = __s;
            if (sub_24BF720A4(v31, &v54, &v50, v32))
            {
              goto LABEL_152;
            }

            v38 = *(&v50 + 9);
LABEL_118:
            if ((v36 & 0x8000000000000000) != 0)
            {
              v48 = v37 == 0;
              v37 = -v37;
              v36 = -(v36 + !v48);
              v47 = 16777261;
            }

            else
            {
              v39 = (v38 >> 4) & 7;
LABEL_139:
              v47 = dword_24BFF4D20[v39];
            }

            v54.n128_u64[0] = v37;
            v54.n128_u64[1] = v36;
            LODWORD(v55) = v47;
            v35 = sub_24BF7A7D4(v31, &v54, &v50);
LABEL_151:
            v31 = v35;
LABEL_152:
            *(a1 + 24) = v31;
            break;
          case 6:
            v36 = __s.n128_u64[1];
            v37 = __s.n128_u64[0];
            v46 = *(&v50 + 9);
            if ((*(&v50 + 9) & 0x100) == 0)
            {
              goto LABEL_138;
            }

            LODWORD(v55) = 6;
            v54 = __s;
            if (sub_24BF720A4(v31, &v54, &v50, v32))
            {
              goto LABEL_152;
            }

            v46 = *(&v50 + 9);
LABEL_138:
            v39 = (v46 >> 4) & 7;
            goto LABEL_139;
          case 7:
            v35 = sub_24BF71F90(*(a1 + 24), __s.n128_u8[0], &v50);
            goto LABEL_151;
          case 8:
            v35 = sub_24BF7B5F4(*(a1 + 24), __s.n128_u8[0], &v50, *(a1 + 48));
            goto LABEL_151;
          case 9:
            v35 = sub_24BF7B760(*(a1 + 24), v50, *(&v50 + 1), *(a1 + 48), __s.n128_f32[0]);
            goto LABEL_151;
          case 10:
            v35 = sub_24BF7E7C0(*(a1 + 24), v50, *(&v50 + 1), *(a1 + 48), __s.n128_f64[0]);
            goto LABEL_151;
          case 11:
            v35 = sub_24BF7EB2C(*(a1 + 24), v50, *(&v50 + 1), *(a1 + 48), __s.n128_f64[0]);
            goto LABEL_151;
          case 12:
            v35 = sub_24BF7EE98(*(a1 + 24), __s.n128_u64[0], &v50);
            goto LABEL_151;
          case 13:
            v35 = sub_24BF7EF38(*(a1 + 24), __s.n128_u64[0], __s.n128_u64[1], &v50);
            goto LABEL_151;
          case 14:
            v35 = sub_24BF77FB4(*(a1 + 24), __s.n128_u64[0], &v50);
            goto LABEL_151;
          default:
            goto LABEL_152;
        }

        return a3;
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '{':
        if (v12 >= 5)
        {
          goto LABEL_156;
        }

        a3 = sub_24BF7964C(a3, a4, &v50, v51, a1);
        v12 = 5;
        goto LABEL_66;
      case '<':
      case '>':
      case '^':
        if (v12)
        {
          goto LABEL_156;
        }

        if (v11 == 62)
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        if (v11 == 94)
        {
          v19 = 3;
        }

        else
        {
          v19 = v18;
        }

        if (v11 == 60)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        *(&v50 + 9) = *(&v50 + 9) & 0xFFF0 | v20;
        ++a3;
        goto LABEL_65;
      case '?':
        if ((v14 & 0x3100) == 0)
        {
          goto LABEL_106;
        }

        v30 = 18;
        goto LABEL_105;
      case 'A':
        if ((v14 & 0xE00) == 0)
        {
          goto LABEL_106;
        }

        v30 = 8;
        goto LABEL_105;
      case 'B':
        if ((v14 & 0x1FE) == 0)
        {
          goto LABEL_106;
        }

        v30 = 6;
        goto LABEL_105;
      case 'E':
        if ((v14 & 0xE00) == 0)
        {
          goto LABEL_106;
        }

        v30 = 10;
        goto LABEL_105;
      case 'F':
        if ((v14 & 0xE00) == 0)
        {
          goto LABEL_106;
        }

        v30 = 12;
        goto LABEL_105;
      case 'G':
        if ((v14 & 0xE00) == 0)
        {
          goto LABEL_106;
        }

        v30 = 14;
        goto LABEL_105;
      case 'L':
        if (!v8)
        {
          goto LABEL_107;
        }

        if (v13 > 0xA || v12 >= 7)
        {
          goto LABEL_156;
        }

        *(&v50 + 9) |= 0x100u;
        ++a3;
        v12 = 7;
        goto LABEL_66;
      case 'X':
        if ((v14 & 0x1FE) == 0)
        {
          goto LABEL_106;
        }

        v30 = 4;
        goto LABEL_105;
      case 'a':
        if ((v14 & 0xE00) == 0)
        {
          goto LABEL_106;
        }

        v30 = 7;
        goto LABEL_105;
      case 'b':
        if ((v14 & 0x1FE) == 0)
        {
          goto LABEL_106;
        }

        v30 = 5;
        goto LABEL_105;
      case 'c':
        if (v8 == 7)
        {
          goto LABEL_156;
        }

        if ((v14 & 0x1FE) != 0)
        {
          v30 = 15;
LABEL_105:
          BYTE8(v50) = v30;
          ++a3;
        }

        else
        {
LABEL_106:
          if (v8)
          {
LABEL_156:
            sub_24BF713F4("invalid format specifier");
          }
        }

        goto LABEL_107;
      case 'd':
        if ((v14 & 0x1FE) == 0)
        {
          goto LABEL_106;
        }

        v30 = 1;
        goto LABEL_105;
      case 'e':
        if ((v14 & 0xE00) == 0)
        {
          goto LABEL_106;
        }

        v30 = 9;
        goto LABEL_105;
      case 'f':
        if ((v14 & 0xE00) == 0)
        {
          goto LABEL_106;
        }

        v30 = 11;
        goto LABEL_105;
      case 'g':
        if ((v14 & 0xE00) == 0)
        {
          goto LABEL_106;
        }

        v30 = 13;
        goto LABEL_105;
      case 'o':
        if ((v14 & 0x1FE) == 0)
        {
          goto LABEL_106;
        }

        v30 = 2;
        goto LABEL_105;
      case 'p':
        if ((v14 & 0x5000) == 0)
        {
          goto LABEL_106;
        }

        v30 = 17;
        goto LABEL_105;
      case 's':
        if ((v14 & 0x3080) == 0)
        {
          goto LABEL_106;
        }

        v30 = 16;
        goto LABEL_105;
      case 'x':
        if ((v14 & 0x1FE) == 0)
        {
          goto LABEL_106;
        }

        v30 = 3;
        goto LABEL_105;
      case '}':
        goto LABEL_107;
      default:
        v21 = *a3;
        if (v21 == 125)
        {
          goto LABEL_107;
        }

        v22 = (0x3A55000000000000uLL >> ((*a3 >> 2) & 0x3E)) & 3;
        v23 = v22 + 1;
        v24 = &a3[v22 + 1];
        if (a4 - v24 <= 0)
        {
          goto LABEL_156;
        }

        if (v21 == 123)
        {
          sub_24BF713F4("invalid fill character '{'");
        }

        v25 = *v24;
        switch(v25)
        {
          case '<':
            v26 = 1;
            break;
          case '^':
            v26 = 3;
            break;
          case '>':
            v26 = 2;
            break;
          default:
            goto LABEL_156;
        }

        if (v12)
        {
          goto LABEL_156;
        }

        v27 = v22 + 1;
        v28 = (&v50 | 0xB);
        do
        {
          v29 = *a3++;
          *v28++ = v29;
          --v27;
        }

        while (v27);
        HIBYTE(v50) = v23;
        *(&v50 + 9) = *(&v50 + 9) & 0xFFF0 | v26;
        a3 = v24 + 1;
LABEL_65:
        v12 = 1;
        goto LABEL_66;
    }
  }
}

double sub_24BF79234@<D0>(uint64_t a1@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  *&result = sub_24BF71394((a1 + 8), a2, a3).n128_u64[0];
  if (!a3[1].n128_u32[0])
  {
    sub_24BF713F4("argument not found");
  }

  return result;
}

unsigned __int8 *sub_24BF79270(unsigned __int8 *a1, unsigned __int8 *a2, _DWORD *a3)
{
  v15 = a1;
  v6 = *a1;
  if ((v6 - 48) <= 9)
  {
    if (v6 == 48)
    {
      v7 = 0;
      result = a1 + 1;
      v15 = a1 + 1;
    }

    else
    {
      v7 = sub_24BF79390(&v15, a2, 0x7FFFFFFFLL);
      result = v15;
    }

    if (result != a2)
    {
      v14 = *result;
      if (v14 == 58 || v14 == 125)
      {
        if (*(*a3 + 16) >= 1)
        {
          sub_24BF713F4("cannot switch from automatic to manual argument indexing");
        }

        *(*a3 + 16) = -1;
        a3[2] = v7;
        return result;
      }
    }

LABEL_24:
    sub_24BF713F4("invalid format string");
  }

  if (v6 != 95 && (v6 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_24;
  }

  v10 = a1 + 1;
  while (v10 != a2)
  {
    v12 = *v10++;
    v11 = v12;
    if ((v12 - 48) >= 0xA && v11 != 95 && (v11 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      a2 = v10 - 1;
      break;
    }
  }

  sub_24BF79414(a3, a1, a2 - a1);
  return a2;
}

uint64_t sub_24BF79390(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = result;
  LODWORD(result) = 0;
  v4 = a2 - 1;
  v5 = (*v3 + 1);
  v6 = **v3;
  while (1)
  {
    v7 = result;
    result = (10 * result + v6 - 48);
    if (v5 == a2)
    {
      break;
    }

    v8 = *v5++;
    v6 = v8;
    if ((v8 - 48) >= 0xA)
    {
      v4 = v5 - 2;
      a2 = v5 - 1;
      break;
    }
  }

  v9 = a2 - *v3;
  *v3 = a2;
  if (v9 >= 10 && (v9 != 10 || (((*v4 - 48) & 0xFFFFFFFE) + 10 * v7) >> 31))
  {
    return a3;
  }

  return result;
}

uint64_t sub_24BF79414(_DWORD *a1, const void *a2, size_t a3)
{
  result = sub_24BF79454((*a1 + 32), a2, a3);
  if ((result & 0x80000000) != 0)
  {
    sub_24BF713F4("argument not found");
  }

  a1[2] = result;
  return result;
}

uint64_t sub_24BF79454(uint64_t *a1, const void *a2, size_t a3)
{
  if ((*a1 & 0x4000000000000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = -32;
  if (*a1 >= 0)
  {
    v4 = -16;
  }

  v5 = (a1[1] + v4);
  v6 = v5[1];
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = (*v5 + 8); ; i += 2)
  {
    v10 = strlen(*(i - 1));
    v11 = v10;
    v12 = v10 >= a3 ? a3 : v10;
    v13 = memcmp(*(i - 1), a2, v12);
    if (v11 == a3 && v13 == 0)
    {
      break;
    }

    if (!--v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *i;
}

unint64_t sub_24BF7950C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v5 = *MEMORY[0x277D85DE8];
  if (*a2 == 2)
  {
    sub_24BF79990(a3, v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    if (*a2 != 1)
    {
      return result;
    }

    sub_24BF79234(a3, *(a2 + 8), v4);
  }

  result = sub_24BF798BC(v4);
  *v3 = result;
  return result;
}

unint64_t sub_24BF795AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v5 = *MEMORY[0x277D85DE8];
  if (*a2 == 2)
  {
    sub_24BF79990(a3, v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    if (*a2 != 1)
    {
      return result;
    }

    sub_24BF79234(a3, *(a2 + 8), v4);
  }

  result = sub_24BF79A24(v4);
  *v3 = result;
  return result;
}

unsigned __int8 *sub_24BF7964C(unsigned __int8 *result, unsigned __int8 *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v13 = result;
  v6 = *result;
  if ((v6 - 48) > 9)
  {
    if (v6 == 123)
    {
      v9 = result + 1;
      v12[1] = a4;
      v13 = v9;
      v12[0] = a5;
      if (v9 != a2)
      {
        v10 = *v9;
        if (v10 == 58 || v10 == 125)
        {
          v11 = *(a5 + 16);
          if (v11 < 0)
          {
            sub_24BF713F4("cannot switch from manual to automatic argument indexing");
          }

          *(a5 + 16) = v11 + 1;
          *a4 = 1;
          a4[2] = v11;
        }

        else
        {
          v9 = sub_24BF7978C(v9, a2, v12);
        }

        v13 = v9;
      }

      if (v9 == a2 || *v9 != 125)
      {
        sub_24BF713F4("invalid format string");
      }

      return v9 + 1;
    }
  }

  else
  {
    v8 = sub_24BF79390(&v13, a2, 0xFFFFFFFFLL);
    if (v8 == -1)
    {
      sub_24BF713F4("number is too big");
    }

    *a3 = v8;
    return v13;
  }

  return result;
}

unsigned __int8 *sub_24BF7974C(uint64_t a1, unsigned __int8 *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v6 = (a1 + 1);
  if (v6 == a2 || *v6 == 125)
  {
    sub_24BF713F4("invalid precision");
  }

  return sub_24BF7964C(v6, a2, a3, a4, a5);
}

unsigned __int8 *sub_24BF7978C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a2;
  v16 = a1;
  v5 = *a1;
  if ((v5 - 48) <= 9)
  {
    if (v5 == 48)
    {
      v6 = 0;
      result = a1 + 1;
      v16 = result;
    }

    else
    {
      v6 = sub_24BF79390(&v16, a2, 0x7FFFFFFFLL);
      result = v16;
    }

    if (result != v4)
    {
      v14 = *result;
      if (v14 == 58 || v14 == 125)
      {
        v15 = a3[1];
        *v15 = 1;
        v15[2] = v6;
        if (*(*a3 + 16) >= 1)
        {
          sub_24BF713F4("cannot switch from automatic to manual argument indexing");
        }

        *(*a3 + 16) = -1;
        return result;
      }
    }

LABEL_24:
    sub_24BF713F4("invalid format string");
  }

  if (v5 != 95 && (v5 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_24;
  }

  v9 = a1 + 1;
  while (v9 != a2)
  {
    v11 = *v9++;
    v10 = v11;
    if ((v11 - 48) >= 0xA && v10 != 95 && (v10 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      v4 = v9 - 1;
      break;
    }
  }

  v13 = a3[1];
  *v13 = 2;
  *(v13 + 8) = a1;
  *(v13 + 16) = v4 - a1;
  return v4;
}

unint64_t sub_24BF798BC(unsigned int *a1)
{
  switch(a1[4])
  {
    case 1u:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 2u:
      result = *a1;
      goto LABEL_9;
    case 3u:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    case 4u:
    case 6u:
      goto LABEL_5;
    case 5u:
      if ((*(a1 + 1) & 0x8000000000000000) != 0)
      {
LABEL_7:
        sub_24BF713F4("negative width");
      }

LABEL_5:
      result = *a1;
LABEL_9:
      if (result >> 31)
      {
        sub_24BF713F4("number is too big");
      }

      return result;
    default:
      sub_24BF713F4("width is not integer");
  }
}

void sub_24BF79990(uint64_t a1@<X0>, __n128 *a2@<X8>, const void *a3@<X1>, size_t a4@<X2>)
{
  sub_24BF799CC((a1 + 8), a3, a4, a2);
  if (!a2[1].n128_u32[0])
  {
    sub_24BF713F4("argument not found");
  }
}

void sub_24BF799CC(uint64_t *a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, __n128 *a4@<X8>)
{
  v6 = sub_24BF79454(a1, a2, a3);
  if (v6 < 0)
  {
    a4[1].n128_u32[0] = 0;
  }

  else
  {

    sub_24BF71394(a1, v6, a4);
  }
}

unint64_t sub_24BF79A24(unsigned int *a1)
{
  switch(a1[4])
  {
    case 1u:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 2u:
      result = *a1;
      goto LABEL_9;
    case 3u:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    case 4u:
    case 6u:
      goto LABEL_5;
    case 5u:
      if ((*(a1 + 1) & 0x8000000000000000) != 0)
      {
LABEL_7:
        sub_24BF713F4("negative precision");
      }

LABEL_5:
      result = *a1;
LABEL_9:
      if (result >> 31)
      {
        sub_24BF713F4("number is too big");
      }

      return result;
    default:
      sub_24BF713F4("precision is not integer");
  }
}

void *sub_24BF79AF8(void *a1, unint64_t a2, unsigned int a3, unsigned int *a4)
{
  v4 = a2;
  v5 = a1;
  v88 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 8);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      v22 = byte_24BFF5120[__clz(a2 | 1) ^ 0x3F];
      v23 = v22 - (qword_24BFF5160[v22] > a2);
      v24 = *a4;
      v25 = a4[1];
      if ((v25 + 1) | v24)
      {
        v26 = v23 + HIBYTE(a3);
        v27 = *(a4 + 9) & 0xF;
        v28 = v25 + HIBYTE(a3);
        v29 = __OFSUB__(v25, v23);
        v30 = v25 - v23;
        if ((v30 < 0) ^ v29 | (v30 == 0))
        {
          v30 = 0;
          v28 = v23 + HIBYTE(a3);
        }

        v31 = v24 - v26;
        if (v26 >= v24)
        {
          v31 = 0;
          v24 = v23 + HIBYTE(a3);
        }

        LODWORD(v84[0]) = a3;
        if (v27 == 4)
        {
          v30 = v31;
          v32 = v24;
        }

        else
        {
          v32 = v28;
        }

        *(&v84[0] + 1) = v32;
        *&v84[1] = v30;
        *(&v84[1] + 1) = a2;
        LODWORD(v85) = v23;
        return sub_24BF7A158(a1, a4, v32, v32, v84);
      }

      v67 = a3 & 0xFFFFFF;
      if ((a3 & 0xFFFFFF) != 0)
      {
        do
        {
          LOBYTE(v84[0]) = v67;
          sub_24BF716D8(v5, v84);
          v15 = v67 > 0xFF;
          v67 >>= 8;
        }

        while (v15);
      }

      memset(v84, 0, 20);
      sub_24BF71A20(v84, v4, v23);
      return sub_24BF7174C(v84, v68, v5);
    }

    if (v6 != 2)
    {
      goto LABEL_136;
    }

    v9 = 0;
    v46 = a2;
    do
    {
      ++v9;
      v15 = v46 > 7;
      v46 >>= 3;
    }

    while (v15);
    v47 = *(a4 + 9);
    if (a3)
    {
      v48 = 12288;
    }

    else
    {
      v48 = 48;
    }

    LODWORD(v49) = (v48 | a3) + 0x1000000;
    v51 = *a4;
    v50 = a4[1];
    if (v50 > v9 || a2 == 0)
    {
      LODWORD(v49) = a3;
    }

    if ((v47 & 0x80) != 0)
    {
      v49 = v49;
    }

    else
    {
      v49 = a3;
    }

    if ((v50 + 1) | v51)
    {
      v53 = v9 + (v49 >> 24);
      v54 = v47 & 0xF;
      v55 = (v50 - v9);
      v56 = v50 <= v9;
      if (v50 > v9)
      {
        v57 = v50 + BYTE3(v49);
      }

      else
      {
        v57 = v53;
      }

      if (v56)
      {
        v58 = 0;
      }

      else
      {
        v58 = v55;
      }

      if (v53 < v51)
      {
        v59 = v51 - v53;
      }

      else
      {
        v51 = v53;
        v59 = 0;
      }

      LODWORD(v84[0]) = v49;
      if (v54 == 4)
      {
        v60 = v51;
      }

      else
      {
        v60 = v57;
      }

      if (v54 == 4)
      {
        v61 = v59;
      }

      else
      {
        v61 = v58;
      }

      *(&v84[0] + 1) = v60;
      *&v84[1] = v61;
      *(&v84[1] + 1) = a2;
      LODWORD(v85) = v9;
      return sub_24BF7A624(a1, a4, v60, v60, v84);
    }

    v78 = v49 & 0xFFFFFF;
    if ((v49 & 0xFFFFFF) != 0)
    {
      do
      {
        LOBYTE(v84[0]) = v78;
        sub_24BF716D8(v5, v84);
        v15 = v78 > 0xFF;
        v78 >>= 8;
      }

      while (v15);
    }

    v79 = v5[2];
    if (v5[3] >= (v79 + v9))
    {
      v5[2] = v79 + v9;
      v80 = v5[1];
      if (v80)
      {
        v81 = (v80 + v79 + v9 - 1);
        do
        {
          *v81-- = v4 & 7 | 0x30;
          v66 = v4 >= 8;
          v4 >>= 3;
        }

        while (v66);
        return v5;
      }
    }

    v82 = v9 - 1;
    memset(v84, 0, 22);
    do
    {
      *(v84 + v82--) = v4 & 7 | 0x30;
      v15 = v4 > 7;
      v4 >>= 3;
    }

    while (v15);
LABEL_132:
    v68 = v84 + v9;
    return sub_24BF7174C(v84, v68, v5);
  }

  if (v6 - 3 >= 2)
  {
    if (v6 - 5 < 2)
    {
      v7 = *(a4 + 9);
      if ((v7 & 0x80) != 0)
      {
        if (v6 == 6)
        {
          v8 = 16944;
        }

        else
        {
          v8 = 25136;
        }

        if (a3)
        {
          v8 <<= 8;
        }

        a3 = (v8 | a3) + 0x2000000;
      }

      v9 = 0;
      v10 = a2;
      do
      {
        ++v9;
        v15 = v10 > 1;
        v10 >>= 1;
      }

      while (v15);
      v11 = *a4;
      v12 = a4[1];
      if ((v12 + 1) | v11)
      {
        v13 = v7 & 0xF;
        v14 = (v12 - v9);
        v15 = v12 <= v9;
        if (v12 > v9)
        {
          v16 = v12 + HIBYTE(a3);
        }

        else
        {
          v16 = v9 + (a3 >> 24);
        }

        if (v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

        v18 = v11 - (a3 >> 24) - v9;
        if (v9 + HIBYTE(a3) >= v11)
        {
          v11 = v9 + (a3 >> 24);
          v18 = 0;
        }

        LODWORD(v84[0]) = a3;
        if (v13 == 4)
        {
          v19 = v11;
        }

        else
        {
          v19 = v16;
        }

        if (v13 == 4)
        {
          v20 = v18;
        }

        else
        {
          v20 = v17;
        }

        *(&v84[0] + 1) = v19;
        *&v84[1] = v20;
        *(&v84[1] + 1) = a2;
        LODWORD(v85) = v9;
        return sub_24BF7A46C(a1, a4, v19, v19, v84);
      }

      v62 = a3 & 0xFFFFFF;
      if ((a3 & 0xFFFFFF) != 0)
      {
        do
        {
          LOBYTE(v84[0]) = v62;
          sub_24BF716D8(v5, v84);
          v15 = v62 > 0xFF;
          v62 >>= 8;
        }

        while (v15);
      }

      v63 = v5[2];
      if (v5[3] >= (v63 + v9))
      {
        v5[2] = v63 + v9;
        v64 = v5[1];
        if (v64)
        {
          v65 = (v64 + v63 + v9 - 1);
          do
          {
            *v65-- = v4 & 1 | 0x30;
            v66 = v4 >= 2;
            v4 >>= 1;
          }

          while (v66);
          return v5;
        }
      }

      v75 = v9 - 1;
      v87 = 0;
      v85 = 0u;
      v86 = 0u;
      memset(v84, 0, sizeof(v84));
      do
      {
        *(v84 + v75--) = v4 & 1 | 0x30;
        v15 = v4 > 1;
        v4 >>= 1;
      }

      while (v15);
      goto LABEL_132;
    }

    if (v6 == 15)
    {
      LOBYTE(v84[0]) = 0;
      BYTE1(v84[0]) = a2;
      return sub_24BF73B78(a1, a4, 1, 1uLL, v84);
    }

LABEL_136:
    sub_24BF713F4("invalid format specifier");
  }

  v33 = *(a4 + 9);
  if ((v33 & 0x80) != 0)
  {
    if (v6 == 4)
    {
      v34 = 22576;
    }

    else
    {
      v34 = 30768;
    }

    if (a3)
    {
      v34 <<= 8;
    }

    a3 = (v34 | a3) + 0x2000000;
  }

  v9 = 0;
  v35 = a2;
  do
  {
    ++v9;
    v15 = v35 > 0xF;
    v35 >>= 4;
  }

  while (v15);
  v36 = *a4;
  v37 = a4[1];
  if ((v37 + 1) | v36)
  {
    v38 = v33 & 0xF;
    v39 = (v37 - v9);
    v40 = v37 <= v9;
    if (v37 > v9)
    {
      v41 = v37 + HIBYTE(a3);
    }

    else
    {
      v41 = v9 + (a3 >> 24);
    }

    if (v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = v39;
    }

    v43 = v36 - (a3 >> 24) - v9;
    if (v9 + HIBYTE(a3) >= v36)
    {
      v36 = v9 + (a3 >> 24);
      v43 = 0;
    }

    LODWORD(v84[0]) = a3;
    if (v38 == 4)
    {
      v44 = v36;
    }

    else
    {
      v44 = v41;
    }

    if (v38 == 4)
    {
      v45 = v43;
    }

    else
    {
      v45 = v42;
    }

    *(&v84[0] + 1) = v44;
    *&v84[1] = v45;
    *(&v84[1] + 1) = a2;
    LODWORD(v85) = v9;
    BYTE4(v85) = (v9 + ((v6 == 4) << 32)) >> 32;
    return sub_24BF7A288(a1, a4, v44, v44, v84);
  }

  v69 = a3 & 0xFFFFFF;
  if ((a3 & 0xFFFFFF) != 0)
  {
    do
    {
      LOBYTE(v84[0]) = v69;
      sub_24BF716D8(v5, v84);
      v15 = v69 > 0xFF;
      v69 >>= 8;
    }

    while (v15);
  }

  v70 = v5[2];
  if (v5[3] < (v70 + v9) || (v5[2] = v70 + v9, (v71 = v5[1]) == 0))
  {
    v76 = v9 - 1;
    memset(v84, 0, 17);
    v77 = "0123456789abcdef";
    if (v6 == 4)
    {
      v77 = "0123456789ABCDEF";
    }

    do
    {
      *(v84 + v76--) = v77[v4 & 0xF];
      v15 = v4 > 0xF;
      v4 >>= 4;
    }

    while (v15);
    goto LABEL_132;
  }

  v72 = v71 + v70;
  v73 = "0123456789abcdef";
  if (v6 == 4)
  {
    v73 = "0123456789ABCDEF";
  }

  v74 = (v72 + v9 - 1);
  do
  {
    *v74-- = v73[v4 & 0xF];
    v66 = v4 >= 0x10;
    v4 >>= 4;
  }

  while (v66);
  return v5;
}

uint64_t sub_24BF7A158(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v22 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v20[0]) = v14;
      sub_24BF716D8(v7, v20);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v20[0]) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, v20);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 32);
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  sub_24BF71A20(v20, v16, v17);
  result = sub_24BF7174C(v20, v18, v7);
  if (v11 != v13)
  {
    return sub_24BF73C54(result, v11 - v13, a2 + 11);
  }

  return result;
}

void *sub_24BF7A288(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v31 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v29[0]) = v14;
      sub_24BF716D8(v7, v29);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v29[0]) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, v29);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 32);
  v18 = v17;
  v19 = *(a5 + 36);
  v20 = v7[2];
  v21 = v20 + v17;
  if (v7[3] >= v21 && (v7[2] = v21, (v22 = v7[1]) != 0))
  {
    v23 = "0123456789abcdef";
    if (v19)
    {
      v23 = "0123456789ABCDEF";
    }

    v24 = (v20 + v18 + v22 - 1);
    do
    {
      *v24-- = v23[v16 & 0xF];
      v9 = v16 >= 0x10;
      v16 >>= 4;
    }

    while (v9);
  }

  else
  {
    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    if (v19)
    {
      v25 = "0123456789ABCDEF";
    }

    else
    {
      v25 = "0123456789abcdef";
    }

    v26 = v18 - 1;
    do
    {
      *(v29 + v26--) = v25[v16 & 0xF];
      v27 = v16 > 0xF;
      v16 >>= 4;
    }

    while (v27);
    v7 = sub_24BF7174C(v29, v29 + v18, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

void *sub_24BF7A46C(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v26[0]) = v14;
      sub_24BF716D8(v7, v26);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v26[0]) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, v26);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 32);
  v18 = v17;
  v19 = v7[2];
  v20 = v19 + v17;
  if (v7[3] >= v20 && (v7[2] = v20, (v21 = v7[1]) != 0))
  {
    v22 = (v19 + v18 + v21 - 1);
    do
    {
      *v22-- = v16 & 1 | 0x30;
      v9 = v16 >= 2;
      v16 >>= 1;
    }

    while (v9);
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v23 = v18 - 1;
    do
    {
      *(v26 + v23--) = v16 & 1 | 0x30;
      v24 = v16 > 1;
      v16 >>= 1;
    }

    while (v24);
    v7 = sub_24BF7174C(v26, v26 + v18, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

void *sub_24BF7A624(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v27[2] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v26) = v14;
      sub_24BF716D8(v7, &v26);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v26) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, &v26);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 32);
  v18 = v17;
  v19 = v7[2];
  v20 = v19 + v17;
  if (v7[3] >= v20 && (v7[2] = v20, (v21 = v7[1]) != 0))
  {
    v22 = (v19 + v18 + v21 - 1);
    do
    {
      *v22-- = v16 & 7 | 0x30;
      v9 = v16 >= 8;
      v16 >>= 3;
    }

    while (v9);
  }

  else
  {
    v26 = 0;
    v27[0] = 0;
    v23 = v18 - 1;
    *(v27 + 6) = 0;
    do
    {
      *(&v27[-1] + v23--) = v16 & 7 | 0x30;
      v24 = v16 > 7;
      v16 >>= 3;
    }

    while (v24);
    v7 = sub_24BF7174C(&v26, &v27[-1] + v18, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

void *sub_24BF7A7D4(void *a1, uint64_t a2, unsigned int *a3)
{
  v4 = a1;
  v117 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a3 + 8);
  if (v8 <= 2)
  {
    if (v8 < 2)
    {
      if (__PAIR128__(v5, v6) >= 0xA)
      {
        v28 = 4;
        v67 = *a2;
        v68 = *(a2 + 8);
        while (1)
        {
          if (v67 <= 0x63)
          {
            v28 -= 2;
            goto LABEL_144;
          }

          if (v67 <= 0x3E7)
          {
            break;
          }

          *(&v69 + 1) = v68;
          *&v69 = v67;
          if (v69 >> 4 < 0x271)
          {
            goto LABEL_144;
          }

          *(&v70 + 1) = v68;
          *&v70 = v67;
          v28 += 4;
          v67 = __udivti3();
          v68 = v71;
          if ((v70 >> 5) <= 0xC34)
          {
            v28 -= 3;
            goto LABEL_144;
          }
        }

        --v28;
      }

      else
      {
        v28 = 1;
      }

LABEL_144:
      v97 = *a3;
      v98 = a3[1];
      if ((v98 + 1) | v97)
      {
        v99 = v28 + HIBYTE(v7);
        v100 = *(a3 + 9) & 0xF;
        v101 = v98 + HIBYTE(v7);
        v102 = __OFSUB__(v98, v28);
        v103 = v98 - v28;
        if ((v103 < 0) ^ v102 | (v103 == 0))
        {
          v101 = v28 + HIBYTE(v7);
          v103 = 0;
        }

        if (v99 < v97)
        {
          v104 = v97 - v99;
        }

        else
        {
          v97 = v28 + HIBYTE(v7);
          v104 = 0;
        }

        LODWORD(v109) = v7;
        if (v100 == 4)
        {
          v105 = v97;
        }

        else
        {
          v105 = v101;
        }

        if (v100 == 4)
        {
          v106 = v104;
        }

        else
        {
          v106 = v103;
        }

        *(&v109 + 1) = v105;
        *&v110[0] = v106;
        *&v110[1] = v6;
        *(&v110[1] + 1) = v5;
        LODWORD(v111) = v28;
        return sub_24BF7AF34(v4, a3, v105, v105, &v109);
      }

      v107 = v7 & 0xFFFFFF;
      if ((v7 & 0xFFFFFF) != 0)
      {
        do
        {
          LOBYTE(v109) = v107;
          sub_24BF716D8(v4, &v109);
          v21 = v107 > 0xFF;
          v107 >>= 8;
        }

        while (v21);
      }

      v109 = 0u;
      memset(v110, 0, 23);
      sub_24BF71D34(&v109, v6, v5, v28);
      return sub_24BF7174C(&v109, v89, v4);
    }

    if (v8 != 2)
    {
      goto LABEL_163;
    }

    v48 = 0;
    v49 = *a2;
    v50 = *(a2 + 8);
    do
    {
      *(&v51 + 1) = v50;
      *&v51 = v49;
      v16 = v49 <= 7;
      v50 >>= 3;
      ++v48;
      v49 = v51 >> 3;
    }

    while (!v16);
    if (v7)
    {
      v52 = 12288;
    }

    else
    {
      v52 = 48;
    }

    LODWORD(v53) = (v52 | v7) + 0x1000000;
    v55 = *a3;
    v54 = a3[1];
    v56 = v54 > v48 || (v6 | v5) == 0;
    v57 = *(a3 + 9);
    if (v56)
    {
      LODWORD(v53) = *(a2 + 16);
    }

    if ((v57 & 0x80) != 0)
    {
      v53 = v53;
    }

    else
    {
      v53 = v7;
    }

    if ((v54 + 1) | v55)
    {
      v58 = v48 + (v53 >> 24);
      v59 = v57 & 0xF;
      v60 = (v54 - v48);
      v61 = v54 <= v48;
      if (v54 > v48)
      {
        v62 = v54 + BYTE3(v53);
      }

      else
      {
        v62 = v58;
      }

      if (v61)
      {
        v63 = 0;
      }

      else
      {
        v63 = v60;
      }

      if (v58 < v55)
      {
        v64 = v55 - v58;
      }

      else
      {
        v55 = v58;
        v64 = 0;
      }

      LODWORD(v109) = v53;
      if (v59 == 4)
      {
        v65 = v55;
      }

      else
      {
        v65 = v62;
      }

      if (v59 == 4)
      {
        v66 = v64;
      }

      else
      {
        v66 = v63;
      }

      *(&v109 + 1) = v65;
      *&v110[0] = v66;
      *&v110[1] = v6;
      *(&v110[1] + 1) = v5;
      LODWORD(v111) = v48;
      return sub_24BF7B430(a1, a3, v65, v65, &v109);
    }

    v90 = v53 & 0xFFFFFF;
    if ((v53 & 0xFFFFFF) != 0)
    {
      do
      {
        LOBYTE(v109) = v90;
        sub_24BF716D8(v4, &v109);
        v21 = v90 > 0xFF;
        v90 >>= 8;
      }

      while (v21);
    }

    v91 = v4[2];
    if (v4[3] < (v91 + v48) || (v4[2] = v91 + v48, (v92 = v4[1]) == 0))
    {
      v95 = v48 - 1;
      v109 = 0u;
      memset(v110, 0, 27);
      do
      {
        *(&v110[-1] + v95) = v6 & 7 | 0x30;
        *(&v96 + 1) = v5;
        *&v96 = v6;
        v16 = v6 <= 7;
        v5 >>= 3;
        --v95;
        v6 = v96 >> 3;
      }

      while (!v16);
      v89 = &v110[-1] + v48;
      return sub_24BF7174C(&v109, v89, v4);
    }

    v93 = (v92 + v91 + v48 - 1);
    do
    {
      *v93-- = v6 & 7 | 0x30;
      v16 = v6 >= 8;
      *(&v94 + 1) = v5;
      *&v94 = v6;
      v6 = v94 >> 3;
      v16 = v5 >= !v16;
      v5 >>= 3;
    }

    while (v16);
  }

  else
  {
    if (v8 - 3 >= 2)
    {
      if (v8 - 5 < 2)
      {
        v9 = 0;
        v10 = *(a3 + 9);
        if (v8 == 6)
        {
          v11 = 16944;
        }

        else
        {
          v11 = 25136;
        }

        if (v7)
        {
          v11 <<= 8;
        }

        LODWORD(v12) = (v11 | v7) + 0x2000000;
        if ((v10 & 0x80) != 0)
        {
          v12 = v12;
        }

        else
        {
          v12 = v7;
        }

        v13 = *a2;
        v14 = *(a2 + 8);
        do
        {
          *(&v15 + 1) = v14;
          *&v15 = v13;
          v16 = v13 <= 1;
          v14 >>= 1;
          ++v9;
          v13 = v15 >> 1;
        }

        while (!v16);
        v17 = *a3;
        v18 = a3[1];
        if ((v18 + 1) | v17)
        {
          v19 = v10 & 0xF;
          v20 = (v18 - v9);
          v21 = v18 <= v9;
          if (v18 > v9)
          {
            v22 = v18 + BYTE3(v12);
          }

          else
          {
            v22 = v9 + (v12 >> 24);
          }

          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

          if (v9 + (v12 >> 24) < v17)
          {
            v24 = v17 - (v12 >> 24) - v9;
          }

          else
          {
            v17 = v9 + (v12 >> 24);
            v24 = 0;
          }

          LODWORD(v109) = v12;
          if (v19 == 4)
          {
            v25 = v17;
          }

          else
          {
            v25 = v22;
          }

          if (v19 == 4)
          {
            v26 = v24;
          }

          else
          {
            v26 = v23;
          }

          *(&v109 + 1) = v25;
          *&v110[0] = v26;
          *&v110[1] = v6;
          *(&v110[1] + 1) = v5;
          LODWORD(v111) = v9;
          return sub_24BF7B260(a1, a3, v25, v25, &v109);
        }

        v72 = v12 & 0xFFFFFF;
        if ((v12 & 0xFFFFFF) != 0)
        {
          do
          {
            LOBYTE(v109) = v72;
            sub_24BF716D8(v4, &v109);
            v21 = v72 > 0xFF;
            v72 >>= 8;
          }

          while (v21);
        }

        v73 = v4[2];
        if (v4[3] >= (v73 + v9))
        {
          v4[2] = v73 + v9;
          v74 = v4[1];
          if (v74)
          {
            v75 = (v74 + v73 + v9 - 1);
            do
            {
              *v75-- = v6 & 1 | 0x30;
              v16 = v6 >= 2;
              *(&v76 + 1) = v5;
              *&v76 = v6;
              v6 = v76 >> 1;
              v16 = v5 >= !v16;
              v5 >>= 1;
            }

            while (v16);
            return v4;
          }
        }

        v84 = v9 - 1;
        v116 = 0;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        v109 = 0u;
        memset(v110, 0, sizeof(v110));
        do
        {
          *(&v110[-1] + v84) = v6 & 1 | 0x30;
          *(&v85 + 1) = v5;
          *&v85 = v6;
          v16 = v6 <= 1;
          v5 >>= 1;
          --v84;
          v6 = v85 >> 1;
        }

        while (!v16);
        goto LABEL_130;
      }

      if (v8 == 15)
      {
        LOBYTE(v109) = 0;
        BYTE1(v109) = v6;
        return sub_24BF73B78(a1, a3, 1, 1uLL, &v109);
      }

LABEL_163:
      sub_24BF713F4("invalid format specifier");
    }

    v9 = 0;
    v29 = *(a3 + 9);
    if (v8 == 4)
    {
      v30 = 22576;
    }

    else
    {
      v30 = 30768;
    }

    if (v7)
    {
      v30 <<= 8;
    }

    LODWORD(v31) = (v30 | v7) + 0x2000000;
    if ((v29 & 0x80) != 0)
    {
      v31 = v31;
    }

    else
    {
      v31 = v7;
    }

    v32 = *a2;
    v33 = *(a2 + 8);
    do
    {
      *(&v34 + 1) = v33;
      *&v34 = v32;
      v16 = v32 <= 0xF;
      v33 >>= 4;
      ++v9;
      v32 = v34 >> 4;
    }

    while (!v16);
    v35 = *a3;
    v36 = a3[1];
    if ((v36 + 1) | v35)
    {
      v37 = v9 + (v31 >> 24);
      v38 = v29 & 0xF;
      v39 = (v36 - v9);
      v40 = v36 <= v9;
      if (v36 > v9)
      {
        v41 = v36 + BYTE3(v31);
      }

      else
      {
        v41 = v9 + (v31 >> 24);
      }

      if (v40)
      {
        v42 = 0;
      }

      else
      {
        v42 = v39;
      }

      v43 = v35 - (v31 >> 24) - v9;
      LODWORD(v109) = v31;
      if (v37 < v35)
      {
        v44 = v35;
      }

      else
      {
        v44 = v9 + (v31 >> 24);
      }

      if (v37 < v35)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0;
      }

      if (v38 == 4)
      {
        v46 = v44;
      }

      else
      {
        v46 = v41;
      }

      if (v38 == 4)
      {
        v47 = v45;
      }

      else
      {
        v47 = v42;
      }

      *(&v109 + 1) = v46;
      *&v110[0] = v47;
      *&v110[1] = v6;
      *(&v110[1] + 1) = v5;
      LODWORD(v111) = v9;
      BYTE4(v111) = v8 == 4;
      return sub_24BF7B068(a1, a3, v46, v46, &v109);
    }

    v77 = v31 & 0xFFFFFF;
    if ((v31 & 0xFFFFFF) != 0)
    {
      do
      {
        LOBYTE(v109) = v77;
        sub_24BF716D8(v4, &v109);
        v21 = v77 > 0xFF;
        v77 >>= 8;
      }

      while (v21);
    }

    v78 = v4[2];
    if (v4[3] < (v78 + v9) || (v4[2] = v78 + v9, (v79 = v4[1]) == 0))
    {
      v86 = v9 - 1;
      v109 = 0u;
      memset(v110, 0, 17);
      v87 = "0123456789abcdef";
      if (v8 == 4)
      {
        v87 = "0123456789ABCDEF";
      }

      do
      {
        *(&v110[-1] + v86) = v87[v6 & 0xF];
        *(&v88 + 1) = v5;
        *&v88 = v6;
        v16 = v6 <= 0xF;
        v5 >>= 4;
        --v86;
        v6 = v88 >> 4;
      }

      while (!v16);
LABEL_130:
      v89 = &v110[-1] + v9;
      return sub_24BF7174C(&v109, v89, v4);
    }

    v80 = v79 + v78;
    v81 = "0123456789abcdef";
    if (v8 == 4)
    {
      v81 = "0123456789ABCDEF";
    }

    v82 = (v80 + v9 - 1);
    do
    {
      *v82-- = v81[v6 & 0xF];
      v16 = v6 >= 0x10;
      *(&v83 + 1) = v5;
      *&v83 = v6;
      v6 = v83 >> 4;
      v16 = v5 >= !v16;
      v5 >>= 4;
    }

    while (v16);
  }

  return v4;
}

uint64_t sub_24BF7AF34(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v22 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      v21[0] = v14;
      sub_24BF716D8(v7, v21);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (v21[0] = 48; v15; --v15)
  {
    sub_24BF716D8(v7, v21);
  }

  v16 = *(a5 + 32);
  v17 = *(a5 + 40);
  v18 = *(a5 + 48);
  memset(v21, 0, sizeof(v21));
  sub_24BF71D34(v21, v16, v17, v18);
  result = sub_24BF7174C(v21, v19, v7);
  if (v11 != v13)
  {
    return sub_24BF73C54(result, v11 - v13, a2 + 11);
  }

  return result;
}

void *sub_24BF7B068(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v31[0]) = v14;
      sub_24BF716D8(v7, v31);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v31[0]) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, v31);
  }

  v17 = *(a5 + 32);
  v16 = *(a5 + 40);
  v18 = *(a5 + 48);
  v19 = v18;
  v20 = *(a5 + 52);
  v21 = v7[2];
  v22 = v21 + v18;
  if (v7[3] >= v22 && (v7[2] = v22, (v23 = v7[1]) != 0))
  {
    v24 = "0123456789abcdef";
    if (v20)
    {
      v24 = "0123456789ABCDEF";
    }

    v25 = (v21 + v19 + v23 - 1);
    do
    {
      *v25-- = v24[v17 & 0xF];
      v9 = v17 >= 0x10;
      *(&v26 + 1) = v16;
      *&v26 = v17;
      v17 = v26 >> 4;
      v9 = v16 >= !v9;
      v16 >>= 4;
    }

    while (v9);
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    if (v20)
    {
      v27 = "0123456789ABCDEF";
    }

    else
    {
      v27 = "0123456789abcdef";
    }

    v28 = v19 - 1;
    do
    {
      *(v31 + v28) = v27[v17 & 0xF];
      *(&v29 + 1) = v16;
      *&v29 = v17;
      v9 = v17 <= 0xF;
      v16 >>= 4;
      --v28;
      v17 = v29 >> 4;
    }

    while (!v9);
    v7 = sub_24BF7174C(v31, v31 + v19, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

void *sub_24BF7B260(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v30 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v28[0]) = v14;
      sub_24BF716D8(v7, v28);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v28[0]) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, v28);
  }

  v17 = *(a5 + 32);
  v16 = *(a5 + 40);
  v18 = *(a5 + 48);
  v19 = v18;
  v20 = v7[2];
  v21 = v20 + v18;
  if (v7[3] >= v21 && (v7[2] = v21, (v22 = v7[1]) != 0))
  {
    v23 = (v20 + v19 + v22 - 1);
    do
    {
      *v23-- = v17 & 1 | 0x30;
      v9 = v17 >= 2;
      *(&v24 + 1) = v16;
      *&v24 = v17;
      v17 = v24 >> 1;
      v9 = v16 >= !v9;
      v16 >>= 1;
    }

    while (v9);
  }

  else
  {
    v29 = 0;
    v25 = v19 - 1;
    memset(v28, 0, sizeof(v28));
    do
    {
      *(v28 + v25) = v17 & 1 | 0x30;
      *(&v26 + 1) = v16;
      *&v26 = v17;
      v9 = v17 <= 1;
      v16 >>= 1;
      --v25;
      v17 = v26 >> 1;
    }

    while (!v9);
    v7 = sub_24BF7174C(v28, v28 + v19, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

void *sub_24BF7B430(void *a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v29 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v28[0]) = v14;
      sub_24BF716D8(v7, v28);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v28[0]) = 48; v15; --v15)
  {
    sub_24BF716D8(v7, v28);
  }

  v17 = *(a5 + 32);
  v16 = *(a5 + 40);
  v18 = *(a5 + 48);
  v19 = v18;
  v20 = v7[2];
  v21 = v20 + v18;
  if (v7[3] >= v21 && (v7[2] = v21, (v22 = v7[1]) != 0))
  {
    v23 = (v20 + v19 + v22 - 1);
    do
    {
      *v23-- = v17 & 7 | 0x30;
      v9 = v17 >= 8;
      *(&v24 + 1) = v16;
      *&v24 = v17;
      v17 = v24 >> 3;
      v9 = v16 >= !v9;
      v16 >>= 3;
    }

    while (v9);
  }

  else
  {
    memset(v28, 0, 43);
    v25 = v19 - 1;
    do
    {
      *(v28 + v25) = v17 & 7 | 0x30;
      *(&v26 + 1) = v16;
      *&v26 = v17;
      v9 = v17 <= 7;
      v16 >>= 3;
      --v25;
      v17 = v26 >> 3;
    }

    while (!v9);
    v7 = sub_24BF7174C(v28, v28 + v19, v7);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

void *sub_24BF7B5F4(void *a1, unsigned __int8 a2, uint64_t a3, std::locale *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (sub_24BF7B6FC(a3))
  {
    LOBYTE(v11[0]) = *(a3 + 8) == 18;
    BYTE1(v11[0]) = a2;
    return sub_24BF73B78(a1, a3, 1, 1uLL, v11);
  }

  v9 = *(a3 + 9);
  if ((v9 & 0x100) == 0)
  {
    return sub_24BF72274(a1, a2 | (dword_24BFF4D20[(v9 >> 4) & 7] << 32), a3);
  }

  v12 = 2;
  v11[0] = a2;
  v11[1] = 0;
  if ((sub_24BF720A4(a1, v11, a3, a4) & 1) == 0)
  {
    v9 = *(a3 + 9);
    return sub_24BF72274(a1, a2 | (dword_24BFF4D20[(v9 >> 4) & 7] << 32), a3);
  }

  return a1;
}

uint64_t sub_24BF7B6FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 > 0x12;
  v3 = (1 << v1) & 0x48001;
  if (v2 || v3 == 0)
  {
    return 0;
  }

  if ((*(a1 + 9) & 0xF) == 4 || (*(a1 + 9) & 0xF0) != 0)
  {
    sub_24BF713F4("invalid format specifier for char");
  }

  return 1;
}

uint64_t sub_24BF7B760(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, float a5)
{
  v7 = a1;
  v12 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  if ((a3 & 0x10000) == 0)
  {
    return sub_24BF7B80C(v7, a2, a3, a4, a5);
  }

  v11[4] = 9;
  *v11 = a5;
  if ((sub_24BF720A4(a1, v11, &v9, a4) & 1) == 0)
  {
    a2 = v9;
    a3 = v10;
    return sub_24BF7B80C(v7, a2, a3, a4, a5);
  }

  return v7;
}

uint64_t sub_24BF7B80C(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, float a5)
{
  v27[63] = *MEMORY[0x277D85DE8];
  v20 = a2;
  v21 = a3;
  v8 = sub_24BF7BAD4(&v20);
  v19[0] = v8;
  v9 = HIDWORD(v8) & 0xFFFF00FF;
  v10 = HIDWORD(v8) & 0xFFFF00FF | (((*(&v21 + 1) >> 4) & 7) << 8);
  v19[1] = v10;
  if ((LODWORD(a5) & 0x80000000) != 0)
  {
    v10 = v9 | 0x100;
    v19[1] = v9 | 0x100;
    a5 = -a5;
  }

  else if (((16 * *(&v21 + 1)) & 0x700) == 0x100)
  {
    v19[1] = HIDWORD(v8) & 0xFFFF00FF;
    v10 = HIDWORD(v8) & 0xFFFF00FF;
  }

  if (a5 >= INFINITY && a5 <= INFINITY)
  {
    return sub_24BF75530(a1, 0, v20, v21, v19);
  }

  if ((BYTE1(v21) & 0xF) == 4 && (v10 & 0xFF00) != 0)
  {
    LOBYTE(v24) = byte_24BFF57DD[BYTE1(v10)];
    sub_24BF716D8(a1, &v24);
    v10 &= 0xFFFF00FF;
    v19[1] = v10;
    if (v20)
    {
      LODWORD(v20) = v20 - 1;
    }
  }

  v24 = &unk_285F9EFD0;
  __p = v27;
  v26 = xmmword_24BFF4C90;
  if (v10 == 3)
  {
    if ((v10 & 0xFF00) != 0)
    {
      LOBYTE(v22) = byte_24BFF57DD[BYTE1(v10)];
      sub_24BF716D8(&v24, &v22);
    }

    sub_24BF7BBD0(HIDWORD(v20), *v19, &v24, a5);
    v22 = __p;
    v23 = v26;
    v12 = sub_24BF7C62C(a1, &v20, v26, v26, &v22);
  }

  else
  {
    v13 = HIDWORD(v20);
    if (v21)
    {
      v14 = SHIDWORD(v20) <= -1;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v13 = 6;
    }

    if (v10 == 1)
    {
      if (v13 == 0x7FFFFFFF)
      {
        sub_24BF713F4("number is too big");
      }

      v15 = v13 + 1;
    }

    else
    {
      if (v13)
      {
        v16 = 1;
      }

      else
      {
        v16 = v10 == 2;
      }

      if (v16)
      {
        v15 = v13;
      }

      else
      {
        v15 = 1;
      }
    }

    v19[1] = v10 | 0x40000;
    v17 = sub_24BF7BE5C(v15, *v19, &v24, a5);
    v19[0] = v15;
    v22 = __p;
    v23 = __PAIR64__(v17, v26);
    v12 = sub_24BF7DB50(a1, &v22, &v20, *v19, a4);
  }

  v11 = v12;
  if (__p != v27)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_24BF7BAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p != v16)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF7BAD4(uint64_t a1)
{
  v1 = *(a1 + 9);
  v2 = (v1 >> 7) & 1;
  v3 = (((v1 >> 8) & 1) << 17) & 0xFFF7FFFF | (v2 << 19);
  v4 = *(a1 + 8);
  if (v4 <= 9)
  {
    if (*(a1 + 8) > 7u)
    {
      if (v4 != 8)
      {
        if (v4 != 9)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      LODWORD(v3) = v3 | 0x10000;
    }

    else
    {
      if (!*(a1 + 8))
      {
        return v3 << 32;
      }

      if (v4 != 7)
      {
        goto LABEL_16;
      }
    }

    v3 = v3 | 3;
    return v3 << 32;
  }

  if (*(a1 + 8) <= 0xBu)
  {
    if (v4 != 10)
    {
      if (v4 != 11)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    LODWORD(v3) = v3 | 0x10000;
LABEL_20:
    if (*(a1 + 4))
    {
      v2 = 1;
    }

    v3 = v3 & 0xFFF7FFFE | (v2 << 19) | 1;
    return v3 << 32;
  }

  if (v4 == 12)
  {
    LODWORD(v3) = v3 | 0x10000;
LABEL_24:
    if (*(a1 + 4))
    {
      v2 = 1;
    }

    v3 = v3 & 0x7FFFF | (v2 << 19) | 2;
    return v3 << 32;
  }

  if (v4 != 13)
  {
    if (v4 == 14)
    {
      v3 = v3 | 0x10000;
      return v3 << 32;
    }

LABEL_16:
    sub_24BF713F4("invalid format specifier");
  }

  return v3 << 32;
}

uint64_t sub_24BF7BBD0(unsigned int a1, unint64_t a2, uint64_t a3, double a4)
{
  v6 = ((*&a4 & 0x7FF0000000000000uLL) >> 52) - 1023;
  v27 = *MEMORY[0x277D85DE8];
  v7 = HIDWORD(a2);
  if ((*&a4 & 0x7FF0000000000000) != 0)
  {
    v8 = *&a4 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v8 = *&a4 & 0xFFFFFFFFFFFFFLL;
  }

  if ((*&a4 & 0x7FF0000000000000) != 0)
  {
    v9 = ((*&a4 & 0x7FF0000000000000uLL) >> 52) - 1023;
  }

  else
  {
    v9 = -1022;
  }

  v10 = ((1 << (52 - 4 * a1)) + v8) & -(1 << (52 - 4 * a1));
  if (((v8 >> (48 - 4 * a1)) & 8) == 0)
  {
    v10 = v8;
  }

  if (a1 > 0xC)
  {
    v11 = 13;
  }

  else
  {
    v8 = v10;
    v11 = a1;
  }

  memset(v24, 48, sizeof(v24));
  v12 = "0123456789ABCDEF";
  if ((a2 & 0x1000000000000) == 0)
  {
    v12 = "0123456789abcdef";
  }

  v13 = 13;
  do
  {
    *(v24 + v13--) = v12[v8 & 0xF];
    v14 = v8 > 0xF;
    v8 >>= 4;
  }

  while (v14);
  if (v11 < 1)
  {
    v16 = 0;
  }

  else
  {
    while (1)
    {
      v15 = *(v24 + v11);
      v16 = v15 != 48;
      if (v15 != 48)
      {
        break;
      }

      v17 = __OFSUB__(v11--, 1);
      if ((v11 < 0) ^ v17 | (v11 == 0))
      {
        v11 = 0;
        break;
      }
    }
  }

  LOBYTE(v25) = 48;
  sub_24BF716D8(a3, &v25);
  if ((v7 & 0x10000) != 0)
  {
    v18 = 88;
  }

  else
  {
    v18 = 120;
  }

  LOBYTE(v25) = v18;
  sub_24BF716D8(a3, &v25);
  sub_24BF716D8(a3, v24);
  if (a1 > 0 || (v7 & 0x80000) != 0 || v16)
  {
    LOBYTE(v25) = 46;
    sub_24BF716D8(a3, &v25);
  }

  sub_24BF71780(a3, v24 + 1, v24 + v11 + 1);
  v17 = __OFSUB__(a1, v11);
  v19 = a1 - v11;
  if (!((v19 < 0) ^ v17 | (v19 == 0)))
  {
    do
    {
      LOBYTE(v25) = 48;
      sub_24BF716D8(a3, &v25);
      --v19;
    }

    while (v19);
  }

  if ((v7 & 0x10000) != 0)
  {
    v20 = 80;
  }

  else
  {
    v20 = 112;
  }

  LOBYTE(v25) = v20;
  sub_24BF716D8(a3, &v25);
  if (v9 < 0)
  {
    LOBYTE(v25) = 45;
    sub_24BF716D8(a3, &v25);
    v6 = -v9;
  }

  else
  {
    LOBYTE(v25) = 43;
    sub_24BF716D8(a3, &v25);
  }

  v21 = (qword_24BFF5020[__clz(v6 | 1) ^ 0x1F] + v6) >> 32;
  v26 = 0;
  v25 = 0;
  sub_24BF71660(&v25, v6, v21);
  return sub_24BF7174C(&v25, v22, a3);
}

unint64_t sub_24BF7BE5C(size_t __len, unint64_t a2, uint64_t a3, double a4)
{
  v5 = __len;
  v77 = *MEMORY[0x277D85DE8];
  v6 = a2 & 0xFF00000000;
  if (a4 <= 0.0)
  {
    if (__len >= 1 && v6 == 0x200000000)
    {
      v14 = *(a3 + 24);
      if (v14 < __len)
      {
        (**a3)(a3, __len);
        v14 = *(a3 + 24);
      }

      if (v14 >= v5)
      {
        v14 = v5;
      }

      *(a3 + 16) = v14;
      memset(*(a3 + 8), 48, v5);
      return -v5;
    }

    else
    {
      LOBYTE(v75[0]) = 48;
      sub_24BF716D8(a3, v75);
      return 0;
    }
  }

  else
  {
    v8 = HIDWORD(a2);
    if ((__len & 0x80000000) == 0)
    {
      v9 = *&a4 & 0xFFFFFFFFFFFFFLL;
      v10 = (*&a4 >> 52) & 0x7FFLL;
      v11 = *&a4 & 0x7FF0000000000000;
      if ((*&a4 & 0x7FF0000000000000) != 0)
      {
        v12 = v10 - 1075;
        v13 = (2 * v9) | 0x20000000000000;
      }

      else
      {
        v18 = __clz(v9);
        v19 = v18 - 10;
        v12 = -1063 - v18;
        v13 = v9 << v19;
      }

      v20 = ((315653 * v12) >> 20) - 2;
      v21 = 2 - ((315653 * v12) >> 20);
      v22 = v13 << (v12 + ((1741647 * v21) >> 19));
      v23 = sub_24BF76FC8(v21);
      v25 = (v22 * v24) >> 64;
      v30 = __CFADD__(v22 * v24, (v22 * v23) >> 64);
      v26 = (__PAIR128__(v24, v23) * v22) >> 64;
      if (v30)
      {
        v27 = v25 + 1;
      }

      else
      {
        v27 = v25;
      }

      if (v27 <= 0xDE0B6B3A763FFFFLL)
      {
        v28 = 10 * v27;
      }

      else
      {
        v28 = v27;
      }

      if (v27 <= 0xDE0B6B3A763FFFFLL)
      {
        v29 = 18;
      }

      else
      {
        v29 = 19;
      }

      if (v6 == 0x200000000)
      {
        v30 = v20 + v29 < 1 || ((v20 + v29) ^ 0x7FFFFFFFu) >= v5;
        if (!v30)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_24BF71450(exception, "number is too big");
          __cxa_throw(exception, &unk_285F9F000, std::runtime_error::~runtime_error);
        }

        v5 += v20 + v29;
      }

      v31 = v29 - v5;
      if (v29 <= v5)
      {
        v74 = v29 + v20 - 1;
        if ((v8 & 0x40000) != 0)
        {
          v44 = a4;
          v39 = ((LODWORD(v44) & 0x7F800000u) >> 23) - 150;
          v38 = LODWORD(v44) & 0x7FFFFF;
          if ((LODWORD(v44) & 0x7F800000) != 0)
          {
            v38 |= 0x800000uLL;
          }

          else
          {
            v39 = -149;
          }

          v41 = (LODWORD(v44) & 0x7F000000) != 0 && (LODWORD(v44) & 0x7FFFFF) == 0;
        }

        else
        {
          v38 = v9 | 0x10000000000000;
          v39 = v10 - 1075;
          if (!v11)
          {
            v38 = *&a4 & 0xFFFFFFFFFFFFFLL;
            v39 = -1074;
          }

          if (v9)
          {
            v40 = 1;
          }

          else
          {
            v40 = v11 >> 53 == 0;
          }

          v41 = !v40;
        }

        if (v6 == 0x200000000)
        {
          v45 = v41 | 4;
        }

        else
        {
          v45 = v41;
        }

        if (v5 >= 0x2FF)
        {
          v46 = 767;
        }

        else
        {
          v46 = v5;
        }

        v75[0] = v38;
        v75[1] = 0;
        v76 = v39;
        sub_24BF7C6EC(v75, v45, v46, a3, &v74);
LABEL_118:
        if (v6 == 0x200000000 || (v8 & 0x80000) != 0)
        {
          return v74;
        }

        v68 = *(a3 + 16);
        if (v68)
        {
          v69 = *(a3 + 8) - 1;
          v70 = v74 + 1;
          while (*(v69 + v68) == 48)
          {
            v74 = v70++;
            if (!--v68)
            {
              goto LABEL_124;
            }
          }

          v71 = *(a3 + 24);
          if (v71 >= v68)
          {
            goto LABEL_126;
          }

          (**a3)(a3, v68);
        }

        else
        {
LABEL_124:
          v68 = 0;
        }

        v71 = *(a3 + 24);
LABEL_126:
        if (v71 >= v68)
        {
          v71 = v68;
        }

        *(a3 + 16) = v71;
        return v74;
      }

      if (v5 <= 0)
      {
        v74 = v20 + v29;
        if ((v5 & 0x80000000) != 0)
        {
          *(a3 + 16) = 0;
        }

        else
        {
          if (*(a3 + 24))
          {
            v47 = 1;
          }

          else
          {
            (**a3)(a3, 1);
            v47 = *(a3 + 24) != 0;
          }

          *(a3 + 16) = v47;
          if ((v28 | (v26 != 0)) < 0x4563918244F40001)
          {
            v57 = 48;
          }

          else
          {
            v57 = 49;
          }

          **(a3 + 8) = v57;
        }

        goto LABEL_118;
      }

      v32 = v31 + v20;
      v74 = v31 + v20;
      if (v5 >= 9)
      {
        v33 = 9;
      }

      else
      {
        v33 = v5;
      }

      v34 = *(a3 + 8);
      if (v33)
      {
        v35 = ((720575941 * ((v28 * 0x6DF37F675EF6EAE0uLL) >> 96)) >> 24) + 1;
        v36 = HIDWORD(v35);
        *v34 = BYTE4(v35) + 48;
        v37 = 1;
      }

      else
      {
        v35 = ((450359963 * ((v28 * 0x6DF37F675EF6EAE0uLL) >> 96)) >> 20) + 1;
        v36 = HIDWORD(v35);
        *v34 = *&a00010203040506[2 * HIDWORD(v35)];
        v37 = 2;
      }

      v48 = v28 - 10000000000 * (((v28 * 0x6DF37F675EF6EAE0uLL) >> 64) >> 32);
      if (v5 <= v37)
      {
        LOBYTE(v51) = v36;
      }

      else
      {
        v49 = v37;
        do
        {
          v35 = 100 * v35;
          *&v34[v49] = *&a00010203040506[(v35 >> 31) & 0xFE];
          v49 += 2;
        }

        while (v49 < v33);
        v50 = v5 - 9;
        if (v5 > 9)
        {
          v52 = (v48 * 0x199999999999999AuLL) >> 64;
          v53 = (*(a3 + 8) + 9);
          if ((v5 - 9))
          {
            v54 = ((720575941 * v52) >> 24) + 1;
            v55 = HIDWORD(v54);
            *v53 = BYTE4(v54) + 48;
            v56 = 1;
          }

          else
          {
            v54 = ((450359963 * v52) >> 20) + 1;
            v55 = HIDWORD(v54);
            *v53 = *&a00010203040506[2 * HIDWORD(v54)];
            v56 = 2;
          }

          v58 = v48 - 10 * v52;
          if (v56 >= v50)
          {
            LOBYTE(v60) = v55;
          }

          else
          {
            v59 = v56;
            do
            {
              v54 = 100 * v54;
              *&v53[v59] = *&a00010203040506[(v54 >> 31) & 0xFE];
              v59 += 2;
            }

            while (v59 < v50);
            v60 = HIDWORD(v54);
            if (v5 > 17)
            {
              if (v58 <= 5 && (v58 != 5 || (v54 & 0x100000000) == 0 && !v26))
              {
                goto LABEL_113;
              }

LABEL_94:
              v61 = v5;
              ++*(*(a3 + 8) + v5 - 1);
              goto LABEL_106;
            }
          }

          if (dword_24BFF5CB0[17 - v5] > v54)
          {
            v62 = v60 & 1;
            if (v58)
            {
              v63 = 0;
            }

            else
            {
              v63 = v26 == 0;
            }

            if (!v63)
            {
              v62 = 1;
            }

            if ((*&v62 & (v54 >> 31)) == 0)
            {
              goto LABEL_113;
            }
          }

LABEL_103:
          ++*(*(a3 + 8) + v5 - 1);
          if (v5 == 1)
          {
            v61 = 1;
            goto LABEL_109;
          }

          v61 = v5;
LABEL_106:
          v64 = v61 - 2;
          do
          {
            v65 = *(a3 + 8);
            if (*(v65 + (v64 + 1)) <= 57)
            {
              break;
            }

            *(v65 + (v64 + 1)) = 48;
            ++*(*(a3 + 8) + v64--);
          }

          while (v64 + 3 > 2);
LABEL_109:
          v66 = *(a3 + 8);
          if (*v66 > 57)
          {
            *v66 = 49;
            if (v6 == 0x200000000)
            {
              ++v5;
              *(*(a3 + 8) + v61) = 48;
            }

            else
            {
              v74 = v32 + 1;
            }
          }

          goto LABEL_113;
        }

        v51 = HIDWORD(v35);
        if (v5 == 9)
        {
          if (v48 <= 0x12A05F200 && (v48 != 5000000000 || (v35 & 0x100000000) == 0 && !v26))
          {
            v5 = 9;
LABEL_113:
            v67 = *(a3 + 24);
            if (v67 < v5)
            {
              (**a3)(a3, v5);
              v67 = *(a3 + 24);
            }

            if (v67 >= v5)
            {
              v67 = v5;
            }

            *(a3 + 16) = v67;
            goto LABEL_118;
          }

          goto LABEL_94;
        }
      }

      if (dword_24BFF5CB0[8 - v33] > v35 && ((v51 | ((v48 | v26) != 0)) & (v35 >> 31)) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_103;
    }

    if ((a2 & 0x4000000000000) != 0)
    {
      v42 = a4;
      v43 = sub_24BF755D0(v42);
      v15 = HIDWORD(v43);
      sub_24BF71848(a3, v43);
    }

    else
    {
      v16 = sub_24BF76BD8(a4);
      v15 = v17;
      sub_24BF71AA4(a3, v16);
    }
  }

  return v15;
}

uint64_t sub_24BF7C62C(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  sub_24BF71780(v7, *a5, (*a5 + *(a5 + 8)));
  if (v11 == v13)
  {
    return v7;
  }

  return sub_24BF73C54(v7, v11 - v13, a2 + 11);
}

void sub_24BF7C6EC(void *a1, char a2, signed int a3, uint64_t a4, int *a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v58 = &unk_285F9F0D8;
  v59 = v61;
  v60 = xmmword_24BFF4CC0;
  v61[34] = 0;
  v54 = &unk_285F9F0D8;
  v55 = v57;
  v56 = xmmword_24BFF4CC0;
  v57[34] = 0;
  v50 = &unk_285F9F0D8;
  v51 = v53;
  v52 = xmmword_24BFF4CC0;
  v53[34] = 0;
  v46 = &unk_285F9F0D8;
  __p = v49;
  v48 = xmmword_24BFF4CC0;
  v49[34] = 0;
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if ((a1[2] & 0x80000000) != 0)
  {
    if (*a5 < 0)
    {
      sub_24BF7CF0C(&v58, -*a5);
      sub_24BF7CFD4(&v50, &v58);
      if (a2)
      {
        sub_24BF7CFD4(&v46, &v58);
        v12 = &v46;
        sub_24BF7CE74(&v46, 1, v41);
      }

      else
      {
        v12 = 0;
      }

      sub_24BF7D8A4(&v58, *a1, a1[1]);
      sub_24BF7CE74(&v58, v10, v42);
      sub_24BF7D468(&v54, 1uLL);
      sub_24BF7CE74(&v54, v10 - *(a1 + 4), *(a1 + 4));
    }

    else
    {
      sub_24BF7D364(&v58, *a1, a1[1]);
      sub_24BF7CE74(&v58, v10, v13);
      sub_24BF7CF0C(&v54, *a5);
      sub_24BF7CE74(&v54, v10 - *(a1 + 4), *(a1 + 4));
      sub_24BF7D468(&v50, 1uLL);
      if (a2)
      {
        v12 = &v46;
        sub_24BF7D468(&v46, 2uLL);
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    sub_24BF7D364(&v58, *a1, a1[1]);
    sub_24BF7CE74(&v58, *(a1 + 4) + v10, *(a1 + 4));
    sub_24BF7D468(&v50, 1uLL);
    sub_24BF7CE74(&v50, *(a1 + 4), v11);
    if (a2)
    {
      sub_24BF7D468(&v46, 1uLL);
      v12 = &v46;
      sub_24BF7CE74(&v46, *(a1 + 4) + 1, *(a1 + 4));
    }

    else
    {
      v12 = 0;
    }

    sub_24BF7CF0C(&v54, *a5);
    sub_24BF7CE74(&v54, v10, v14);
  }

  v44 = a5;
  v15 = (*a1 & 1) == 0;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = &v50;
  }

  v17 = a3;
  if ((a2 & 2) != 0)
  {
    v18 = sub_24BF7D07C(&v58, v16, &v54);
    if ((v18 + v15 < 0) ^ __OFADD__(v18, v15) | (v18 + v15 == 0))
    {
      --*a5;
      sub_24BF7D968(&v58, 0xAu);
      if (a3 < 0)
      {
        sub_24BF7D968(&v50, 0xAu);
        if (v12)
        {
          sub_24BF7D968(v12, 0xAu);
        }
      }
    }

    v17 = a3;
    if ((a2 & 4) != 0)
    {
      v19 = *a5;
      if ((*a5 & 0x80000000) == 0 && 2147483646 - v19 < a3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "number is too big");
        exception->__vftable = &unk_285F9F028;
        __cxa_throw(exception, &unk_285F9F000, std::runtime_error::~runtime_error);
      }

      v17 = a3 + v19 + 1;
    }
  }

  if (a3 < 0)
  {
    v31 = 0;
    v32 = *(a4 + 8);
    v33 = -v15;
    while (1)
    {
      v34 = sub_24BF7D19C(&v58, &v54);
      v35 = sub_24BF7D20C(&v58, &v50);
      v36 = sub_24BF7D07C(&v58, v16, &v54);
      *(v32 + v31) = v34 + 48;
      if (v35 < v15 || v36 > v33)
      {
        break;
      }

      sub_24BF7D968(&v58, 0xAu);
      sub_24BF7D968(&v50, 0xAu);
      if (v12)
      {
        sub_24BF7D968(v12, 0xAu);
      }

      ++v31;
    }

    v37 = v31 + 1;
    if (v35 >= v15 || v36 > v33 && ((v38 = sub_24BF7D07C(&v58, &v58, &v54), v38 > 0) || !v38 && (v34 & 1) != 0))
    {
      ++*(v32 + v37 - 1);
    }

    v39 = *(a4 + 24);
    if (v39 < v37)
    {
      (**a4)(a4, v37);
      v39 = *(a4 + 24);
    }

    if (v39 >= v37)
    {
      v39 = v37;
    }

    *(a4 + 16) = v39;
    v29 = v44;
    v30 = *v44 - v31;
    goto LABEL_62;
  }

  v20 = v17 - 1;
  *a5 -= v20;
  if (v17 <= 0)
  {
    sub_24BF7D968(&v54, 0xAu);
    if (sub_24BF7D07C(&v58, &v58, &v54) <= 0)
    {
      v40 = 48;
    }

    else
    {
      v40 = 49;
    }

    v45 = v40;
    sub_24BF716D8(a4, &v45);
    goto LABEL_69;
  }

  v21 = *(a4 + 24);
  if (v21 < v17)
  {
    (**a4)(a4, v17);
    v21 = *(a4 + 24);
  }

  if (v21 >= v17)
  {
    v21 = v17;
  }

  *(a4 + 16) = v21;
  if (v17 != 1)
  {
    v22 = 0;
    do
    {
      *(*(a4 + 8) + v22) = sub_24BF7D19C(&v58, &v54) + 48;
      sub_24BF7D968(&v58, 0xAu);
      ++v22;
    }

    while (v20 != v22);
  }

  v23 = sub_24BF7D19C(&v58, &v54);
  v24 = sub_24BF7D07C(&v58, &v58, &v54);
  if (v24 <= 0 && (v24 || (v23 & 1) == 0))
  {
LABEL_68:
    *(*(a4 + 8) + v20) = v23 + 48;
    goto LABEL_69;
  }

  if (v23 != 9)
  {
    LOBYTE(v23) = v23 + 1;
    goto LABEL_68;
  }

  *(*(a4 + 8) + v20) = 58;
  if (v17 != 1)
  {
    v25 = v17 + 1;
    v26 = v17 - 2;
    do
    {
      v27 = *(a4 + 8);
      if (*(v27 + (v26 + 1)) != 58)
      {
        break;
      }

      *(v27 + (v26 + 1)) = 48;
      ++*(*(a4 + 8) + v26);
      --v25;
      --v26;
    }

    while (v25 > 2);
  }

  v28 = *(a4 + 8);
  if (*v28 == 58)
  {
    *v28 = 49;
    if ((a2 & 4) == 0)
    {
      v29 = v44;
      v30 = *v44 + 1;
LABEL_62:
      *v29 = v30;
      goto LABEL_69;
    }

    v45 = 48;
    sub_24BF716D8(a4, &v45);
  }

LABEL_69:
  if (__p != v49)
  {
    operator delete(__p);
  }

  if (v51 != v53)
  {
    operator delete(v51);
  }

  if (v55 != v57)
  {
    operator delete(v55);
  }

  if (v59 != v61)
  {
    operator delete(v59);
  }
}

void sub_24BF7CDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p != a9)
  {
    operator delete(__p);
  }

  v18 = v16[23];
  if (v18 != a10)
  {
    operator delete(v18);
  }

  v19 = v16[45];
  if (v19 != a11)
  {
    operator delete(v19);
  }

  v20 = v16[67];
  if (v20 != a12)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF7CE74@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  *(a1 + 168) += a2 / 32;
  v4 = a2 - (a3 & 0xFFFFFFE0);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *(a1 + 8);
      do
      {
        v8 = (*v7 << v4) + v6;
        v6 = *v7 >> (32 - v4);
        *v7++ = v8;
        v10 = v6;
        --v5;
      }

      while (v5);
      if (v6)
      {
        sub_24BF7D3F4(a1, &v10);
      }
    }
  }

  return a1;
}

uint64_t sub_24BF7CF0C(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = 1;
    do
    {
      v5 = v4;
      v4 *= 2;
    }

    while (v5 <= a2);
    sub_24BF7D468(a1, 5uLL);
    if (v5 >= 4)
    {
      v7 = v5 >> 2;
      do
      {
        sub_24BF7D4F0(a1);
        if ((v7 & a2) != 0)
        {
          sub_24BF7D968(a1, 5u);
        }

        v6 = v7 >> 1;
        v8 = v7 > 1;
        v7 >>= 1;
      }

      while (v8);
    }

    return sub_24BF7CE74(a1, a2, v6);
  }

  else
  {

    return sub_24BF7D468(a1, 1uLL);
  }
}

uint64_t sub_24BF7CFD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (*(result + 24) >= v4)
  {
    *(result + 16) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = (**result)(result, *(a2 + 16));
    v5 = *(v3 + 24);
    if (v5 >= v4)
    {
      v5 = v4;
    }

    *(v3 + 16) = v5;
  }

  v6 = *(a2 + 8);
  v7 = *(v3 + 8);
  v8 = 4 * v4;
  do
  {
    v9 = *v6++;
    *v7++ = v9;
    v8 -= 4;
  }

  while (v8);
LABEL_8:
  *(v3 + 168) = *(a2 + 168);
  return result;
}

uint64_t sub_24BF7D07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  v4 = v3 + *(a1 + 16);
  v5 = *(a2 + 168);
  v6 = v5 + *(a2 + 16);
  if (v4 <= v6)
  {
    v7 = v5 + *(a2 + 16);
  }

  else
  {
    v7 = v3 + *(a1 + 16);
  }

  v8 = *(a3 + 16);
  v9 = *(a3 + 168);
  v10 = v9 + v8;
  if (v7 + 1 < v9 + v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 > v10)
  {
    return 1;
  }

  if (v3 >= v5)
  {
    v12 = *(a2 + 168);
  }

  else
  {
    v12 = *(a1 + 168);
  }

  if (v12 >= v9)
  {
    v12 = *(a3 + 168);
  }

  if (v10 > v12)
  {
    v13 = 0;
    v14 = v8 - 1;
    v15 = *(a3 + 8);
    while (1)
    {
      v16 = v9 + v14 + 1;
      if (v3 < v16)
      {
        v18 = __OFSUB__(v4, v16);
        v17 = v4 - v16 < 0;
      }

      else
      {
        v18 = 0;
        v17 = 1;
      }

      v19 = v17 != v18 ? 0 : *(*(a1 + 8) + 4 * (v9 - v3 + v14));
      if (v5 < v16)
      {
        v21 = __OFSUB__(v6, v16);
        v20 = v6 - v16 < 0;
      }

      else
      {
        v21 = 0;
        v20 = 1;
      }

      v22 = v20 != v21 ? 0 : *(*(a2 + 8) + 4 * (v9 - v5 + v14));
      v23 = 0;
      if (v9 < v16 && v10 >= v16)
      {
        v23 = *(v15 + 4 * v14);
      }

      v24 = v22 + v19;
      v25 = v23 | v13;
      v26 = (v23 | v13) >= v24;
      v27 = (v23 | v13) - v24;
      if (!v26)
      {
        break;
      }

      if (v27 > 1)
      {
        return 0xFFFFFFFFLL;
      }

      v13 = v27 << 32;
      --v14;
      if ((v9 + v14 + 1) <= v12)
      {
        if (v25 == v24)
        {
          return 0;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_24BF7D19C(uint64_t a1, uint64_t a2)
{
  if ((sub_24BF7D20C(a1, a2) & 0x80000000) != 0)
  {
    return 0;
  }

  sub_24BF7D9C4(a1, a2);
  LODWORD(v4) = 0;
  do
  {
    sub_24BF7DAAC(a1, a2);
    v4 = (v4 + 1);
  }

  while ((sub_24BF7D20C(a1, a2) & 0x80000000) == 0);
  return v4;
}

uint64_t sub_24BF7D20C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 168) + v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 168) + v4;
  if (v3 == v5)
  {
    v6 = v2;
    v7 = (v2 - v4) & ~((v2 - v4) >> 31);
    while (v7 < v6)
    {
      v8 = *(*(a1 + 8) - 4 + 4 * v6--);
      v9 = *(*(a2 + 8) + 4 * --v4);
      if (v8 != v9)
      {
        if (v8 > v9)
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    if (v4 < v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    if (v4 == v6)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else if (v3 > v5)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_24BF7D294(void *a1, unint64_t a2)
{
  v2 = a1[3] + (a1[3] >> 1);
  v3 = 0x3FFFFFFFFFFFFFFFLL;
  if (a2 > 0x3FFFFFFFFFFFFFFFLL)
  {
    v3 = a2;
  }

  if (!(v2 >> 62))
  {
    v3 = a1[3] + (a1[3] >> 1);
  }

  if (v2 >= a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = a2;
  }

  if (!(v4 >> 62))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BF7D364(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 8);
  do
  {
    *(v5 + 4 * v4++) = a2;
    *(&v6 + 1) = a3;
    *&v6 = a2;
    a2 = v6 >> 32;
    v7 = a2 | HIDWORD(a3);
    a3 >>= 32;
  }

  while (v7);
  v8 = *(result + 24);
  if (v8 <= v4 - 1)
  {
    result = (**result)(result, v4, a3);
    v8 = *(v3 + 24);
  }

  if (v8 >= v4)
  {
    v8 = v4;
  }

  *(v3 + 16) = v8;
  *(v3 + 168) = 0;
  return result;
}

uint64_t sub_24BF7D3F4(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = v4 + 1;
  if (*(result + 24) < (v4 + 1))
  {
    result = (**result)(result);
    v4 = *(v3 + 16);
    v5 = v4 + 1;
  }

  v6 = *a2;
  v7 = *(v3 + 8);
  *(v3 + 16) = v5;
  *(v7 + 4 * v4) = v6;
  return result;
}

uint64_t sub_24BF7D468(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(result + 8);
  do
  {
    *(v4 + 4 * v3++) = a2;
    a2 >>= 32;
  }

  while (a2);
  v5 = *(result + 24);
  if (v5 <= v3 - 1)
  {
    result = (**result)(result, v3);
    v5 = *(v2 + 24);
  }

  if (v5 >= v3)
  {
    v5 = v3;
  }

  *(v2 + 16) = v5;
  *(v2 + 168) = 0;
  return result;
}

void sub_24BF7D4F0(uint64_t a1)
{
  v34[17] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = (2 * v2);
  sub_24BF7D79C(&v32, a1);
  v4 = *(a1 + 24);
  if (v4 < v3)
  {
    (**a1)(a1, (2 * v2));
    v4 = *(a1 + 24);
  }

  if (v4 >= v3)
  {
    v4 = (2 * v2);
  }

  *(a1 + 16) = v4;
  if (v2 < 1)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = __p;
    v10 = *(a1 + 8);
    v11 = 1;
    do
    {
      v12 = 0;
      v13 = v5;
      do
      {
        v14 = *&v9[v13] * *&v9[4 * v12];
        v15 = __CFADD__(v7, v14);
        v7 += v14;
        if (v15)
        {
          ++v8;
        }

        ++v12;
        v13 -= 4;
      }

      while (v11 != v12);
      *(v10 + 4 * v6) = v7;
      *(&v16 + 1) = v8;
      *&v16 = v7;
      v7 = v16 >> 32;
      v8 >>= 32;
      ++v6;
      ++v11;
      v5 += 4;
    }

    while (v6 != (v2 & 0x7FFFFFFF));
  }

  if (v3 > v2)
  {
    v17 = __p;
    v18 = *(a1 + 8);
    v19 = __p + 4 * v2 - 4;
    v20 = 1;
    v21 = v2 - 1;
    v22 = v2;
    do
    {
      if ((v22 - (v2 - 1)) < v2)
      {
        v23 = &v17[4 * v20];
        v24 = v21;
        v25 = v19;
        do
        {
          v27 = *v23;
          v23 += 4;
          v26 = v27;
          v28 = *v25--;
          v29 = v28 * v26;
          v15 = __CFADD__(v7, v29);
          v7 += v29;
          if (v15)
          {
            ++v8;
          }

          --v24;
        }

        while (v24);
      }

      *(v18 + 4 * v22) = v7;
      *(&v30 + 1) = v8;
      *&v30 = v7;
      v7 = v30 >> 32;
      v8 >>= 32;
      ++v22;
      --v21;
    }

    while (v20++ != v2);
  }

  sub_24BF7D6F8(a1);
  *(a1 + 168) *= 2;
  if (__p != v34)
  {
    operator delete(__p);
  }
}

void sub_24BF7D6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p != &a13)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF7D6F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(result + 16);
  }

  v4 = 4 * v2 - 4;
  while (v2 >= 2)
  {
    v5 = *(*(result + 8) + v4);
    LODWORD(v2) = v2 - 1;
    v4 -= 4;
    if (v5)
    {
      v3 = v2 + 1;
      break;
    }
  }

  v6 = v3;
  v7 = *(result + 24);
  if (v7 < v3)
  {
    result = (**result)(result, v3);
    v7 = *(v1 + 24);
  }

  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *(v1 + 16) = v8;
  return result;
}

void *sub_24BF7D79C(void *a1, void *a2)
{
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_285F9F0D8;
  a1[1] = 0;
  sub_24BF7D7E8(a1, a2);
  return a1;
}

uint64_t sub_24BF7D7E8(uint64_t result, void *a2)
{
  v2 = result;
  v3 = a2[2];
  v4 = a2[1];
  v5 = a2[3];
  v6 = (a2 + 4);
  if (v4 == a2 + 4)
  {
    v7 = (result + 32);
    *(result + 8) = result + 32;
    *(result + 24) = v5;
    if (v3)
    {
      v8 = 4 * v3;
      do
      {
        v9 = *v6++;
        *v7++ = v9;
        v8 -= 4;
      }

      while (v8);
    }
  }

  else
  {
    *(result + 8) = v4;
    *(result + 24) = v5;
    a2[1] = v6;
    a2[2] = 0;
    a2[3] = 0;
    v5 = *(result + 24);
  }

  if (v5 < v3)
  {
    result = (**result)(result, v3);
    v5 = *(v2 + 24);
  }

  if (v5 >= v3)
  {
    v5 = v3;
  }

  *(v2 + 16) = v5;
  return result;
}

uint64_t sub_24BF7D8A4(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(result + 8);
    do
    {
      v8 = *v7;
      v9 = (a2 * *v7) >> 64;
      v10 = a2 * v8 + v5;
      if (__CFADD__(a2 * v8, v5))
      {
        ++v9;
      }

      v11 = HIDWORD(v9);
      *(&v13 + 1) = v9;
      *&v13 = a2 * v8 + v5;
      v12 = v13 >> 32;
      *(&v13 + 1) = v6;
      *&v13 = v5;
      result = HIDWORD(v6);
      v6 = (__PAIR128__((((a3 << 32) * *v7) >> 64) + HIDWORD(a3) * *v7, (a3 << 32) * *v7) + (v13 >> 32) + __PAIR128__(v11, v12)) >> 64;
      v5 = (a3 << 32) * *v7 + (v13 >> 32) + v12;
      *v7++ = v10;
      --v3;
    }

    while (v3);
    if (__PAIR128__(v6, v5) != 0)
    {
      do
      {
        v16 = v5;
        result = sub_24BF7D3F4(v4, &v16);
        *(&v14 + 1) = v6;
        *&v14 = v5;
        v5 = v14 >> 32;
        v15 = v5 | HIDWORD(v6);
        v6 >>= 32;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t sub_24BF7D968(uint64_t result, unsigned int a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(result + 8);
    do
    {
      v5 = v3 + *v4 * a2;
      *v4++ = v5;
      v3 = HIDWORD(v5);
      v6 = v3;
      --v2;
    }

    while (v2);
    if (v3)
    {
      return sub_24BF7D3F4(result, &v6);
    }
  }

  return result;
}

void sub_24BF7D9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 168) - *(a2 + 168);
  if (v2 >= 1)
  {
    v4 = *(a1 + 16);
    v5 = (v2 + v4);
    v6 = *(a1 + 24);
    if (v6 < v5)
    {
      (**a1)(a1, (v2 + v4));
      v6 = *(a1 + 24);
    }

    if (v6 >= v5)
    {
      v6 = (v2 + v4);
    }

    *(a1 + 16) = v6;
    if (v4 <= 0)
    {
      v7 = *(a1 + 8);
    }

    else
    {
      v7 = *(a1 + 8);
      v8 = 4 * (v4 - 1);
      v9 = 4 * (v4 - 1 + v2);
      do
      {
        *&v7[v9] = *&v7[v8];
        v8 -= 4;
        v9 -= 4;
      }

      while (v8 != -4);
    }

    bzero(v7, 4 * (v2 - 1) + 4);
    *(a1 + 168) -= v2;
  }
}

uint64_t sub_24BF7DAAC(uint64_t a1, uint64_t a2)
{
  sub_24BF7D20C(a1, a2);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 168) - *(a1 + 168);
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    do
    {
      v9 = *v7++;
      v10 = v5 - v9 + *(v8 + 4 * v6);
      *(v8 + 4 * v6) = v10;
      v5 = v10 >> 63;
      ++v6;
      --v4;
    }

    while (v4);
    if (v10 < 0)
    {
      v11 = *(a1 + 8);
      v12 = *(v11 + 4 * v6);
      v13 = -1;
      do
      {
        v15 = v13 + v12;
        v14 = v15 < 0;
        v12 = v15;
        v13 = v15 >> 63;
      }

      while (v14);
      *(v11 + 4 * v6) = v12;
    }
  }

  return sub_24BF7D6F8(a1);
}

uint64_t sub_24BF7DB50(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, std::locale *a5)
{
  v61 = *a2;
  v62 = a4;
  v10 = *(a2 + 8);
  v60 = v10;
  v59 = 48;
  v11 = HIDWORD(a4);
  v58 = BYTE5(a4);
  if (BYTE5(a4))
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v10;
  }

  if ((a4 & 0x2000000000000) != 0)
  {
    if (a5)
    {
      std::locale::locale(&v42, a5);
    }

    else
    {
      MEMORY[0x24C254700](&v42);
    }

    v14 = std::locale::use_facet(&v42, MEMORY[0x277D826C0]);
    v13 = (v14->__vftable[1].~facet)(v14);
    std::locale::~locale(&v42);
    v10 = v60;
  }

  else
  {
    v13 = 46;
  }

  v57 = v13;
  v15 = *(a2 + 12);
  v16 = v10 + v15;
  if (BYTE4(a4) == 1 || !BYTE4(a4) && (v16 < -3 || (a4 <= 0 ? (v17 = 16) : (v17 = a4), v16 > v17)))
  {
    v18 = v16 - 1;
    if ((v11 & 0x80000) != 0)
    {
      v19 = (a4 - v10) & ~((a4 - v10) >> 31);
      v12 += v19;
    }

    else if (v10 == 1)
    {
      v13 = 0;
      LODWORD(v19) = 0;
      v57 = 0;
    }

    else
    {
      LODWORD(v19) = 0;
    }

    if ((v11 & 0x10000) != 0)
    {
      v26 = 69;
    }

    else
    {
      v26 = 101;
    }

    LOBYTE(v42.__locale_) = v58;
    v27 = v61;
    v43 = v61;
    LODWORD(v44) = v10;
    BYTE4(v44) = v13;
    LODWORD(v45) = v19;
    BYTE4(v45) = 48;
    BYTE5(v45) = v26;
    LODWORD(v46) = v16 - 1;
    if (*a3 < 1)
    {
      if (v58)
      {
        LOBYTE(v51[0]) = byte_24BFF57DD[v58];
        sub_24BF716D8(a1, v51);
        v27 = v43;
        v10 = v44;
        LOBYTE(v13) = BYTE4(v44);
      }

      v32 = sub_24BF7E104(a1, v27, v10, 1, v13);
      v33 = v45;
      if (v45 >= 1)
      {
        do
        {
          sub_24BF716D8(v32, &v45 + 4);
          --v33;
        }

        while (v33);
      }

      LOBYTE(v51[0]) = BYTE5(v45);
      sub_24BF716D8(v32, v51);
      return sub_24BF75FDC(v46, v32);
    }

    else
    {
      if (v13)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      if (v16 < 1)
      {
        v18 = 1 - v16;
      }

      v29 = 3;
      if (v18 > 999)
      {
        v29 = 4;
      }

      if (v18 <= 99)
      {
        v30 = 2;
      }

      else
      {
        v30 = v29;
      }

      return sub_24BF7DFF4(a1, a3, v12 + v30 + v28, v12 + v30 + v28, &v42);
    }
  }

  v56 = v10 + v15;
  if ((v15 & 0x80000000) == 0)
  {
    v20 = v15 + v12;
    v21 = a4 - v16;
    v55 = a4 - v16;
    if ((v11 & 0x80000) != 0)
    {
      if (v21 > 0 || v11 == 2)
      {
        v34 = v21 < 1;
        v35 = v20 + 1 + v21;
        if (v34)
        {
          ++v20;
        }

        else
        {
          v20 = v35;
        }
      }

      else
      {
        v55 = 0;
        ++v20;
      }
    }

    sub_24BF760DC(v51, a5, (v11 >> 17) & 1);
    v36 = sub_24BF73A3C(v51, v16);
    v42.__locale_ = &v58;
    v43 = &v61;
    v44 = &v60;
    v45 = a2;
    v46 = v51;
    v47 = &v62;
    v48 = &v57;
    v49 = &v55;
    v50 = &v59;
    v25 = sub_24BF7E188(a1, a3, v20 + v36, v20 + v36, &v42);
    goto LABEL_53;
  }

  if (v16 < 1)
  {
    if (a4 >= -v16)
    {
      v38 = -v16;
    }

    else
    {
      v38 = a4;
    }

    if (a4 <= -1 || v10 != 0)
    {
      v38 = -v16;
    }

    LODWORD(v51[0]) = v38;
    if (v38 | v10)
    {
      LOBYTE(v55) = 1;
    }

    else
    {
      LOBYTE(v55) = (v11 & 0x80000) != 0;
      if ((v11 & 0x80000) == 0)
      {
        v40 = 1;
LABEL_70:
        v42.__locale_ = &v58;
        v43 = &v59;
        v44 = &v55;
        v45 = &v57;
        v46 = v51;
        v47 = &v61;
        v48 = &v60;
        return sub_24BF7E68C(a1, a3, (v40 + v38) + v12, (v40 + v38) + v12, &v42);
      }
    }

    v40 = 2;
    goto LABEL_70;
  }

  v22 = (a4 - v10) & ((v11 << 12) >> 31);
  v55 = v22;
  sub_24BF760DC(v51, a5, (v11 >> 17) & 1);
  v23 = sub_24BF73A3C(v51, v16);
  v42.__locale_ = &v58;
  v43 = &v61;
  v44 = &v60;
  v45 = &v56;
  v24 = (v22 & ~(v22 >> 31)) + 1 + v12 + v23;
  v46 = &v57;
  v47 = v51;
  v48 = &v55;
  v49 = &v59;
  v25 = sub_24BF7E414(a1, a3, v24, v24, &v42);
LABEL_53:
  v37 = v25;
  if (v54 < 0)
  {
    operator delete(__p);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  return v37;
}

void sub_24BF7DFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_24BE8AAC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF7DFF4(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (*a5)
  {
    v18 = byte_24BFF57DD[*a5];
    sub_24BF716D8(v7, &v18);
  }

  v14 = sub_24BF7E104(v7, *(a5 + 1), *(a5 + 4), 1, a5[20]);
  v15 = *(a5 + 6);
  if (v15 >= 1)
  {
    do
    {
      sub_24BF716D8(v14, a5 + 28);
      --v15;
    }

    while (v15);
  }

  v17 = a5[29];
  sub_24BF716D8(v14, &v17);
  result = sub_24BF75FDC(*(a5 + 8), v14);
  if (v11 != v13)
  {
    return sub_24BF73C54(result, v11 - v13, a2 + 11);
  }

  return result;
}

uint64_t sub_24BF7E104(uint64_t a1, char *a2, int a3, int a4, int a5)
{
  v12 = a5;
  v8 = &a2[a4];
  v9 = sub_24BF7174C(a2, v8, a1);
  v10 = v9;
  if (a5)
  {
    sub_24BF716D8(v9, &v12);
    return sub_24BF7174C(v8, &a2[a3], v10);
  }

  return v10;
}

uint64_t sub_24BF7E188(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (**a5)
  {
    v19 = byte_24BFF57DD[**a5];
    sub_24BF716D8(v7, &v19);
  }

  v14 = sub_24BF7E2AC(v7, *a5[1], *a5[2], *(a5[3] + 3), a5[4]);
  v15 = v14;
  if ((a5[5][6] & 8) != 0)
  {
    sub_24BF716D8(v14, a5[6]);
    v16 = *a5[7];
    if (v16 >= 1)
    {
      v17 = a5[8];
      do
      {
        sub_24BF716D8(v15, v17);
        --v16;
      }

      while (v16);
    }
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v15, v11 - v13, a2 + 11);
  }

  return v15;
}

uint64_t sub_24BF7E2AC(uint64_t a1, char *a2, int a3, int a4, uint64_t a5)
{
  v6 = a1;
  v14[63] = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 47);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 32);
  }

  if (v7)
  {
    v11 = &unk_285F9EFD0;
    __p = v14;
    v13 = xmmword_24BFF4C90;
    sub_24BF71780(&v11, a2, &a2[a3]);
    v10 = 48;
    if (a4 >= 1)
    {
      do
      {
        sub_24BF716D8(&v11, &v10);
        --a4;
      }

      while (a4);
    }

    v6 = sub_24BF743F8(a5, v6, __p, v13);
    if (__p != v14)
    {
      operator delete(__p);
    }
  }

  else
  {
    sub_24BF71780(a1, a2, &a2[a3]);
    LOBYTE(v11) = 48;
    if (a4 >= 1)
    {
      do
      {
        sub_24BF716D8(v6, &v11);
        --a4;
      }

      while (a4);
    }
  }

  return v6;
}

void sub_24BF7E3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p != v12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF7E414(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (**a5)
  {
    v18 = byte_24BFF57DD[**a5];
    sub_24BF716D8(v7, &v18);
  }

  v14 = sub_24BF7E528(v7, *a5[1], *a5[2], *a5[3], *a5[4], a5[5]);
  v15 = *a5[6];
  if (v15 >= 1)
  {
    v16 = a5[7];
    do
    {
      sub_24BF716D8(v14, v16);
      --v15;
    }

    while (v15);
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v14, v11 - v13, a2 + 11);
  }

  return v14;
}

uint64_t sub_24BF7E528(uint64_t a1, char *a2, int a3, int a4, int a5, uint64_t a6)
{
  v15[63] = *MEMORY[0x277D85DE8];
  v8 = *(a6 + 47);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a6 + 32);
  }

  if (v8)
  {
    v12 = &unk_285F9EFD0;
    __p = v15;
    v14 = xmmword_24BFF4C90;
    sub_24BF7E104(&v12, a2, a3, a4, a5);
    sub_24BF743F8(a6, a1, __p, a4);
    v10 = sub_24BF7174C(__p + a4, __p + v14, a1);
    if (__p != v15)
    {
      operator delete(__p);
    }

    return v10;
  }

  else
  {

    return sub_24BF7E104(a1, a2, a3, a4, a5);
  }
}

void sub_24BF7E670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p != v10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF7E68C(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, unsigned __int8 **a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF577E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (**a5)
  {
    v17 = byte_24BFF57DD[**a5];
    sub_24BF716D8(v7, &v17);
  }

  sub_24BF716D8(v7, a5[1]);
  if (*a5[2] == 1)
  {
    sub_24BF716D8(v7, a5[3]);
    v14 = *a5[4];
    if (v14 >= 1)
    {
      v15 = a5[1];
      do
      {
        sub_24BF716D8(v7, v15);
        --v14;
      }

      while (v14);
    }

    sub_24BF71780(v7, *a5[5], (*a5[5] + *a5[6]));
  }

  if (v11 != v13)
  {
    return sub_24BF73C54(v7, v11 - v13, a2 + 11);
  }

  return v7;
}

uint64_t sub_24BF7E7C0(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, double a5)
{
  v7 = a1;
  v13 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  if ((a3 & 0x10000) == 0)
  {
    return sub_24BF7E86C(v7, a2, a3, a4, a5);
  }

  v12 = 10;
  v11[0] = a5;
  if ((sub_24BF720A4(a1, v11, &v9, a4) & 1) == 0)
  {
    a2 = v9;
    a3 = v10;
    return sub_24BF7E86C(v7, a2, a3, a4, a5);
  }

  return v7;
}

uint64_t sub_24BF7E86C(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, double a5)
{
  v27[63] = *MEMORY[0x277D85DE8];
  v20 = a2;
  v21 = a3;
  v8 = sub_24BF7BAD4(&v20);
  v19[0] = v8;
  v9 = HIDWORD(v8) & 0xFFFF00FF;
  v10 = HIDWORD(v8) & 0xFFFF00FF | (((*(&v21 + 1) >> 4) & 7) << 8);
  v19[1] = v10;
  if ((*&a5 & 0x8000000000000000) != 0)
  {
    v10 = v9 | 0x100;
    v19[1] = v9 | 0x100;
    a5 = -a5;
  }

  else if (((16 * *(&v21 + 1)) & 0x700) == 0x100)
  {
    v19[1] = HIDWORD(v8) & 0xFFFF00FF;
    v10 = HIDWORD(v8) & 0xFFFF00FF;
  }

  if (a5 >= INFINITY && a5 <= INFINITY)
  {
    return sub_24BF75530(a1, 0, v20, v21, v19);
  }

  if ((BYTE1(v21) & 0xF) == 4 && (v10 & 0xFF00) != 0)
  {
    LOBYTE(v24) = byte_24BFF57DD[BYTE1(v10)];
    sub_24BF716D8(a1, &v24);
    v10 &= 0xFFFF00FF;
    v19[1] = v10;
    if (v20)
    {
      LODWORD(v20) = v20 - 1;
    }
  }

  v24 = &unk_285F9EFD0;
  __p = v27;
  v26 = xmmword_24BFF4C90;
  if (v10 == 3)
  {
    if ((v10 & 0xFF00) != 0)
    {
      LOBYTE(v22) = byte_24BFF57DD[BYTE1(v10)];
      sub_24BF716D8(&v24, &v22);
    }

    sub_24BF7BBD0(HIDWORD(v20), *v19, &v24, a5);
    v22 = __p;
    v23 = v26;
    v12 = sub_24BF7C62C(a1, &v20, v26, v26, &v22);
  }

  else
  {
    v13 = HIDWORD(v20);
    if (v21)
    {
      v14 = SHIDWORD(v20) <= -1;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v13 = 6;
    }

    if (v10 == 1)
    {
      if (v13 == 0x7FFFFFFF)
      {
        sub_24BF713F4("number is too big");
      }

      v15 = v13 + 1;
    }

    else
    {
      if (v13)
      {
        v16 = 1;
      }

      else
      {
        v16 = v10 == 2;
      }

      if (v16)
      {
        v15 = v13;
      }

      else
      {
        v15 = 1;
      }
    }

    v17 = sub_24BF7BE5C(v15, *v19, &v24, a5);
    v19[0] = v15;
    v22 = __p;
    v23 = __PAIR64__(v17, v26);
    v12 = sub_24BF7DB50(a1, &v22, &v20, *v19, a4);
  }

  v11 = v12;
  if (__p != v27)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_24BF7EAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p != v16)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF7EB2C(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, double a5)
{
  v7 = a1;
  v13 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  if ((a3 & 0x10000) == 0)
  {
    return sub_24BF7EBD8(v7, a2, a3, a4, a5);
  }

  v12 = 11;
  v11[0] = a5;
  if ((sub_24BF720A4(a1, v11, &v9, a4) & 1) == 0)
  {
    a2 = v9;
    a3 = v10;
    return sub_24BF7EBD8(v7, a2, a3, a4, a5);
  }

  return v7;
}

uint64_t sub_24BF7EBD8(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4, double a5)
{
  v27[63] = *MEMORY[0x277D85DE8];
  v20 = a2;
  v21 = a3;
  v8 = sub_24BF7BAD4(&v20);
  v19[0] = v8;
  v9 = HIDWORD(v8) & 0xFFFF00FF;
  v10 = HIDWORD(v8) & 0xFFFF00FF | (((*(&v21 + 1) >> 4) & 7) << 8);
  v19[1] = v10;
  if ((*&a5 & 0x8000000000000000) != 0)
  {
    v10 = v9 | 0x100;
    v19[1] = v9 | 0x100;
    a5 = -a5;
  }

  else if (((16 * *(&v21 + 1)) & 0x700) == 0x100)
  {
    v19[1] = HIDWORD(v8) & 0xFFFF00FF;
    v10 = HIDWORD(v8) & 0xFFFF00FF;
  }

  if (a5 >= INFINITY && a5 <= INFINITY)
  {
    return sub_24BF75530(a1, 0, v20, v21, v19);
  }

  if ((BYTE1(v21) & 0xF) == 4 && (v10 & 0xFF00) != 0)
  {
    LOBYTE(v24) = byte_24BFF57DD[BYTE1(v10)];
    sub_24BF716D8(a1, &v24);
    v10 &= 0xFFFF00FF;
    v19[1] = v10;
    if (v20)
    {
      LODWORD(v20) = v20 - 1;
    }
  }

  v24 = &unk_285F9EFD0;
  __p = v27;
  v26 = xmmword_24BFF4C90;
  if (v10 == 3)
  {
    if ((v10 & 0xFF00) != 0)
    {
      LOBYTE(v22) = byte_24BFF57DD[BYTE1(v10)];
      sub_24BF716D8(&v24, &v22);
    }

    sub_24BF7BBD0(HIDWORD(v20), *v19, &v24, a5);
    v22 = __p;
    v23 = v26;
    v12 = sub_24BF7C62C(a1, &v20, v26, v26, &v22);
  }

  else
  {
    v13 = HIDWORD(v20);
    if (v21)
    {
      v14 = SHIDWORD(v20) <= -1;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v13 = 6;
    }

    if (v10 == 1)
    {
      if (v13 == 0x7FFFFFFF)
      {
        sub_24BF713F4("number is too big");
      }

      v15 = v13 + 1;
    }

    else
    {
      if (v13)
      {
        v16 = 1;
      }

      else
      {
        v16 = v10 == 2;
      }

      if (v16)
      {
        v15 = v13;
      }

      else
      {
        v15 = 1;
      }
    }

    v17 = sub_24BF7BE5C(v15, *v19, &v24, a5);
    v19[0] = v15;
    v22 = __p;
    v23 = __PAIR64__(v17, v26);
    v12 = sub_24BF7DB50(a1, &v22, &v20, *v19, a4);
  }

  v11 = v12;
  if (__p != v27)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_24BF7EE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p != v16)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF7EE98(void *a1, char *__s, uint64_t a3)
{
  if (*(a3 + 8) == 17)
  {

    return sub_24BF77FB4(a1, __s, a3);
  }

  else
  {
    if (!__s)
    {
      sub_24BF713F4("string pointer is null");
    }

    v7 = strlen(__s);

    return sub_24BF7EF38(a1, __s, v7, a3);
  }
}

uint64_t sub_24BF7EF38(uint64_t a1, unsigned __int8 *__src, void *a3, uint64_t a4)
{
  v8 = *(a4 + 4);
  v9 = a3;
  if ((v8 & 0x80000000) == 0)
  {
    v9 = a3;
    if (a3 > v8)
    {
      v18 = a3;
      v19 = v8;
      v13 = __src;
      v14 = &v19;
      v15 = &v18;
      sub_24BF7F198(__src, a3, &v13);
      v9 = v18;
    }
  }

  v10 = *(a4 + 8);
  if (*a4)
  {
    if (v10 == 18)
    {
      v11 = sub_24BF7F030(0, __src, a3);
    }

    else
    {
      v13 = 0;
      sub_24BF7F834(__src, v9, &v13);
      v11 = v13;
    }
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v13) = v10 == 18;
  v14 = __src;
  v15 = a3;
  v16 = __src;
  v17 = v9;
  return sub_24BF7F0B8(a1, a4, v9, v11, &v13);
}

unsigned __int8 *sub_24BF7F030(uint64_t a1, char *__src, uint64_t a3)
{
  v3 = __src;
  v4 = (a1 + 1);
  v5 = &__src[a3];
  do
  {
    v8 = 0;
    v9 = 0;
    v7 = v5;
    sub_24BF7F5F0(v3, v5 - v3, &v7);
    if (v3 != v7)
    {
      v4 = &v7[v4 - v3];
    }

    v3 = v8;
    if (!v8)
    {
      break;
    }

    v4 = sub_24BF7F448(v4, &v7);
  }

  while (v3 != v5);
  return v4 + 1;
}

uint64_t sub_24BF7F0B8(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *a2;
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_24BFF5232[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v7 = sub_24BF73C54(a1, v11 >> v12, a2 + 11);
  }

  if (*a5 == 1)
  {
    v7 = sub_24BF7FBB8(v7, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    sub_24BF71780(v7, *(a5 + 24), (*(a5 + 24) + *(a5 + 32)));
  }

  if (v11 == v13)
  {
    return v7;
  }

  return sub_24BF73C54(v7, v11 - v13, a2 + 11);
}

unsigned __int8 *sub_24BF7F198(unsigned __int8 *__src, unint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = __src;
  if (a2 >= 4)
  {
    v6 = __src;
    while (v6 < &__src[a2 - 3])
    {
      v7 = *v6;
      v8 = v7 >> 3;
      v9 = byte_24BFF5D80[v7 >> 3];
      v10 = dword_24BFF5D30[v9];
      v11 = v6[1];
      v12 = v6[2];
      v13 = dword_24BFF5D58[v9];
      v14 = v6[3];
      v15 = dword_24BFF5D44[v9];
      v16 = dword_24BFF5D6C[v9];
      v17 = *v4;
      if (*v4)
      {
        *v4 = v17 - 1;
      }

      else
      {
        *v5 = &v6[-v3];
      }

      v18 = (((v10 & v7) << 18) | ((v11 & 0x3F) << 12) | ((v12 & 0x3F) << 6) | v14 & 0x3F) >> v13;
      v19 = &v6[v9 + ((0x80FF0000 >> v8) & 1)];
      if ((((v12 >> 4) & 0xC | (v11 >> 2) & 0x30 | (v14 >> 6) | ((v18 < v15) << 6) | ((v18 > 0x10FFFF) << 8) | (((v18 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> v16)
      {
        ++v6;
      }

      else
      {
        v6 = v19;
      }

      if (!v17)
      {
        return __src;
      }
    }
  }

  v20 = (&__src[a2] - v6);
  if (&__src[a2] != v6)
  {
    *(__dst + 3) = 0;
    __dst[0] = 0;
    __src = memcpy(__dst, v6, v20);
    v21 = *v4 - 1;
    v22 = __dst;
    while (v21 != -1)
    {
      v23 = *v22;
      v24 = v23 >> 3;
      v25 = byte_24BFF5D80[v23 >> 3];
      v26 = dword_24BFF5D6C[v25];
      v27 = dword_24BFF5D44[v25];
      v28 = dword_24BFF5D58[v25];
      v29 = v22[3];
      v30 = v22[2];
      v31 = v22[1];
      v32 = dword_24BFF5D30[v25];
      *v4 = v21;
      LODWORD(v23) = (((v32 & v23) << 18) | ((v31 & 0x3F) << 12) | ((v30 & 0x3F) << 6) | v29 & 0x3F) >> v28;
      v33 = &v22[((0x80FF0000 >> v24) & 1) + v25];
      if ((((v30 >> 4) & 0xC | (v31 >> 2) & 0x30 | (v29 >> 6) | ((v23 < v27) << 6) | ((v23 > 0x10FFFF) << 8) | (((v23 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> v26)
      {
        v34 = v22 + 1;
      }

      else
      {
        v34 = v33;
      }

      v6 += v34 - v22;
      __src = (v34 - __dst);
      --v21;
      v22 = v34;
      if (v34 - __dst >= v20)
      {
        return __src;
      }
    }

    *v5 = &v6[-v3];
  }

  return __src;
}