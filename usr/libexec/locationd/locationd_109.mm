void sub_1007EA270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007EA340(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007EA398(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1007EA398(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007EA420(v5, (v5 + 8), v4 + 32, v4 + 2);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1007EA420(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, _OWORD *a4)
{
  v4 = *sub_1007EA4B8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1007EA4B8(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t **sub_1007EA660(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1007EA6E0(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_1007EA6E0(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  result = *sub_1007EA4B8(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1007EA764();
  }

  return result;
}

void sub_1007EA7E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007EA800(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007EA800(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1003C93BC((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void (__cdecl ***sub_1007EA860(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t a2, int a3))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1007EA9EC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1007EAA24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

uint64_t sub_1007EAAEC(uint64_t a1, std::string *a2, char *a3, char *__s)
{
  sub_10000EC00(&__str, __s);
  v7 = sub_1007EAF98(a1, a2, a3);
  if ((v7 & 1) == 0)
  {
    std::string::operator=(a2, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1007EAB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EAB84(uint64_t a1, _DWORD *a2, int a3, char *a4)
{
  if (!sub_1007EB01C(a1, __s, a4, ""))
  {
    if (*(a1 + 32) == 1)
    {
      LOWORD(v25[0]) = 0;
      v17.__r_.__value_.__s.__data_[0] = 2;
      cnprint::CNPrinter::Print(v25, &v17, "ConfigLoader: %s could not be parsed", a4);
    }

    return 0xFFFFFFFFLL;
  }

  sub_10000EC00(v43, __s);
  sub_1007EBEC4(&v39, " ,;", 0, 0);
  sub_1007EBF58(v34, v43, &v39);
  sub_1007EBBCC(v34, v25);
  for (i = 0; ; ++i)
  {
    sub_1007EBCB8(v34, &v17);
    if (v22 == 1 && (v31 & 1) != 0)
    {
      if (v20 != v29)
      {
        v9 = 0;
        goto LABEL_11;
      }

      v10 = v21 == v30;
    }

    else
    {
      v10 = v22 == v31;
    }

    v9 = v10;
LABEL_11:
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      goto LABEL_41;
    }

    if ((a3 & ~(a3 >> 31)) == i)
    {
      LOWORD(v17.__r_.__value_.__l.__data_) = 0;
      LOBYTE(v16) = 4;
      cnprint::CNPrinter::Print(&v17, &v16, "ConfigLoader: Too many entries for %s", a4);
      goto LABEL_40;
    }

    if ((v31 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

    v11 = v33 >= 0 ? v32 : v32[0];
    if ((sub_1007EBDA8(a1, a2, v11) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 32) == 1)
    {
      v16 = 0;
      v15 = 2;
      std::to_string(&v17, a2[1]);
      v12 = &v17;
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v17.__r_.__value_.__r.__words[0];
      }

      cnprint::CNPrinter::Print(&v16, &v15, "ConfigLoader: %s loaded value #%d %s", a4, i + 1, v12);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    ++a2;
    sub_1007EC8B8(v25);
  }

  LOWORD(v17.__r_.__value_.__l.__data_) = 0;
  LOBYTE(v16) = 4;
  if ((v31 & 1) == 0)
  {
    __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
  }

  if (v33 >= 0)
  {
    v13 = v32;
  }

  else
  {
    v13 = v32[0];
  }

  cnprint::CNPrinter::Print(&v17, &v16, "ConfigLoader: %s could not cast value #%d from %s", a4, i + 1, v13);
LABEL_40:
  i = 0xFFFFFFFFLL;
LABEL_41:
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 < 0)
  {
    operator delete(v39);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  return i;
}

void sub_1007EAF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  sub_1007EC448(&a28);
  sub_100574E64(&a42);
  sub_1006E69AC(&a52);
  if (a65 < 0)
  {
    operator delete(*(v65 + 256));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007EAF98(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a1;
  result = sub_1007EB01C(a1, __s, a3, "");
  if (result)
  {
    return sub_1007EB494(v4, a2, __s);
  }

  return result;
}

uint64_t sub_1007EB01C(uint64_t a1, char *__dst, char *a3, char *__src)
{
  v4 = __src;
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_99;
    }
  }

  else if (!*(a1 + 31))
  {
    goto LABEL_99;
  }

  sub_10000EC00(&v59, "\n");
  v8 = strlen(a3);
  v9 = std::string::append(&v59, a3, v8);
  v10 = std::string::append(v9, ":", 1uLL);
  v11 = (a1 + 8);
  v12 = *(a1 + 31);
  __s = a3;
  if (v12 < 0)
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
  }

  else
  {
    v13 = (a1 + 8);
    v14 = *(a1 + 31);
  }

  v15 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
  if (v15 >= 0)
  {
    v16 = v10;
  }

  else
  {
    v16 = v10->__r_.__value_.__r.__words[0];
  }

  if (v15 >= 0)
  {
    size = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v21 = 0;
LABEL_48:
    v38 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v59.__r_.__value_.__l.__size_;
    }

    v39 = v38 + v21;
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    v40 = v12;
    if (v39 < v12)
    {
      while (v40 > v39)
      {
        v41 = a1 + 8;
        if ((v12 & 0x80000000) != 0)
        {
          v41 = *v11;
        }

        if (*(v41 + v39) != 58)
        {
          v42 = v12;
          if ((v12 & 0x80000000) != 0)
          {
            v42 = *(a1 + 16);
          }

          if (v42 <= v39)
          {
            break;
          }

          v43 = a1 + 8;
          if ((v12 & 0x80000000) != 0)
          {
            v43 = *v11;
          }

          if (*(v43 + v39) != 32)
          {
            v44 = v12;
            if ((v12 & 0x80000000) != 0)
            {
              v44 = *(a1 + 16);
            }

            if (v44 <= v39)
            {
              break;
            }

            v45 = a1 + 8;
            if ((v12 & 0x80000000) != 0)
            {
              v45 = *v11;
            }

            if (*(v45 + v39) != 9)
            {
              goto LABEL_72;
            }
          }
        }

        ++v39;
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_53:
        v40 = *(a1 + 16);
        if (v39 >= v40)
        {
          goto LABEL_72;
        }
      }

      sub_1003CC9DC();
    }

LABEL_72:
    v46 = 0;
    a3 = __s;
    do
    {
      v47 = v39 + v46;
      v48 = *(a1 + 31);
      if ((v48 & 0x8000000000000000) != 0)
      {
        if (v47 >= *(a1 + 16))
        {
          break;
        }
      }

      else if (v47 >= v48)
      {
        break;
      }

      v49 = a1 + 8;
      if ((v48 & 0x80000000) != 0)
      {
        v49 = *v11;
      }

      if (*(v49 + v46 + v39) == 10)
      {
        break;
      }

      if ((v48 & 0x80000000) != 0)
      {
        v50 = *(a1 + 16);
      }

      else
      {
        v50 = *(a1 + 31);
      }

      if (v50 <= v47)
      {
LABEL_104:
        sub_1003CC9DC();
      }

      v51 = a1 + 8;
      if ((v48 & 0x80000000) != 0)
      {
        v51 = *v11;
      }

      if (*(v51 + v46 + v39) == 13)
      {
        break;
      }

      if ((v48 & 0x80000000) != 0)
      {
        v52 = *(a1 + 16);
      }

      else
      {
        v52 = *(a1 + 31);
      }

      if (v52 <= v47)
      {
        goto LABEL_104;
      }

      v53 = a1 + 8;
      if ((v48 & 0x80000000) != 0)
      {
        v53 = *v11;
      }

      __dst[v46] = *(v53 + v46 + v39);
      ++v46;
    }

    while (v46 != 255);
    v31 = 0;
    __dst[v46] = 0;
    if (*(a1 + 32) == 1)
    {
      v58 = 0;
      v57 = 2;
      cnprint::CNPrinter::Print(&v58, &v57, "ConfigLoader: %s loaded value %s", __s, __dst);
      v31 = 0;
    }

    goto LABEL_96;
  }

  if (v14 >= size)
  {
    v22 = &v13[v14];
    v23 = v16->__r_.__value_.__s.__data_[0];
    v24 = v13;
    do
    {
      v25 = v14 - size;
      if (v25 == -1)
      {
        break;
      }

      v26 = memchr(v24, v23, v25 + 1);
      if (!v26)
      {
        break;
      }

      v27 = v26;
      if (!memcmp(v26, v16, size))
      {
        if (v27 != v22)
        {
          v21 = v27 - v13;
          if (v27 - v13 != -1)
          {
            goto LABEL_48;
          }
        }

        break;
      }

      v24 = v27 + 1;
      v14 = v22 - (v27 + 1);
    }

    while (v14 >= size);
  }

  sub_100006044(&v59, __s);
  v18 = std::string::append(&v59, ":", 1uLL);
  v12 = *(a1 + 31);
  if (v12 < 0)
  {
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
  }

  else
  {
    v19 = (a1 + 8);
    v20 = *(a1 + 31);
  }

  v28 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
  if (v28 >= 0)
  {
    v29 = v18;
  }

  else
  {
    v29 = v18->__r_.__value_.__r.__words[0];
  }

  if (v28 >= 0)
  {
    v30 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v18->__r_.__value_.__l.__size_;
  }

  if (!v30)
  {
LABEL_47:
    v21 = 0;
    goto LABEL_48;
  }

  if (v20 >= v30)
  {
    v32 = &v19[v20];
    v33 = v29->__r_.__value_.__s.__data_[0];
    v34 = v19;
    do
    {
      v35 = v20 - v30;
      if (v35 == -1)
      {
        break;
      }

      v36 = memchr(v34, v33, v35 + 1);
      if (!v36)
      {
        break;
      }

      v37 = v36;
      if (!memcmp(v36, v29, v30))
      {
        v31 = 1;
        if (v37 == v32)
        {
          goto LABEL_35;
        }

        a3 = __s;
        if (v37 != v19)
        {
          goto LABEL_96;
        }

        goto LABEL_47;
      }

      v34 = v37 + 1;
      v20 = v32 - (v37 + 1);
    }

    while (v20 >= v30);
  }

  v31 = 1;
LABEL_35:
  a3 = __s;
LABEL_96:
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v4 = __src;
  if ((v31 & 1) == 0)
  {
    return 1;
  }

LABEL_99:
  strncpy(__dst, v4, 0x100uLL);
  if (*(a1 + 32) == 1)
  {
    LOWORD(v59.__r_.__value_.__l.__data_) = 0;
    LOBYTE(v58) = 2;
    cnprint::CNPrinter::Print(&v59, &v58, "ConfigLoader: %s using default value %s", a3, v4);
  }

  return 0;
}

void sub_1007EB46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EB494(int a1, uint64_t a2, char *__s)
{
  memset(&v5, 0, sizeof(v5));
  sub_100006044(&v5, __s);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v5;
  return 1;
}

void sub_1007EB4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void (**__p)(std::bad_cast *__hidden this), __int128 a11)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(exception_object);
    __p = &off_1024470A0;
    a11 = *(exception_ptr + 8);
    __cxa_begin_catch(exception_object);
    std::bad_cast::~bad_cast(&__p);
    __cxa_end_catch();
    JUMPOUT(0x1007EB4E4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EB568(uint64_t a1, void *a2, char *a3)
{
  v4 = a1;
  result = sub_1007EB01C(a1, __dst, a3, "");
  if (result)
  {
    return sub_1007EB5EC(v4, a2, __dst);
  }

  return result;
}

uint64_t sub_1007EB5EC(int a1, void *a2, std::locale::__imp *__s)
{
  v5 = 0;
  v6[0] = __s;
  v6[1] = (__s + strlen(__s));
  if ((sub_1007EB708(v6, &v5) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = &off_1024470A0;
    sub_10038D4A0(&v7);
  }

  *a2 = v5;
  return 1;
}

void sub_1007EB690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::bad_cast a12, __int128 a13)
{
  std::bad_cast::~bad_cast(&a12);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    a12.__vftable = &off_1024470A0;
    a13 = *(exception_ptr + 8);
    __cxa_begin_catch(a1);
    std::bad_cast::~bad_cast(&a12);
    __cxa_end_catch();
    JUMPOUT(0x1007EB638);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007EB708(std::locale::__imp **a1, double *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_8;
  }

  v5 = *v3;
  if (v5 == 45 || v5 == 43)
  {
    v3 = (v3 + 1);
  }

  v7 = v4 - v3;
  if (v4 - v3 < 3)
  {
    goto LABEL_8;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(v3 + v10);
    if (v12 != aNan_0[v10] && v12 != aNan[v10])
    {
      break;
    }

    v11 = v10++ > 1;
  }

  while (v10 != 3);
  if (!v11)
  {
    if (v7 == 3)
    {
      v20 = 0;
      v18 = 0;
      do
      {
        v21 = *(v3 + v20);
        if (v21 != aInfinity_0[v20] && v21 != aInfinity[v20])
        {
          break;
        }

        v18 = v20++ > 1;
      }

      while (v20 != 3);
    }

    else
    {
      if (v7 != 8)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(v3 + v17);
        if (v19 != aInfinity_0[v17] && v19 != aInfinity[v17])
        {
          break;
        }

        v18 = v17++ > 6;
      }

      while (v17 != 8);
    }

    if (v18)
    {
      v14 = v5 == 45;
      v15 = INFINITY;
      v16 = -INFINITY;
      goto LABEL_34;
    }

LABEL_8:
    result = sub_1007EB8F0(a1, a2);
    if (result)
    {
      v9 = *(a1[1] - 1) - 43;
      if (v9 <= 0x3A)
      {
        return result & ((0x400000004000005uLL >> v9) ^ 1);
      }
    }

    return result;
  }

  v13 = v3 + 3;
  if (v13 != v4 && (v4 - v13 < 2 || *v13 != 40 || *(v4 - 1) != 41))
  {
    goto LABEL_8;
  }

  v14 = v5 == 45;
  v15 = NAN;
  v16 = NAN;
LABEL_34:
  if (v14)
  {
    v15 = v16;
  }

  *a2 = v15;
  return 1;
}

BOOL sub_1007EB8F0(std::locale::__imp **a1, uint64_t a2)
{
  std::locale::locale(v15);
  memset(&v15[4], 0, 24);
  v3 = *a1;
  v4 = a1[1];
  __sb = off_1024722E0;
  v15[1].__locale_ = v3;
  v15[2].__locale_ = v3;
  v15[3].__locale_ = v4;
  v11.__loc_ = 0;
  v10[1] = 0;
  std::ios_base::init(&v11, &__sb);
  v12 = 0;
  v13 = -1;
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  v6 = v10[0];
  *(&v10[1] + *(v10[0] - 24)) &= ~0x1000u;
  *(&v10[2] + *(v6 - 24)) = 17;
  v7 = std::istream::operator>>();
  v8 = (*(v7 + *(*v7 - 24) + 32) & 5) == 0 && std::istream::get() == -1;
  std::istream::~istream();
  std::locale::~locale(v15);
  return v8;
}

void sub_1007EBAD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  std::istream::~istream();
  *(v4 - 112) = v2;
  std::locale::~locale(v3 + 1);
  _Unwind_Resume(a1);
}

std::locale *sub_1007EBB24(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void sub_1007EBB68(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  operator delete();
}

void sub_1007EBBCC(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100007244(v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v4 = *(a1 + 16);
    v5 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100007244(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1007EC030(a2, v4, *a1, *(a1 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1007EBC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EBCB8(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100007244(v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v4 = *(a1 + 16);
    v5 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100007244(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1007EC030(a2, v4, *(a1 + 8), *(a1 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1007EBD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EBDA8(int a1, _DWORD *a2, char *__s)
{
  v5 = 0;
  v6[0] = __s;
  v6[1] = &__s[strlen(__s)];
  if ((sub_1007EC49C(v6, &v5) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = &off_1024470A0;
    sub_10038D4A0(&v7);
  }

  *a2 = v5;
  return 1;
}

void sub_1007EBE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::bad_cast a12, __int128 a13)
{
  std::bad_cast::~bad_cast(&a12);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    a12.__vftable = &off_1024470A0;
    a13 = *(exception_ptr + 8);
    __cxa_begin_catch(a1);
    std::bad_cast::~bad_cast(&a12);
    __cxa_end_catch();
    JUMPOUT(0x1007EBDF4);
  }

  _Unwind_Resume(a1);
}

void *sub_1007EBEC4(void *a1, char *a2, char *a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_10000EC00(a1 + 3, a2);
  *(a1 + 24) = 0;
  *(a1 + 13) = a4;
  *(a1 + 56) = 0;
  if (a3)
  {
    sub_100006044(a1, a3);
  }

  return a1;
}

void sub_1007EBF24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EBF58(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a1 = v5;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  *(a1 + 8) = v7 + v6;
  if (*(a3 + 23) < 0)
  {
    sub_100007244((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a3 + 47) < 0)
  {
    sub_100007244((a1 + 40), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v9 = *(a3 + 24);
    *(a1 + 56) = *(a3 + 5);
    *(a1 + 40) = v9;
  }

  v10 = *(a3 + 6);
  *(a1 + 72) = *(a3 + 56);
  *(a1 + 64) = v10;
  return a1;
}

void sub_1007EC014(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007EC030(char *__dst, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100007244(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v9;
  }

  v10 = *(a2 + 6);
  __dst[56] = *(a2 + 56);
  *(__dst + 6) = v10;
  *(__dst + 8) = a3;
  *(__dst + 9) = a4;
  __dst[80] = 0;
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  sub_1007EC120(__dst);
  return __dst;
}

void sub_1007EC0E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EC120(uint64_t result)
{
  if ((*(result + 80) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 72);
    if (*(result + 64) == v2)
    {
      result = 0;
    }

    else
    {
      result = sub_1007EC174(result, (result + 64), v2, (result + 88));
    }

    *(v1 + 80) = result;
  }

  return result;
}

uint64_t sub_1007EC174(uint64_t a1, std::string::value_type **a2, std::string::value_type *a3, std::string *this)
{
  v8 = *a2;
  if (*(a1 + 52))
  {
    goto LABEL_2;
  }

  if (v8 != a3)
  {
    do
    {
      v9 = sub_1007EC354(a1, *v8);
      v8 = *a2;
      if (!v9)
      {
        break;
      }

      *a2 = ++v8;
    }

    while (v8 != a3);
    if (*(a1 + 52))
    {
LABEL_2:
      if (v8 == a3)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          v12 = 1;
          *(a1 + 56) = 1;
          sub_10038D358(this, a3, a3, 0);
          return v12;
        }

        return 0;
      }

      if (sub_1007EC3D0(a1, *v8))
      {
        if (*(a1 + 56))
        {
          ++*a2;
          *(a1 + 56) = 0;
LABEL_28:
          sub_10038D358(this, v8, *a2, *a2 - v8);
          return 1;
        }
      }

      else if ((*(a1 + 56) & 1) != 0 || !sub_1007EC354(a1, **a2))
      {
        v13 = sub_1007EC354(a1, **a2);
        v14 = *a2;
        if (v13)
        {
          *a2 = ++v14;
          v8 = v14;
        }

        while (v14 != a3 && !sub_1007EC354(a1, *v14) && !sub_1007EC3D0(a1, **a2))
        {
          v14 = *a2 + 1;
          *a2 = v14;
        }
      }

      *(a1 + 56) = 1;
      goto LABEL_28;
    }
  }

  if (v8 != a3)
  {
    v10 = sub_1007EC3D0(a1, *v8);
    v11 = *a2;
    if (v10)
    {
      *a2 = v11 + 1;
    }

    else
    {
      while (v11 != a3 && !sub_1007EC354(a1, *v11) && !sub_1007EC3D0(a1, **a2))
      {
        v11 = *a2 + 1;
        *a2 = v11;
      }
    }

    goto LABEL_28;
  }

  return 0;
}

BOOL sub_1007EC354(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 47);
  if (v2 < 0)
  {
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v3 = std::string::find((a1 + 24), a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 49) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x4000uLL);
    }

    else
    {
      v4 = _DefaultRuneLocale.__runetype[a2] & 0x4000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

BOOL sub_1007EC3D0(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    v3 = std::string::find(a1, a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 48) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x2000uLL);
    }

    else
    {
      v4 = _DefaultRuneLocale.__runetype[a2] & 0x2000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

uint64_t sub_1007EC448(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007EC49C(unsigned __int8 **a1, _DWORD *a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v7 = *v5;
  if (v7 == 45 || v7 == 43)
  {
    *a1 = ++v5;
  }

  v9[0] = 0;
  v10 = 1;
  v11 = a2;
  v12 = v5;
  v13 = v4;
  result = sub_1007EC528(v9);
  if (v7 == 45)
  {
    *a2 = -*a2;
  }

  return result;
}

uint64_t sub_1007EC528(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  *(a1 + 24) = v1 - 1;
  v3 = *(a1 + 8);
  *v3 = 0;
  if (v2 <= v1 - 1)
  {
    v4 = *(v1 - 1);
    if ((v4 - 58) >= 0xF6u)
    {
      *v3 = (v4 - 48);
      *(a1 + 24) = v1 - 2;
      std::locale::locale(&v30);
      v7 = std::locale::classic();
      if (std::locale::operator==(&v30, v7))
      {
        v5 = sub_1007EC7D0(a1);
LABEL_39:
        std::locale::~locale(&v30);
        return v5;
      }

      v8 = std::locale::use_facet(&v30, &std::numpunct<char>::id);
      (v8->__vftable[1].__on_zero_shared)(&__p);
      v9 = v29;
      if ((v29 & 0x8000000000000000) != 0)
      {
        v9 = v28;
        if (!v28)
        {
          goto LABEL_36;
        }

        p_p = __p;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (*p_p >= 1)
      {
        v11 = (v8->__vftable[1].~facet_0)(v8);
        v12 = *(a1 + 16);
        v13 = *(a1 + 24);
        if (v13 >= v12)
        {
          v14 = 0;
          v15 = __p;
          if (v29 >= 0)
          {
            v15 = &__p;
          }

          v16 = *v15 - 1;
          do
          {
            if (v16)
            {
              v17 = *(a1 + 4);
              v18 = *a1 | (v17 > 0x19999999);
              *a1 = v18;
              v19 = 10 * v17;
              *(a1 + 4) = v19;
              v20 = *v13;
              if ((*v13 - 58) < 0xF6u)
              {
                goto LABEL_41;
              }

              v21 = v20 - 48;
              v22 = (v20 - 48) * v19;
              if (v21)
              {
                if (v18)
                {
                  goto LABEL_41;
                }

                if (((v21 * v19) & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_41;
                }

                v23 = *(a1 + 8);
                v24 = *v23;
                if (__CFADD__(v22, *v23))
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v23 = *(a1 + 8);
                v24 = *v23;
              }

              *v23 = v24 + v22;
              --v16;
            }

            else
            {
              if (*v13 != v11)
              {
                goto LABEL_36;
              }

              if (v13 == v12)
              {
LABEL_41:
                v5 = 0;
                goto LABEL_37;
              }

              if (v9 - 1 > v14)
              {
                ++v14;
              }

              if (v29 >= 0)
              {
                v25 = &__p;
              }

              else
              {
                v25 = __p;
              }

              v16 = v25[v14];
            }

            *(a1 + 24) = --v13;
          }

          while (v13 >= v12);
        }

        v5 = 1;
        goto LABEL_37;
      }

LABEL_36:
      v5 = sub_1007EC7D0(a1);
LABEL_37:
      if (v29 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_39;
    }
  }

  return 0;
}

void sub_1007EC79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EC7D0(uint64_t a1)
{
  if (*(a1 + 24) < *(a1 + 16))
  {
    return 1;
  }

  do
  {
    result = sub_1007EC828(a1);
    if (!result)
    {
      break;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24) - 1;
    *(a1 + 24) = v4;
  }

  while (v4 >= v3);
  return result;
}

uint64_t sub_1007EC828(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *a1 | (v1 > 0x19999999);
  *a1 = v2;
  v3 = 10 * v1;
  *(a1 + 4) = v3;
  v4 = **(a1 + 24);
  if ((**(a1 + 24) - 58) < 0xF6u)
  {
    return 0;
  }

  v5 = v4 - 48;
  v6 = (v4 - 48) * v3;
  if (v5)
  {
    if ((v2 & 1) == 0 && ((v5 * v3) & 0xFFFFFFFF00000000) == 0)
    {
      v7 = *(a1 + 8);
      v8 = *v7;
      if (!__CFADD__(v6, *v7))
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *v7;
LABEL_9:
  *v7 = v8 + v6;
  return 1;
}

uint64_t sub_1007EC8B8(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    sub_1019401AC();
  }

  result = sub_1007EC174(a1, (a1 + 64), *(a1 + 72), (a1 + 88));
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1007EC8F8(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  if (!sub_1007EB01C(a1, __s, a4, ""))
  {
    if (*(a1 + 32) == 1)
    {
      LOWORD(v25[0]) = 0;
      v17.__r_.__value_.__s.__data_[0] = 2;
      cnprint::CNPrinter::Print(v25, &v17, "ConfigLoader: %s could not be parsed", a4);
    }

    return 0xFFFFFFFFLL;
  }

  sub_10000EC00(v43, __s);
  sub_1007EBEC4(&v39, " ,;", 0, 0);
  sub_1007EBF58(v34, v43, &v39);
  sub_1007EBBCC(v34, v25);
  for (i = 0; ; ++i)
  {
    sub_1007EBCB8(v34, &v17);
    if (v22 == 1 && (v31 & 1) != 0)
    {
      if (v20 != v29)
      {
        v9 = 0;
        goto LABEL_11;
      }

      v10 = v21 == v30;
    }

    else
    {
      v10 = v22 == v31;
    }

    v9 = v10;
LABEL_11:
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      goto LABEL_41;
    }

    if ((a3 & ~(a3 >> 31)) == i)
    {
      LOWORD(v17.__r_.__value_.__l.__data_) = 0;
      LOBYTE(v16) = 4;
      cnprint::CNPrinter::Print(&v17, &v16, "ConfigLoader: Too many entries for %s", a4);
      goto LABEL_40;
    }

    if ((v31 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

    v11 = v33 >= 0 ? v32 : v32[0];
    if ((sub_1007EB5EC(a1, a2, v11) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 32) == 1)
    {
      v16 = 0;
      v15 = 2;
      std::to_string(&v17, *(a2 + 8));
      v12 = &v17;
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v17.__r_.__value_.__r.__words[0];
      }

      cnprint::CNPrinter::Print(&v16, &v15, "ConfigLoader: %s loaded value #%d %s", a4, i + 1, v12);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    a2 += 8;
    sub_1007EC8B8(v25);
  }

  LOWORD(v17.__r_.__value_.__l.__data_) = 0;
  LOBYTE(v16) = 4;
  if ((v31 & 1) == 0)
  {
    __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
  }

  if (v33 >= 0)
  {
    v13 = v32;
  }

  else
  {
    v13 = v32[0];
  }

  cnprint::CNPrinter::Print(&v17, &v16, "ConfigLoader: %s could not cast value #%d from %s", a4, i + 1, v13);
LABEL_40:
  i = 0xFFFFFFFFLL;
LABEL_41:
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 < 0)
  {
    operator delete(v39);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  return i;
}

void sub_1007ECC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  sub_1007EC448(&a28);
  sub_100574E64(&a42);
  sub_1006E69AC(&a52);
  if (a65 < 0)
  {
    operator delete(*(v65 + 256));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007ECD0C(uint64_t a1)
{
  *a1 = &off_102472248;
  sub_10018F070(a1 + 200, *(a1 + 208));
  sub_1003C93BC(a1 + 176, *(a1 + 184));
  sub_1003C93BC(a1 + 152, *(a1 + 160));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  *a1 = off_1024722A8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1007ECDAC(uint64_t a1)
{
  v1 = 111808;
  *(a1 + 113576) = off_1024721D0;
  *(a1 + 113248) = off_1024721D0;
  *(a1 + 112920) = off_1024721D0;
  v2 = a1 + 112552;
  v3 = -112608;
  do
  {
    v4 = (a1 + v1);
    v4[93] = off_1024721D0;
    v4[52] = off_1024721D0;
    v4[41] = off_1024721D0;
    *v4 = off_1024721D0;
    v2 -= 1104;
    v1 -= 1104;
    v3 += 1104;
  }

  while (v3);
  return sub_1007ECD0C(a1);
}

void sub_1007ECEBC(void ***a1)
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
        v6 = v4 - 56;
        v7 = (v4 - 40);
        sub_1004CA974(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1007ECF68(char **a1, uint64_t a2, _OWORD *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1007ED0F0(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1007ED16C(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_1007ED458(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = v14 - 56;
        v18 = (v14 - 40);
        sub_1004CA974(&v18);
        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_1007ED458(&v16, a2, a2 + v11, v8);
    a1[1] = sub_1007ED1BC(a1, (a2 + v11), a3, a1[1]);
  }
}

void sub_1007ED0F0(char **a1)
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
        v5 = v3 - 56;
        v6 = (v3 - 40);
        sub_1004CA974(&v6);
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

void sub_1007ED16C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1007ED6D8(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1007ED1BC(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
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
      *v4 = *v6;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      sub_1007ED280((v4 + 16), *(v6 + 2), *(v6 + 3), (*(v6 + 3) - *(v6 + 2)) >> 4);
      *(v4 + 40) = *(v6 + 40);
      v6 = (v6 + 56);
      v4 = v11 + 56;
      v11 += 56;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1007ED3C8(v8);
  return v4;
}

uint64_t *sub_1007ED280(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004CA834(result, a4);
  }

  return result;
}

void sub_1007ED2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1004CA974(&a9);
  _Unwind_Resume(a1);
}

void *sub_1007ED308(uint64_t a1, void *a2, void *a3, void *a4)
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
  sub_1007ED390(v7);
  return v4;
}

uint64_t sub_1007ED390(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA930(a1);
  }

  return a1;
}

uint64_t sub_1007ED3C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007ED400(a1);
  }

  return a1;
}

void sub_1007ED400(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 56;
      v4 = (v1 - 40);
      sub_1004CA974(&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_1007ED458(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 24;
    do
    {
      v8 = v7 - 24;
      *a4 = *(v7 - 24);
      if (a4 != (v7 - 24))
      {
        sub_1007ED4E0(a4 + 2, *(v7 - 8), *v7, (*v7 - *(v7 - 8)) >> 4);
      }

      *(a4 + 40) = *(v7 + 16);
      a4 = (a4 + 56);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    return a3;
  }

  return result;
}

void sub_1007ED4E0(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_1007ED620(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1004CA834(a1, v11);
    }

    sub_10028C64C();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_1007ED660(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_100008080(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_1007ED660(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_1007ED308(a1, (a2 + v12), a3, a1[1]);
  }
}

void sub_1007ED620(uint64_t *a1)
{
  if (*a1)
  {
    sub_1004C9BF4(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_1007ED660(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_100008080(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1007ED6D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_1007ED734(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1007ED798(a1, a2);
  }

  return a1;
}

void sub_1007ED77C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ED798(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_1007ED850(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1007ED7E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    v3 = v2 + 112 * a2;
    v4 = v2 + 56;
    __asm { FMOV            V2.2D, #-1.0 }

    v10 = 112 * a2;
    do
    {
      *(v4 + 48) = 0;
      *(v4 - 56) = xmmword_101CA73A0;
      *(v4 - 40) = xmmword_101CA73B0;
      *(v4 - 24) = 0x7FF8000000000000;
      *(v4 - 16) = _Q2;
      *v4 = _Q2;
      *(v4 + 16) = _Q2;
      *(v4 + 32) = _Q2;
      v4 += 112;
      v10 -= 112;
    }

    while (v10);
  }

  else
  {
    v3 = *(result + 8);
  }

  *(result + 8) = v3;
  return result;
}

void sub_1007ED850(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1007ED8AC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 4) >= a2)
  {

    sub_1007ED7E8(a1, a2);
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x249249249249249)
    {
      sub_10028C64C();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x124924924924924)
    {
      v9 = 0x249249249249249;
    }

    else
    {
      v9 = v8;
    }

    v17 = a1;
    if (v9)
    {
      sub_1007ED850(a1, v9);
    }

    v14 = 0;
    v15 = 112 * v6;
    v16 = (112 * v6);
    sub_1007EDA60(&v14, a2);
    v10 = *(a1 + 8) - *a1;
    v11 = v15 - v10;
    memcpy((v15 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    v13 = *(a1 + 16);
    *(a1 + 8) = v16;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v14 = v12;
    v15 = v12;
    if (v12)
    {
      operator delete(v12);
    }
  }
}

void sub_1007EDA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EDA60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (a2)
  {
    v3 = v2 + 112 * a2;
    v4 = v2 + 56;
    __asm { FMOV            V2.2D, #-1.0 }

    v10 = 112 * a2;
    do
    {
      *(v4 + 48) = 0;
      *(v4 - 56) = xmmword_101CA73A0;
      *(v4 - 40) = xmmword_101CA73B0;
      *(v4 - 24) = 0x7FF8000000000000;
      *(v4 - 16) = _Q2;
      *v4 = _Q2;
      *(v4 + 16) = _Q2;
      *(v4 + 32) = _Q2;
      v4 += 112;
      v10 -= 112;
    }

    while (v10);
  }

  else
  {
    v3 = *(result + 16);
  }

  *(result + 16) = v3;
  return result;
}

char *sub_1007EDAC8(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 4) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 4);
    if (v12 > 0x249249249249249)
    {
      sub_10028C64C();
    }

    v13 = __dst - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_1007ED850(a1, v15);
    }

    v39 = 16 * (v13 >> 4);
    v40 = 112 * a5;
    v41 = (v39 + 112 * a5);
    v42 = v39;
    do
    {
      v43 = *v7;
      v44 = *(v7 + 2);
      v42[1] = *(v7 + 1);
      v42[2] = v44;
      *v42 = v43;
      v45 = *(v7 + 3);
      v46 = *(v7 + 4);
      v47 = *(v7 + 6);
      v42[5] = *(v7 + 5);
      v42[6] = v47;
      v42[3] = v45;
      v42[4] = v46;
      v42 += 7;
      v7 += 112;
      v40 -= 112;
    }

    while (v40);
    memcpy(v41, v5, a1[1] - v5);
    v48 = *a1;
    v49 = &v41[a1[1] - v5];
    a1[1] = v5;
    v50 = v5 - v48;
    v51 = (v39 - (v5 - v48));
    memcpy(v51, v48, v50);
    v52 = *a1;
    *a1 = v51;
    a1[1] = v49;
    a1[2] = 0;
    if (v52)
    {
      operator delete(v52);
    }

    return v39;
  }

  v16 = v10 - __dst;
  if (0x6DB6DB6DB6DB6DB7 * ((v10 - __dst) >> 4) >= a5)
  {
    v31 = &__dst[112 * a5];
    v32 = (v10 - 112 * a5);
    v33 = a1[1];
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[2];
      v33[1] = v32[1];
      v33[2] = v35;
      *v33 = v34;
      v36 = v32[3];
      v37 = v32[4];
      v38 = v32[6];
      v33[5] = v32[5];
      v33[6] = v38;
      v33[3] = v36;
      v33[4] = v37;
      v32 += 7;
      v33 += 7;
    }

    a1[1] = v33;
    if (v10 != v31)
    {
      memmove(v31, __dst, v10 - v31 - 7);
    }

    v30 = 112 * a5 - 7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(a1[1], &__src[v16], v18 - 7);
  }

  v19 = (v10 + v18);
  a1[1] = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[112 * a5];
    v21 = v10 + v18;
    if (&v19[-112 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -112 * a5];
      do
      {
        v24 = (v22 - v7);
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 32);
        v24[1] = *(v23 - v7 + 16);
        v24[2] = v26;
        *v24 = v25;
        v27 = *(v23 - v7 + 48);
        v28 = *(v23 - v7 + 64);
        v29 = *(v23 - v7 + 96);
        v24[5] = *(v23 - v7 + 80);
        v24[6] = v29;
        v24[3] = v27;
        v24[4] = v28;
        v23 += 112;
        v22 += 112;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    a1[1] = v21;
    if (v19 != v20)
    {
      memmove(v20, v5, v19 - v20 - 7);
    }

    v30 = v16 - 7;
LABEL_28:
    memmove(v5, v7, v30);
  }

  return v5;
}

uint64_t *sub_1007EDDB0(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 4) < a4)
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

    if (a4 <= 0x249249249249249)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x124924924924924)
      {
        v11 = 0x249249249249249;
      }

      else
      {
        v11 = v10;
      }

      sub_1007ED798(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 4) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 7);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 7);
      v12 = v6[1];
    }

    v15 = (a3 - v14);
    if (a3 != v14)
    {
      result = memmove(v12, v14, (v15 - 7));
    }

    v16 = &v15[v12];
  }

  v6[1] = v16;
  return result;
}

uint64_t sub_1007EDF28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

uint64_t sub_1007EE034(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v25 = a1;
  if (v6)
  {
    sub_1007EE1B4(a1, v6);
  }

  v7 = 176 * v2;
  v22 = 0;
  v23 = v7;
  *(&v24 + 1) = 0;
  v8 = *(a2 + 8);
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 32);
  *(176 * v2 + 0x10) = *(a2 + 16);
  *(176 * v2 + 0x20) = v9;
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 96);
  *(176 * v2 + 0x50) = *(a2 + 80);
  *(176 * v2 + 0x60) = v12;
  *(176 * v2 + 0x30) = v10;
  *(176 * v2 + 0x40) = v11;
  v13 = *(a2 + 112);
  v14 = *(a2 + 128);
  v15 = *(a2 + 144);
  *(176 * v2 + 0x9C) = *(a2 + 156);
  *(176 * v2 + 0x80) = v14;
  *(176 * v2 + 0x90) = v15;
  *(176 * v2 + 0x70) = v13;
  *&v24 = v7 + 176;
  v16 = a1[1];
  v17 = (v7 + *a1 - v16);
  sub_1007EE210(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_1007EE360(&v22);
  return v21;
}

void sub_1007EE1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007EE360(va);
  _Unwind_Resume(a1);
}

void sub_1007EE1B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1007EE210(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v19 = a4;
  v18 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 96);
      v9 = *(v6 + 48);
      v8 = *(v6 + 64);
      a4[5] = *(v6 + 80);
      a4[6] = v7;
      a4[3] = v9;
      a4[4] = v8;
      v11 = *(v6 + 128);
      v10 = *(v6 + 144);
      v12 = *(v6 + 112);
      *(a4 + 156) = *(v6 + 156);
      a4[8] = v11;
      a4[9] = v10;
      a4[7] = v12;
      v13 = *(v6 + 32);
      a4[1] = *(v6 + 16);
      a4[2] = v13;
      v6 += 176;
      a4 += 11;
    }

    while (v6 != a3);
    v19 = a4;
    v17 = 1;
    while (v5 != a3)
    {
      v14 = *(v5 + 8);
      if (v14)
      {
        sub_100008080(v14);
      }

      v5 += 176;
    }
  }

  return sub_1007EE2E4(v16);
}

uint64_t sub_1007EE2E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007EE31C(a1);
  }

  return a1;
}

void sub_1007EE31C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 168);
    if (v3)
    {
      sub_100008080(v3);
    }

    v1 -= 176;
  }
}

void **sub_1007EE360(void **a1)
{
  sub_1007EE394(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007EE394(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 176;
    v4 = *(v1 - 168);
    if (v4)
    {
      sub_100008080(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 176;
    }
  }
}

void sub_1007EE3E8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007EE43C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007EE43C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 176)
  {
    v4 = *(i - 168);
    if (v4)
    {
      sub_100008080(v4);
    }
  }

  a1[1] = v2;
}

uint64_t *sub_1007EE4B8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004CA834(result, a4);
  }

  return result;
}

void sub_1007EE520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1004CA974(&a9);
  _Unwind_Resume(a1);
}

void *sub_1007EE540(uint64_t a1, void *a2, void *a3, void *a4)
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
  sub_1007EE5C8(v7);
  return v4;
}

uint64_t sub_1007EE5C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA930(a1);
  }

  return a1;
}

char *sub_1007EE600(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v7 = __src;
    v9 = a1[1];
    v10 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 4) >= a5)
    {
      v16 = v9 - __dst;
      if (0x6DB6DB6DB6DB6DB7 * ((v9 - __dst) >> 4) >= a5)
      {
        v25 = &__dst[112 * a5];
        v26 = &v9[-112 * a5];
        v27 = a1[1];
        while (v26 < v9)
        {
          v28 = *v26;
          v29 = *(v26 + 2);
          v27[1] = *(v26 + 1);
          v27[2] = v29;
          *v27 = v28;
          v30 = *(v26 + 3);
          v31 = *(v26 + 4);
          v32 = *(v26 + 6);
          v27[5] = *(v26 + 5);
          v27[6] = v32;
          v27[3] = v30;
          v27[4] = v31;
          v26 += 112;
          v27 += 7;
        }

        a1[1] = v27;
        if (v9 != v25)
        {
          memmove(v25, __dst, v9 - v25 - 7);
        }

        v41 = 112 * a5 - 7;
      }

      else
      {
        v17 = &__src[v16];
        v18 = a1[1];
        v19 = v18;
        while (v17 != a4)
        {
          v20 = *v17;
          v21 = *(v17 + 2);
          *(v19 + 1) = *(v17 + 1);
          *(v19 + 2) = v21;
          *v19 = v20;
          v22 = *(v17 + 3);
          v23 = *(v17 + 4);
          v24 = *(v17 + 6);
          *(v19 + 5) = *(v17 + 5);
          *(v19 + 6) = v24;
          *(v19 + 3) = v22;
          *(v19 + 4) = v23;
          v17 += 112;
          v19 += 112;
          v18 += 112;
        }

        a1[1] = v18;
        if (v16 < 1)
        {
          return v5;
        }

        v33 = &__dst[112 * a5];
        v34 = &v18[-112 * a5];
        v35 = v18;
        while (v34 < v9)
        {
          v36 = *v34;
          v37 = *(v34 + 2);
          *(v35 + 1) = *(v34 + 1);
          *(v35 + 2) = v37;
          *v35 = v36;
          v38 = *(v34 + 3);
          v39 = *(v34 + 4);
          v40 = *(v34 + 6);
          *(v35 + 5) = *(v34 + 5);
          *(v35 + 6) = v40;
          *(v35 + 3) = v38;
          *(v35 + 4) = v39;
          v34 += 112;
          v35 += 112;
        }

        a1[1] = v35;
        if (v19 != v33)
        {
          memmove(&__dst[112 * a5], __dst, v18 - v33 - 7);
        }

        v41 = v16 - 7;
      }

      memmove(v5, v7, v41);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * (&v9[-*a1] >> 4);
    if (v12 > 0x249249249249249)
    {
      sub_10028C64C();
    }

    v13 = __dst - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_1007ED850(a1, v15);
    }

    v42 = 16 * (v13 >> 4);
    v43 = 112 * a5;
    v44 = (v42 + 112 * a5);
    v45 = v42;
    do
    {
      v46 = *v7;
      v47 = *(v7 + 2);
      v45[1] = *(v7 + 1);
      v45[2] = v47;
      *v45 = v46;
      v48 = *(v7 + 3);
      v49 = *(v7 + 4);
      v50 = *(v7 + 6);
      v45[5] = *(v7 + 5);
      v45[6] = v50;
      v45[3] = v48;
      v45[4] = v49;
      v45 += 7;
      v7 += 112;
      v43 -= 112;
    }

    while (v43);
    memcpy(v44, v5, a1[1] - v5);
    v51 = *a1;
    v52 = &v44[a1[1] - v5];
    a1[1] = v5;
    v53 = v5 - v51;
    v54 = (v42 - (v5 - v51));
    memcpy(v54, v51, v53);
    v55 = *a1;
    *a1 = v54;
    a1[1] = v52;
    a1[2] = 0;
    if (v55)
    {
      operator delete(v55);
    }

    return v42;
  }

  return v5;
}

uint64_t *sub_1007EE8E0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **sub_1007EE9C0(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_1007EEA40(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_1007EEA40(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, void *a4)
{
  v4 = *sub_1007EEAD8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1007EEAD8(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 28), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 28) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 28))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_1007EEC80(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_1007EA420(a1, v4, a2, a2);
      a2 += 16;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

void *sub_1007EED00(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_10047CC44(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 32) = *(v9 + 32);
          v8[5] = v9[5];
          sub_1007EEE6C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_10047CC44(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10047CC98(&v12);
  }

  if (a2 != a3)
  {
    sub_1007EEEDC(v5, a2 + 2);
  }

  return result;
}

void sub_1007EEE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10047CC98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EEE6C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 32))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_10002393C(a1, v3, v5, a2);
  return a2;
}

void *sub_1007EEF80(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_10047CC44(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 28) = *(v9 + 28);
          *(v8 + 8) = *(v9 + 8);
          sub_1007EF0EC(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_10047CC44(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10047CC98(&v12);
  }

  if (a2 != a3)
  {
    sub_1007EF15C(v5, (a2 + 28));
  }

  return result;
}

void sub_1007EF0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10047CC98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EF0EC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 28))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_10002393C(a1, v3, v5, a2);
  return a2;
}

uint64_t *sub_1007EF200(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1007EF340(uint64_t a1, const char *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024723D0;
  sub_100C2EC04(a1 + 24, a2);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = a1 + 296;
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 336) = 0xBFF0000000000000;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  return a1;
}

void sub_1007EF3F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024723D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007EF444(uint64_t a1)
{
  v3 = (a1 + 352);
  sub_1004CA974(&v3);
  sub_1007EF670(a1 + 312, *(a1 + 320));
  sub_1007EF6E0(a1 + 288, *(a1 + 296));
  sub_1007EF6E0(a1 + 264, *(a1 + 272));
  sub_100D8D8D0((a1 + 256));
  return sub_1007EF4B4(a1 + 24);
}

uint64_t sub_1007EF4B4(uint64_t a1)
{
  if (*(a1 + 88))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_1019401D8();
    }

    v2 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGCZ,destroy geocodec malloc zone,~CLGeoMapGeometry()", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194013C(buf);
      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 0, "CLGCZ,destroy geocodec malloc zone,~CLGeoMapGeometry()", v8, 2);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 2, "CLGeoMapGeometry::~CLGeoMapGeometry()", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    GEOResetGeoCodecsAllocator();

    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {

    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {

    *(a1 + 104) = 0;
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_10053700C(a1);
  return a1;
}

void sub_1007EF664(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1007EF670(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1007EF670(a1, *a2);
    sub_1007EF670(a1, *(a2 + 1));
    v4 = (a2 + 80);
    sub_1004CA974(&v4);
    v4 = (a2 + 56);
    sub_1004CA974(&v4);
    operator delete(a2);
  }
}

void sub_1007EF6E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007EF6E0(a1, *a2);
    sub_1007EF6E0(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete(a2);
  }
}

void sub_1007EF790(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007EF858(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102472490;
  v3 = *a2;
  sub_100FF77B0(a1 + 24);
  *(a1 + 24) = off_1024D54C0;
  *(a1 + 2672) = v3;
  return a1;
}

void sub_1007EF8F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007EF974(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10118E5EC(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  *a1 = off_1024D4280;
  sub_10018D404(a1 + 2208);
  *(a1 + 2264) = 0;
  *(a1 + 2248) = 0u;
  *(a1 + 2272) = 0xBFF0000000000000;
  return a1;
}

uint64_t sub_1007EFA34(uint64_t a1)
{
  *a1 = off_1024724E0;
  v2 = *(a1 + 2176);
  if (v2)
  {
    *(a1 + 2184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2088);
  *(a1 + 2088) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 2080);
  *(a1 + 2080) = 0;
  if (v4)
  {
    v15 = (v4 + 232);
    sub_1004CA974(&v15);
    sub_1007EF4B4(v4);
    operator delete();
  }

  v15 = (a1 + 1928);
  sub_1002540F4(&v15);
  v15 = (a1 + 1904);
  sub_1002540F4(&v15);
  v15 = (a1 + 1880);
  sub_1007EFC3C(&v15);
  v5 = *(a1 + 1840);
  if (v5)
  {
    *(a1 + 1848) = v5;
    operator delete(v5);
  }

  sub_10004FF5C((a1 + 1808));
  sub_10004FF5C((a1 + 1784));
  if (*(a1 + 1431) < 0)
  {
    operator delete(*(a1 + 1408));
  }

  v6 = *(a1 + 1176);
  if (v6)
  {
    *(a1 + 1184) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 1096);
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1001FB750((a1 + 1040));
  v8 = *(a1 + 1000);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  v9 = *(a1 + 472);
  if (v9)
  {
    *(a1 + 480) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 392);
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(a1 + 352);
  if (v11)
  {
    *(a1 + 360) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 272);
  if (v12)
  {
    sub_100008080(v12);
  }

  v15 = (a1 + 240);
  sub_100253CCC(&v15);
  v13 = *(a1 + 216);
  if (v13)
  {
    sub_100008080(v13);
  }

  return a1;
}

void sub_1007EFBF0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 264)
  {
    v4 = *(i - 48);
    if (v4)
    {
      sub_100008080(v4);
    }
  }

  a1[1] = v2;
}

void sub_1007EFC3C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1002540A8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007EFC90(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    sub_100008080(v3);
  }
}

uint64_t sub_1007EFD40(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102472578;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 32) = sub_1000081AC();
  return a1;
}

void sub_1007EFDC8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_1007EFE24(float32x2_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  sub_1007EFEAC(a1, a2, a3);
  v7 = a1->u16[3];
  if (v7 >= 0x100)
  {
    v8 = *(a2 + 48);
    *a4 = v8;
    memset(v10, 0, sizeof(v10));
    sub_1007F0080(a1, v10, v8);
    *(a4 + 8) = sub_100D09EE4(&a1[407], v10);
    *(a4 + 12) = sub_100D0A54C(v10);
  }

  return v7 > 0xFF;
}

float32_t sub_1007EFEAC(float32x2_t *a1, uint64_t a2, _DWORD *a3)
{
  v6 = sub_10011E6AC(a2);
  v8 = v7;
  v10 = v9;
  v29 = *(a2 + 16);
  v30 = *(a2 + 24);
  sub_100AEA7C8(a2, v25);
  v26 = sub_1010BD498(v25);
  v27 = v11;
  v28 = v12;
  v13 = v29;
  v14 = v30;
  v15 = sub_1007F0208(a1, a2);
  v16 = 0;
  v17 = 0.0;
  do
  {
    v17 = v17 + (*(&v29 + v16) * *(&v29 + v16));
    v16 += 4;
  }

  while (v16 != 12);
  v18 = sqrtf(v17);
  v19 = -v6;
  if (*a3 == a3[1])
  {
    v19 = v6;
  }

  v24 = v19;
  v20 = ((v8 * *(&v13 + 1)) + (v6 * *&v13)) + (v10 * v14);
  sub_10065CF38(a1 + 2, &v26);
  LODWORD(v21) = v27;
  a1[386].f32[0] = v26 + a1[386].f32[0];
  ++*&a1[387];
  a1[388].f32[0] = *&v21 + a1[388].f32[0];
  ++*&a1[389];
  a1[390].f32[0] = v28 + a1[390].f32[0];
  ++*&a1[391];
  a1[392].f32[0] = v18 + a1[392].f32[0];
  ++*&a1[393];
  a1[396].f32[0] = fabsf(v15) + a1[396].f32[0];
  ++*&a1[397];
  a1[394].f32[0] = fabsf(v20) + a1[394].f32[0];
  ++*&a1[395];
  *&v22 = v15;
  sub_1007F02B0(a1 + 400, v22, -v20, v21);
  result = v24 + a1[398].f32[0];
  a1[398].f32[0] = result;
  ++*&a1[399];
  return result;
}

void sub_1007F0080(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  sub_1007F048C();
  v22 = __PAIR64__(v6, v5);
  v23 = v7;
  v8 = sub_1007F035C((a1 + 4), &v22, v25);
  v10 = 0;
  *v24 = v8;
  v24[1] = v11;
  *&v24[2] = v9;
  v12 = 0.0;
  do
  {
    v13 = *&v24[v10];
    if (v13 < 0.0)
    {
      v13 = -v13;
    }

    v12 = v12 + v13;
    ++v10;
  }

  while (v10 != 3);
  *(a2 + 24) = (1.0 - (fabsf(v9) / v12)) * 100.0;
  *(a1 + 4) = 0;
  *(a1 + 3088) = 0;
  *(a1 + 3096) = 0;
  *(a1 + 3104) = 0;
  *(a1 + 3112) = 0;
  *(a1 + 3120) = 0;
  *(a1 + 3128) = 0;
  v14 = *(a1 + 3144);
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    v16 = *(a1 + 3136) / v14;
  }

  *(a2 + 8) = v16;
  *(a1 + 3136) = 0;
  *(a1 + 3144) = 0;
  v17 = *(a1 + 3176);
  if (v17)
  {
    v15 = *(a1 + 3168) / v17;
  }

  *(a2 + 16) = v15;
  *(a1 + 3168) = 0;
  *(a1 + 3176) = 0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = *(a1 + 3160);
  if (v20)
  {
    v19 = *(a1 + 3152) / v20;
  }

  *(a2 + 12) = v19;
  *(a1 + 3152) = 0;
  *(a1 + 3160) = 0;
  *(a2 + 20) = fabsf(sub_1007F04DC(a1 + 3200));
  *(a1 + 3248) = 0;
  *(a1 + 3200) = 0u;
  *(a1 + 3216) = 0u;
  *(a1 + 3228) = 0u;
  v21 = *(a1 + 3192);
  if (v21)
  {
    v18 = *(a1 + 3184) / v21;
  }

  *(a2 + 28) = v18;
  *(a1 + 3184) = 0;
  *(a1 + 3192) = 0;
}

float sub_1007F0208(float *a1, float *a2)
{
  if ((atomic_load_explicit(byte_102659FE8, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    sub_1019401EC();
    a2 = v14;
  }

  v4 = a2[8];
  v3 = a2[9];
  v5 = a2[7];
  v6 = (v4 * *&dword_102659FF8) - (v3 * *(&qword_102659FF0 + 1));
  v7 = (v3 * *&qword_102659FF0) - (v5 * *&dword_102659FF8);
  v8 = (v5 * *(&qword_102659FF0 + 1)) - (v4 * *&qword_102659FF0);
  v9 = sub_10011E6AC(a2);
  v12 = -(((v7 * v10) + (v9 * v6)) + (v11 * v8));
  result = v12 - *a1;
  *a1 = v12;
  return result;
}

float32_t sub_1007F02B0(float32x2_t *a1, double a2, float a3, double a4)
{
  LODWORD(a4) = a1[1].i32[0];
  v4 = *&a2 - *&a4;
  v5 = *a1 + 1;
  *&a4 = *&a4 + ((*&a2 - *&a4) / v5);
  v6 = a1[1].f32[1] + (v4 * (*&a2 - *&a4));
  v7 = a1[3].f32[0];
  v8 = a3 - v7;
  v9 = *&a1[2] + 1;
  v10 = v7 + ((a3 - v7) / v9);
  v11 = a1[3].f32[1] + (v8 * (a3 - v10));
  *a1 = v5;
  a1[1].i32[0] = LODWORD(a4);
  a1[1].f32[1] = v6;
  a1[2] = v9;
  a1[3].f32[0] = v10;
  a1[3].f32[1] = v11;
  v12 = *&a1[6] + 1;
  a1[6] = v12;
  *&a4 = v12;
  v13 = a1[4];
  *(&a2 + 1) = a3;
  _D0 = vdiv_f32(vsub_f32(*&a2, v13), vdup_lane_s32(*&a4, 0));
  a1[4] = vadd_f32(v13, _D0);
  _S1 = (v12 + -1.0) * _D0.f32[0];
  __asm { FMLA            S2, S1, V0.S[1] }

  result = a1[5].f32[0] + _S2;
  a1[5].f32[0] = result;
  return result;
}

float32_t sub_1007F035C(unsigned __int16 *a1, float32x2_t *a2, uint64_t a3)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  if (a1[1])
  {
    v6 = 0;
    do
    {
      v7 = sub_10065D088(a1, v6);
      v8 = v7[1].f32[0] - a2[1].f32[0];
      v18 = vsub_f32(*v7, *a2);
      v19 = v8;
      sub_1007D5ED8(&v18, v16);
      v9 = 0;
      do
      {
        *(&v13 + v9) = sub_1007D5F60(v16, v9) + *(&v13 + v9);
        ++v9;
      }

      while (v9 != 9);
      ++v6;
    }

    while (v6 < a1[1]);
  }

  v16[0] = v13;
  v16[1] = v14;
  v17 = v15;
  v18.i32[0] = sub_1007D5F9C(v16, a3);
  v18.i32[1] = v10;
  v19 = v11;
  *&v16[0] = &v18;
  *(&v16[0] + 1) = a3;
  sub_1007D6564(v16, 0, 1uLL);
  sub_1007D6564(v16, 0, 2uLL);
  sub_1007D6564(v16, 1uLL, 2uLL);
  return v18.f32[0];
}

float sub_1007F04DC(uint64_t a1)
{
  v1 = 0.0;
  v2 = 0.0;
  if (*a1 >= 2uLL)
  {
    v2 = *(a1 + 12) / (*a1 - 1);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v1 = *(a1 + 28) / (v3 - 1);
  }

  v4 = v2 * v1;
  result = 0.0;
  if (v4 > 0.0)
  {
    v6 = *(a1 + 48);
    if (v6 >= 2)
    {
      result = (v6 / (v6 + -1.0)) * *(a1 + 40);
    }

    return result / sqrtf(v4);
  }

  return result;
}

void *sub_1007F055C(void *a1)
{
  *a1 = 0;
  v2 = dispatch_queue_create("com.apple.CoreMotion.CLPressureBiasProxy", 0);
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = v2;
  return a1;
}

uint64_t sub_1007F059C(uint64_t a1)
{
  dispatch_release(*(a1 + 8));
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  sub_1007F08A8(a1, 0);
  return a1;
}

void sub_1007F05F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007F0668;
  block[3] = &unk_102449A78;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void sub_1007F0668(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    operator new();
  }
}

void sub_1007F0838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

CLConnectionClient *sub_1007F08A8(CLConnectionClient **a1, CLConnectionClient *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CLConnectionClient::~CLConnectionClient(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1007F08F4(uint64_t a1, CLConnectionMessage **a2)
{
  v2 = *(a1 + 32);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_100005548(v13, Dictionary);
  if (*(v2 + 16) && *(v2 + 24) && !sub_1004FEEE8(v13) && sub_100C71A60(v12, v13))
  {
    v4 = *(v2 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007F0B18;
    block[3] = &unk_1024725B8;
    block[4] = v2;
    v11[0] = *v12;
    *(v11 + 13) = *&v12[13];
    dispatch_async(v4, block);
  }

  else
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194024C();
    }

    v5 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Bad pressure bias from daemon.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101940274(buf);
      v9 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4318, 16, "Bad pressure bias from daemon.", &v9, 2);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 0, "void CLPressureBiasProxy::start()_block_invoke", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return sub_100005DA4();
}

void sub_1007F0B34(uint64_t a1)
{
  v1 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007F0BA8;
  block[3] = &unk_102449A78;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void sub_1007F0BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007F0C2C;
  block[3] = &unk_1024725E0;
  block[5] = a3;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v3, block);
}

void sub_1007F0C2C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  *(v2 + 24) = _Block_copy(*(a1 + 40));
  v4 = *(v2 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 32);
  *(v2 + 16) = v5;

  dispatch_retain(v5);
}

void *sub_1007F0D30(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1007F0D8C((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_1007F0D8C(uint64_t a1, char *a2, void *a3)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_1007F0DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F0E00(void *a1, void *a2)
{
  *a1 = off_102472630;
  a1[3] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  sub_1007F2DF8(a1 + 11, 0, 0);
  a1[17] = 0;
  a1[18] = 0;
  a1[4] = a2;
  if (qword_1025D4270 != -1)
  {
    sub_1019402B8();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Calculating coefficients", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019402CC(buf);
    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 1, "CMEllipticalAlgorithm: Calculating coefficients", v7, 2);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "CMEllipticalAlgorithm::CMEllipticalAlgorithm(dispatch_queue_t, std::function<void (CMPedEntry)>)", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  sub_1007F10C0(buf);
  operator new();
}

void sub_1007F1038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  sub_1003EE180(v14 + 11);
  v16 = v14[10];
  if (v16)
  {
    sub_100008080(v16);
  }

  sub_1004F80B4((v14 + 5));
  v17 = v14[3];
  v14[3] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1007F10C0(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = 0.0;
  v3 = -62;
  a1[2] = 0;
  do
  {
    sub_1010BDB10(v3 * 0.14);
    v5 = v4 * ((cosf((v3 + 62) * 0.050671) * -0.46) + 0.54);
    v6 = v5;
    v8 = a1[1];
    v7 = a1[2];
    if (v8 >= v7)
    {
      v10 = *a1;
      v11 = v8 - *a1;
      v12 = v11 >> 2;
      v13 = (v11 >> 2) + 1;
      if (v13 >> 62)
      {
        sub_10028C64C();
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
        sub_1000B85D0(a1, v15);
      }

      *(4 * v12) = v6;
      v9 = (4 * v12 + 4);
      memcpy(0, v10, v11);
      v16 = *a1;
      *a1 = 0;
      a1[1] = v9;
      a1[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v8 = v6;
      v9 = v8 + 1;
    }

    a1[1] = v9;
    v2 = v2 + v5;
    ++v3;
  }

  while (v3 != 63);
  v17 = 0;
  v18 = *a1;
  do
  {
    v19 = *&v18[v17] / v2;
    *&v18[v17] = v19;
    v17 += 4;
  }

  while (v17 != 500);
}

void sub_1007F1260(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F1288(uint64_t a1)
{
  *a1 = off_102472630;

  sub_1003EE180((a1 + 88));
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_1004F80B4(a1 + 40);
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1007F1324(uint64_t a1)
{
  sub_1007F1288(a1);

  operator delete();
}

void sub_1007F135C(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    if (qword_1025D4270 != -1)
    {
      sub_1019402B8();
    }

    v1 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Algorithm Started", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940310();
    }

    v3 = 19;
    strcpy(__p, "EllipticalAlgorithm");
    operator new();
  }
}

unint64_t *sub_1007F14F4(unint64_t *result)
{
  if (result[3])
  {
    v1 = result;
    sub_1007F3374(result + 11, 0, 0);
    v1[17] = 0;
    *(v1 + 36) = 0;
    if (qword_1025D4270 != -1)
    {
      sub_1019402B8();
    }

    v2 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Algorithm Stopped and hard reset of all values", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019403F4();
    }

    *(v1 + 37) = 0;
    result = v1[3];
    v1[3] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_1007F15E4(uint64_t a1, double a2, double a3)
{
  sub_1000A69D8(*(a1 + 24), 0, &v69, a2 + -2.55999994, a2);
  *buf = 4;
  sub_1003DD9F8(v69, buf);
  *buf = 4;
  v5 = sub_1003DD9F8(v69, buf);
  v6 = *v5;
  v7 = v5[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v72;
  if (v72)
  {
    if (v72 == 1 && (*(v5 + 33) & 1) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (qword_1025D45A0 != -1)
    {
      sub_1019405E4();
    }

    v12 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      *&buf[4] = 4;
      *&buf[8] = 1024;
      *&buf[10] = v72;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019405A0(buf);
      v73 = 67109376;
      *v74 = 4;
      *&v74[4] = 1024;
      *&v74[6] = v72;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", &v73, 14);
      v51 = v50;
      sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::AccessoryFitnessDM, T = CMEllipticalAlgorithm::AccessoryDMType, Strategy = AccessoryDMConverter]", "%s\n", v50);
      if (v51 != buf)
      {
        free(v51);
      }
    }

    __src = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_70;
  }

  if ((v5[4] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v6)
  {
    v10 = v9;
    *&v11 = 0.0;
    if (v7 && v9)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v72;
      v11 = v7;
    }
  }

  else
  {
    v10 = 0;
    *&v11 = 0.0;
  }

  v14 = v70;
  v13 = v71;
  if (v71 < v70)
  {
    __src = 0;
    v67 = 0;
    v68 = 0;
    if (*&v11 != 0.0)
    {
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  v15 = vabdd_f64(v71, v70);
  v16 = v15 * 1.00999999 * 50.0;
  if (v16 >= 0x200)
  {
    v17 = 512;
  }

  else
  {
    v17 = v16;
  }

  __src = 0;
  v67 = 0;
  v68 = 0;
  sub_1007F36C0(&__src, v17);
  if (!v10[49])
  {
    goto LABEL_68;
  }

  v61 = *&v11;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  while (1)
  {
    v23 = (v8 ? sub_1004F7CF0(v10 + 48, v18) + 4 : sub_1004F7CF0(v10 + 48, v18));
    v24 = *v23;
    if (*v23 >= v14)
    {
      break;
    }

LABEL_50:
    ++v18;
    v43 = v10[49];
    if (v18 >= v43)
    {
      goto LABEL_53;
    }
  }

  if (v24 <= v13)
  {
    if (v24 >= v14 && v24 < v13)
    {
      if ((v19 & 1) == 0)
      {
        v20 = v18;
        v19 = 1;
      }

      v26 = sub_1004F7CF0(v10 + 48, v18);
      v27.i64[0] = *v26;
      v28 = *(v26 + 1);
      v29 = *(v26 + 3);
      HIDWORD(v28) = v29.i32[0];
      *&buf[8] = v28;
      *buf = v27.i64[0];
      *&buf[24] = vext_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL), 4uLL);
      *v83 = v29.i32[3];
      sub_10011E648(&buf[20], v27);
      v30 = v67;
      if (v67 >= v68)
      {
        v34 = __src;
        v35 = v67 - __src;
        v36 = 0xCCCCCCCCCCCCCCCDLL * ((v67 - __src) >> 3);
        v37 = v36 + 1;
        if (v36 + 1 > 0x666666666666666)
        {
          sub_10028C64C();
        }

        if (0x999999999999999ALL * ((v68 - __src) >> 3) > v37)
        {
          v37 = 0x999999999999999ALL * ((v68 - __src) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v68 - __src) >> 3) >= 0x333333333333333)
        {
          v37 = 0x666666666666666;
        }

        if (v37)
        {
          sub_100400700(&__src, v37);
        }

        v38 = 8 * ((v67 - __src) >> 3);
        v39 = *buf;
        v40 = *&buf[16];
        *(v38 + 32) = *v83;
        *v38 = v39;
        *(v38 + 16) = v40;
        v33 = (40 * v36 + 40);
        v41 = (v38 - v35);
        memcpy((v38 - v35), v34, v35);
        v42 = __src;
        __src = v41;
        v67 = v33;
        v68 = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        v31 = *buf;
        v32 = *&buf[16];
        *(v67 + 4) = *v83;
        *v30 = v31;
        v30[1] = v32;
        v33 = (v30 + 40);
      }

      v67 = v33;
      v21 = 1;
      v22 = v18;
    }

    goto LABEL_50;
  }

  LODWORD(v43) = v10[49];
LABEL_53:
  *&v11 = v61;
  if (!v43)
  {
    goto LABEL_68;
  }

  v44 = (v15 * 50.0) + 858993459 * ((v67 - __src) >> 3);
  if (v44 < 0)
  {
    v44 = -v44;
  }

  if (v44 <= (v15 * 0.0500000007 * 50.0))
  {
    goto LABEL_68;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1019405E4();
  }

  v45 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    if (v19)
    {
      v46 = v20;
    }

    else
    {
      v46 = 0;
    }

    v47 = *sub_1004F7CF0(v10 + 48, v46);
    if (v21)
    {
      v48 = v22;
    }

    else
    {
      v48 = 0;
    }

    v49 = *sub_1004F7CF0(v10 + 48, v48);
    *buf = 134219008;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    *&buf[22] = 2048;
    *&buf[24] = v47;
    *v83 = 2048;
    *&v83[2] = v49;
    v84 = 2048;
    v85 = 0xCCCCCCCCCCCCCCCDLL * ((v67 - __src) >> 3);
    _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "#Warning, accessory dm returning unexpected size, requested, start, %f, end, %f, returned, start, %f, end, %f, size, %ld", buf, 0x34u);
  }

  *&v11 = v61;
  if (sub_10000A100(121, 2))
  {
    sub_1019405A0(buf);
    v52 = qword_1025D45A8;
    if (v19)
    {
      v53 = v20;
    }

    else
    {
      v53 = 0;
    }

    v54 = *sub_1004F7CF0(v10 + 48, v53);
    if (v21)
    {
      v55 = v22;
    }

    else
    {
      v55 = 0;
    }

    v56 = *sub_1004F7CF0(v10 + 48, v55);
    v73 = 134219008;
    *v74 = v14;
    *&v74[8] = 2048;
    v75 = v13;
    v76 = 2048;
    v77 = v54;
    v78 = 2048;
    v79 = v56;
    v80 = 2048;
    v81 = 0xCCCCCCCCCCCCCCCDLL * ((v67 - __src) >> 3);
    LODWORD(v59) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v52, 0, "#Warning, accessory dm returning unexpected size, requested, start, %f, end, %f, returned, start, %f, end, %f, size, %ld", COERCE_DOUBLE(&v73), v59, v60, v61, __p);
    v58 = v57;
    sub_100152C7C("Generic", 1, 0, 2, "const std::vector<T> CMDataProviderFactoryAccessoryFitnessDM::getDataInRange(CFTimeInterval, CFTimeInterval, TimeBase, Strategy) const [T = CMEllipticalAlgorithm::AccessoryDMType, Strategy = AccessoryDMConverter]", "%s\n", v57);
    if (v58 != buf)
    {
      free(v58);
    }

    v11 = v62;
    if (v62)
    {
LABEL_69:
      sub_100008080(v11);
    }
  }

  else
  {
LABEL_68:
    if (*&v11 != 0.0)
    {
      goto LABEL_69;
    }
  }

LABEL_70:
  if (v7)
  {
    sub_100008080(v7);
  }

  __p = 0;
  v64 = 0;
  v65 = 0;
  sub_1007F2D30(&__p, __src, v67, 0xCCCCCCCCCCCCCCCDLL * ((v67 - __src) >> 3));
  sub_1007F1F08(a1, &__p, a3);
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v67 = __src;
    operator delete(__src);
  }
}

void sub_1007F1D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  if (v32)
  {
    sub_100008080(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F1F08(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5 == v4)
  {
    if (qword_1025D4270 != -1)
    {
      sub_1019402B8();
    }

    v15 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CMEllipticalAlgorithm: No data", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940718();
    }
  }

  else
  {
    v9 = *(a1 + 136);
    if (v9 > 0.0 && *v4 > v9 + 5.0)
    {
      if (qword_1025D4270 != -1)
      {
        sub_1019402B8();
      }

      v10 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: History expired since kDurationExpired was hit", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194060C();
      }

      sub_1007F3374((a1 + 88), 0, 0);
      v5 = *(a2 + 8);
      *(a1 + 136) = *(v5 - 40);
      v4 = *a2;
    }

    v44 = 0;
    v45 = 0;
    __p = 0;
    sub_1007F2D30(&__p, v4, v5, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3));
    sub_1007F25C0(&__p, &v46);
    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    v11 = v46;
    if (v47 == v46)
    {
      v14 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if (*(a1 + 128) > 0x7CuLL)
        {
          break;
        }

        sub_100023E4C((a1 + 88), &v11[v12]);
        ++v13;
        v11 = v46;
        v12 += 4;
      }

      while (v13 < (v47 - v46) >> 2);
      v14 = v13;
    }

    v16 = 0;
    __src = 0;
    v41 = 0;
    v42 = 0;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3) > v14)
    {
      v17 = 4 * v14;
      do
      {
        *(a1 + 120) = vaddq_s64(*(a1 + 120), xmmword_101C66230);
        sub_1000A6D68(a1 + 88, 1);
        sub_100023E4C((a1 + 88), (v46 + v17));
        v18 = sub_1007F2748(a1);
        v19 = v41;
        if (v41 >= v42)
        {
          v20 = __src;
          v21 = v41 - __src;
          v22 = (v41 - __src) >> 2;
          v23 = v22 + 1;
          if ((v22 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v24 = v42 - __src;
          if ((v42 - __src) >> 1 > v23)
          {
            v23 = v24 >> 1;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v25 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            sub_1000B85D0(&__src, v25);
          }

          *(4 * v22) = v18;
          v16 = (4 * v22 + 4);
          memcpy(0, v20, v21);
          v26 = __src;
          __src = 0;
          v41 = v16;
          v42 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v41 = v18;
          v16 = v19 + 1;
        }

        v41 = v16;
        ++v14;
        v17 += 4;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3) > v14);
    }

    if (*(a1 + 128) < 0x7DuLL || v16 == __src)
    {
      if (qword_1025D4270 != -1)
      {
        sub_1019406F0();
      }

      v28 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "CMEllipticalAlgorithm: Not enough data", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019402CC(buf);
        v39 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "CMEllipticalAlgorithm: Not enough data", &v39, 2);
        v30 = v29;
        sub_100152C7C("Generic", 1, 0, 2, "void CMEllipticalAlgorithm::feedAccessorySamples(std::vector<AccessoryDMType>, CFAbsoluteTime)", "%s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_1019406F0();
      }

      v27 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CMEllipticalAlgorithm: Filtered data and detecting crossings", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019402CC(buf);
        v39 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "CMEllipticalAlgorithm: Filtered data and detecting crossings", &v39, 2);
        v32 = v31;
        sub_100152C7C("Generic", 1, 0, 2, "void CMEllipticalAlgorithm::feedAccessorySamples(std::vector<AccessoryDMType>, CFAbsoluteTime)", "%s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      v36 = 0;
      v37 = 0;
      v38 = 0;
      sub_10038EB38(&v36, __src, v41, (v41 - __src) >> 2);
      v33 = 0;
      v34 = 0;
      v35 = 0;
      sub_1007F2D30(&v33, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
      sub_1007F27F0(a1, &v36, &v33, a3);
      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }
    }

    if (__src)
    {
      v41 = __src;
      operator delete(__src);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }
}

void sub_1007F252C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F25C0(__int128 **a1@<X1>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 16);
      v24 = *(v2 + 32);
      v22 = v5;
      v23 = v6;
      v21[0] = sub_100AEA718((&v23 + 4), v5);
      v21[1] = v7;
      v21[2] = v8;
      v21[3] = v9;
      sub_100AEA7D0(v21, -v22.f32[2], -v22.f32[3], -*&v23);
      v12 = a2[1];
      v11 = a2[2];
      if (v12 >= v11)
      {
        v14 = *a2;
        v15 = v12 - *a2;
        v16 = v15 >> 2;
        v17 = (v15 >> 2) + 1;
        if (v17 >> 62)
        {
          sub_10028C64C();
        }

        v18 = v11 - v14;
        if (v18 >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_1000B85D0(a2, v19);
        }

        *(4 * v16) = v10;
        v13 = (4 * v16 + 4);
        memcpy(0, v14, v15);
        v20 = *a2;
        *a2 = 0;
        a2[1] = v13;
        a2[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v12 = v10;
        v13 = v12 + 4;
      }

      a2[1] = v13;
      v2 += 40;
    }

    while (v2 != v3);
  }
}

void sub_1007F2724(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_1007F2748(uint64_t a1)
{
  v1 = *(a1 + 96);
  result = 0.0;
  if (*(a1 + 104) != v1)
  {
    v3 = *(a1 + 120);
    v4 = (v1 + 8 * (v3 >> 10));
    v5 = (*v4 + 4 * (v3 & 0x3FF));
    v6 = *(v1 + (((*(a1 + 128) + v3) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 128) + v3) & 0x3FF);
    if (v5 != v6)
    {
      v7 = **(a1 + 72);
      v8 = 124;
      do
      {
        if ((*(*(a1 + 72) + 8) - v7) >> 2 <= v8)
        {
          sub_10046F324();
        }

        v9 = *v5++;
        v10 = v9;
        if ((v5 - *v4) == 4096)
        {
          v11 = v4[1];
          ++v4;
          v5 = v11;
        }

        result = result + (v10 * *(v7 + 4 * v8--));
      }

      while (v5 != v6);
    }
  }

  return result;
}

void sub_1007F27F0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 < *(a1 + 144))
  {
    v5 = *(a1 + 144);
  }

  *(a1 + 144) = v5;
  if (*(a2 + 8) - v4 >= 5uLL)
  {
    v9 = 0;
    v10 = 40;
    v11 = a4 + -2.55999994;
    do
    {
      v12 = &v4[v9];
      v13 = v12[1];
      if (v13 < *(a1 + 144))
      {
        v13 = *(a1 + 144);
      }

      *(a1 + 144) = v13;
      if (*v12 < 0.0 && v12[1] > 0.0)
      {
        v14 = *(*a3 + v10);
        v15 = v14 - *(a1 + 136);
        v16 = v15 > 0.300000012 && v15 < 1.0;
        if (v16 && v13 > 0.15)
        {
          if (qword_1025D4270 != -1)
          {
            sub_1019406F0();
          }

          v17 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            v18 = *(*a3 + v10);
            *buf = 134217984;
            *&buf[4] = v18;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Step Detected at timestamp: %f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4270 != -1)
            {
              sub_1019406F0();
            }

            v31 = *(*a3 + v10);
            v37 = 134217984;
            v38 = v31;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 1, "CMEllipticalAlgorithm: Step Detected at timestamp: %f", COERCE_DOUBLE(&v37));
            v33 = v32;
            sub_100152C7C("Generic", 1, 0, 2, "void CMEllipticalAlgorithm::detectCrossing(std::vector<scalar_32>, std::vector<AccessoryDMType>, CFAbsoluteTime)", "%s\n", v32);
            if (v33 != buf)
            {
              free(v33);
            }
          }

          v19 = *(*a3 + v10);
          *(a1 + 8) = v19;
          *(a1 + 16) = *(a1 + 144);
          *(a1 + 136) = v19;
          *(a1 + 144) = 0;
          v20 = *(a1 + 148);
          if (v20 >= 1000001)
          {
            if (qword_1025D4270 != -1)
            {
              sub_1019406F0();
            }

            v21 = qword_1025D4278;
            if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Way too many steps, must be a bug", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019407FC(&v35, v36);
            }

            v20 = 1;
          }

          *(a1 + 148) = v20 + 1;
          *buf = v11 + ((v9 + 1) / 50.0);
          *&buf[8] = 0;
          LOBYTE(v42) = 1;
          *&v43[2] = 0;
          v22 = *(a1 + 64);
          if (!v22)
          {
            sub_1000CF05C();
          }

          (*(*v22 + 48))(v22, buf);
        }

        else
        {
          *(a1 + 136) = v14;
          if (qword_1025D4270 != -1)
          {
            sub_1019406F0();
          }

          v23 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            v24 = *(*a3 + v10) - *(a1 + 136);
            v25 = *(a1 + 144);
            *buf = 134218240;
            *&buf[4] = v24;
            v42 = 2048;
            *v43 = v25;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Duration or amplitude threshold not met, time delta: %f, amplitude: %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4270 != -1)
            {
              sub_1019406F0();
            }

            v27 = *(*a3 + v10) - *(a1 + 136);
            v28 = *(a1 + 144);
            v37 = 134218240;
            v38 = v27;
            v39 = 2048;
            v40 = v28;
            LODWORD(v34) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 1, "CMEllipticalAlgorithm: Duration or amplitude threshold not met, time delta: %f, amplitude: %f", COERCE_DOUBLE(&v37), v34);
            v30 = v29;
            sub_100152C7C("Generic", 1, 0, 2, "void CMEllipticalAlgorithm::detectCrossing(std::vector<scalar_32>, std::vector<AccessoryDMType>, CFAbsoluteTime)", "%s\n", v29);
            if (v30 != buf)
            {
              free(v30);
            }
          }
        }
      }

      v4 = *a2;
      v10 += 40;
      v26 = v9 + 2;
      ++v9;
    }

    while (v26 < (*(a2 + 8) - *a2) >> 2);
  }
}

uint64_t *sub_1007F2D30(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007F2DAC(result, a4);
  }

  return result;
}

void sub_1007F2D90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F2DAC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_100400700(a1, a2);
  }

  sub_10028C64C();
}

unint64_t *sub_1007F2DF8(unint64_t *a1, int *a2, uint64_t a3)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  sub_1007F2E44(a1, a2, (4 * a3) >> 2);
  return a1;
}

void *sub_1007F2E44(unint64_t *a1, int *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 7) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  if (a3 > v10)
  {
    sub_1007F2F68(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 10));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 4 * (v9 & 0x3FF);
    v13 = v12;
  }

  v21[0] = v11;
  v21[1] = v13;
  result = sub_1007F3280(v21, a3);
  if (v12 != v15)
  {
    v16 = a1[5];
    do
    {
      if (v11 == result)
      {
        v17 = v15;
      }

      else
      {
        v17 = *v11 + 4096;
      }

      if (v12 == v17)
      {
        v17 = v12;
      }

      else
      {
        v18 = v12;
        do
        {
          v19 = *a2++;
          *v18++ = v19;
        }

        while (v18 != v17);
      }

      v16 += (v17 - v12) >> 2;
      if (v11 == result)
      {
        break;
      }

      v20 = v11[1];
      ++v11;
      v12 = v20;
    }

    while (v20 != v15);
    a1[5] = v16;
  }

  return result;
}

void sub_1007F2F68(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (a1[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_1003112A0(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_1003EE744(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 10; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_1003112A0(a1, v16);
    }
  }
}

void sub_1007F320C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007F3280(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 2);
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
    }

    else
    {
      result += v4 >> 10;
    }
  }

  return result;
}

void sub_1007F3304(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007F3358(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_1007F3374(unint64_t *a1, char *__src, unint64_t a3)
{
  v5 = a1[5];
  if (v5 >= a3)
  {
    v10 = a1[1];
    v11 = (v10 + 8 * (a1[4] >> 10));
    if (a1[2] == v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11 + 4 * (a1[4] & 0x3FF);
    }

    sub_1007F3554(v14, __src, v12, &__src[4 * a3], v11);
    return sub_1007F3458(a1, v14[1], v14[2]);
  }

  else
  {
    v6 = &__src[4 * v5];
    v7 = a1[1];
    v8 = (v7 + 8 * (a1[4] >> 10));
    if (a1[2] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = *v8 + 4 * (a1[4] & 0x3FF);
    }

    sub_1007F3554(v14, __src, v9, v6, v8);
    return sub_1007F2E44(a1, v6, a3 - a1[5]);
  }
}

uint64_t sub_1007F3458(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 10));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 4 * (v5 & 0x3FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 2) + ((v8 - a2) << 7);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 2);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 10));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 4 * (*(result + 32) & 0x3FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 2) + ((a2 - v13) << 7) - ((v14 - *v13) >> 2);
      }

      sub_1007F3280(v16, v15);
      v3[5] -= v12;
      do
      {
        result = sub_1007F3620(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t *sub_1007F3554@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a4 - v9) >> 2 >= v11 >> 2 ? v11 >> 2 : (a4 - v9) >> 2;
      if (v12)
      {
        __src = memmove(__dst, v9, 4 * v12);
      }

      v9 = (v9 + 4 * v12);
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 4 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_1007F3620(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_1007F36C0(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_100400700(a1, a2);
    }

    sub_10028C64C();
  }
}

void sub_1007F3780()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_1007F37F8()
{
  v1 = 4;
  qword_10265A008 = 0;
  unk_10265A010 = 0;
  qword_10265A000 = 0;
  sub_1004579D4(&qword_10265A000, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_10265A000, dword_100000000);
}

uint64_t sub_1007F386C(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_101CA7B18;
  *(a1 + 32) = unk_101CA7B28;
  *(a1 + 80) = xmmword_101CA7AF0;
  v4 = (a1 + 80);
  *(a1 + 48) = xmmword_101CA7B38;
  *(a1 + 96) = 0x415BAF8000000000;
  v5 = (a1 + 96);
  *(a1 + 60) = *(&xmmword_101CA7B38 + 12);
  *(a1 + 104) = xmmword_101CA7B00;
  v6 = (a1 + 104);
  v7 = sub_100011660(a1, a2);
  sub_100185AC0(v7, buf);
  sub_1000B9370(*buf, "VO2MaxAlertBlackoutDuration", v4);
  v9 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v10 = sub_100011660(v9, v8);
  sub_100185AC0(v10, buf);
  sub_1000B9370(*buf, "VO2MaxRepeatAlertWindow", (a1 + 88));
  v12 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v13 = sub_100011660(v12, v11);
  sub_100185AC0(v13, buf);
  sub_1000B9370(*buf, "VO2MaxAlertHistoricalEstimateWindow", v5);
  v15 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v16 = sub_100011660(v15, v14);
  sub_100185AC0(v16, buf);
  sub_10005BBE4(*buf, "VO2MaxAlertMaxHistoricalEstimates", v6);
  v18 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v19 = sub_100011660(v18, v17);
  sub_100185AC0(v19, buf);
  sub_10005BBE4(*buf, "VO2MaxAlertMinDaysWithEstimate", (a1 + 108));
  v21 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v22 = sub_100011660(v21, v20);
  sub_100185AC0(v22, buf);
  sub_10005BBE4(*buf, "VO2MaxAlertMinWorkoutsContrToEstimate", (a1 + 112));
  v24 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v25 = sub_100011660(v24, v23);
  sub_100185AC0(v25, buf);
  sub_10005BBE4(*buf, "VO2MaxAlertMinEstimatesSinceAlgChange", (a1 + 116));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4230 != -1)
  {
    sub_10194090C();
  }

  v26 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v27 = *v4;
    v28 = *(a1 + 88);
    v29 = *v5;
    v30 = *v6;
    v31 = *(a1 + 108);
    v32 = *(a1 + 116);
    *buf = 134284801;
    *&buf[4] = v27;
    *&buf[12] = 2049;
    *&buf[14] = v28;
    v58 = 2049;
    v59 = v29;
    v60 = 1025;
    v61 = v30;
    v62 = 1025;
    v63 = v31;
    v64 = 1025;
    v65 = v32;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "VO2MaxAlert,fAlertBlackoutDuration,%{private}.3f,fRepeatAlertWindow,%{private}.3f,fHistoricalEstimateWindow,%{private}.3f,fMaxHistoricalEstimatesForAlert,%{private}d,fMinDaysWithEstimate,%{private}d,fMinEstimatesSinceAlgChange,%{private}d", buf, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101940934(buf);
    v37 = *v4;
    v38 = *(a1 + 88);
    v39 = *v5;
    v40 = *v6;
    v41 = *(a1 + 108);
    v42 = *(a1 + 116);
    v45 = 134284801;
    v46 = v37;
    v47 = 2049;
    v48 = v38;
    v49 = 2049;
    v50 = v39;
    v51 = 1025;
    v52 = v40;
    v53 = 1025;
    v54 = v41;
    v55 = 1025;
    v56 = v42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "VO2MaxAlert,fAlertBlackoutDuration,%{private}.3f,fRepeatAlertWindow,%{private}.3f,fHistoricalEstimateWindow,%{private}.3f,fMaxHistoricalEstimatesForAlert,%{private}d,fMinDaysWithEstimate,%{private}d,fMinEstimatesSinceAlgChange,%{private}d", &v45, 50);
    v44 = v43;
    sub_100152C7C("Generic", 1, 0, 2, "CLVO2MaxAlertEvaluator::CLVO2MaxAlertEvaluator(std::shared_ptr<CLVO2MaxAlertRecorderDb>)", "%s\n", v43);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  v34 = *a2;
  v33 = a2[1];
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  v35 = *(a1 + 8);
  *a1 = v34;
  *(a1 + 8) = v33;
  if (v35)
  {
    sub_100008080(v35);
  }

  return a1;
}

void sub_1007F3C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 8);
  if (v22)
  {
    sub_100008080(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F3CB8(_OWORD *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 60) = *(a2 + 44);
  a1[2] = v4;
  a1[3] = v5;
  a1[1] = v3;
  if (qword_1025D4230 != -1)
  {
    sub_101940978();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a2 + 5);
    v8 = *a2;
    v9 = *(a2 + 1);
    v10[0] = 67175169;
    v10[1] = v8;
    v11 = 2049;
    v12 = v7;
    v13 = 1025;
    v14 = v9;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "VO2MaxAlert,gender,%{private}d,age,%{private}f,biologicalSex,%{private}d", v10, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194098C(a2);
  }
}

void sub_1007F3DC8(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v56 = sub_100C42080(*(a1 + 36));
  v7 = sub_1007F4568(*a1, v64);
  v8 = v7 && v65 + *(a1 + 80) > a3;
  v9 = *(a1 + 96);
  __p = 0;
  v62 = 0;
  v63 = 0;
  v10 = sub_10104516C();
  v11 = a3 - v9;
  sub_101045984(v10, &__p, 1, *(a1 + 104), v11);
  v13 = sub_1007F464C(v12, 0);
  v15 = sub_1007F464C(v14, 1);
  v16.n128_f64[0] = sub_10121C65C(*(a1 + 20), *(a1 + 36));
  v58 = v7;
  v17 = __p;
  v18 = v62;
  if (v62 == __p)
  {
    v21 = 0;
    v20 = 0;
  }

  else
  {
    v19 = v16.n128_f64[0];
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v16.n128_u64[0] = *(v18 - 16);
      v23 = vcvtmd_s64_f64((v16.n128_f64[0] + a4) / 86400.0);
      v24 = v22 < v23;
      if (v22 <= v23)
      {
        v22 = v23;
      }

      if (v24)
      {
        ++v21;
      }

      if (v16.n128_f64[0] >= v13)
      {
        ++v20;
      }

      if (v19 > 0.0 && v16.n128_f64[0] < v15)
      {
        if (qword_1025D4230 != -1)
        {
          sub_10194090C();
        }

        v25 = qword_1025D4238;
        if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(v18 - 16);
          v27 = *(v18 - 15);
          *buf = 134349568;
          *&buf[4] = v26;
          *&buf[12] = 2050;
          *&buf[14] = v27;
          *&buf[22] = 2050;
          *v102 = v19;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "VO2MaxAlert,HistoricalEstimateBiasAdjustment,startTime,%{public}.3f,estimatedVO2Max,%{public}.3f,biasAdjustment,%{public}.3f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940934(buf);
          v28 = *(v18 - 16);
          v29 = *(v18 - 15);
          v66 = 134349568;
          *v67 = v28;
          *&v67[8] = 2050;
          *&v67[10] = v29;
          *&v67[18] = 2050;
          *v68 = v19;
          LODWORD(v53) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "VO2MaxAlert,HistoricalEstimateBiasAdjustment,startTime,%{public}.3f,estimatedVO2Max,%{public}.3f,biasAdjustment,%{public}.3f", &v66, v53);
          v31 = v30;
          sub_100152C7C("Generic", 1, 0, 2, "VO2MaxAlertResult CLVO2MaxAlertEvaluator::evaluateForAlert(CFAbsoluteTime, CFTimeInterval)", "%s\n", v30);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        v16.n128_f64[0] = v19 + *(v18 - 15);
        *(v18 - 15) = v16.n128_u64[0];
        v17 = __p;
      }

      v18 -= 152;
    }

    while (v18 != v17);
    v18 = v62;
  }

  v32 = !v56;
  if (v17 == v18)
  {
    v55 = 0;
  }

  else
  {
    v55 = v17[28];
  }

  v33 = 0;
  v34 = *(a1 + 108);
  v35 = *(a1 + 116);
  if (((v32 | v8) & 1) == 0)
  {
    v36 = v21 >= v34 && v55 >= *(a1 + 112);
    if (v36 && v20 >= v35)
    {
      v33 = sub_1007F4740(a1, &__p, v16);
    }
  }

  v59 = v58 && v65 + *(a1 + 88) > a3;
  if (__p == v62)
  {
    v38 = 0xBFF0000000000000;
  }

  else
  {
    v38 = *(__p + 4);
  }

  v57 = v38;
  sub_100C41F40(v60);
  v39 = sub_100C42184(v60, *(a1 + 20), *(a1 + 36));
  if (qword_1025D4230 != -1)
  {
    sub_10194090C();
  }

  v40 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v65;
    v42 = *(a1 + 36);
    if (!v58)
    {
      v41 = 0.0;
    }

    v43 = *(a1 + 80);
    v44 = *(a1 + 88);
    *buf = 67245057;
    *&buf[4] = v32;
    *&buf[8] = 2049;
    *&buf[10] = v42;
    *&buf[18] = 1026;
    *&buf[20] = v8;
    *v102 = 2049;
    *&v102[2] = v41;
    v103 = 2049;
    v104 = v43;
    v105 = 2050;
    v106 = a3;
    v107 = 1026;
    v108 = v21 >= v34;
    v109 = 2050;
    v110 = v11;
    v111 = 2050;
    v112 = 0x86BCA1AF286BCA1BLL * ((v62 - __p) >> 3);
    v113 = 1026;
    v114 = v21;
    v115 = 1026;
    v116 = v55;
    v117 = 1026;
    v118 = v20 >= v35;
    v119 = 2050;
    v120 = v13;
    v121 = 1026;
    v122 = v20;
    v123 = 2050;
    v124 = v15;
    v125 = 2049;
    v126 = v57;
    v127 = 2049;
    v128 = v39;
    v129 = 1025;
    v130 = v33;
    v131 = 1025;
    v132 = v59;
    v133 = 2049;
    v134 = v44;
    _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "VO2MaxAlert,ageOutOfRange,%{public}d,age,%{private}.3f,inBlackoutPeriod,%{public}d,mostRecentAlertStartTime,%{private}.3f,alertBlackoutDuration,%{private}.3f,estimateTime,%{public}.3f, sufficientDaysWithEstimate,%{public}d,queryFromTime,%{public}.3f,numberOfEstimates,%{public}lu,countDaysWithEstimate,%{public}d,numWorkoutsContrToLatestEstimate,%{public}d,sufficientEstimatesSinceAdaptiveModel,%{public}d, earliestTimestampSinceAdaptiveModel,%{public}.3f,countEstimatesSinceAdaptiveModel,%{public}d,earliestTimestampSinceHunterC,%{public}.3f,latestVO2Max,%{private}.3f,lowClassificationThreshold,%{private}.3f, shouldTriggerAlert,%{private}d,isRepeatAlert,%{private}d,repeatAlertWindow,%{private}.3f", buf, 0xA6u);
  }

  if (sub_10000A100(121, 2))
  {
    v46 = v21 >= v34;
    sub_101940934(buf);
    v47 = *(a1 + 36);
    v48 = v65;
    if (!v58)
    {
      v48 = 0.0;
    }

    v49 = *(a1 + 80);
    v50 = *(a1 + 88);
    v66 = 67245057;
    *v67 = v32;
    *&v67[4] = 2049;
    *&v67[6] = v47;
    *&v67[14] = 1026;
    *&v67[16] = v8;
    *v68 = 2049;
    *&v68[2] = v48;
    v69 = 2049;
    v70 = v49;
    v71 = 2050;
    v72 = a3;
    v73 = 1026;
    v74 = v46;
    v75 = 2050;
    v76 = v11;
    v77 = 2050;
    v78 = 0x86BCA1AF286BCA1BLL * ((v62 - __p) >> 3);
    v79 = 1026;
    v80 = v21;
    v81 = 1026;
    v82 = v55;
    v83 = 1026;
    v84 = v20 >= v35;
    v85 = 2050;
    v86 = v13;
    v87 = 1026;
    v88 = v20;
    v89 = 2050;
    v90 = v15;
    v91 = 2049;
    v92 = v57;
    v93 = 2049;
    v94 = v39;
    v95 = 1025;
    v96 = v33;
    v97 = 1025;
    v98 = v59;
    v99 = 2049;
    v100 = v50;
    LODWORD(v53) = 166;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "VO2MaxAlert,ageOutOfRange,%{public}d,age,%{private}.3f,inBlackoutPeriod,%{public}d,mostRecentAlertStartTime,%{private}.3f,alertBlackoutDuration,%{private}.3f,estimateTime,%{public}.3f, sufficientDaysWithEstimate,%{public}d,queryFromTime,%{public}.3f,numberOfEstimates,%{public}lu,countDaysWithEstimate,%{public}d,numWorkoutsContrToLatestEstimate,%{public}d,sufficientEstimatesSinceAdaptiveModel,%{public}d, earliestTimestampSinceAdaptiveModel,%{public}.3f,countEstimatesSinceAdaptiveModel,%{public}d,earliestTimestampSinceHunterC,%{public}.3f,latestVO2Max,%{private}.3f,lowClassificationThreshold,%{private}.3f, shouldTriggerAlert,%{private}d,isRepeatAlert,%{private}d,repeatAlertWindow,%{private}.3f", &v66, v53);
    v52 = v51;
    sub_100152C7C("Generic", 1, 0, 2, "VO2MaxAlertResult CLVO2MaxAlertEvaluator::evaluateForAlert(CFAbsoluteTime, CFTimeInterval)", "%s\n", v51);
    if (v52 != buf)
    {
      free(v52);
    }
  }

  *a2 = v33;
  *(a2 + 8) = v57;
  *(a2 + 16) = v39;
  v45 = a3;
  if (__p != v62)
  {
    v45 = *(v62 - 16);
  }

  *(a2 + 24) = v45;
  *(a2 + 32) = a3;
  *(a2 + 40) = v59;
  *buf = v60;
  sub_1002EC52C(buf);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }
}

void sub_1007F450C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char *a47)
{
  a47 = &a17;
  sub_1002EC52C(&a47);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1007F4568(void *a1, uint64_t a2)
{
  v4 = a1 + 14;
  (*(a1[14] + 16))(a1 + 14);
  LODWORD(a2) = (*(*a1 + 104))(a1, a2);
  (*(*v4 + 24))(v4);
  return a2 == 0;
}

void sub_1007F4638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

double sub_1007F464C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v6 = 1.79769313e308;
  v3 = sub_10104516C();
  if ((sub_101045E68(v3, v2, &v6) & 1) == 0)
  {
    if (qword_1025D4230 != -1)
    {
      sub_10194090C();
    }

    v4 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v8 = v2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "VO2MaxAlert,Unexpectedly not able to retrieve a session record since algorithm version %{public}.3d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101940AC8(v2);
    }
  }

  return v6;
}

BOOL sub_1007F4740(uint64_t a1, void *a2, __n128 a3)
{
  sub_100C41F40(v30);
  v5 = sub_100C42090(v30, *(a1 + 20), *(a1 + 36));
  v26 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v27 = xmmword_101C7C490;
  v28 = _Q0;
  v29 = 0.0;
  v11 = *a2;
  v12 = a2[1];
  v13 = 0.0;
  if (v12 == *a2)
  {
    goto LABEL_7;
  }

  do
  {
    v14 = v12 - 152;
    sub_100502850(&v26, *(v12 - 120));
    v11 = *a2;
    v12 = v14;
  }

  while (v14 != *a2);
  if (v26 < 1)
  {
LABEL_7:
    v15 = 0.0;
  }

  else
  {
    v15 = *(&v27 + 1);
    if (v26 != 1)
    {
      v16 = *&v28 * *&v28 - *(&v28 + 1);
      if (v16 > 0.0)
      {
        v13 = sqrt(*&v28 * *&v28 / v16 * v29);
      }
    }
  }

  v17 = *(v11 + 32);
  if (qword_1025D4230 != -1)
  {
    sub_10194090C();
  }

  v18 = v15 + v13;
  v19 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(*a2 + 24);
    *buf = 134350337;
    *&buf[4] = v20;
    v44 = 1025;
    v45 = v17 < v5;
    v46 = 1025;
    v47 = v18 < v5;
    v48 = 2049;
    v49 = v15;
    v50 = 2049;
    v51 = v13;
    v52 = 2049;
    v53 = v5;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "VO2MaxAlert,estimateTime,%{public}.3f,isCurrentEstimateLow,%{private}d,isRecentActivityLow,%{private}d,weightedAvg,%{private}.3f,std,%{private}.3f,lowAlertThreshold,%{private}.3f", buf, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101940934(buf);
    v23 = *(*a2 + 24);
    v31 = 134350337;
    v32 = v23;
    v33 = 1025;
    v34 = v17 < v5;
    v35 = 1025;
    v36 = v18 < v5;
    v37 = 2049;
    v38 = v15;
    v39 = 2049;
    v40 = v13;
    v41 = 2049;
    v42 = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "VO2MaxAlert,estimateTime,%{public}.3f,isCurrentEstimateLow,%{private}d,isRecentActivityLow,%{private}d,weightedAvg,%{private}.3f,std,%{private}.3f,lowAlertThreshold,%{private}.3f", &v31, 54);
    v25 = v24;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVO2MaxAlertEvaluator::assessWhetherLow(const std::vector<VO2MaxOutput> &) const", "%s\n", v24);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  v21 = v18 < v5 && v17 < v5;
  *buf = v30;
  sub_1002EC52C(buf);
  return v21;
}

void sub_1007F4A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a18;
  sub_1002EC52C(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F4A94(uint64_t a1, const char *a2, uint64_t a3, double a4)
{
  v15 = a4;
  sub_1006525CC(a1, a3, &v15);
  *a1 = off_102472728;
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 255) = v6;
  v8 = (a1 + 232);
  if (v6)
  {
    memmove(v8, a2, v6);
  }

  *(v8 + v7) = 0;
  sub_100DD42E4((a1 + 256), a1 + 64, 0);
  if (sub_100023B68(a1 + 64))
  {
    v9 = (a1 + 232);
    if (*(a1 + 255) < 0)
    {
      v9 = *(a1 + 232);
    }

    sub_100608EC8(a1 + 64, v9, &qword_10265A018, 0, 0);
    sub_100652718(a1);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101940BDC();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Database is not valid; not initializing", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C04(buf);
      v14 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Database is not valid; not initializing", &v14, 2);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "CLNrCellLocationDatabase::CLNrCellLocationDatabase(const char *, const CLSqliteDatabase::SqliteProperties &, double)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  return a1;
}

void sub_1007F4D08(_Unwind_Exception *a1)
{
  if (*(v1 + 255) < 0)
  {
    operator delete(*v2);
  }

  sub_1006526BC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F4D44(uint64_t a1)
{
  *a1 = off_102472728;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  return sub_1006526BC(a1);
}

void sub_1007F4DA8(uint64_t a1)
{
  sub_1007F4D44(a1);

  operator delete();
}

char *sub_1007F4DE0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[255] < 0)
  {
    return sub_100007244(a2, *(result + 29), *(result + 30));
  }

  *a2 = *(result + 232);
  *(a2 + 16) = *(result + 31);
  return result;
}

void sub_1007F4E84(uint64_t a1, uint64_t a2, sqlite3_int64 *a3)
{
  sub_10003848C(&v23);
  v4 = sub_100038730(v24, "SELECT ", 7);
  v5 = strlen("ROWID");
  v6 = sub_100038730(v4, "ROWID", v5);
  v7 = sub_100038730(v6, " FROM ", 6);
  v8 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v8 = *v8;
  }

  v9 = strlen(v8);
  v10 = sub_100038730(v7, v8, v9);
  v11 = sub_100038730(v10, " WHERE ", 7);
  v12 = sub_100038730(v11, "MCC", 3);
  v13 = sub_100038730(v12, "=? AND ", 7);
  v14 = sub_100038730(v13, "MNC", 3);
  v15 = sub_100038730(v14, "=? AND ", 7);
  v16 = sub_100038730(v15, "TAC", 3);
  v17 = sub_100038730(v16, "=? AND ", 7);
  v18 = sub_100038730(v17, "CI", 2);
  sub_100038730(v18, "=?", 2);
  if ((v27 & 0x10) != 0)
  {
    v20 = v26;
    if (v26 < v25)
    {
      v26 = v25;
      v20 = v25;
    }

    v21 = v24[6];
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v19 = 0;
      v29 = 0;
      goto LABEL_16;
    }

    v21 = v24[3];
    v20 = v24[5];
  }

  v19 = v20 - v21;
  if ((v20 - v21) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  v29 = v20 - v21;
  if (v19)
  {
    memmove(&__dst, v21, v19);
  }

LABEL_16:
  *(&__dst + v19) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1 + 64, p_dst);
}

void sub_1007F5490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1007F551C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = 0;
  if (sub_100DD42EC((a1 + 256)))
  {
LABEL_48:
    sub_100144CA0((a1 + 256), v71);
    v34 = sub_100008880(*v71);
    if (sub_100073700(v34, 1, *a2) && (v35 = sub_100008880(*v71), sub_100073700(v35, 2, *(a2 + 4))) && (v36 = sub_100008880(*v71), sub_100073700(v36, 3, *(a2 + 8))) && (v37 = sub_100008880(*v71), sub_1000728E4(v37, 4, *(a2 + 16))) && (v38 = sub_100008880(*v71), sub_100073700(v38, 5, *(a2 + 24))) && (v39 = sub_100008880(*v71), sub_100073700(v39, 6, *(a2 + 28))))
    {
      v40 = sub_100008880(*v71);
      sub_1001A3DEC(a1 + 64, v40);
      v41 = sub_100616934(a1 + 64);
      v66 = v41;
      if (qword_1025D48A0 != -1)
      {
        sub_101940BDC();
      }

      v42 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        sub_10062233C(&__dst);
        v43 = v73 >= 0 ? &__dst : __dst;
        *v74 = 136315394;
        *&v74[4] = v43;
        v75 = 2048;
        *v76 = v41;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "CELL_CEN: adding cell, %s, rowid, %lld", v74, 0x16u);
        if (v73 < 0)
        {
          operator delete(__dst);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C04(&__dst);
        v62 = qword_1025D48A8;
        sub_10062233C(v74);
        if (v76[9] >= 0)
        {
          v63 = v74;
        }

        else
        {
          v63 = *v74;
        }

        *buf = 136315394;
        *&buf[4] = v63;
        v68 = 2048;
        v69 = v41;
        _os_log_send_and_compose_impl(2, 0, &__dst, 1628, dword_100000000, v62, 2, "CELL_CEN: adding cell, %s, rowid, %lld", buf, 22);
        v65 = v64;
        if ((v76[9] & 0x80000000) != 0)
        {
          operator delete(*v74);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNrCellLocationDatabase::setLocation(const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &)", "%s\n", v65);
        if (v65 != &__dst)
        {
          free(v65);
        }
      }

      v44 = sub_100653624(a1, &v66, a3);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101940BDC();
      }

      v45 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_10062233C(&__dst);
        v46 = v73 >= 0 ? &__dst : __dst;
        *v74 = 136315138;
        *&v74[4] = v46;
        _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_FAULT, "CELL_LOC: failed to bind %s", v74, 0xCu);
        if (v73 < 0)
        {
          operator delete(__dst);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_101940C04(&__dst);
        v52 = qword_1025D48A8;
        sub_10062233C(v74);
        if (v76[9] >= 0)
        {
          v53 = v74;
        }

        else
        {
          v53 = *v74;
        }

        *buf = 136315138;
        *&buf[4] = v53;
        _os_log_send_and_compose_impl(2, 0, &__dst, 1628, dword_100000000, v52, 17, "CELL_LOC: failed to bind %s", buf);
        v55 = v54;
        if ((v76[9] & 0x80000000) != 0)
        {
          operator delete(*v74);
        }

        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLNrCellLocationDatabase::setLocation(const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &)", "%s\n", v55);
        if (v55 != &__dst)
        {
          free(v55);
        }
      }

      v47 = sub_100008880(*v71);
      sqlite3_reset(v47);
      v44 = 0;
    }

    v48 = *v71;
    *v71 = 0;
    if (v48)
    {
      (*(*v48 + 8))(v48);
    }

    return v44;
  }

  sub_10003848C(v74);
  v6 = sub_100038730(&v76[2], "INSERT OR REPLACE INTO ", 23);
  v7 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v7 = *v7;
  }

  v8 = strlen(v7);
  v9 = sub_100038730(v6, v7, v8);
  v10 = sub_100038730(v9, " (", 2);
  v11 = sub_100038730(v10, "MCC", 3);
  v12 = sub_100038730(v11, ", ", 2);
  v13 = sub_100038730(v12, "MNC", 3);
  v14 = sub_100038730(v13, ", ", 2);
  v15 = sub_100038730(v14, "TAC", 3);
  v16 = sub_100038730(v15, ", ", 2);
  v17 = sub_100038730(v16, "CI", 2);
  v18 = sub_100038730(v17, ", ", 2);
  v19 = sub_100038730(v18, "NRARFCN", 7);
  v20 = sub_100038730(v19, ", ", 2);
  v21 = sub_100038730(v20, "PID", 3);
  sub_100038730(v21, ") VALUES (?, ?, ?, ?, ?, ?)", 27);
  if (qword_1025D48A0 != -1)
  {
    sub_101940BDC();
  }

  v22 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    if ((v86 & 0x10) != 0)
    {
      v25 = v85;
      if (v85 < v82)
      {
        v85 = v82;
        v25 = v82;
      }

      v26 = __src;
    }

    else
    {
      if ((v86 & 8) == 0)
      {
        v23 = a3;
        v24 = 0;
        v73 = 0;
LABEL_20:
        *(&__dst + v24) = 0;
        p_dst = &__dst;
        if (v73 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        *&buf[4] = p_dst;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CELL_LOC: fInsertStatement [%s]", buf, 0xCu);
        if (v73 < 0)
        {
          operator delete(__dst);
        }

        a3 = v23;
        goto LABEL_25;
      }

      v26 = v79;
      v25 = v80;
    }

    v24 = v25 - v26;
    if (v25 - v26 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    v23 = a3;
    if (v24 >= 0x17)
    {
      operator new();
    }

    v73 = v25 - v26;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

    goto LABEL_20;
  }

LABEL_25:
  if (sub_10000A100(121, 2))
  {
    sub_101940C04(&__dst);
    v56 = qword_1025D48A8;
    sub_10003DD04(&v77, buf);
    if (v70 >= 0)
    {
      v57 = buf;
    }

    else
    {
      v57 = *buf;
    }

    *v71 = 136315138;
    *&v71[4] = v57;
    _os_log_send_and_compose_impl(2, 0, &__dst, 1628, dword_100000000, v56, 2, "CELL_LOC: fInsertStatement [%s]", v71);
    v59 = v58;
    if (v70 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNrCellLocationDatabase::setLocation(const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &)", "%s\n", v59);
    if (v59 != &__dst)
    {
      free(v59);
    }
  }

  if ((v86 & 0x10) != 0)
  {
    v29 = v85;
    if (v85 < v82)
    {
      v85 = v82;
      v29 = v82;
    }

    v30 = __src;
  }

  else
  {
    if ((v86 & 8) == 0)
    {
      v28 = 0;
      v73 = 0;
      goto LABEL_39;
    }

    v30 = v79;
    v29 = v80;
  }

  v28 = v29 - v30;
  if (v29 - v30 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v28 >= 0x17)
  {
    operator new();
  }

  v73 = v29 - v30;
  if (v28)
  {
    memmove(&__dst, v30, v28);
  }

LABEL_39:
  *(&__dst + v28) = 0;
  if (v73 >= 0)
  {
    v31 = &__dst;
  }

  else
  {
    v31 = __dst;
  }

  *(a1 + 256) = sub_100614C1C(a1 + 64, v31);
  *(a1 + 264) = v32;
  if (v73 < 0)
  {
    operator delete(__dst);
  }

  if (sub_100DD42EC((a1 + 256)))
  {
    *&v76[2] = v33;
    if (v84 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v78);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    goto LABEL_48;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101940BDC();
  }

  v49 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__dst) = 0;
    _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_FAULT, "Could not prepare cached insert statement", &__dst, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101940C04(&__dst);
    *buf = 0;
    _os_log_send_and_compose_impl(2, 0, &__dst, 1628, dword_100000000, qword_1025D48A8, 17, "Could not prepare cached insert statement", buf, 2);
    v61 = v60;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLNrCellLocationDatabase::setLocation(const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &)", "%s\n", v60);
    if (v61 != &__dst)
    {
      free(v61);
    }
  }

  *&v76[2] = v50;
  if (v84 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v78);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return 0;
}

void sub_1007F6184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(a1);
}

void sub_1007F6274(uint64_t a1, sqlite3_int64 a2, uint64_t a3)
{
  sub_10003848C(&v23);
  v4 = sub_100038730(v24, "SELECT ", 7);
  v5 = sub_100038730(v4, "MCC", 3);
  v6 = sub_100038730(v5, ", ", 2);
  v7 = sub_100038730(v6, "MNC", 3);
  v8 = sub_100038730(v7, ", ", 2);
  v9 = sub_100038730(v8, "TAC", 3);
  v10 = sub_100038730(v9, ", ", 2);
  v11 = sub_100038730(v10, "CI", 2);
  v12 = sub_100038730(v11, " FROM ", 6);
  v13 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v13 = *v13;
  }

  v14 = strlen(v13);
  v15 = sub_100038730(v12, v13, v14);
  v16 = sub_100038730(v15, " WHERE ", 7);
  v17 = strlen("ROWID");
  v18 = sub_100038730(v16, "ROWID", v17);
  sub_100038730(v18, "=?", 2);
  if ((v27 & 0x10) != 0)
  {
    v20 = v26;
    if (v26 < v25)
    {
      v26 = v25;
      v20 = v25;
    }

    v21 = v24[6];
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v19 = 0;
      v29 = 0;
      goto LABEL_16;
    }

    v21 = v24[3];
    v20 = v24[5];
  }

  v19 = v20 - v21;
  if ((v20 - v21) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  v29 = v20 - v21;
  if (v19)
  {
    memmove(&__dst, v21, v19);
  }

LABEL_16:
  *(&__dst + v19) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1 + 64, p_dst);
}

void sub_1007F67F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (v52)
  {
    (*(*v52 + 8))(v52, a2, a3, a4, a5, a6, a7, a8);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1007F687C()
{
  qword_10265A018 = "MCC";
  dword_10265A020 = 1;
  word_10265A024 = 1;
  byte_10265A028 = 0;
  byte_10265A040 = 0;
  qword_10265A048 = "MNC";
  dword_10265A050 = 1;
  word_10265A054 = 1;
  byte_10265A058 = 0;
  byte_10265A070 = 0;
  qword_10265A078 = "TAC";
  dword_10265A080 = 1;
  word_10265A084 = 1;
  byte_10265A088 = 0;
  byte_10265A0A0 = 0;
  qword_10265A0A8 = "CI";
  dword_10265A0B0 = 1;
  word_10265A0B4 = 1;
  byte_10265A0B8 = 0;
  byte_10265A0D0 = 0;
  qword_10265A0D8 = "NRARFCN";
  dword_10265A0E0 = 1;
  word_10265A0E4 = 1;
  byte_10265A0E8 = 0;
  byte_10265A100 = 0;
  qword_10265A108 = "PID";
  dword_10265A110 = 1;
  word_10265A114 = 1;
  byte_10265A118 = 0;
  byte_10265A130 = 0;
  qword_10265A138 = "Timestamp";
  dword_10265A140 = 2;
  word_10265A144 = 0;
  byte_10265A148 = 0;
  byte_10265A160 = 0;
  qword_10265A168 = "Latitude";
  dword_10265A170 = 2;
  word_10265A174 = 0;
  byte_10265A178 = 0;
  byte_10265A190 = 0;
  qword_10265A198 = "Longitude";
  dword_10265A1A0 = 2;
  word_10265A1A4 = 0;
  byte_10265A1A8 = 0;
  byte_10265A1C0 = 0;
  qword_10265A1C8 = "HorizontalAccuracy";
  dword_10265A1D0 = 2;
  word_10265A1D4 = 0;
  byte_10265A1D8 = 0;
  byte_10265A1F0 = 0;
  qword_10265A1F8 = "Altitude";
  dword_10265A200 = 2;
  word_10265A204 = 0;
  byte_10265A208 = 0;
  byte_10265A220 = 0;
  qword_10265A228 = "VerticalAccuracy";
  dword_10265A230 = 2;
  word_10265A234 = 0;
  byte_10265A238 = 0;
  byte_10265A250 = 0;
  qword_10265A258 = "Speed";
  dword_10265A260 = 2;
  word_10265A264 = 0;
  byte_10265A268 = 0;
  byte_10265A280 = 0;
  qword_10265A288 = "Course";
  dword_10265A290 = 2;
  word_10265A294 = 0;
  byte_10265A298 = 0;
  byte_10265A2B0 = 0;
  qword_10265A2B8 = "Confidence";
  dword_10265A2C0 = 1;
  word_10265A2C4 = 0;
  byte_10265A2C8 = 0;
  byte_10265A2E0 = 0;
  qword_10265A2E8 = 0;
  dword_10265A2F0 = 5;
  word_10265A2F4 = 0;
  byte_10265A2F8 = 0;
  byte_10265A310 = 0;
}

void sub_1007F6A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __chkstk_darwin(a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 12) = 0x20000000000;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0;
  *(v16 + 120) = 1;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0u;
  *(v16 + 160) = 0u;
  *(v16 + 176) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v16 + 184) = _Q1;
  *(v16 + 200) = 0;
  *(v16 + 208) = _Q1;
  *(v16 + 224) = 0;
  *(v16 + 232) = _Q1;
  *(v16 + 248) = 0;
  *(v16 + 304) = 0;
  *(v16 + 272) = 0u;
  *(v16 + 288) = 0u;
  *(v16 + 256) = 0u;
  *(v16 + 312) = 1065353216;
  *(v16 + 320) = 0x100000005;
  *(v16 + 328) = 0;
  sub_1008076E4(v16 + 336, v23);
  sub_10080777C(v17 + 368, v13);
  sub_1008076E4(v17 + 400, v11);
  sub_1001B6020(v17 + 432, a9);
  sub_100807814(v17 + 464, a10);
  *(v17 + 520) = 0;
  *(v17 + 552) = 0;
  *(v17 + 560) = 0;
  *(v17 + 608) = 0;
  *(v17 + 568) = 0;
  *(v17 + 576) = 0;
  *(v17 + 688) = 0;
  *(v17 + 640) = 0u;
  *(v17 + 656) = 0;
  *(v17 + 720) = 0;
  *(v17 + 744) = 0;
  *(v17 + 728) = 0u;
  *(v17 + 748) = 1;
  *(v17 + 752) = 0;
  *(v17 + 760) = v15;
  *(v17 + 768) = 0;
  *(v17 + 772) = 0;
  *(v17 + 776) = 0;
  *(v17 + 784) = 0xBFF0000000000000;
  *(v17 + 792) = 5;
  *(v17 + 800) = 0;
  *(v17 + 808) = sub_100804DAC;
  *(v17 + 816) = 0;
  *(v17 + 824) = sub_100804EF8;
  *(v17 + 972) = 0u;
  *(v17 + 944) = 0u;
  *(v17 + 960) = 0u;
  *(v17 + 912) = 0u;
  *(v17 + 928) = 0u;
  *(v17 + 880) = 0u;
  *(v17 + 896) = 0u;
  *(v17 + 848) = 0u;
  *(v17 + 864) = 0u;
  *(v17 + 832) = 0u;
  *(v17 + 992) = 0u;
  *(v17 + 1008) = 0u;
  *(v17 + 1024) = 0u;
  *(v17 + 1040) = 0u;
  *(v17 + 1056) = 0u;
  *(v17 + 1096) = 0u;
  *(v17 + 1112) = 0u;
  *(v17 + 1128) = 0u;
  *(v17 + 1144) = 0u;
  *(v17 + 1160) = 0u;
  *(v17 + 1176) = 0u;
  *(v17 + 1192) = 0u;
  *(v17 + 1208) = 0u;
  *(v17 + 1224) = 0;
  *(v17 + 1228) = 255;
  *(v17 + 1248) = 0;
  *(v17 + 1232) = 0u;
  sub_100805044(v17 + 1256);
  *(v17 + 2496) = 0;
  *(v17 + 2552) = 0;
  *(v17 + 2504) = 0u;
  *(v17 + 2520) = 0u;
  *(v17 + 2536) = 0u;
  *(v17 + 2560) = 1065353216;
  *(v17 + 2568) = 0;
  *(v17 + 2570) = 0;
  sub_10000EC00(&__p, "#GnssController state machine");
  *buf = v17;
  operator new();
}

void sub_1007FB274()
{
  if (STACK[0x968])
  {
    sub_100008080(STACK[0x968]);
  }

  JUMPOUT(0x1007FB294);
}

void sub_1007FB290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t *a26, uint64_t *a27, uint64_t **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  sub_10080CC48(&STACK[0x720]);
  sub_10080C9CC(&STACK[0x740]);
  sub_100807BD4(&STACK[0x8E0]);
  sub_1008087DC(&STACK[0x900]);
  sub_10080875C(&STACK[0x920]);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  v58 = v56[389];
  v56[389] = 0;
  if (v58)
  {
    operator delete();
  }

  v59 = *a13;
  *a13 = 0;
  if (v59)
  {
    operator delete();
  }

  v60 = v56[386];
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = v56[384];
  if (v61)
  {
    sub_100008080(v61);
  }

  sub_1006DF878((v56 + 344));
  v62 = v56[339];
  v56[339] = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  sub_10080841C((v56 + 322));
  sub_10080839C((v56 + 316));
  v63 = v56[315];
  v56[315] = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = v56[314];
  v56[314] = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  sub_1006F7EA8(a28, 0);
  sub_1008060A0((v56 + 157));
  v65 = v56 + 147;
  v66 = v56[151];
  v56[151] = 0;
  if (v66)
  {
    operator delete();
  }

  sub_100808350(a32, 0);
  sub_100808304(v56 + 149, 0);
  sub_1008082B8(v56 + 148, 0);
  v67 = *v65;
  *v65 = 0;
  if (v67)
  {
    sub_1004949C8((v56 + 147), v67);
  }

  v68 = v56[146];
  v56[146] = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  sub_10080826C(v56 + 145, 0);
  v69 = v56[144];
  v56[144] = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = v56[143];
  v56[143] = 0;
  if (v70)
  {
    operator delete();
  }

  sub_100808220(a25, 0);
  sub_1008081D4(a26, 0);
  sub_100808188(a12, 0);
  sub_10080813C(v56 + 139, 0);
  sub_1008080DC(a14, 0);
  sub_10080805C((v56 + 134));
  v71 = v56[133];
  v56[133] = 0;
  if (v71)
  {
    operator delete();
  }

  sub_100808010(v56 + 132, 0);
  sub_100807FC4(v56 + 131, 0);
  sub_100807F78(v56 + 130, 0);
  sub_100807F2C(v56 + 129, 0);
  sub_100807EE0(v56 + 128, 0);
  sub_100807E94(a27, 0);
  sub_100807E48(v56 + 126, 0);
  sub_100807DB8(v56 + 125, 0);
  sub_100807D6C(v56 + 124, 0);
  sub_100807D20(v56 + 121, 0);
  v72 = v56[120];
  if (v72)
  {
    sub_100008080(v72);
  }

  sub_100807D20(v56 + 118, 0);
  v73 = v56[117];
  if (v73)
  {
    sub_100008080(v73);
  }

  sub_100807D20(v56 + 115, 0);
  v74 = v56[114];
  if (v74)
  {
    sub_100008080(v74);
  }

  sub_100807D20(v56 + 112, 0);
  v75 = v56[111];
  if (v75)
  {
    sub_100008080(v75);
  }

  sub_100807D20(v56 + 109, 0);
  v76 = v56[108];
  if (v76)
  {
    sub_100008080(v76);
  }

  sub_100807D20(v56 + 106, 0);
  v77 = v56[105];
  if (v77)
  {
    sub_100008080(v77);
  }

  v78 = v56[102];
  v56[102] = 0;
  if (v78)
  {
    (v56[103])();
  }

  v79 = v56[100];
  v56[100] = 0;
  if (v79)
  {
    (v56[101])();
  }

  sub_100807CD4(v56 + 91, 0);
  sub_1001C5560((v56 + 87));
  sub_1001C5560((v56 + 83));
  sub_1001C5560((v56 + 77));
  sub_1001C5560((v56 + 73));
  sub_100807C54((v56 + 66));
  sub_100807BD4((v56 + 62));
  sub_10067940C((v56 + 58));
  sub_1001C5560((v56 + 54));
  sub_100807AD4((v56 + 50));
  sub_100807B54((v56 + 46));
  sub_100807AD4((v56 + 42));
  sub_100134860((v56 + 35));
  v80 = *v56;
  *v56 = 0;
  if (v80)
  {
    (*(*v80 + 8))(v80);
  }

  _Unwind_Resume(a1);
}

void sub_1007FB734(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007FB750(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  if (a4 & 1 | a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = a2;
    v6 = a1;
    if (qword_1025D4650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_101941190(qword_1025D4650 == -1);
    __break(1u);
  }

  sub_10194117C();
LABEL_3:
  v8 = qword_1025D4658;
  v9 = *(v6 + 120);
  if (os_log_type_enabled(qword_1025D4658, v9))
  {
    v10 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v10 = *v10;
    }

    if (v7 > 2)
    {
      v11 = "StateUnknown";
    }

    else
    {
      v11 = (&off_102474410)[v7];
    }

    sub_10000EC00(__p, v11);
    if (SBYTE3(v28) >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = *__p;
    }

    *buf = 136315650;
    *&buf[4] = v10;
    v30 = 1024;
    v31 = v7;
    v32 = 2080;
    v33 = v12;
    _os_log_impl(dword_100000000, v8, v9, "%sstate,%d,%s", buf, 0x1Cu);
    if (SBYTE3(v28) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v14 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v14 = *v14;
    }

    if (v7 > 2)
    {
      v15 = "StateUnknown";
    }

    else
    {
      v15 = (&off_102474410)[v7];
    }

    v16 = qword_1025D4658;
    v17 = *(v6 + 120);
    sub_10000EC00(v21, v15);
    if (v22 >= 0)
    {
      v18 = v21;
    }

    else
    {
      v18 = v21[0];
    }

    *__p = 136315650;
    *&__p[4] = v14;
    v25 = 1024;
    v26 = v7;
    v27 = 2080;
    v28 = v18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v16, v17, "%sstate,%d,%s", __p, 28, v21[0]);
    v20 = v19;
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLStateMachine<CLGnssController>::setStateHandler(State, StateHandler) [T = CLGnssController]", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  *buf = &v23;
  result = sub_1001B58E4(v6 + 8, &v23, &unk_101C66300, buf);
  result[5] = v5;
  result[6] = v4;
  return result;
}

uint64_t sub_1007FBA38(void *a1, int a2)
{
  v2 = 2;
  switch(a2)
  {
    case 0:
      sub_1007FD7B4(a1);
      return v2;
    case 1:
      sub_1007FD838(a1);
      return v2;
    case 4:
    case 6:
    case 8:
    case 10:
      return 0;
    case 5:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected device connect event in NilrOnly state", v13, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941CC0();
      }

      return v2;
    case 7:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Ap Wake event in NilrOnly state", v12, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941BE4();
      }

      return v2;
    case 11:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Emergency start in NilrOnly state", v11, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941B08();
      }

      return v2;
    case 13:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Nilr Begin event in NilrOnly state", buf, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941950();
      }

      return v2;
    case 14:
    case 17:

      return sub_1001BCEDC(a1);
    case 15:
      sub_1007FD0BC(a1);
      return v2;
    case 16:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Debounce Timeout event in NilrOnly state", v9, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941A2C();
      }

      return v2;
    default:
      return v2;
  }
}

void sub_1007FBD10(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssController::onClientManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::onClientManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100800DFC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_1007FBEDC(uint64_t a1)
{
  v2 = 0;
  v7[0] = kCTDaemonReadyNotification;
  v7[1] = kCTConnectionInvalidatedNotification;
  v7[2] = @"kCLTelephonyServiceDisconnectedNotification";
  v7[3] = @"kHandsetInfoNotification";
  v7[4] = @"kCLTelephonyServiceConnectedNotification";
  v7[5] = @"kCellRefreshNotification";
  v7[6] = @"kSuplInitPayloadNotification";
  v7[7] = @"kSimStatusChangeNotification";
  v7[8] = @"kCLCellularTransmitStateNotification";
  v7[9] = @"kCellInfoNotification";
  v7[10] = @"kUplinkFreqBwNotification";
  v7[11] = @"kSubscriberMccAndMncNotification";
  v7[12] = @"kDataStatusNotification";
  v7[13] = @"kSubscriptionChangeNotification";
  v7[14] = @"kPrefDataSimChangedNotification";
  v7[15] = @"kTandemCapabilityNotification";
  v7[16] = @"kAltAccountConfiguredNotification";
  v7[17] = @"kAtLeastOneVoiceCallInProgress";
  v7[18] = @"kNoVoiceCallInProgress";
  do
  {
    v3 = *(a1 + 2512);
    sub_1001CBE2C(&v6, v7[v2]);
    result = [*(v3 + 16) register:*(v3 + 8) forNotification:sub_10006E830(&v6 registrationInfo:{v4), 0}];
    ++v2;
  }

  while (v2 != 19);
  return result;
}

void *sub_1007FC090(void *a1, uint64_t a2)
{
  sub_10080A318(v4, a2);
  sub_100809398(v4, a1);
  sub_100807BD4(v4);
  return a1;
}

void *sub_1007FC104(void *a1, uint64_t a2)
{
  sub_1008096EC(v4, a2);
  sub_100809784(v4, a1);
  sub_100807C54(v4);
  return a1;
}

void sub_1007FC178(uint64_t *a1, uint64_t a2)
{
  v48 = sub_1008033E0(a1, a2);
  sub_10001CAF4(buf);
  v49 = 0;
  v3 = sub_10001CB4C(*buf, "GnssForceEnableGps", &v49, 0xFFFFFFFFLL);
  v4 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v47 = v5;
  sub_10001CAF4(buf);
  v49 = 0;
  v6 = sub_10001CB4C(*buf, "GnssForceEnableBeidou", &v49, 0xFFFFFFFFLL);
  v7 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v6 & v7) != 0)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v46 = v8;
  sub_10001CAF4(buf);
  v49 = 0;
  v9 = sub_10001CB4C(*buf, "GnssForceEnableGalileo", &v49, 0xFFFFFFFFLL);
  v10 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v9 & v10) != 0)
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  v45 = v11;
  sub_10001CAF4(buf);
  v49 = 0;
  v12 = sub_10001CB4C(*buf, "GnssForceEnableGlonass", &v49, 0xFFFFFFFFLL);
  v13 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v12 & v13) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  sub_10001CAF4(buf);
  v49 = 0;
  v15 = sub_10001CB4C(*buf, "GnssForceEnableQzss", &v49, 0xFFFFFFFFLL);
  v16 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v15 & v16) != 0)
  {
    v17 = 16;
  }

  else
  {
    v17 = 0;
  }

  sub_10001CAF4(buf);
  v49 = 0;
  v18 = sub_10001CB4C(*buf, "GnssForceEnableNavic", &v49, 0xFFFFFFFFLL);
  v19 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v18 & v19) != 0)
  {
    v20 = 32;
  }

  else
  {
    v20 = 0;
  }

  sub_10001CAF4(buf);
  v49 = 0;
  v21 = sub_10001CB4C(*buf, "GnssForceDisableGps", &v49, 0xFFFFFFFFLL);
  v22 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  sub_10001CAF4(buf);
  v49 = 0;
  v24 = sub_10001CB4C(*buf, "GnssForceDisableBeidou", &v49, 0xFFFFFFFFLL);
  v25 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v24 & v25) != 0)
  {
    v26 = 4;
  }

  else
  {
    v26 = 0;
  }

  sub_10001CAF4(buf);
  v49 = 0;
  v27 = sub_10001CB4C(*buf, "GnssForceDisableGalileo", &v49, 0xFFFFFFFFLL);
  v28 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v27 & v28) != 0)
  {
    v29 = 8;
  }

  else
  {
    v29 = 0;
  }

  sub_10001CAF4(buf);
  v49 = 0;
  v30 = sub_10001CB4C(*buf, "GnssForceDisableGlonass", &v49, 0xFFFFFFFFLL);
  v31 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v30 & v31) != 0)
  {
    v32 = 2;
  }

  else
  {
    v32 = 0;
  }

  sub_10001CAF4(buf);
  v49 = 0;
  v33 = sub_10001CB4C(*buf, "GnssForceDisableQzss", &v49, 0xFFFFFFFFLL);
  v34 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v33 & v34) != 0)
  {
    v35 = 16;
  }

  else
  {
    v35 = 0;
  }

  sub_10001CAF4(buf);
  v49 = 0;
  v36 = sub_10001CB4C(*buf, "GnssForceDisableNavic", &v49, 0xFFFFFFFFLL);
  v37 = v26 | v23 | v29 | v32 | v35;
  v38 = v49;
  if (*v51)
  {
    sub_100008080(*v51);
  }

  if ((v36 & v38) != 0)
  {
    v39 = 32;
  }

  else
  {
    v39 = 0;
  }

  v40 = v37 | v39;
  v41 = v48;
  *(a1 + 304) = (v40 | v48) & ~(v46 | v47 | v45 | v14 | v17 | v20);
  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
    v41 = v48;
  }

  v42 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *(a1 + 304);
    *buf = 68290051;
    *&buf[4] = 0;
    *v51 = 2082;
    *&v51[2] = "";
    v52 = 1025;
    v53 = v41;
    v54 = 1025;
    v55 = v46 | v47 | v45 | v14 | v17 | v20;
    v56 = 1025;
    v57 = v40;
    v58 = 1025;
    v59 = v43;
    _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setDefaultBlockedGnssConstellationSetting, platformDefaultBlockedConstellations:0x%{private}04X, forceEnabledConstellations:0x%{private}04X, forceBlockedConstellations:0x%{private}04X, defaultBlockedConstellations:0x%{private}04X}", buf, 0x2Au);
  }

  v44 = *a1;
  if (*a1)
  {
    *(v44 + 1328) = *(a1 + 304);
    if (*(a1 + 1223) == 1)
    {
      *(v44 + 1336) = 1;
    }
  }
}

void sub_1007FC62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100008080(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007FC678(void *a1, uint64_t *a2)
{
  sub_10080A6BC(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_100008080(v3);
  }

  return a1;
}

void sub_1007FC7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10067940C(&a15);
  operator delete();
}

void sub_1007FC7F0(uint64_t a1, _DWORD *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssController::onDaemonStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::onDaemonStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1008032C4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t *sub_1007FC9C8(uint64_t *a1)
{
  [*(a1[315] + 16) unregister:*(a1[315] + 8) forNotification:4];
  [*(a1[315] + 16) unregister:*(a1[315] + 8) forNotification:0];
  sub_1016CBED8(a1[140]);
  v2 = a1[339];
  if (v2)
  {
    [*(v2 + 16) unregister:*(v2 + 8) forNotification:15];
    v3 = a1[339];
    a1[339] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#GnssController,deconstructed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101940C70(buf);
    v30[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#GnssController,deconstructed", v30, 2);
    v29 = v28;
    sub_100152C7C("Generic", 1, 0, 2, "CLGnssController::~CLGnssController()", "%s\n", v28);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  v5 = a1[389];
  a1[389] = 0;
  if (v5)
  {
    operator delete();
  }

  v6 = a1[388];
  a1[388] = 0;
  if (v6)
  {
    operator delete();
  }

  v7 = a1[386];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[384];
  if (v8)
  {
    sub_100008080(v8);
  }

  sub_1003C93BC((a1 + 374), a1[375]);
  sub_1003C93BC((a1 + 345), a1[346]);
  v9 = a1[339];
  a1[339] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  sub_10080841C((a1 + 322));
  sub_10080839C((a1 + 316));
  v10 = a1[315];
  a1[315] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a1[314];
  a1[314] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  sub_1006F7EA8(a1 + 313, 0);
  if (*(a1 + 2455) < 0)
  {
    operator delete(a1[304]);
  }

  if (*(a1 + 2431) < 0)
  {
    operator delete(a1[301]);
  }

  if (*(a1 + 2263) < 0)
  {
    operator delete(a1[280]);
  }

  if (*(a1 + 2239) < 0)
  {
    operator delete(a1[277]);
  }

  v12 = a1[151];
  a1[151] = 0;
  if (v12)
  {
    operator delete();
  }

  sub_100808350(a1 + 150, 0);
  sub_100808304(a1 + 149, 0);
  sub_1008082B8(a1 + 148, 0);
  v13 = a1[147];
  a1[147] = 0;
  if (v13)
  {
    sub_1004949C8((a1 + 147), v13);
  }

  v14 = a1[146];
  a1[146] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_10080826C(a1 + 145, 0);
  v15 = a1[144];
  a1[144] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = a1[143];
  a1[143] = 0;
  if (v16)
  {
    operator delete();
  }

  sub_100808220(a1 + 142, 0);
  sub_1008081D4(a1 + 141, 0);
  sub_100808188(a1 + 140, 0);
  sub_10080813C(a1 + 139, 0);
  sub_1008080DC(a1 + 138, 0);
  sub_10080805C((a1 + 134));
  v17 = a1[133];
  a1[133] = 0;
  if (v17)
  {
    operator delete();
  }

  sub_100808010(a1 + 132, 0);
  sub_100807FC4(a1 + 131, 0);
  sub_100807F78(a1 + 130, 0);
  sub_100807F2C(a1 + 129, 0);
  sub_100807EE0(a1 + 128, 0);
  sub_100807E94(a1 + 127, 0);
  sub_100807E48(a1 + 126, 0);
  sub_100807DB8(a1 + 125, 0);
  sub_100807D6C(a1 + 124, 0);
  sub_100807D20(a1 + 121, 0);
  v18 = a1[120];
  if (v18)
  {
    sub_100008080(v18);
  }

  sub_100807D20(a1 + 118, 0);
  v19 = a1[117];
  if (v19)
  {
    sub_100008080(v19);
  }

  sub_100807D20(a1 + 115, 0);
  v20 = a1[114];
  if (v20)
  {
    sub_100008080(v20);
  }

  sub_100807D20(a1 + 112, 0);
  v21 = a1[111];
  if (v21)
  {
    sub_100008080(v21);
  }

  sub_100807D20(a1 + 109, 0);
  v22 = a1[108];
  if (v22)
  {
    sub_100008080(v22);
  }

  sub_100807D20(a1 + 106, 0);
  v23 = a1[105];
  if (v23)
  {
    sub_100008080(v23);
  }

  v24 = a1[102];
  a1[102] = 0;
  if (v24)
  {
    (a1[103])();
  }

  v25 = a1[100];
  a1[100] = 0;
  if (v25)
  {
    (a1[101])();
  }

  sub_100807CD4(a1 + 91, 0);
  sub_1001C5560((a1 + 87));
  sub_1001C5560((a1 + 83));
  sub_1001C5560((a1 + 77));
  sub_1001C5560((a1 + 73));
  sub_100807C54((a1 + 66));
  sub_100807BD4((a1 + 62));
  sub_10067940C((a1 + 58));
  sub_1001C5560((a1 + 54));
  sub_100807AD4((a1 + 50));
  sub_100807B54((a1 + 46));
  sub_100807AD4((a1 + 42));
  sub_100134860((a1 + 35));
  v26 = *a1;
  *a1 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  return a1;
}

void sub_1007FCFF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1007FD014(uint64_t a1, int a2)
{
  result = *(a1 + 2504);
  if (result)
  {
    if (a2)
    {
      return sub_100930AB4(result);
    }

    else
    {
      return sub_100930BC4(result);
    }
  }

  return result;
}

void sub_1007FD02C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 744) & 1) == 0)
  {
    if (sub_10071ADE0(a1, a2))
    {
      current_queue = dispatch_get_current_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007FDEB0;
      block[3] = &unk_102449A78;
      block[4] = a1;
      dispatch_async(current_queue, block);
    }
  }
}

uint64_t sub_1007FD0BC(uint64_t a1)
{
  if (*(a1 + 736))
  {
    if ((*(**a1 + 40))())
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v2 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::applyDeviceOperatingContext,device restart initiated", v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101941FC4();
      }

      sub_1001B6020(v12, a1 + 696);
      sub_1007FD590(a1, v12);
      sub_1001C5560(v12);
      sub_1001B6020(v11, a1 + 584);
      sub_1001B60DC(a1, v11);
      sub_1001C5560(v11);
    }

    else
    {
      v4 = *(a1 + 652);
      v5 = *(a1 + 572);
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 67240192;
        v10[1] = v4 != v5;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLGnssController::applyDeviceOperatingContext,device restart not initiated,assistance restart needed,%{public}d", v10, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101941ED0(v4 != v5);
      }

      if (v4 != v5)
      {
        v7 = *(a1 + 720);
        if (v7)
        {
          (*(*v7 + 48))(v7);
        }

        v8 = *(a1 + 608);
        if (v8)
        {
          (*(*v8 + 48))(v8);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLGnssController::applyDeviceOperatingContext invoked when gps is not running ", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019420A8();
    }
  }

  result = *a1;
  if (*a1)
  {
    return (*(*result + 296))(result, a1 + 572);
  }

  return result;
}

void sub_1007FD3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C5560(va);
  _Unwind_Resume(a1);
}

void sub_1007FD3D4(int *a1)
{
  v9 = 0;
  time(&v9);
  p_tm_yday = &localtime(&v9)->tm_yday;
  if (*p_tm_yday != *a1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *a1;
      v5 = *p_tm_yday;
      *buf = 67240448;
      *v11 = v4;
      *&v11[4] = 1026;
      *&v11[6] = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#raven,resetRuntime,startYearDay,old,%{public}d,new,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194218C();
    }

    *a1 = *p_tm_yday;
    *(a1 + 1) = 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    *buf = 134349312;
    *v11 = v7;
    *&v11[8] = 1026;
    v12 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#raven,todayRuntime,%{public}.1f,budget,%{public}d,sec", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101942284();
  }
}

void sub_1007FD590(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3);
  }

  (*(**a1 + 24))();
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "deviceStop";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v9, 0x1Cu);
  }

  v5 = a1[57];
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  if (a1[142])
  {
    v6 = a1[131];
    if (v6)
    {
      sub_10167EFDC(v6, (*a1 + 844));
      sub_10167EFE8(a1[131], (*a1 + 848));
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#gnssawd fGnssInterference == nullptr", v9, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101942468();
      }
    }

    sub_1016C1B28(a1[142], (*a1 + 8), (*a1 + 1272));
    v8 = a1[142];
    if (v8)
    {
      sub_1001BD68C(v8, 4, 0);
    }
  }
}

void sub_1007FD7B4(uint64_t a1)
{
  v2 = *(a1 + 728);
  if (v2 && (*(a1 + 2569) & 1) == 0)
  {
    sub_10168A7F8(v2);
  }

  sub_1001BEAA4(a1);
  v4 = *(a1 + 1000);
  if (v4)
  {
    sub_1001BEE98(v4, v3);
  }

  v5 = *(a1 + 1048);
  if (v5)
  {
    sub_1001BA05C(v5);
  }

  v6 = *(a1 + 992);
  if (v6)
  {
    sub_1001BA0FC(v6);
  }

  v7 = *(a1 + 1024);
  if (v7)
  {

    sub_101754E14(v7);
  }
}

uint64_t sub_1007FD838(void *a1)
{
  sub_1007FDF94(a1);
  v2 = a1[124];
  if (v2)
  {
    sub_100E0DE2C(v2);
  }

  v3 = a1[131];
  if (v3)
  {
    sub_10167EAAC(v3);
  }

  result = a1[125];
  if (result)
  {

    return sub_101221B5C();
  }

  return result;
}

uint64_t sub_1007FD898(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "shutdown";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  *(a1 + 744) = 0;
  return sub_1001BF630(a1 + 2576, 4);
}

uint64_t sub_1007FD984(uint64_t result, int a2)
{
  v2 = result;
  *(result + 568) = a2;
  if (a2 != 11)
  {
    if (a2 == 10)
    {
      result = sub_1007FDDF0(result);
      v3 = 1;
      goto LABEL_6;
    }

    if (a2)
    {
      return result;
    }
  }

  result = sub_1007FDD30(result);
  v3 = 0;
LABEL_6:
  *(v2 + 572) = v3;
  return result;
}

uint64_t sub_1007FD9DC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleDeviceDisconnect,disconnected", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194309C();
  }

  *(a1 + 8) = 0;
  return sub_1001BF630(a1 + 2576, 6);
}

uint64_t sub_1007FDA84(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleDeviceConnect,connected", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101943178();
  }

  *(a1 + 8) = 1;
  return sub_1001BF630(a1 + 2576, 5);
}

uint64_t sub_1007FDB30(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLGnssController::handleApSleep", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101943330();
  }

  *(a1 + 1224) = 1;
  return sub_1001BF630(a1 + 2576, 8);
}