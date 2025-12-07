void *sub_255B9C134(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_255B9C19C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_255B9C208(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 64) == 1)
      {
        v3 = *(v2 + 40);
        if (v3)
        {
          v4 = *(v2 + 48);
          v5 = *(v2 + 40);
          if (v4 != v3)
          {
            do
            {
              v6 = *(v4 - 1);
              v4 -= 3;
              if (v6 < 0)
              {
                operator delete(*v4);
              }
            }

            while (v4 != v3);
            v5 = *(v2 + 40);
          }

          *(v2 + 48) = v3;
          operator delete(v5);
        }
      }

      v7 = *(v2 + 16);
      if (v7)
      {
        *(v2 + 24) = v7;
        operator delete(v7);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_255B9C2B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 64) == 1)
      {
        v6 = *(v2 + 5);
        if (v6)
        {
          v7 = *(v2 + 6);
          v8 = *(v2 + 5);
          if (v7 != v6)
          {
            do
            {
              v9 = *(v7 - 1);
              v7 -= 3;
              if (v9 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v8 = *(v2 + 5);
          }

          *(v2 + 6) = v6;
          operator delete(v8);
        }
      }

      v10 = *(v2 + 2);
      if (v10)
      {
        *(v2 + 3) = v10;
        operator delete(v10);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_255B9C380(std::string *a1@<X8>)
{
  sub_255B9C794(&v17[24], 256);
  v2 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v3 = v19;
  }

  else
  {
    v3 = *&v17[32];
  }

  if (v3 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v3 + 46 > 0x16)
  {
    operator new();
  }

  qmemcpy(v17, "CV3D_LearnedFeatures_Hardnet_Descriptor_Model/", sizeof(v17));
  if ((v19 & 0x80u) == 0)
  {
    v4 = &v17[24];
  }

  else
  {
    v4 = *&v17[24];
  }

  memmove(&v18, v4, v3);
  *(&v18 + v3) = 0;
  sub_255A7EBE8(v11);
  sub_255AA8B4C(v17, &v12, 1, &__p);
  if ((v10 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_255A7F150(&v13, &v7);
    sub_255A83DB0("Failed to access model resource path: ", &v7, &v8);
    std::runtime_error::runtime_error(exception, &v8);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(a1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if ((v10 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = __p;
  }

  v11[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v5;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v16);
  if ((v17[23] & 0x80000000) == 0)
  {
    if ((v2 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(*&v17[24]);
    return;
  }

  operator delete(*v17);
  if (v2 < 0)
  {
    goto LABEL_22;
  }
}

void sub_255B9C6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, int a29, __int16 a30, char a31, char a32)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v33 & 1) == 0)
    {
LABEL_8:
      if (a28 == 1 && a27 < 0)
      {
        operator delete(a22);
      }

      sub_255A78E78(&a30);
      if (*(v35 - 73) < 0)
      {
        operator delete(*(v35 - 96));
        if ((v34 & 0x80000000) == 0)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }
      }

      else if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(*(v35 - 72));
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v32);
  goto LABEL_8;
}

void sub_255B9C794(std::string *a1, int a2)
{
  v49.__r_.__value_.__r.__words[0] = *MEMORY[0x277D85DE8];
  v31 = 32;
  v32 = a2;
  v29 = 0;
  v30 = 8;
  v28 = 0x700000003;
  sub_255B9D0EC(&v28, &v28 + 1, &v29, &v39);
  sub_255A81134(v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_, "_", 1uLL, &v27);
  v3 = v39.__r_.__value_.__r.__words[0];
  if (v39.__r_.__value_.__r.__words[0])
  {
    size = v39.__r_.__value_.__l.__size_;
    v5 = v39.__r_.__value_.__r.__words[0];
    if (v39.__r_.__value_.__l.__size_ != v39.__r_.__value_.__r.__words[0])
    {
      do
      {
        v6 = *(size - 1);
        size -= 3;
        if (v6 < 0)
        {
          operator delete(*size);
        }
      }

      while (size != v3);
      v5 = v39.__r_.__value_.__r.__words[0];
    }

    v39.__r_.__value_.__l.__size_ = v3;
    operator delete(v5);
  }

  sub_255B9D2D8("p", &v31);
  v7 = v25;
  if ((v25 & 0x80u) == 0)
  {
    v8 = v24;
  }

  else
  {
    v8 = v24[0];
  }

  if ((v25 & 0x80u) != 0)
  {
    v7 = v24[1];
  }

  v39.__r_.__value_.__r.__words[0] = v8;
  v39.__r_.__value_.__l.__size_ = v7;
  v34 = 0;
  std::to_string(&v35, 64);
  __p = v35;
  v34 = 1;
  v35.__r_.__value_.__r.__words[0] = &__p;
  v35.__r_.__value_.__l.__size_ = "u";
  v35.__r_.__value_.__r.__words[2] = &__p;
  v36 = "u";
  v37 = "u";
  sub_255A803C4(&v35.__r_.__value_.__r.__words[2], &__p);
  if (v34 == -1)
  {
    sub_255A7C284();
  }

  v35.__r_.__value_.__r.__words[0] = &v38;
  (off_2867D09A8[v34])(v22, &v35, &__p);
  if (v34 != -1)
  {
    (off_2867D0990[v34])(&v35, &__p);
  }

  v9 = v23;
  v10 = v22;
  if ((v23 & 0x80u) != 0)
  {
    v10 = v22[0];
    v9 = v22[1];
  }

  v39.__r_.__value_.__r.__words[2] = v10;
  v40 = v9;
  sub_255B9D2D8("u", &v30);
  v11 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v35;
  }

  else
  {
    v12 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v35.__r_.__value_.__l.__size_;
  }

  v41 = v12;
  v42 = v11;
  v13 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  v14 = &v27;
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v27.__r_.__value_.__l.__size_;
    v14 = v27.__r_.__value_.__r.__words[0];
  }

  v43 = v14;
  v44 = v13;
  v45 = "6aa24xpnhm";
  v46 = 10;
  sub_255B9D2D8("b", &v32);
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  v47 = p_p;
  v48 = v15;
  sub_255A7F250(&v39, &v49, "_", 1uLL, &v26);
  v17 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v17 = v26.__r_.__value_.__l.__size_;
    v18 = (v26.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v18 - v26.__r_.__value_.__l.__size_ < 7)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v26.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v26.__r_.__value_.__l.__size_ + 7 - v18)
      {
        sub_255A7BCA8();
      }

LABEL_36:
      operator new();
    }

    v19 = v26.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) - 16) < 7)
    {
      goto LABEL_36;
    }

    v19 = &v26;
  }

  v20 = (v19 + v17);
  *(v20 + 3) = 1701602414;
  *v20 = 1853186606;
  v21 = v17 + 7;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    v26.__r_.__value_.__l.__size_ = v17 + 7;
  }

  else
  {
    *(&v26.__r_.__value_.__s + 23) = v21 & 0x7F;
  }

  v19->__r_.__value_.__s.__data_[v21] = 0;
  *a1 = v26;
  memset(&v26, 0, sizeof(v26));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_44:
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_50;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_45:
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_51;
  }

LABEL_50:
  operator delete(v22[0]);
  if ((v25 & 0x80000000) == 0)
  {
LABEL_46:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_52:
    operator delete(v27.__r_.__value_.__l.__data_);
    return;
  }

LABEL_51:
  operator delete(v24[0]);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_52;
  }
}

void sub_255B9CC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B9CD70(std::string *a1@<X8>)
{
  sub_255B9C794(&v16[24], 512);
  v2 = v16[47];
  if (v16[47] >= 0)
  {
    v3 = v16[47];
  }

  else
  {
    v3 = *&v16[32];
  }

  if (v3 + 49 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v3 + 49 > 0x16)
  {
    operator new();
  }

  qmemcpy(v16, "CV3D_LearnedFeatures_AtuHardnet_Descriptor_Model/", sizeof(v16));
  if (v2 >= 0)
  {
    v4 = &v16[24];
  }

  else
  {
    v4 = *&v16[24];
  }

  memmove(v17, v4, v3);
  v17[v3] = 0;
  sub_255A7EBE8(v10);
  sub_255AA8B4C(v16, &v11, 1, &v8);
  if (v9)
  {
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_255A7E018(a1, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
      v6 = v9;
      v7 = SHIBYTE(v8.__r_.__value_.__r.__words[2]);
      a1[1].__r_.__value_.__s.__data_[0] = 1;
      if ((v6 & 1) != 0 && v7 < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a1 = v8;
      a1[1].__r_.__value_.__s.__data_[0] = 1;
    }
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }

  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v15);
  if ((v16[23] & 0x80000000) == 0)
  {
    if ((v2 & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(*&v16[24]);
    return;
  }

  operator delete(*v16);
  if (v2 < 0)
  {
    goto LABEL_20;
  }
}

void sub_255B9D078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A78E78(&a18);
  if (*(v21 - 73) < 0)
  {
    operator delete(*(v21 - 96));
    if ((v20 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(v21 - 72));
  _Unwind_Resume(a1);
}

void sub_255B9D0EC(unsigned int *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  std::to_string(&v7, *a1);
  v8 = v7;
  std::to_string(&v7, *a2);
  v9 = v7;
  std::to_string(&v7, *a3);
  __p = v7;
  sub_255A7FF3C(a4, &v8, 3uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(v8.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v9.__r_.__value_.__l.__data_);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_7;
  }
}

void sub_255B9D23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a17);
      goto LABEL_8;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_255B9D28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_255A993DC(&a9);
  while (1)
  {
    v18 = *(v17 - 1);
    v17 -= 3;
    if (v18 < 0)
    {
      operator delete(*v17);
    }

    if (v17 == &a17)
    {
      JUMPOUT(0x255B9D284);
    }
  }
}

uint64_t sub_255B9D2D8(std::string *a1, int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = a1;
  v9 = v4;
  v10 = a1;
  v11 = a1;
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_255A802D0(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_255A7C284();
  }

  v12 = &v7;
  (off_2867D0978[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_255A7C284();
  }

  v7 = &v6;
  result = (off_2867D09A8[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_2867D0990[v5])(&v7, v4);
  }

  return result;
}

void sub_255B9D3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255B9D40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_255A993DC(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255B9D3FCLL);
}

void sub_255B9D430(uint64_t a1@<X8>)
{
  v48[19] = *MEMORY[0x277D85DE8];
  v36 = 32;
  v37 = 32;
  v34 = 0;
  v35 = 256;
  v33 = 2;
  sub_255B9D0EC(&v33, &v33 + 1, &v34, &__p);
  sub_255A81134(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, "_", 1uLL, &v32);
  v2 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    size = __p.__r_.__value_.__l.__size_;
    v4 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        v5 = *(size - 1);
        size -= 3;
        if (v5 < 0)
        {
          operator delete(*size);
        }
      }

      while (size != v2);
      v4 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v2;
    operator delete(v4);
  }

  sub_255B9D2D8("p", &v37);
  v6 = v30;
  if ((v30 & 0x80u) == 0)
  {
    v7 = v29;
  }

  else
  {
    v7 = v29[0];
  }

  if ((v30 & 0x80u) != 0)
  {
    v6 = v29[1];
  }

  __p.__r_.__value_.__r.__words[0] = v7;
  __p.__r_.__value_.__l.__size_ = v6;
  DWORD2(v38[1]) = 0;
  std::to_string(&v38[2], 64);
  v38[0] = v38[2];
  *&v38[1] = v39;
  DWORD2(v38[1]) = 1;
  *&v38[2] = v38;
  *(&v38[2] + 1) = "f";
  v39 = v38;
  v40 = "f";
  v41 = "f";
  sub_255A803C4(&v39, v38);
  if (DWORD2(v38[1]) == -1)
  {
    sub_255A7C284();
  }

  *&v38[2] = &v42;
  (off_2867D09F0[DWORD2(v38[1])])(v27, &v38[2], v38);
  if (DWORD2(v38[1]) != -1)
  {
    (off_2867D09D8[DWORD2(v38[1])])(&v38[2], v38);
  }

  v8 = v28;
  v9 = v27;
  if ((v28 & 0x80u) != 0)
  {
    v9 = v27[0];
    v8 = v27[1];
  }

  __p.__r_.__value_.__r.__words[2] = v9;
  v44 = v8;
  sub_255B9DDF4("fp", &v36);
  v10 = HIBYTE(v39);
  if (SHIBYTE(v39) >= 0)
  {
    v11 = &v38[2];
  }

  else
  {
    v11 = *&v38[2];
  }

  if (SHIBYTE(v39) < 0)
  {
    v10 = *(&v38[2] + 1);
  }

  v45[0].__locale_ = v11;
  v45[1].__locale_ = v10;
  v12 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v13 = &v32;
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v32.__r_.__value_.__l.__size_;
    v13 = v32.__r_.__value_.__r.__words[0];
  }

  v45[2].__locale_ = v13;
  v45[3].__locale_ = v12;
  v45[4].__locale_ = "aspdesc";
  v45[5].__locale_ = 7;
  sub_255B9D2D8("b", &v35);
  v14 = BYTE7(v38[1]);
  if ((SBYTE7(v38[1]) & 0x80u) == 0)
  {
    v15 = v38;
  }

  else
  {
    v15 = *&v38[0];
  }

  if (SBYTE7(v38[1]) < 0)
  {
    v14 = *(&v38[0] + 1);
  }

  v45[6].__locale_ = v15;
  v46 = v14;
  sub_255A7F250(&__p, &v47, "_", 1uLL, &v31);
  v16 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v16 = v31.__r_.__value_.__l.__size_;
    v17 = (v31.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v17 - v31.__r_.__value_.__l.__size_ < 7)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v31.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v31.__r_.__value_.__l.__size_ + 7 - v17)
      {
        sub_255A7BCA8();
      }

LABEL_36:
      operator new();
    }

    v18 = v31.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) - 16) < 7)
    {
      goto LABEL_36;
    }

    v18 = &v31;
  }

  v19 = v18 + v16;
  *v19 = 1853186606;
  v19[6] = 101;
  *(v19 + 2) = 27748;
  v20 = v16 + 7;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    v31.__r_.__value_.__l.__size_ = v16 + 7;
  }

  else
  {
    *(&v31.__r_.__value_.__s + 23) = v20 & 0x7F;
  }

  v18->__r_.__value_.__s.__data_[v20] = 0;
  v26 = v31;
  memset(&v31, 0, sizeof(v31));
  if (SBYTE7(v38[1]) < 0)
  {
    operator delete(*&v38[0]);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
LABEL_44:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }
  }

  else if ((SHIBYTE(v39) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(*&v38[2]);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_45:
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_62:
    operator delete(v29[0]);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_61:
  operator delete(v27[0]);
  if (v30 < 0)
  {
    goto LABEL_62;
  }

LABEL_46:
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_63:
  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_47:
  v21 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v26.__r_.__value_.__l.__size_;
  }

  if (v22 + 35 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v22 + 35 > 0x16)
  {
    operator new();
  }

  qmemcpy(v38, "CV3D_LearnedFeatures_AspDesc_Model/", 35);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v26;
  }

  else
  {
    v23 = v26.__r_.__value_.__r.__words[0];
  }

  memmove(&v38[2] + 3, v23, v22);
  *(&v38[2] + v22 + 3) = 0;
  sub_255A7EBE8(&__p);
  sub_255AA8B4C(v38, &__p.__r_.__value_.__r.__words[2], 1, &v38[2]);
  if ((v40 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_255A7F150(&v44, &v31);
    sub_255A83DB0("Failed to access model resource path: ", &v31, &v32);
    std::runtime_error::runtime_error(exception, &v32);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(v39) < 0)
  {
    sub_255A7E018(a1, *&v38[2], *(&v38[2] + 1));
    if ((v40 & 1) != 0 && SHIBYTE(v39) < 0)
    {
      operator delete(*&v38[2]);
    }
  }

  else
  {
    *a1 = v38[2];
    *(a1 + 16) = v39;
  }

  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v24 = *(MEMORY[0x277D82818] + 72);
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  __p.__r_.__value_.__r.__words[2] = v24;
  v44 = MEMORY[0x277D82878] + 16;
  if (v47.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v46);
  }

  v44 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v45);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](v48);
  if ((SBYTE7(v38[1]) & 0x80000000) == 0)
  {
    if ((v21 & 0x80000000) == 0)
    {
      return;
    }

LABEL_73:
    operator delete(v26.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(*&v38[0]);
  if (v21 < 0)
  {
    goto LABEL_73;
  }
}

void sub_255B9DC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v66 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v66)
  {
LABEL_8:
    if (a52 == 1 && a51 < 0)
    {
      operator delete(a46);
    }

    sub_255A7F000(&a55, MEMORY[0x277D82818]);
    MEMORY[0x259C49250](&a65);
    if (a44 < 0)
    {
      operator delete(a39);
    }

    if (v67 < 0)
    {
      operator delete(a9);
      _Unwind_Resume(a1);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v65);
  goto LABEL_8;
}

uint64_t sub_255B9DDF4(std::string *a1, int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = a1;
  v9 = v4;
  v10 = a1;
  v11 = a1;
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_255AA6C50(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_255A7C284();
  }

  v12 = &v7;
  (off_2867D09C0[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_255A7C284();
  }

  v7 = &v6;
  result = (off_2867D09F0[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_2867D09D8[v5])(&v7, v4);
  }

  return result;
}

void sub_255B9DF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255B9DF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_255A993DC(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255B9DF18);
}

void sub_255B9DF4C(uint64_t a1@<X8>)
{
  v47[19] = *MEMORY[0x277D85DE8];
  v35 = 32;
  v36 = 32;
  v33 = 0;
  v34 = 256;
  v32 = 2;
  sub_255B9D0EC(&v32, &v32 + 1, &v33, &__p);
  sub_255A81134(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, "_", 1uLL, &v31);
  v2 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    size = __p.__r_.__value_.__l.__size_;
    v4 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        v5 = *(size - 1);
        size -= 3;
        if (v5 < 0)
        {
          operator delete(*size);
        }
      }

      while (size != v2);
      v4 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v2;
    operator delete(v4);
  }

  sub_255B9D2D8("p", &v36);
  v6 = v29;
  if ((v29 & 0x80u) == 0)
  {
    v7 = v28;
  }

  else
  {
    v7 = v28[0];
  }

  if ((v29 & 0x80u) != 0)
  {
    v6 = v28[1];
  }

  __p.__r_.__value_.__r.__words[0] = v7;
  __p.__r_.__value_.__l.__size_ = v6;
  DWORD2(v37[1]) = 0;
  std::to_string(&v37[2], 128);
  v37[0] = v37[2];
  *&v37[1] = v38;
  DWORD2(v37[1]) = 1;
  *&v37[2] = v37;
  *(&v37[2] + 1) = "f";
  v38 = v37;
  v39 = "f";
  v40 = "f";
  sub_255A803C4(&v38, v37);
  if (DWORD2(v37[1]) == -1)
  {
    sub_255A7C284();
  }

  *&v37[2] = &v41;
  (off_2867D0A20[DWORD2(v37[1])])(v26, &v37[2], v37);
  if (DWORD2(v37[1]) != -1)
  {
    (off_2867D0A08[DWORD2(v37[1])])(&v37[2], v37);
  }

  v8 = v27;
  v9 = v26;
  if ((v27 & 0x80u) != 0)
  {
    v9 = v26[0];
    v8 = v26[1];
  }

  __p.__r_.__value_.__r.__words[2] = v9;
  v43 = v8;
  sub_255B9DDF4("fp", &v35);
  v10 = HIBYTE(v38);
  if (SHIBYTE(v38) >= 0)
  {
    v11 = &v37[2];
  }

  else
  {
    v11 = *&v37[2];
  }

  if (SHIBYTE(v38) < 0)
  {
    v10 = *(&v37[2] + 1);
  }

  v44[0].__locale_ = v11;
  v44[1].__locale_ = v10;
  v12 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  v13 = &v31;
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v31.__r_.__value_.__l.__size_;
    v13 = v31.__r_.__value_.__r.__words[0];
  }

  v44[2].__locale_ = v13;
  v44[3].__locale_ = v12;
  v44[4].__locale_ = "aspctxdesc";
  v44[5].__locale_ = 10;
  sub_255B9D2D8("b", &v34);
  v14 = BYTE7(v37[1]);
  if ((SBYTE7(v37[1]) & 0x80u) == 0)
  {
    v15 = v37;
  }

  else
  {
    v15 = *&v37[0];
  }

  if (SBYTE7(v37[1]) < 0)
  {
    v14 = *(&v37[0] + 1);
  }

  v44[6].__locale_ = v15;
  v45 = v14;
  sub_255A7F250(&__p, &v46, "_", 1uLL, &v30);
  v16 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v16 = v30.__r_.__value_.__l.__size_;
    v17 = (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v17 - v30.__r_.__value_.__l.__size_ < 0xD)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v30.__r_.__value_.__l.__size_ + 13 - v17)
      {
        sub_255A7BCA8();
      }

LABEL_36:
      operator new();
    }

    v18 = v30.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) - 10) < 0xD)
    {
      goto LABEL_36;
    }

    v18 = &v30;
  }

  qmemcpy(v18 + v16, ".espresso.net", 13);
  v19 = v16 + 13;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    v30.__r_.__value_.__l.__size_ = v16 + 13;
  }

  else
  {
    *(&v30.__r_.__value_.__s + 23) = v19 & 0x7F;
  }

  v18->__r_.__value_.__s.__data_[v19] = 0;
  v25 = v30;
  memset(&v30, 0, sizeof(v30));
  if (SBYTE7(v37[1]) < 0)
  {
    operator delete(*&v37[0]);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
LABEL_44:
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }
  }

  else if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(*&v37[2]);
  if ((v27 & 0x80000000) == 0)
  {
LABEL_45:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_62:
    operator delete(v28[0]);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_61:
  operator delete(v26[0]);
  if (v29 < 0)
  {
    goto LABEL_62;
  }

LABEL_46:
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_63:
  operator delete(v31.__r_.__value_.__l.__data_);
LABEL_47:
  v20 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v25.__r_.__value_.__l.__size_;
  }

  if (v21 + 38 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v21 + 38 > 0x16)
  {
    operator new();
  }

  qmemcpy(v37, "CV3D_LearnedFeatures_AspCtxDesc_Model/", 38);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v25;
  }

  else
  {
    v22 = v25.__r_.__value_.__r.__words[0];
  }

  memmove(&v37[2] + 6, v22, v21);
  *(&v37[2] + v21 + 6) = 0;
  sub_255A7EBE8(&__p);
  sub_255AA8B4C(v37, &__p.__r_.__value_.__r.__words[2], 1, &v37[2]);
  if ((v39 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_255A7F150(&v43, &v30);
    sub_255A83DB0("Failed to access model resource path: ", &v30, &v31);
    std::runtime_error::runtime_error(exception, &v31);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_255A7E018(a1, *&v37[2], *(&v37[2] + 1));
    if ((v39 & 1) != 0 && SHIBYTE(v38) < 0)
    {
      operator delete(*&v37[2]);
    }
  }

  else
  {
    *a1 = v37[2];
    *(a1 + 16) = v38;
  }

  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v23 = *(MEMORY[0x277D82818] + 72);
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  __p.__r_.__value_.__r.__words[2] = v23;
  v43 = MEMORY[0x277D82878] + 16;
  if (v46.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v45);
  }

  v43 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v44);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](v47);
  if ((SBYTE7(v37[1]) & 0x80000000) == 0)
  {
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_73:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(*&v37[0]);
  if (v20 < 0)
  {
    goto LABEL_73;
  }
}

void sub_255B9E6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v66 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v66)
  {
LABEL_8:
    if (a52 == 1 && a51 < 0)
    {
      operator delete(a46);
    }

    sub_255A7F000(&a55, MEMORY[0x277D82818]);
    MEMORY[0x259C49250](&a65);
    if (a44 < 0)
    {
      operator delete(a39);
    }

    if (v67 < 0)
    {
      operator delete(a9);
      _Unwind_Resume(a1);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v65);
  goto LABEL_8;
}

uint64_t sub_255B9E8F0(uint64_t result, uint64_t a2, __int128 *a3, __int128 *a4, int *a5, uint64_t a6)
{
  v6 = *a3;
  *(result + 16) = *(a3 + 4);
  *result = v6;
  if (*(a4 + 20) == 1)
  {
    v7 = *a4;
    *(result + 36) = *(a4 + 4);
    *(result + 20) = v7;
  }

  else
  {
    v8 = *a3;
    v9 = *(a3 + 1);
    if (v9)
    {
      v10 = *a3;
    }

    else
    {
      v10 = 0;
    }

    *(result + 20) = *a3 != 0;
    *(result + 24) = v10;
    v11 = v9 * v8;
    v12 = *(a3 + 2);
    v13 = *(a3 + 3);
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 * v11;
    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *(result + 28) = v14;
    *(result + 32) = v16;
    v17 = v13 * v15;
    if (!*(a3 + 4))
    {
      v17 = 0;
    }

    *(result + 36) = v17;
  }

  *(result + 40) = a2;
  v18 = *a5;
  *(result + 56) = 0;
  *(result + 48) = v18;
  *(result + 112) = 0;
  if (*(a6 + 56) == 1)
  {
    *(result + 56) = &unk_2867C56D0;
    v19 = *(a6 + 8);
    v20 = *(a6 + 16);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *(a6 + 40);
      v22 = *(a6 + 48);
      v23 = *(a6 + 52);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v21 = *(a6 + 40);
      v22 = *(a6 + 48);
      v23 = *(a6 + 52);
    }

    *(result + 64) = v19;
    *(result + 72) = v20;
    v24 = *(a6 + 24);
    *(result + 88) = *(a6 + 32);
    *(result + 80) = v24;
    *(result + 96) = v21;
    *(result + 104) = v22;
    *(result + 108) = v23;
    if (v20)
    {
      if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v25 = result;
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
        result = v25;
      }
    }

    *(result + 112) = 1;
  }

  return result;
}

uint64_t sub_255B9EA74(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_2867C54D0;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 4;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_255B9ECA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9ECBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9ECD0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B9ED48(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_2867C5550;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 4;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_255B9EF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9EF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9EFA4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B9F01C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_2867C5290;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (2 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 2;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (2 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_255B9F250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9F264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9F278(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B9F2F0(uint64_t result, uint64_t a2, __int128 *a3, __int128 *a4, int *a5, uint64_t a6)
{
  v6 = *a3;
  *(result + 16) = *(a3 + 4);
  *result = v6;
  if (*(a4 + 20) == 1)
  {
    v7 = *a4;
    *(result + 36) = *(a4 + 4);
    *(result + 20) = v7;
  }

  else
  {
    v8 = *a3;
    v9 = *(a3 + 1);
    if (v9)
    {
      v10 = *a3;
    }

    else
    {
      v10 = 0;
    }

    *(result + 20) = *a3 != 0;
    *(result + 24) = v10;
    v11 = v9 * v8;
    v12 = *(a3 + 2);
    v13 = *(a3 + 3);
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 * v11;
    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *(result + 28) = v14;
    *(result + 32) = v16;
    v17 = v13 * v15;
    if (!*(a3 + 4))
    {
      v17 = 0;
    }

    *(result + 36) = v17;
  }

  *(result + 40) = a2;
  v18 = *a5;
  *(result + 56) = 0;
  *(result + 48) = v18;
  *(result + 112) = 0;
  if (*(a6 + 56) == 1)
  {
    *(result + 56) = &unk_2867C5710;
    v19 = *(a6 + 8);
    v20 = *(a6 + 16);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *(a6 + 40);
      v22 = *(a6 + 48);
      v23 = *(a6 + 52);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v21 = *(a6 + 40);
      v22 = *(a6 + 48);
      v23 = *(a6 + 52);
    }

    *(result + 64) = v19;
    *(result + 72) = v20;
    v24 = *(a6 + 24);
    *(result + 88) = *(a6 + 32);
    *(result + 80) = v24;
    *(result + 96) = v21;
    *(result + 104) = v22;
    *(result + 108) = v23;
    if (v20)
    {
      if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v25 = result;
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
        result = v25;
      }
    }

    *(result + 112) = 1;
  }

  return result;
}

uint64_t sub_255B9F47C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_2867C5490;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 4;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_255B9F6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9F6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9F6D8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B9F750(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_2867C5510;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 4;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_255B9F984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9F998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9F9AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_255B9FA24(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = a3;
  v8 = *(a1 + 48);
  if ((v8 & 0x10) != 0)
  {
    sub_255AA0880(a1, &v98);
    v15 = v101;
    v16 = &v98[(v102 * a2 + HIDWORD(v102) * v4)];
    if (HIDWORD(*(&v99 + 4)))
    {
      v17 = DWORD1(v99) == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(&v99 + 4);
    }

    v105 = &v98[(v102 * a2 + HIDWORD(v102) * v4)];
    v106 = v19;
    v107 = v101;
    v20 = HIDWORD(v101);
    if (HIDWORD(v19) * HIDWORD(v101) != -1)
    {
      v104 = HIDWORD(v101);
      v21 = *(a1 + 48);
      if (v21 <= 19)
      {
LABEL_22:
        if ((v21 - 16) < 2)
        {
          v98 = &unk_2867C5610;
          if (v19)
          {
            v22 = v18;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = v15 & 0xFFFFFFFF00000000;
          }

          v108 = 0;
          v109 = 0;
          if (v22)
          {
            v24 = 0;
          }

          else
          {
            v24 = v19;
          }

          if (HIDWORD(v24) * HIDWORD(v23) != -1)
          {
            goto LABEL_165;
          }

          sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
          if (byte_27F7DD630 == 1)
          {
            if (byte_27F7DD638 != 1 || (v25 = qword_27F7DD608, v26 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
            {
LABEL_164:
              qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_165:
              if (v19)
              {
                v85 = v23 + 1;
              }

              else
              {
                v85 = v23;
              }

              v99 = 0uLL;
              v100 = v16;
              v101 = v24;
              v102 = v85;
              v103 = 0;
              *a4 = &unk_2867C5710;
              sub_255B62A60(&v98, (a4 + 1));
              goto LABEL_177;
            }
          }

          else
          {
            v25 = qword_27F7DD608;
            v26 = *algn_27F7DD610;
            if (qword_27F7DD608 == *algn_27F7DD610)
            {
              goto LABEL_181;
            }
          }

          do
          {
            (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
            v25 += 16;
          }

          while (v25 != v26);
          if ((byte_27F7DD630 & 1) == 0)
          {
            goto LABEL_181;
          }

          goto LABEL_164;
        }

        if (v21 == 18)
        {
          sub_255B9F01C(&v98, v16, &v106, &v104);
          *a4 = &unk_2867C5710;
          sub_255BA17B0(&v98, (a4 + 1));
          goto LABEL_177;
        }

LABEL_184:
        sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 138, &unk_255C2500B, 0, "Unsupported image format", 0x18uLL, sub_255C101E0);
        abort();
      }

LABEL_56:
      if (v21 == 20)
      {
        sub_255B9ED48(&v98, v16, &v106, &v104);
        *a4 = &unk_2867C5710;
        sub_255BA1654(&v98, (a4 + 1));
        goto LABEL_177;
      }

      if (v21 == 24)
      {
        sub_255B9EA74(&v98, v16, &v106, &v104);
        *a4 = &unk_2867C5710;
        sub_255BA139C(&v98, (a4 + 1));
        goto LABEL_177;
      }

      goto LABEL_184;
    }

    v93 = a4;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_55;
      }

      v34 = qword_27F7DD608;
      v33 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v34 = qword_27F7DD608;
      v33 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_181;
      }
    }

    do
    {
      v36 = *v34;
      v35 = *(v34 + 8);
      v34 += 16;
      v36(v35, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v34 != v33);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_181;
    }

LABEL_55:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    a4 = v93;
    v104 = v20;
    v21 = *(a1 + 48);
    if (v21 <= 19)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

  if ((v8 & 0x20) != 0)
  {
    if (*(a1 + 112) == 1)
    {
      if (*(a1 + 108) == 1 && *(a1 + 96))
      {
        v28 = *(a1 + 64);
        v29 = *(a1 + 72);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v30 = a4;
            v31 = v28;
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
            v28 = v31;
            a4 = v30;
          }
        }

        (*(*v28 + 88))(v28, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v32 = 96;
        v4 = a3;
      }

      else
      {
        v32 = 96;
      }
    }

    else
    {
      v32 = 40;
    }

    v37 = 0;
    v38 = 0;
    v39 = *(a1 + 36) >> 1;
    v91 = a2;
    if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*a1))) & 1) == 0 && *(a1 + 16))
    {
      v38 = *(a1 + 4);
      v37 = *(a1 + 16);
    }

    v40 = *(a1 + 28);
    v89 = *(a1 + 32);
    v41 = *(a1 + v32);
    v88 = v41;
    if (v37 * v39 != -1)
    {
LABEL_82:
      v55 = v40 >> 1;
      if (HIDWORD(v38))
      {
        v56 = v38 == 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = v56;
      if (v56)
      {
        v38 = 0;
      }

      if (v55 * HIDWORD(v38) != -1)
      {
LABEL_99:
        if ((*(a1 + 48) & 0xFFFFFFFE) != 0x20)
        {
          sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 148, &unk_255C2500B, 0, "Unsupported image format", 0x18uLL, sub_255C101E0);
          abort();
        }

        v98 = &unk_2867C53D0;
        v62 = v38;
        if (v38)
        {
          v63 = v57;
        }

        else
        {
          v63 = 1;
        }

        if (v63)
        {
          v64 = 0;
        }

        else
        {
          v64 = v55 << 32;
        }

        v105 = 0;
        v106 = 0;
        if (v63)
        {
          v38 = 0;
        }

        if (HIDWORD(v38) * HIDWORD(v64) != -1)
        {
          goto LABEL_157;
        }

        sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
        if (byte_27F7DD630 == 1)
        {
          if (byte_27F7DD638 != 1 || (v65 = qword_27F7DD608, v66 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
          {
LABEL_156:
            qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
            v41 = v88;
LABEL_157:
            if (v62)
            {
              v84 = v64 + 1;
            }

            else
            {
              v84 = v64;
            }

            v99 = 0uLL;
            v100 = v41 + 2 * ((v89 >> 1) * v91 + v39 * v4);
            v101 = v38;
            v102 = v84;
            v103 = 0;
            *a4 = &unk_2867C5710;
            sub_255BA1A68(&v98, (a4 + 1));
            goto LABEL_177;
          }
        }

        else
        {
          v65 = qword_27F7DD608;
          v66 = *algn_27F7DD610;
          if (qword_27F7DD608 == *algn_27F7DD610)
          {
            goto LABEL_181;
          }
        }

        do
        {
          (*v65)(*(v65 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          v65 += 16;
        }

        while (v65 != v66);
        if ((byte_27F7DD630 & 1) == 0)
        {
          goto LABEL_181;
        }

        goto LABEL_156;
      }

      v96 = a4;
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v59 = qword_27F7DD608, v58 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_98:
          qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          a4 = v96;
          v41 = v88;
          goto LABEL_99;
        }
      }

      else
      {
        v59 = qword_27F7DD608;
        v58 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_181;
        }
      }

      do
      {
        v61 = *v59;
        v60 = *(v59 + 8);
        v59 += 16;
        v61(v60, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v59 != v58);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_98;
    }

    v94 = a4;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v43 = qword_27F7DD608, v42 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_81:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a4 = v94;
        goto LABEL_82;
      }
    }

    else
    {
      v43 = qword_27F7DD608;
      v42 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_181;
      }
    }

    do
    {
      v54 = *v43;
      v53 = *(v43 + 8);
      v43 += 16;
      v54(v53, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v43 != v42);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_81;
  }

  if ((v8 & 0x40) == 0)
  {
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 164, &unk_255C2500B, 0, "Unsupported image format", 0x18uLL, sub_255C101E0);
    abort();
  }

  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 108) == 1 && *(a1 + 96))
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v12 = a4;
          v13 = v10;
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          v10 = v13;
          a4 = v12;
        }
      }

      (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v14 = 96;
      v4 = a3;
    }

    else
    {
      v14 = 96;
    }
  }

  else
  {
    v14 = 40;
  }

  v44 = 0;
  v45 = 0;
  v46 = *(a1 + 36) >> 2;
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*a1))) & 1) == 0 && *(a1 + 16))
  {
    v45 = *(a1 + 4);
    v44 = *(a1 + 16);
  }

  v47 = *(a1 + 24);
  v48 = *(a1 + 28);
  v49 = *(a1 + 32);
  v50 = *(a1 + v14);
  if (v44 * v46 == -1)
  {
    v90 = *(a1 + v14);
    v92 = a2;
    v95 = a4;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v51 = qword_27F7DD608, v52 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_116:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a4 = v95;
        a2 = v92;
        v50 = v90;
        goto LABEL_117;
      }
    }

    else
    {
      v51 = qword_27F7DD608;
      v52 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_181;
      }
    }

    do
    {
      v68 = *v51;
      v67 = *(v51 + 8);
      v51 += 16;
      v68(v67, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v51 != v52);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_116;
  }

LABEL_117:
  v69 = v48 >> 2;
  v70 = (v47 >> 2) & 0xC0000000FFFFFFFFLL | ((v48 >> 2) << 32);
  v71 = v50 + 4 * ((v49 >> 2) * a2 + v46 * v4);
  if (HIDWORD(v45))
  {
    v72 = v45 == 0;
  }

  else
  {
    v72 = 1;
  }

  v73 = v72;
  if (v72)
  {
    v45 = 0;
  }

  v105 = v71;
  v106 = v45;
  v107 = v70;
  if (v69 * HIDWORD(v45) != -1)
  {
    v104 = v48 >> 2;
    v74 = *(a1 + 48);
    if ((v74 - 64) >= 2)
    {
      goto LABEL_127;
    }

    goto LABEL_139;
  }

  v97 = a4;
  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_138;
    }

    v75 = qword_27F7DD608;
    v76 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_138;
    }
  }

  else
  {
    v75 = qword_27F7DD608;
    v76 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_181;
    }
  }

  do
  {
    v78 = *v75;
    v77 = *(v75 + 8);
    v75 += 16;
    v78(v77, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v75 != v76);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_181;
  }

LABEL_138:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  a4 = v97;
  v104 = v48 >> 2;
  v74 = *(a1 + 48);
  if ((v74 - 64) < 2)
  {
LABEL_139:
    v98 = &unk_2867C5350;
    if (v45)
    {
      v79 = v73;
    }

    else
    {
      v79 = 1;
    }

    if (v79)
    {
      v80 = 0;
    }

    else
    {
      v80 = v69 << 32;
    }

    v108 = 0;
    v109 = 0;
    if (v79)
    {
      v81 = 0;
    }

    else
    {
      v81 = v45;
    }

    if (HIDWORD(v81) * HIDWORD(v80) != -1)
    {
      goto LABEL_173;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v82 = qword_27F7DD608, v83 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_172:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_173:
        if (v45)
        {
          v86 = v80 + 1;
        }

        else
        {
          v86 = v80;
        }

        v99 = 0uLL;
        v100 = v71;
        v101 = v81;
        v102 = v86;
        v103 = 0;
        *a4 = &unk_2867C5710;
        sub_255B5C9C4(&v98, (a4 + 1));
        goto LABEL_177;
      }
    }

    else
    {
      v82 = qword_27F7DD608;
      v83 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_181;
      }
    }

    do
    {
      (*v82)(*(v82 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v82 += 16;
    }

    while (v82 != v83);
    if (byte_27F7DD630)
    {
      goto LABEL_172;
    }

LABEL_181:
    abort();
  }

LABEL_127:
  if (v74 == 68)
  {
    sub_255B9F750(&v98, v71, &v106, &v104);
    *a4 = &unk_2867C5710;
    sub_255BA1FD8(&v98, (a4 + 1));
  }

  else
  {
    if (v74 != 72)
    {
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 162, &unk_255C2500B, 0, "Unsupported image format", 0x18uLL, sub_255C101E0);
      abort();
    }

    sub_255B9F47C(&v98, v71, &v106, &v104);
    *a4 = &unk_2867C5710;
    sub_255BA1D20(&v98, (a4 + 1));
  }

LABEL_177:
  v87 = *(&v99 + 1);
  if (*(&v99 + 1))
  {
    if (!atomic_fetch_add((*(&v99 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v87->__on_zero_shared)(v87);
      std::__shared_weak_count::__release_weak(v87);
    }
  }
}

void sub_255BA0A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B9F9AC(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B9F6D8(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B9EFA4(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B9ECD0(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255A9BCA4(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B5A1C8(va);
  _Unwind_Resume(a1);
}

void sub_255BA0AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA0AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B9F278(va);
  _Unwind_Resume(a1);
}

void sub_255BA0B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BA0B30(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return result;
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 171, "buffer.image", 0xCuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_11:
        qword_27F7DD620(*algn_27F7DD628, "buffer.image", 12, &unk_255C2500B, 0);
        goto LABEL_12;
      }
    }

    else
    {
      v3 = qword_27F7DD608;
      v4 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_42;
      }
    }

    do
    {
      v6 = *v3;
      v5 = *(v3 + 8);
      v3 += 16;
      v6(v5, "buffer.image", 12, &unk_255C2500B, 0);
    }

    while (v3 != v4);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_11;
  }

LABEL_12:
  v7 = (*(*(a1 + 56) + 40))(a1 + 56);
  if (v8)
  {
    v22 = 0;
    v23 = 0;
    v21 = &unk_2867C4068;
    (*(*v7 + 56))(v7, &v21);
    if (v22)
    {
      v10 = *v22;
      v9 = v22[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }

      if (v10)
      {
        result = sub_255BFC270(&v21, 0);
        v21 = &unk_2867C4068;
        v11 = v23;
        if (v23)
        {
          if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v12 = result;
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
            return v12;
          }
        }

        return result;
      }
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v21 = &unk_2867C4068;
  v13 = v23;
  if (!v23 || atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!sub_255BC3664(a1 + 56))
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (sub_255BC3664(a1 + 56))
  {
LABEL_25:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 179, "!img::HasIOSurface(*buffer.image)", 0x21uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_32:
        qword_27F7DD620(*algn_27F7DD628, "!img::HasIOSurface(*buffer.image)", 33, &unk_255C2500B, 0);
        goto LABEL_33;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_42;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "!img::HasIOSurface(*buffer.image)", 33, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_32;
    }

LABEL_42:
    abort();
  }

LABEL_33:
  if (*(a1 + 108) == 1 && *(a1 + 96))
  {
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v20 = v18;
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
        v18 = v20;
      }
    }

    (*(*v18 + 88))(v18, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
  }

  return *(a1 + 96);
}

void sub_255BA0FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255BA0FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_255BA1000(_DWORD *result, int a2, int a3, int a4, int a5, int a6)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  return result;
}

BOOL sub_255BA1010(_DWORD *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v4 = v2 < 2 && v1 < 2;
  if (!v4)
  {
    v5 = 0;
    v6 = a1[6];
    if (v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v5 = a1[2] < 2u;
  v6 = a1[6];
  if (!v6)
  {
    return 0;
  }

LABEL_9:
  v7 = a1[1];
  v8 = v7 != 0;
  if (v7 != 0 && !v5)
  {
    v9 = a1[7];
    v8 = v9 >= v7 * v6;
    if (v9 < v7 * v6)
    {
      LOBYTE(v4) = 1;
    }

    if (!v4)
    {
      v10 = a1[2] * v9;
      v11 = a1[8];
      v8 = v11 >= v10;
      if (v2 >= 2 && v11 >= v10)
      {
        return a1[9] >= v11 * v1;
      }
    }
  }

  return v8;
}

BOOL sub_255BA10BC(_DWORD *a1, int a2)
{
  v2 = a1[10];
  if (((v2 >> 1) & 1) + (v2 & 1) + ((v2 >> 2) & 1) + ((v2 >> 3) & 1) > 1 || ((v2 >> 4) & 1) + ((v2 >> 5) & 1) + ((v2 >> 6) & 1) > 1)
  {
    return 0;
  }

  v3 = 2;
  v4 = (v2 & 0xC) != 0;
  if ((v2 & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v3 = 4 * ((v2 & 0xC) != 0);
  }

  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  v6 = (v2 & 1) != 0 || v4;
  if (a2 == 16)
  {
    v7 = 1;
    v8 = 2;
    v9 = 4;
    if ((v2 & 0x40) == 0)
    {
      v9 = 1;
    }

    if ((v2 & 0x20) == 0)
    {
      v8 = v9;
    }

    if ((v2 & 0x10) == 0)
    {
      v7 = v8;
    }

    if (!v6)
    {
      LODWORD(v5) = 1;
    }

    v5 = v7 * v5;
  }

  else
  {
    if ((v2 & 0x70) != 0 && ((v2 & 0x10) != 0 || (v2 & 0x70) != a2))
    {
      return 0;
    }

    if ((v6 & 1) == 0)
    {
      v10 = a1 + 6;
      v5 = 1;
      return v5 <= *v10;
    }
  }

  v10 = a1 + 6;
  if (v5 == 1)
  {
    return v5 <= *v10;
  }

  v11 = a1[4];
  v12 = a1[6] % v5;
  if (v11 > 1 || a1[3] > 1u)
  {
    if (!v12 && !(a1[7] % v5) && !(a1[8] % v5) && (v11 < 2 || !(a1[9] % v5)))
    {
      return v5 <= *v10;
    }
  }

  else if (!v12 && (a1[2] <= 1u || !(a1[7] % v5)))
  {
    return v5 <= *v10;
  }

  return 0;
}

void sub_255BA1240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA12F8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA139C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 29;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA14E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA14F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA15B0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA1654(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 25;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA17B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 5;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA18F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA190C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA19C4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA1A68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 2, a1 + 40, 2, 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 3;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA1BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA1BC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA1C7C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA1D20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 32;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA1E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA1E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA1F34(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA1FD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 28;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA2120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BA2134(uint64_t result)
{
  *result = &unk_2867C7E00;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_255BA2190(uint64_t a1)
{
  *a1 = &unk_2867C7E00;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA2224(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);
  return a1;
}

void sub_255BA22A4(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);

  JUMPOUT(0x259C49320);
}

void sub_255BA2344(uint64_t a1)
{
  sub_255A81DE0(v5, (a1 + 8));
  if (*(a1 + 152) == 1)
  {
    v4 = *(a1 + 128);
    v3 = *(a1 + 136);
    if (v3 != v4)
    {
      if ((0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 2)) < 0x924924924924925)
      {
        operator new();
      }

      sub_255B5C70C();
    }
  }

  sub_255BAF224(v5);
}

void sub_255BA2638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  sub_255A829E0(va);
  _Unwind_Resume(a1);
}

void sub_255BA2680(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 120);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v11 = *(a1 + 8);
        v12 = *(a1 + 16);
        v23[3] = &unk_2867C8750;
        v24 = v11;
        v25 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          v11 = v24;
          v12 = v25;
        }

        v23[0] = &unk_2867C8750;
        v23[1] = v11;
        v23[2] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        }

        sub_255AE1364(v23);
      }

      goto LABEL_41;
    }

    sub_255BA32AC(a2, a1);
  }

  else
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = *(a1 + 16);
        v26 = *a1;
        *v27 = v5;
        *&v27[16] = *(a1 + 32);
        v28 = *(a1 + 48);
        LOBYTE(v29) = 0;
        v37 = 0;
        if (*(a1 + 112) == 1)
        {
          v29 = &unk_2867C5710;
          v6 = *(a1 + 64);
          v7 = *(a1 + 72);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v8 = *(a1 + 96);
            v9 = *(a1 + 104);
            v10 = *(a1 + 108);
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v8 = *(a1 + 96);
            v9 = *(a1 + 104);
            v10 = *(a1 + 108);
          }

          v19 = &v34;
          v30 = v6;
          v31 = v7;
          v32 = *(a1 + 80);
          v33 = *(a1 + 88);
          v34 = v8;
          v35 = v9;
          v36 = v10;
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, a1);
            std::__shared_weak_count::__release_weak(v7);
          }

          v37 = 1;
          if (v36 == 1 && v34)
          {
            v20 = v30;
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v31->__on_zero_shared)(v31, v2);
                std::__shared_weak_count::__release_weak(v31);
                v20 = v30;
              }
            }

            (*(*v20 + 88))(v20, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          }
        }

        else
        {
          v19 = &v27[24];
        }

        LODWORD(v43) = *v27;
        v39 = 4 * *&v27[20];
        v40 = 1;
        v21 = *v19;
        v42 = v26;
        v38 = vshlq_n_s32(*&v27[4], 2uLL);
        LODWORD(v41) = v28;
        sub_255B9F2F0(a2, v21, &v42, v38.i8, &v41, &v29);
        if (v37 == 1)
        {
          v22 = v31;
          if (v31)
          {
            if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }
          }
        }

        return;
      }

LABEL_41:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Execution.cpp", 111, &unk_255C2500B, 0, "Not implemented", 0xFuLL, sub_255C101E0);
      abort();
    }

    v13 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 56) = 0;
    *(a2 + 112) = 0;
    if (*(a1 + 112) == 1)
    {
      *(a2 + 56) = &unk_2867C5710;
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = *(a1 + 96);
        v17 = *(a1 + 104);
        v18 = *(a1 + 108);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v16 = *(a1 + 96);
        v17 = *(a1 + 104);
        v18 = *(a1 + 108);
      }

      *(a2 + 64) = v14;
      *(a2 + 72) = v15;
      *(a2 + 80) = *(a1 + 80);
      *(a2 + 88) = *(a1 + 88);
      *(a2 + 96) = v16;
      *(a2 + 104) = v17;
      *(a2 + 108) = v18;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15, a1);
        std::__shared_weak_count::__release_weak(v15);
      }

      *(a2 + 112) = 1;
    }
  }
}

void sub_255BA31B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255BA31C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255A9247C(va);
  sub_255BA3838(v14 - 128);
  sub_255BA3838(v14 - 184);
  sub_255B02AA4(&a9);
  sub_255B02AA4(&a12);
  _Unwind_Resume(a1);
}

void sub_255BA320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  if (*(v40 - 217) < 0)
  {
    operator delete(*(v40 - 240));
    if ((v39 & 1) == 0)
    {
LABEL_6:
      sub_255A7A508(v40 - 200);
      sub_255A7A508(va);
      sub_255B0A26C(&a31);
      sub_255B0A26C(&a15);
      sub_255B02AA4(&a9);
      sub_255B02AA4(&a12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v38);
  goto LABEL_6;
}

void sub_255BA327C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255BA3290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B02AA4(&a9);
  sub_255B02AA4(&a12);
  _Unwind_Resume(a1);
}

void sub_255BA32AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 > 24)
  {
    if (v3 > 28)
    {
      if (v3 == 29)
      {
        v11 = &unk_2867C54D0;
        sub_255BABBE4(a2, &v12);
        sub_255BA7208(a1, &v11);
        goto LABEL_29;
      }

      if (v3 == 32)
      {
        v7 = &unk_2867C5490;
        sub_255BAC568(a2, &v8);
        sub_255BA7338(&v11, &v7);
        sub_255BA7468(a1, &v11);
        goto LABEL_22;
      }
    }

    else
    {
      if (v3 == 25)
      {
        v11 = &unk_2867C5550;
        sub_255BAA8D8(a2, &v12);
        sub_255BA6FA8(a1, &v11);
        goto LABEL_29;
      }

      if (v3 == 28)
      {
        v7 = &unk_2867C5510;
        sub_255BAB25C(a2, &v8);
        sub_255BA70D8(&v11, &v7);
        sub_255BA7468(a1, &v11);
        goto LABEL_22;
      }
    }

LABEL_32:
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Execution.cpp", 87, &unk_255C2500B, 0, "Not implemented", 0xFuLL, sub_255C101E0);
    abort();
  }

  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v7 = &unk_2867C5350;
      sub_255BA9FE4(a2, &v8);
      sub_255BA6E80(&v11, &v7);
      sub_255BA7468(a1, &v11);
      goto LABEL_22;
    }

    if (v3 == 5)
    {
      v11 = &unk_2867C5290;
      sub_255A9BE08(a2, &v12);
      v23 = 2;
      v24 = v16;
      v25 = 0x100000001;
      *&v20 = v14;
      DWORD2(v20) = v15;
      HIDWORD(v20) = v15 * HIDWORD(v16);
      v21 = v15 * HIDWORD(v16);
      v22 = 1;
      v19 = 18;
      v7 = &unk_2867C5710;
      sub_255BA17B0(&v11, &v8);
      v10 = 1;
      sub_255B9F2F0(a1, 0, &v23, &v20, &v19, &v7);
      if (v10 == 1)
      {
        v4 = v9;
        if (v9)
        {
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v4->__on_zero_shared)(v4);
            std::__shared_weak_count::__release_weak(v4);
          }
        }
      }

LABEL_29:
      v6 = v13;
      if (!v13)
      {
        return;
      }

      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (v3 == 1)
  {
    v11 = &unk_2867C5610;
    sub_255A98CA0(a2, &v12);
    sub_255BA6B04(a1, &v11);
    goto LABEL_29;
  }

  if (v3 != 3)
  {
    goto LABEL_32;
  }

  v7 = &unk_2867C53D0;
  sub_255BA96F0(a2, &v8);
  sub_255BA6C2C(&v11, &v7);
  sub_255BA6D54(a1, &v11);
LABEL_22:
  if (v18 == 1)
  {
    v5 = v17;
    if (v17)
    {
      if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v6 = v9;
  if (v9)
  {
LABEL_30:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_255BA370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_255A90668(va);
  sub_255B5A1C8(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA3728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_255A90668(va);
  sub_255B9F6D8(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA3744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_255A9247C(&a9);
  sub_255A9AC90(va);
  _Unwind_Resume(a1);
}

void sub_255BA3760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_255A90668(va);
  sub_255B9F9AC(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_255B7985C(va);
  sub_255B9F278(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA3798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_255B9ECD0(va);
  _Unwind_Resume(a1);
}

void sub_255BA37C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_255B9EFA4(va);
  _Unwind_Resume(a1);
}

void sub_255BA37FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_255A9AC90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BA3838(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t *sub_255BA38B0(uint64_t *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v7 = -1;
  v3 = *(a2 + 120);
  if (v3 != -1)
  {
    v5 = v6;
    (off_2867D0AB8[v3])(&v5);
    v7 = v3;
  }

  sub_255B86BD4(a1, v6, 1uLL);
  if (v7 != -1)
  {
    (off_2867D0A98[v7])(&v5, v6);
  }

  return a1;
}

void sub_255BA3974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA39AC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 48) - *(a1 + 40)) >> 3);
  if ((v5 - *a2) >> 7 == v6)
  {
    if (v5 == *a2)
    {
      v207.__r_.__value_.__s.__data_[0] = 0;
      v220[23] = 0;
      v220[0] = 0;
      sub_255AA4630(a3, &v207, v220);
    }

    v7 = *(a1 + 40);
    v8 = *a2;
    LOBYTE(v140) = 0;
    v153 = -1;
    v9 = *(v8 + 120);
    if (v9 == -1)
    {
      if (*(v7 + 80) == 1)
      {
        v164[0] = 0;
        v176 = -1;
        goto LABEL_13;
      }
    }

    else
    {
      *v220 = &v140;
      v10 = off_2867D0AB8[v9];
      (v10)(v220);
      v153 = v9;
      if (*(v7 + 80))
      {
        v164[0] = 0;
        v176 = -1;
        *v220 = v164;
        (v10)(v220, &v140);
        v176 = v9;
        if (v9 == 2)
        {
          v201.__r_.__value_.__r.__words[0] = &unk_2867C5710;
          v32 = *&v164[8];
          v33 = *&v164[16];
          if (*&v164[16])
          {
            atomic_fetch_add_explicit((*&v164[16] + 8), 1uLL, memory_order_relaxed);
            v34 = *(&v165 + 1);
            v35 = v166;
            v36 = v167;
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v34 = *(&v165 + 1);
            v35 = v166;
            v36 = v167;
          }

          v201.__r_.__value_.__l.__size_ = v32;
          v201.__r_.__value_.__r.__words[2] = v33;
          v202 = *&v164[24];
          v203 = v165;
          v204 = v34;
          v205 = v35;
          v206 = v36;
          if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
          }

          sub_255BA32AC(v190, &v201);
          v177.__r_.__value_.__r.__words[0] = 0;
          *&v177.__r_.__value_.__r.__words[1] = *v190;
          v178 = *&v190[16];
          v179 = v191;
          v180 = v192;
          LOBYTE(v181) = 0;
          v189 = 0;
          if (v200 == 1)
          {
            v181 = &unk_2867C5710;
            v52 = v193;
            v53 = v194;
            if (v194)
            {
              atomic_fetch_add_explicit(&v194->__shared_owners_, 1uLL, memory_order_relaxed);
              v54 = v197;
              v55 = v198;
              v56 = v199;
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              v54 = v197;
              v55 = v198;
              v56 = v199;
            }

            v182 = v52;
            v183 = v53;
            v184 = v195;
            v185 = v196;
            v186 = v54;
            v187 = v55;
            v188 = v56;
            if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v53->__on_zero_shared)(v53);
              std::__shared_weak_count::__release_weak(v53);
            }

            v189 = 1;
          }

          sub_255BA81D8(a3, v7, &v177);
        }

        if (v9 != 1)
        {
          if (!v9)
          {
            *v220 = 0;
            *&v220[8] = *v164;
            *&v220[24] = *&v164[16];
            *&v220[40] = v165;
            LODWORD(v221) = v166;
            LOBYTE(v222) = 0;
            v230 = 0;
            if (v175 == 1)
            {
              v222 = &unk_2867C5710;
              v11 = v168;
              v12 = v169;
              if (v169)
              {
                atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
                v13 = v172;
                v14 = v173;
                v15 = v174;
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                v13 = v172;
                v14 = v173;
                v15 = v174;
              }

              v223 = v11;
              v224 = v12;
              v225 = v170;
              LODWORD(v226) = v171;
              v227 = v13;
              v228 = v14;
              v229 = v15;
              if (v12)
              {
                if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v12->__on_zero_shared)(v12);
                  std::__shared_weak_count::__release_weak(v12);
                }
              }

              v230 = 1;
            }

            sub_255BA81D8(a3, v7, v220);
          }

LABEL_13:
          *a3 = &unk_2867C51A8;
          *(a3 + 8) = 0;
          operator new();
        }

        v207.__r_.__value_.__r.__words[0] = 0;
        *&v207.__r_.__value_.__r.__words[1] = *v164;
        v208 = *&v164[16];
        v209 = v165;
        v210 = v166;
        LOBYTE(v211) = 0;
        v219 = 0;
        if (v175 == 1)
        {
          v211 = &unk_2867C5710;
          v27 = v168;
          v28 = v169;
          if (v169)
          {
            atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
            v29 = v172;
            v30 = v173;
            v31 = v174;
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v29 = v172;
            v30 = v173;
            v31 = v174;
          }

          v212 = v27;
          v213 = v28;
          v214 = v170;
          v215 = v171;
          v216 = v29;
          v217 = v30;
          v218 = v31;
          if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v28->__on_zero_shared)(v28);
            std::__shared_weak_count::__release_weak(v28);
          }

          v219 = 1;
        }

        if (*(v7 + 76) == 1)
        {
          v74 = (v7 + 72);
          v75 = v208;
          if (*(v7 + 72) != v208)
          {
            v78 = " is expected to have a batch-size of ";
            v79 = " but has ";
            goto LABEL_227;
          }
        }

        if (*(v7 + 68) == 1)
        {
          v74 = (v7 + 64);
          v75 = HIDWORD(v207.__r_.__value_.__r.__words[2]);
          if (*(v7 + 64) != HIDWORD(v207.__r_.__value_.__r.__words[2]))
          {
            v78 = " is expected to have ";
            v79 = " planes but has ";
            goto LABEL_227;
          }
        }

        if (*(v7 + 44) != 1)
        {
          goto LABEL_145;
        }

        v74 = (v7 + 40);
        if (!*(v7 + 36))
        {
          v75 = 4 * DWORD2(v208);
          if (*v74 != 4 * DWORD2(v208))
          {
            v78 = " of unspecified format (assumed to be Gray8) is expected to have ";
            v79 = " color components but has an incompatible pixel byte stride of ";
            goto LABEL_227;
          }

LABEL_145:
          if (*(v7 + 52) == 1 && (v74 = (v7 + 48), v75 = HIDWORD(v207.__r_.__value_.__r.__words[1]), *(v7 + 48) != HIDWORD(v207.__r_.__value_.__r.__words[1])))
          {
            v78 = " is expected to have a width of ";
            v79 = " but has width ";
          }

          else
          {
            if (*(v7 + 60) != 1 || (v74 = (v7 + 56), v75 = v207.__r_.__value_.__r.__words[2], *(v7 + 56) == LODWORD(v207.__r_.__value_.__r.__words[2])))
            {
              if ((*(v7 + 36) & 1) == 0)
              {
                v201.__r_.__value_.__s.__data_[0] = 0;
                v190[23] = 0;
                v190[0] = 0;
                sub_255AA4630(a3, &v201, v190);
              }

              v81 = *(v7 + 32);
              if (v81)
              {
                v121 = sub_255BACF78((v7 + 32));
                v85 = (4 * DWORD2(v208));
                if (v122)
                {
                  v84 = v121;
                  if (v121 == v85)
                  {
                    goto LABEL_235;
                  }
                }

                else
                {
                  v84 = 1;
                }
              }

              else
              {
                if ((v81 & 2) == 0)
                {
                  if ((v81 & 4) != 0)
                  {
                    v82 = sub_255BACF78((v7 + 32));
                    v84 = (v83 & 1) != 0 ? v82 : 4;
                    v85 = (4 * DWORD2(v208));
                    if (v84 != v85)
                    {
                      goto LABEL_257;
                    }
                  }

LABEL_235:
                  v201.__r_.__value_.__s.__data_[0] = 0;
                  v190[23] = 0;
                  v190[0] = 0;
                  sub_255AA4630(a3, &v201, v190);
                }

                v123 = sub_255BACF78((v7 + 32));
                if (v124)
                {
                  v84 = v123;
                  v85 = (4 * DWORD2(v208));
                  if (v123 == v85)
                  {
                    goto LABEL_235;
                  }
                }

                else
                {
                  LODWORD(v85) = 4 * DWORD2(v208);
                  v84 = 2;
                }
              }

LABEL_257:
              sub_255BA910C(a3, v207.__r_.__value_.__r.__words[0], v86, v84, v85);
            }

            v78 = " is expected to have a height of ";
            v79 = " but has height ";
          }

LABEL_227:
          sub_255BA87A8(a3, v207.__r_.__value_.__r.__words[0], v78, *v74, v79, v75);
        }

        v76 = *(v7 + 32);
        if ((v76 & 0xF) != 0 && (v76 & 0x70) != 0)
        {
          if (v76)
          {
            v77 = 1;
          }

          else if ((v76 & 2) != 0)
          {
            v77 = 2;
          }

          else
          {
            if ((v76 & 0xC) == 0)
            {
LABEL_243:
              LODWORD(v125) = 4 * DWORD2(v208);
              if (4 * DWORD2(v208))
              {
                goto LABEL_254;
              }

              goto LABEL_145;
            }

            v77 = 4;
          }

          if ((v76 & 0x10) != 0)
          {
            v125 = (4 * DWORD2(v208));
            if (v77 == v125)
            {
              goto LABEL_145;
            }
          }

          else
          {
            if ((v76 & 0x20) != 0)
            {
              v125 = (4 * DWORD2(v208));
              if (2 * v77 != v125)
              {
                goto LABEL_254;
              }

              goto LABEL_145;
            }

            if ((v76 & 0x40) == 0)
            {
              goto LABEL_243;
            }

            v125 = (4 * DWORD2(v208));
            if (((v76 >> 4) & 4) * v77 == v125)
            {
              goto LABEL_145;
            }
          }

LABEL_254:
          v119 = sub_255BACF78((v7 + 32));
          v126 = " is expected to have ";
          v127 = " bytes per pixel but has an incompatible pixel byte stride of ";
LABEL_255:
          sub_255BA8B80(a3, v207.__r_.__value_.__r.__words[0], v126, *v74, v119, v120, v127, v125);
        }

        if ((v76 & 0x10) != 0)
        {
          v119 = 1;
        }

        else
        {
          if ((v76 & 0x60) == 0)
          {
            goto LABEL_145;
          }

          if ((v76 & 0x20) == 0)
          {
            if (((v76 >> 4) & 4) == 4 * DWORD2(v208))
            {
              goto LABEL_145;
            }

            v119 = (v76 & 0x40) >> 4;
            v120 = (*(v7 + 32) & 0x40u) >> 6;
LABEL_252:
            LODWORD(v125) = 4 * DWORD2(v208);
            v126 = " of unspecified pixel structure (assumed to be Gray) is expected to have ";
            v127 = " bytes per value but has an incompatible pixel byte stride of ";
            goto LABEL_255;
          }

          v119 = 2;
        }

        LOBYTE(v120) = 1;
        goto LABEL_252;
      }

      if (*(v7 + 120) != 1 || v9 != 0)
      {
        goto LABEL_18;
      }

      v37 = *(v7 + 112);
      if (!v37)
      {
        sub_255A93CCC();
      }

      (*(*v37 + 48))(&v207);
      if (v207.__r_.__value_.__s.__data_[8])
      {
        *&v220[24] = 0;
        std::to_string(&v177, 0);
        v162 = v177;
        v38 = std::string::insert(&v162, 0, "Failure verifying model input ", 0x1EuLL);
        v39 = *&v38->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        v40 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
          v43 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v43 - __p.__r_.__value_.__l.__size_ < 2)
          {
            if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 2 - v43)
            {
              sub_255A7BCA8();
            }

LABEL_43:
            operator new();
          }

          p_p = __p.__r_.__value_.__r.__words[0];
          *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_) = 8250;
          v45 = size + 2;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 21) < 2)
          {
            goto LABEL_43;
          }

          p_p = &__p;
          *(&__p.__r_.__value_.__l.__data_ + SHIBYTE(__p.__r_.__value_.__r.__words[2])) = 8250;
          v45 = v40 + 2;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_45:
            *(&__p.__r_.__value_.__s + 23) = v45 & 0x7F;
            goto LABEL_70;
          }
        }

        __p.__r_.__value_.__l.__size_ = v45;
LABEL_70:
        p_p->__r_.__value_.__s.__data_[v45] = 0;
        v201 = __p;
        memset(&__p, 0, sizeof(__p));
        v57 = *(v207.__r_.__value_.__r.__words[2] + 23);
        if (v57 >= 0)
        {
          v58 = v207.__r_.__value_.__r.__words[2];
        }

        else
        {
          v58 = *v207.__r_.__value_.__r.__words[2];
        }

        if (v57 >= 0)
        {
          v59 = *(v207.__r_.__value_.__r.__words[2] + 23);
        }

        else
        {
          v59 = *(v207.__r_.__value_.__r.__words[2] + 8);
        }

        v60 = std::string::append(&v201, v58, v59);
        v61 = *&v60->__r_.__value_.__l.__data_;
        *&v190[16] = *(&v60->__r_.__value_.__l + 2);
        *v190 = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        sub_255AA4630(a3, &v207.__r_.__value_.__s.__data_[8], v190);
      }

      v207.__r_.__value_.__r.__words[0] = &unk_2867C51A8;
      v41 = v208;
      if (v208 && !atomic_fetch_add((v208 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v41->__on_zero_shared)(v41);
        std::__shared_weak_count::__release_weak(v41);
      }
    }

LABEL_18:
    if (*(v7 + 160) != 1)
    {
      goto LABEL_219;
    }

    if (v153)
    {
      if (v153 != 2)
      {
        if (v153 == 1)
        {
          sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Execution.cpp", 293, &unk_255C2500B, 0, "DataView32f verification not yet implemented", 0x2CuLL, sub_255C101E0);
          abort();
        }

        goto LABEL_219;
      }

      *v220 = &unk_2867C5710;
      v17 = *(&v140 + 1);
      v18 = v141;
      if (v141)
      {
        atomic_fetch_add_explicit((v141 + 8), 1uLL, memory_order_relaxed);
        v19 = *(&v142 + 1);
        v20 = v143;
        v21 = v144;
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v19 = *(&v142 + 1);
        v20 = v143;
        v21 = v144;
      }

      *&v220[8] = v17;
      *&v220[16] = v18;
      *&v220[24] = *(&v141 + 1);
      *&v220[32] = v142;
      *&v220[40] = v19;
      *&v220[48] = v20;
      *&v220[52] = v21;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v46 = *(v7 + 152);
      if (!v46)
      {
        sub_255A93CCC();
      }

      (*(*v46 + 48))(&v177);
      if (!v177.__r_.__value_.__s.__data_[8])
      {
        v177.__r_.__value_.__r.__words[0] = &unk_2867C51A8;
        v50 = v178;
        if (v178 && !atomic_fetch_add((v178 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v50->__on_zero_shared)(v50);
          std::__shared_weak_count::__release_weak(v50);
        }

        v51 = *&v220[16];
        if (!*&v220[16] || atomic_fetch_add((*&v220[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_219;
        }

        goto LABEL_218;
      }

      LODWORD(v208) = 0;
      std::to_string(v190, 0);
      v161 = *v190;
      v47 = std::string::insert(&v161, 0, "Failure verifying model input ", 0x1EuLL);
      v48 = *&v47->__r_.__value_.__l.__data_;
      v162.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
      *&v162.__r_.__value_.__l.__data_ = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v49 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v49 = v162.__r_.__value_.__l.__size_;
        v62 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v62 - v162.__r_.__value_.__l.__size_ < 9)
        {
          if (0x7FFFFFFFFFFFFFF7 - (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v162.__r_.__value_.__l.__size_ + 9 - v62)
          {
            sub_255A7BCA8();
          }

LABEL_79:
          operator new();
        }

        v63 = v162.__r_.__value_.__r.__words[0];
      }

      else
      {
        if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) - 14) < 9)
        {
          goto LABEL_79;
        }

        v63 = &v162;
      }

      v87 = v63 + v49;
      *v87 = *", image: ";
      v87[8] = 32;
      v88 = v49 + 9;
      if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
      {
        v162.__r_.__value_.__l.__size_ = v49 + 9;
      }

      else
      {
        *(&v162.__r_.__value_.__s + 23) = v88 & 0x7F;
      }

      v63->__r_.__value_.__s.__data_[v88] = 0;
      __p = v162;
      memset(&v162, 0, sizeof(v162));
      v89 = *(v177.__r_.__value_.__r.__words[2] + 23);
      if (v89 >= 0)
      {
        v90 = v177.__r_.__value_.__r.__words[2];
      }

      else
      {
        v90 = *v177.__r_.__value_.__r.__words[2];
      }

      if (v89 >= 0)
      {
        v91 = *(v177.__r_.__value_.__r.__words[2] + 23);
      }

      else
      {
        v91 = *(v177.__r_.__value_.__r.__words[2] + 8);
      }

      v92 = std::string::append(&__p, v90, v91);
      v93 = *&v92->__r_.__value_.__l.__data_;
      v201.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
      *&v201.__r_.__value_.__l.__data_ = v93;
      v92->__r_.__value_.__l.__size_ = 0;
      v92->__r_.__value_.__r.__words[2] = 0;
      v92->__r_.__value_.__r.__words[0] = 0;
      sub_255AA4630(a3, &v177.__r_.__value_.__s.__data_[8], &v201);
    }

    *v220 = v140;
    *&v220[16] = v141;
    *&v220[32] = v142;
    *&v220[48] = v143;
    LOBYTE(v221) = 0;
    LOBYTE(v228) = 0;
    if (v152 == 1)
    {
      v221 = &unk_2867C5710;
      v22 = v145;
      v23 = v146;
      if (v146)
      {
        atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = v149;
        v25 = v150;
        v26 = v151;
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v24 = v149;
        v25 = v150;
        v26 = v151;
      }

      v222 = v22;
      v223 = v23;
      v224 = v147;
      LODWORD(v225) = v148;
      v226 = v24;
      LODWORD(v227) = v25;
      WORD2(v227) = v26;
      if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      LOBYTE(v228) = 1;
    }

    v64 = *&v220[12];
    if (!*&v220[12])
    {
      if (v228 != 1)
      {
        goto LABEL_219;
      }

      goto LABEL_216;
    }

    v65 = *&v220[16];
    if (!*&v220[16])
    {
      if (v228 != 1)
      {
        goto LABEL_219;
      }

      goto LABEL_216;
    }

    v66 = 0;
LABEL_89:
    v67 = 0;
    while (1)
    {
      sub_255B9FA24(v220, v66, v67, &v207);
      v68 = *(v7 + 152);
      if (!v68)
      {
        sub_255A93CCC();
      }

      (*(*v68 + 48))(v190);
      if (v190[8])
      {
        LODWORD(v178) = 0;
        std::to_string(&v201, 0);
        v156 = v201;
        v71 = std::string::insert(&v156, 0, "Failure verifying model input ", 0x1EuLL);
        v72 = *&v71->__r_.__value_.__l.__data_;
        v157.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
        *&v157.__r_.__value_.__l.__data_ = v72;
        v71->__r_.__value_.__l.__size_ = 0;
        v71->__r_.__value_.__r.__words[2] = 0;
        v71->__r_.__value_.__r.__words[0] = 0;
        v73 = SHIBYTE(v157.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v73 = v157.__r_.__value_.__l.__size_;
          v80 = (v157.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v80 - v157.__r_.__value_.__l.__size_ < 8)
          {
            if (0x7FFFFFFFFFFFFFF7 - (v157.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v157.__r_.__value_.__l.__size_ + 8 - v80)
            {
              sub_255A7BCA8();
            }

LABEL_143:
            operator new();
          }

          v94 = v157.__r_.__value_.__r.__words[0];
        }

        else
        {
          if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) - 15) < 8)
          {
            goto LABEL_143;
          }

          v94 = &v157;
        }

        *(v94->__r_.__value_.__r.__words + v73) = 0x206567616D69202CLL;
        v95 = v73 + 8;
        if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
        {
          v157.__r_.__value_.__l.__size_ = v73 + 8;
        }

        else
        {
          *(&v157.__r_.__value_.__s + 23) = v95 & 0x7F;
        }

        v94->__r_.__value_.__s.__data_[v95] = 0;
        v158 = v157;
        memset(&v157, 0, sizeof(v157));
        LODWORD(v178) = 0;
        std::to_string(&v201, v66);
        v155 = v201;
        if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = &v155;
        }

        else
        {
          v96 = v155.__r_.__value_.__r.__words[0];
        }

        if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v97 = HIBYTE(v201.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v97 = v155.__r_.__value_.__l.__size_;
        }

        v98 = std::string::append(&v158, v96, v97);
        v99 = *&v98->__r_.__value_.__l.__data_;
        v159.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
        *&v159.__r_.__value_.__l.__data_ = v99;
        v98->__r_.__value_.__l.__size_ = 0;
        v98->__r_.__value_.__r.__words[2] = 0;
        v98->__r_.__value_.__r.__words[0] = 0;
        v100 = SHIBYTE(v159.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v100 = v159.__r_.__value_.__l.__size_;
          v101 = (v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v101 - v159.__r_.__value_.__l.__size_ < 0xA)
          {
            if (0x7FFFFFFFFFFFFFF7 - (v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v159.__r_.__value_.__l.__size_ + 10 - v101)
            {
              sub_255A7BCA8();
            }

LABEL_187:
            operator new();
          }

          v102 = v159.__r_.__value_.__r.__words[0];
        }

        else
        {
          if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) - 13) < 0xA)
          {
            goto LABEL_187;
          }

          v102 = &v159;
        }

        v103 = v102 + v100;
        *v103 = *" of batch ";
        *(v103 + 4) = 8296;
        v104 = v100 + 10;
        if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
        {
          v159.__r_.__value_.__l.__size_ = v100 + 10;
        }

        else
        {
          *(&v159.__r_.__value_.__s + 23) = v104 & 0x7F;
        }

        v102->__r_.__value_.__s.__data_[v104] = 0;
        v160 = v159;
        memset(&v159, 0, sizeof(v159));
        LODWORD(v178) = 0;
        std::to_string(&v201, v67);
        v154 = v201;
        if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v105 = &v154;
        }

        else
        {
          v105 = v154.__r_.__value_.__r.__words[0];
        }

        if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v106 = HIBYTE(v201.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v106 = v154.__r_.__value_.__l.__size_;
        }

        v107 = std::string::append(&v160, v105, v106);
        v108 = *&v107->__r_.__value_.__l.__data_;
        v161.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
        *&v161.__r_.__value_.__l.__data_ = v108;
        v107->__r_.__value_.__l.__size_ = 0;
        v107->__r_.__value_.__r.__words[2] = 0;
        v107->__r_.__value_.__r.__words[0] = 0;
        v109 = SHIBYTE(v161.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v110 = v161.__r_.__value_.__l.__size_;
          v111 = (v161.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v111 - v161.__r_.__value_.__l.__size_ < 2)
          {
            if (0x7FFFFFFFFFFFFFF7 - (v161.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v161.__r_.__value_.__l.__size_ + 2 - v111)
            {
              sub_255A7BCA8();
            }

LABEL_204:
            operator new();
          }

          v112 = v161.__r_.__value_.__r.__words[0];
          *(v161.__r_.__value_.__r.__words[0] + v161.__r_.__value_.__l.__size_) = 8250;
          v113 = v110 + 2;
          if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_208;
          }

LABEL_206:
          *(&v161.__r_.__value_.__s + 23) = v113 & 0x7F;
        }

        else
        {
          if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) - 21) < 2)
          {
            goto LABEL_204;
          }

          v112 = &v161;
          *(&v161.__r_.__value_.__l.__data_ + SHIBYTE(v161.__r_.__value_.__r.__words[2])) = 8250;
          v113 = v109 + 2;
          if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_206;
          }

LABEL_208:
          v161.__r_.__value_.__l.__size_ = v113;
        }

        v112->__r_.__value_.__s.__data_[v113] = 0;
        v162 = v161;
        memset(&v161, 0, sizeof(v161));
        v114 = *(*&v190[16] + 23);
        if (v114 >= 0)
        {
          v115 = *&v190[16];
        }

        else
        {
          v115 = **&v190[16];
        }

        if (v114 >= 0)
        {
          v116 = *(*&v190[16] + 23);
        }

        else
        {
          v116 = *(*&v190[16] + 8);
        }

        v117 = std::string::append(&v162, v115, v116);
        v118 = *&v117->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v118;
        v117->__r_.__value_.__l.__size_ = 0;
        v117->__r_.__value_.__r.__words[2] = 0;
        v117->__r_.__value_.__r.__words[0] = 0;
        sub_255AA4630(a3, &v190[8], &__p);
      }

      *v190 = &unk_2867C51A8;
      v69 = *&v190[24];
      if (*&v190[24] && !atomic_fetch_add((*&v190[24] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v69->__on_zero_shared)(v69);
        std::__shared_weak_count::__release_weak(v69);
        v70 = v207.__r_.__value_.__r.__words[2];
        if (v207.__r_.__value_.__r.__words[2])
        {
LABEL_96:
          if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v70->__on_zero_shared)(v70);
            std::__shared_weak_count::__release_weak(v70);
          }
        }
      }

      else
      {
        v70 = v207.__r_.__value_.__r.__words[2];
        if (v207.__r_.__value_.__r.__words[2])
        {
          goto LABEL_96;
        }
      }

      if (v65 == ++v67)
      {
        while (++v66 != v64)
        {
          v65 = *&v220[16];
          if (*&v220[16])
          {
            goto LABEL_89;
          }
        }

        if (v228 != 1)
        {
LABEL_219:
          v207.__r_.__value_.__s.__data_[0] = 0;
          v220[23] = 0;
          v220[0] = 0;
          sub_255AA4630(a3, &v207, v220);
        }

LABEL_216:
        v51 = v223;
        if (!v223 || atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_219;
        }

LABEL_218:
        (v51->__on_zero_shared)(v51);
        std::__shared_weak_count::__release_weak(v51);
        goto LABEL_219;
      }
    }
  }

  v162.__r_.__value_.__s.__data_[0] = 3;
  *&v220[24] = 0;
  std::to_string(&v207, v6);
  v201 = v207;
  v128 = std::string::insert(&v201, 0, "Expected ", 9uLL);
  v129 = *&v128->__r_.__value_.__l.__data_;
  *&v190[16] = *(&v128->__r_.__value_.__l + 2);
  *v190 = v129;
  v128->__r_.__value_.__l.__size_ = 0;
  v128->__r_.__value_.__r.__words[2] = 0;
  v128->__r_.__value_.__r.__words[0] = 0;
  v130 = v190[23];
  if ((v190[23] & 0x8000000000000000) != 0)
  {
    v131 = (*&v190[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v131 - *&v190[8]) < 0x1B)
    {
      if (0x7FFFFFFFFFFFFFF7 - (*&v190[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v190[8] + 27 - v131)
      {
        sub_255A7BCA8();
      }

LABEL_264:
      operator new();
    }

    v132 = *v190;
    qmemcpy((*v190 + *&v190[8]), " model inputs but received ", 27);
    v133 = *&v190[8] + 27;
    *&v190[8] += 27;
  }

  else
  {
    if (v190[23] < 0x17)
    {
      goto LABEL_264;
    }

    v132 = v190;
    qmemcpy(&v190[v190[23]], " model inputs but received ", 27);
    v133 = v130 + 27;
    v190[23] = (v130 + 27) & 0x7F;
  }

  v132[v133] = 0;
  *v164 = *v190;
  *&v164[16] = *&v190[16];
  memset(v190, 0, 24);
  v134 = (a2[1] - *a2) >> 7;
  *&v220[24] = 0;
  std::to_string(&v207, v134);
  __p = v207;
  if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v135 = &__p;
  }

  else
  {
    v135 = __p.__r_.__value_.__r.__words[0];
  }

  if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v136 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v136 = __p.__r_.__value_.__l.__size_;
  }

  v137 = std::string::append(v164, v135, v136);
  v138 = *&v137->__r_.__value_.__l.__data_;
  v177.__r_.__value_.__r.__words[2] = v137->__r_.__value_.__r.__words[2];
  *&v177.__r_.__value_.__l.__data_ = v138;
  v137->__r_.__value_.__l.__size_ = 0;
  v137->__r_.__value_.__r.__words[2] = 0;
  v137->__r_.__value_.__r.__words[0] = 0;
  sub_255AA4630(a3, &v162, &v177);
}

void sub_255BA5CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  sub_255BA872C(&STACK[0x3D0]);
  sub_255B69740(&STACK[0x210]);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA5FA8(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255BA6130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
    if (SLOBYTE(STACK[0x3A7]) < 0)
    {
LABEL_5:
      operator delete(STACK[0x390]);
      if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    goto LABEL_5;
  }

  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_9:
  operator delete(a66);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_12:
    JUMPOUT(0x255BA61D4);
  }

LABEL_13:
  JUMPOUT(0x255BA61A8);
}

void sub_255BA6174()
{
  if ((SLOBYTE(STACK[0x3A7]) & 0x80000000) == 0)
  {
    JUMPOUT(0x255BA6180);
  }

  JUMPOUT(0x255BA6158);
}

void sub_255BA619C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65 < 0)
  {
    JUMPOUT(0x255BA61A8);
  }

  sub_255A82AF8(&STACK[0x3D0]);
  sub_255BA9694(&a18);
  _Unwind_Resume(a1);
}

void sub_255BA61EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255AA4880(&STACK[0x310]);
  sub_255B69740(&STACK[0x210]);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255B69740(&STACK[0x210]);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255B854A0(&STACK[0x210]);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (*(v17 - 201) < 0)
  {
    operator delete(*(v17 - 224));
    sub_255BA9694(va);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255BA62D0);
}

uint64_t *sub_255BA62E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  LOBYTE(v14) = 0;
  v22 = 0;
  if (*(a1 + 112) == 1)
  {
    v14 = &unk_2867C5710;
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(a1 + 108);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(a1 + 108);
    }

    v15 = v5;
    v16 = v6;
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v19 = v7;
    v20 = v8;
    v21 = v9;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = a2;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      a2 = v10;
    }

    v22 = 1;
  }

  v23 = 0;
  result = sub_255BA38B0(a2, v12);
  if (v23 != -1)
  {
    return (off_2867D0A98[v23])(&v24, v12);
  }

  return result;
}

uint64_t *sub_255BA644C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  LOBYTE(v14) = 0;
  v22 = 0;
  if (*(a1 + 112) == 1)
  {
    v14 = &unk_2867C5710;
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(a1 + 108);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(a1 + 108);
    }

    v15 = v5;
    v16 = v6;
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v19 = v7;
    v20 = v8;
    v21 = v9;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = a2;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      a2 = v10;
    }

    v22 = 1;
  }

  v23 = 1;
  result = sub_255BA38B0(a2, v12);
  if (v23 != -1)
  {
    return (off_2867D0A98[v23])(&v24, v12);
  }

  return result;
}

void sub_255BA65BC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3 <= 24)
  {
    switch(v3)
    {
      case 1:
        v12 = &unk_2867C5610;
        sub_255A98CA0(a1, &v13);
        sub_255BA6B04(v17, &v12);
        sub_255BA62E0(v17, a2);
        goto LABEL_26;
      case 3:
        v9 = &unk_2867C53D0;
        sub_255BA96F0(a1, &v10);
        sub_255BA6C2C(&v12, &v9);
        v4 = sub_255BA6D54(v17, &v12);
        sub_255BA62E0(v4, a2);
        if (v19 == 1)
        {
          v5 = v18;
          if (v18)
          {
            if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }
        }

        if (v16 == 1)
        {
          v6 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }
          }
        }

        v7 = v11;
        if (v11)
        {
          goto LABEL_31;
        }

        return;
      case 4:
        v12 = &unk_2867C5350;
        sub_255BA9FE4(a1, &v13);
        sub_255BA6E80(v17, &v12);
        sub_255BA644C(v17, a2);
        goto LABEL_26;
    }

LABEL_33:
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Execution.cpp", 347, &unk_255C2500B, 0, "Not implemented", 0xFuLL, sub_255C101E0);
    abort();
  }

  if (v3 > 28)
  {
    if (v3 == 29)
    {
      v12 = &unk_2867C54D0;
      sub_255BABBE4(a1, &v13);
      sub_255BA7208(v17, &v12);
      sub_255BA62E0(v17, a2);
      goto LABEL_26;
    }

    if (v3 == 32)
    {
      v12 = &unk_2867C5490;
      sub_255BAC568(a1, &v13);
      sub_255BA7338(v17, &v12);
      sub_255BA644C(v17, a2);
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (v3 == 25)
  {
    v12 = &unk_2867C5550;
    sub_255BAA8D8(a1, &v13);
    sub_255BA6FA8(v17, &v12);
    sub_255BA62E0(v17, a2);
    goto LABEL_26;
  }

  if (v3 != 28)
  {
    goto LABEL_33;
  }

  v12 = &unk_2867C5510;
  sub_255BAB25C(a1, &v13);
  sub_255BA70D8(v17, &v12);
  sub_255BA644C(v17, a2);
LABEL_26:
  if (v19 == 1)
  {
    v8 = v18;
    if (v18)
    {
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  v7 = v14;
  if (v14)
  {
LABEL_31:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_255BA69A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_255A90668(v3 - 136);
  sub_255B7985C(va1);
  sub_255B9F278(va);
  _Unwind_Resume(a1);
}

void sub_255BA6A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255B9ECD0(va);
  _Unwind_Resume(a1);
}

void sub_255BA6A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255B9EFA4(va);
  _Unwind_Resume(a1);
}

void sub_255BA6AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255B9F6D8(va);
  _Unwind_Resume(a1);
}

void sub_255BA6AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255B5A1C8(va);
  _Unwind_Resume(a1);
}

void sub_255BA6ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255B9F9AC(va);
  _Unwind_Resume(a1);
}

void sub_255BA6AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B9F278(va);
  _Unwind_Resume(a1);
}

void sub_255BA6B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v14 = 1;
  v15 = v3;
  v16 = 0x100000001;
  LODWORD(v11) = 1;
  *(&v11 + 4) = v4;
  HIDWORD(v11) = HIDWORD(v4) * HIDWORD(v3);
  v12 = HIDWORD(v4) * HIDWORD(v3);
  v13 = 1;
  v10 = 17;
  v6 = &unk_2867C5710;
  sub_255B62A60(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA6C2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v14 = 1;
  v15 = v3;
  v16 = 0x100000001;
  LODWORD(v11) = 1;
  *(&v11 + 4) = v4;
  HIDWORD(v11) = HIDWORD(v4) * HIDWORD(v3);
  v12 = HIDWORD(v4) * HIDWORD(v3);
  v13 = 1;
  v10 = 33;
  v6 = &unk_2867C5710;
  sub_255BA1A68(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t sub_255BA6D54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 108) == 1 && *(a2 + 96) != 0)
    {
      v5 = *(a2 + 64);
      v6 = *(a2 + 72);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v5;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v5 = v7;
        }
      }

      (*(*v5 + 88))(v5, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v8 = 96;
  }

  else
  {
    v8 = 40;
  }

  v9 = *(a2 + v8);
  v10 = 2 * *(a2 + 36);
  v13 = vaddq_s32(*(a2 + 20), *(a2 + 20));
  v14 = v10;
  v15 = 1;
  v12 = *(a2 + 48);
  return sub_255B9F2F0(a1, v9, a2, v13.i8, &v12, a2 + 56);
}

void sub_255BA6E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v14 = 1;
  v15 = v3;
  v16 = 0x100000001;
  LODWORD(v11) = 1;
  *(&v11 + 4) = v4;
  HIDWORD(v11) = HIDWORD(v4) * HIDWORD(v3);
  v12 = HIDWORD(v4) * HIDWORD(v3);
  v13 = 1;
  v10 = 65;
  v6 = &unk_2867C5710;
  sub_255B5C9C4(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA6FA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 52);
  v14 = 4;
  v15 = v3;
  v16 = 0x100000001;
  *&v11 = *(a2 + 44);
  DWORD2(v11) = v4;
  HIDWORD(v11) = v4 * HIDWORD(v3);
  v12 = v4 * HIDWORD(v3);
  v13 = 1;
  v10 = 20;
  v6 = &unk_2867C5710;
  sub_255BA1654(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA70C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A9247C(va);
  _Unwind_Resume(a1);
}

void sub_255BA70D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 52);
  v14 = 4;
  v15 = v3;
  v16 = 0x100000001;
  *&v11 = *(a2 + 44);
  DWORD2(v11) = v4;
  HIDWORD(v11) = v4 * HIDWORD(v3);
  v12 = v4 * HIDWORD(v3);
  v13 = 1;
  v10 = 68;
  v6 = &unk_2867C5710;
  sub_255BA1FD8(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA71F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A9247C(va);
  _Unwind_Resume(a1);
}

void sub_255BA7208(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 52);
  v14 = 4;
  v15 = v3;
  v16 = 0x100000001;
  *&v11 = *(a2 + 44);
  DWORD2(v11) = v4;
  HIDWORD(v11) = v4 * HIDWORD(v3);
  v12 = v4 * HIDWORD(v3);
  v13 = 1;
  v10 = 24;
  v6 = &unk_2867C5710;
  sub_255BA139C(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA7324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A9247C(va);
  _Unwind_Resume(a1);
}

void sub_255BA7338(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 52);
  v14 = 4;
  v15 = v3;
  v16 = 0x100000001;
  *&v11 = *(a2 + 44);
  DWORD2(v11) = v4;
  HIDWORD(v11) = v4 * HIDWORD(v3);
  v12 = v4 * HIDWORD(v3);
  v13 = 1;
  v10 = 72;
  v6 = &unk_2867C5710;
  sub_255BA1D20(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA7454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A9247C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BA7468(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 108) == 1 && *(a2 + 96) != 0)
    {
      v5 = *(a2 + 64);
      v6 = *(a2 + 72);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v5;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v5 = v7;
        }
      }

      (*(*v5 + 88))(v5, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v8 = 96;
  }

  else
  {
    v8 = 40;
  }

  v9 = *(a2 + v8);
  v10 = 4 * *(a2 + 36);
  v13 = vshlq_n_s32(*(a2 + 20), 2uLL);
  v14 = v10;
  v15 = 1;
  v12 = *(a2 + 48);
  return sub_255B9F2F0(a1, v9, a2, v13.i8, &v12, a2 + 56);
}

void sub_255BA7594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA764C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA76F0(std::string *a1, uint64_t a2)
{
  v25.__r_.__value_.__r.__words[2] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DD418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD418))
  {
    sub_255BA7AC4();
    __cxa_guard_release(&qword_27F7DD418);
  }

  if ((atomic_load_explicit(&qword_27F7DC6B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC6B8))
  {
    sub_255BA7B54(&qword_27F7DC6A0);
    __cxa_guard_release(&qword_27F7DC6B8);
  }

  v21.__r_.__value_.__r.__words[0] = "Attempting to create an ";
  v21.__r_.__value_.__l.__size_ = 24;
  v4 = &qword_27F7DD420;
  v5 = byte_27F7DD437;
  if (byte_27F7DD437 < 0)
  {
    v5 = unk_27F7DD428;
    v4 = qword_27F7DD420;
  }

  v21.__r_.__value_.__r.__words[2] = v4;
  v22 = v5;
  v23 = " from an ";
  v24 = 9;
  v6 = &qword_27F7DC6A0;
  v7 = byte_27F7DC6B7;
  if (byte_27F7DC6B7 < 0)
  {
    v7 = unk_27F7DC6A8;
    v6 = qword_27F7DC6A0;
  }

  v25.__r_.__value_.__r.__words[0] = v6;
  v25.__r_.__value_.__l.__size_ = v7;
  sub_255A7F250(&v21, &v25.__r_.__value_.__r.__words[2], 0, 0, &__p);
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v8 = *(a2 + 8);
      v10 = *(a2 + 16);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v11 = v8;
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
          v8 = v11;
        }
      }
    }

    v12 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v21.__r_.__value_.__r.__words[0] = p_p;
    v21.__r_.__value_.__l.__size_ = size;
    v21.__r_.__value_.__r.__words[2] = " but the other image contains an incompatible buffer type ";
    v22 = 58;
    v23 = v12;
    v24 = v13;
    sub_255A7F250(&v21, &v25, 0, 0, a1);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_28:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  *(&a1->__r_.__value_.__s + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy(a1 + v17, " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }
}

void sub_255BA7AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA7AC4()
{
  v1 = 9;
  strcpy(__p, "ImageView");
  sub_255A9B708(__p, &qword_27F7DD420);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255BA7B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA7B54(std::string *a1@<X8>)
{
  v2 = 9;
  strcpy(__p, "ImageView");
  sub_255A9A55C(__p, a1);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255BA7BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA7BDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BA7F3C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = *(a1 + 32) << 32;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v12 = qword_27F7DD608, v13 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27F7DD608;
      v13 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_255BA7EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_255BA7F3C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC6B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC6B8))
  {
    sub_255BA7B54(&qword_27F7DC6A0);
    __cxa_guard_release(&qword_27F7DC6B8);
  }

  if ((atomic_load_explicit(&qword_27F7DC6D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC6D8))
    {
      sub_255BA8054(qword_27F7DC6C0);
      __cxa_guard_release(&qword_27F7DC6D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &qword_27F7DC6A0, " from an ", qword_27F7DC6C0, " but the image is of incompatible format ", &v2);
}

void sub_255BA8054(std::string *a1@<X8>)
{
  v2 = 9;
  strcpy(__p, "ImageView");
  sub_255A9A93C(__p, a1);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255BA80C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255BA80DC(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867D0A98[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

uint64_t sub_255BA8138(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v6 = v4 - 128;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_2867D0A98[v7])(&v9, v4 - 128);
        }

        *(v4 - 8) = -1;
        v4 -= 128;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void sub_255BA81D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 76) == 1)
  {
    v3 = *(a3 + 6);
    if (*(a2 + 72) != v3)
    {
      v12 = *a3;
      v13 = *(a2 + 72);
      v14 = " is expected to have a batch-size of ";
      v15 = " but has ";
      v16 = v12;

      goto LABEL_25;
    }
  }

  if (*(a2 + 68) == 1)
  {
    v3 = *(a3 + 5);
    if (*(a2 + 64) != v3)
    {
      v17 = *a3;
      v13 = *(a2 + 64);
      v14 = " is expected to have ";
      v15 = " planes but has ";
      v16 = v17;

      goto LABEL_25;
    }
  }

  if (*(a2 + 44) == 1)
  {
    if (!*(a2 + 36))
    {
      v3 = *(a3 + 8);
      if (*(a2 + 40) != v3)
      {
        v18 = *a3;
        v13 = *(a2 + 40);
        v14 = " of unspecified format (assumed to be Gray8) is expected to have ";
        v15 = " color components but has an incompatible pixel byte stride of ";
        v16 = v18;

        goto LABEL_25;
      }

      goto LABEL_53;
    }

    v4 = *(a2 + 32);
    if ((v4 & 0xF) != 0 && (*(a2 + 32) & 0x70) != 0)
    {
      if (v4)
      {
        v19 = 1;
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if ((v4 & 2) == 0)
        {
          if ((v4 & 0xC) == 0)
          {
            LODWORD(v7) = *(a3 + 8);
            if (!v7)
            {
              goto LABEL_53;
            }

            v36 = *a3;
            v9 = *(a2 + 40);
            goto LABEL_99;
          }

          v19 = 4;
          if ((v4 & 0x10) != 0)
          {
            goto LABEL_48;
          }

LABEL_44:
          if ((v4 & 0x20) != 0)
          {
            LODWORD(v24) = 2;
          }

          else
          {
            if ((v4 & 0x40) == 0)
            {
              v23 = 0;
LABEL_52:
              v7 = *(a3 + 8);
              if (v23 == v7)
              {
                goto LABEL_53;
              }

              v36 = *a3;
              v9 = *(a2 + 40);
              if (v4)
              {
                v37 = 1;
                goto LABEL_101;
              }

              if ((v4 & 2) != 0)
              {
                v37 = 2;
                goto LABEL_101;
              }

LABEL_99:
              if ((v4 & 0xC) == 0)
              {
LABEL_104:
                v10 = 0;
                LOBYTE(v11) = 0;
                goto LABEL_109;
              }

              v37 = 4;
LABEL_101:
              if ((v4 & 0x10) != 0)
              {
                LODWORD(v42) = 1;
              }

              else if ((v4 & 0x20) != 0)
              {
                LODWORD(v42) = 2;
              }

              else
              {
                if ((v4 & 0x40) == 0)
                {
                  goto LABEL_104;
                }

                v42 = (v4 >> 4) & 4;
              }

              v10 = v42 * v37;
              LOBYTE(v11) = 1;
LABEL_109:
              v20 = " is expected to have ";
              v21 = " bytes per pixel but has an incompatible pixel byte stride of ";
              v22 = v36;

              goto LABEL_42;
            }

            v24 = (v4 >> 4) & 4;
          }

LABEL_51:
          v23 = v24 * v19;
          goto LABEL_52;
        }

        v19 = 2;
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_44;
        }
      }

LABEL_48:
      LODWORD(v24) = 1;
      goto LABEL_51;
    }

    if ((v4 & 0x10) != 0)
    {
      LODWORD(v7) = *(a3 + 8);
      if (v7 != 1)
      {
        v8 = *a3;
        v9 = *(a2 + 40);
        v10 = 1;
        LOBYTE(v11) = 1;
        goto LABEL_40;
      }
    }

    else if ((v4 & 0x60) != 0)
    {
      v6 = (v4 >> 4) & 4;
      if ((v4 & 0x20) != 0)
      {
        v6 = 2;
      }

      LODWORD(v7) = *(a3 + 8);
      if (v6 != v7)
      {
        v8 = *a3;
        v9 = *(a2 + 40);
        if ((v4 & 0x20) != 0)
        {
          v10 = 2;
        }

        else
        {
          v10 = (v4 & 0x40) >> 4;
        }

        if ((v4 & 0x20) != 0)
        {
          LOBYTE(v11) = 1;
        }

        else
        {
          v11 = (*(a2 + 32) & 0x40u) >> 6;
        }

LABEL_40:
        v20 = " of unspecified pixel structure (assumed to be Gray) is expected to have ";
        v21 = " bytes per value but has an incompatible pixel byte stride of ";
        v22 = v8;

LABEL_42:
        sub_255BA8B80(a1, v22, v20, v9, v10, v11, v21, v7);
      }
    }
  }

LABEL_53:
  if (*(a2 + 52) == 1 && (v3 = *(a3 + 3), *(a2 + 48) != v3))
  {
    v34 = *a3;
    v13 = *(a2 + 48);
    v14 = " is expected to have a width of ";
    v15 = " but has width ";
    v16 = v34;
  }

  else
  {
    if (*(a2 + 60) != 1 || (v3 = *(a3 + 4), *(a2 + 56) == v3))
    {
      if ((*(a2 + 36) & 1) == 0)
      {
        v45 = 0;
        v44 = 0;
        __p[0] = 0;
        sub_255AA4630(a1, &v45, __p);
      }

      v25 = *(a2 + 32);
      if ((v25 & 1) == 0)
      {
        if ((v25 & 2) == 0)
        {
          if ((v25 & 4) != 0)
          {
            v26 = a1;
            v28 = sub_255BACF78((a2 + 32));
            a1 = v26;
            v30 = (v29 & 1) != 0 ? v28 : 4;
            v31 = *(a3 + 8);
            if (v30 != v31)
            {
              v33 = *a3;

              goto LABEL_67;
            }
          }

LABEL_93:
          v45 = 0;
          v44 = 0;
          __p[0] = 0;
          sub_255AA4630(a1, &v45, __p);
        }

        v38 = a1;
        v40 = sub_255BACF78((a2 + 32));
        a1 = v38;
        if (v41)
        {
          v30 = v40;
        }

        else
        {
          v30 = 2;
        }

        v31 = *(a3 + 8);
        if (v30 == v31)
        {
          goto LABEL_93;
        }

        v33 = *a3;

LABEL_67:
        sub_255BA910C(a1, v33, v32, v30, v31);
      }

      if ((v25 & 0x10) == 0)
      {
        if ((v25 & 0x20) != 0)
        {
          v30 = 2;
          goto LABEL_92;
        }

        if ((v25 & 0x40) != 0)
        {
          v30 = (v25 >> 4) & 4;
          goto LABEL_92;
        }
      }

      v30 = 1;
LABEL_92:
      v31 = *(a3 + 8);
      if (v30 == v31)
      {
        goto LABEL_93;
      }

      v33 = *a3;

      goto LABEL_67;
    }

    v35 = *a3;
    v13 = *(a2 + 56);
    v14 = " is expected to have a height of ";
    v15 = " but has height ";
    v16 = v35;
  }

LABEL_25:
  sub_255BA87A8(a1, v16, v14, v13, v15, v3);
}

void sub_255BA870C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255BA872C(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 80);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

void sub_255BA87A8(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, const char *a5, unsigned int a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = "Input ";
  v13 = a5;
  v12 = 3;
  sub_255BA9490(&v15);
  v18 = 0;
  std::to_string(&v19, a2);
  v17 = v19;
  v22 = v19;
  sub_255BA9490(&v14);
  v18 = 0;
  sub_255BA9588(&v17, a4, SBYTE4(a4));
  if (v18 == -1)
  {
    sub_255A7C284();
  }

  v19.__r_.__value_.__r.__words[0] = &v16;
  (off_2867D0A80[v18])(&v25, &v19, &v17);
  if (v18 != -1)
  {
    (off_2867D0A38[v18])(&v19, &v17);
  }

  sub_255BA9490(&v13);
  v18 = 0;
  std::to_string(&v19, a6);
  v17 = v19;
  v29 = v19;
  sub_255A7FF3C(v10, &v20, 6uLL);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_6:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v27);
  if ((v26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v25);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v23);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    operator delete(v20);
LABEL_10:
    sub_255A81134(v10[0], v10[1], 0, 0, &__p);
    sub_255AA4630(a1, &v12, &__p);
  }

LABEL_15:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_16;
}

void sub_255BA8A4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255BA8B80(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, unint64_t a5, char a6, const char *a7, unsigned int a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = "Input ";
  v17 = a7;
  v18 = " color components with ";
  v16 = 3;
  sub_255BA9490(&v20);
  LODWORD(v26) = 0;
  std::to_string(&v21, a2);
  v25 = v21;
  v30 = v21;
  sub_255BA9490(&v19);
  LODWORD(v26) = 0;
  sub_255BA9588(&v25, a4, SBYTE4(a4));
  if (v26 == -1)
  {
    sub_255A7C284();
  }

  v21.__r_.__value_.__r.__words[0] = &v23;
  (off_2867D0A80[v26])(&v21, &v25);
  if (v26 != -1)
  {
    (off_2867D0A38[v26])(&v21, &v25);
  }

  sub_255BA9490(&v18);
  v22 = 0;
  if (a6)
  {
    std::to_string(&v23, a5);
    v25.__r_.__value_.__r.__words[0] = &v21;
    v25.__r_.__value_.__l.__size_ = &v23;
    v25.__r_.__value_.__r.__words[2] = &v21;
    v26 = &v23;
    v27 = &v23;
    if (v22 == -1)
    {
      sub_255A7C284();
    }

    v24 = &v25;
    (off_2867D0A68[v22])(&v24, &v21);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v25.__r_.__value_.__r.__words[0] = &v21;
    v25.__r_.__value_.__l.__size_ = "nullopt";
    v25.__r_.__value_.__r.__words[2] = &v21;
    v26 = "nullopt";
    v27 = "nullopt";
    v23.__r_.__value_.__r.__words[0] = &v25;
    sub_255A80890(&v23);
  }

  if (v22 == -1)
  {
    sub_255A7C284();
  }

  v25.__r_.__value_.__r.__words[0] = &v23;
  (off_2867D0A80[v22])(&v37, &v25, &v21);
  if (v22 != -1)
  {
    (off_2867D0A38[v22])(&v25, &v21);
  }

  sub_255BA9490(&v17);
  LODWORD(v26) = 0;
  std::to_string(&v21, a8);
  v25 = v21;
  v41 = v21;
  sub_255A7FF3C(v14, &v28, 8uLL);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((v40 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v40 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v39);
  if ((v38 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v37);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v35);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v33);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v31);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_28:
    operator delete(v28);
LABEL_20:
    sub_255A81134(v14[0], v14[1], 0, 0, &__p);
    sub_255AA4630(a1, &v16, &__p);
  }

LABEL_27:
  operator delete(v30.__r_.__value_.__l.__data_);
  if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_28;
}

void sub_255BA8F78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255BA910C(uint64_t a1, unint64_t a2, const char *a3, unint64_t a4, unsigned int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = "Input ";
  v12 = " bytes per pixel but has incompatible pixel byte stride of ";
  v11 = 3;
  sub_255BA9490(&v14);
  v16 = 0;
  std::to_string(&v17, a2);
  v15 = v17;
  v20 = v17;
  sub_255BA9490(&v13);
  v16 = 0;
  std::to_string(&v17, a4);
  v15 = v17;
  v23 = v17;
  sub_255BA9490(&v12);
  v16 = 0;
  std::to_string(&v17, a5);
  v15 = v17;
  v26 = v17;
  sub_255A7FF3C(v9, &v18, 6uLL);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v24);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_5:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v21);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    operator delete(v18);
LABEL_7:
    sub_255A81134(v9[0], v9[1], 0, 0, &__p);
    sub_255AA4630(a1, &v11, &__p);
  }

LABEL_12:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  goto LABEL_13;
}

void sub_255BA9370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_255B59860(&a9);
    _Unwind_Resume(a1);
  }

  sub_255B59860(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA93A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
    if ((a55 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a49 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a55 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a50);
  if ((a49 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a43 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a44);
  if ((a43 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_14:
      _Unwind_Resume(exception_object);
    }

LABEL_13:
    operator delete(a26);
    _Unwind_Resume(exception_object);
  }

LABEL_12:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_255BA9490(const char **a1)
{
  v3 = 0;
  if (*a1)
  {
    sub_255AA748C(v2, a1);
  }

  else
  {
    v4[0] = v2;
    v4[1] = "nullptr";
    v4[2] = v2;
    v4[3] = "nullptr";
    v4[4] = "nullptr";
    v5 = v4;
    sub_255A80890(&v5);
  }

  if (v3 == -1)
  {
    sub_255A7C284();
  }

  v4[0] = &v5;
  result = (off_2867D0A80[v3])(v4, v2);
  if (v3 != -1)
  {
    return (off_2867D0A38[v3])(v4, v2);
  }

  return result;
}

void sub_255BA9588(uint64_t a1, unsigned int __val, char a3)
{
  if (a3)
  {
    std::to_string(&v6, __val);
    v8 = a1;
    v9 = &v6;
    v10 = a1;
    v11 = &v6;
    v12 = &v6;
    v4 = *(a1 + 24);
    if (v4 == -1)
    {
      sub_255A7C284();
    }

    v7 = &v8;
    (off_2867D0A68[v4])(&v7, a1);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = a1;
    v9 = "nullopt";
    v10 = a1;
    v11 = "nullopt";
    v12 = "nullopt";
    v5 = *(a1 + 24);
    if (v5 == -1)
    {
      sub_255A7C284();
    }

    v6.__r_.__value_.__r.__words[0] = &v8;
    (*(&off_2867D0A50 + v5))(&v6, a1);
  }
}

void sub_255BA9678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255BA9694(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 != -1)
  {
    (off_2867D0A98[v2])(&v4, a1 + 8);
  }

  *(a1 + 128) = -1;
  return a1;
}

void sub_255BA96F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 3)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BA9A54(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v12 = qword_27F7DD608, v13 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27F7DD608;
      v13 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_255BA9A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_255BA9A54(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC6F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC6F8))
  {
    sub_255BA9B6C();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(qword_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &qword_27F7DC6E0, " from an ", qword_27F7DC4C0, " but the image is of incompatible format ", &v2);
}

void sub_255BA9B6C()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_255BA9BF8(__p);
}

void sub_255BA9BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA9BF8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray16f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_255C0EAC8(&v3, &__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BA9E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BA9FE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 4)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BAA348(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v12 = qword_27F7DD608, v13 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27F7DD608;
      v13 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_255BAA2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_255BAA348(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC718))
  {
    sub_255BAA460();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(qword_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", qword_27F7DC700, " from an ", qword_27F7DC4C0, " but the image is of incompatible format ", &v2);
}

void sub_255BAA460()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_255BAA4EC(__p);
}

void sub_255BAA4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAA4EC(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray32f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_255C0EAC8(&v3, &__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BAA790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BAA8D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BAACCC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_255BAAC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_255BAACCC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC738))
  {
    sub_255BAADE4();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(qword_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &qword_27F7DC720, " from an ", qword_27F7DC4C0, " but the image is of incompatible format ", &v2);
}

void sub_255BAADE4()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_255BAAE70(__p);
}

void sub_255BAAE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAAE70(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgra8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_255C0EAC8(&v3, &__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BAB114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BAB25C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 28)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BAB654(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_255BAB604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_255BAB654(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC758))
  {
    sub_255BAB76C();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(qword_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", qword_27F7DC740, " from an ", qword_27F7DC4C0, " but the image is of incompatible format ", &v2);
}

void sub_255BAB76C()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_255BAB7F8(__p);
}

void sub_255BAB7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAB7F8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgra32f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_255C0EAC8(&v3, &__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BABA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BABBE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 29)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BABFD8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_255BABF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_255BABFD8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC778))
  {
    sub_255BAC0F0();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(qword_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", qword_27F7DC760, " from an ", qword_27F7DC4C0, " but the image is of incompatible format ", &v2);
}

void sub_255BAC0F0()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_255BAC17C(__p);
}

void sub_255BAC160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAC17C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgba8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_255C0EAC8(&v3, &__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BAC420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BAC568(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BAC960(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_255BAC910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_255BAC960(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC798))
  {
    sub_255BACA78();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(qword_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", qword_27F7DC780, " from an ", qword_27F7DC4C0, " but the image is of incompatible format ", &v2);
}

void sub_255BACA78()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_255BACB04(__p);
}

void sub_255BACAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BACB04(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgba32f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_255C0EAC8(&v3, &__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BACDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}