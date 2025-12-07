void sub_1A7C3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1A7EC1C(&__p);
  _Unwind_Resume(a1);
}

void sub_1A7C48C(uint64_t a1@<X1>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    sub_325C(&__str, *a1, *(a1 + 8));
  }

  else
  {
    __str = *a1;
  }

  sub_3608D0(__p, "|");
  sub_1A7C7FC(&v21, &__str, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = v21;
  for (i = v22; v4 != i; v4 += 24)
  {
    if (*(v4 + 23) < 0)
    {
      LODWORD(v3) = sub_325C(v16, *v4, *(v4 + 8));
    }

    else
    {
      v6 = *v4;
      v17 = *(v4 + 16);
      *v16 = v6;
    }

    LODWORD(v3) = sub_1A7C9C8(v3, v16);
    v8 = a2[1];
    v7 = a2[2];
    if (v8 >= v7)
    {
      v10 = *a2;
      v11 = v8 - *a2;
      v12 = v11 >> 2;
      v13 = (v11 >> 2) + 1;
      if (v13 >> 62)
      {
        sub_1794();
      }

      v14 = v7 - v10;
      if (v14 >> 1 > v13)
      {
        v13 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_196396C(a2, v15);
      }

      *(4 * v12) = v3;
      v9 = (4 * v12 + 4);
      memcpy(0, v10, v11);
      v3 = *a2;
      *a2 = 0;
      a2[1] = v9;
      a2[2] = 0;
      if (v3)
      {
        operator delete(v3);
      }
    }

    else
    {
      *v8 = v3;
      v9 = v8 + 4;
    }

    a2[1] = v9;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }
  }

  v23 = &v21;
  sub_195E3E8(&v23);
}

void sub_1A7C664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A7C6D8(uint64_t a1, unsigned int *a2)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 1) == 9 && **a2 == 0x6F69746365726964 && *(*a2 + 8) == 110)
    {
      return 20;
    }

    if (*(a2 + 1) != 5)
    {
      return 0;
    }

    a2 = *a2;
  }

  else
  {
    v2 = *(a2 + 23);
    if (v2 != 5)
    {
      if (v2 == 9)
      {
        if (*a2 ^ 0x6F69746365726964 | *(a2 + 8) ^ 0x6ELL)
        {
          return 0;
        }

        else
        {
          return 20;
        }
      }

      return 0;
    }
  }

  v5 = bswap64(*a2 | (*(a2 + 4) << 32));
  v6 = v5 >= 0x7469746C65000000;
  v7 = v5 > 0x7469746C65000000;
  v8 = !v6;
  if (v7 == v8)
  {
    return 21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7C7BC(uint64_t a1, void *a2)
{
  v2 = *sub_122356C(a1, &v4, a2);
  if (!v2)
  {
    sub_49EC("map::at:  key not found");
  }

  return v2 + 56;
}

void sub_1A7C7FC(uint64_t *__return_ptr a1@<X8>, std::string *__str@<X1>, unsigned __int8 *a3@<X2>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v7 = __str;
  }

  v8 = a3[23];
  if ((v8 & 0x80u) == 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 1);
  }

  if (size)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_14:
    sub_1A489AC(a1, __str);
  }

  else
  {
    v11 = v7 + size;
    v12 = v7;
LABEL_16:
    v13 = v8;
    v14 = v9;
    while (v12->__r_.__value_.__s.__data_[0] != *v14)
    {
      ++v14;
      if (!--v13)
      {
        v12 = (v12 + 1);
        if (v12 != v11)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    if (v12 == v11)
    {
      goto LABEL_14;
    }

    v15 = v12 - v7;
    if (v12 - v7 == -1)
    {
      goto LABEL_14;
    }

    v16 = 0;
    while (2)
    {
      std::string::basic_string(&__p, __str, v16, v15 - v16, &v26);
      sub_794D4(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v17 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((v17 & 0x8000000000000000) != 0)
      {
        v18 = __str->__r_.__value_.__r.__words[0];
        v17 = __str->__r_.__value_.__l.__size_;
      }

      else
      {
        v18 = __str;
      }

      v16 = v15 + 1;
      v19 = a3[23];
      if ((v19 & 0x80u) == 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a3 + 1);
      }

      if (v17 > v16 && v19)
      {
        v21 = v18 + v17;
        v22 = v18 + v16;
LABEL_37:
        v23 = v19;
        v24 = v20;
        while (*v22 != *v24)
        {
          ++v24;
          if (!--v23)
          {
            if (++v22 != v21)
            {
              goto LABEL_37;
            }

            return;
          }
        }

        if (v22 != v21)
        {
          v15 = v22 - v18;
          if (v22 - v18 != -1)
          {
            continue;
          }
        }
      }

      break;
    }
  }
}

uint64_t sub_1A7C9C8(int a1, unsigned __int8 *a2)
{
  v3 = a2[23];
  if (a2[23] < 0)
  {
    if (*(a2 + 1) == 1 && **a2 == 48)
    {
      return 27;
    }

    if (*(a2 + 1) == 1 && **a2 == 49)
    {
      return 1;
    }

    if (*(a2 + 1) == 1 && **a2 == 50)
    {
      return 12;
    }

    if (*(a2 + 1) == 1)
    {
      if (**a2 == 52)
      {
        return 2;
      }

      if ((v3 & 0x80) == 0)
      {
        goto LABEL_32;
      }
    }

    if (*(a2 + 1) != 2)
    {
      goto LABEL_29;
    }

    if (**a2 == 13873)
    {
      return 3;
    }

    if ((v3 & 0x80) != 0)
    {
LABEL_29:
      if (*(a2 + 1) != 2)
      {
        goto LABEL_32;
      }

      v4 = *a2;
    }

    else
    {
      v4 = a2;
      if (v3 != 2)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  if (v3 == 1)
  {
    if (*a2 - 48 < 3)
    {
      return *&asc_236AEB4[4 * (*a2 - 48)];
    }

    if (*a2 != 52)
    {
      goto LABEL_32;
    }

    return 2;
  }

  if (v3 != 2)
  {
    goto LABEL_32;
  }

  v4 = a2;
  if (*a2 == 13873)
  {
    return 3;
  }

LABEL_31:
  if (*v4 == 13619)
  {
    return 4;
  }

LABEL_32:
  if (sub_A7DB8C(a2, "43"))
  {
    return 5;
  }

  if (sub_A7DB8C(a2, "44"))
  {
    return 6;
  }

  if (sub_A7DB8C(a2, "45"))
  {
    return 7;
  }

  if (sub_A7DB8C(a2, "46"))
  {
    return 8;
  }

  if (sub_A7DB8C(a2, "47"))
  {
    return 9;
  }

  if (sub_A7DB8C(a2, "48"))
  {
    return 10;
  }

  if (sub_A7DB8C(a2, "49"))
  {
    return 11;
  }

  if (sub_A7DB8C(a2, "50"))
  {
    return 12;
  }

  if (sub_A7DB8C(a2, "51"))
  {
    return 13;
  }

  if (sub_A7DB8C(a2, "54"))
  {
    return 14;
  }

  if (sub_A7DB8C(a2, "55"))
  {
    return 15;
  }

  if (sub_A7DB8C(a2, "57"))
  {
    return 16;
  }

  if (sub_A7DB8C(a2, "59"))
  {
    return 17;
  }

  if (sub_A7DB8C(a2, "61"))
  {
    return 18;
  }

  if (sub_A7DB8C(a2, "65"))
  {
    return 19;
  }

  return 0;
}

void sub_1A7CCF0(uint64_t *__return_ptr a1@<X8>, std::string *__str@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = __str;
  }

  else
  {
    v4 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = 0;
    while (v4->__r_.__value_.__s.__data_[v6] != 10)
    {
      if (size == ++v6)
      {
        return;
      }
    }

    if (size != v6 && v6 != -1)
    {
      v7 = 0;
      do
      {
        std::string::basic_string(&__p, __str, v7, v6 - v7, &v11);
        sub_794D4(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = v6 + 1;
        v8 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        if ((v8 & 0x80u) == 0)
        {
          v9 = __str;
        }

        else
        {
          v9 = __str->__r_.__value_.__r.__words[0];
        }

        if ((v8 & 0x80u) != 0)
        {
          v8 = __str->__r_.__value_.__l.__size_;
        }

        if (v8 <= v7)
        {
          break;
        }

        ++v6;
        while (v9->__r_.__value_.__s.__data_[v6] != 10)
        {
          if (v8 == ++v6)
          {
            return;
          }
        }
      }

      while (v8 != v6 && v6 != -1);
    }
  }
}

void sub_1A7CE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_195E3E8(&__p);
  _Unwind_Resume(a1);
}

void **sub_1A7CE30(void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_19A2490(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_1A7EC90(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void sub_1A7CF70(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v7 = sub_F931AC(a3 + 1296);
  sub_1A48A70(a3 + 1296, v7, &__p);
  sub_1B83E44(&v14, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = sub_19D52D4((a3 + 1216), (a1 + 24));
  v9 = v8;
  if (v8 && ((*(*v8[5] + 8))(v8[5]) & 1) == 0)
  {
    v10 = v9[5];
    if (v10)
    {
      if (v11)
      {
        v12 = v9[6];
        if (v12)
        {
          atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
        }
      }
    }

    else
    {
      v11 = 0;
    }

    sub_681D7C(v11);
    sub_681D7C(v11);
    sub_1A7B5A8();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1A7D234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  *(v35 - 72) = v31;
  sub_19A2570((v35 - 72));
  *(v35 - 72) = v34;
  sub_1A7E25C((v35 - 72));
  a10 = &a13;
  sub_1A7E25C(&a10);
  a13 = &a19;
  sub_19A240C(&a13);
  if (a31 < 0)
  {
    operator delete(__p);
    if (!v33)
    {
LABEL_3:
      if (!v32)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      sub_1220A18(v32);
      goto LABEL_8;
    }
  }

  else if (!v33)
  {
    goto LABEL_3;
  }

  sub_1220A18(v33);
  v32 = *(v35 - 80);
  if (!v32)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1A7D320(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (a4[1] != *a4)
  {
    v7 = 0;
    do
    {
      v34 = 0;
      sub_1A7AAB4(&v36, &v34);
      ++v7;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) > v7);
  }

  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  sub_1C115F8(a2, &__p);
  sub_12234C8(&v34, &__p, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v31 = 0;
  do
  {
    memset(&__p, 0, sizeof(__p));
    v9 = v36;
    v8 = v37;
    if (v37 != v36)
    {
      v10 = 0;
      do
      {
        v11 = *(*a4 + 24 * v10) + 40 * v9[v10];
        v12 = *v11;
        if (*v11 >= *(v11 + 8))
        {
          v15 = *(v11 + 32);
        }

        else
        {
          do
          {
            sub_1A3B978(&__p, v12);
            v13 = *a2;
            size = __p.__r_.__value_.__l.__size_;
            *(__p.__r_.__value_.__l.__size_ - 40) = *(*a2 + (v10 << 6) + 24);
            v15 = *(v11 + 32);
            *(size - 32) = *(v13 + (v15 << 6) - 32);
            v16 = (v10 << 6) | 0x28;
            for (i = v10; i < v15; v16 += 64)
            {
              sub_19A1E10(__p.__r_.__value_.__l.__size_ - 24, *(*a2 + v16), (*a2 + v16 + 8));
              ++i;
              v15 = *(v11 + 32);
            }

            v12 += 4;
          }

          while (v12 < *(v11 + 8));
          v9 = v36;
          v8 = v37;
        }

        v10 = v15;
      }

      while (v15 < (v8 - v9) >> 3);
    }

    sub_1C115F8(&__p, &v32);
    if (v35 == sub_19D5254(&v34, &v32))
    {
      sub_19A1DD0(a3, &__p);
      sub_7E36C(&v34, &v32.__r_.__value_.__l.__data_, &v32);
      v18 = ++v31 == a5;
    }

    else
    {
      v18 = 0;
    }

    v19 = v36;
    v20 = (v37 - v36) >> 3;
    v21 = *a4;
    v22 = v20 - 1;
    v23 = *(v36 + v20 - 1) + 1;
    *(v36 + v20 - 1) = v23;
    if (v23 >= 0xCCCCCCCCCCCCCCCDLL * ((*(v21 + 24 * (v20 - 1) + 8) - *(v21 + 24 * (v20 - 1))) >> 3))
    {
      v24 = (v21 + 24 * v20 - 48);
      v25 = &v19[8 * v20 - 16];
      while (v22)
      {
        --v22;
        v26 = *v25 + 1;
        *v25 = v26;
        v25[1] = 0;
        --v25;
        v28 = *v24;
        v27 = v24[1];
        v24 -= 3;
        if (v26 < 0xCCCCCCCCCCCCCCCDLL * ((v27 - v28) >> 3))
        {
          goto LABEL_25;
        }
      }

      v18 = 1;
    }

LABEL_25:
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    v32.__r_.__value_.__r.__words[0] = &__p;
    sub_19A240C(&v32);
  }

  while (!v18);
  sub_7E724(&v34, v35[0]);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

void sub_1A7D608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char *a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_7E724(&a25, a26);
  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1A7D68C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_1A7D810(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *sub_1A7D6E0(char **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
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
    sub_19A2490(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1A7D810((24 * v2), *a2, a2[1], (a2[1] - *a2) >> 4);
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
  sub_1A7D9D8(&v14);
  return v8;
}

void sub_1A7D7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A7D9D8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1A7D810(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1A7D898(result, a4);
  }

  return result;
}

void sub_1A7D878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1A3CCC4(&a9);
  _Unwind_Resume(a1);
}

void sub_1A7D898(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_197FF6C(a1, a2);
  }

  sub_1794();
}

void *sub_1A7D8D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_1A7D95C(v7);
  return v4;
}

uint64_t sub_1A7D95C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1A7D994(a1);
  }

  return a1;
}

void sub_1A7D994(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_1220A18(v3);
    }

    v1 -= 16;
  }
}

void **sub_1A7D9D8(void **a1)
{
  sub_1A7DA0C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A7DA0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1A3CCC4(&v5);
  }
}

__n128 sub_1A7DA60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  sub_19A22C0(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 6);
  result = *(a2 + 24);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 40;
  return result;
}

uint64_t sub_1A7DAC8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1A7DC10(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_19A22C0(v7, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 6);
  *(v7 + 24) = *(a2 + 24);
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_1A7DC68(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1A7DDAC(&v14);
  return v13;
}

void sub_1A7DBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A7DDAC(va);
  _Unwind_Resume(a1);
}

void sub_1A7DC10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1A7DC68(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      sub_19A240C(&v12);
      v5 += 5;
    }
  }

  return sub_1A7DD28(v8);
}

uint64_t sub_1A7DD28(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1A7DD60(a1);
  }

  return a1;
}

void sub_1A7DD60(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 5;
    v3 = v1;
    sub_19A240C(&v3);
  }
}

void **sub_1A7DDAC(void **a1)
{
  sub_1A7DDE0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A7DDE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 40);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_19A240C(&v5);
  }
}

uint64_t *sub_1A7DE34(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_1A7DFD0(v3, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

void *sub_1A7DE94(char **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
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
    sub_19A2490(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1A7DFD0((24 * v2), *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
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
  sub_1A7E1D4(&v14);
  return v8;
}

void sub_1A7DFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A7E1D4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1A7DFD0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1A7E058(result, a4);
  }

  return result;
}

void sub_1A7E038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_1A7E160(&a9);
  _Unwind_Resume(a1);
}

void sub_1A7E058(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1A7DC10(a1, a2);
  }

  sub_1794();
}

uint64_t sub_1A7E0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_19A22C0(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 6);
      *(v4 + 24) = *(v6 + 24);
      v6 += 40;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1A7DD28(v8);
  return v4;
}

void sub_1A7E160(void ****a1)
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
        v4 -= 5;
        v6 = v4;
        sub_19A240C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void **sub_1A7E1D4(void **a1)
{
  sub_1A7E208(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A7E208(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1A7E160(&v5);
  }
}

void sub_1A7E25C(void *****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_1A7E160(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1A7E2D0(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_1A3CCC4(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *sub_1A7E344(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v9 += 24;
      v8 += 3;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1A7E53C(&v11, a2, v7, v6);
}

uint64_t *sub_1A7E3C4(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      v10 = v4 - *a1;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = a1[4];
      v15[4] = a1[4];
      sub_19A2490(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    sub_1A7E80C(v15, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    a1[1] += 8 * v7;
    a1[2] = v8;
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  result = sub_1A7DFD0(v4, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  a1[2] += 24;
  return result;
}

void *sub_1A7E53C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = a4 - 24;
    v7 = a3;
    do
    {
      sub_1A7E5B0(v6);
      v8 = *(v7 - 3);
      v7 -= 3;
      *v6 = v8;
      *(v6 + 16) = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v6 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void sub_1A7E5B0(void ***a1)
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
        v3 -= 5;
        v5 = v3;
        sub_19A240C(&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1A7E624(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_1A7E5B0(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      sub_1A7E058(a1, v10);
    }

    sub_1794();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) >= a4)
  {
    sub_1A7E794(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 5;
        v17 = v14;
        sub_19A240C(&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1A7E794(&v15, a2, a2 + v11, v8);
    *(a1 + 8) = sub_1A7E0A4(a1, a2 + v11, a3, *(a1 + 8));
  }
}

uint64_t sub_1A7E794(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_1A3CD64(a4, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 6);
      }

      *(a4 + 24) = *(v5 + 24);
      v5 += 40;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1A7E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_1A7E5B0(a4);
      *a4 = *v5;
      *(a4 + 16) = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1A7E880(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1A7DC10(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = *(a2 + 24);
  *&v16 = 40 * v2 + 40;
  v8 = *(a1 + 8);
  v9 = 40 * v2 + *a1 - v8;
  sub_1A7DC68(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1A7DDAC(&v14);
  return v13;
}

void sub_1A7E9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A7DDAC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1A7E9C8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19A2348(result, a4);
  }

  return result;
}

void sub_1A7EA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19A240C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7EA50(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_19A25E4(a4, v6);
      v6 += 4;
      a4 += 64;
      v7 -= 64;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1A7EAB0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 64;
    do
    {
      sub_19A2098(v4);
      v4 -= 64;
      v2 += 64;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1A7EAD8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1A7E058(result, a4);
  }

  return result;
}

void sub_1A7EB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1A7E160(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_19A22C0(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 6);
      *(v4 + 24) = *(v6 + 24);
      v6 += 40;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1A7DD28(v8);
  return v4;
}

void sub_1A7EC1C(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_195E3E8(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void **sub_1A7EC90(void **a1)
{
  sub_1A7ECC4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A7ECC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_195E3E8(&v5);
  }
}

void *sub_1A7ED74(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722DF0;
  sub_1DC69D4((a1 + 3));
  return a1;
}

void sub_1A7EDF0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1A7EE44(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1A7EE9C(a1 + 72, *(a1 + 80));
  v3 = (a1 + 48);
  sub_1A7EEF8(&v3);
  v3 = v2;
  sub_1A7EC1C(&v3);
}

void sub_1A7EE9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1A7EE9C(a1, *a2);
    sub_1A7EE9C(a1, a2[1]);
    sub_1965B78((a2 + 4));

    operator delete(a2);
  }
}

void sub_1A7EEF8(void ***a1)
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
        v6 = v4 - 3;
        sub_195A77C((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1A7EFA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1A7F008(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1A7F008(a1, *a2);
    sub_1A7F008(a1, a2[1]);
    sub_1A7F064((a2 + 4));

    operator delete(a2);
  }
}

void sub_1A7F064(uint64_t a1)
{
  sub_195A77C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *sub_1A7F0B8(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_122356C(a1, &v7, a2);
  if (!v5)
  {
    sub_1A7F160();
  }

  return v5;
}

uint64_t sub_1A7F204(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1A7F064(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1A7F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_3608D0(&v1253, "AW");
  sub_3608D0(&v1250, "ABW");
  v1252 = 40;
  sub_195E43C(v1255, &v1253, &v1250);
  sub_3608D0(&v1248, "AF");
  sub_3608D0(&v1245, "AFG");
  v1247 = 41;
  sub_195E43C(&v1256, &v1248, &v1245);
  sub_3608D0(&v1243, "AO");
  sub_3608D0(&v1240, "AGO");
  v1242 = 42;
  sub_195E43C(&v1257, &v1243, &v1240);
  sub_3608D0(&v1238, "AI");
  sub_3608D0(&v1235, "AIA");
  v1237 = 43;
  sub_195E43C(&v1258, &v1238, &v1235);
  sub_3608D0(&v1233, "AX");
  sub_3608D0(&v1230, "ALA");
  v1232 = 246;
  sub_195E43C(&v1259, &v1233, &v1230);
  sub_3608D0(&v1228, "AL");
  sub_3608D0(&v1225, "ALB");
  v1227 = 76;
  sub_195E43C(&v1260, &v1228, &v1225);
  sub_3608D0(&v1223, "AD");
  sub_3608D0(&v1220, "AND");
  v1222 = 78;
  sub_195E43C(&v1261, &v1223, &v1220);
  sub_3608D0(&v1218, "AN");
  sub_3608D0(&v1215, "ANT");
  v1217 = 44;
  sub_195E43C(&v1262, &v1218, &v1215);
  sub_3608D0(&v1213, "AE");
  sub_3608D0(&v1210, "ARE");
  v1212 = 2;
  sub_195E43C(&v1263, &v1213, &v1210);
  sub_3608D0(&v1208, "AR");
  sub_3608D0(&v1205, "ARG");
  v1207 = 80;
  sub_195E43C(&v1264, &v1208, &v1205);
  sub_3608D0(&v1203, "AM");
  sub_3608D0(&v1200, "ARM");
  v1202 = 45;
  sub_195E43C(&v1265, &v1203, &v1200);
  sub_3608D0(&v1198, "AS");
  sub_3608D0(&v1195, "ASM");
  v1197 = 77;
  sub_195E43C(&v1266, &v1198, &v1195);
  sub_3608D0(&v1193, "AQ");
  sub_3608D0(&v1190, "ATA");
  v1192 = 46;
  sub_195E43C(&v1267, &v1193, &v1190);
  sub_3608D0(&v1188, "TF");
  sub_3608D0(&v1185, "ATF");
  v1187 = 125;
  sub_195E43C(&v1268, &v1188, &v1185);
  sub_3608D0(&v1183, "AG");
  sub_3608D0(&v1180, "ATG");
  v1182 = 79;
  sub_195E43C(&v1269, &v1183, &v1180);
  sub_3608D0(&v1178, "AU");
  sub_3608D0(&v1175, "AUS");
  v1177 = 22;
  sub_195E43C(&v1270, &v1178, &v1175);
  sub_3608D0(&v1173, "AT");
  sub_3608D0(&v1170, "AUT");
  v1172 = 81;
  sub_195E43C(&v1271, &v1173, &v1170);
  sub_3608D0(&v1168, "AZ");
  sub_3608D0(&v1165, "AZE");
  v1167 = 82;
  sub_195E43C(&v1272, &v1168, &v1165);
  sub_3608D0(&v1163, "BI");
  sub_3608D0(&v1160, "BDI");
  v1162 = 96;
  sub_195E43C(&v1273, &v1163, &v1160);
  sub_3608D0(&v1158, "BE");
  sub_3608D0(&v1155, "BEL");
  v1157 = 87;
  sub_195E43C(&v1274, &v1158, &v1155);
  sub_3608D0(&v1153, "BJ");
  sub_3608D0(&v1150, "BEN");
  v1152 = 3;
  sub_195E43C(&v1275, &v1153, &v1150);
  sub_3608D0(&v1148, "BQ");
  sub_3608D0(&v1145, "BES");
  v1147 = 248;
  sub_195E43C(&v1276, &v1148, &v1145);
  sub_3608D0(&v1143, "BF");
  sub_3608D0(&v1140, "BFA");
  v1142 = 11;
  sub_195E43C(&v1277, &v1143, &v1140);
  sub_3608D0(&v1138, "BD");
  sub_3608D0(&v1135, "BGD");
  v1137 = 84;
  sub_195E43C(&v1278, &v1138, &v1135);
  sub_3608D0(&v1133, "BG");
  sub_3608D0(&v1130, "BGR");
  v1132 = 95;
  sub_195E43C(&v1279, &v1133, &v1130);
  sub_3608D0(&v1128, "BH");
  sub_3608D0(&v1125, "BHR");
  v1127 = 12;
  sub_195E43C(&v1280, &v1128, &v1125);
  sub_3608D0(&v1123, "BS");
  sub_3608D0(&v1120, "BHS");
  v1122 = 83;
  sub_195E43C(&v1281, &v1123, &v1120);
  sub_3608D0(&v1118, "BA");
  sub_3608D0(&v1115, "BIH");
  v1117 = 92;
  sub_195E43C(&v1282, &v1118, &v1115);
  sub_3608D0(&v1113, "BL");
  sub_3608D0(&v1110, "BLM");
  v1112 = 237;
  sub_195E43C(&v1283, &v1113, &v1110);
  sub_3608D0(&v1108, "BY");
  sub_3608D0(&v1105, "BLR");
  v1107 = 86;
  sub_195E43C(&v1284, &v1108, &v1105);
  sub_3608D0(&v1103, "BZ");
  sub_3608D0(&v1100, "BLZ");
  v1102 = 88;
  sub_195E43C(&v1285, &v1103, &v1100);
  sub_3608D0(&v1098, "BM");
  sub_3608D0(&v1095, "BMU");
  v1097 = 89;
  sub_195E43C(&v1286, &v1098, &v1095);
  sub_3608D0(&v1093, "BO");
  sub_3608D0(&v1090, "BOL");
  v1092 = 91;
  sub_195E43C(&v1287, &v1093, &v1090);
  sub_3608D0(&v1088, "BR");
  sub_3608D0(&v1085, "BRA");
  v1087 = 25;
  sub_195E43C(&v1288, &v1088, &v1085);
  sub_3608D0(&v1083, "BB");
  sub_3608D0(&v1080, "BRB");
  v1082 = 85;
  sub_195E43C(&v1289, &v1083, &v1080);
  sub_3608D0(&v1078, "BN");
  sub_3608D0(&v1075, "BRN");
  v1077 = 94;
  sub_195E43C(&v1290, &v1078, &v1075);
  sub_3608D0(&v1073, "BT");
  sub_3608D0(&v1070, "BTN");
  v1072 = 90;
  sub_195E43C(&v1291, &v1073, &v1070);
  sub_3608D0(&v1068, "BV");
  sub_3608D0(&v1065, "BVT");
  v1067 = 245;
  sub_195E43C(&v1292, &v1068, &v1065);
  sub_3608D0(&v1063, "BW");
  sub_3608D0(&v1060, "BWA");
  v1062 = 93;
  sub_195E43C(&v1293, &v1063, &v1060);
  sub_3608D0(&v1058, "CF");
  sub_3608D0(&v1055, "CAF");
  v1057 = 63;
  sub_195E43C(&v1294, &v1058, &v1055);
  sub_3608D0(&v1053, "CA");
  sub_3608D0(&v1050, "CAN");
  v1052 = 98;
  sub_195E43C(&v1295, &v1053, &v1050);
  sub_3608D0(&v1048, "CC");
  sub_3608D0(&v1045, "CCK");
  v1047 = 47;
  sub_195E43C(&v1296, &v1048, &v1045);
  sub_3608D0(&v1043, "CH");
  sub_3608D0(&v1040, "CHE");
  v1042 = 211;
  sub_195E43C(&v1297, &v1043, &v1040);
  sub_3608D0(&v1038, "CL");
  sub_3608D0(&v1035, "CHL");
  v1037 = 102;
  sub_195E43C(&v1298, &v1038, &v1035);
  sub_3608D0(&v1033, "CN");
  sub_3608D0(&v1030, "CHN");
  v1032 = 4;
  sub_195E43C(&v1299, &v1033, &v1030);
  sub_3608D0(&v1028, "CI");
  sub_3608D0(&v1025, "CIV");
  v1027 = 26;
  sub_195E43C(&v1300, &v1028, &v1025);
  sub_3608D0(&v1023, "CM");
  sub_3608D0(&v1020, "CMR");
  v1022 = 27;
  sub_195E43C(&v1301, &v1023, &v1020);
  sub_3608D0(&v1018, "CD");
  sub_3608D0(&v1015, "COD");
  v1017 = 106;
  sub_195E43C(&v1302, &v1018, &v1015);
  sub_3608D0(&v1013, "CG");
  sub_3608D0(&v1010, "COG");
  v1012 = 105;
  sub_195E43C(&v1303, &v1013, &v1010);
  sub_3608D0(&v1008, "CK");
  sub_3608D0(&v1005, "COK");
  v1007 = 107;
  sub_195E43C(&v1304, &v1008, &v1005);
  sub_3608D0(&v1003, "CO");
  sub_3608D0(&v1000, "COL");
  v1002 = 28;
  sub_195E43C(&v1305, &v1003, &v1000);
  sub_3608D0(&v998, "KM");
  sub_3608D0(&v995, "COM");
  v997 = 104;
  sub_195E43C(&v1306, &v998, &v995);
  sub_3608D0(&v993, "CV");
  sub_3608D0(&v990, "CPV");
  v992 = 99;
  sub_195E43C(&v1307, &v993, &v990);
  sub_3608D0(&v988, "CR");
  sub_3608D0(&v985, "CRI");
  v987 = 13;
  sub_195E43C(&v1308, &v988, &v985);
  sub_3608D0(&v983, "CU");
  sub_3608D0(&v980, "CUB");
  v982 = 109;
  sub_195E43C(&v1309, &v983, &v980);
  sub_3608D0(&v978, "CW");
  sub_3608D0(&v975, "CUW");
  v977 = 247;
  sub_195E43C(&v1310, &v978, &v975);
  sub_3608D0(&v973, "CX");
  sub_3608D0(&v970, "CXR");
  v972 = 103;
  sub_195E43C(&v1311, &v973, &v970);
  sub_3608D0(&v968, "KY");
  sub_3608D0(&v965, "CYM");
  v967 = 100;
  sub_195E43C(&v1312, &v968, &v965);
  sub_3608D0(&v963, "CY");
  sub_3608D0(&v960, "CYP");
  v962 = 110;
  sub_195E43C(&v1313, &v963, &v960);
  sub_3608D0(&v958, "CZ");
  sub_3608D0(&v955, "CZE");
  v957 = 111;
  sub_195E43C(&v1314, &v958, &v955);
  sub_3608D0(&v953, "DE");
  sub_3608D0(&v950, "DEU");
  v952 = 129;
  sub_195E43C(&v1315, &v953, &v950);
  sub_3608D0(&v948, "DJ");
  sub_3608D0(&v945, "DJI");
  v947 = 113;
  sub_195E43C(&v1316, &v948, &v945);
  sub_3608D0(&v943, "DM");
  sub_3608D0(&v940, "DMA");
  v942 = 114;
  sub_195E43C(&v1317, &v943, &v940);
  sub_3608D0(&v938, "DK");
  sub_3608D0(&v935, "DNK");
  v937 = 112;
  sub_195E43C(&v1318, &v938, &v935);
  sub_3608D0(&v933, "DO");
  sub_3608D0(&v930, "DOM");
  v932 = 29;
  sub_195E43C(&v1319, &v933, &v930);
  sub_3608D0(&v928, "DZ");
  sub_3608D0(&v925, "DZA");
  v927 = 0;
  sub_195E43C(&v1320, &v928, &v925);
  sub_3608D0(&v923, "EC");
  sub_3608D0(&v920, "ECU");
  v922 = 30;
  sub_195E43C(&v1321, &v923, &v920);
  sub_3608D0(&v918, "EG");
  sub_3608D0(&v915, "EGY");
  v917 = 64;
  sub_195E43C(&v1322, &v918, &v915);
  sub_3608D0(&v913, "ER");
  sub_3608D0(&v910, "ERI");
  v912 = 116;
  sub_195E43C(&v1323, &v913, &v910);
  sub_3608D0(&v908, "EH");
  sub_3608D0(&v905, "ESH");
  v907 = 65;
  sub_195E43C(&v1324, &v908, &v905);
  sub_3608D0(&v903, "ES");
  sub_3608D0(&v900, "ESP");
  v902 = 206;
  sub_195E43C(&v1325, &v903, &v900);
  sub_3608D0(&v898, "EE");
  sub_3608D0(&v895, "EST");
  v897 = 117;
  sub_195E43C(&v1326, &v898, &v895);
  sub_3608D0(&v893, "ET");
  sub_3608D0(&v890, "ETH");
  v892 = 31;
  sub_195E43C(&v1327, &v893, &v890);
  sub_3608D0(&v888, "FI");
  sub_3608D0(&v885, "FIN");
  v887 = 121;
  sub_195E43C(&v1328, &v888, &v885);
  sub_3608D0(&v883, "FJ");
  sub_3608D0(&v880, "FJI");
  v882 = 120;
  sub_195E43C(&v1329, &v883, &v880);
  sub_3608D0(&v878, "FK");
  sub_3608D0(&v875, "FLK");
  v877 = 118;
  sub_195E43C(&v1330, &v878, &v875);
  sub_3608D0(&v873, "FR");
  sub_3608D0(&v870, "FRA");
  v872 = 122;
  sub_195E43C(&v1331, &v873, &v870);
  sub_3608D0(&v868, "FO");
  sub_3608D0(&v865, "FRO");
  v867 = 119;
  sub_195E43C(&v1332, &v868, &v865);
  sub_3608D0(&v863, "FM");
  sub_3608D0(&v860, "FSM");
  v862 = 166;
  sub_195E43C(&v1333, &v863, &v860);
  sub_3608D0(&v858, "GA");
  sub_3608D0(&v855, "GAB");
  v857 = 126;
  sub_195E43C(&v1334, &v858, &v855);
  sub_3608D0(&v853, "GB");
  sub_3608D0(&v850, "GBR");
  v852 = 225;
  sub_195E43C(&v1335, &v853, &v850);
  sub_3608D0(&v848, "GE");
  sub_3608D0(&v845, "GEO");
  v847 = 128;
  sub_195E43C(&v1336, &v848, &v845);
  sub_3608D0(&v843, "GG");
  sub_3608D0(&v840, "GGY");
  v842 = 256;
  sub_195E43C(&v1337, &v843, &v840);
  sub_3608D0(&v838, "GH");
  sub_3608D0(&v835, "GHA");
  v837 = 66;
  sub_195E43C(&v1338, &v838, &v835);
  sub_3608D0(&v833, "GI");
  sub_3608D0(&v830, "GIB");
  v832 = 67;
  sub_195E43C(&v1339, &v833, &v830);
  sub_3608D0(&v828, "GN");
  sub_3608D0(&v825, "GIN");
  v827 = 135;
  sub_195E43C(&v1340, &v828, &v825);
  sub_3608D0(&v823, "GP");
  sub_3608D0(&v820, "GLP");
  v822 = 133;
  sub_195E43C(&v1341, &v823, &v820);
  sub_3608D0(&v818, "GM");
  sub_3608D0(&v815, "GMB");
  v817 = 127;
  sub_195E43C(&v1342, &v818, &v815);
  sub_3608D0(&v813, "GW");
  sub_3608D0(&v810, "GNB");
  v812 = 68;
  sub_195E43C(&v1343, &v813, &v810);
  sub_3608D0(&v808, "GQ");
  sub_3608D0(&v805, "GNQ");
  v807 = 115;
  sub_195E43C(&v1344, &v808, &v805);
  sub_3608D0(&v803, "GR");
  sub_3608D0(&v800, "GRC");
  v802 = 130;
  sub_195E43C(&v1345, &v803, &v800);
  sub_3608D0(&v798, "GD");
  sub_3608D0(&v795, "GRD");
  v797 = 132;
  sub_195E43C(&v1346, &v798, &v795);
  sub_3608D0(&v793, "GL");
  sub_3608D0(&v790, "GRL");
  v792 = 131;
  sub_195E43C(&v1347, &v793, &v790);
  sub_3608D0(&v788, "GT");
  sub_3608D0(&v785, "GTM");
  v787 = 32;
  sub_195E43C(&v1348, &v788, &v785);
  sub_3608D0(&v783, "GF");
  sub_3608D0(&v780, "GUF");
  v782 = 123;
  sub_195E43C(&v1349, &v783, &v780);
  sub_3608D0(&v778, "GU");
  sub_3608D0(&v775, "GUM");
  v777 = 134;
  sub_195E43C(&v1350, &v778, &v775);
  sub_3608D0(&v773, "GY");
  sub_3608D0(&v770, "GUY");
  v772 = 136;
  sub_195E43C(&v1351, &v773, &v770);
  sub_3608D0(&v768, "HK");
  sub_3608D0(&v765, "HKG");
  v767 = 5;
  sub_195E43C(&v1352, &v768, &v765);
  sub_3608D0(&v763, "HM");
  sub_3608D0(&v760, "HMD");
  v762 = 240;
  sub_195E43C(&v1353, &v763, &v760);
  sub_3608D0(&v758, "HN");
  sub_3608D0(&v755, "HND");
  v757 = 14;
  sub_195E43C(&v1354, &v758, &v755);
  sub_3608D0(&v753, "HR");
  sub_3608D0(&v750, "HRV");
  v752 = 108;
  sub_195E43C(&v1355, &v753, &v750);
  sub_3608D0(&v748, "HT");
  sub_3608D0(&v745, "HTI");
  v747 = 137;
  sub_195E43C(&v1356, &v748, &v745);
  sub_3608D0(&v743, "HU");
  sub_3608D0(&v740, "HUN");
  v742 = 138;
  sub_195E43C(&v1357, &v743, &v740);
  sub_3608D0(&v738, "ID");
  sub_3608D0(&v735, "IDN");
  v737 = 69;
  sub_195E43C(&v1358, &v738, &v735);
  sub_3608D0(&v733, "IM");
  sub_3608D0(&v730, "IMN");
  v732 = 255;
  sub_195E43C(&v1359, &v733, &v730);
  sub_3608D0(&v728, "IN");
  sub_3608D0(&v725, "IND");
  v727 = 140;
  sub_195E43C(&v1360, &v728, &v725);
  sub_3608D0(&v723, "IO");
  sub_3608D0(&v720, "IOT");
  v722 = 48;
  sub_195E43C(&v1361, &v723, &v720);
  sub_3608D0(&v718, "IE");
  sub_3608D0(&v715, "IRL");
  v717 = 143;
  sub_195E43C(&v1362, &v718, &v715);
  sub_3608D0(&v713, "IR");
  sub_3608D0(&v710, "IRN");
  v712 = 141;
  sub_195E43C(&v1363, &v713, &v710);
  sub_3608D0(&v708, "IQ");
  sub_3608D0(&v705, "IRQ");
  v707 = 142;
  sub_195E43C(&v1364, &v708, &v705);
  sub_3608D0(&v703, "IS");
  sub_3608D0(&v700, "ISL");
  v702 = 139;
  sub_195E43C(&v1365, &v703, &v700);
  sub_3608D0(&v698, "IL");
  sub_3608D0(&v695, "ISR");
  v697 = 75;
  sub_195E43C(&v1366, &v698, &v695);
  sub_3608D0(&v693, "IT");
  sub_3608D0(&v690, "ITA");
  v692 = 144;
  sub_195E43C(&v1367, &v693, &v690);
  sub_3608D0(&v688, "JM");
  sub_3608D0(&v685, "JAM");
  v687 = 15;
  sub_195E43C(&v1368, &v688, &v685);
  sub_3608D0(&v683, "JE");
  sub_3608D0(&v680, "JEY");
  v682 = 254;
  sub_195E43C(&v1369, &v683, &v680);
  sub_3608D0(&v678, "JO");
  sub_3608D0(&v675, "JOR");
  v677 = 33;
  sub_195E43C(&v1370, &v678, &v675);
  sub_3608D0(&v673, "JP");
  sub_3608D0(&v670, "JPN");
  v672 = 10;
  sub_195E43C(&v1371, &v673, &v670);
  sub_3608D0(&v668, "KZ");
  sub_3608D0(&v665, "KAZ");
  v667 = 145;
  sub_195E43C(&v1372, &v668, &v665);
  sub_3608D0(&v663, "KE");
  sub_3608D0(&v660, "KEN");
  v662 = 34;
  sub_195E43C(&v1373, &v663, &v660);
  sub_3608D0(&v658, "KG");
  sub_3608D0(&v655, "KGZ");
  v657 = 149;
  sub_195E43C(&v1374, &v658, &v655);
  sub_3608D0(&v653, "KH");
  sub_3608D0(&v650, "KHM");
  v652 = 97;
  sub_195E43C(&v1375, &v653, &v650);
  sub_3608D0(&v648, "KI");
  sub_3608D0(&v645, "KIR");
  v647 = 146;
  sub_195E43C(&v1376, &v648, &v645);
  sub_3608D0(&v643, "KN");
  sub_3608D0(&v640, "KNA");
  v642 = 193;
  sub_195E43C(&v1377, &v643, &v640);
  sub_3608D0(&v638, "KR");
  sub_3608D0(&v635, "KOR");
  v637 = 148;
  sub_195E43C(&v1378, &v638, &v635);
  sub_3608D0(&v633, "KW");
  sub_3608D0(&v630, "KWT");
  v632 = 16;
  sub_195E43C(&v1379, &v633, &v630);
  sub_3608D0(&v628, "LA");
  sub_3608D0(&v625, "LAO");
  v627 = 150;
  sub_195E43C(&v1380, &v628, &v625);
  sub_3608D0(&v623, "LB");
  sub_3608D0(&v620, "LBN");
  v622 = 152;
  sub_195E43C(&v1381, &v623, &v620);
  sub_3608D0(&v618, "LR");
  sub_3608D0(&v615, "LBR");
  v617 = 153;
  sub_195E43C(&v1382, &v618, &v615);
  sub_3608D0(&v613, "LY");
  sub_3608D0(&v610, "LBY");
  v612 = 154;
  sub_195E43C(&v1383, &v613, &v610);
  sub_3608D0(&v608, "LC");
  sub_3608D0(&v605, "LCA");
  v607 = 194;
  sub_195E43C(&v1384, &v608, &v605);
  sub_3608D0(&v603, "LI");
  sub_3608D0(&v600, "LIE");
  v602 = 70;
  sub_195E43C(&v1385, &v603, &v600);
  sub_3608D0(&v598, "LK");
  sub_3608D0(&v595, "LKA");
  v597 = 207;
  sub_195E43C(&v1386, &v598, &v595);
  sub_3608D0(&v593, "LS");
  sub_3608D0(&v590, "LSO");
  v592 = 49;
  sub_195E43C(&v1387, &v593, &v590);
  sub_3608D0(&v588, "LT");
  sub_3608D0(&v585, "LTU");
  v587 = 155;
  sub_195E43C(&v1388, &v588, &v585);
  sub_3608D0(&v583, "LU");
  sub_3608D0(&v580, "LUX");
  v582 = 156;
  sub_195E43C(&v1389, &v583, &v580);
  sub_3608D0(&v578, "LV");
  sub_3608D0(&v575, "LVA");
  v577 = 151;
  sub_195E43C(&v1390, &v578, &v575);
  sub_3608D0(&v573, "MO");
  sub_3608D0(&v570, "MAC");
  v572 = 157;
  sub_195E43C(&v1391, &v573, &v570);
  sub_3608D0(&v568, "MF");
  sub_3608D0(&v565, "MAF");
  v567 = 236;
  sub_195E43C(&v1392, &v568, &v565);
  sub_3608D0(&v563, "MA");
  sub_3608D0(&v560, "MAR");
  v562 = 171;
  sub_195E43C(&v1393, &v563, &v560);
  sub_3608D0(&v558, "MC");
  sub_3608D0(&v555, "MCO");
  v557 = 71;
  sub_195E43C(&v1394, &v558, &v555);
  sub_3608D0(&v553, "MD");
  sub_3608D0(&v550, "MDA");
  v552 = 167;
  sub_195E43C(&v1395, &v553, &v550);
  sub_3608D0(&v548, "MG");
  sub_3608D0(&v545, "MDG");
  v547 = 159;
  sub_195E43C(&v1396, &v548, &v545);
  sub_3608D0(&v543, "MV");
  sub_3608D0(&v540, "MDV");
  v542 = 50;
  sub_195E43C(&v1397, &v543, &v540);
  sub_3608D0(&v538, "MX");
  sub_3608D0(&v535, "MEX");
  v537 = 165;
  sub_195E43C(&v1398, &v538, &v535);
  sub_3608D0(&v533, "MH");
  sub_3608D0(&v530, "MHL");
  v532 = 51;
  sub_195E43C(&v1399, &v533, &v530);
  sub_3608D0(&v528, "MK");
  sub_3608D0(&v525, "MKD");
  v527 = 158;
  sub_195E43C(&v1400, &v528, &v525);
  sub_3608D0(&v523, "ML");
  sub_3608D0(&v520, "MLI");
  v522 = 17;
  sub_195E43C(&v1401, &v523, &v520);
  sub_3608D0(&v518, "MT");
  sub_3608D0(&v515, "MLT");
  v517 = 162;
  sub_195E43C(&v1402, &v518, &v515);
  sub_3608D0(&v513, "MM");
  sub_3608D0(&v510, "MMR");
  v512 = 173;
  sub_195E43C(&v1403, &v513, &v510);
  sub_3608D0(&v508, "ME");
  sub_3608D0(&v505, "MNE");
  v507 = 169;
  sub_195E43C(&v1404, &v508, &v505);
  sub_3608D0(&v503, "MN");
  sub_3608D0(&v500, "MNG");
  v502 = 168;
  sub_195E43C(&v1405, &v503, &v500);
  sub_3608D0(&v498, "MP");
  sub_3608D0(&v495, "MNP");
  v497 = 179;
  sub_195E43C(&v1406, &v498, &v495);
  sub_3608D0(&v493, "MZ");
  sub_3608D0(&v490, "MOZ");
  v492 = 172;
  sub_195E43C(&v1407, &v493, &v490);
  sub_3608D0(&v488, "MR");
  sub_3608D0(&v485, "MRT");
  v487 = 163;
  sub_195E43C(&v1408, &v488, &v485);
  sub_3608D0(&v483, "MS");
  sub_3608D0(&v480, "MSR");
  v482 = 170;
  sub_195E43C(&v1409, &v483, &v480);
  sub_3608D0(&v478, "MQ");
  sub_3608D0(&v475, "MTQ");
  v477 = 52;
  sub_195E43C(&v1410, &v478, &v475);
  sub_3608D0(&v473, "MU");
  sub_3608D0(&v470, "MUS");
  v472 = 164;
  sub_195E43C(&v1411, &v473, &v470);
  sub_3608D0(&v468, "MW");
  sub_3608D0(&v465, "MWI");
  v467 = 160;
  sub_195E43C(&v1412, &v468, &v465);
  sub_3608D0(&v463, "MY");
  sub_3608D0(&v460, "MYS");
  v462 = 161;
  sub_195E43C(&v1413, &v463, &v460);
  sub_3608D0(&v458, "YT");
  sub_3608D0(&v455, "MYT");
  v457 = 53;
  sub_195E43C(&v1414, &v458, &v455);
  sub_3608D0(&v453, "NA");
  sub_3608D0(&v450, "NAM");
  v452 = 174;
  sub_195E43C(&v1415, &v453, &v450);
  sub_3608D0(&v448, "NC");
  sub_3608D0(&v445, "NCL");
  v447 = 177;
  sub_195E43C(&v1416, &v448, &v445);
  sub_3608D0(&v443, "NE");
  sub_3608D0(&v440, "NER");
  v442 = 35;
  sub_195E43C(&v1417, &v443, &v440);
  sub_3608D0(&v438, "NF");
  sub_3608D0(&v435, "NFK");
  v437 = 23;
  sub_195E43C(&v1418, &v438, &v435);
  sub_3608D0(&v433, "NG");
  sub_3608D0(&v430, "NGA");
  v432 = 6;
  sub_195E43C(&v1419, &v433, &v430);
  sub_3608D0(&v428, "NI");
  sub_3608D0(&v425, "NIC");
  v427 = 18;
  sub_195E43C(&v1420, &v428, &v425);
  sub_3608D0(&v423, "NU");
  sub_3608D0(&v420, "NIU");
  v422 = 178;
  sub_195E43C(&v1421, &v423, &v420);
  sub_3608D0(&v418, "NL");
  sub_3608D0(&v415, "NLD");
  v417 = 176;
  sub_195E43C(&v1422, &v418, &v415);
  sub_3608D0(&v413, "NO");
  sub_3608D0(&v410, "NOR");
  v412 = 180;
  sub_195E43C(&v1423, &v413, &v410);
  sub_3608D0(&v408, "NP");
  sub_3608D0(&v405, "NPL");
  v407 = 175;
  sub_195E43C(&v1424, &v408, &v405);
  sub_3608D0(&v403, "NR");
  sub_3608D0(&v400, "NRU");
  v402 = 54;
  sub_195E43C(&v1425, &v403, &v400);
  sub_3608D0(&v398, "NZ");
  sub_3608D0(&v395, "NZL");
  v397 = 24;
  sub_195E43C(&v1426, &v398, &v395);
  sub_3608D0(&v393, "OM");
  sub_3608D0(&v390, "OMN");
  v392 = 7;
  sub_195E43C(&v1427, &v393, &v390);
  sub_3608D0(&v388, "PA");
  sub_3608D0(&v385, "PAN");
  v387 = 19;
  sub_195E43C(&v1428, &v388, &v385);
  sub_3608D0(&v383, "PE");
  sub_3608D0(&v380, "PER");
  v382 = 184;
  sub_195E43C(&v1429, &v383, &v380);
  sub_3608D0(&v378, "PF");
  sub_3608D0(&v375, "PYF");
  v377 = 124;
  sub_195E43C(&v1430, &v378, &v375);
  sub_3608D0(&v373, "PG");
  sub_3608D0(&v370, "PNG");
  v372 = 56;
  sub_195E43C(&v1431, &v373, &v370);
  sub_3608D0(&v368, "PH");
  sub_3608D0(&v365, "PHL");
  v367 = 185;
  sub_195E43C(&v1432, &v368, &v365);
  sub_3608D0(&v363, "PK");
  sub_3608D0(&v360, "PAK");
  v362 = 181;
  sub_195E43C(&v1433, &v363, &v360);
  sub_3608D0(&v358, "PL");
  sub_3608D0(&v355, "POL");
  v357 = 186;
  sub_195E43C(&v1434, &v358, &v355);
  sub_3608D0(&v353, "PM");
  sub_3608D0(&v350, "SPM");
  v352 = 241;
  sub_195E43C(&v1435, &v353, &v350);
  sub_3608D0(&v348, "PN");
  sub_3608D0(&v345, "PCN");
  v347 = 55;
  sub_195E43C(&v1436, &v348, &v345);
  sub_3608D0(&v343, "PR");
  sub_3608D0(&v340, "PRI");
  v342 = 253;
  sub_195E43C(&v1437, &v343, &v340);
  sub_3608D0(&v338, "PS");
  sub_3608D0(&v335, "PSE");
  v337 = 36;
  sub_195E43C(&v1438, &v338, &v335);
  sub_3608D0(&v333, "PT");
  sub_3608D0(&v330, "PRT");
  v332 = 187;
  sub_195E43C(&v1439, &v333, &v330);
  sub_3608D0(&v328, "PW");
  sub_3608D0(&v325, "PLW");
  v327 = 182;
  sub_195E43C(&v1440, &v328, &v325);
  sub_3608D0(&v323, "PY");
  sub_3608D0(&v320, "PRY");
  v322 = 183;
  sub_195E43C(&v1441, &v323, &v320);
  sub_3608D0(&v318, "QA");
  sub_3608D0(&v315, "QAT");
  v317 = 8;
  sub_195E43C(&v1442, &v318, &v315);
  sub_3608D0(&v313, "RE");
  sub_3608D0(&v310, "REU");
  v312 = 188;
  sub_195E43C(&v1443, &v313, &v310);
  sub_3608D0(&v308, "RO");
  sub_3608D0(&v305, "ROU");
  v307 = 189;
  sub_195E43C(&v1444, &v308, &v305);
  sub_3608D0(&v303, "RS");
  sub_3608D0(&v300, "SRB");
  v302 = 199;
  sub_195E43C(&v1445, &v303, &v300);
  sub_3608D0(&v298, "RU");
  sub_3608D0(&v295, "RUS");
  v297 = 190;
  sub_195E43C(&v1446, &v298, &v295);
  sub_3608D0(&v293, "RW");
  sub_3608D0(&v290, "RWA");
  v292 = 191;
  sub_195E43C(&v1447, &v293, &v290);
  sub_3608D0(&v288, "SA");
  sub_3608D0(&v285, "SAU");
  v287 = 20;
  sub_195E43C(&v1448, &v288, &v285);
  sub_3608D0(&v283, "SB");
  sub_3608D0(&v280, "SLB");
  v282 = 58;
  sub_195E43C(&v1449, &v283, &v280);
  sub_3608D0(&v278, "SC");
  sub_3608D0(&v275, "SYC");
  v277 = 200;
  sub_195E43C(&v1450, &v278, &v275);
  sub_3608D0(&v273, "SD");
  sub_3608D0(&v270, "SDN");
  v272 = 208;
  sub_195E43C(&v1451, &v273, &v270);
  sub_3608D0(&v268, "SE");
  sub_3608D0(&v265, "SWE");
  v267 = 210;
  sub_195E43C(&v1452, &v268, &v265);
  sub_3608D0(&v263, "SG");
  sub_3608D0(&v260, "SGP");
  v262 = 202;
  sub_195E43C(&v1453, &v263, &v260);
  sub_3608D0(&v258, "SH");
  sub_3608D0(&v255, "SHN");
  v257 = 192;
  sub_195E43C(&v1454, &v258, &v255);
  sub_3608D0(&v253, "SI");
  sub_3608D0(&v250, "SVN");
  v252 = 204;
  sub_195E43C(&v1455, &v253, &v250);
  sub_3608D0(&v248, "SJ");
  sub_3608D0(&v245, "SJM");
  v247 = 72;
  sub_195E43C(&v1456, &v248, &v245);
  sub_3608D0(&v243, "SK");
  sub_3608D0(&v240, "SVK");
  v242 = 203;
  sub_195E43C(&v1457, &v243, &v240);
  sub_3608D0(&v238, "SL");
  sub_3608D0(&v235, "SLE");
  v237 = 201;
  sub_195E43C(&v1458, &v238, &v235);
  sub_3608D0(&v233, "SM");
  sub_3608D0(&v230, "SMR");
  v232 = 197;
  sub_195E43C(&v1459, &v233, &v230);
  sub_3608D0(&v228, "SN");
  sub_3608D0(&v225, "SEN");
  v227 = 37;
  sub_195E43C(&v1460, &v228, &v225);
  sub_3608D0(&v223, "SO");
  sub_3608D0(&v220, "SOM");
  v222 = 205;
  sub_195E43C(&v1461, &v223, &v220);
  sub_3608D0(&v218, "SR");
  sub_3608D0(&v215, "SUR");
  v217 = 209;
  sub_195E43C(&v1462, &v218, &v215);
  sub_3608D0(&v213, "SS");
  sub_3608D0(&v210, "SSD");
  v212 = 243;
  sub_195E43C(&v1463, &v213, &v210);
  sub_3608D0(&v208, "ST");
  sub_3608D0(&v205, "STP");
  v207 = 198;
  sub_195E43C(&v1464, &v208, &v205);
  sub_3608D0(&v203, "SV");
  sub_3608D0(&v200, "SLV");
  v202 = 21;
  sub_195E43C(&v1465, &v203, &v200);
  sub_3608D0(&v198, "SX");
  sub_3608D0(&v195, "SXM");
  v197 = 234;
  sub_195E43C(&v1466, &v198, &v195);
  sub_3608D0(&v193, "SY");
  sub_3608D0(&v190, "SYR");
  v192 = 212;
  sub_195E43C(&v1467, &v193, &v190);
  sub_3608D0(&v188, "SZ");
  sub_3608D0(&v185, "SWZ");
  v187 = 59;
  sub_195E43C(&v1468, &v188, &v185);
  sub_3608D0(&v183, "TC");
  sub_3608D0(&v180, "TCA");
  v182 = 222;
  sub_195E43C(&v1469, &v183, &v180);
  sub_3608D0(&v178, "TD");
  sub_3608D0(&v175, "TCD");
  v177 = 101;
  sub_195E43C(&v1470, &v178, &v175);
  sub_3608D0(&v173, "TF");
  sub_3608D0(&v170, "ATF");
  v172 = 125;
  sub_195E43C(&v1471, &v173, &v170);
  sub_3608D0(&v168, "TG");
  sub_3608D0(&v165, "TGO");
  v167 = 216;
  sub_195E43C(&v1472, &v168, &v165);
  sub_3608D0(&v163, "TH");
  sub_3608D0(&v160, "THA");
  v162 = 214;
  sub_195E43C(&v1473, &v163, &v160);
  sub_3608D0(&v158, "TJ");
  sub_3608D0(&v155, "TJK");
  v157 = 213;
  sub_195E43C(&v1474, &v158, &v155);
  sub_3608D0(&v153, "TK");
  sub_3608D0(&v150, "TKL");
  v152 = 244;
  sub_195E43C(&v1475, &v153, &v150);
  sub_3608D0(&v148, "TL");
  sub_3608D0(&v145, "TLS");
  v147 = 215;
  sub_195E43C(&v1476, &v148, &v145);
  sub_3608D0(&v143, "TM");
  sub_3608D0(&v140, "TKM");
  v142 = 221;
  sub_195E43C(&v1477, &v143, &v140);
  sub_3608D0(&v138, "TN");
  sub_3608D0(&v135, "TUN");
  v137 = 219;
  sub_195E43C(&v1478, &v138, &v135);
  sub_3608D0(&v133, "TO");
  sub_3608D0(&v130, "TON");
  v132 = 217;
  sub_195E43C(&v1479, &v133, &v130);
  sub_3608D0(&v128, "TR");
  sub_3608D0(&v125, "TUR");
  v127 = 220;
  sub_195E43C(&v1480, &v128, &v125);
  sub_3608D0(&v123, "TT");
  sub_3608D0(&v120, "TTO");
  v122 = 218;
  sub_195E43C(&v1481, &v123, &v120);
  sub_3608D0(&v118, "TV");
  sub_3608D0(&v115, "TUV");
  v117 = 60;
  sub_195E43C(&v1482, &v118, &v115);
  sub_3608D0(&v113, "TZ");
  sub_3608D0(&v110, "TZA");
  v112 = 38;
  sub_195E43C(&v1483, &v113, &v110);
  sub_3608D0(&v108, "UA");
  sub_3608D0(&v105, "UKR");
  v107 = 224;
  sub_195E43C(&v1484, &v108, &v105);
  sub_3608D0(&v103, "UG");
  sub_3608D0(&v100, "UGA");
  v102 = 223;
  sub_195E43C(&v1485, &v103, &v100);
  sub_3608D0(&v98, "UM");
  sub_3608D0(&v95, "UMI");
  v97 = 251;
  sub_195E43C(&v1486, &v98, &v95);
  sub_3608D0(&v93, "US");
  sub_3608D0(&v90, "USA");
  v92 = 226;
  sub_195E43C(&v1487, &v93, &v90);
  sub_3608D0(&v88, "UY");
  sub_3608D0(&v85, "URY");
  v87 = 1;
  sub_195E43C(&v1488, &v88, &v85);
  sub_3608D0(&v83, "UZ");
  sub_3608D0(&v80, "UZB");
  v82 = 227;
  sub_195E43C(&v1489, &v83, &v80);
  sub_3608D0(&v78, "VA");
  sub_3608D0(&v75, "VAT");
  v77 = 74;
  sub_195E43C(&v1490, &v78, &v75);
  sub_3608D0(&v73, "VC");
  sub_3608D0(&v70, "VCT");
  v72 = 195;
  sub_195E43C(&v1491, &v73, &v70);
  sub_3608D0(&v68, "VE");
  sub_3608D0(&v65, "VEN");
  v67 = 39;
  sub_195E43C(&v1492, &v68, &v65);
  sub_3608D0(&v63, "VG");
  sub_3608D0(&v60, "VGB");
  v62 = 229;
  sub_195E43C(&v1493, &v63, &v60);
  sub_3608D0(&v58, "VI");
  sub_3608D0(&v55, "VIR");
  v57 = 242;
  sub_195E43C(&v1494, &v58, &v55);
  sub_3608D0(&v53, "VN");
  sub_3608D0(&v50, "VNM");
  v52 = 9;
  sub_195E43C(&v1495, &v53, &v50);
  sub_3608D0(&v48, "VU");
  sub_3608D0(&v45, "VUT");
  v47 = 228;
  sub_195E43C(&v1496, &v48, &v45);
  sub_3608D0(&v43, "WF");
  sub_3608D0(&v40, "WLF");
  v42 = 230;
  sub_195E43C(&v1497, &v43, &v40);
  sub_3608D0(&v38, "WS");
  sub_3608D0(&v35, "WSM");
  v37 = 196;
  sub_195E43C(&v1498, &v38, &v35);
  sub_3608D0(&v33, "YE");
  sub_3608D0(&v30, "YEM");
  v32 = 231;
  sub_195E43C(&v1499, &v33, &v30);
  sub_3608D0(&v28, "YT");
  sub_3608D0(&v25, "MYT");
  v27 = 53;
  sub_195E43C(&v1500, &v28, &v25);
  sub_3608D0(&v23, "ZA");
  sub_3608D0(v20, "ZAF");
  v22 = 62;
  sub_195E43C(&v1501, &v23, v20);
  sub_3608D0(v18, "ZM");
  sub_3608D0(v15, "ZMB");
  v17 = 232;
  sub_195E43C(&v1502, v18, v15);
  sub_3608D0(v13, "ZW");
  sub_3608D0(__p, "ZWE");
  v12 = 233;
  sub_195E43C(&v1503, v13, __p);
  sub_1966280(qword_27ED720, v1255, 249);
  v8 = &v1504;
  v9 = -13944;
  do
  {
    if (*v8 < 0)
    {
      operator delete(*(v8 - 23));
    }

    if (*(v8 - 24) < 0)
    {
      operator delete(*(v8 - 47));
    }

    v8 -= 56;
    v9 += 56;
  }

  while (v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v79 < 0)
  {
    operator delete(v78);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v84 < 0)
  {
    operator delete(v83);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v89 < 0)
  {
    operator delete(v88);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v99 < 0)
  {
    operator delete(v98);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v104 < 0)
  {
    operator delete(v103);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v114 < 0)
  {
    operator delete(v113);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v119 < 0)
  {
    operator delete(v118);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v124 < 0)
  {
    operator delete(v123);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v129 < 0)
  {
    operator delete(v128);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v134 < 0)
  {
    operator delete(v133);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v139 < 0)
  {
    operator delete(v138);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v144 < 0)
  {
    operator delete(v143);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v149 < 0)
  {
    operator delete(v148);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v154 < 0)
  {
    operator delete(v153);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v159 < 0)
  {
    operator delete(v158);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v164 < 0)
  {
    operator delete(v163);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v169 < 0)
  {
    operator delete(v168);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v174 < 0)
  {
    operator delete(v173);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v179 < 0)
  {
    operator delete(v178);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v184 < 0)
  {
    operator delete(v183);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v189 < 0)
  {
    operator delete(v188);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v194 < 0)
  {
    operator delete(v193);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v199 < 0)
  {
    operator delete(v198);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v204 < 0)
  {
    operator delete(v203);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v209 < 0)
  {
    operator delete(v208);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v214 < 0)
  {
    operator delete(v213);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v219 < 0)
  {
    operator delete(v218);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v224 < 0)
  {
    operator delete(v223);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v229 < 0)
  {
    operator delete(v228);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v234 < 0)
  {
    operator delete(v233);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v239 < 0)
  {
    operator delete(v238);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v244 < 0)
  {
    operator delete(v243);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v249 < 0)
  {
    operator delete(v248);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v254 < 0)
  {
    operator delete(v253);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v259 < 0)
  {
    operator delete(v258);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v264 < 0)
  {
    operator delete(v263);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v269 < 0)
  {
    operator delete(v268);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v274 < 0)
  {
    operator delete(v273);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v279 < 0)
  {
    operator delete(v278);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v284 < 0)
  {
    operator delete(v283);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v289 < 0)
  {
    operator delete(v288);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v294 < 0)
  {
    operator delete(v293);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v299 < 0)
  {
    operator delete(v298);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v304 < 0)
  {
    operator delete(v303);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v309 < 0)
  {
    operator delete(v308);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v314 < 0)
  {
    operator delete(v313);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v319 < 0)
  {
    operator delete(v318);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v324 < 0)
  {
    operator delete(v323);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v329 < 0)
  {
    operator delete(v328);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v334 < 0)
  {
    operator delete(v333);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v339 < 0)
  {
    operator delete(v338);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v344 < 0)
  {
    operator delete(v343);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v349 < 0)
  {
    operator delete(v348);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v354 < 0)
  {
    operator delete(v353);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v359 < 0)
  {
    operator delete(v358);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v364 < 0)
  {
    operator delete(v363);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v369 < 0)
  {
    operator delete(v368);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v374 < 0)
  {
    operator delete(v373);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v379 < 0)
  {
    operator delete(v378);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v384 < 0)
  {
    operator delete(v383);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v389 < 0)
  {
    operator delete(v388);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v394 < 0)
  {
    operator delete(v393);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v399 < 0)
  {
    operator delete(v398);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v404 < 0)
  {
    operator delete(v403);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v409 < 0)
  {
    operator delete(v408);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v414 < 0)
  {
    operator delete(v413);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v419 < 0)
  {
    operator delete(v418);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v424 < 0)
  {
    operator delete(v423);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v429 < 0)
  {
    operator delete(v428);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v434 < 0)
  {
    operator delete(v433);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v439 < 0)
  {
    operator delete(v438);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v444 < 0)
  {
    operator delete(v443);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v449 < 0)
  {
    operator delete(v448);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v454 < 0)
  {
    operator delete(v453);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v459 < 0)
  {
    operator delete(v458);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v464 < 0)
  {
    operator delete(v463);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v469 < 0)
  {
    operator delete(v468);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v474 < 0)
  {
    operator delete(v473);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v479 < 0)
  {
    operator delete(v478);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v484 < 0)
  {
    operator delete(v483);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v489 < 0)
  {
    operator delete(v488);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v494 < 0)
  {
    operator delete(v493);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v499 < 0)
  {
    operator delete(v498);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v504 < 0)
  {
    operator delete(v503);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v509 < 0)
  {
    operator delete(v508);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v514 < 0)
  {
    operator delete(v513);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v519 < 0)
  {
    operator delete(v518);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v524 < 0)
  {
    operator delete(v523);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v529 < 0)
  {
    operator delete(v528);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v534 < 0)
  {
    operator delete(v533);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v539 < 0)
  {
    operator delete(v538);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v544 < 0)
  {
    operator delete(v543);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v549 < 0)
  {
    operator delete(v548);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v554 < 0)
  {
    operator delete(v553);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v559 < 0)
  {
    operator delete(v558);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v564 < 0)
  {
    operator delete(v563);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v569 < 0)
  {
    operator delete(v568);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v574 < 0)
  {
    operator delete(v573);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v579 < 0)
  {
    operator delete(v578);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v584 < 0)
  {
    operator delete(v583);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v589 < 0)
  {
    operator delete(v588);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v594 < 0)
  {
    operator delete(v593);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v599 < 0)
  {
    operator delete(v598);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v604 < 0)
  {
    operator delete(v603);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v609 < 0)
  {
    operator delete(v608);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v614 < 0)
  {
    operator delete(v613);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v619 < 0)
  {
    operator delete(v618);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v624 < 0)
  {
    operator delete(v623);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v629 < 0)
  {
    operator delete(v628);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v634 < 0)
  {
    operator delete(v633);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v639 < 0)
  {
    operator delete(v638);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v644 < 0)
  {
    operator delete(v643);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v649 < 0)
  {
    operator delete(v648);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v654 < 0)
  {
    operator delete(v653);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v659 < 0)
  {
    operator delete(v658);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v664 < 0)
  {
    operator delete(v663);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v669 < 0)
  {
    operator delete(v668);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v674 < 0)
  {
    operator delete(v673);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v679 < 0)
  {
    operator delete(v678);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v684 < 0)
  {
    operator delete(v683);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v689 < 0)
  {
    operator delete(v688);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v694 < 0)
  {
    operator delete(v693);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v699 < 0)
  {
    operator delete(v698);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v704 < 0)
  {
    operator delete(v703);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v709 < 0)
  {
    operator delete(v708);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v714 < 0)
  {
    operator delete(v713);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v719 < 0)
  {
    operator delete(v718);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v724 < 0)
  {
    operator delete(v723);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v729 < 0)
  {
    operator delete(v728);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v734 < 0)
  {
    operator delete(v733);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v739 < 0)
  {
    operator delete(v738);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v744 < 0)
  {
    operator delete(v743);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v749 < 0)
  {
    operator delete(v748);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v754 < 0)
  {
    operator delete(v753);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v759 < 0)
  {
    operator delete(v758);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v764 < 0)
  {
    operator delete(v763);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v769 < 0)
  {
    operator delete(v768);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v774 < 0)
  {
    operator delete(v773);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v779 < 0)
  {
    operator delete(v778);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v784 < 0)
  {
    operator delete(v783);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v789 < 0)
  {
    operator delete(v788);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v794 < 0)
  {
    operator delete(v793);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v799 < 0)
  {
    operator delete(v798);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v804 < 0)
  {
    operator delete(v803);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v809 < 0)
  {
    operator delete(v808);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v814 < 0)
  {
    operator delete(v813);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v819 < 0)
  {
    operator delete(v818);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v824 < 0)
  {
    operator delete(v823);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v829 < 0)
  {
    operator delete(v828);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v834 < 0)
  {
    operator delete(v833);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v839 < 0)
  {
    operator delete(v838);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v844 < 0)
  {
    operator delete(v843);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v849 < 0)
  {
    operator delete(v848);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v854 < 0)
  {
    operator delete(v853);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v859 < 0)
  {
    operator delete(v858);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v864 < 0)
  {
    operator delete(v863);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v869 < 0)
  {
    operator delete(v868);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v874 < 0)
  {
    operator delete(v873);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v879 < 0)
  {
    operator delete(v878);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v884 < 0)
  {
    operator delete(v883);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v889 < 0)
  {
    operator delete(v888);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v894 < 0)
  {
    operator delete(v893);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v899 < 0)
  {
    operator delete(v898);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v904 < 0)
  {
    operator delete(v903);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v909 < 0)
  {
    operator delete(v908);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v914 < 0)
  {
    operator delete(v913);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v919 < 0)
  {
    operator delete(v918);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v924 < 0)
  {
    operator delete(v923);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v929 < 0)
  {
    operator delete(v928);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v934 < 0)
  {
    operator delete(v933);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v939 < 0)
  {
    operator delete(v938);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v944 < 0)
  {
    operator delete(v943);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v949 < 0)
  {
    operator delete(v948);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v954 < 0)
  {
    operator delete(v953);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v959 < 0)
  {
    operator delete(v958);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v964 < 0)
  {
    operator delete(v963);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v969 < 0)
  {
    operator delete(v968);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v974 < 0)
  {
    operator delete(v973);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v979 < 0)
  {
    operator delete(v978);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v984 < 0)
  {
    operator delete(v983);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v989 < 0)
  {
    operator delete(v988);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v994 < 0)
  {
    operator delete(v993);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v999 < 0)
  {
    operator delete(v998);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1004 < 0)
  {
    operator delete(v1003);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1009 < 0)
  {
    operator delete(v1008);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1014 < 0)
  {
    operator delete(v1013);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1019 < 0)
  {
    operator delete(v1018);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1024 < 0)
  {
    operator delete(v1023);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1029 < 0)
  {
    operator delete(v1028);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1034 < 0)
  {
    operator delete(v1033);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1039 < 0)
  {
    operator delete(v1038);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1044 < 0)
  {
    operator delete(v1043);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1049 < 0)
  {
    operator delete(v1048);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1054 < 0)
  {
    operator delete(v1053);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1059 < 0)
  {
    operator delete(v1058);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1064 < 0)
  {
    operator delete(v1063);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1069 < 0)
  {
    operator delete(v1068);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1074 < 0)
  {
    operator delete(v1073);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1079 < 0)
  {
    operator delete(v1078);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1084 < 0)
  {
    operator delete(v1083);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1089 < 0)
  {
    operator delete(v1088);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1094 < 0)
  {
    operator delete(v1093);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1099 < 0)
  {
    operator delete(v1098);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1104 < 0)
  {
    operator delete(v1103);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1109 < 0)
  {
    operator delete(v1108);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1114 < 0)
  {
    operator delete(v1113);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1119 < 0)
  {
    operator delete(v1118);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1124 < 0)
  {
    operator delete(v1123);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1129 < 0)
  {
    operator delete(v1128);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1134 < 0)
  {
    operator delete(v1133);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1139 < 0)
  {
    operator delete(v1138);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1144 < 0)
  {
    operator delete(v1143);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1149 < 0)
  {
    operator delete(v1148);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1154 < 0)
  {
    operator delete(v1153);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1159 < 0)
  {
    operator delete(v1158);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1164 < 0)
  {
    operator delete(v1163);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1169 < 0)
  {
    operator delete(v1168);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1174 < 0)
  {
    operator delete(v1173);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1179 < 0)
  {
    operator delete(v1178);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1184 < 0)
  {
    operator delete(v1183);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1189 < 0)
  {
    operator delete(v1188);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1194 < 0)
  {
    operator delete(v1193);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1199 < 0)
  {
    operator delete(v1198);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1204 < 0)
  {
    operator delete(v1203);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1209 < 0)
  {
    operator delete(v1208);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1214 < 0)
  {
    operator delete(v1213);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1219 < 0)
  {
    operator delete(v1218);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1224 < 0)
  {
    operator delete(v1223);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1229 < 0)
  {
    operator delete(v1228);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1234 < 0)
  {
    operator delete(v1233);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1239 < 0)
  {
    operator delete(v1238);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1244 < 0)
  {
    operator delete(v1243);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }

  if (v1249 < 0)
  {
    operator delete(v1248);
  }

  if (v1251 < 0)
  {
    operator delete(v1250);
  }

  if (v1254 < 0)
  {
    operator delete(v1253);
  }
}

void sub_1A86238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  v80 = -13944;
  v81 = v74;
  do
  {
    v81 = sub_195CE20(v81) - 56;
    v80 += 56;
  }

  while (v80);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(*(v75 + 32));
  }

  if (a54 < 0)
  {
    operator delete(*(v75 + 56));
  }

  if (a61 < 0)
  {
    operator delete(*(v75 + 88));
  }

  if (a65 < 0)
  {
    operator delete(*(v75 + 112));
  }

  if (a66 < 0)
  {
    operator delete(*(v75 + 144));
  }

  if (a67 < 0)
  {
    operator delete(*(v75 + 168));
  }

  if (a68 < 0)
  {
    operator delete(*(v75 + 200));
  }

  if (a69 < 0)
  {
    operator delete(*(v75 + 224));
  }

  if (a70 < 0)
  {
    operator delete(*(v75 + 256));
  }

  if (a71 < 0)
  {
    operator delete(*(v75 + 280));
  }

  if (a72 < 0)
  {
    operator delete(*(v75 + 312));
  }

  if (a73 < 0)
  {
    operator delete(*(v75 + 336));
  }

  if (a74 < 0)
  {
    operator delete(*(v75 + 368));
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(*(v75 + 392));
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(*(v75 + 424));
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(*(v75 + 448));
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(*(v75 + 480));
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(*(v75 + 504));
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(*(v75 + 536));
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(*(v75 + 560));
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(*(v75 + 592));
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(*(v75 + 616));
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(*(v75 + 648));
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(*(v75 + 672));
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(*(v75 + 704));
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(*(v75 + 728));
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(*(v75 + 760));
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(*(v75 + 784));
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(*(v75 + 816));
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(*(v75 + 840));
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(*(v75 + 872));
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(*(v75 + 896));
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(*(v75 + 928));
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(*(v75 + 952));
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(*(v75 + 984));
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(*(v75 + 1008));
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(*(v75 + 1040));
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(*(v75 + 1064));
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(*(v75 + 1096));
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(*(v75 + 1120));
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(*(v75 + 1152));
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(*(v75 + 1176));
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(*(v75 + 1208));
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(*(v75 + 1232));
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(*(v75 + 1264));
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(*(v75 + 1288));
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(*(v75 + 1320));
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(*(v75 + 1344));
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(*(v75 + 1376));
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(*(v75 + 1400));
  }

  if (SLOBYTE(STACK[0x627]) < 0)
  {
    operator delete(*(v75 + 1432));
  }

  if (SLOBYTE(STACK[0x63F]) < 0)
  {
    operator delete(*(v75 + 1456));
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(*(v75 + 1488));
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(*(v75 + 1512));
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(*(v75 + 1544));
  }

  if (SLOBYTE(STACK[0x6AF]) < 0)
  {
    operator delete(*(v75 + 1568));
  }

  if (SLOBYTE(STACK[0x6CF]) < 0)
  {
    operator delete(*(v75 + 1600));
  }

  if (SLOBYTE(STACK[0x6E7]) < 0)
  {
    operator delete(*(v75 + 1624));
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(*(v75 + 1656));
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(*(v75 + 1680));
  }

  if (SLOBYTE(STACK[0x73F]) < 0)
  {
    operator delete(*(v75 + 1712));
  }

  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(*(v75 + 1736));
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(*(v75 + 1768));
  }

  if (SLOBYTE(STACK[0x78F]) < 0)
  {
    operator delete(*(v75 + 1792));
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(*(v75 + 1824));
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(*(v75 + 1848));
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(*(v75 + 1880));
  }

  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(*(v75 + 1904));
  }

  if (SLOBYTE(STACK[0x81F]) < 0)
  {
    operator delete(*(v75 + 1936));
  }

  if (SLOBYTE(STACK[0x837]) < 0)
  {
    operator delete(*(v75 + 1960));
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(*(v75 + 1992));
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(*(v75 + 2016));
  }

  if (SLOBYTE(STACK[0x88F]) < 0)
  {
    operator delete(*(v75 + 2048));
  }

  if (SLOBYTE(STACK[0x8A7]) < 0)
  {
    operator delete(*(v75 + 2072));
  }

  if (SLOBYTE(STACK[0x8C7]) < 0)
  {
    operator delete(*(v75 + 2104));
  }

  if (SLOBYTE(STACK[0x8DF]) < 0)
  {
    operator delete(*(v75 + 2128));
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(*(v75 + 2160));
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(*(v75 + 2184));
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(*(v75 + 2216));
  }

  if (SLOBYTE(STACK[0x94F]) < 0)
  {
    operator delete(*(v75 + 2240));
  }

  if (SLOBYTE(STACK[0x96F]) < 0)
  {
    operator delete(*(v75 + 2272));
  }

  if (SLOBYTE(STACK[0x987]) < 0)
  {
    operator delete(*(v75 + 2296));
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(*(v75 + 2328));
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(*(v75 + 2352));
  }

  if (SLOBYTE(STACK[0x9DF]) < 0)
  {
    operator delete(*(v75 + 2384));
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(*(v75 + 2408));
  }

  if (SLOBYTE(STACK[0xA17]) < 0)
  {
    operator delete(*(v75 + 2440));
  }

  if (SLOBYTE(STACK[0xA2F]) < 0)
  {
    operator delete(*(v75 + 2464));
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(*(v75 + 2496));
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(*(v75 + 2520));
  }

  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(*(v75 + 2552));
  }

  if (SLOBYTE(STACK[0xA9F]) < 0)
  {
    operator delete(*(v75 + 2576));
  }

  if (SLOBYTE(STACK[0xABF]) < 0)
  {
    operator delete(*(v75 + 2608));
  }

  if (SLOBYTE(STACK[0xAD7]) < 0)
  {
    operator delete(*(v75 + 2632));
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(*(v75 + 2664));
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(*(v75 + 2688));
  }

  if (SLOBYTE(STACK[0xB2F]) < 0)
  {
    operator delete(*(v75 + 2720));
  }

  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(*(v75 + 2744));
  }

  if (SLOBYTE(STACK[0xB67]) < 0)
  {
    operator delete(*(v75 + 2776));
  }

  if (SLOBYTE(STACK[0xB7F]) < 0)
  {
    operator delete(*(v75 + 2800));
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(*(v75 + 2832));
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(*(v75 + 2856));
  }

  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(*(v75 + 2888));
  }

  if (SLOBYTE(STACK[0xBEF]) < 0)
  {
    operator delete(*(v75 + 2912));
  }

  if (SLOBYTE(STACK[0xC0F]) < 0)
  {
    operator delete(*(v75 + 2944));
  }

  if (SLOBYTE(STACK[0xC27]) < 0)
  {
    operator delete(*(v75 + 2968));
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(*(v75 + 3000));
  }

  if (SLOBYTE(STACK[0xC5F]) < 0)
  {
    operator delete(*(v75 + 3024));
  }

  if (SLOBYTE(STACK[0xC7F]) < 0)
  {
    operator delete(*(v75 + 3056));
  }

  if (SLOBYTE(STACK[0xC97]) < 0)
  {
    operator delete(*(v75 + 3080));
  }

  if (SLOBYTE(STACK[0xCB7]) < 0)
  {
    operator delete(*(v75 + 3112));
  }

  if (SLOBYTE(STACK[0xCCF]) < 0)
  {
    operator delete(*(v75 + 3136));
  }

  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(*(v75 + 3168));
  }

  if (SLOBYTE(STACK[0xD07]) < 0)
  {
    operator delete(*(v75 + 3192));
  }

  if (SLOBYTE(STACK[0xD27]) < 0)
  {
    operator delete(*(v75 + 3224));
  }

  if (SLOBYTE(STACK[0xD3F]) < 0)
  {
    operator delete(*(v75 + 3248));
  }

  if (SLOBYTE(STACK[0xD5F]) < 0)
  {
    operator delete(*(v75 + 3280));
  }

  if (SLOBYTE(STACK[0xD77]) < 0)
  {
    operator delete(*(v75 + 3304));
  }

  if (SLOBYTE(STACK[0xD97]) < 0)
  {
    operator delete(*(v75 + 3336));
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(*(v75 + 3360));
  }

  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(*(v75 + 3392));
  }

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(*(v75 + 3416));
  }

  if (SLOBYTE(STACK[0xE07]) < 0)
  {
    operator delete(*(v75 + 3448));
  }

  if (SLOBYTE(STACK[0xE1F]) < 0)
  {
    operator delete(*(v75 + 3472));
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(*(v75 + 3504));
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(*(v75 + 3528));
  }

  if (SLOBYTE(STACK[0xE77]) < 0)
  {
    operator delete(*(v75 + 3560));
  }

  if (SLOBYTE(STACK[0xE8F]) < 0)
  {
    operator delete(*(v75 + 3584));
  }

  if (SLOBYTE(STACK[0xEAF]) < 0)
  {
    operator delete(*(v75 + 3616));
  }

  if (SLOBYTE(STACK[0xEC7]) < 0)
  {
    operator delete(*(v75 + 3640));
  }

  if (SLOBYTE(STACK[0xEE7]) < 0)
  {
    operator delete(*(v75 + 3672));
  }

  if (SLOBYTE(STACK[0xEFF]) < 0)
  {
    operator delete(*(v75 + 3696));
  }

  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(*(v75 + 3728));
  }

  if (SLOBYTE(STACK[0xF37]) < 0)
  {
    operator delete(*(v75 + 3752));
  }

  if (SLOBYTE(STACK[0xF57]) < 0)
  {
    operator delete(*(v75 + 3784));
  }

  if (SLOBYTE(STACK[0xF6F]) < 0)
  {
    operator delete(*(v75 + 3808));
  }

  if (*(v75 + 3863) < 0)
  {
    operator delete(*(v75 + 3840));
  }

  if (*(v75 + 3887) < 0)
  {
    operator delete(*(v75 + 3864));
  }

  if (*(v75 + 3919) < 0)
  {
    operator delete(*(v75 + 3896));
  }

  if (*(v75 + 3943) < 0)
  {
    operator delete(*(v75 + 3920));
  }

  if (*(v75 + 3975) < 0)
  {
    operator delete(*(v75 + 3952));
  }

  if (*(v75 + 3999) < 0)
  {
    operator delete(*(v75 + 3976));
  }

  if (*(v75 + 4031) < 0)
  {
    operator delete(*(v75 + 4008));
  }

  if (*(v75 + 4055) < 0)
  {
    operator delete(*(v75 + 4032));
  }

  if (*(v75 + 4087) < 0)
  {
    operator delete(*(v75 + 4064));
  }

  if (*(v78 + 23) < 0)
  {
    operator delete(*v78);
  }

  if (*(v78 + 55) < 0)
  {
    operator delete(*(v78 + 32));
  }

  if (*(v78 + 79) < 0)
  {
    operator delete(*(v78 + 56));
  }

  if (*(v78 + 111) < 0)
  {
    operator delete(*(v78 + 88));
  }

  if (*(v78 + 135) < 0)
  {
    operator delete(*(v78 + 112));
  }

  if (*(v78 + 167) < 0)
  {
    operator delete(*(v78 + 144));
  }

  if (*(v78 + 191) < 0)
  {
    operator delete(*(v78 + 168));
  }

  if (*(v78 + 223) < 0)
  {
    operator delete(*(v78 + 200));
  }

  if (*(v78 + 247) < 0)
  {
    operator delete(*(v78 + 224));
  }

  if (*(v78 + 279) < 0)
  {
    operator delete(*(v78 + 256));
  }

  if (*(v78 + 303) < 0)
  {
    operator delete(*(v78 + 280));
  }

  if (*(v78 + 335) < 0)
  {
    operator delete(*(v78 + 312));
  }

  if (*(v78 + 359) < 0)
  {
    operator delete(*(v78 + 336));
  }

  if (*(v78 + 391) < 0)
  {
    operator delete(*(v78 + 368));
  }

  if (*(v78 + 415) < 0)
  {
    operator delete(*(v78 + 392));
  }

  if (*(v78 + 447) < 0)
  {
    operator delete(*(v78 + 424));
  }

  if (*(v78 + 471) < 0)
  {
    operator delete(*(v78 + 448));
  }

  if (*(v78 + 503) < 0)
  {
    operator delete(*(v78 + 480));
  }

  if (*(v78 + 527) < 0)
  {
    operator delete(*(v78 + 504));
  }

  if (*(v78 + 559) < 0)
  {
    operator delete(*(v78 + 536));
  }

  if (*(v78 + 583) < 0)
  {
    operator delete(*(v78 + 560));
  }

  if (*(v78 + 615) < 0)
  {
    operator delete(*(v78 + 592));
  }

  if (*(v78 + 639) < 0)
  {
    operator delete(*(v78 + 616));
  }

  if (*(v78 + 671) < 0)
  {
    operator delete(*(v78 + 648));
  }

  if (*(v78 + 695) < 0)
  {
    operator delete(*(v78 + 672));
  }

  if (*(v78 + 727) < 0)
  {
    operator delete(*(v78 + 704));
  }

  if (*(v78 + 751) < 0)
  {
    operator delete(*(v78 + 728));
  }

  if (*(v78 + 783) < 0)
  {
    operator delete(*(v78 + 760));
  }

  if (*(v78 + 807) < 0)
  {
    operator delete(*(v78 + 784));
  }

  if (*(v78 + 839) < 0)
  {
    operator delete(*(v78 + 816));
  }

  if (*(v78 + 863) < 0)
  {
    operator delete(*(v78 + 840));
  }

  if (*(v78 + 895) < 0)
  {
    operator delete(*(v78 + 872));
  }

  if (*(v78 + 919) < 0)
  {
    operator delete(*(v78 + 896));
  }

  if (*(v78 + 951) < 0)
  {
    operator delete(*(v78 + 928));
  }

  if (*(v78 + 975) < 0)
  {
    operator delete(*(v78 + 952));
  }

  if (*(v78 + 1007) < 0)
  {
    operator delete(*(v78 + 984));
  }

  if (*(v78 + 1031) < 0)
  {
    operator delete(*(v78 + 1008));
  }

  if (*(v78 + 1063) < 0)
  {
    operator delete(*(v78 + 1040));
  }

  if (*(v78 + 1087) < 0)
  {
    operator delete(*(v78 + 1064));
  }

  if (*(v78 + 1119) < 0)
  {
    operator delete(*(v78 + 1096));
  }

  if (*(v78 + 1143) < 0)
  {
    operator delete(*(v78 + 1120));
  }

  if (*(v78 + 1175) < 0)
  {
    operator delete(*(v78 + 1152));
  }

  if (*(v78 + 1199) < 0)
  {
    operator delete(*(v78 + 1176));
  }

  if (*(v78 + 1231) < 0)
  {
    operator delete(*(v78 + 1208));
  }

  if (*(v78 + 1255) < 0)
  {
    operator delete(*(v78 + 1232));
  }

  if (*(v78 + 1287) < 0)
  {
    operator delete(*(v78 + 1264));
  }

  if (*(v78 + 1311) < 0)
  {
    operator delete(*(v78 + 1288));
  }

  if (*(v78 + 1343) < 0)
  {
    operator delete(*(v78 + 1320));
  }

  if (*(v78 + 1367) < 0)
  {
    operator delete(*(v78 + 1344));
  }

  if (*(v78 + 1399) < 0)
  {
    operator delete(*(v78 + 1376));
  }

  if (*(v78 + 1423) < 0)
  {
    operator delete(*(v78 + 1400));
  }

  if (*(v78 + 1455) < 0)
  {
    operator delete(*(v78 + 1432));
  }

  if (*(v78 + 1479) < 0)
  {
    operator delete(*(v78 + 1456));
  }

  if (*(v78 + 1511) < 0)
  {
    operator delete(*(v78 + 1488));
  }

  if (*(v78 + 1535) < 0)
  {
    operator delete(*(v78 + 1512));
  }

  if (*(v78 + 1567) < 0)
  {
    operator delete(*(v78 + 1544));
  }

  if (*(v78 + 1591) < 0)
  {
    operator delete(*(v78 + 1568));
  }

  if (*(v78 + 1623) < 0)
  {
    operator delete(*(v78 + 1600));
  }

  if (*(v78 + 1647) < 0)
  {
    operator delete(*(v78 + 1624));
  }

  if (*(v78 + 1679) < 0)
  {
    operator delete(*(v78 + 1656));
  }

  if (*(v78 + 1703) < 0)
  {
    operator delete(*(v78 + 1680));
  }

  if (*(v78 + 1735) < 0)
  {
    operator delete(*(v78 + 1712));
  }

  if (*(v78 + 1759) < 0)
  {
    operator delete(*(v78 + 1736));
  }

  if (*(v78 + 1791) < 0)
  {
    operator delete(*(v78 + 1768));
  }

  if (*(v78 + 1815) < 0)
  {
    operator delete(*(v78 + 1792));
  }

  if (*(v78 + 1847) < 0)
  {
    operator delete(*(v78 + 1824));
  }

  if (*(v78 + 1871) < 0)
  {
    operator delete(*(v78 + 1848));
  }

  if (*(v78 + 1903) < 0)
  {
    operator delete(*(v78 + 1880));
  }

  if (*(v78 + 1927) < 0)
  {
    operator delete(*(v78 + 1904));
  }

  if (*(v78 + 1959) < 0)
  {
    operator delete(*(v78 + 1936));
  }

  if (*(v78 + 1983) < 0)
  {
    operator delete(*(v78 + 1960));
  }

  if (*(v78 + 2015) < 0)
  {
    operator delete(*(v78 + 1992));
  }

  if (*(v78 + 2039) < 0)
  {
    operator delete(*(v78 + 2016));
  }

  if (*(v78 + 2071) < 0)
  {
    operator delete(*(v78 + 2048));
  }

  if (*(v78 + 2095) < 0)
  {
    operator delete(*(v78 + 2072));
  }

  if (*(v78 + 2127) < 0)
  {
    operator delete(*(v78 + 2104));
  }

  if (*(v78 + 2151) < 0)
  {
    operator delete(*(v78 + 2128));
  }

  if (*(v78 + 2183) < 0)
  {
    operator delete(*(v78 + 2160));
  }

  if (*(v78 + 2207) < 0)
  {
    operator delete(*(v78 + 2184));
  }

  if (*(v78 + 2239) < 0)
  {
    operator delete(*(v78 + 2216));
  }

  if (*(v78 + 2263) < 0)
  {
    operator delete(*(v78 + 2240));
  }

  if (*(v78 + 2295) < 0)
  {
    operator delete(*(v78 + 2272));
  }

  if (*(v78 + 2319) < 0)
  {
    operator delete(*(v78 + 2296));
  }

  if (*(v78 + 2351) < 0)
  {
    operator delete(*(v78 + 2328));
  }

  if (*(v78 + 2375) < 0)
  {
    operator delete(*(v78 + 2352));
  }

  if (*(v78 + 2407) < 0)
  {
    operator delete(*(v78 + 2384));
  }

  if (*(v78 + 2431) < 0)
  {
    operator delete(*(v78 + 2408));
  }

  if (*(v78 + 2463) < 0)
  {
    operator delete(*(v78 + 2440));
  }

  if (*(v78 + 2487) < 0)
  {
    operator delete(*(v78 + 2464));
  }

  if (*(v78 + 2519) < 0)
  {
    operator delete(*(v78 + 2496));
  }

  if (*(v78 + 2543) < 0)
  {
    operator delete(*(v78 + 2520));
  }

  if (*(v78 + 2575) < 0)
  {
    operator delete(*(v78 + 2552));
  }

  if (*(v78 + 2599) < 0)
  {
    operator delete(*(v78 + 2576));
  }

  if (*(v78 + 2631) < 0)
  {
    operator delete(*(v78 + 2608));
  }

  if (*(v78 + 2655) < 0)
  {
    operator delete(*(v78 + 2632));
  }

  if (*(v78 + 2687) < 0)
  {
    operator delete(*(v78 + 2664));
  }

  if (*(v78 + 2711) < 0)
  {
    operator delete(*(v78 + 2688));
  }

  if (*(v78 + 2743) < 0)
  {
    operator delete(*(v78 + 2720));
  }

  if (*(v78 + 2767) < 0)
  {
    operator delete(*(v78 + 2744));
  }

  if (*(v78 + 2799) < 0)
  {
    operator delete(*(v78 + 2776));
  }

  if (*(v78 + 2823) < 0)
  {
    operator delete(*(v78 + 2800));
  }

  if (*(v78 + 2855) < 0)
  {
    operator delete(*(v78 + 2832));
  }

  if (*(v78 + 2879) < 0)
  {
    operator delete(*(v78 + 2856));
  }

  if (*(v78 + 2911) < 0)
  {
    operator delete(*(v78 + 2888));
  }

  if (*(v78 + 2935) < 0)
  {
    operator delete(*(v78 + 2912));
  }

  if (*(v78 + 2967) < 0)
  {
    operator delete(*(v78 + 2944));
  }

  if (*(v78 + 2991) < 0)
  {
    operator delete(*(v78 + 2968));
  }

  if (*(v78 + 3023) < 0)
  {
    operator delete(*(v78 + 3000));
  }

  if (*(v78 + 3047) < 0)
  {
    operator delete(*(v78 + 3024));
  }

  if (*(v78 + 3079) < 0)
  {
    operator delete(*(v78 + 3056));
  }

  if (*(v78 + 3103) < 0)
  {
    operator delete(*(v78 + 3080));
  }

  if (*(v78 + 3135) < 0)
  {
    operator delete(*(v78 + 3112));
  }

  if (*(v78 + 3159) < 0)
  {
    operator delete(*(v78 + 3136));
  }

  if (*(v78 + 3191) < 0)
  {
    operator delete(*(v78 + 3168));
  }

  if (*(v78 + 3215) < 0)
  {
    operator delete(*(v78 + 3192));
  }

  if (*(v78 + 3247) < 0)
  {
    operator delete(*(v78 + 3224));
  }

  if (*(v78 + 3271) < 0)
  {
    operator delete(*(v78 + 3248));
  }

  if (*(v78 + 3303) < 0)
  {
    operator delete(*(v78 + 3280));
  }

  if (*(v78 + 3327) < 0)
  {
    operator delete(*(v78 + 3304));
  }

  if (*(v78 + 3359) < 0)
  {
    operator delete(*(v78 + 3336));
  }

  if (*(v78 + 3383) < 0)
  {
    operator delete(*(v78 + 3360));
  }

  if (*(v78 + 3415) < 0)
  {
    operator delete(*(v78 + 3392));
  }

  if (*(v78 + 3439) < 0)
  {
    operator delete(*(v78 + 3416));
  }

  if (*(v78 + 3471) < 0)
  {
    operator delete(*(v78 + 3448));
  }

  if (*(v78 + 3495) < 0)
  {
    operator delete(*(v78 + 3472));
  }

  if (*(v78 + 3527) < 0)
  {
    operator delete(*(v78 + 3504));
  }

  if (*(v78 + 3551) < 0)
  {
    operator delete(*(v78 + 3528));
  }

  if (*(v78 + 3583) < 0)
  {
    operator delete(*(v78 + 3560));
  }

  if (*(v78 + 3607) < 0)
  {
    operator delete(*(v78 + 3584));
  }

  if (*(v78 + 3639) < 0)
  {
    operator delete(*(v78 + 3616));
  }

  if (*(v78 + 3663) < 0)
  {
    operator delete(*(v78 + 3640));
  }

  if (*(v78 + 3695) < 0)
  {
    operator delete(*(v78 + 3672));
  }

  if (*(v78 + 3719) < 0)
  {
    operator delete(*(v78 + 3696));
  }

  if (*(v78 + 3751) < 0)
  {
    operator delete(*(v78 + 3728));
  }

  if (*(v78 + 3775) < 0)
  {
    operator delete(*(v78 + 3752));
  }

  if (*(v78 + 3807) < 0)
  {
    operator delete(*(v78 + 3784));
  }

  if (*(v78 + 3831) < 0)
  {
    operator delete(*(v78 + 3808));
  }

  if (*(v78 + 3863) < 0)
  {
    operator delete(*(v78 + 3840));
  }

  if (*(v78 + 3887) < 0)
  {
    operator delete(*(v78 + 3864));
  }

  if (*(v78 + 3919) < 0)
  {
    operator delete(*(v78 + 3896));
  }

  if (*(v78 + 3943) < 0)
  {
    operator delete(*(v78 + 3920));
  }

  if (*(v78 + 3975) < 0)
  {
    operator delete(*(v78 + 3952));
  }

  if (*(v78 + 3999) < 0)
  {
    operator delete(*(v78 + 3976));
  }

  if (*(v78 + 4031) < 0)
  {
    operator delete(*(v78 + 4008));
  }

  if (*(v78 + 4055) < 0)
  {
    operator delete(*(v78 + 4032));
  }

  if (*(v78 + 4087) < 0)
  {
    operator delete(*(v78 + 4064));
  }

  if (*(v77 + 23) < 0)
  {
    operator delete(*v77);
  }

  if (*(v77 + 55) < 0)
  {
    operator delete(*(v77 + 32));
  }

  if (*(v77 + 79) < 0)
  {
    operator delete(*(v77 + 56));
  }

  if (*(v77 + 111) < 0)
  {
    operator delete(*(v77 + 88));
  }

  if (*(v77 + 135) < 0)
  {
    operator delete(*(v77 + 112));
  }

  if (*(v77 + 167) < 0)
  {
    operator delete(*(v77 + 144));
  }

  if (*(v77 + 191) < 0)
  {
    operator delete(*(v77 + 168));
  }

  if (*(v77 + 223) < 0)
  {
    operator delete(*(v77 + 200));
  }

  if (*(v77 + 247) < 0)
  {
    operator delete(*(v77 + 224));
  }

  if (*(v77 + 279) < 0)
  {
    operator delete(*(v77 + 256));
  }

  if (*(v77 + 303) < 0)
  {
    operator delete(*(v77 + 280));
  }

  if (*(v77 + 335) < 0)
  {
    operator delete(*(v77 + 312));
  }

  if (*(v77 + 359) < 0)
  {
    operator delete(*(v77 + 336));
  }

  if (*(v77 + 391) < 0)
  {
    operator delete(*(v77 + 368));
  }

  if (*(v77 + 415) < 0)
  {
    operator delete(*(v77 + 392));
  }

  if (*(v77 + 447) < 0)
  {
    operator delete(*(v77 + 424));
  }

  if (*(v77 + 471) < 0)
  {
    operator delete(*(v77 + 448));
  }

  if (*(v77 + 503) < 0)
  {
    operator delete(*(v77 + 480));
  }

  if (*(v77 + 527) < 0)
  {
    operator delete(*(v77 + 504));
  }

  if (*(v77 + 559) < 0)
  {
    operator delete(*(v77 + 536));
  }

  if (*(v77 + 583) < 0)
  {
    operator delete(*(v77 + 560));
  }

  if (*(v77 + 615) < 0)
  {
    operator delete(*(v77 + 592));
  }

  if (*(v77 + 639) < 0)
  {
    operator delete(*(v77 + 616));
  }

  if (*(v77 + 671) < 0)
  {
    operator delete(*(v77 + 648));
  }

  if (*(v77 + 695) < 0)
  {
    operator delete(*(v77 + 672));
  }

  if (*(v77 + 727) < 0)
  {
    operator delete(*(v77 + 704));
  }

  if (*(v77 + 751) < 0)
  {
    operator delete(*(v77 + 728));
  }

  if (*(v77 + 783) < 0)
  {
    operator delete(*(v77 + 760));
  }

  if (*(v77 + 807) < 0)
  {
    operator delete(*(v77 + 784));
  }

  if (*(v77 + 839) < 0)
  {
    operator delete(*(v77 + 816));
  }

  if (*(v77 + 863) < 0)
  {
    operator delete(*(v77 + 840));
  }

  if (*(v77 + 895) < 0)
  {
    operator delete(*(v77 + 872));
  }

  if (*(v77 + 919) < 0)
  {
    operator delete(*(v77 + 896));
  }

  if (*(v77 + 951) < 0)
  {
    operator delete(*(v77 + 928));
  }

  if (*(v77 + 975) < 0)
  {
    operator delete(*(v77 + 952));
  }

  if (*(v77 + 1007) < 0)
  {
    operator delete(*(v77 + 984));
  }

  if (*(v77 + 1031) < 0)
  {
    operator delete(*(v77 + 1008));
  }

  if (*(v77 + 1063) < 0)
  {
    operator delete(*(v77 + 1040));
  }

  if (*(v77 + 1087) < 0)
  {
    operator delete(*(v77 + 1064));
  }

  if (*(v77 + 1119) < 0)
  {
    operator delete(*(v77 + 1096));
  }

  if (*(v77 + 1143) < 0)
  {
    operator delete(*(v77 + 1120));
  }

  if (*(v77 + 1175) < 0)
  {
    operator delete(*(v77 + 1152));
  }

  if (*(v77 + 1199) < 0)
  {
    operator delete(*(v77 + 1176));
  }

  if (*(v77 + 1231) < 0)
  {
    operator delete(*(v77 + 1208));
  }

  if (*(v77 + 1255) < 0)
  {
    operator delete(*(v77 + 1232));
  }

  if (*(v77 + 1287) < 0)
  {
    operator delete(*(v77 + 1264));
  }

  if (*(v77 + 1311) < 0)
  {
    operator delete(*(v77 + 1288));
  }

  if (*(v77 + 1343) < 0)
  {
    operator delete(*(v77 + 1320));
  }

  if (*(v77 + 1367) < 0)
  {
    operator delete(*(v77 + 1344));
  }

  if (*(v77 + 1399) < 0)
  {
    operator delete(*(v77 + 1376));
  }

  if (*(v77 + 1423) < 0)
  {
    operator delete(*(v77 + 1400));
  }

  if (*(v77 + 1455) < 0)
  {
    operator delete(*(v77 + 1432));
  }

  if (*(v77 + 1479) < 0)
  {
    operator delete(*(v77 + 1456));
  }

  if (*(v77 + 1511) < 0)
  {
    operator delete(*(v77 + 1488));
  }

  if (*(v77 + 1535) < 0)
  {
    operator delete(*(v77 + 1512));
  }

  if (*(v77 + 1567) < 0)
  {
    operator delete(*(v77 + 1544));
  }

  if (*(v77 + 1591) < 0)
  {
    operator delete(*(v77 + 1568));
  }

  if (*(v77 + 1623) < 0)
  {
    operator delete(*(v77 + 1600));
  }

  if (*(v77 + 1647) < 0)
  {
    operator delete(*(v77 + 1624));
  }

  if (*(v77 + 1679) < 0)
  {
    operator delete(*(v77 + 1656));
  }

  if (*(v77 + 1703) < 0)
  {
    operator delete(*(v77 + 1680));
  }

  if (*(v77 + 1735) < 0)
  {
    operator delete(*(v77 + 1712));
  }

  if (*(v77 + 1759) < 0)
  {
    operator delete(*(v77 + 1736));
  }

  if (*(v77 + 1791) < 0)
  {
    operator delete(*(v77 + 1768));
  }

  if (*(v77 + 1815) < 0)
  {
    operator delete(*(v77 + 1792));
  }

  if (*(v77 + 1847) < 0)
  {
    operator delete(*(v77 + 1824));
  }

  if (*(v77 + 1871) < 0)
  {
    operator delete(*(v77 + 1848));
  }

  if (*(v77 + 1903) < 0)
  {
    operator delete(*(v77 + 1880));
  }

  if (*(v77 + 1927) < 0)
  {
    operator delete(*(v77 + 1904));
  }

  if (*(v77 + 1959) < 0)
  {
    operator delete(*(v77 + 1936));
  }

  if (*(v77 + 1983) < 0)
  {
    operator delete(*(v77 + 1960));
  }

  if (*(v77 + 2015) < 0)
  {
    operator delete(*(v77 + 1992));
  }

  if (*(v77 + 2039) < 0)
  {
    operator delete(*(v77 + 2016));
  }

  if (*(v77 + 2071) < 0)
  {
    operator delete(*(v77 + 2048));
  }

  if (*(v77 + 2095) < 0)
  {
    operator delete(*(v77 + 2072));
  }

  if (*(v77 + 2127) < 0)
  {
    operator delete(*(v77 + 2104));
  }

  if (*(v77 + 2151) < 0)
  {
    operator delete(*(v77 + 2128));
  }

  if (*(v77 + 2183) < 0)
  {
    operator delete(*(v77 + 2160));
  }

  if (*(v77 + 2207) < 0)
  {
    operator delete(*(v77 + 2184));
  }

  if (*(v77 + 2239) < 0)
  {
    operator delete(*(v77 + 2216));
  }

  if (*(v77 + 2263) < 0)
  {
    operator delete(*(v77 + 2240));
  }

  if (*(v77 + 2295) < 0)
  {
    operator delete(*(v77 + 2272));
  }

  if (*(v77 + 2319) < 0)
  {
    operator delete(*(v77 + 2296));
  }

  if (*(v77 + 2351) < 0)
  {
    operator delete(*(v77 + 2328));
  }

  if (*(v77 + 2375) < 0)
  {
    operator delete(*(v77 + 2352));
  }

  if (*(v77 + 2407) < 0)
  {
    operator delete(*(v77 + 2384));
  }

  if (*(v77 + 2431) < 0)
  {
    operator delete(*(v77 + 2408));
  }

  if (*(v77 + 2463) < 0)
  {
    operator delete(*(v77 + 2440));
  }

  if (*(v77 + 2487) < 0)
  {
    operator delete(*(v77 + 2464));
  }

  if (*(v77 + 2519) < 0)
  {
    operator delete(*(v77 + 2496));
  }

  if (*(v77 + 2543) < 0)
  {
    operator delete(*(v77 + 2520));
  }

  if (*(v77 + 2575) < 0)
  {
    operator delete(*(v77 + 2552));
  }

  if (*(v77 + 2599) < 0)
  {
    operator delete(*(v77 + 2576));
  }

  if (*(v77 + 2631) < 0)
  {
    operator delete(*(v77 + 2608));
  }

  if (*(v77 + 2655) < 0)
  {
    operator delete(*(v77 + 2632));
  }

  if (*(v77 + 2687) < 0)
  {
    operator delete(*(v77 + 2664));
  }

  if (*(v77 + 2711) < 0)
  {
    operator delete(*(v77 + 2688));
  }

  if (*(v77 + 2743) < 0)
  {
    operator delete(*(v77 + 2720));
  }

  if (*(v77 + 2767) < 0)
  {
    operator delete(*(v77 + 2744));
  }

  if (*(v77 + 2799) < 0)
  {
    operator delete(*(v77 + 2776));
  }

  if (*(v77 + 2823) < 0)
  {
    operator delete(*(v77 + 2800));
  }

  if (*(v77 + 2855) < 0)
  {
    operator delete(*(v77 + 2832));
  }

  if (*(v77 + 2879) < 0)
  {
    operator delete(*(v77 + 2856));
  }

  if (*(v77 + 2911) < 0)
  {
    operator delete(*(v77 + 2888));
  }

  if (*(v77 + 2935) < 0)
  {
    operator delete(*(v77 + 2912));
  }

  if (*(v77 + 2967) < 0)
  {
    operator delete(*(v77 + 2944));
  }

  if (*(v77 + 2991) < 0)
  {
    operator delete(*(v77 + 2968));
  }

  if (*(v77 + 3023) < 0)
  {
    operator delete(*(v77 + 3000));
  }

  if (*(v77 + 3047) < 0)
  {
    operator delete(*(v77 + 3024));
  }

  if (*(v77 + 3079) < 0)
  {
    operator delete(*(v77 + 3056));
  }

  if (*(v77 + 3103) < 0)
  {
    operator delete(*(v77 + 3080));
  }

  if (*(v77 + 3135) < 0)
  {
    operator delete(*(v77 + 3112));
  }

  if (*(v77 + 3159) < 0)
  {
    operator delete(*(v77 + 3136));
  }

  if (*(v77 + 3191) < 0)
  {
    operator delete(*(v77 + 3168));
  }

  if (*(v77 + 3215) < 0)
  {
    operator delete(*(v77 + 3192));
  }

  if (*(v77 + 3247) < 0)
  {
    operator delete(*(v77 + 3224));
  }

  if (*(v77 + 3271) < 0)
  {
    operator delete(*(v77 + 3248));
  }

  if (*(v77 + 3303) < 0)
  {
    operator delete(*(v77 + 3280));
  }

  if (*(v77 + 3327) < 0)
  {
    operator delete(*(v77 + 3304));
  }

  if (*(v77 + 3359) < 0)
  {
    operator delete(*(v77 + 3336));
  }

  if (*(v77 + 3383) < 0)
  {
    operator delete(*(v77 + 3360));
  }

  if (*(v77 + 3415) < 0)
  {
    operator delete(*(v77 + 3392));
  }

  if (*(v77 + 3439) < 0)
  {
    operator delete(*(v77 + 3416));
  }

  if (*(v77 + 3471) < 0)
  {
    operator delete(*(v77 + 3448));
  }

  if (*(v77 + 3495) < 0)
  {
    operator delete(*(v77 + 3472));
  }

  if (*(v77 + 3527) < 0)
  {
    operator delete(*(v77 + 3504));
  }

  if (*(v77 + 3551) < 0)
  {
    operator delete(*(v77 + 3528));
  }

  if (*(v77 + 3583) < 0)
  {
    operator delete(*(v77 + 3560));
  }

  if (*(v77 + 3607) < 0)
  {
    operator delete(*(v77 + 3584));
  }

  if (*(v77 + 3639) < 0)
  {
    operator delete(*(v77 + 3616));
  }

  if (*(v77 + 3663) < 0)
  {
    operator delete(*(v77 + 3640));
  }

  if (*(v77 + 3695) < 0)
  {
    operator delete(*(v77 + 3672));
  }

  if (*(v77 + 3719) < 0)
  {
    operator delete(*(v77 + 3696));
  }

  if (*(v77 + 3751) < 0)
  {
    operator delete(*(v77 + 3728));
  }

  if (*(v77 + 3775) < 0)
  {
    operator delete(*(v77 + 3752));
  }

  if (*(v77 + 3807) < 0)
  {
    operator delete(*(v77 + 3784));
  }

  if (*(v77 + 3831) < 0)
  {
    operator delete(*(v77 + 3808));
  }

  if (*(v77 + 3863) < 0)
  {
    operator delete(*(v77 + 3840));
  }

  if (*(v77 + 3887) < 0)
  {
    operator delete(*(v77 + 3864));
  }

  if (*(v77 + 3919) < 0)
  {
    operator delete(*(v77 + 3896));
  }

  if (*(v77 + 3943) < 0)
  {
    operator delete(*(v77 + 3920));
  }

  if (*(v77 + 3975) < 0)
  {
    operator delete(*(v77 + 3952));
  }

  if (*(v77 + 3999) < 0)
  {
    operator delete(*(v77 + 3976));
  }

  if (*(v77 + 4031) < 0)
  {
    operator delete(*(v77 + 4008));
  }

  if (*(v77 + 4055) < 0)
  {
    operator delete(*(v77 + 4032));
  }

  if (*(v77 + 4087) < 0)
  {
    operator delete(*(v77 + 4064));
  }

  if (*(v76 + 23) < 0)
  {
    operator delete(*v76);
  }

  if (*(v76 + 55) < 0)
  {
    operator delete(*(v76 + 32));
  }

  if (*(v76 + 79) < 0)
  {
    operator delete(*(v76 + 56));
  }

  if (*(v76 + 111) < 0)
  {
    operator delete(*(v76 + 88));
  }

  if (*(v76 + 135) < 0)
  {
    operator delete(*(v76 + 112));
  }

  if (*(v76 + 167) < 0)
  {
    operator delete(*(v76 + 144));
  }

  if (*(v76 + 191) < 0)
  {
    operator delete(*(v76 + 168));
  }

  if (*(v76 + 223) < 0)
  {
    operator delete(*(v76 + 200));
  }

  if (*(v76 + 247) < 0)
  {
    operator delete(*(v76 + 224));
  }

  if (*(v76 + 279) < 0)
  {
    operator delete(*(v76 + 256));
  }

  if (*(v76 + 303) < 0)
  {
    operator delete(*(v76 + 280));
  }

  if (*(v76 + 335) < 0)
  {
    operator delete(*(v76 + 312));
  }

  if (*(v76 + 359) < 0)
  {
    operator delete(*(v76 + 336));
  }

  if (*(v76 + 391) < 0)
  {
    operator delete(*(v76 + 368));
  }

  if (*(v76 + 415) < 0)
  {
    operator delete(*(v76 + 392));
  }

  if (*(v76 + 447) < 0)
  {
    operator delete(*(v76 + 424));
  }

  if (*(v76 + 471) < 0)
  {
    operator delete(*(v76 + 448));
  }

  if (*(v76 + 503) < 0)
  {
    operator delete(*(v76 + 480));
  }

  if (*(v76 + 527) < 0)
  {
    operator delete(*(v76 + 504));
  }

  if (*(v76 + 559) < 0)
  {
    operator delete(*(v76 + 536));
  }

  if (*(v76 + 583) < 0)
  {
    operator delete(*(v76 + 560));
  }

  if (*(v76 + 615) < 0)
  {
    operator delete(*(v76 + 592));
  }

  if (*(v76 + 639) < 0)
  {
    operator delete(*(v76 + 616));
  }

  if (*(v76 + 671) < 0)
  {
    operator delete(*(v76 + 648));
  }

  if (*(v76 + 695) < 0)
  {
    operator delete(*(v76 + 672));
  }

  if (*(v76 + 727) < 0)
  {
    operator delete(*(v76 + 704));
  }

  if (*(v76 + 751) < 0)
  {
    operator delete(*(v76 + 728));
  }

  if (*(v76 + 783) < 0)
  {
    operator delete(*(v76 + 760));
  }

  if (*(v76 + 807) < 0)
  {
    operator delete(*(v76 + 784));
  }

  if (*(v76 + 839) < 0)
  {
    operator delete(*(v76 + 816));
  }

  if (*(v76 + 863) < 0)
  {
    operator delete(*(v76 + 840));
  }

  if (*(v76 + 895) < 0)
  {
    operator delete(*(v76 + 872));
  }

  if (*(v76 + 919) < 0)
  {
    operator delete(*(v76 + 896));
  }

  if (*(v76 + 951) < 0)
  {
    operator delete(*(v76 + 928));
  }

  if (*(v76 + 975) < 0)
  {
    operator delete(*(v76 + 952));
  }

  if (*(v76 + 1007) < 0)
  {
    operator delete(*(v76 + 984));
  }

  if (*(v76 + 1031) < 0)
  {
    operator delete(*(v76 + 1008));
  }

  if (*(v76 + 1063) < 0)
  {
    operator delete(*(v76 + 1040));
  }

  if (*(v76 + 1087) < 0)
  {
    operator delete(*(v76 + 1064));
  }

  if (*(v76 + 1119) < 0)
  {
    operator delete(*(v76 + 1096));
  }

  if (*(v76 + 1143) < 0)
  {
    operator delete(*(v76 + 1120));
  }

  if (*(v76 + 1175) < 0)
  {
    operator delete(*(v76 + 1152));
  }

  if (*(v76 + 1199) < 0)
  {
    operator delete(*(v76 + 1176));
  }

  if (*(v76 + 1231) < 0)
  {
    operator delete(*(v76 + 1208));
  }

  if (*(v76 + 1255) < 0)
  {
    operator delete(*(v76 + 1232));
  }

  if (*(v76 + 1287) < 0)
  {
    operator delete(*(v76 + 1264));
  }

  if (*(v76 + 1311) < 0)
  {
    operator delete(*(v76 + 1288));
  }

  if (*(v76 + 1343) < 0)
  {
    operator delete(*(v76 + 1320));
  }

  if (*(v76 + 1367) < 0)
  {
    operator delete(*(v76 + 1344));
  }

  if (*(v76 + 1399) < 0)
  {
    operator delete(*(v76 + 1376));
  }

  if (*(v76 + 1423) < 0)
  {
    operator delete(*(v76 + 1400));
  }

  if (*(v76 + 1455) < 0)
  {
    operator delete(*(v76 + 1432));
  }

  if (*(v76 + 1479) < 0)
  {
    operator delete(*(v76 + 1456));
  }

  if (*(v76 + 1511) < 0)
  {
    operator delete(*(v76 + 1488));
  }

  if (*(v76 + 1535) < 0)
  {
    operator delete(*(v76 + 1512));
  }

  if (*(v76 + 1567) < 0)
  {
    operator delete(*(v76 + 1544));
  }

  _Unwind_Resume(a1);
}

void sub_1A89D0C()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27ED6D8 = 0;
  unk_27ED6E0 = 0;
  qword_27ED6E8 = 0;
  sub_68678C(&qword_27ED6D8, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27ED6F0 = 0;
  *algn_27ED6F8 = 0;
  qword_27ED700 = 0;
  sub_68678C(&qword_27ED6F0, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27ED708 = 0;
  unk_27ED710 = 0;
  qword_27ED718 = 0;
  sub_68678C(&qword_27ED708, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1A7F250(v0, v1, v2, v3, v4, v5, v6, v7);
  sub_3608D0(__p, "en_US");
  LODWORD(v12[0]) = 0;
  sub_3608D0(v12 + 1, "en-US_US");
  v13 = 0;
  sub_3608D0(v14, "en_AU");
  v15 = 1;
  sub_3608D0(v16, "en-AU_AU");
  v17 = 1;
  sub_3608D0(v18, "en_CA");
  v19 = 2;
  sub_3608D0(v20, "en-CA_CA");
  v21 = 2;
  sub_3608D0(v22, "en_GB");
  v23 = 3;
  sub_3608D0(v24, "en-GB_GB");
  v25 = 3;
  sub_3608D0(v26, "en_IE");
  v27 = 4;
  sub_3608D0(v28, "en-IE_IE");
  v29 = 4;
  sub_3608D0(v30, "en_NZ");
  v31 = 4;
  sub_3608D0(v32, "en-NZ_NZ");
  v33 = 4;
  sub_3608D0(v34, "en_ZA");
  v35 = 4;
  sub_3608D0(v36, "en-ZA_ZA");
  v37 = 4;
  sub_19664AC(&unk_27ED738, __p, 14);
  v8 = 56;
  do
  {
    if (*(&__p[v8 - 1] - 1) < 0)
    {
      operator delete(__p[v8 - 4]);
    }

    v8 -= 4;
  }

  while (v8 * 8);
  sub_3608D0(__p, "US");
  LODWORD(v12[0]) = 1;
  sub_3608D0(v12 + 1, "AU");
  v13 = 2;
  sub_3608D0(v14, "CA");
  v15 = 3;
  sub_3608D0(v16, "GB");
  v17 = 4;
  sub_3608D0(v18, "IE");
  v19 = 5;
  sub_3608D0(v20, "NZ");
  v21 = 5;
  sub_3608D0(v22, "ZA");
  v23 = 5;
  sub_3608D0(v24, "ZA");
  v25 = 5;
  sub_3608D0(v26, "IN");
  v27 = 7;
  sub_3608D0(v28, "DE");
  v29 = 6;
  sub_3608D0(v30, "CH");
  v31 = 6;
  sub_3608D0(v32, "NL");
  v33 = 6;
  sub_3608D0(v34, "DK");
  v35 = 6;
  sub_3608D0(v36, "NO");
  v37 = 6;
  sub_3608D0(v38, "FI");
  v39 = 6;
  sub_3608D0(v40, "SE");
  v41 = 6;
  sub_3608D0(v42, "BE");
  v43 = 6;
  sub_3608D0(v44, "AT");
  v45 = 6;
  sub_3608D0(v46, "MX");
  v47 = 6;
  sub_3608D0(v48, "AR");
  v49 = 6;
  sub_3608D0(v50, "CL");
  v51 = 6;
  sub_3608D0(v52, "BR");
  v53 = 6;
  sub_3608D0(v54, "SK");
  v55 = 6;
  sub_3608D0(v56, "TR");
  v57 = 6;
  sub_3608D0(v58, "PL");
  v59 = 6;
  sub_3608D0(v60, "HR");
  v61 = 6;
  sub_3608D0(v62, "RO");
  v63 = 6;
  sub_3608D0(v64, "HU");
  v65 = 6;
  sub_3608D0(v66, "VN");
  v67 = 6;
  sub_3608D0(v68, "GR");
  v69 = 6;
  sub_3608D0(v70, "IL");
  v71 = 6;
  sub_3608D0(v72, "NG");
  v73 = 6;
  sub_3608D0(v74, "AE");
  v75 = 6;
  sub_3608D0(v76, "EG");
  v77 = 6;
  sub_1966844(&unk_27ED760, __p, 34);
  v9 = 136;
  do
  {
    if (*(&__p[v9 - 1] - 1) < 0)
    {
      operator delete(__p[v9 - 4]);
    }

    v9 -= 4;
  }

  while (v9 * 8);
}

void sub_1A8A3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 1079);
  v18 = -1088;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 32;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 32;
    if (!v18)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_1A8A538(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    v4 = &off_277DC20;
  }

  v5 = *(v4 + 12);
  switch(v5)
  {
    case 0:
      sub_19D31BC((*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), 58, &v38);
      v26 = *(a1 + 56);
      if (!v26)
      {
        v26 = &off_277DC20;
      }

      v27 = v26[3] & 0xFFFFFFFFFFFFFFFELL;
      v28 = *(v27 + 23);
      if (v28 >= 0)
      {
        v29 = v27;
      }

      else
      {
        v29 = *v27;
      }

      if (v28 >= 0)
      {
        v30 = *(v27 + 23);
      }

      else
      {
        v30 = *(v27 + 8);
      }

      v31 = std::string::append(&v38, v29, v30);
      *a2 = *v31;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      goto LABEL_59;
    case 2:
      sub_19D31BC((*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), 58, &v34);
      v10 = std::string::append(&v34, "[", 1uLL);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = *(a1 + 56);
      if (!v12)
      {
        v12 = &off_277DC20;
      }

      v13 = v12[4];
      if (!v13)
      {
        v13 = &off_277DBF8;
      }

      std::to_string(&v33, v13[3]);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v33;
      }

      else
      {
        v14 = v33.__r_.__value_.__r.__words[0];
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v35, v14, size);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v36.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v36.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::string::push_back(&v36, 44);
      v37 = v36;
      memset(&v36, 0, sizeof(v36));
      v18 = *(a1 + 56);
      if (!v18)
      {
        v18 = &off_277DC20;
      }

      v19 = v18[4];
      if (!v19)
      {
        v19 = &off_277DBF8;
      }

      std::to_string(&v32, v19[4]);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v32;
      }

      else
      {
        v20 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = v32.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v37, v20, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v38, "]", 1uLL);
      *a2 = *v24;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        v25 = v34.__r_.__value_.__r.__words[0];
LABEL_61:
        operator delete(v25);
      }

      break;
    case 1:
      sub_19D31BC((*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), 58, &v38);
      v6 = *(a1 + 56);
      if (!v6)
      {
        v6 = &off_277DC20;
      }

      std::to_string(&v37, *(v6 + 5));
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v37;
      }

      else
      {
        v7 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = v37.__r_.__value_.__l.__size_;
      }

      v9 = std::string::append(&v38, v7, v8);
      *a2 = *v9;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

LABEL_59:
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v25 = v38.__r_.__value_.__r.__words[0];
      goto LABEL_61;
    default:
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      break;
  }
}

void sub_1A8A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A8A940@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 40) != 1)
  {
    goto LABEL_6;
  }

  v3 = *(result + 24);
  if (!v3)
  {
    v3 = &off_276DAD8;
  }

  if (*(v3 + 12) == 1)
  {
    result = sub_1A8E410(&v4, (v3[3] & 0xFFFFFFFFFFFFFFFELL), (v3[4] & 0xFFFFFFFFFFFFFFFELL));
    *a2 = v4;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 40) = v7;
    *(a2 + 48) = 1;
  }

  else
  {
LABEL_6:
    *a2 = 0;
    *(a2 + 48) = 0;
  }

  return result;
}

void sub_1A8A9DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = &off_276DB50;
  }

  sub_1A8A940(v3, v4);
  if (v8 == 1)
  {
    sub_7E36C(a2, v4, v4);
    if (v8)
    {
      if (v7 < 0)
      {
        operator delete(__p);
      }

      if (v5 < 0)
      {
        operator delete(v4[0]);
      }
    }
  }
}

void sub_1A8AA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A8AA98(va);
  sub_7E724(v3, *(v3 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1A8AA98(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_1A8AAE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v3 + 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      if (*(*v4 + 40))
      {
        v7 = *(*v4 + 40);
      }

      else
      {
        v7 = &off_276DB50;
      }

      sub_1A8A940(v7, v8);
      if (v12 == 1)
      {
        sub_7E36C(a2, v8, v8);
        if (v12)
        {
          if (v11 < 0)
          {
            operator delete(__p);
          }

          if (v9 < 0)
          {
            operator delete(v8[0]);
          }
        }
      }

      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }
}

void sub_1A8ABB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A8AA98(va);
  sub_7E724(v3, *(v3 + 8));
  _Unwind_Resume(a1);
}

void sub_1A8ABD8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 72);
  if (v2 == 3)
  {
    if (*(a1 + 40))
    {
      v4 = *(a1 + 40);
    }

    else
    {
      v4 = &off_276DCE8;
    }

    sub_1A8AAE8(v4, a2);
  }

  else if (v2 == 1)
  {
    if (*(a1 + 24))
    {
      v3 = *(a1 + 24);
    }

    else
    {
      v3 = &off_276DB80;
    }

    sub_1A8A9DC(v3, a2);
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_1A8AC30(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a1 + 48) != 1 || (*(a1 + 32) ? (v6 = *(a1 + 32)) : (v6 = &off_276DB50), sub_1A8A940(v6, v42), v46 != 1))
  {
    *a3 = 0;
    a3[144] = 0;
    return;
  }

  if (SHIBYTE(v43) < 0)
  {
    if (v42[1] == dword_C + 1)
    {
      v8 = v42[0];
      if (*v42[0] == 0x5F444554414C4552 && *(v42[0] + 5) == 0x444E4152425F4445)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = v42[0];
    }

    sub_325C(v40, v8, v42[1]);
    goto LABEL_24;
  }

  if (SHIBYTE(v43) != 13 || (v42[0] == 0x5F444554414C4552 ? (v7 = *(v42 + 5) == 0x444E4152425F4445) : (v7 = 0), !v7))
  {
    *v40 = *v42;
    v41 = v43;
LABEL_24:
    if (sub_138B0(a2, v40))
    {
      if (SHIBYTE(v41) < 0)
      {
        sub_325C(v48, v40[0], v40[1]);
      }

      else
      {
        *v48 = *v40;
        *&v48[16] = v41;
      }

      sub_23898(v29, v48, 1);
      if ((v48[23] & 0x80000000) != 0)
      {
        operator delete(*v48);
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        v15 = *(a1 + 52);
      }

      else
      {
        v15 = -1;
      }

      LODWORD(v21) = v15;
      if (SHIBYTE(v41) < 0)
      {
        sub_325C(&__p, v40[0], v40[1]);
        v15 = v21;
      }

      else
      {
        __p = *v40;
        v23 = v41;
      }

      *v48 = v15;
      *&v48[8] = __p;
      v49 = v23;
      __p = 0uLL;
      v23 = 0;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      sub_1A8E4A8(&v35, v48, &v50, 1uLL);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(*&v48[8]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      sub_1A8E7A8(&v21, &unk_236B00E, v29, &v35);
      v16 = v21;
      v17 = __p;
      v21 = 0;
      *&__p = 0;
      *v48 = v16;
      *&v48[8] = v17;
      *&v48[16] = *(&__p + 1);
      v49 = v23;
      v50 = v24;
      if (v23)
      {
        v18 = *(*(&__p + 1) + 8);
        if ((v17 & (v17 - 1)) != 0)
        {
          if (v18 >= v17)
          {
            v18 %= v17;
          }
        }

        else
        {
          v18 &= v17 - 1;
        }

        *(v16 + 8 * v18) = &v48[16];
        *(&__p + 1) = 0;
        v23 = 0;
      }

      v51 = v25;
      v52 = v26;
      v26 = 0;
      v25 = 0uLL;
      v53 = 1;
      sub_1A8E95C(a3, v48);
      if (v53 == 1)
      {
        *&v19[0] = &v51;
        sub_1A8E704(v19);
        sub_23D9C(v48);
      }

      *&v19[0] = &v25;
      sub_1A8E704(v19);
      sub_23D9C(&v21);
      *v48 = &v35;
      sub_1A8E704(v48);
      sub_23D9C(v29);
    }

    else
    {
      sub_16C85E4(&v35, 0, 0);
      v39 = 0;
      LODWORD(v37) = v37 | 9;
      v10 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v10 = *v10;
      }

      sub_10DF26C(&v38, "true", v10);
      sub_16C8FC4(v29, 0, 0);
      v34 = 2;
      v31 |= 5u;
      v11 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v11 = *v11;
      }

      sub_194EA1C(&v32, v40, v11);
      v31 |= 2u;
      v12 = v33;
      if (!v33)
      {
        v13 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v13 = *v13;
        }

        v12 = sub_16D0D14(v13);
        v33 = v12;
      }

      sub_16C8E8C(v12, &v35);
      if ((*(a1 + 16) & 0x80) != 0)
      {
        v14 = *(a1 + 52);
      }

      else
      {
        v14 = -1;
      }

      LODWORD(v21) = v14;
      if (SHIBYTE(v41) < 0)
      {
        sub_325C(&__p, v40[0], v40[1]);
        v14 = v21;
      }

      else
      {
        __p = *v40;
        v23 = v41;
      }

      *v48 = v14;
      *&v48[8] = __p;
      v49 = v23;
      __p = 0uLL;
      v23 = 0;
      memset(v28, 0, sizeof(v28));
      sub_1A8E4A8(v28, v48, &v50, 1uLL);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(*&v48[8]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      sub_16C91D0(&v21, v29);
      v27 = 1;
      memset(v19, 0, sizeof(v19));
      v20 = 1065353216;
      sub_1A8EAE8(v48, &v21, v19, v28);
      sub_1A8E9CC(a3, v48);
      a3[144] = 1;
      v47 = &v56;
      sub_1A8E704(&v47);
      sub_23D9C(&v55);
      if (v54 == 1)
      {
        sub_16C92A8(v48);
      }

      sub_23D9C(v19);
      if (v27 == 1)
      {
        sub_16C92A8(&v21);
      }

      *v48 = v28;
      sub_1A8E704(v48);
      sub_16C92A8(v29);
      sub_16C8830(&v35);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }

    goto LABEL_74;
  }

LABEL_21:
  *a3 = 0;
  a3[144] = 0;
LABEL_74:
  if (v45 < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }
}

void sub_1A8B1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char a56)
{
  sub_16C92A8(&a33);
  sub_16C8830(&a42);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  sub_1A8AA98(&a56);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8B320(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v3 = (a1 + 40);
    sub_1A8E704(&v3);
    sub_23D9C(a1);
  }

  return a1;
}

uint64_t sub_1A8B370(uint64_t a1)
{
  v3 = (a1 + 40);
  sub_1A8E704(&v3);
  return sub_23D9C(a1);
}

void sub_1A8B3B0(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 0;
    v10 = 8 * v8;
    do
    {
      v11 = *v7;
      if (*(*v7 + 48) == 1)
      {
        v12 = *(v11 + 40);
        if (!v12)
        {
          v12 = &off_276DB50;
        }

        if (*(v12 + 10) == 1)
        {
          v13 = v12[3];
          if (!v13)
          {
            v13 = &off_276DAD8;
          }

          if (*(v13 + 12) == 1)
          {
            if (v9 >= v73)
            {
              v9 = sub_1A8EB90(&v71, v11);
            }

            else
            {
              sub_13A0F14(v9, v11);
              v9 += 64;
            }

            v72 = v9;
          }
        }
      }

      ++v7;
      v10 -= 8;
    }

    while (v10);
    v14 = v71;
  }

  else
  {
    v14 = 0;
    v9 = 0;
  }

  if (v9 - v14 == 64)
  {
    if (*(v14 + 40))
    {
      v15 = *(v14 + 40);
    }

    else
    {
      v15 = &off_276DB50;
    }

    sub_1A8A940(v15, v66);
    if (v70)
    {
      if (SBYTE7(v67) < 0)
      {
        sub_325C(v64, v66[0], v66[1]);
      }

      else
      {
        *v64 = *v66;
        v65 = v67;
      }

      if (sub_138B0(a2, v64))
      {
        if (SHIBYTE(v65) < 0)
        {
          sub_325C(v75, v64[0], v64[1]);
        }

        else
        {
          *v75 = *v64;
          *&v75[16] = v65;
        }

        sub_23898(&v51, v75, 1);
        if ((v75[23] & 0x80000000) != 0)
        {
          operator delete(*v75);
        }

        if (v72 == v71)
        {
          sub_6FAB4();
        }

        if ((*(v71 + 16) & 0x40) != 0)
        {
          v36 = *(v71 + 60);
        }

        else
        {
          v36 = -1;
        }

        *v44 = v36;
        if (SHIBYTE(v65) < 0)
        {
          sub_325C(&v44[8], v64[0], v64[1]);
          v36 = *v44;
        }

        else
        {
          *&v44[8] = *v64;
          v45 = v65;
        }

        *v75 = v36;
        *&v75[8] = *&v44[8];
        v76 = v45;
        *&v44[8] = 0;
        *&v44[16] = 0;
        v45 = 0;
        v60 = 0;
        v61 = 0;
        v59 = 0;
        sub_1A8E4A8(&v59, v75, &v77, 1uLL);
        if (SHIBYTE(v76) < 0)
        {
          operator delete(*&v75[8]);
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(*&v44[8]);
        }

        sub_1A8E7A8(v44, &unk_236B00E, &v51, &v59);
        v37 = *v44;
        v38 = *&v44[8];
        *v44 = 0;
        *&v44[8] = 0;
        *v75 = v37;
        *&v75[8] = v38;
        *&v75[16] = *&v44[16];
        v76 = v45;
        v77 = v46;
        if (v45)
        {
          v39 = *(*&v44[16] + 8);
          if ((v38 & (v38 - 1)) != 0)
          {
            if (v39 >= v38)
            {
              v39 %= v38;
            }
          }

          else
          {
            v39 &= v38 - 1;
          }

          *(v37 + 8 * v39) = &v75[16];
          *&v44[16] = 0;
          v45 = 0;
        }

        v78 = v47;
        v79 = v48;
        v48 = 0;
        v47 = 0uLL;
        LOBYTE(v80) = 1;
        sub_1A8E95C(a3, v75);
        if (v80 == 1)
        {
          *&v41 = &v78;
          sub_1A8E704(&v41);
          sub_23D9C(v75);
        }

        *&v41 = &v47;
        sub_1A8E704(&v41);
        sub_23D9C(v44);
        *v75 = &v59;
        sub_1A8E704(v75);
        sub_23D9C(&v51);
      }

      else
      {
        sub_16C85E4(&v59, 0, 0);
        v63 = 0;
        LODWORD(v61) = v61 | 9;
        v31 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v31 = *v31;
        }

        sub_10DF26C(&v62, "true", v31);
        sub_16C8FC4(&v51, 0, 0);
        v58 = 2;
        DWORD2(__p) |= 5u;
        v32 = (__p & 0xFFFFFFFFFFFFFFFCLL);
        if (__p)
        {
          v32 = *v32;
        }

        sub_194EA1C(&v56, v64, v32);
        DWORD2(__p) |= 2u;
        v33 = v57;
        if (!v57)
        {
          v34 = (__p & 0xFFFFFFFFFFFFFFFCLL);
          if (__p)
          {
            v34 = *v34;
          }

          v33 = sub_16D0D14(v34);
          v57 = v33;
        }

        sub_16C8E8C(v33, &v59);
        if (v72 == v71)
        {
          sub_6FAB4();
        }

        if ((*(v71 + 16) & 0x40) != 0)
        {
          v35 = *(v71 + 60);
        }

        else
        {
          v35 = -1;
        }

        *v44 = v35;
        if (SHIBYTE(v65) < 0)
        {
          sub_325C(&v44[8], v64[0], v64[1]);
          v35 = *v44;
        }

        else
        {
          *&v44[8] = *v64;
          v45 = v65;
        }

        *v75 = v35;
        *&v75[8] = *&v44[8];
        v76 = v45;
        *&v44[8] = 0;
        *&v44[16] = 0;
        v45 = 0;
        memset(v50, 0, sizeof(v50));
        sub_1A8E4A8(v50, v75, &v77, 1uLL);
        if (SHIBYTE(v76) < 0)
        {
          operator delete(*&v75[8]);
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(*&v44[8]);
        }

        sub_16C91D0(v44, &v51);
        v49 = 1;
        v41 = 0u;
        v42 = 0u;
        v43 = 1065353216;
        sub_1A8EAE8(v75, v44, &v41, v50);
        sub_1A8E9CC(a3, v75);
        a3[144] = 1;
        v74 = v83;
        sub_1A8E704(&v74);
        sub_23D9C(v82);
        if (v81 == 1)
        {
          sub_16C92A8(v75);
        }

        sub_23D9C(&v41);
        if (v49 == 1)
        {
          sub_16C92A8(v44);
        }

        *v75 = v50;
        sub_1A8E704(v75);
        sub_16C92A8(&v51);
        sub_16C8830(&v59);
      }

      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64[0]);
      }

      if (v69 < 0)
      {
        operator delete(*(&v67 + 1));
      }

      if (SBYTE7(v67) < 0)
      {
        operator delete(v66[0]);
      }
    }

    else
    {
      *a3 = 0;
      a3[144] = 0;
    }
  }

  else
  {
    v41 = 0uLL;
    v40 = *(a1 + 76) != 1;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    *v66 = 0u;
    v67 = 0u;
    v68 = 1065353216;
    for (*&v42 = 0; v14 != v9; v14 += 64)
    {
      if (*(v14 + 40))
      {
        v16 = *(v14 + 40);
      }

      else
      {
        v16 = &off_276DB50;
      }

      sub_1A8A940(v16, v44);
      if (BYTE8(v47) == 1)
      {
        if ((v44[23] & 0x80000000) != 0)
        {
          sub_325C(v64, *v44, *&v44[8]);
        }

        else
        {
          *v64 = *v44;
          v65 = *&v44[16];
        }

        if ((*(v14 + 16) & 0x40) != 0)
        {
          v17 = *(v14 + 60);
        }

        else
        {
          v17 = -1;
        }

        v51 = v17;
        if (SHIBYTE(v65) < 0)
        {
          sub_325C(&__p, v64[0], v64[1]);
          v17 = v51;
        }

        else
        {
          __p = *v64;
          v53 = v65;
        }

        *v75 = v17;
        *&v75[8] = __p;
        v76 = v53;
        __p = 0uLL;
        v53 = 0;
        sub_1A8C0E4(&v59, v75);
        if (SHIBYTE(v76) < 0)
        {
          operator delete(*&v75[8]);
        }

        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p);
        }

        if (sub_138B0(a2, v64))
        {
          sub_23914(v66, v64, v64);
        }

        else
        {
          sub_16C85E4(&v51, 0, 0);
          LODWORD(v56) = 0;
          DWORD2(__p) |= 9u;
          v18 = (__p & 0xFFFFFFFFFFFFFFFCLL);
          if (__p)
          {
            v18 = *v18;
          }

          sub_10DF26C(&v53, "true", v18);
          sub_16C8FC4(v75, 0, 0);
          v80 = 2;
          *&v75[16] |= 5u;
          v19 = (*&v75[8] & 0xFFFFFFFFFFFFFFFCLL);
          if (v75[8])
          {
            v19 = *v19;
          }

          sub_194EA1C(&v78 + 1, v64, v19);
          *&v75[16] |= 2u;
          v20 = v79;
          if (!v79)
          {
            v21 = (*&v75[8] & 0xFFFFFFFFFFFFFFFCLL);
            if (v75[8])
            {
              v21 = *v21;
            }

            v20 = sub_16D0D14(v21);
            v79 = v20;
          }

          sub_16C8E8C(v20, &v51);
          sub_1A8C204(&v41, v75);
          sub_16C92A8(v75);
          sub_16C8830(&v51);
        }

        if (SHIBYTE(v65) < 0)
        {
          operator delete(v64[0]);
        }

        if (SBYTE7(v47) < 0)
        {
          operator delete(v45);
        }

        if ((v44[23] & 0x80000000) != 0)
        {
          operator delete(*v44);
        }
      }
    }

    sub_16C8FC4(&v51, 0, 0);
    v22 = *(&v41 + 1);
    v23 = v41;
    if (*(&v41 + 1) == v41)
    {
      sub_1A8E7A8(v44, &unk_236B00E, v66, &v59);
      v28 = *v44;
      v29 = *&v44[8];
      *v44 = 0;
      *&v44[8] = 0;
      *v75 = v28;
      *&v75[8] = v29;
      *&v75[16] = *&v44[16];
      v76 = v45;
      v77 = v46;
      if (v45)
      {
        v30 = *(*&v44[16] + 8);
        if ((v29 & (v29 - 1)) != 0)
        {
          if (v30 >= v29)
          {
            v30 %= v29;
          }
        }

        else
        {
          v30 &= v29 - 1;
        }

        *(v28 + 8 * v30) = &v75[16];
        *&v44[16] = 0;
        v45 = 0;
      }

      v78 = v47;
      v79 = v48;
      v48 = 0;
      v47 = 0uLL;
      LOBYTE(v80) = 1;
      sub_1A8E95C(a3, v75);
      if (v80 == 1)
      {
        v64[0] = &v78;
        sub_1A8E704(v64);
        sub_23D9C(v75);
      }

      v64[0] = &v47;
      sub_1A8E704(v64);
      sub_23D9C(v44);
    }

    else
    {
      v24 = 954437177 * ((*(&v41 + 1) - v41) >> 3);
      DWORD2(__p) |= 4u;
      v58 = v40;
      if (v24 != -1)
      {
        sub_1959254(&v53, v54 + v24);
      }

      do
      {
        if (v55 && v54 < *v55)
        {
          v25 = &v55[2 * v54++];
          v26 = *(v25 + 1);
        }

        else
        {
          v27 = sub_16D0D9C(v53);
          v26 = sub_19593CC(&v53, v27);
        }

        sub_16C9B80(v26, v23);
        v23 += 72;
      }

      while (v23 != v22);
      sub_16C91D0(v44, &v51);
      v49 = 1;
      sub_1A8F140(v75, v44, v66, &v59);
      sub_1A8E9CC(a3, v75);
      a3[144] = 1;
      v64[0] = v83;
      sub_1A8E704(v64);
      sub_23D9C(v82);
      if (v81 == 1)
      {
        sub_16C92A8(v75);
      }

      if (v49 == 1)
      {
        sub_16C92A8(v44);
      }
    }

    sub_16C92A8(&v51);
    *v75 = &v41;
    sub_1A8F1F0(v75);
    sub_23D9C(v66);
    *v75 = &v59;
    sub_1A8E704(v75);
  }

  *v75 = &v71;
  sub_1A8F274(v75);
}

void sub_1A8BE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  sub_1A8AA98(&a52);
  *(v60 - 256) = &a60;
  sub_1A8F274((v60 - 256));
  _Unwind_Resume(a1);
}

const void **sub_1A8C0E4(const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_1794();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_1A8E56C(result, v11);
    }

    v12 = 32 * v8;
    *v12 = *a2;
    v13 = *(a2 + 8);
    *(v12 + 24) = *(a2 + 24);
    *(v12 + 8) = v13;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = 32 * v8 + 32;
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1A8EE48(v18);
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 8);
    *(v4 + 3) = *(a2 + 24);
    *(v4 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = (v4 + 32);
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_1A8C204(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1A8EEDC(a1, a2);
  }

  else
  {
    sub_16C91D0(a1[1], a2);
    result = v3 + 72;
    a1[1] = v3 + 72;
  }

  a1[1] = result;
  return result;
}

void sub_1A8C258(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(a1 + 72);
  if (v3 == 3)
  {
    if (*(a1 + 40))
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = &off_276DCE8;
    }

    sub_1A8B3B0(v5, a2, a3);
  }

  else if (v3 == 1)
  {
    if (*(a1 + 24))
    {
      v4 = *(a1 + 24);
    }

    else
    {
      v4 = &off_276DB80;
    }

    sub_1A8AC30(v4, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[144] = 0;
  }
}

void sub_1A8C2A8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_325C(v4, *a1, *(a1 + 8));
  }

  else
  {
    *v4 = *a1;
    v5 = *(a1 + 16);
  }

  *__p = *v4;
  v3 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v6 = "true";
  v8 = v3;
  v9 = "true";
  v10 = 1;
  sub_1A8F2F8(a2, __p);
  if (v10 == 1 && SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1A8C358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a20 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A903CC(&a9);
  _Unwind_Resume(a1);
}

void sub_1A8C388(void *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v6 = v3 + 1;
    do
    {
      *(&v54 + 1) = 0;
      v55 = 0;
      *&v54 = &v54 + 8;
      sub_1A8F3B4(*a1, a1 + 1, *v3, v6, &v54, &v54 + 8, v49, &v40);
      if (v55)
      {
        v7 = v60;
        if (v60 >= v61)
        {
          v8 = sub_1A8F8E8(&v59, &v54);
        }

        else
        {
          sub_19649A8(v60, &v54);
          v8 = v7 + 3;
        }

        v60 = v8;
      }

      sub_7E724(&v54, *(&v54 + 1));
      v3 += 3;
      v6 += 3;
    }

    while (v3 != v4);
    v9 = v59;
    v10 = v60;
    a3[1] = 0;
    a3[2] = 0;
    for (*a3 = 0; v9 != v10; v9 += 3)
    {
      if (v9[2] == 1)
      {
        sub_1A8C2A8(*v9 + 32, &v54);
        if (v58 == 1)
        {
          sub_16C85E4(v49, 0, 0);
          v11 = v51;
          v51 |= 8u;
          v53 = 0;
          if ((v58 & 1) == 0)
          {
            sub_4F0F0C();
          }

          v51 = v11 | 9;
          v12 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
          if (v50)
          {
            v12 = *v12;
          }

          sub_194EA1C(v52, __p, v12);
          sub_16C8FC4(&v40, 0, 0);
          v13 = v42;
          v42 |= 4u;
          v48 = 2;
          if ((v58 & 1) == 0)
          {
            sub_4F0F0C();
          }

          v42 = v13 | 5;
          v14 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
          if (v41)
          {
            v14 = *v14;
          }

          sub_194EA1C(&v46, &v54, v14);
          v42 |= 2u;
          v15 = v47;
          if (!v47)
          {
            v16 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41)
            {
              v16 = *v16;
            }

            v15 = sub_16D0D14(v16);
            v47 = v15;
          }

          sub_16C8E8C(v15, v49);
          sub_1A8C204(a3, &v40);
          sub_16C92A8(&v40);
          sub_16C8830(v49);
          if (v58)
          {
            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v55) < 0)
            {
              operator delete(v54);
            }
          }
        }
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v17 = *v9;
        if (*v9 == v9 + 1)
        {
          v27 = 0;
          v28 = 0;
        }

        else
        {
          do
          {
            sub_1A8C2A8((v17 + 4), &v54);
            if (v58 == 1)
            {
              sub_16C85E4(v49, 0, 0);
              v18 = v51;
              v51 |= 8u;
              v53 = 0;
              if ((v58 & 1) == 0)
              {
                sub_4F0F0C();
              }

              v51 = v18 | 9;
              v19 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
              if (v50)
              {
                v19 = *v19;
              }

              sub_194EA1C(v52, __p, v19);
              sub_16C8FC4(&v40, 0, 0);
              v20 = v42;
              v42 |= 4u;
              v48 = 2;
              if ((v58 & 1) == 0)
              {
                sub_4F0F0C();
              }

              v42 = v20 | 5;
              v21 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
              if (v41)
              {
                v21 = *v21;
              }

              sub_194EA1C(&v46, &v54, v21);
              v42 |= 2u;
              v22 = v47;
              if (!v47)
              {
                v23 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
                if (v41)
                {
                  v23 = *v23;
                }

                v22 = sub_16D0D14(v23);
                v47 = v22;
              }

              sub_16C8E8C(v22, v49);
              sub_1A8C204(&v37, &v40);
              sub_16C92A8(&v40);
              sub_16C8830(v49);
              if (v58)
              {
                if (v57 < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v55) < 0)
                {
                  operator delete(v54);
                }
              }
            }

            v24 = v17[1];
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = v17[2];
                v26 = *v25 == v17;
                v17 = v25;
              }

              while (!v26);
            }

            v17 = v25;
          }

          while (v25 != v9 + 1);
          v27 = v37;
          v28 = v38;
        }

        v29 = 0x8E38E38E38E38E39 * ((v28 - v27) >> 3);
        if (v29)
        {
          if (v29 == 1)
          {
            sub_1A8C204(a3, v27);
          }

          else
          {
            sub_16C8FC4(&v40, 0, 0);
            v42 |= 4u;
            v48 = 1;
            v31 = v37;
            v30 = v38;
            v32 = 954437177 * ((v38 - v37) >> 3);
            if (v32 != -1)
            {
              sub_1959254(&v43, v44 + v32);
            }

            while (v31 != v30)
            {
              if (v45 && v44 < *v45)
              {
                v33 = &v45[2 * v44++];
                v34 = *(v33 + 1);
              }

              else
              {
                v35 = sub_16D0D9C(v43);
                v34 = sub_19593CC(&v43, v35);
              }

              sub_16C9B80(v34, v31);
              v31 += 72;
            }

            sub_1A8C204(a3, &v40);
            sub_16C92A8(&v40);
          }
        }

        v40 = &v37;
        sub_1A8F1F0(&v40);
      }
    }
  }

  v40 = &v59;
  sub_1A8E384(&v40);
}