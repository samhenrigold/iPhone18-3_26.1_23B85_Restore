void sub_2B3314(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_DDE50(v1);
  _Unwind_Resume(a1);
}

void sub_2B3338(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v12 = a2[2];
  v11 = a2 + 2;
  v10 = v12;
  v13 = *(v11 - 1);
  *(a1 + 16) = v12;
  *(a1 + 8) = v13;
  *(v11 - 1) = 0;
  v14 = v11[1];
  *(a1 + 24) = v14;
  *(a1 + 32) = *(v11 + 4);
  if (v14)
  {
    v15 = *(v10 + 8);
    v16 = *(a1 + 8);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v15 >= v16)
      {
        v15 %= v16;
      }
    }

    else
    {
      v15 &= v16 - 1;
    }

    *(*a1 + 8 * v15) = a1 + 16;
    *v11 = 0;
    v11[1] = 0;
  }
}

void sub_2B379C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_DDE50(va);
  sub_DDE50(&a9);
  sub_2B2290(v13);
  _Unwind_Resume(a1);
}

void sub_2B37D4(std::string *__dst, std::string *__str)
{
  if (__dst[3].__r_.__value_.__s.__data_[0] == __str[3].__r_.__value_.__s.__data_[0])
  {
    if (__dst[3].__r_.__value_.__s.__data_[0])
    {
      std::string::operator=(__dst, __str);
      std::string::operator=(__dst + 1, __str + 1);

      std::string::operator=(__dst + 2, __str + 2);
    }
  }

  else if (__dst[3].__r_.__value_.__s.__data_[0])
  {

    sub_2B222C(__dst);
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v4 = *&__str->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v4;
    }

    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(&__dst[1], __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str[1].__r_.__value_.__l.__data_;
      __dst[1].__r_.__value_.__r.__words[2] = __str[1].__r_.__value_.__r.__words[2];
      *&__dst[1].__r_.__value_.__l.__data_ = v5;
    }

    if (SHIBYTE(__str[2].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(&__dst[2], __str[2].__r_.__value_.__l.__data_, __str[2].__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&__str[2].__r_.__value_.__l.__data_;
      __dst[2].__r_.__value_.__r.__words[2] = __str[2].__r_.__value_.__r.__words[2];
      *&__dst[2].__r_.__value_.__l.__data_ = v6;
    }

    __dst[3].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_2B38EC(_Unwind_Exception *exception_object)
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

uint64_t sub_2B3920(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    sub_1A8C0(v6);
  }

  *(a1 + 16) = *(a2 + 4);
  return a1;
}

uint64_t sub_2B3974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (result = a4; a2 != a3; result += 24)
  {
    v5 = *(a2 + 8);
    *result = *a2;
    *(result + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(result + 16) = *(a2 + 16);
    a2 += 24;
  }

  return result;
}

void sub_2B39B4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2761D8(a2);
  }

  sub_189A00();
}

char **sub_2B3A04(char **a1, char **a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        v6 = *v4;
        v7 = v4[1];
        v8 = v7 - *v4;
        v9 = a3[2];
        v10 = *a3;
        if (v9 - *a3 < v8)
        {
          if (v10)
          {
            a3[1] = v10;
            operator delete(v10);
            v9 = 0;
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
          }

          v11 = v8 >> 3;
          if (!((v8 >> 3) >> 61))
          {
            if (v9 >> 2 > v11)
            {
              v11 = v9 >> 2;
            }

            if (v9 >= 0x7FFFFFFFFFFFFFF8)
            {
              v12 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            sub_99B50(a3, v12);
          }

          sub_189A00();
        }

        v13 = a3[1];
        v14 = v13 - v10;
        if (v13 - v10 >= v8)
        {
          if (v7 != v6)
          {
            memmove(v10, v6, v8);
          }

          v17 = &v10[v8];
        }

        else
        {
          if (v13 != v10)
          {
            memmove(*a3, *v4, v13 - v10);
            v13 = a3[1];
          }

          v15 = &v6[v14];
          v16 = v7 - &v6[v14];
          if (v16)
          {
            memmove(v13, v15, v16);
          }

          v17 = &v13[v16];
        }

        a3[1] = v17;
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t *sub_2B3B58(uint64_t a1, void *a2, void *a3, uint64_t *a4)
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
    v5 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        sub_99B50(v4, (v6 - *v5) >> 3);
      }

      v5 += 3;
      v4 += 3;
      v11 = v4;
    }

    while (v5 != a3);
  }

  v9 = 1;
  sub_2815B0(v8);
  return v4;
}

void sub_2B3C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_2815B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2B3C44(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2B3C94(a2);
  }

  sub_189A00();
}

void sub_2B3C94(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2B3CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v6 = a5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  sub_1C2D48(a1, a2, a3, a4);
}

void sub_2B410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_1C2D48(a1, a2, a3, a4);
}

void sub_2B42C4(uint64_t ***a1, int a2)
{
  v4 = 0;
  v18 = 0x757362446A333237;
  do
  {
    v5 = *a1;
    v6 = *(&v18 + v4);
    sub_C57B4(v15, 1, a2, v6);
    sub_3FC3D0(v5, v15, &unk_707CC8);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v7 = *a1;
    sub_C57B4(v15, 1, a2, v6);
    sub_3FD764(v7, v15, qword_708650, 0);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v8 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 3;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD29C(v8, v15, &unk_707CC8);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v9 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 3;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD764(v9, v15, qword_708650, 0);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v10 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 2;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD29C(v10, v15, &unk_707CC8);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v11 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 2;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD764(v11, v15, qword_708650, 0);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v12 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 1;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD29C(v12, v15, &unk_707CC8);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v13 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 1;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD764(v13, v15, qword_708650, 0);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v4 += 4;
  }

  while (v4 != 8);
}

void sub_2B4578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B45B8(uint64_t a1, unsigned int **a2, int a3)
{
  v3 = *(a1 + 904);
  if (!v3)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "Device_Codec_Aspen.cpp";
      v9 = 1024;
      v10 = 984;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No valid support policy present", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No valid support policy present");
  }

  sub_408A74(v3, a2, a3);
}

void sub_2B46E4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 144);
  switch(v5)
  {
    case 1886216809:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      sub_310328(&theData);
      v47 = v51;
      if (v51 == 1)
      {
        v6 = theData;
        __p[1] = 0;
        v49 = 0;
        __p[0] = 0;
        if (theData && (BytePtr = CFDataGetBytePtr(theData), Length = CFDataGetLength(v6), BytePtr))
        {
          v9 = Length;
          if (Length <= 3)
          {
            v42 = sub_5544(14);
            v43 = *v42;
            if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v55 = "Device_Codec_Aspen.cpp";
              v56 = 1024;
              v57 = 1701;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          else
          {
            LODWORD(v10) = *BytePtr;
            v11 = sub_5544(18);
            v12 = *v11;
            if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v55 = "Device_Codec_Aspen.cpp";
              v56 = 1024;
              v57 = 1708;
              v58 = 1024;
              *v59 = WORD1(v10);
              *&v59[4] = 1024;
              *&v59[6] = BYTE1(v10);
              LOWORD(v60) = 1024;
              *(&v60 + 2) = v10;
              _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Mic Trim gains: version %d, size %d, entries %d", buf, 0x24u);
            }

            if (WORD1(v10) == 1 && (v10 & 0xFF00) == 0x200)
            {
              v10 = v10;
              if (v10)
              {
                if (v9 > 7)
                {
                  v29 = (BytePtr + 4);
                  v10 = v10;
                  while (1)
                  {
                    v14 = __p[0];
                    v13 = __p[1];
                    if (v10 <= ((__p[1] - __p[0]) >> 2))
                    {
                      break;
                    }

                    v30 = (*v29 >> 16) * 0.1;
                    v31 = *v29 * 0.1;
                    v52 = v31;
                    v53 = v30;
                    sub_2B4F3C(__p, &v53);
                    sub_2B4F3C(__p, &v52);
                    v32 = sub_5544(18);
                    v33 = *v32;
                    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v55 = "Device_Codec_Aspen.cpp";
                      v56 = 1024;
                      v57 = 1729;
                      v58 = 2048;
                      *v59 = v30;
                      *&v59[8] = 2048;
                      v60 = v31;
                      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Parsed trim gains: %f %f", buf, 0x26u);
                    }

                    if (++v29 > &BytePtr[v9 - 4])
                    {
                      v14 = __p[0];
                      v13 = __p[1];
                      break;
                    }
                  }
                }

                else
                {
                  v13 = 0;
                  v14 = 0;
                }

                v34 = v13 - v14;
                if (v10 < v34 >> 2)
                {
                  v35 = v34 - 4;
                  do
                  {
                    v13 -= 4;
                    v21 = v10 >= v35 >> 2;
                    v35 -= 4;
                  }

                  while (!v21);
                  __p[1] = v13;
                }
              }

              else
              {
                v27 = sub_5544(18);
                v28 = *v27;
                if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v55 = "Device_Codec_Aspen.cpp";
                  v56 = 1024;
                  v57 = 1714;
                  _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Number of Mic trim gain entries is zero", buf, 0x12u);
                }
              }

              v36 = v49;
              *a3 = *__p;
              a3[2] = v36;
              goto LABEL_57;
            }

            v44 = sub_5544(14);
            v45 = *v44;
            if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v55 = "Device_Codec_Aspen.cpp";
              v56 = 1024;
              v57 = 1710;
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }
        }

        else
        {
          v40 = sub_5544(14);
          v41 = *v40;
          if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v55 = "Device_Codec_Aspen.cpp";
            v56 = 1024;
            v57 = 1700;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v15 = *(a1 + 904);
      v18 = *(v15 + 72);
      v16 = v15 + 72;
      v17 = v18;
      if (!v18)
      {
        goto LABEL_61;
      }

      v19 = v16;
      do
      {
        v20 = *(v17 + 32);
        v21 = v20 >= 0x706D6269;
        v22 = v20 < 0x706D6269;
        if (v21)
        {
          v19 = v17;
        }

        v17 = *(v17 + 8 * v22);
      }

      while (v17);
      if (v19 == v16 || *(v19 + 32) > 0x706D6269u)
      {
LABEL_61:
        v37 = sub_5544(14);
        v38 = *v37;
        if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v55 = "Device_Codec_Aspen.cpp";
          v56 = 1024;
          v57 = 1753;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unable to locate built-in mic sub-port information", buf, 0x12u);
        }

        v39 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v39, "Unable to locate built-in mic sub-port information");
      }

      for (i = *(v19 + 40); i != *(v19 + 48); ++i)
      {
        v24 = sub_5544(18);
        if (*(v24 + 8))
        {
          v25 = *v24;
          if (*v24)
          {
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(__p, *i);
              v26 = __p;
              if (v49 < 0)
              {
                v26 = __p[0];
              }

              *buf = 136315650;
              v55 = "Device_Codec_Aspen.cpp";
              v56 = 1024;
              v57 = 1759;
              v58 = 2080;
              *v59 = v26;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting trim for Data Source ID %s", buf, 0x1Cu);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }
        }

        *buf = 0;
        if (sub_2B5014(a1, 1768845428, *i, buf))
        {
          sub_2B4F3C(a3, buf);
        }
      }

LABEL_57:
      if (v47)
      {
        if (theData)
        {
          CFRelease(theData);
        }
      }

      return;
    case 1886545251:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *buf = 0;
      if (sub_2B5014(a1, 1869968496, 3, buf))
      {
        goto LABEL_5;
      }

      break;
    case 1886613611:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *buf = 0;
      if (sub_2B5014(a1, 1869968496, 4, buf))
      {
LABEL_5:
        sub_2B4F3C(a3, buf);
      }

      break;
    default:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      break;
  }
}

void sub_2B4EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  __cxa_free_exception(v16);
  sub_2B50D0(va);
  v18 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_2B4F3C(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_189A00();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1D7C28(v11);
    }

    v12 = (4 * (v8 >> 2));
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

uint64_t sub_2B5014(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v9[0] = 1635021667;
  v9[1] = a2;
  v9[2] = a3;
  v6 = (*(*a1 + 16))(a1, v9);
  if (v6)
  {
    v8 = 4;
    (*(*a1 + 40))(a1, v9, 0, 0, &v8, a4);
  }

  return v6;
}

uint64_t sub_2B50D0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t *sub_2B5110@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 == 1886216809)
  {
    v3 = *(result[114] + 32);
    if (!v3)
    {
      v10 = *sub_5544(14);
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "Device_Codec_Aspen.cpp";
          v15 = 1024;
          v16 = 993;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [mTransducerDatabase.mBuiltInMicDefaultSubPort is NULL]: No default sub-port specified for built-in mic.", &v13, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "No default sub-port specified for built-in mic.");
    }

    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    if ((v5 - v4) >= 0x41 && v4 != v5)
    {
      v9 = v4;
      while (v9[8] != 1869442665)
      {
        v9 += 16;
        if (v9 == v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v9;
    }

LABEL_8:
    v13 = *v4;
    return sub_1E54B0(a3, &v13, 1);
  }

  else
  {
    v7 = a2;
    v8 = result[113];
    if (v8)
    {

      return sub_40AC30(a3, v8, v7);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }
  }

  return result;
}

void sub_2B52EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(18);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a2 + 16);
        sub_2B54B0(&__p, *(a2 + 8), a2);
        v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        v13 = "Device_Codec_Aspen.cpp";
        v14 = 1024;
        v15 = 973;
        v16 = 2048;
        v17 = v6;
        v18 = 2080;
        v19 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d inPortList (%zu): %s.", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v8 = sub_346C5C(1886154613, a2);
  if (!sub_2B55C8(a1) && v8)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "Device_Codec_Aspen.cpp";
        v14 = 1024;
        v15 = 976;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected lineout port", buf, 0x12u);
      }
    }
  }

  *(a1 + 896) = v8;
}

std::string *sub_2B54B0(std::string *a1, uint64_t a2, uint64_t a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_FC33C(__p, a2 + 16);
      v7 = (v10 & 0x80u) == 0 ? __p : __p[0];
      v8 = (v10 & 0x80u) == 0 ? v10 : __p[1];
      std::string::append(a1, v7, v8);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = *(a2 + 8);
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_2B558C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B55B0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2B5598);
}

BOOL sub_2B55C8(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  *&v3.mSelector = 0x6F757470766F6C6DLL;
  v3.mElement = 2;
  return AudioObjectHasProperty(v1, &v3) != 0;
}

uint64_t sub_2B5630(uint64_t a1, unsigned int a2)
{
  if (a2 > 1886545250)
  {
    switch(a2)
    {
      case 0x70726563u:
        return 3;
      case 0x7073706Bu:
        return 4;
      case 0x7074746Fu:
        return 1;
      default:
        goto LABEL_13;
    }
  }

  else
  {
    if (a2 != 1885888867)
    {
      if (a2 != 1885892727)
      {
        if (a2 == 1886154613)
        {
          return 2;
        }

LABEL_13:
        v3 = sub_5544(18);
        v4 = *v3;
        if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, a2);
          v5 = v12 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v14 = "Device_Codec_Aspen.cpp";
          v15 = 1024;
          v16 = 962;
          v17 = 2080;
          v18 = v5;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v6 = sub_5544(14);
        v7 = *v6;
        if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, a2);
          if (v12 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          *buf = 136315650;
          v14 = "Device_Codec_Aspen.cpp";
          v15 = 1024;
          v16 = 963;
          v17 = 2080;
          v18 = v8;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType: %s.", buf, 0x1Cu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType: %s.");
      }

      return 1;
    }

    return 5;
  }
}

void sub_2B58C0(void *a1@<X8>)
{
  if (sub_310A30())
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    sub_CE168();
    sub_53E8(__p, "AOP Audio-1");
    sub_CDEB8(a1, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2B5928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B5944(uint64_t result)
{
  if (*(result + 896) == 1)
  {
    sub_2B595C(result, 0);
  }
}

void sub_2B595C(uint64_t a1, int a2)
{
  if (!sub_2B55C8(a1))
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "Device_Codec_Aspen.cpp";
        v19 = 1024;
        v20 = 1641;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Does not support lineout", &v17, 0x12u);
      }
    }
  }

  if (*(a1 + 896) == 1)
  {
    v4 = sub_5544(18);
    if (*(v4 + 8))
    {
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
        {
          v6 = "down";
          v18 = "Device_Codec_Aspen.cpp";
          v17 = 136315650;
          if (a2)
          {
            v6 = "up";
          }

          v19 = 1024;
          v20 = 1644;
          v21 = 2080;
          v22 = v6;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Will attempt to power %s the output accessory.", &v17, 0x1Cu);
        }
      }
    }

    sub_3419E4();
    if (a2)
    {
      started = IAPAudioStartPlaybackForTransport();
      v8 = sub_5544(11);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315650;
        v18 = "IAPManager.cpp";
        v19 = 1024;
        v20 = 303;
        v21 = 1024;
        LODWORD(v22) = started;
        v10 = "%25s:%-5d IAPAudioStartPlaybackForTransport() returned %u.";
LABEL_16:
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, v10, &v17, 0x18u);
      }
    }

    else
    {
      started = IAPAudioStopPlaybackForTransport();
      v11 = sub_5544(11);
      v9 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315650;
        v18 = "IAPManager.cpp";
        v19 = 1024;
        v20 = 308;
        v21 = 1024;
        LODWORD(v22) = started;
        v10 = "%25s:%-5d IAPAudioStopPlaybackForTransport() returned %u.";
        goto LABEL_16;
      }
    }

    if (started != 1)
    {
      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
        {
          v17 = 136315394;
          v18 = "Device_Codec_Aspen.cpp";
          v19 = 1024;
          v20 = 1646;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): IAPManager::SetPlaybackAccessoryEnabled failed.", &v17, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003329396;
    }
  }
}

void sub_2B5C8C(uint64_t a1)
{
  if (*(a1 + 896) == 1)
  {
    sub_2B595C(a1, 1);
  }
}

uint64_t sub_2B5CA4(void *a1)
{
  sub_4ADCC0(a1);
  v104[0] = 1;
  *&v104[1] = 0x6F7574706D757465;
  v104[3] = 1;
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, v104);
  }

  v104[3] = 2;
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, v104);
  }

  v104[3] = 3;
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, v104);
  }

  v104[3] = 4;
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, v104);
  }

  v104[0] = 0;
  strcpy(&v104[1], "w2bburtp");
  BYTE1(v104[3]) = 0;
  HIWORD(v104[3]) = 0;
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, v104);
  }

  v104[1] = 1999790690;
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, v104);
  }

  v104[1] = 1718432370;
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, v104);
  }

  v104[0] = 0;
  strcpy(&v104[1], "tumdptuo");
  BYTE1(v104[3]) = 0;
  HIWORD(v104[3]) = 0;
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, v104);
  }

  v102 = 4;
  v103 = 0.0;
  strcpy(&v104[1], "dlovptuo");
  BYTE1(v104[3]) = 0;
  HIWORD(v104[3]) = 0;
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 40))(a1, &v104[1], 0, 0, &v102, &v103);
    v2 = v103;
    if (v103 != 0.0)
    {
      v103 = 0.0;
      (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, &v103, v2);
    }
  }

  BYTE1(v104[3]) = 0;
  HIWORD(v104[3]) = 0;
  strcpy(v104, "Ms2icrscbolg");
  if ((*(*a1 + 16))(a1, &v104[1]))
  {
    (*(*a1 + 48))(a1, &v104[1], 0, 0, 4, v104);
  }

  inAddress = 0x6F7574706A61636BLL;
  LODWORD(inAddress_8) = 0;
  v3 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v3, &inAddress))
  {
    v4 = (*(*a1 + 120))(a1);
    *v127 = sub_2BB884(v4, 1);
    *&v127[8] = v5;
    v6 = a1[11];
    *&v125 = a1[10];
    *(&v125 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v120.mSelector = 1869968496;
    v118.mSelector = 1;
    LODWORD(v110) = 0;
    LODWORD(v105) = 74;
    sub_2BBA64(buf, &v125, &v120.mSelector, &v118.mSelector, &v110, &v105, v127, &v127[8]);
  }

  if (sub_2B55C8(a1))
  {
    v7 = (*(*a1 + 120))(a1);
    *v127 = sub_2BB884(v7, 2);
    *&v127[8] = v8;
    v9 = a1[11];
    *&v125 = a1[10];
    *(&v125 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  *&v120.mSelector = 0x6F7574706D757465;
  v120.mElement = 4;
  v10 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v10, &v120))
  {
    if (qword_6E8528 != -1)
    {
      dispatch_once(&qword_6E8528, &stru_6BD0C8);
    }

    if (byte_6E8520 == 1)
    {
      sub_15DCEC(buf);
    }

    v11 = (*(*a1 + 120))(a1);
    *v127 = sub_2BB884(v11, 4);
    *&v127[8] = v12;
    v13 = a1[11];
    *&v125 = a1[10];
    *(&v125 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    }

    v118.mSelector = 1869968496;
    LODWORD(v110) = 4;
    LODWORD(v105) = 0;
    v121.mSelector = 74;
    sub_2BBA64(buf, &v125, &v118.mSelector, &v110, &v105, &v121.mSelector, v127, &v127[8]);
  }

  *&v118.mSelector = 0x6F7574706D757465;
  v118.mElement = 3;
  v14 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v14, &v118))
  {
    v15 = (*(*a1 + 120))(a1);
    *v127 = sub_2BB884(v15, 3);
    *&v127[8] = v16;
    v17 = a1[11];
    *&v125 = a1[10];
    *(&v125 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
    }

    LODWORD(v110) = 1869968496;
    LODWORD(v105) = 3;
    v121.mSelector = 0;
    v119.mSelector = 74;
    sub_2BBA64(buf, &v125, &v110, &v105, &v121.mSelector, &v119.mSelector, v127, &v127[8]);
  }

  *&v110 = 0x6F7574706D757465;
  DWORD2(v110) = 5;
  *&v105 = 0x6F757470766F6C6DLL;
  DWORD2(v105) = 5;
  v18 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v18, &v110))
  {
    v19 = (*(*a1 + 120))(a1);
    if (AudioObjectHasProperty(v19, &v105))
    {
      v20 = (*(*a1 + 120))(a1);
      *v127 = sub_2BB884(v20, 5);
      *&v127[8] = v21;
      v22 = a1[11];
      *&v125 = a1[10];
      *(&v125 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
      }

      v121.mSelector = 1869968496;
      v119.mSelector = 5;
      LODWORD(v117) = 0;
      LODWORD(v116) = 74;
      sub_2BBA64(buf, &v125, &v121.mSelector, &v119.mSelector, &v117, &v116, v127, &v127[8]);
    }

    sub_15DCEC(buf);
  }

  sub_147688();
  *&v121.mSelector = 0x696E70746D757465;
  v121.mElement = 0;
  v23 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v23, &v121))
  {
    *&v125 = 0x676C6F626D757465;
    DWORD2(v125) = 0;
    operator new();
  }

  *&v119.mSelector = 0x696E7074766F6C64;
  v119.mElement = 0;
  v24 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v24, &v119))
  {
    v25 = a1[11];
    *&v125 = a1[10];
    *(&v125 + 1) = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (sub_2B8E28(a1))
  {
    *buf = 0x6F757470534E5263;
    *&buf[8] = 1;
    if ((*(*a1 + 16))(a1, buf))
    {
      *v127 = 0;
      LODWORD(v125) = 4;
      (*(*a1 + 40))(a1, buf, 0, 0, &v125, v127);
      v26 = *v127 > 96.0;
    }

    else
    {
      v26 = 0;
    }

    LOBYTE(v115) = v26;
    v27 = sub_5544(18);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
    {
      v29 = "16-bit";
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *buf = 136315650;
      if (v26)
      {
        v29 = "24-bit";
      }

      *&buf[12] = 1024;
      *&buf[14] = 1279;
      *&buf[18] = 2080;
      *&buf[20] = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a %s wired-headphones port", buf, 0x1Cu);
    }

    v30 = a1[11];
    *buf = a1[10];
    *&buf[8] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    }

    sub_2B9F64(&v125, buf, &v115);
  }

  if (sub_2B55C8(a1))
  {
    v31 = sub_5544(18);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1321;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a line-out port", buf, 0x12u);
    }

    v33 = a1[11];
    *&v125 = a1[10];
    *(&v125 + 1) = v33;
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 16), 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 128))(buf, a1);
    sub_2BA8F0(v127, &v125, buf);
  }

  *&v114.mSelector = 0x6F7574706D757465;
  v114.mElement = 4;
  v34 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v34, &v114))
  {
    v35 = sub_5544(18);
    v36 = *v35;
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1331;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a speaker port", buf, 0x12u);
    }

    v37 = a1[11];
    *&v110 = a1[10];
    *(&v110 + 1) = v37;
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 16), 1uLL, memory_order_relaxed);
    }

    memset(v127, 0, sizeof(v127));
    sub_24FEE8(buf, qword_6E9158);
    v125 = 0uLL;
    v126 = 0;
    sub_2BAA08(&inAddress, &qword_6E9158, &v110, v127, buf, "Built-In Speaker", &v125, "");
  }

  *&v113.mSelector = 0x6F7574706D757465;
  v113.mElement = 3;
  v38 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v38, &v113))
  {
    qmemcpy(buf, "rvmiplmimacmpcpspcts", 20);
    memset(v127, 0, sizeof(v127));
    sub_4625C(v127, buf, &buf[20], 5uLL);
    v39 = sub_5544(18);
    v40 = *v39;
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1350;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a receiver port", buf, 0x12u);
    }

    v41 = a1[11];
    *&v110 = a1[10];
    *(&v110 + 1) = v41;
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 16), 1uLL, memory_order_relaxed);
    }

    sub_24FEE8(buf, qword_6E9128);
    v125 = 0uLL;
    v126 = 0;
    sub_2BADEC(&inAddress, &qword_6E9128, &v110, v127, buf, "Built-In Receiver", &v125, "");
  }

  *&v112.mSelector = 0x6F7574706D757465;
  v112.mElement = 5;
  v42 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v42, &v112))
  {
    v43 = sub_5544(18);
    v44 = *v43;
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1361;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a HAC port", buf, 0x12u);
    }

    qmemcpy(buf, "rvmiplmimacmpcpspcts", 20);
    v111 = 0;
    v110 = 0uLL;
    sub_4625C(&v110, buf, &buf[20], 5uLL);
    v45 = a1[11];
    v107 = a1[10];
    v108 = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 16), 1uLL, memory_order_relaxed);
    }

    sub_24FEE8(buf, qword_6E9188);
    v105 = 0uLL;
    v106 = 0;
    operator new();
  }

  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638 == 1)
  {
    v46 = sub_5544(18);
    v47 = *v46;
    if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1421;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d No input sources are present - no builtin mic on codec", buf, 0x12u);
    }

    goto LABEL_144;
  }

  LODWORD(v110) = (*(*a1 + 120))(a1);
  *&v125 = 0x696E707473736323;
  DWORD2(v125) = 0;
  sub_127F10(buf, &v110, &v125, 0, 0);
  v48 = *buf;
  if (*buf || (buf[32] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v48;
  }

  memset(v127, 0, sizeof(v127));
  v49 = *&buf[8];
  sub_46980(v127, *&buf[8], *&buf[16], (*&buf[16] - *&buf[8]) >> 2);
  if (v49)
  {
    operator delete(v49);
  }

  if ((atomic_load_explicit(&qword_6E91F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E91F0))
  {
    qmemcpy(buf, "cimicimscimfcimlcimtcimu1imi2imi3imi4imi", sizeof(buf));
    qword_6E91E0 = 0;
    unk_6E91E8 = 0;
    qword_6E91D8 = 0;
    sub_4625C(&qword_6E91D8, buf, &v139, 0xAuLL);
    __cxa_guard_release(&qword_6E91F0);
  }

  v50 = *v127;
  v51 = *&v127[8];
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  memset(buf, 0, 24);
  v53 = qword_6E91D8;
  v52 = qword_6E91E0;
  if (qword_6E91D8 == qword_6E91E0)
  {
    v62 = 1;
    if (v50)
    {
      goto LABEL_123;
    }

    goto LABEL_124;
  }

  v54 = 0;
  v55 = 0;
  v56 = v50;
  do
  {
    v57 = sub_2BAF74(v56, v51, *v53);
    v58 = v57;
    if (v56 == v57)
    {
      if (v55)
      {
        v59 = 0;
        v54 = sub_2BB038(buf, v54, v57) + 4;
        v56 = v58 + 1;
        ++v53;
        goto LABEL_112;
      }

      v59 = 1;
    }

    else
    {
      v59 = 0;
    }

    v56 = v57;
LABEL_112:
    if (v56 == v51)
    {
      break;
    }

    v60 = sub_2BAF74(v53, v52, *v56);
    v61 = v60;
    if (v53 == v60)
    {
      if (v59)
      {
        v55 = 0;
        v54 = sub_2BB038(buf, v54, v56++) + 4;
        v53 = v61 + 1;
        continue;
      }

      v55 = 1;
    }

    else
    {
      v55 = 0;
    }

    v53 = v60;
  }

  while (v53 != v52);
  v62 = *&buf[8] == *buf;
  if (*buf)
  {
    operator delete(*buf);
  }

  if (v50)
  {
LABEL_123:
    operator delete(v50);
  }

LABEL_124:
  if (!v62 && (sub_40ADD4(a1[113], 1768778083) || sub_40ADD4(a1[113], 1768778033)))
  {
    v63 = sub_5544(18);
    v64 = *v63;
    if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1385;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating an internal microphone port", buf, 0x12u);
    }

    sub_33E58C(v127);
    v65 = sub_5544(18);
    if (*(v65 + 8))
    {
      v66 = *v65;
      if (*v65)
      {
        if (os_log_type_enabled(*v65, OS_LOG_TYPE_DEBUG))
        {
          v67 = v127;
          if ((v127[23] & 0x80u) != 0)
          {
            v67 = *v127;
          }

          *buf = 136315650;
          *&buf[4] = "Device_Codec_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1388;
          *&buf[18] = 2080;
          *&buf[20] = v67;
          _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d Localized microphone name: '%s'", buf, 0x1Cu);
        }
      }
    }

    v68 = a1[11];
    v109[0] = a1[10];
    v109[1] = v68;
    if (v68)
    {
      atomic_fetch_add_explicit((v68 + 16), 1uLL, memory_order_relaxed);
    }

    v125 = 0uLL;
    v126 = 0;
    if (v127[23] < 0)
    {
      sub_54A0(buf, *v127, *&v127[8]);
    }

    else
    {
      *buf = *v127;
      *&buf[16] = *&v127[16];
    }

    v140 = 0u;
    v139 = 0u;
    *&buf[24] = 0u;
    v69 = sub_46AC8C();
    sub_2360B8(&v105, v109, &v125, buf, "Built-In Microphone", v69);
  }

LABEL_144:
  if ((sub_2B8E28(a1) & 1) != 0 || (sub_2B8EF4(a1) & 1) != 0 || sub_2B902C(a1))
  {
    if (!a1[67])
    {
      v70 = sub_2B8E28(a1);
      *buf = 1885892727;
      *&buf[8] = 0;
      *&buf[16] = 0;
      buf[24] = v70;
      v71 = sub_2B8EF4(a1);
      *&buf[32] = 1886222185;
      v139 = 0uLL;
      LOBYTE(v140) = v71;
      v72 = sub_2B902C(a1);
      DWORD2(v140) = 1886680169;
      v141 = 0;
      v142 = 0;
      v143 = v72;
      v73 = sub_2B902C(a1);
      v74 = 0;
      v144 = 1886680175;
      v145 = 0;
      v146 = 0;
      v147 = v73;
      while (1)
      {
        v120.mSelector = *&buf[v74];
        v126 = 0;
        v125 = 0uLL;
        sub_4625C(&v125, &v120, &v120.mScope, 1uLL);
        *v127 = v125;
        *&v127[16] = v126;
        strcpy(v128, "cwdv");
        v128[8] = 0;
        v133[0] = 0;
        v133[1] = 0;
        v132 = v133;
        v131 = 3;
        v134 = 44739242;
        v136 = 0;
        v137 = 0;
        v135 = 0;
        sub_161C7C(&inAddress, a1, v127);
        if (SHIBYTE(v137) < 0)
        {
          operator delete(v135);
        }

        sub_477A0(v133[0]);
        if (*v127)
        {
          *&v127[8] = *v127;
          operator delete(*v127);
        }

        v75 = buf[v74 + 24];
        if (v124 != v75)
        {
          v80 = sub_5544(14);
          v81 = *v80;
          if (*v80)
          {
            if (os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
            {
              v101 = v124;
              sub_22170(&v125, *&buf[v74]);
              v82 = &v125;
              if (v126 < 0)
              {
                v82 = v125;
              }

              *v127 = 136316162;
              *&v127[4] = "Device_Codec_Aspen.cpp";
              *&v127[12] = 1024;
              *&v127[14] = 1489;
              *&v127[18] = 1024;
              *&v127[20] = v101;
              *v128 = 2080;
              *&v128[2] = v82;
              v129 = 1024;
              v130 = v75;
              _os_log_impl(&dword_0, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Found %u ports of type '%s' (expected %u)", v127, 0x28u);
              if (SHIBYTE(v126) < 0)
              {
                operator delete(v125);
              }
            }
          }
        }

        if (v75 && v124 == 1)
        {
          v77 = *(inAddress_8 + 16);
          v76 = *(inAddress_8 + 24);
          if (v76)
          {
            atomic_fetch_add_explicit((v76 + 16), 1uLL, memory_order_relaxed);
          }

          v78 = &buf[v74];
          v79 = *&buf[v74 + 16];
          *(v78 + 1) = v77;
          *(v78 + 2) = v76;
          if (v79)
          {
            std::__shared_weak_count::__release_weak(v79);
          }
        }

        sub_65310(&inAddress);
        v74 += 32;
        if (v74 == 128)
        {
          operator new();
        }
      }
    }

    v98 = sub_5544(14);
    v99 = *v98;
    if (*v98 && os_log_type_enabled(*v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1472;
      _os_log_impl(&dword_0, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v100 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v100, "Precondition failure.");
  }

  v83 = sub_8703C();
  (*(*v83 + 48))(v83, sub_2B9E94, a1);
  sub_2B90DC(a1);
  if (sub_2B55C8(a1))
  {
    v84 = sub_3419E4();
    sub_341B04(v84, sub_2B9D64, a1);
    sub_2B988C(a1);
    v85 = sub_3419E4();
    sub_342180(v85, 1819176821, sub_2B9C18, a1);
  }

  *&v125 = 0x707472755354656ELL;
  DWORD2(v125) = 0;
  if ((*(*a1 + 16))(a1, &v125))
  {
    *buf = 0;
    (*(*a1 + 48))(a1, &v125, 0, 0, 4, buf);
  }

  inAddress = 0x6F7574706D757465;
  LODWORD(inAddress_8) = 5;
  if ((*(*a1 + 16))(a1, &inAddress))
  {
    *buf = 1;
    (*(*a1 + 48))(a1, &inAddress, 0, 0, 4, buf);
  }

  *&v120.mSelector = 0x676C6F624D434373;
  v120.mElement = 0;
  if ((*(*a1 + 16))(a1, &v120))
  {
    *&v118.mSelector = 0;
    v102 = 8;
    (*(*a1 + 40))(a1, &v120, 0, 0, &v102, &v118);
    v86 = *&v118.mSelector;
    if (!*&v118.mSelector)
    {
      v94 = sub_5544(14);
      v95 = *v94;
      if (*v94 && os_log_type_enabled(*v94, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 847;
        _os_log_impl(&dword_0, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [maxChannelInfo is NULL]: Invalid Maximum Channel Info", buf, 0x12u);
      }

      v96 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v96, "Invalid Maximum Channel Info");
    }

    *v127 = *&v118.mSelector;
    *&v127[8] = 1;
    if (CFDictionaryContainsKey(*&v118.mSelector, @"MaxInputChannelCount"))
    {
      if ((sub_2E7334(v86, @"MaxInputChannelCount", a1 + 924) & 1) == 0)
      {
        v87 = sub_5544(18);
        v88 = *v87;
        if (*v87)
        {
          if (os_log_type_enabled(*v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "Device_Codec_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 854;
            _os_log_impl(&dword_0, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to convert max num input channels to UInt32", buf, 0x12u);
          }
        }
      }

      v89 = sub_5544(18);
      if (*(v89 + 8))
      {
        v90 = *v89;
        if (*v89)
        {
          if (os_log_type_enabled(*v89, OS_LOG_TYPE_DEBUG))
          {
            v91 = *(a1 + 231);
            *buf = 136315650;
            *&buf[4] = "Device_Codec_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 855;
            *&buf[18] = 1024;
            *&buf[20] = v91;
            _os_log_impl(&dword_0, v90, OS_LOG_TYPE_DEBUG, "%25s:%-5d Codec specified a maximum number of input channels: %u", buf, 0x18u);
          }
        }
      }
    }

    sub_A1D30(v127);
  }

  if (_os_feature_enabled_impl())
  {
    v92 = sub_46AC8C();
    (*(*a1 + 408))(a1, v92 + 96, 1);
  }

  return 1;
}

void sub_2B88B8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_6E91F0);
  v3 = *(v1 + 288);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2B8E28(uint64_t a1)
{
  *&inAddress.mSelector = 0x6F7574706A61636BLL;
  inAddress.mElement = 0;
  if ((atomic_load_explicit(&qword_6E91C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E91C0))
  {
    v2 = (*(*a1 + 120))(a1);
    byte_6E91B8 = AudioObjectHasProperty(v2, &inAddress) != 0;
    __cxa_guard_release(&qword_6E91C0);
  }

  return byte_6E91B8;
}

uint64_t sub_2B8EF4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638)
  {
    v2 = 0;
  }

  else
  {
    *&v7.mSelector = 0x696E70746A61636BLL;
    v7.mElement = 0;
    v3 = &unk_6E9000;
    if ((atomic_load_explicit(&qword_6E91D0, memory_order_acquire) & 1) == 0)
    {
      v5 = __cxa_guard_acquire(&qword_6E91D0);
      v3 = &unk_6E9000;
      if (v5)
      {
        v6 = (*(*a1 + 120))(a1);
        byte_6E91C8 = AudioObjectHasProperty(v6, &v7) == 1;
        __cxa_guard_release(&qword_6E91D0);
        v3 = &unk_6E9000;
      }
    }

    v2 = v3[456];
  }

  return v2 & 1;
}

uint64_t sub_2B902C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_6E9200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9200))
  {
    v3 = sub_2B8E28(a1) && (v2 = sub_2B8EF4(a1), v2) && caulk::product::get_device_class(v2) == 1;
    byte_6E91F8 = v3;
    __cxa_guard_release(&qword_6E9200);
  }

  return byte_6E91F8;
}

void sub_2B90DC(os_unfair_lock_s *a1)
{
  LODWORD(v19[0]) = 1885888867;
  memset(&v25, 0, sizeof(v25));
  sub_4625C(&v25, v19, v19 + 1, 1uLL);
  *buf = v25;
  strcpy(&buf[24], "cwdv");
  BYTE2(v27) = 0;
  LODWORD(v28) = 3;
  v30 = 0;
  v31 = 0;
  v29 = &v30;
  v32 = 44739242;
  v34 = 0;
  v35 = 0;
  __p = 0;
  sub_161C7C(v23, a1, buf);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v30);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v24 >= 2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_23148(&v25, a1 + 2);
      v7 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1608;
      *&buf[18] = 2080;
      *&buf[20] = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Encountered more than one Hearing Aid Compliance port in device %s", buf, 0x1Cu);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Encountered more than one Hearing Aid Compliance port in device %s");
  }

  if (v24)
  {
    sub_25704(&v21, (v23[1] + 16), "", 1612);
    v2 = v21;
    v3 = (*(*v21 + 152))(v21);
    (*(*v2 + 512))(v2);
    if (v3 != (*(*v2 + 152))(v2))
    {
      LODWORD(v17) = 1886545251;
      memset(&v25, 0, sizeof(v25));
      sub_4625C(&v25, &v17, &v17 + 1, 1uLL);
      *buf = v25;
      strcpy(&buf[24], "cwdv");
      BYTE2(v27) = 0;
      LODWORD(v28) = 3;
      v30 = 0;
      v31 = 0;
      v29 = &v30;
      v32 = 44739242;
      v34 = 0;
      v35 = 0;
      __p = 0;
      sub_161C7C(v19, a1, buf);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v30);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (__val == 1)
      {
        sub_25704(buf, (v19[1] + 16), "", 1626);
        if (v3)
        {
          v4 = 0;
        }

        else
        {
          v4 = 1919443299;
        }

        (*(**buf + 104))(*buf, v4);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        v16[0] = v2;
        v16[1] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_2B9E50(&v17, v16);
      }

      v9 = sub_5544(14);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        std::to_string(&v25, __val);
        v11 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
        v12 = v25.__r_.__value_.__r.__words[0];
        sub_23148(&v17, a1 + 2);
        v13 = &v25;
        if (v11 < 0)
        {
          v13 = v12;
        }

        if (v18 >= 0)
        {
          v14 = &v17;
        }

        else
        {
          v14 = v17;
        }

        *buf = 136315906;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1621;
        *&buf[18] = 2080;
        *&buf[20] = v13;
        *&buf[28] = 2080;
        v27 = v14;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Encountered %s receiver ports in device %s (expected 1)", buf, 0x26u);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v15, "Encountered %s receiver ports in device %s (expected 1)");
    }

    if (v22)
    {
      sub_1A8C0(v22);
    }
  }

  sub_65310(v23);
}

void sub_2B9724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_65310(&a17);
  if (a21)
  {
    sub_1A8C0(a21);
  }

  sub_65310(&a22);
  _Unwind_Resume(a1);
}

void sub_2B988C(os_unfair_lock_s *a1)
{
  v19 = 1886154613;
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  sub_4625C(v20, &v19, v20, 1uLL);
  *buf = *v20;
  *&buf[16] = v21;
  strcpy(&buf[24], "cwdv");
  BYTE2(v23) = 0;
  LODWORD(v25) = 3;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v28 = 44739242;
  v30 = 0;
  v31 = 0;
  __p = 0;
  sub_161C7C(v14, a1, buf);
  sub_B0484(&v16, v14);
  sub_65310(v14);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v27[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v18 != 1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v9 = v18;
        sub_22170(v20, 1886154613);
        v10 = SHIBYTE(v21);
        v11 = v20[0];
        sub_23148(v14, a1 + 2);
        v12 = v20;
        if (v10 < 0)
        {
          v12 = v11;
        }

        if (v15 >= 0)
        {
          v13 = v14;
        }

        else
        {
          v13 = v14[0];
        }

        *buf = 136316418;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1583;
        *&buf[18] = 2048;
        *&buf[20] = v9;
        *&buf[28] = 2080;
        v23 = v12;
        v24 = 2080;
        v25 = v13;
        LOWORD(v26) = 1024;
        *(&v26 + 2) = 1;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Found %lu ports of type '%s' in device %s (looking for exactly %d)", buf, 0x36u);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20[0]);
        }
      }
    }
  }

  for (i = v17; i != &v16; i = i[1])
  {
    v3 = (*(*i[2] + 152))(i[2]);
    sub_2AAE6C(i[2]);
    if (v3 != (*(*i[2] + 152))(i[2]))
    {
      v4 = sub_809C0();
      v5 = i[3];
      *buf = i[2];
      *&buf[8] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v3)
      {
        v6 = 0x1726F6C75;
      }

      else
      {
        v6 = 0x1726E7764;
      }

      sub_257CE8(v4, buf, v6);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  sub_87980(&v16);
}

void sub_2B9BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  sub_87980(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_2B9C18(uint64_t result, uint64_t a2)
{
  if (result == 1819176821)
  {
    if (!a2)
    {
      v3 = sub_5544(14);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          v5 = 136315394;
          v6 = "Device_Codec_Aspen.cpp";
          v7 = 1024;
          v8 = 1555;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IAPManager passed clientData as NULL.", &v5, 0x12u);
        }
      }
    }

    result = sub_6FE08(a2 + 552, &qword_6E9108);
    if (result)
    {
      return sub_6FF5C(a2 + 552, &qword_6E9108);
    }
  }

  return result;
}

uint64_t sub_2B9D14(uint64_t a1)
{
  sub_71E0C(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_71E0C(v2);
  }

  return a1;
}

void sub_2B9D64(int a1, os_unfair_lock_s *a2)
{
  if (!a2)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "Device_Codec_Aspen.cpp";
        v8 = 1024;
        v9 = 1532;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IAPManager passed clientData as NULL.", &v6, 0x12u);
      }
    }
  }

  if (a1 == 1819176821)
  {
    sub_2B988C(a2);
  }
}

void sub_2B9E50(uint64_t *a1, uint64_t *a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_849B8(a1, a2);
}

void sub_2B9E94(os_unfair_lock_s *a1)
{
  if (!a1)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "Device_Codec_Aspen.cpp";
        v6 = 1024;
        v7 = 1600;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: SystemSettingsManager passed clientData as NULL.", &v4, 0x12u);
      }
    }
  }

  sub_2B90DC(a1);
}

void sub_2BA0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  *(v21 - 56) = v20;
  sub_72C14((v21 - 56));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(&a19);
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v23);
  _Unwind_Resume(a1);
}

void sub_2BA1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_2BA370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(&a16);
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  _Unwind_Resume(a1);
}

void sub_2BA5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(&a22);
  sub_477A0(a19);
  sub_477A0(*(v23 - 104));
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  _Unwind_Resume(a1);
}

void sub_2BA890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(&a22);
  sub_477A0(a19);
  sub_477A0(*(v23 - 104));
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  _Unwind_Resume(a1);
}

void sub_2BA9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  sub_477A0(a12);
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_2BAB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_2BAD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  sub_72C14(&__p);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_1E19A0(&a25);
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v27);
  _Unwind_Resume(a1);
}

void sub_2BAF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

unsigned int *sub_2BAF74(unsigned int *a1, unsigned int *a2, unsigned int a3)
{
  if (a2 != a1)
  {
    if (*a1 >= a3)
    {
      return a1;
    }

    v3 = a2 - a1;
    if (v3 >= 1)
    {
      v3 = 1;
    }

    v4 = &a1[v3];
    if (v4 == a2)
    {
LABEL_17:
      v6 = a2;
    }

    else
    {
      v5 = 1;
      while (1)
      {
        v6 = v4;
        if (*v4 >= a3)
        {
          break;
        }

        v3 = a2 - v4;
        v7 = v3 <= 2 * v5;
        v5 *= 2;
        if (v7)
        {
          v8 = v5;
        }

        else
        {
          v8 = a2 - v4;
        }

        if (!v7)
        {
          v3 = v5;
        }

        if (v5 < 0)
        {
          v3 = v8;
        }

        v4 = &v6[v3];
        a1 = v6;
        if (v4 == a2)
        {
          a1 = v6;
          goto LABEL_17;
        }
      }
    }

    if (v3)
    {
      if (v3 == 1)
      {
        return v6;
      }

      do
      {
        v9 = v3 >> 1;
        v10 = &a1[v3 >> 1];
        v12 = *v10;
        v11 = v10 + 1;
        v3 += ~(v3 >> 1);
        if (v12 < a3)
        {
          a1 = v11;
        }

        else
        {
          v3 = v9;
        }
      }

      while (v3);
    }

    return a1;
  }

  return a2;
}

char *sub_2BB038(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_189A00();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    if (v14)
    {
      sub_1D7C28(v14);
    }

    v16 = (4 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v24 = 1;
        }

        else
        {
          v24 = v12 >> 1;
        }

        sub_1D7C28(v24);
      }

      v16 = (v16 - (((v12 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, a1[1] - __src);
    v17 = *a1;
    v25 = v16 + a1[1] - v4 + 4;
    a1[1] = v4;
    v18 = v4 - v17;
    v19 = v16 - (v4 - v17);
    memcpy(v19, v17, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 1) = v25;
    if (v20)
    {
      operator delete(v20);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 4);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v21 = v9 <= a3 || v4 > a3;
    v22 = 4;
    if (v21)
    {
      v22 = 0;
    }

    *v4 = *&a3[v22];
  }

  return v4;
}

void sub_2BB244(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2BB358(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DBFC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB3F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB47C(void *a1)
{
  *a1 = off_6DD960;
  sub_24EBDC(a1);

  operator delete();
}

void sub_2BB518(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB5A0(void *a1)
{
  *a1 = off_6DD4F8;
  sub_24EBDC(a1);

  operator delete();
}

void sub_2BB63C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD4C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB6D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD2A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB774(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB810(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double sub_2BB884(AudioObjectID a1, signed int a2)
{
  if (!a1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "Device_Codec_Aspen.cpp";
      v13 = 1024;
      v14 = 128;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &inAddress, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  outData[0] = 0;
  outData[1] = 0;
  *&inAddress.mSelector = 0x6F75747076646223;
  inAddress.mElement = a2;
  ioDataSize = 16;
  if (AudioObjectHasProperty(a1, &inAddress))
  {
    AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData);
  }

  if (a2 > 2)
  {
    if (a2 == 4)
    {
      result = -58.0;
      v5 = *outData;
      goto LABEL_13;
    }

    v5 = *outData;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    v5 = *outData;
LABEL_11:
    v6 = -58.0;
    goto LABEL_12;
  }

  v5 = *outData;
  v6 = -76.0;
LABEL_12:
  result = v6;
LABEL_13:
  if (v5 >= result)
  {
    return v5;
  }

  return result;
}

void sub_2BBB44(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_2BBBF4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unint64_t sub_2BBC0C(void *a1, __n128 *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a2 = 0uLL;
  sub_318678(a1, &v4);
  if (v4.n128_u64[1])
  {
    sub_1A8C0(v4.n128_u64[1]);
  }

  return v3.n128_u64[0];
}

void sub_2BBC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2BBC98(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DBF88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2BBD0C(uint64_t a1, double a2)
{
  v17 = a2;
  v4 = sub_4AF738(a1, a2);
  (*(*a1 + 200))(buf, a1);
  if (*&buf[8])
  {
    v5 = std::__shared_weak_count::lock(*&buf[8]);
    if (v5)
    {
      v6 = *buf;
    }

    else
    {
      v6 = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_weak(*&buf[8]);
    }

    v15 = 0x676C6F62616F7372;
    v16 = 0;
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && (*(*v6 + 16))(v6, &v15))
    {
      v8 = sub_5544(18);
      v9 = sub_5544(37);
      v10 = 0;
      *buf = 0x100000002;
      v11 = *(v8 + 8);
      while (1)
      {
        v12 = *&buf[v10];
        if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
        {
          break;
        }

        v10 += 4;
        if (v10 == 8)
        {
          goto LABEL_19;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_19:
      v13 = *v8;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 893;
        v19 = 2048;
        v20 = a2;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Informing AOP of Codec sample rate %f Hz", buf, 0x1Cu);
      }

      (*(*v6 + 48))(v6, &v15, 0, 0, 8, &v17);
    }

    if (v5)
    {
      sub_1A8C0(v5);
    }
  }

  return v4;
}

void sub_2BBF3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_2BBF60(uint64_t a1)
{
  v2 = sub_8703C();
  (*(*v2 + 56))(v2, sub_2B9E94);
  if (sub_2B55C8(a1))
  {
    v3 = sub_3419E4();
    sub_342570(v3, 1819176821, sub_2B9C18);
    v4 = sub_3419E4();
    sub_341E40(v4, sub_2B9D64);
  }

  v5 = *(a1 + 536);
  if (v5)
  {
    sub_3539A4(v5);
    v6 = *(a1 + 536);
    *(a1 + 536) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return sub_4B08A4(a1);
}

BOOL sub_2BC04C(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  if (*&a2->mSelector == qword_6E90E8 && a2->mElement == dword_6E90F0 || *&a2->mSelector == qword_6E90F8 && a2->mElement == dword_6E9100 || *&a2->mSelector == qword_6E9108 && a2->mElement == dword_6E9110)
  {
    v11 = v4;
    v12 = v5;
    v10 = *a2;
    v7 = *a2;
    v8 = a3;
    v9 = a4;
    sub_185D3C((a1 + 552), &v10.mSelector, &v7.mSelector);
    return 1;
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }
}

BOOL sub_2BC15C(void **a1, uint64_t a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if ((((*a1)[2])(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      sub_22CE0(&__p, &v11);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if (*a2 == qword_6E90E8 && *(a2 + 8) == dword_6E90F0 || *a2 == qword_6E90F8 && *(a2 + 8) == dword_6E9100 || *a2 == qword_6E9108 && *(a2 + 8) == dword_6E9110)
  {
    __p = *a2;
    v14 = *(a2 + 8);
    *buf = *a2;
    v16 = *(a2 + 8);
    v17 = a3;
    v18 = a4;
    sub_17C118(a1 + 69, &__p, buf);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_2BC420(uint64_t a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, uint64_t a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v49 = sub_5544(14);
    if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      v76 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v76);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v51 = sub_5544(14);
    if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      v76 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v76);
    }

    v52 = __cxa_allocate_exception(0x10uLL);
    *v52 = &off_6DDDD0;
    v52[2] = 561211770;
  }

  if (!a6)
  {
    v53 = sub_5544(14);
    if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
    {
      v76 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v76);
    }

    v54 = __cxa_allocate_exception(0x10uLL);
    *v54 = &off_6DDDD0;
    v54[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector <= 1685483629)
  {
    if (mSelector <= 1162701935)
    {
      if (mSelector == 913796710)
      {
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v55 = sub_5544(14);
          if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
          {
            v76 = *&a2->mSelector;
            mElement = a2->mElement;
            sub_22CE0(__p, &v76);
          }

          v56 = __cxa_allocate_exception(0x10uLL);
          *v56 = &off_6DDDD0;
          v56[2] = 561211770;
        }

        v27 = *a6 != 0;

        sub_2BEAC0(a1, v27);
        return;
      }

      if (mSelector != 1162046576)
      {
LABEL_74:

        sub_FDAC4(a1, a2, a3, a4, a5, a6);
        return;
      }

      v24 = *a6;
      v25 = sub_5544(18);
      v26 = *v25;
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v80 = "Device_Codec_Aspen.cpp";
        v81 = 1024;
        v82 = 612;
        v83 = 1024;
        LODWORD(v84) = v24;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyCodecLowPowerModeEnable = %u.", buf, 0x18u);
      }
    }

    else
    {
      if (mSelector != 1162701936)
      {
        if (mSelector == 1634759542)
        {
          if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
          {
            v57 = sub_5544(14);
            if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
            {
              v76 = *&a2->mSelector;
              mElement = a2->mElement;
              sub_22CE0(__p, &v76);
            }

            v58 = __cxa_allocate_exception(0x10uLL);
            *v58 = &off_6DDDD0;
            v58[2] = 561211770;
          }

          mScope = a2->mScope;
          *buf = 1987013732;
          v80 = mScope;
          (*(*a1 + 48))(a1, buf, a3, a4, a5, a6);
          return;
        }

        if (mSelector == 1650602615)
        {
          if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
          {
            v59 = sub_5544(14);
            if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
            {
              v76 = *&a2->mSelector;
              mElement = a2->mElement;
              sub_22CE0(__p, &v76);
            }

            v60 = __cxa_allocate_exception(0x10uLL);
            *v60 = &off_6DDDD0;
            v60[2] = 561211770;
          }

          v14 = sub_2BDF88(*(a1 + 268), a2, a3, a4, a6);
          if (v14)
          {
            v15 = v14;
            v16 = sub_5544(14);
            v17 = *v16;
            if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v80 = "Device_Codec_Aspen.cpp";
              v81 = 1024;
              v82 = 596;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: error setting kAudioDevicePropertyBasebandToCodecPlayThrough", buf, 0x12u);
            }

            v18 = __cxa_allocate_exception(0x10uLL);
            *v18 = &off_6DDDD0;
            v18[2] = v15;
          }

          return;
        }

        goto LABEL_74;
      }

      v37 = *a6;
      v38 = sub_5544(18);
      v39 = *v38;
      if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v80 = "Device_Codec_Aspen.cpp";
        v81 = 1024;
        v82 = 621;
        v83 = 1024;
        LODWORD(v84) = v37;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyMicrophoneLowPowerModeEnable = %u.", buf, 0x18u);
      }
    }

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (mSelector > 1836414052)
  {
    switch(mSelector)
    {
      case 1836414053:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v69 = sub_5544(14);
          if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
          {
            v76 = *&a2->mSelector;
            mElement = a2->mElement;
            sub_22CE0(__p, &v76);
          }

          v70 = __cxa_allocate_exception(0x10uLL);
          *v70 = &off_6DDDD0;
          v70[2] = 561211770;
        }

        if (a2->mElement == 6 && a2->mScope == 1869968496)
        {
          v40 = sub_3419E4();
          v41 = *a6 != 0;

          sub_34332C(v40, v41);
          return;
        }

        break;
      case 1987013732:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v63 = sub_5544(14);
          if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
          {
            v76 = *&a2->mSelector;
            mElement = a2->mElement;
            sub_22CE0(__p, &v76);
          }

          v64 = __cxa_allocate_exception(0x10uLL);
          *v64 = &off_6DDDD0;
          v64[2] = 561211770;
        }

        if (a2->mElement == 6 && a2->mScope == 1869968496)
        {
          v34 = sub_3419E4();
          if (sub_3428D4(v34))
          {
            v35 = (*a6 + 100.0) / 100.0;
            v36 = sub_3419E4();
            sub_342CD8(v36, v35);
            if (sub_6FE08(a1 + 552, &qword_6E90E8))
            {
              sub_6FF5C(a1 + 552, &qword_6E90E8);
            }

            if (sub_6FE08(a1 + 552, &qword_6E90F8))
            {

              sub_6FF5C(a1 + 552, &qword_6E90F8);
            }
          }

          return;
        }

        break;
      case 1999790690:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v65 = sub_5544(14);
          if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
          {
            v76 = *&a2->mSelector;
            mElement = a2->mElement;
            sub_22CE0(__p, &v76);
          }

          v66 = __cxa_allocate_exception(0x10uLL);
          *v66 = &off_6DDDD0;
          v66[2] = 561211770;
        }

        v19 = sub_2BDF88(*(a1 + 268), a2, a3, a4, a6);
        if (v19)
        {
          v20 = v19;
          v21 = sub_5544(14);
          v22 = *v21;
          if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v80 = "Device_Codec_Aspen.cpp";
            v81 = 1024;
            v82 = 604;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: error setting kAudioDevicePropertyCodecToBasebandPlayThrough", buf, 0x12u);
          }

          v23 = __cxa_allocate_exception(0x10uLL);
          *v23 = &off_6DDDD0;
          v23[2] = v20;
        }

        return;
    }

    goto LABEL_74;
  }

  if (mSelector == 1685483630)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v67 = sub_5544(14);
      if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
      {
        v76 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(__p, &v76);
      }

      v68 = __cxa_allocate_exception(0x10uLL);
      *v68 = &off_6DDDD0;
      v68[2] = 561211770;
    }

    *(a1 + 928) = *a6 != 0;
    return;
  }

  if (mSelector == 1718432370)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v61 = sub_5544(14);
      if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
      {
        v76 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(__p, &v76);
      }

      v62 = __cxa_allocate_exception(0x10uLL);
      *v62 = &off_6DDDD0;
      v62[2] = 561211770;
    }

    v29 = sub_2BDF88(*(a1 + 268), a2, a3, a4, a6);
    if (v29)
    {
      v30 = v29;
      v31 = sub_5544(14);
      v32 = *v31;
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v80 = "Device_Codec_Aspen.cpp";
        v81 = 1024;
        v82 = 630;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: error setting kAudioDevicePropertyFMTunerPlayThrough", buf, 0x12u);
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      *v33 = &off_6DDDD0;
      v33[2] = v30;
    }

    return;
  }

  if (mSelector != 1768255076)
  {
    goto LABEL_74;
  }

  if (__PAIR64__(a2->mScope, 1768255076) == qword_6E9118 && a2->mElement == dword_6E9120)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v71 = sub_5544(14);
      if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
      {
        v76 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(__p, &v76);
      }

      v72 = __cxa_allocate_exception(0x10uLL);
      *v72 = &off_6DDDD0;
      v72[2] = 561211770;
    }

    v13 = *a6;
    if (v13)
    {
      if (atomic_fetch_add((a1 + 932), 1u))
      {
        return;
      }

      goto LABEL_82;
    }

    if (!atomic_load((a1 + 932)))
    {
      v73 = sub_5544(14);
      v74 = *v73;
      if (*v73 && os_log_type_enabled(*v73, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v80 = "Device_Codec_Aspen.cpp";
        v81 = 1024;
        v82 = 685;
        _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Attempt to power off the built-in mic when mMicPowerOnCount is 0.", buf, 0x12u);
      }

      v75 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v75, "Attempt to power off the built-in mic when mMicPowerOnCount is 0.");
    }

    if (atomic_fetch_add((a1 + 932), 0xFFFFFFFF) == 1)
    {
LABEL_82:
      v45 = sub_5544(18);
      v46 = *v45;
      if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_INFO))
      {
        v47 = "dis";
        v80 = "Device_Codec_Aspen.cpp";
        *buf = 136315650;
        if (v13)
        {
          v47 = "en";
        }

        v81 = 1024;
        v82 = 688;
        v83 = 2080;
        v84 = v47;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "%25s:%-5d Non-redundant requesting to %sable microphone power. Calling the HAL.", buf, 0x1Cu);
      }

      v48 = *(a1 + 268);
      *buf = v13 != 0;
      sub_2BDF88(v48, a2, a3, a4, buf);
    }
  }

  else
  {
    v42 = sub_5544(18);
    v43 = *v42;
    if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v80 = "Device_Codec_Aspen.cpp";
      v81 = 1024;
      v82 = 694;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown property address using selector kAppleEmbeddedAudio_DevicePropertyInputEnableDevice. Ignoring.", buf, 0x12u);
    }
  }
}

void sub_2BDF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2BDF88(AudioObjectID a1, uint64_t a2, UInt32 a3, const void *a4, _DWORD *a5)
{
  v10 = sub_5544(14);
  if ((*(v10 + 8) & 1) != 0 && *v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    v53.__cv_.__sig = *a2;
    *v53.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v54, &v53);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v54.__m_.__opaque, 0, sizeof(v54.__m_.__opaque));
    v54.__m_.__sig = 850045863;
    memset(v53.__cv_.__opaque, 0, sizeof(v53.__cv_.__opaque));
    v53.__cv_.__sig = 1018212795;
    v45 = 0;
    sub_745E8(v44, a1, a2, &v53, &v54, &v45);
    v39 = a1;
    v40 = *a2;
    v41 = *(a2 + 8);
    v42 = a3;
    v43 = a4;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v16 = sub_5544(14);
      v15 = 1852797029;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        sub_22CE0(__p, &v36);
      }

      goto LABEL_67;
    }

    v11 = sub_2BEE60(&v39);
    if (!HIDWORD(v11) && *a5 == v11)
    {
      v12 = sub_5544(14);
      if ((*(v12 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v13 = *v12;
      if (!*v12 || !os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v47 = 1024;
      v48 = 294;
      v49 = 1024;
      LODWORD(v50) = a1;
LABEL_13:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_66:
      v15 = 0;
LABEL_67:
      sub_73C20(v44);
      std::condition_variable::~condition_variable(&v53);
      std::mutex::~mutex(&v54);
      return v15;
    }

    v17 = sub_5544(14);
    if ((*(v17 + 8) & 1) != 0 && *v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
    {
      v36 = *a2;
      v37 = *(a2 + 8);
      sub_22CE0(__p, &v36);
    }

    buf = *a2;
    v15 = AudioObjectSetPropertyData(a1, &buf, a3, a4, 4u, a5);
    if (v15)
    {
      v18 = sub_5544(14);
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v15);
        v34 = *a2;
        v35 = *(a2 + 8);
        sub_22CE0(&v36, &v34);
      }

      goto LABEL_67;
    }

    v19 = sub_2BEE60(&v39);
    if (!HIDWORD(v19) && *a5 == v19)
    {
      v20 = sub_5544(14);
      if ((*(v20 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v13 = *v20;
      if (!*v20 || !os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v47 = 1024;
      v48 = 322;
      v49 = 1024;
      LODWORD(v50) = a1;
      goto LABEL_13;
    }

    v21 = 2000;
LABEL_35:
    v22 = sub_2BEE60(&v39);
    v15 = HIDWORD(v22);
    if (HIDWORD(v22))
    {
      goto LABEL_67;
    }

    if (*a5 == v22)
    {
      v31 = sub_5544(14);
      if ((*(v31 + 8) & 1) != 0 && *v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        sub_22CE0(__p, &v36);
      }

      goto LABEL_66;
    }

    if (v21 <= 0)
    {
      v33 = sub_5544(14);
      v15 = 2003329396;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        sub_22CE0(__p, &v36);
      }

      goto LABEL_67;
    }

    v23.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v24 = sub_5544(14);
    if (*(v24 + 8))
    {
      v25 = *v24;
      if (*v24)
      {
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v47 = 1024;
          v48 = 354;
          v49 = 2080;
          v50 = "with timeout";
          v51 = 1024;
          v52 = a1;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v54;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v54);
    v26.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v45 & 1) != 0 || v26.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_59:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v21 += (std::chrono::system_clock::now().__d_.__rep_ - v23.__d_.__rep_) / -1000;
        goto LABEL_35;
      }

      v27.__d_.__rep_ = v26.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v27.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_58:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v26.__d_.__rep_)
      {
        goto LABEL_59;
      }
    }

    std::chrono::steady_clock::now();
    v28.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v28.__d_.__rep_)
    {
      v29 = 0;
      goto LABEL_56;
    }

    if (v28.__d_.__rep_ < 1)
    {
      if (v28.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v29 = 0x8000000000000000;
        goto LABEL_56;
      }
    }

    else if (v28.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v29 = 1000 * v28.__d_.__rep_;
LABEL_54:
    if (v29 > (v27.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v30.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_57:
      std::condition_variable::__do_timed_wait(&v53, &buf, v30);
      std::chrono::steady_clock::now();
      goto LABEL_58;
    }

LABEL_56:
    v30.__d_.__rep_ = v29 + v27.__d_.__rep_;
    goto LABEL_57;
  }

  v14 = sub_5544(14);
  v15 = 2003332927;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    v53.__cv_.__sig = *a2;
    *v53.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v54, &v53);
  }

  return v15;
}

void sub_2BEA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v22 - 216));
  std::mutex::~mutex((v22 - 168));
  _Unwind_Resume(a1);
}

void sub_2BEAC0(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  sub_147688();
  if (byte_6E6560)
  {
    if ((byte_6E844A & 1) == 0)
    {
      v17 = 0;
      if (sub_1235F4(@"DisableCodecWindFilter", @"com.apple.audio.virtualaudio", &v17))
      {
        v4 = *sub_5544(14);
        v5 = v4;
        if (v4)
        {
          v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
          v7 = v17;
          if (v6)
          {
            buf.mSelector = 136315906;
            *&buf.mScope = "RunTimeDefaults.mm";
            v19 = 1024;
            v20 = 1378;
            v21 = 2080;
            v22 = "DisableCodecWindFilter";
            v23 = 1024;
            v24 = v17;
            _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", &buf, 0x22u);
          }
        }

        else
        {
          v7 = v17;
        }

        byte_6E8449 = v7 != 0;
      }

      byte_6E844A = 1;
    }

    if (byte_6E8449 == 1)
    {
      v10 = sub_5544(18);
      v2 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
        {
          buf.mSelector = 136315394;
          *&buf.mScope = "Device_Codec_Aspen.cpp";
          v19 = 1024;
          v20 = 1797;
          v9 = "%25s:%-5d The defaults write to disable the codec wind filter has been specified.";
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    v8 = sub_5544(18);
    v2 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "Device_Codec_Aspen.cpp";
        v19 = 1024;
        v20 = 1792;
        v9 = "%25s:%-5d Use of codec wind filter is not allowed on this device. Disabling it.";
LABEL_17:
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, v9, &buf, 0x12u);
      }

LABEL_18:
      LODWORD(v2) = 0;
    }
  }

  v11 = sub_5544(18);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = "Disabling";
    *&buf.mScope = "Device_Codec_Aspen.cpp";
    buf.mSelector = 136315650;
    if (v2)
    {
      v13 = "Enabling";
    }

    v19 = 1024;
    v20 = 1801;
    v21 = 2080;
    v22 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s wind filter.", &buf, 0x1Cu);
  }

  if (*(a1 + 920) == v2)
  {
    v14 = sub_5544(18);
    if (*(v14 + 8))
    {
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = "Disabled";
          *&buf.mScope = "Device_Codec_Aspen.cpp";
          buf.mSelector = 136315650;
          if (v2)
          {
            v16 = "Enabled";
          }

          v19 = 1024;
          v20 = 1812;
          v21 = 2080;
          v22 = v16;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d The wind filter was already %s.  Using cached state.", &buf, 0x1Cu);
        }
      }
    }
  }

  else
  {
    v17 = v2;
    strcpy(&buf, "fnw6tpni");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    sub_FDAC4(a1, &buf, 0, 0, 4u, &v17);
    *(a1 + 920) = v2;
  }
}

unint64_t sub_2BEE60(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_542F0(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p, &v9);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_2BF00C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2BF02C(unsigned __int8 *a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v37 = sub_5544(14);
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      v59 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p, &v59);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v39 = sub_5544(14);
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      v59 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p, &v59);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    *v40 = &off_6DDDD0;
    v40[2] = 561211770;
  }

  if (!a6)
  {
    v41 = sub_5544(14);
    if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
    {
      v59 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p, &v59);
    }

    v42 = __cxa_allocate_exception(0x10uLL);
    *v42 = &off_6DDDD0;
    v42[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector > 1835103843)
  {
    if (mSelector > 1986229103)
    {
      if (mSelector != 1986229104)
      {
        if (mSelector == 1986290211)
        {
          v36 = *a5;
          if (v36 != (*(*a1 + 32))(a1, a2, a3, a4))
          {
            v57 = sub_5544(14);
            if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
            {
              v59 = *&a2->mSelector;
              mElement = a2->mElement;
              sub_22CE0(&__p, &v59);
            }

            v58 = __cxa_allocate_exception(0x10uLL);
            *v58 = &off_6DDDD0;
            v58[2] = 561211770;
          }

          if (a2->mElement == 6 && a2->mScope == 1869968496)
          {
            *a6 = xmmword_517240;
            return;
          }
        }

        else if (mSelector == 1987013732)
        {
          v13 = *a5;
          if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
          {
            v51 = sub_5544(14);
            if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
            {
              v59 = *&a2->mSelector;
              mElement = a2->mElement;
              sub_22CE0(&__p, &v59);
            }

            v52 = __cxa_allocate_exception(0x10uLL);
            *v52 = &off_6DDDD0;
            v52[2] = 561211770;
          }

          if (a2->mElement == 6 && a2->mScope == 1869968496)
          {
            v14 = sub_3419E4();
            v15 = (sub_342A00(v14) * 100.0) + -100.0;
LABEL_59:
            *a6 = v15;
            return;
          }
        }

        goto LABEL_55;
      }

      v31 = *a5;
      if (v31 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v53 = sub_5544(14);
        if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
        {
          v59 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(&__p, &v59);
        }

        v54 = __cxa_allocate_exception(0x10uLL);
        *v54 = &off_6DDDD0;
        v54[2] = 561211770;
      }

      if (a2->mElement == 6 && a2->mScope == 1869968496)
      {
        v32 = sub_3419E4();
        v23 = sub_3428D4(v32);
        goto LABEL_45;
      }

      goto LABEL_55;
    }

    if (mSelector != 1835103844)
    {
      if (mSelector == 1836414053)
      {
        v21 = *a5;
        if (v21 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v45 = sub_5544(14);
          if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
          {
            v59 = *&a2->mSelector;
            mElement = a2->mElement;
            sub_22CE0(&__p, &v59);
          }

          v46 = __cxa_allocate_exception(0x10uLL);
          *v46 = &off_6DDDD0;
          v46[2] = 561211770;
        }

        if (a2->mElement == 6 && a2->mScope == 1869968496)
        {
          v22 = sub_3419E4();
          v23 = sub_343174(v22);
LABEL_45:
          *a6 = v23;
          return;
        }
      }

LABEL_55:

      sub_5C0D8(a1, a2, a3, a4, a5, a6);
      return;
    }

    v33 = *a5;
    if (v33 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v55 = sub_5544(14);
      if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
      {
        v59 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(&__p, &v59);
      }

      v56 = __cxa_allocate_exception(0x10uLL);
      *v56 = &off_6DDDD0;
      v56[2] = 561211770;
    }

    mScope = a2->mScope;
    v34 = a2->mElement;
    if (v34 != 6 || mScope != 1869968496)
    {
      __p.mSelector = 1986290211;
      __p.mScope = mScope;
      __p.mElement = v34;
      LODWORD(v59) = 16;
      sub_5C0D8(a1, &__p, 0, 0, &v59, buf);
      v15 = *buf;
      goto LABEL_59;
    }

    v17 = -1027131310;
LABEL_50:
    *a6 = v17;
    return;
  }

  if (mSelector > 1634759541)
  {
    if (mSelector == 1634759542)
    {
      v29 = *a5;
      if (v29 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v49 = sub_5544(14);
        if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
        {
          v59 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(&__p, &v59);
        }

        v50 = __cxa_allocate_exception(0x10uLL);
        *v50 = &off_6DDDD0;
        v50[2] = 561211770;
      }

      v30 = a2->mScope;
      *buf = 1987013732;
      *&buf[4] = v30;
      *&buf[8] = 0;
      (*(*a1 + 40))(a1, buf, a3, a4, a5, a6);
    }

    else
    {
      if (mSelector != 1685483630)
      {
        goto LABEL_55;
      }

      v18 = sub_5544(18);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&__p, a2->mSelector);
        v20 = v62 >= 0 ? &__p : *&__p.mSelector;
        *buf = 136315650;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        v64 = 1024;
        v65 = 557;
        v66 = 2080;
        *v67 = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Property '%s' is write-only", buf, 0x1Cu);
        if (v62 < 0)
        {
          operator delete(*&__p.mSelector);
        }
      }

      *a5 = 0;
    }
  }

  else
  {
    if (mSelector != 913796710)
    {
      if (mSelector != 1064725619)
      {
        goto LABEL_55;
      }

      v16 = *a5;
      if (v16 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v43 = sub_5544(14);
        if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
        {
          v59 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(&__p, &v59);
        }

        v44 = __cxa_allocate_exception(0x10uLL);
        *v44 = &off_6DDDD0;
        v44[2] = 561211770;
      }

      v17 = 1;
      goto LABEL_50;
    }

    v24 = *a5;
    if (v24 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v47 = sub_5544(14);
      if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        v59 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(&__p, &v59);
      }

      v48 = __cxa_allocate_exception(0x10uLL);
      *v48 = &off_6DDDD0;
      v48[2] = 561211770;
    }

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
    if (*a6 != a1[920])
    {
      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25)
      {
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          v27 = a1[920];
          v28 = *a6;
          *buf = 136315906;
          *&buf[4] = "Device_Codec_Aspen.cpp";
          v64 = 1024;
          v65 = 553;
          v66 = 1024;
          *v67 = v27;
          *&v67[4] = 1024;
          *&v67[6] = v28;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Internal state for wind filter property is out of sync.  State:%u, Value:%u", buf, 0x1Eu);
        }
      }
    }
  }
}

void sub_2C04C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2C0504(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v15);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_30:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v15);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_30;
  }

  mSelector = a2->mSelector;
  result = 4;
  if (a2->mSelector <= 1836414052)
  {
    if (mSelector > 1685483629)
    {
      if (mSelector == 1685483630)
      {
        return result;
      }

      v10 = 1835103844;
    }

    else
    {
      if (mSelector == 1064725619)
      {
        return result;
      }

      v10 = 1634759542;
    }

LABEL_16:
    if (mSelector == v10)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (mSelector > 1986290210)
  {
    if (mSelector == 1986290211)
    {
      return 16;
    }

    v10 = 1987013732;
    goto LABEL_16;
  }

  if (mSelector != 1836414053)
  {
    v10 = 1986229104;
    goto LABEL_16;
  }

  if (a2->mElement == 6)
  {
    mSelector = a2->mScope;
    v10 = 1869968496;
    goto LABEL_16;
  }

LABEL_18:

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_2C08C8(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1836414052)
  {
    if (mSelector > 1986290210)
    {
      if (mSelector == 1986290211)
      {
LABEL_18:
        if (a2->mElement != 6 || a2->mScope != 1869968496)
        {
          return sub_BE734(a1, a2);
        }

        return 0;
      }

      if (mSelector != 1987013732)
      {
        return sub_BE734(a1, a2);
      }
    }

    else if (mSelector != 1836414053)
    {
      if (mSelector != 1986229104)
      {
        return sub_BE734(a1, a2);
      }

      goto LABEL_18;
    }

    if (a2->mElement != 6 || a2->mScope != 1869968496)
    {
      return sub_BE734(a1, a2);
    }

    return 1;
  }

  v3 = 1;
  if (mSelector > 1685483629)
  {
    if (mSelector == 1685483630)
    {
      return v3;
    }

    if (mSelector != 1835103844)
    {
      return sub_BE734(a1, a2);
    }

    return 0;
  }

  if (mSelector == 1064725619)
  {
    return 0;
  }

  if (mSelector != 1634759542)
  {
    return sub_BE734(a1, a2);
  }

  return v3;
}

BOOL sub_2C09DC(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1836414052)
  {
    if (mSelector > 1986290210)
    {
      v6 = mSelector == 1987013732;
      v7 = 1986290211;
    }

    else
    {
      v6 = mSelector == 1836414053;
      v7 = 1986229104;
    }

    v9 = v6 || mSelector == v7;
    if (v9 && a2->mElement == 6 && a2->mScope == 1869968496)
    {
      return 1;
    }

    goto LABEL_22;
  }

  result = 1;
  if (mSelector > 1685483629)
  {
    if (mSelector != 1685483630 && mSelector != 1835103844)
    {
LABEL_22:
      sub_4DFC0(a1);
      return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
    }
  }

  else
  {
    if (mSelector != 1064725619)
    {
      if (mSelector == 1634759542)
      {
        return result;
      }

      goto LABEL_22;
    }

    return a2->mScope == 1869968496;
  }

  return result;
}

void sub_2C0B0C(void *a1)
{
  sub_2C0B44(a1);

  operator delete();
}

uint64_t sub_2C0B44(void *a1)
{
  *a1 = off_6BFBF8;
  v2 = a1[113];
  a1[113] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_13A300((a1 + 69));
  sub_2C0C04(a1 + 68);
  v3 = a1[67];
  a1[67] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_4B2820(a1);
}

uint64_t *sub_2C0C04(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_292110(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_2C0C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v6 = off_6BFBF8;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0u;
  *(v6 + 568) = 0u;
  *(v6 + 584) = 0u;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 0u;
  *(v6 + 632) = 0u;
  *(v6 + 648) = 0u;
  *(v6 + 664) = 0u;
  *(v6 + 680) = 0u;
  *(v6 + 696) = 0u;
  *(v6 + 712) = 0u;
  *(v6 + 728) = 0u;
  *(v6 + 744) = 0u;
  *(v6 + 760) = 0u;
  *(v6 + 776) = 0u;
  *(v6 + 792) = 0u;
  *(v6 + 808) = 0u;
  *(v6 + 824) = 0u;
  *(v6 + 840) = 0u;
  *(v6 + 856) = 0u;
  *(v6 + 872) = 0u;
  *(v6 + 888) = 0;
  sub_165D0C(v6 + 552);
  *(a1 + 896) = 0;
  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638 != 1)
  {
    *inAddress = &inAddress[8];
    *&inAddress[8] = 0;
    v26[0] = 0;
    v26[1] = 0;
    *&inAddress[16] = 0;
    v25 = v26;
    sub_407194(inAddress, 1886216809, 1768778083);
    sub_407194(inAddress, 1886216809, 1768778033);
    sub_407194(inAddress, 1886222185, 1701669219);
    sub_407194(inAddress, 1886680169, 1701669219);
    sub_40736C(inAddress, 0x656D6963u, 1886222185);
    sub_40736C(inAddress, 0x656D6963u, 1886680169);
    sub_40736C(inAddress, 0x696D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6931u, 1886216809);
    sub_40736C(inAddress, 0x736D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6932u, 1886216809);
    sub_40736C(inAddress, 0x6C6D6963u, 1886216809);
    sub_40736C(inAddress, 0x666D6963u, 1886216809);
    sub_40736C(inAddress, 0x6265616Du, 1886216809);
    operator new();
  }

  *(a1 + 904) = 0;
  *(a1 + 912) = sub_46AC8C();
  *(a1 + 920) = 0;
  *(a1 + 924) = 2;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  if (!v4)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_Codec_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 282;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (!v7)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_Codec_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 283;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

    goto LABEL_27;
  }

  *&v23.mSelector = 0x696E707436776E66;
  v23.mElement = 0;
  if ((*(*a1 + 16))(a1, &v23))
  {
    *inAddress = 4;
    inData = 0;
    sub_5C0D8(a1, &v23, 0, 0, inAddress, &inData);
    *(a1 + 920) = inData != 0;
    sub_147688();
    sub_2BEAC0(a1, byte_6E6560);
  }

  v8 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v8, &qword_6E9118))
  {
    v9 = (*(*a1 + 120))(a1);
    inData = 0;
    strcpy(inAddress, "dneitpni");
    inAddress[9] = 0;
    *&inAddress[10] = 0;
    v10 = AudioObjectSetPropertyData(v9, inAddress, 0, 0, 4u, &inData);
    if (v10)
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      *v18 = &off_6DDDD0;
      v18[2] = v10;
    }

    if (atomic_load((a1 + 932)))
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *inAddress = 136315394;
        *&inAddress[4] = "Device_Codec_Aspen.cpp";
        *&inAddress[12] = 1024;
        *&inAddress[14] = 300;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v21, "Postcondition failure.");
    }
  }

  if (sub_2B8E28(a1) & 1) != 0 || (*inAddress = 0x6F7574706D757465, *&inAddress[8] = 4, ((*(*a1 + 16))(a1, inAddress)))
  {
    sub_4B4F1C(a1, 1, 0x6F757470u, 0);
  }

  return a1;
}

void sub_2C12FC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_709640);
  sub_13A300(v1 + 552);
  sub_2C0C04((v1 + 544));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2C1420(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), &qword_6E9118);
  if (result)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "Device_Codec_Aspen.cpp";
        v8 = 1024;
        v9 = 110;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Requesting that the codec disable microphone power.", &v6, 0x12u);
      }
    }

    v5 = *(a1 + 8);
    v6 = 0;
    return sub_2C152C(v5);
  }

  return result;
}

uint64_t sub_2C152C(uint64_t a1)
{
  result = sub_147610(a1);
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v2;
  }

  return result;
}

uint64_t sub_2C15C4(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), &qword_6E9118);
  if (result)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "Device_Codec_Aspen.cpp";
        v8 = 1024;
        v9 = 101;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Requesting that the codec enable microphone power.", &v6, 0x12u);
      }
    }

    v5 = *(a1 + 8);
    v6 = 1;
    return sub_2C152C(v5);
  }

  return result;
}

void sub_2C1714(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BFDE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C1788(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1 + 48;
  v30 = 1;
  v23 = a1 + 48;
  sub_26C0(a1 + 48);
  v4 = *(a1 + 24);
  v24 = *(a1 + 32);
  if (v24 == v4)
  {
    v19 = sub_5544(14);
    v20 = sub_468EC(1, *v19, *(v19 + 8));
    v21 = v20;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "DSPChain.mm";
      v33 = 1024;
      v34 = 1514;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  do
  {
    v7 = *(v4 + 8);
    v6 = *(v4 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = 0;
    v8 = (*(*v7 + 232))(v7, 1, &v28);
    if (v8)
    {
      v15 = sub_5544(14);
      v16 = sub_468EC(1, *v15, *(v15 + 8));
      v17 = v16;
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "DSPChain.mm";
        v33 = 1024;
        v34 = 1522;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unexpected error from GetBusCount", buf, 0x12u);
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      *v18 = &off_6DDDD0;
      v18[2] = v8;
    }

    if (!v5 && v28)
    {
      v9 = 1;
      do
      {
        v10 = (*(*v7 + 136))(v7, 1, v9 - 1);
        v11 = *(v10 + 16);
        v26[0] = *v10;
        v26[1] = v11;
        v27 = *(v10 + 32);
        sub_902B0(a2, v26);
        v12 = *sub_5544(25);
        v13 = v12;
        if (v12)
        {
          v14 = v12;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            sub_618A4(&v25, v26);
          }
        }

        v5 = *(a2 + 40);
        if (v9 >= v28)
        {
          break;
        }

        ++v9;
      }

      while (!v5);
    }

    if (v6)
    {
      sub_1A8C0(v6);
    }

    v4 += 24;
  }

  while (v4 != v24);
  sub_3174(v23);
}

uint64_t ***sub_2C1CA4(uint64_t ***result, uint64_t **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (!v3)
    {

      operator delete();
    }

    v4 = v3[1];
    if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
    {
LABEL_16:
      v10 = 3;
      while (1)
      {
        v11 = v3[v10];
        v3[v10] = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        if (--v10 == 1)
        {
          v12 = v3[1];
          if (v12)
          {
            std::__shared_weak_count::__release_weak(v12);
          }

          operator delete();
        }
      }
    }

    v6 = v5;
    v7 = *v3;
    if (*v3)
    {
      v8 = v3[2];
      if (v8)
      {
        v9 = 2;
        goto LABEL_11;
      }

      v8 = v3[3];
      if (v8)
      {
        v9 = 3;
LABEL_11:
        (*(*v8 + 40))(v8, v7);
        while (++v9 != 4)
        {
          v8 = v3[v9];
          if (v8)
          {
            goto LABEL_11;
          }
        }
      }
    }

    sub_1A8C0(v6);
    goto LABEL_16;
  }

  return result;
}

void sub_2C1E1C(void *a1, uint64_t a2, uint64_t a3, AudioBufferList **a4, AudioBufferList **a5)
{
  v9 = a1[28];
  if (v9 || a1[39])
  {
    sub_90828(v9, a3, *a4, (a1[14] + 48));
    v10 = a1[14] + 48;
    v12 = a1[16] + 48;
    v13 = v10;
    (*(**a1 + 120))(*a1, a2, a3, 1, &v13, 1, &v12);
    sub_90828(a1[39], a3, (a1[16] + 48), *a5);
  }

  else
  {
    v11 = *(**a1 + 120);

    v11();
  }
}

BOOL sub_2C1F48(uint64_t a1)
{
  if (!*(a1 + 1160))
  {
    operator new();
  }

  v2 = *sub_5544(25);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 735) < 0)
      {
        sub_54A0(v24, *(a1 + 712), *(a1 + 720));
      }

      else
      {
        *v24 = *(a1 + 712);
        *&v25 = *(a1 + 728);
      }

      v5 = v24;
      if (SBYTE7(v25) < 0)
      {
        v5 = v24[0];
      }

      *buf = 136315650;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1019;
      *&buf[18] = 2080;
      *&buf[20] = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s Configuring voice isolation", buf, 0x1Cu);
      if (SBYTE7(v25) < 0)
      {
        operator delete(v24[0]);
      }
    }
  }

  v6 = *(a1 + 1160);
  v7 = sub_65088(a1);
  v8 = sub_136868(v7, v6 + 36, 0);
  if (!v8)
  {
    v9 = *(v6 + 104);
    if (v9 == 1)
    {
      (*(**v6 + 24))();
      *(v6 + 104) = 0;
    }

    *buf = *v7;
    *&buf[16] = *(v7 + 16);
    v29 = *(v7 + 32);
    sub_13330C(v24, buf);
    sub_1332B8((v6 + 18), buf);
    if (v6[28] || v6[39])
    {
      v10 = (DWORD2(v25) << 12);
      sub_2C3074(v30, v24, v10);
      if (*(v6 + 120) == 1)
      {
        v11 = v6[14];
        v12 = *v30;
      }

      else
      {
        v11 = 0;
        v12 = *v30;
        *(v6 + 120) = 1;
      }

      v6[14] = v12;
      *v30 = v11;
      ExtendedAudioBufferList_Destroy();
      sub_2C3074(v30, v24, v10);
      if (*(v6 + 136) == 1)
      {
        v13 = v6[16];
        v14 = *v30;
      }

      else
      {
        v13 = 0;
        v14 = *v30;
        *(v6 + 136) = 1;
      }

      v6[16] = v14;
      *v30 = v13;
      ExtendedAudioBufferList_Destroy();
    }

    else
    {
      sub_1334B4((v6 + 14));
      sub_1334B4((v6 + 16));
    }

    if (v6[28] || v6[39])
    {
      v15 = *sub_5544(25);
      v16 = v15;
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 136315394;
        *&v30[4] = "DSPChain.mm";
        *&v30[12] = 1024;
        *&v30[14] = 489;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring voice isolation processing with intermediate deinterleaver", v30, 0x12u);
      }
    }

    v17 = *sub_5544(25);
    v18 = v17;
    if (v17)
    {
      v19 = v17;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        sub_618A4(&v27.__pn_, v24);
      }
    }

    v20 = HIDWORD(v25);
    v21 = *v6;
    *v30 = *v24;
    *&v30[16] = v25;
    v31 = v26;
    (*(*v21 + 128))(v21, 1, 0, v30);
    v22 = *v6;
    *v30 = *v24;
    *&v30[16] = v25;
    v31 = v26;
    (*(*v22 + 128))(v22, 2, 0, v30);
    (*(**v6 + 248))(*v6, 1, 0, v20);
    (*(**v6 + 248))(*v6, 2, 0, v20);
    if (v9 && (v6[13] & 1) == 0)
    {
      (*(**v6 + 16))();
      *(v6 + 104) = 1;
    }
  }

  return !v8;
}

void sub_2C2D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  v42 = *(v41 + 8);
  if (v42)
  {
    sub_1A8C0(v42);
  }

  sub_1E0258(&a41);
  sub_1E19A0(&a23);
  operator delete();
}

uint64_t *sub_2C3074(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = ExtendedAudioBufferList_CreateWithFormat();
  *a1 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
  }

  ExtendedAudioBufferList_Prepare();
  return a1;
}

uint64_t sub_2C313C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  return a1;
}

uint64_t sub_2C31B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a8 || !sub_3115C4())
  {
    goto LABEL_10;
  }

  sub_2C3354(&v20, a1);
  if (!v20)
  {
    sub_1DD754(&v20);
LABEL_10:
    v16 = sub_162F98(a1, a2, a3, a6);
    if (v16)
    {
      return (*(*v16 + 56))(v16, a3, a4, a5, a6, a7);
    }

    else
    {
      return 4294967246;
    }
  }

  v18 = 0;
  Code = 0;
  if (!CADSPGraphSetProperty())
  {
    Code = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v18 = Code;
  }

  v23 = Code;
  if (Code)
  {
    v23 = 0;
    v22 = 0;
    sub_2C3434(&v23);
    v21 = 0;
    v23 = 0;
    v18 = Code;
    sub_2C3434(&v23);
    v19 = 0;
    sub_2C3434(&v21);
    Code = CADSPRealTimeErrorGetCode();
    sub_2C3434(&v18);
  }

  else
  {
    v22 = 1;
    sub_2C3434(&v23);
    v19 = 1;
  }

  sub_1DD754(&v20);
  return Code;
}

uint64_t sub_2C3354(void *a1, uint64_t a2)
{
  result = (*(*a2 + 80))(a2);
  if (result)
  {
    v10 = 0;
    v9 = 8;
    result = (*(*a2 + 120))(a2, 1685287015, 1735549286, &v10, &v9, 0, 0, 0);
    v5 = 0;
    v6 = v10;
    if (result)
    {
      v7 = 1;
    }

    else
    {
      v7 = v10 == 0;
    }

    if (!v7)
    {
      v8 = 0;
      result = sub_1DD754(&v8);
      v5 = v6;
    }

    *a1 = v5;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void *sub_2C3434(void *a1)
{
  if (*a1)
  {
    CADSPRealTimeErrorRelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_2C346C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a8 || !sub_3115C4())
  {
    goto LABEL_10;
  }

  sub_2C3354(&v19, a1);
  if (!v19)
  {
    sub_1DD754(&v19);
LABEL_10:
    v15 = sub_162F98(a1, a2, a3, a6);
    if (v15)
    {
      return (*(*v15 + 48))(v15, a3, a4, a5, 0, 0);
    }

    else
    {
      return 1685220966;
    }
  }

  v17 = 0;
  Code = 0;
  if (!CADSPGraphGetProperty())
  {
    Code = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v17 = Code;
  }

  v22 = Code;
  if (Code)
  {
    v22 = 0;
    v21 = 0;
    sub_2C3434(&v22);
    v20 = 0;
    v22 = 0;
    v17 = Code;
    sub_2C3434(&v22);
    v18 = 0;
    sub_2C3434(&v20);
    Code = CADSPRealTimeErrorGetCode();
    sub_2C3434(&v17);
  }

  else
  {
    v21 = 1;
    sub_2C3434(&v22);
    v18 = 1;
  }

  sub_1DD754(&v19);
  return Code;
}

uint64_t sub_2C3608(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_162F98(a1, a2, a3, a6);
  if (result)
  {
    return (*(*result + 40))(result, a3, a4, a5, a6, 0) == 0;
  }

  return result;
}

uint64_t sub_2C3688(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_8BF50(a1, a2, a3, a5);
  if (!v8)
  {
    return 4294967246;
  }

  result = (*(*v8 + 72))(v8, a3, a4, a5, 0);
  if (result)
  {
    return 4294967246;
  }

  return result;
}

uint64_t sub_2C3700(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  sub_26C0(a1 + 48);
  v6 = *(a1 + 24);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v6) >> 3) <= a2)
  {
    v8 = 0;
    v7 = 1685220966;
  }

  else
  {
    v7 = 0;
    v8 = *(v6 + 24 * a2);
  }

  *a3 = v8;
  sub_3174(a1 + 48);
  return v7;
}

uint64_t sub_2C3790(uint64_t a1, int a2)
{
  v3 = a1;
  v42 = a1 + 48;
  sub_47BD8(a1 + 48);
  v4 = (v3 + 680);
  *&buf[2] = *(v3 + 680);
  *buf = *(v3 + 680);
  HIWORD(v43) = *(v3 + 680);
  LOWORD(v43) = HIWORD(v43) == 0;
  v5 = *buf;
  atomic_compare_exchange_strong((v3 + 680), &v5, v43);
  v6 = 400;
  if (!*(v3 + 680))
  {
    v6 = 424;
  }

  v7 = v3 + v6;
  sub_13E73C((v3 + v6));
  v8 = (v3 + 24);
  v9 = *(v3 + 32) - *(v3 + 24);
  if (v9)
  {
    v40 = (v3 + 680);
    v41 = v3;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    v16 = -1;
    do
    {
      v17 = *v8 + v10;
      if (*v17 == a2)
      {
        v13 = *(v17 + 8);
        v18 = *(v17 + 16);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v12)
        {
          sub_1A8C0(v12);
        }

        v12 = v18;
        v16 = v11;
      }

      else
      {
        sub_2C3D3C(v7, v17);
      }

      ++v11;
      v10 += 24;
    }

    while (v15 != v11);
    if (v13)
    {
      sub_135A80(v8, *v7, *(v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - *v7) >> 3));
      v4 = v40;
      v3 = v41;
      v19 = 0;
      if (*(v41 + 32) == *(v41 + 24))
      {
        *(v41 + 448) = 0;
      }

      goto LABEL_25;
    }

    v4 = v40;
    v3 = v41;
  }

  else
  {
    v12 = 0;
    v16 = -1;
  }

  v20 = *sub_5544(14);
  v21 = v20;
  if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "DSPChain.mm";
    v45 = 1024;
    v46 = 2198;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: No instance to delete", buf, 0x12u);
  }

  v13 = 0;
  v19 = 1;
LABEL_25:
  sub_47C90(v42);
  if (v19)
  {
    v22 = 1685220966;
    if (v12)
    {
LABEL_27:
      sub_1A8C0(v12);
    }
  }

  else
  {
    v24 = *(v3 + 880);
    if (v24)
    {
      sub_3C340C(v24, v16);
      *buf = 1635087726;
      AUPBPropertiesChanged();
    }

    sub_135C94(v4);
    mach_absolute_time();
    v25 = __udivti3();
    v26 = v25 / 0x3E8;
    v27 = (v3 + 696);
    v28 = *(v3 + 696);
    if (!v28)
    {
LABEL_37:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v29 = v28;
        v30 = v28[4];
        if (v26 >= v30)
        {
          break;
        }

        v28 = *v29;
        if (!*v29)
        {
          goto LABEL_37;
        }
      }

      if (v30 >= v26)
      {
        break;
      }

      v28 = v29[1];
      if (!v28)
      {
        goto LABEL_37;
      }
    }

    v29[5] = v13;
    v31 = *sub_5544(25);
    v32 = v31;
    if (v31)
    {
      v33 = v31;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = (*(*v13 + 152))(v13);
        *buf = 136315906;
        *&buf[4] = "DSPChain.mm";
        v45 = 1024;
        v46 = 2237;
        v47 = 2048;
        v48 = v25 / 0x3E8;
        v49 = 1024;
        v50 = v34;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d At time(us) %lld, marking instanceID %u for deletion", buf, 0x22u);
      }
    }

    if (v25 <= 0x3B9ACDE7)
    {
      v37 = sub_5544(14);
      v38 = sub_468EC(1, *v37, *(v37 + 8));
      v39 = v38;
      if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DSPChain.mm";
        v45 = 1024;
        v46 = 2239;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected current time result", buf, 0x12u);
      }
    }

    v35 = *v27;
    if (*v27)
    {
      v36 = v26 - 1000000;
      do
      {
        if (v36 < v35[4])
        {
          v27 = v35;
        }

        v35 = v35[v36 >= v35[4]];
      }

      while (v35);
    }

    *buf = v27;
    sub_13B574(v3, buf);
    v22 = 0;
    if (v12)
    {
      goto LABEL_27;
    }
  }

  return v22;
}

void sub_2C3CD4(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(a1);
}

const void **sub_2C3D3C(const void **result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v17[4] = v2;
    if (v10)
    {
      sub_2C3ECC(v10);
    }

    v11 = 24 * v7;
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(v11 + 8) = *(a2 + 8);
    *(v11 + 16) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 24);
    v13 = v2[1] - *v2;
    v14 = (v11 - v13);
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_135C34(v17);
  }

  else
  {
    *v3 = *a2;
    v5 = *(a2 + 16);
    *(v3 + 1) = *(a2 + 8);
    *(v3 + 2) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 24;
  }

  v2[1] = v6;
  return result;
}

uint64_t sub_2C3E7C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return a1;
}

void sub_2C3ECC(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2C4078(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(v1 + 40);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v7);
  _Unwind_Resume(a1);
}

double sub_2C40CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = 1936941859;
  v12 = a5;
  sub_2C4188(v7, a2);
  *a1 = 0;
  *(a1 + 24) = 0;
  if (v10 == 1)
  {
    result = *&v8;
    *a1 = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_2C4144(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void sub_2C4188(uint64_t a1, uint64_t a2)
{
  if (sub_5BA08(a2))
  {
    v9 = 2003329396;
    LOBYTE(v10[0]) = 0;
    v12 = 0;
    v4 = sub_59580(a2);
    v8 = v4;
    if (v4)
    {
      sub_128080(__p, v4 >> 2);
      v5 = sub_5C060(a2);
      v9 = v5;
      if (v5)
      {
        *a1 = v5;
        *(a1 + 8) = 0;
        *(a1 + 32) = 0;
      }

      else
      {
        sub_1280F8(v10, __p);
        v6 = v12;
        *a1 = v9;
        *(a1 + 8) = 0;
        *(a1 + 32) = 0;
        if (v6)
        {
          *(a1 + 8) = *v10;
          *(a1 + 24) = v11;
          v10[1] = 0;
          v11 = 0;
          v10[0] = 0;
          *(a1 + 32) = 1;
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
        if (v12)
        {
          if (v10[0])
          {
            v10[1] = v10[0];
            operator delete(v10[0]);
          }
        }
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *(a1 + 32) = 1;
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_2C42F0(uint64_t **a1, unint64_t a2)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_75234(v3, v5);
      sub_DD7C4((v5 + 6));

      operator delete(v5);
    }
  }
}

uint64_t *sub_2C43CC(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 80) == 4)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_DD7C4(*result);
    *v4 = *a3;
    v4[20] = 4;
  }

  return result;
}

uint64_t *sub_2C4420(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 80) == 3)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_DD7C4(*result);
    *v4 = *a3;
    *(v4 + 80) = 3;
  }

  return result;
}

void sub_2C4474(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 80) == 2)
  {
    if (a2 != a3)
    {
      sub_4ABC8(a2, *a3, (a3 + 8));
      sub_26D7C0((a2 + 24), *(a3 + 24), (a3 + 32));
      sub_26D7C0((a2 + 48), *(a3 + 48), (a3 + 56));
    }

    *(a2 + 72) = *(a3 + 72);
  }

  else
  {
    sub_44E44(&v15, a3);
    sub_2726F4(&v18, a3 + 24);
    sub_2726F4(&v21, a3 + 48);
    v24 = *(a3 + 72);
    sub_DD7C4(v4);
    v6 = v17;
    *v4 = v15;
    v7 = v16;
    *(v4 + 8) = v16;
    *(v4 + 16) = v6;
    v8 = v4 + 8;
    if (v6)
    {
      v7[2] = v8;
      v15 = &v16;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      *v4 = v8;
    }

    v9 = v20;
    *(v4 + 24) = v18;
    v10 = v19;
    *(v4 + 32) = v19;
    *(v4 + 40) = v9;
    v11 = v4 + 32;
    if (v9)
    {
      *(v10 + 2) = v11;
      v18 = &v19;
      v19 = 0;
      v20 = 0;
    }

    else
    {
      *(v4 + 24) = v11;
    }

    v12 = v23;
    *(v4 + 48) = v21;
    v13 = v22;
    *(v4 + 56) = v22;
    *(v4 + 64) = v12;
    v14 = v4 + 56;
    if (v12)
    {
      *(v13 + 16) = v14;
      v21 = &v22;
      v22 = 0;
      v23 = 0;
      v13 = 0;
    }

    else
    {
      *(v4 + 48) = v14;
    }

    *(v4 + 72) = v24;
    *(v4 + 80) = 2;
    sub_98A08(v13);
    sub_98A08(v19);
    sub_477A0(v16);
  }
}

void sub_2C4604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_98A08(a13);
  sub_477A0(a10);
  _Unwind_Resume(a1);
}

void sub_2C4628(uint64_t *a1, uint64_t a2, int *a3)
{
  v4 = *a1;
  if (*(*a1 + 80) == 1)
  {
    v6 = *a3;
    *(a2 + 4) = *(a3 + 4);
    *a2 = v6;
    sub_1789EC((a2 + 8), (a3 + 2));
    sub_1789EC((a2 + 40), (a3 + 10));
    *(a2 + 72) = *(a3 + 36);
  }

  else
  {
    v10 = *a3;
    sub_80534(__p, (a3 + 2));
    sub_80534(&v14, (a3 + 10));
    v17 = *(a3 + 36);
    sub_DD7C4(v4);
    *v4 = v10;
    *(v4 + 8) = 0;
    *(v4 + 32) = 0;
    v7 = v13;
    if (v13 == 1)
    {
      v8 = *__p;
      *(v4 + 24) = v12;
      *(v4 + 8) = v8;
      __p[1] = 0;
      v12 = 0;
      __p[0] = 0;
      *(v4 + 32) = 1;
    }

    *(v4 + 40) = 0;
    *(v4 + 64) = 0;
    if (v16 == 1)
    {
      v9 = v14;
      *(v4 + 56) = v15;
      *(v4 + 40) = v9;
      v15 = 0;
      v14 = 0uLL;
      *(v4 + 64) = 1;
    }

    *(v4 + 72) = v17;
    *(v4 + 80) = 1;
    if (v7)
    {
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_2C4774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2C479C(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 80))
  {
    result = sub_DD7C4(*result);
    *v4 = *a3;
    *(v4 + 80) = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

BOOL sub_2C4814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != *(a3 + 16))
  {
    return 0;
  }

  v5 = *a2;
  if (*a2 != a2 + 8)
  {
    v6 = *a3;
    while (*(v5 + 7) == *(v6 + 7))
    {
      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v27 = *v5 == v8;
          v8 = v5;
        }

        while (!v27);
      }

      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v27 = *v10 == v6;
          v6 = v10;
        }

        while (!v27);
      }

      v6 = v10;
      if (v5 == (a2 + 8))
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:
  if (*(a2 + 40) != *(a3 + 40))
  {
    return 0;
  }

  v11 = *(a2 + 24);
  v12 = (a2 + 32);
  if (v11 == (a2 + 32))
  {
LABEL_31:
    if (*(a2 + 64) == *(a3 + 64))
    {
      v19 = *(a2 + 48);
      if (v19 == (a2 + 56))
      {
LABEL_46:
        v25 = *(a3 + 73);
        v26 = *(a2 + 73);
        result = v26 == v25;
        v27 = v26 != v25 || v26 == 0;
        if (!v27)
        {
          return *(a2 + 72) == *(a3 + 72);
        }
      }

      else
      {
        v20 = *(a3 + 48);
        while (1)
        {
          result = sub_1DC61C(v19 + 4, v20 + 4);
          if (!result)
          {
            break;
          }

          v21 = v19[1];
          v22 = v19;
          if (v21)
          {
            do
            {
              v19 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v19 = v22[2];
              v27 = *v19 == v22;
              v22 = v19;
            }

            while (!v27);
          }

          v23 = v20[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v20[2];
              v27 = *v24 == v20;
              v20 = v24;
            }

            while (!v27);
          }

          v20 = v24;
          if (v19 == (a2 + 56))
          {
            goto LABEL_46;
          }
        }
      }

      return result;
    }

    return 0;
  }

  v13 = *(a3 + 24);
  while (1)
  {
    result = sub_1DC61C(v11 + 4, v13 + 4);
    if (!result)
    {
      return result;
    }

    v15 = v11[1];
    v16 = v11;
    if (v15)
    {
      do
      {
        v11 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v11 = v16[2];
        v27 = *v11 == v16;
        v16 = v11;
      }

      while (!v27);
    }

    v17 = v13[1];
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v18 = v13[2];
        v27 = *v18 == v13;
        v13 = v18;
      }

      while (!v27);
    }

    v13 = v18;
    if (v11 == v12)
    {
      goto LABEL_31;
    }
  }
}

BOOL sub_2C4A58(uint64_t a1, int *a2, unsigned __int8 *a3)
{
  v5 = *(a2 + 4);
  v6 = a3[4];
  if (v5 == v6 && v5 != 0)
  {
    v5 = *a2;
    v6 = *a3;
  }

  if (v5 != v6)
  {
    return 0;
  }

  result = sub_CC200(a2 + 1, a3 + 8);
  if (result)
  {
    result = sub_CC200(a2 + 5, a3 + 40);
    if (result)
    {
      v9 = a3[73];
      v10 = *(a2 + 73);
      result = v10 == v9;
      if (v10 == v9)
      {
        if (*(a2 + 73))
        {
          return *(a2 + 72) == a3[72];
        }
      }
    }
  }

  return result;
}

void sub_2C4B04(uint64_t a1, unsigned __int8 *a2, float *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v16 = v9 + 48;
        v17 = 1;
        sub_47BD8(v9 + 48);
        v10 = *sub_5544(25);
        v11 = v10;
        if (v10)
        {
          v12 = v10;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            if (*(v9 + 735) < 0)
            {
              sub_54A0(__p, *(v9 + 712), *(v9 + 720));
            }

            else
            {
              *__p = *(v9 + 712);
              v15 = *(v9 + 728);
            }

            v13 = __p;
            if (v15 < 0)
            {
              v13 = __p[0];
            }

            *buf = 136316162;
            v19 = "DSPChain.mm";
            v20 = 1024;
            v21 = 2835;
            v22 = 2080;
            v23 = v13;
            v24 = 1024;
            v25 = v5;
            v26 = 2048;
            v27 = v6;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating graph %s with AUSPL cap state: %d, cap value: %.2f", buf, 0x2Cu);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        if (v5)
        {
          *(v9 + 824) = v6;
          *(v9 + 828) = 1;
        }

        else if (*(v9 + 828) == 1)
        {
          *(v9 + 828) = 0;
        }

        sub_47C90(v9 + 48);
      }

      sub_1A8C0(v8);
    }
  }
}

void sub_2C4CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_216C10(va);
  sub_1A8C0(v9);
  _Unwind_Resume(a1);
}

void sub_2C4D24(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_2C4D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_2C4D74(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_6C04D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2C4E18(void *a1)
{
  *a1 = off_6C04D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_2C4E84(void *a1)
{
  *a1 = off_6C04D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_2C4EDC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C0350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C4F50(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v15 = v7 + 48;
        v16 = 1;
        sub_47BD8(v7 + 48);
        v8 = *sub_5544(25);
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            if (*(v7 + 735) < 0)
            {
              sub_54A0(__p, *(v7 + 712), *(v7 + 720));
            }

            else
            {
              *__p = *(v7 + 712);
              v14 = *(v7 + 728);
            }

            v11 = __p;
            if (v14 < 0)
            {
              v11 = __p[0];
            }

            *buf = 136315906;
            v18 = "DSPChain.mm";
            v19 = 1024;
            v20 = 2815;
            v21 = 2080;
            v22 = v11;
            v23 = 1024;
            v24 = v4;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating graph %s with high FPS camera coex mitigation state: %d", buf, 0x22u);
            if (SHIBYTE(v14) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v12.n128_u64[0] = 0;
        if (v4)
        {
          v12.n128_f32[0] = 1.0;
        }

        (*(*v7 + 72))(v7, 1685287015, 1919316083, 0, v12);
        sub_47C90(v7 + 48);
      }

      sub_1A8C0(v6);
    }
  }
}

void sub_2C5130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_216C10(va);
  sub_1A8C0(v9);
  _Unwind_Resume(a1);
}

void sub_2C5180(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_2C51C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_2C51D0(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_6C0488;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2C5274(void *a1)
{
  *a1 = off_6C0488;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_2C52E0(void *a1)
{
  *a1 = off_6C0488;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_2C532C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C0318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C53A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C02E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C5414(uint64_t a1, void *a2, float *a3)
{
  if (a2 && a3)
  {
    if (*(a1 + 784) >= 2uLL)
    {
      v6 = *sub_5544(25);
      v7 = v6;
      if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 784);
        *buf = 136315650;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3462;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: Associated ports = %lu > 1. Using first port.", buf, 0x1Cu);
      }
    }

    sub_88A00(buf, (*(a1 + 776) + 16), "", 3463);
    v9 = *buf;
    sub_348288(*buf);
    v10 = sub_347F08(v9);
    sub_3486F0(&cf, v9);
    *a3 = v10;
    v11 = cf;
    v14 = cf;
    v15 = 0;
    if (cf)
    {
      CFRetain(cf);
      *a2 = v14;
      sub_A1D30(&v14);
      CFRelease(v11);
    }

    else
    {
      *a2 = 0;
      sub_A1D30(&v14);
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  else
  {
    v12 = *sub_5544(25);
    v13 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3457;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry: invalid volume curve or sensitivity pointers", buf, 0x12u);
    }
  }
}

void sub_2C5628(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v13 = sub_5544(25);
    v14 = sub_468EC(1, *v13, *(v13 + 8));
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "DSPChain.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 3475;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : Failed to set volume curve and sensitivity", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x2C55F4);
  }

  _Unwind_Resume(a1);
}

void sub_2C572C(void *a1, void *a2, float a3)
{
  if (a1[98])
  {
    sub_88A00(&v178, (a1[97] + 16), "", 3282);
    v176 = 0.0;
    *cf = 0u;
    *v175 = 0u;
    *&v177 = 1.0;
    v6 = v178;
    if (*(v178 + 303) < 0)
    {
      sub_54A0(buf, *(v178 + 280), *(v178 + 288));
    }

    else
    {
      *buf = *(v178 + 280);
      *&buf[16] = *(v178 + 296);
    }

    v9 = buf[23];
    if (buf[23] >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    if (v10)
    {
      if (buf[23] >= 0)
      {
        v11 = buf[23];
      }

      else
      {
        v11 = *&buf[8];
      }

      v12 = CFStringCreateWithBytes(0, v10, v11, 0x8000100u, 0);
      __p = v12;
      if (!v12)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v9 = buf[23];
    }

    else
    {
      v12 = 0;
    }

    v175[1] = v12;
    if (v9 < 0)
    {
      operator delete(*buf);
    }

    *buf = 0;
    if (sub_346F1C(v6, 0, buf))
    {
      *&v176 = 1;
    }

    if (*(v6 + 37) == 1885544823)
    {
      Mutable = v6;
      v191 = v179;
      if (v179)
      {
        atomic_fetch_add_explicit(&v179->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_88A00(&__p, &Mutable, "", 3117);
      v13 = __p;
      v14 = *(__p + 25);
      if (v14)
      {
        v15 = *(__p + 24);
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v16 = std::__shared_weak_count::lock(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (v16 && v15)
        {
          LODWORD(theArray) = (*(*v15 + 120))(v15);
          strcpy(buf, "diabbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          v17 = sub_542F0(&theArray, buf, 0, 0);
          *(&v20 + 1) = v18;
          *&v20 = v17;
          v19 = v20 >> 32;
          if ((v19 & 0x100000000) != 0)
          {
            v21 = v19;
          }

          else
          {
            v21 = 0;
          }

          switch(v21)
          {
            case 8194:
            case 8207:
            case 8211:
              v110 = CFStringCreateWithBytes(0, "AirPods", 7, 0x8000100u, 0);
              *buf = v110;
              if (!v110)
              {
                v161 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v161, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v110;
              *buf = v109;
              if (!v109)
              {
                goto LABEL_192;
              }

              goto LABEL_286;
            case 8195:
              v144 = CFStringCreateWithBytes(0, "Powerbeats3", 11, 0x8000100u, 0);
              *buf = v144;
              if (!v144)
              {
                v169 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v169, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v144;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8197:
              v145 = CFStringCreateWithBytes(0, "BeatsX", 6, 0x8000100u, 0);
              *buf = v145;
              if (!v145)
              {
                v170 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v170, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v145;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8198:
              v140 = CFStringCreateWithBytes(0, "Beats Solo3", 11, 0x8000100u, 0);
              *buf = v140;
              if (!v140)
              {
                v165 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v165, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v140;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8201:
              v141 = CFStringCreateWithBytes(0, "Beats Studio3", 13, 0x8000100u, 0);
              *buf = v141;
              if (!v141)
              {
                v166 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v166, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v141;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8202:
              v142 = CFStringCreateWithBytes(0, "AirPods Max", 11, 0x8000100u, 0);
              *buf = v142;
              if (!v142)
              {
                v167 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v167, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v142;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8203:
              v147 = CFStringCreateWithBytes(0, "Powerbeats Pro", 14, 0x8000100u, 0);
              *buf = v147;
              if (!v147)
              {
                v172 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v172, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v147;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8204:
              v146 = CFStringCreateWithBytes(0, "Beats Solo Pro", 14, 0x8000100u, 0);
              *buf = v146;
              if (!v146)
              {
                v171 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v171, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v146;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8205:
              v138 = CFStringCreateWithBytes(0, "Powerbeats", 10, 0x8000100u, 0);
              *buf = v138;
              if (!v138)
              {
                v163 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v163, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v138;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8206:
            case 8212:
            case 8228:
              v108 = CFStringCreateWithBytes(0, "AirPods Pro", 11, 0x8000100u, 0);
              *buf = v108;
              if (!v108)
              {
                v160 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v160, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v108;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8208:
            case 8209:
            case 8210:
            case 8217:
            case 8218:
            case 8219:
            case 8221:
            case 8222:
            case 8223:
            case 8224:
            case 8229:
            case 8230:
            case 8231:
            case 8232:
            case 8239:
              v22 = [CBProductInfo productInfoWithProductID:v21];
              v23 = [v22 productName];
              v24 = v23 == 0;

              if (!v24)
              {
                v25 = [v22 productName];
                v26 = v25;
                v27 = [v25 UTF8String];
                v28 = strlen(v27);
                if (v27)
                {
                  v29 = CFStringCreateWithBytes(0, v27, v28, 0x8000100u, 0);
                  *buf = v29;
                  if (!v29)
                  {
                    v30 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v30, "Could not construct");
                  }
                }

                else
                {
                  v29 = 0;
                }

                v107 = cf[0];
                cf[0] = v29;
                *buf = v107;
                if (v107)
                {
                  CFRelease(v107);
                }

LABEL_192:
                snprintf(&valuePtr, 7uLL, "0x%x", v21);
                sub_53E8(buf, &valuePtr);
                if (buf[23] >= 0)
                {
                  v112 = buf;
                }

                else
                {
                  v112 = *buf;
                }

                if (v112)
                {
                  if (buf[23] >= 0)
                  {
                    v113 = buf[23];
                  }

                  else
                  {
                    v113 = *&buf[8];
                  }

                  v114 = CFStringCreateWithBytes(0, v112, v113, 0x8000100u, 0);
                  theArray = v114;
                  if (!v114)
                  {
                    v115 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v115, "Could not construct");
                  }
                }

                else
                {
                  v114 = 0;
                }

                v116 = cf[1];
                cf[1] = v114;
                theArray = v116;
                if (v116)
                {
                  CFRelease(v116);
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                goto LABEL_206;
              }

LABEL_158:
              (*(*v13 + 144))(buf, v13);
              if (buf[23] >= 0)
              {
                v99 = buf;
              }

              else
              {
                v99 = *buf;
              }

              if (v99)
              {
                if (buf[23] >= 0)
                {
                  v100 = buf[23];
                }

                else
                {
                  v100 = *&buf[8];
                }

                v101 = CFStringCreateWithBytes(0, v99, v100, 0x8000100u, 0);
                theArray = v101;
                if (!v101)
                {
                  v102 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v102, "Could not construct");
                }
              }

              else
              {
                v101 = 0;
              }

              v111 = cf[0];
              cf[0] = v101;
              theArray = v111;
              if (v111)
              {
                CFRelease(v111);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (v21)
              {
                goto LABEL_192;
              }

LABEL_206:
              if (sub_346CF8(v13))
              {
                v117 = CFStringCreateWithBytes(0, "Apple Inc.", 10, 0x8000100u, 0);
                *buf = v117;
                if (!v117)
                {
                  v158 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v158, "Could not construct");
                }

                v118 = v175[0];
                v175[0] = v117;
                *buf = v118;
                if (v118)
                {
                  CFRelease(v118);
                }
              }

              else
              {
                v119 = v13[36];
                if (v119 == 1885892674 || v119 == 1886216820 || v119 == 1885892706)
                {
                  if (sub_346E54(v13))
                  {
                    strcpy(buf, "dinvbolg");
                    buf[9] = 0;
                    *&buf[10] = 0;
                    if ((*(*v13 + 16))(v13, buf))
                    {
                      LODWORD(theArray) = 0;
                      LODWORD(valuePtr) = 4;
                      strcpy(buf, "dinvbolg");
                      buf[9] = 0;
                      *&buf[10] = 0;
                      (*(*v13 + 40))(v13, buf, 0, 0, &valuePtr, &theArray);
                      if (theArray)
                      {
                        snprintf(&valuePtr, 7uLL, "0x%x", theArray);
                        sub_53E8(buf, &valuePtr);
                        if (buf[23] >= 0)
                        {
                          v120 = buf;
                        }

                        else
                        {
                          v120 = *buf;
                        }

                        if (v120)
                        {
                          if (buf[23] >= 0)
                          {
                            v121 = buf[23];
                          }

                          else
                          {
                            v121 = *&buf[8];
                          }

                          v122 = CFStringCreateWithBytes(0, v120, v121, 0x8000100u, 0);
                          theArray = v122;
                          if (!v122)
                          {
                            v123 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v123, "Could not construct");
                          }
                        }

                        else
                        {
                          v122 = 0;
                        }

                        v148 = v175[0];
                        v175[0] = v122;
                        theArray = v148;
                        if (v148)
                        {
                          CFRelease(v148);
                        }

                        if ((buf[23] & 0x80000000) != 0)
                        {
                          operator delete(*buf);
                        }
                      }
                    }
                  }
                }
              }

              break;
            case 8214:
              v139 = CFStringCreateWithBytes(0, "Beats Studio Buds +", 19, 0x8000100u, 0);
              *buf = v139;
              if (!v139)
              {
                v164 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v164, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v139;
              *buf = v109;
              if (v109)
              {
                goto LABEL_286;
              }

              goto LABEL_192;
            case 8215:
              v143 = CFStringCreateWithBytes(0, "Beats Studio Pro", 16, 0x8000100u, 0);
              *buf = v143;
              if (!v143)
              {
                v168 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v168, "Could not construct");
              }

              v109 = cf[0];
              cf[0] = v143;
              *buf = v109;
              if (v109)
              {
LABEL_286:
                CFRelease(v109);
              }

              goto LABEL_192;
            default:
              goto LABEL_158;
          }

          goto LABEL_62;
        }
      }

      else
      {
        v16 = 0;
      }

      v40 = CFStringCreateWithBytes(0, "Unknown", 7, 0x8000100u, 0);
      *buf = v40;
      if (!v40)
      {
        v152 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v152, "Could not construct");
      }

      v41 = cf[0];
      cf[0] = v40;
      *buf = v41;
      if (v41)
      {
        CFRelease(v41);
      }

      if (!v16)
      {
LABEL_63:
        if (v181)
        {
          sub_1A8C0(v181);
        }

        v42 = v191;
        if (!v191)
        {
          goto LABEL_81;
        }

        goto LABEL_80;
      }

LABEL_62:
      sub_1A8C0(v16);
      goto LABEL_63;
    }

    theArray = v6;
    v189 = v179;
    if (v179)
    {
      atomic_fetch_add_explicit(&v179->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_88A00(&Mutable, &theArray, "", 3212);
    *&v176 |= 2uLL;
    v31 = Mutable;
    v32 = *(Mutable + 76);
    if (v32 > 1647718501)
    {
      if ((v32 - 1647718502) < 2)
      {
LABEL_50:
        v35 = CFStringCreateWithBytes(0, "EarPods", 7, 0x8000100u, 0);
        *buf = v35;
        if (!v35)
        {
          v153 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v153, "Could not construct");
        }

        v36 = cf[0];
        cf[0] = v35;
        *buf = v36;
        if (v36)
        {
          CFRelease(v36);
        }

        v37 = CFStringCreateWithBytes(0, "Apple Inc.", 10, 0x8000100u, 0);
        *buf = v37;
        if (!v37)
        {
          v154 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v154, "Could not construct");
        }

        v38 = v175[0];
        v175[0] = v37;
        *buf = v38;
        if (v38)
        {
          CFRelease(v38);
        }

        v39 = 1063507722;
        goto LABEL_76;
      }

      if (v32 == 1752709424 || v32 == 2004367664)
      {
        v33 = CFStringCreateWithBytes(0, "MFi", 3, 0x8000100u, 0);
        *buf = v33;
        if (!v33)
        {
          v155 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v155, "Could not construct");
        }

        v34 = cf[0];
        cf[0] = v33;
        *buf = v34;
        if (!v34)
        {
          goto LABEL_75;
        }

LABEL_74:
        CFRelease(v34);
LABEL_75:
        v39 = 1065353216;
LABEL_76:
        v177 = v39;
        goto LABEL_77;
      }
    }

    else
    {
      if (v32 <= 1647521841)
      {
        if (v32 != 1214329654 && v32 != 1214394677)
        {
          goto LABEL_145;
        }

        goto LABEL_50;
      }

      if (v32 == 1647521842 || v32 == 1647522096)
      {
        v43 = CFStringCreateWithBytes(0, "Beats", 5, 0x8000100u, 0);
        *buf = v43;
        if (!v43)
        {
          v156 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v156, "Could not construct");
        }

        v44 = cf[0];
        cf[0] = v43;
        *buf = v44;
        if (v44)
        {
          CFRelease(v44);
        }

        v45 = CFStringCreateWithBytes(0, "Apple Inc.", 10, 0x8000100u, 0);
        *buf = v45;
        if (!v45)
        {
          v157 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v157, "Could not construct");
        }

        v34 = v175[0];
        v175[0] = v45;
        *buf = v34;
        if (!v34)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

LABEL_145:
    *&v177 = 0.92;
    v90 = *(Mutable + 25);
    if (v90)
    {
      v91 = *(Mutable + 24);
      atomic_fetch_add_explicit(&v90->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v92 = std::__shared_weak_count::lock(v90);
      std::__shared_weak_count::__release_weak(v90);
      if (v92 && v91)
      {
        strcpy(buf, "nartbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v93 = sub_59410(v91, buf, 0, 0);
        *(&v95 + 1) = v94;
        *&v95 = v93;
        if (((v95 >> 32) & 0x1FFFFFFFFLL) == 0x175736220)
        {
          (*(*v31 + 144))(buf, v31);
          if (buf[23] >= 0)
          {
            v96 = buf;
          }

          else
          {
            v96 = *buf;
          }

          if (buf[23] >= 0)
          {
            v97 = buf[23];
          }

          else
          {
            v97 = *&buf[8];
          }

          sub_45240(&__p, v96, v97);
          v98 = cf[0];
          cf[0] = __p;
          __p = v98;
          sub_452F0(&__p);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          *&v176 |= 0x10uLL;
          v124 = CFStringCreateWithBytes(0, "Wired", 5, 0x8000100u, 0);
          *buf = v124;
          if (!v124)
          {
            v162 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v162, "Could not construct");
          }

          v125 = cf[0];
          cf[0] = v124;
          *buf = v125;
          if (v125)
          {
            CFRelease(v125);
          }
        }

        (*(*v91 + 456))(&__p, v91);
        if ((v182 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (p_p)
        {
          if ((v182 & 0x80u) == 0)
          {
            v127 = v182;
          }

          else
          {
            v127 = v181;
          }

          v128 = CFStringCreateWithBytes(0, p_p, v127, 0x8000100u, 0);
          *buf = v128;
          if (!v128)
          {
            v129 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v129, "Could not construct");
          }
        }

        else
        {
          v128 = 0;
        }

        v130 = v175[1];
        v175[1] = v128;
        *buf = v130;
        if (v130)
        {
          CFRelease(v130);
        }

        if (v182 < 0)
        {
          if (v181 != (&dword_4 + 1))
          {
            goto LABEL_249;
          }

          v131 = __p;
        }

        else
        {
          if (v182 != 5)
          {
            goto LABEL_249;
          }

          v131 = &__p;
        }

        v132 = *v131;
        v133 = v131[4];
        if (v132 == 1701080899 && v133 == 99)
        {
          *&v176 |= 4uLL;
          if ((v182 & 0x80) == 0)
          {
            goto LABEL_256;
          }

          goto LABEL_255;
        }

LABEL_249:
        v135 = *sub_5544(25);
        v136 = v135;
        if (v135 && os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          v137 = &__p;
          if ((v182 & 0x80u) != 0)
          {
            v137 = __p;
          }

          *buf = 136315650;
          *&buf[4] = "DSPChain.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3264;
          *&buf[18] = 2080;
          *&buf[20] = v137;
          _os_log_impl(&dword_0, v136, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Wired Device UID: %s", buf, 0x1Cu);
        }

        if ((v182 & 0x80) == 0)
        {
          goto LABEL_256;
        }

LABEL_255:
        operator delete(__p);
        goto LABEL_256;
      }
    }

    else
    {
      v92 = 0;
    }

    v103 = CFStringCreateWithBytes(0, "Wired", 5, 0x8000100u, 0);
    *buf = v103;
    if (!v103)
    {
      v159 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v159, "Could not construct");
    }

    v104 = cf[0];
    cf[0] = v103;
    *buf = v104;
    if (v104)
    {
      CFRelease(v104);
    }

    *&v176 |= 4uLL;
    v105 = *sub_5544(25);
    v106 = v105;
    if (v105 && os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3271;
      _os_log_impl(&dword_0, v106, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : Cannot get device UID, assumed headset jack", buf, 0x12u);
    }

    if (!v92)
    {
LABEL_77:
      if (v191)
      {
        sub_1A8C0(v191);
      }

      v42 = v189;
      if (!v189)
      {
        goto LABEL_81;
      }

LABEL_80:
      std::__shared_weak_count::__release_weak(v42);
LABEL_81:
      v46 = v179;
      v173[0] = v178;
      v173[1] = v179;
      if (v179)
      {
        atomic_fetch_add_explicit(&v179->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = *&v177;
      __p = a2;
      LOWORD(v181) = 0;
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      LOWORD(v191) = 257;
      theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      LOWORD(v189) = 257;
      sub_2E7400(&__p, @"OutputMap", &theArray);
      sub_2E7400(&__p, @"InputMap", &Mutable);
      v187 = 0.0;
      if (theArray)
      {
        v48 = CFArrayGetCount(theArray) - 1;
      }

      else
      {
        v48 = -1;
      }

      sub_2E45AC(&theArray, v48, &v187);
      v49 = ((a3 + -12.83) - v187) + 13.0;
      v50 = *sub_5544(25);
      v51 = v50;
      if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3366;
        *&buf[18] = 2048;
        *&buf[20] = a3;
        *&buf[28] = 2048;
        *&buf[30] = v187;
        *&buf[38] = 2048;
        v193 = v49;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: senstivity: %.2f, max output volume: %.2f offset: %.2f", buf, 0x30u);
      }

      v52 = 80.0 - v49;
      v53 = 74.0 - v49;
      v54 = *sub_5544(25);
      v55 = v54;
      if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3371;
        *&buf[18] = 2048;
        *&buf[20] = v52;
        *&buf[28] = 2048;
        *&buf[30] = v53;
        _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry: mapped 80dB volume: %.2f, mapped 74dB volume: %.2f", buf, 0x26u);
      }

      v56 = sub_2C92FC(&Mutable, &theArray, v53);
      v57 = sub_2C92FC(&Mutable, &theArray, v52);
      v58 = *sub_5544(25);
      v59 = v58;
      if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3377;
        *&buf[18] = 2048;
        *&buf[20] = v57;
        *&buf[28] = 2048;
        *&buf[30] = v56;
        _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: target dB volume at 80dB: %.2fdB, at 74dB: %.2fdB", buf, 0x26u);
      }

      sub_88A00(&valuePtr, v173, "", 3379);
      v60 = valuePtr;
      v61 = *(valuePtr + 25);
      v62 = -1.0;
      if (v61)
      {
        v63 = *(valuePtr + 24);
        atomic_fetch_add_explicit(&v61->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v64 = std::__shared_weak_count::lock(v61);
        std::__shared_weak_count::__release_weak(v61);
        v65 = -1.0;
        if (v64)
        {
          if (v63)
          {
            (*(*v63 + 256))(&v183, v63, 1, *(v60 + 36));
            if (v184)
            {
              v66 = std::__shared_weak_count::lock(v184);
              if (v66)
              {
                v67 = v66;
                if (v183)
                {
                  v68 = (*(*v183 + 128))(v183);
                  if (v69)
                  {
                    v70 = v68;
                    v71 = sub_E9780(v68, v56);
                    v72 = sub_E9780(v70, v57);
                    sub_5B898(v70, v71);
                    v74 = v73;
                    sub_5B898(v70, v72);
                    v76 = v75;
                    v65 = v71 / v47;
                    v62 = v72 / v47;
                    v77 = *sub_5544(25);
                    v78 = v77;
                    if (v77 && os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136316674;
                      *&buf[4] = "DSPChain.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 3398;
                      *&buf[18] = 2048;
                      *&buf[20] = v62;
                      *&buf[28] = 2048;
                      *&buf[30] = v65;
                      *&buf[38] = 2048;
                      v193 = v74;
                      v194 = 2048;
                      v195 = v76;
                      v196 = 2048;
                      v197 = v47;
                      _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: target scalar volume at 80dB: %.2f, at 74dB: %.2f convert back to dB: %.2f, %.2f scalar coefficient: %.4f", buf, 0x44u);
                    }
                  }
                }

                sub_1A8C0(v67);
              }

              if (v184)
              {
                std::__shared_weak_count::__release_weak(v184);
              }
            }
          }

          sub_1A8C0(v64);
        }
      }

      else
      {
        v65 = -1.0;
      }

      if (v186)
      {
        sub_1A8C0(v186);
      }

      sub_A0804(&theArray);
      sub_A0804(&Mutable);
      sub_A1D30(&__p);
      if (v46)
      {
        std::__shared_weak_count::__release_weak(v46);
      }

      *&valuePtr = v65;
      theArray = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      if (!theArray)
      {
        v149 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v149, "Could not construct");
      }

      sub_2C9254(buf, "ScalarVolume74", &theArray);
      *&v183 = v62;
      valuePtr = CFNumberCreate(0, kCFNumberFloatType, &v183);
      if (!valuePtr)
      {
        v150 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v150, "Could not construct");
      }

      sub_2C9254(&buf[16], "ScalarVolume80", &valuePtr);
      __p = buf;
      v181 = (&dword_0 + 2);
      *&v79 = COERCE_DOUBLE(sub_69CE8(&__p));
      v80 = 0;
      Mutable = v79;
      do
      {
        v81 = *&buf[v80 + 24];
        if (v81)
        {
          CFRelease(v81);
        }

        v82 = *&buf[v80 + 16];
        if (v82)
        {
          CFRelease(v82);
        }

        v80 -= 16;
      }

      while (v80 != -32);
      if (valuePtr)
      {
        CFRelease(valuePtr);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      v83 = *sub_5544(25);
      v84 = v83;
      if (v83 && os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317442;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3313;
        *&buf[18] = 2112;
        *&buf[20] = cf[0];
        *&buf[28] = 2112;
        *&buf[30] = cf[1];
        *&buf[38] = 2112;
        v193 = *v175;
        v194 = 2112;
        v195 = *&v175[1];
        v196 = 2048;
        v197 = v176;
        v198 = 2048;
        v199 = a3;
        v200 = 2048;
        v201 = v65;
        v202 = 2048;
        v203 = v62;
        _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Device Info: {Name: '%@' Model: '%@' Manufacture: '%@' UUID: '%@' device flag: '%0llx' sensitivity: %.4f scalar74: %.4f scalar80: %.4f}", buf, 0x62u);
      }

      v85 = cf[0];
      v86 = cf[1];
      v87 = v175[0];
      v88 = v175[1];
      *buf = cf[0];
      *&buf[8] = v175[0];
      *&buf[16] = cf[1];
      *&buf[24] = v175[1];
      *&buf[32] = v176;
      v193 = *&v79;
      v89 = a1[92];
      if (qword_6EB708 != -1)
      {
        dispatch_once(&qword_6EB708, &stru_6C0080);
      }

      if (off_6EB798)
      {
        off_6EB798(v89, buf);
      }

      CFRelease(v79);
      if (v88)
      {
        CFRelease(v88);
      }

      if (v87)
      {
        CFRelease(v87);
      }

      if (v86)
      {
        CFRelease(v86);
      }

      if (v85)
      {
        CFRelease(v85);
      }

      if (v46)
      {
        sub_1A8C0(v46);
      }

      return;
    }

LABEL_256:
    sub_1A8C0(v92);
    goto LABEL_77;
  }

  v7 = *sub_5544(25);
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "DSPChain.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3329;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : no associated ports in dspchain?", buf, 0x12u);
  }
}

void sub_2C7594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, std::__shared_weak_count *a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, std::__shared_weak_count *a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_1DB0E0(&__p);
  sub_1A8C0(v41);
  if (a22)
  {
    sub_1A8C0(a22);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_weak(a35);
  }

  sub_2C9298(&a13);
  if (a20)
  {
    sub_1A8C0(a20);
  }

  _Unwind_Resume(a1);
}

void sub_2C7AC4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a1[796] == 1)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v7 = std::__shared_weak_count::lock(v5);
      if (v7)
      {
        v8 = v7;
        v9 = *a2;
        if (!v9)
        {
LABEL_57:
          sub_1A8C0(v8);
          return;
        }

        if (!a1[798])
        {
          v16 = 1;
          goto LABEL_43;
        }

        if (a3 == 1701865584 || a3 == 1701868910)
        {
          if (!(*(*v9 + 424))(v9))
          {
            v16 = 0;
            goto LABEL_42;
          }

          v10 = sub_5544(25);
          v11 = *v10;
          if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v9[25];
            v32[0] = v9[24];
            v32[1] = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_5659C(&v33, v32, "", 792);
            v13 = (*(*v33 + 120))(v33);
            v14 = __p;
            (*(*v9 + 144))(__p, v9);
            if (v36 < 0)
            {
              v14 = __p[0];
            }

            v15 = v30;
            (*(*v9 + 136))(v30, v9);
            if (v31 < 0)
            {
              v15 = v30[0];
            }

            if (*(v9 + 303) < 0)
            {
              sub_54A0(v28, v9[35], v9[36]);
            }

            else
            {
              *v28 = *(v9 + 35);
              v29 = v9[37];
            }

            v20 = v28;
            if (v29 < 0)
            {
              v20 = v28[0];
            }

            *buf = 136316418;
            v38 = "RouteUtilities.cpp";
            v39 = 1024;
            v40 = 792;
            v41 = 1024;
            *v42 = v13;
            *&v42[4] = 2080;
            *&v42[6] = v14;
            v43 = 2080;
            v44 = v15;
            v45 = 2080;
            v46 = v20;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Skipping AUSPL since the device [%u, %s, %s, %s] is a temporary guest device", buf, 0x36u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(v28[0]);
            }

            if (v31 < 0)
            {
              operator delete(v30[0]);
            }

            if (v36 < 0)
            {
              operator delete(__p[0]);
            }

            if (v34)
            {
              sub_1A8C0(v34);
            }

            if (v12)
            {
              std::__shared_weak_count::__release_weak(v12);
            }
          }
        }

        else
        {
          v17 = sub_5544(25);
          v18 = *v17;
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(__p, a3);
            v19 = v36 >= 0 ? __p : __p[0];
            *buf = 136315650;
            v38 = "RouteUtilities.cpp";
            v39 = 1024;
            v40 = 783;
            v41 = 2080;
            *v42 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Skipping AUSPL since endpoint is not headphone: %s", buf, 0x1Cu);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v16 = 1;
LABEL_42:
        if (a1[798])
        {
LABEL_47:
          LODWORD(__p[0]) = v16;
          (*(*a1 + 128))(a1, 1936747629, 21, __p, 4, 0, 0, 0);
          v23 = *sub_5544(25);
          v24 = v23;
          if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v25 = "*running*";
            v38 = "DSPChain.mm";
            *buf = 136315650;
            if (v16)
            {
              v25 = "*bypassed*";
            }

            v39 = 1024;
            v40 = 1045;
            v41 = 2080;
            *v42 = v25;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: AUSPL is %s", buf, 0x1Cu);
          }

          a1[797] = v16 ^ 1;
          if (*(v9 + 36) == 1886152047)
          {
            v26 = *sub_5544(25);
            v27 = v26;
            if (v26)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v38 = "DSPChain.mm";
                v39 = 1024;
                v40 = 1058;
                _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: PortType is BluetoothLEOutput. Will not report SPL data", buf, 0x12u);
              }
            }

            a1[797] = 0;
          }

          goto LABEL_57;
        }

LABEL_43:
        v21 = *sub_5544(25);
        v22 = v21;
        if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v38 = "DSPChain.mm";
          v39 = 1024;
          v40 = 1051;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: VAD configured for a mode disallowing dosimetry. Will not report SPL data", buf, 0x12u);
        }

        goto LABEL_47;
      }
    }
  }
}

void sub_2C8084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22)
  {
    sub_1A8C0(a22);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  sub_1A8C0(v28);
  _Unwind_Resume(a1);
}

void sub_2C8164(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2C8180(uint64_t a1, int a2, const AudioObjectPropertyAddress *a3, uint64_t a4)
{
  v5 = a1;
  if (a2 != 1)
  {
    v55 = sub_5544(14);
    v56 = sub_468EC(1, *v55, *(v55 + 8));
    v57 = v56;
    if (v56 && os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *outData = 136316162;
      *&outData[4] = "DSPChain.mm";
      *&outData[12] = 1024;
      *&outData[14] = 2936;
      v78 = 1024;
      *v79 = a2;
      *&v79[4] = 1024;
      *&v79[6] = v5;
      *&v79[10] = 2048;
      *&v79[12] = a4;
      _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): PlaybackDosimetry : DeviceVolumeChangeHandler called with %u property addresses? should be 1. deviceID: %u client: %p", outData, 0x28u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PlaybackDosimetry : DeviceVolumeChangeHandler called with %u property addresses? should be 1. deviceID: %u client: %p");
  }

  if (!a3)
  {
    v59 = sub_5544(14);
    v60 = sub_468EC(1, *v59, *(v59 + 8));
    v61 = v60;
    if (v60 && os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *outData = 136315906;
      *&outData[4] = "DSPChain.mm";
      *&outData[12] = 1024;
      *&outData[14] = 2941;
      v78 = 1024;
      *v79 = v5;
      *&v79[4] = 2048;
      *&v79[6] = a4;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): PlaybackDosimetry : DeviceVolumeChangeHandler called with NULL property addresses?  deviceID: %u client: %p", outData, 0x22u);
    }

    v62 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v62, "PlaybackDosimetry : DeviceVolumeChangeHandler called with NULL property addresses?  deviceID: %u client: %p");
  }

  v7 = (a4 + 856);
  v8 = *(a4 + 864);
  if (v8 != (a4 + 856))
  {
    do
    {
      v9 = v8[3];
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = v10;
          v12 = v8[2];
          if (v12)
          {
            v13 = (*(*v12 + 120))(v12);
            sub_1A8C0(v11);
            if (v13 == v5)
            {
              goto LABEL_12;
            }
          }

          else
          {
            sub_1A8C0(v11);
          }
        }
      }

      v8 = v8[1];
    }

    while (v8 != v7);
    return 560232035;
  }

LABEL_12:
  if (v8 != v7)
  {
    sub_5659C(&v75, v8 + 2, "", 2955);
    v15 = v75;
    v14 = v76;
    v73[0] = v75;
    v73[1] = v76;
    if (v76)
    {
      atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v74 = v5;
    v70 = a4;
    v71 = v5;
    v72 = a4;
    mSelector = a3->mSelector;
    if (a3->mSelector == 1836414053)
    {
      if ((sub_2C8B48(v73) & 1) == 0)
      {
        if (!sub_2C8C70(&v70))
        {
          goto LABEL_45;
        }

        *outData = 0;
        ioDataSize[0] = 4;
        AudioObjectGetPropertyData(v5, a3, 0, 0, ioDataSize, outData);
        if (*outData == 1)
        {
          sub_2C8D70(a4, v5, -3.4028e38);
        }
      }

LABEL_94:
      v17 = 0;
      if (!v14)
      {
        return v17;
      }

LABEL_95:
      sub_1A8C0(v14);
      sub_1A8C0(v14);
      return v17;
    }

    if (mSelector != 1970496630)
    {
      if (mSelector == 1987013732)
      {
        if (sub_2C8B48(v73))
        {
          goto LABEL_94;
        }

        if (sub_2C8C70(&v70))
        {
          *outData = 0;
          ioDataSize[0] = 4;
          AudioObjectGetPropertyData(v5, a3, 0, 0, ioDataSize, outData);
          sub_2C8D70(a4, v5, *outData);
          goto LABEL_94;
        }

LABEL_45:
        v17 = 1717660012;
        if (!v14)
        {
          return v17;
        }

        goto LABEL_95;
      }

      v24 = *sub_5544(25);
      v25 = v24;
      if (v24)
      {
        v26 = v24;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(ioDataSize, a3->mSelector);
          if (v68 >= 0)
          {
            v27 = ioDataSize;
          }

          else
          {
            v27 = *ioDataSize;
          }

          *outData = 136315906;
          *&outData[4] = "DSPChain.mm";
          *&outData[12] = 1024;
          *&outData[14] = 3053;
          v78 = 2080;
          *v79 = v27;
          *&v79[8] = 1024;
          *&v79[10] = v5;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: unknown selector for property handler %s device: %u", outData, 0x22u);
          if (v68 < 0)
          {
            operator delete(*ioDataSize);
          }
        }
      }

      goto LABEL_94;
    }

    if (!sub_2C8C70(&v70))
    {
      goto LABEL_45;
    }

    v69 = 1701868910;
    *outData = v15;
    *&outData[8] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = sub_2C9130(outData, &v69);
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (v18)
    {
      v19 = sub_5544(18);
      v20 = sub_5544(29);
      v21 = 0;
      *outData = 0x100000002;
      v22 = *(v19 + 8);
      while (1)
      {
        v23 = *&outData[v21];
        if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
        {
          break;
        }

        v21 += 4;
        if (v21 == 8)
        {
          goto LABEL_54;
        }
      }

      if ((v22 & v23) == 0)
      {
        v19 = v20;
      }

LABEL_54:
      v35 = sub_5544(25);
      v36 = 0;
      *outData = 0x100000002;
      v37 = *(v19 + 8);
      while (1)
      {
        v38 = *&outData[v36];
        if (((v37 & v38) != 0) != ((*(v35 + 8) & v38) != 0))
        {
          break;
        }

        v36 += 4;
        if (v36 == 8)
        {
          goto LABEL_60;
        }
      }

      if ((v37 & v38) == 0)
      {
        v19 = v35;
      }

LABEL_60:
      v39 = *v19;
      v40 = v39;
      if (!v39)
      {
        goto LABEL_93;
      }

      v40 = v39;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
LABEL_92:

LABEL_93:
        goto LABEL_94;
      }

      sub_22170(ioDataSize, v18);
      if (v68 >= 0)
      {
        v41 = ioDataSize;
      }

      else
      {
        v41 = *ioDataSize;
      }

      *outData = 136315650;
      *&outData[4] = "DSPChain.mm";
      *&outData[12] = 1024;
      *&outData[14] = 3047;
      v78 = 2080;
      *v79 = v41;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry: failed to fetch user selected endpoint type. err '%s'", outData, 0x1Cu);
    }

    else
    {
      v28 = v69;
      if (v69 == *(a4 + 804))
      {
        goto LABEL_94;
      }

      sub_2C7AC4(a4, a4 + 808, v69);
      v29 = *(a4 + 804);
      *(a4 + 804) = v28;
      sub_14BDFC(a4);
      v30 = sub_5544(18);
      v31 = sub_5544(29);
      v32 = 0;
      *outData = 0x100000002;
      v33 = *(v30 + 8);
      while (1)
      {
        v34 = *&outData[v32];
        if (((v33 & v34) != 0) != ((*(v31 + 8) & v34) != 0))
        {
          break;
        }

        v32 += 4;
        if (v32 == 8)
        {
          goto LABEL_70;
        }
      }

      if ((v33 & v34) == 0)
      {
        v30 = v31;
      }

LABEL_70:
      v42 = sub_5544(25);
      v43 = 0;
      *outData = 0x100000002;
      v44 = *(v30 + 8);
      while (1)
      {
        v45 = *&outData[v43];
        if (((v44 & v45) != 0) != ((*(v42 + 8) & v45) != 0))
        {
          break;
        }

        v43 += 4;
        if (v43 == 8)
        {
          goto LABEL_76;
        }
      }

      if ((v44 & v45) == 0)
      {
        v30 = v42;
      }

LABEL_76:
      v46 = sub_468EC(3, *v30, *(v30 + 8));
      v40 = v46;
      if (!v46)
      {
        goto LABEL_93;
      }

      v40 = v46;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_92;
      }

      v47 = ioDataSize;
      sub_22170(ioDataSize, v29);
      if (v68 < 0)
      {
        v47 = *ioDataSize;
      }

      sub_22170(v65, *(a4 + 804));
      v48 = v66;
      v49 = v65[0];
      (*(*v15 + 128))(__p, v15);
      v50 = v65;
      if (v48 < 0)
      {
        v50 = v49;
      }

      if (v64 >= 0)
      {
        v51 = __p;
      }

      else
      {
        v51 = __p[0];
      }

      v52 = "N";
      if (*(a4 + 796) == 1 && *(a4 + 797))
      {
        v52 = "Y";
      }

      *outData = 136316418;
      *&outData[4] = "DSPChain.mm";
      *&outData[12] = 1024;
      *&outData[14] = 3041;
      v78 = 2080;
      *v79 = v47;
      *&v79[8] = 2080;
      *&v79[10] = v50;
      *&v79[18] = 2080;
      v80 = v51;
      v81 = 2080;
      v82 = v52;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: Device category changed from '%s' to '%s' for bluetooth audio device with UID %s, report SPL: %s", outData, 0x3Au);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      if (v66 < 0)
      {
        operator delete(v65[0]);
      }
    }

    if (v68 < 0)
    {
      operator delete(*ioDataSize);
    }

    goto LABEL_92;
  }

  return 560232035;
}

void sub_2C8A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    sub_1A8C0(v20);
    sub_1A8C0(v20);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2C8B48(uint64_t a1)
{
  v2 = *a1;
  strcpy(v11, "newsbolg");
  BYTE1(v11[2]) = 0;
  HIWORD(v11[2]) = 0;
  v3 = sub_59410(v2, v11, 0, 0);
  *(&v5 + 1) = v4;
  *&v5 = v3;
  v6 = ((v5 >> 32) >> 32) & (HIDWORD(v3) != 0);
  if (v6 == 1)
  {
    v7 = *sub_5544(25);
    v8 = v7;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 16);
      v11[0] = 136315650;
      *&v11[1] = "DSPChain.mm";
      v12 = 1024;
      v13 = 2965;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : NOT setting device initiated volume change on AUSPL, device in Software Volume Mode, device: %u", v11, 0x18u);
    }
  }

  return v6;
}

uint64_t sub_2C8C70(uint64_t a1)
{
  v1 = *(*a1 + 796);
  if ((v1 & 1) == 0)
  {
    v3 = *sub_5544(25);
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);
      v8 = 136315906;
      v9 = "DSPChain.mm";
      v10 = 1024;
      v11 = 2976;
      v12 = 1024;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : DevicePropertyChangeHandler called on dspchain that does not have AUSPL? deviceID: %u client: %p", &v8, 0x22u);
    }
  }

  return v1;
}

uint64_t sub_2C8D70(void *a1, int a2, float a3)
{
  v6 = *sub_5544(25);
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v22 = "DSPChain.mm";
    v23 = 1024;
    v24 = 642;
    v25 = 2048;
    v26 = a3;
    v27 = 1024;
    v28 = a2;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : setting device initiated volume change on AUSPL: %.2fdB device: %u", buf, 0x22u);
  }

  v8 = (*(*a1 + 72))(a1, 1936747629, 0, 0, a3);
  if (v8)
  {
    v9 = *sub_5544(25);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, v8);
        v12 = v20 >= 0 ? __p : __p[0];
        *buf = 136315906;
        v22 = "DSPChain.mm";
        v23 = 1024;
        v24 = 645;
        v25 = 2080;
        v26 = *&v12;
        v27 = 1024;
        v28 = a2;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Failed to set volume change on AUSPL: %s, device: %u", buf, 0x22u);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  result = sub_C2C1C();
  v14 = *(result + 8);
  if (v14)
  {
    result = sub_DDE9C(a1 + 126, 0);
    if (result)
    {
      LODWORD(__p[0]) = 0;
      (*(*a1 + 64))(a1, 1685287015, 1936749423, __p, 0);
      *__p = *__p + 13.0;
      v18 = 0.0;
      (*(*a1 + 64))(a1, 1685287015, 1819176045, &v18, 0);
      v15 = (v14 - *__p) - v18;
      v16 = *sub_5544(21);
      v17 = v16;
      if (v16)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v22 = "DSPChain.mm";
          v23 = 1024;
          v24 = 659;
          v25 = 2048;
          v26 = v15;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [VolumeLimit] Setting loudness target to : %f dB", buf, 0x1Cu);
        }
      }

      return (*(*a1 + 72))(a1, 1685287015, 1818977907, 0, v15);
    }
  }

  return result;
}

uint64_t sub_2C9130(uint64_t *a1, int *a2)
{
  v3 = 560227702;
  v4 = a1[1];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *a1;
      if (v8)
      {
        v12 = 0x676C6F6275736476;
        v13 = 0;
        if ((*(*v8 + 16))(v8, &v12))
        {
          v11 = 1701868910;
          v10 = 4;
          (*(*v8 + 40))(v8, &v12, 0, 0, &v10, &v11);
          v3 = 0;
          *a2 = v11;
        }

        else
        {
          v3 = 561017456;
        }
      }

      sub_1A8C0(v7);
    }
  }

  return v3;
}

uint64_t sub_2C9254(uint64_t a1, char *a2, const void **a3)
{
  sub_88CE8(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t sub_2C9298(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

float sub_2C92FC(CFArrayRef *a1, CFArrayRef *a2, float a3)
{
  v6 = *sub_5544(25);
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 4.8152e-34;
    v23 = "DSPChain.mm";
    v24 = 1024;
    v25 = 3406;
    v26 = 2048;
    v27 = a3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: interpolating output volume %.2f", buf, 0x1Cu);
  }

  v21 = 0.0;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
  }

  else
  {
    Count = 0;
  }

  v9 = -1.0;
  if (*a1)
  {
    v10 = CFArrayGetCount(*a1);
    if (Count >= 2)
    {
      v11 = v10;
      if (v10 >= 2)
      {
        v12 = 0;
        while (1)
        {
          *buf = 0.0;
          sub_2E45AC(a2, v12, buf);
          if (*buf > a3)
          {
            break;
          }

          if (Count == ++v12)
          {
            v12 = Count;
            break;
          }
        }

        v13 = *sub_5544(25);
        v14 = v13;
        if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 4.8152e-34;
          v23 = "DSPChain.mm";
          v24 = 1024;
          v25 = 3427;
          v26 = 1024;
          LODWORD(v27) = v12;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: target index: %u", buf, 0x18u);
        }

        if (v12 >= Count)
        {
          v15 = v11 - 1;
          v16 = a1;
        }

        else
        {
          if (v12)
          {
            *buf = -1.0;
            v19 = -1.0;
            v20 = -1.0;
            v18 = -1.0;
            sub_2E45AC(a2, v12, buf);
            sub_2E45AC(a2, v12 - 1, &v20);
            sub_2E45AC(a1, v12, &v19);
            sub_2E45AC(a1, v12 - 1, &v18);
            return v19 + ((v18 - v19) * ((a3 - *buf) / (v20 - *buf)));
          }

          v16 = a1;
          v15 = 0;
        }

        sub_2E45AC(v16, v15, &v21);
        return v21;
      }
    }
  }

  return v9;
}

void sub_2C9598(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = dlerror();
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
LABEL_5:
    off_6EB710 = dlsym(v1, "AudioDataAnalysisManagerCreate");
    off_6EB718 = dlsym(v1, "AudioDataAnalysisManagerDispose");
    qword_6EB720 = dlsym(v1, "AudioDataAnalysisManagerReset");
    off_6EB728 = dlsym(v1, "AudioDataAnalysisManagerUpdateReportingSessions");
    qword_6EB730 = dlsym(v1, "AudioDataAnalysisManagerCreateNodePCM");
    off_6EB738 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeSPL");
    qword_6EB740 = dlsym(v1, "AudioDataAnalysisManagerRemoveNode");
    off_6EB748 = dlsym(v1, "AudioDataAnalysisManagerInitialize");
    qword_6EB750 = dlsym(v1, "AudioDataAnalysisManagerIsSessionInitialized");
    qword_6EB758 = dlsym(v1, "AudioDataAnalysisManagerProcessAudio");
    off_6EB760 = dlsym(v1, "AudioDataAnalysisManagerProcessSPL");
    qword_6EB768 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    qword_6EB770 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    off_6EB778 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeMicLevel");
    qword_6EB780 = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSPL");
    qword_6EB788 = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSoundClass");
    off_6EB790 = dlsym(v1, "AudioDataAnalysisManagerProcessMicLevel");
    off_6EB798 = dlsym(v1, "AudioDataAnalysisManagerSetDeviceInfo");
    off_6EB7A0 = dlsym(v1, "AudioDataAnalysisManagerRegisterDeviceInfo");
    off_6EB7A8 = dlsym(v1, "AudioDataAnalysisManagerSetDeviceConnectionState");
    off_6EB7B0 = dlsym(v1, "AudioDataAnalysisManagerStartServices");
    off_6EB7B8 = dlsym(v1, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    qword_6EB7C0 = dlsym(v1, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = dlerror();
    v3 = 136315138;
    v4 = v2;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }
}

uint64_t sub_2C98F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2C9920(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C995C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_2C9998(uint64_t **a1, void ***a2, uint64_t a3, uint64_t a4)
{
  result = sub_6F86C(a1, &v5, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}