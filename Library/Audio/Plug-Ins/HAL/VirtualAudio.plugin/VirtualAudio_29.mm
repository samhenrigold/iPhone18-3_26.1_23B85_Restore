void sub_255F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  sub_65310(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_1A8C0(a20);
  }

  _Unwind_Resume(a1);
}

std::string *sub_2560B8(std::string *a1, uint64_t a2, uint64_t a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_11AB44(__p, a2 + 16);
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

void sub_256194(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2561B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2561A0);
}

void sub_2561D0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_256268(&v4, *(a1 + 40), a1 + 32);
  v3 = std::string::insert(&v4, 0, "Port disconnection(s): ", 0x17uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25624C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_256268(std::string *a1, uint64_t a2, uint64_t a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_11AB44(__p, a2 + 16);
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

void sub_256344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_256368(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x256350);
}

void sub_256380(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(a1 + 32, *(a1 + 24));

  sub_21991C(a2, 1920099684);
}

void sub_2563C8(uint64_t a1)
{
  sub_65310((a1 + 32));

  operator delete();
}

std::string *sub_256440@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_53E8(a2, "Port update(s): { ");
  v4 = *(a1 + 16);
  if (v4 != (a1 + 24))
  {
    while (1)
    {
      sub_22170(&__p, *(v4 + 8));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(a2, ": ", 2uLL);
      sub_256268(&__p, v4[6], (v4 + 5));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &__p;
      }

      else
      {
        v7 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v7, v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      if (v10 == (a1 + 24))
      {
        break;
      }

      std::string::append(a2, ", ", 2uLL);
      v4 = v10;
    }
  }

  return std::string::append(a2, " }", 2uLL);
}

void sub_2565A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2565E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_20301C(a2, 1);
  v4 = sub_8703C();
  (*(*v4 + 344))(buf);
  v5 = *buf;
  if (*buf)
  {
    v12[0] = v12;
    v12[1] = v12;
    v12[2] = 0;
    sub_1CA268(&v13, *buf, v12);
    sub_17ECC4(buf, v5, (a1 + 16), &v13, 0);
    sub_256828(a2, buf);
    if (v18 == 1)
    {
      sub_175F78(v17);
    }

    sub_4B0F4(v13.__r_.__value_.__l.__size_);
    sub_65310(v12);
  }

  else
  {
    v6 = sub_5544(9);
    v7 = sub_5544(16);
    v8 = 0;
    *buf = 0x100000002;
    v9 = *(v6 + 8);
    while (1)
    {
      v10 = *&buf[v8];
      if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
      {
        break;
      }

      v8 += 4;
      if (v8 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v9 & v10) == 0)
    {
      v6 = v7;
    }

LABEL_12:
    v11 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "PortManager.cpp";
      v15 = 1024;
      v16 = 108;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute command", buf, 0x12u);
    }
  }
}

void sub_2567C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
    sub_175F78(&a18);
  }

  sub_4B0F4(a13);
  sub_65310(&a9);
  if (*(v22 + 56) == 1)
  {
    sub_175F78((v22 + 24));
  }

  _Unwind_Resume(a1);
}

void *sub_256828(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a2 != a1)
  {
    v3 = a2;
    *a1 = *a2;
    LODWORD(v4) = *(a2 + 56);
    if (v4 == 1)
    {
      v57 = *(a2 + 8);
      sub_175EEC(&v58, a2 + 24);
      LOWORD(v4) = *(v3 + 48);
      v61 = v4;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      LOBYTE(v57) = 0;
    }

    v62 = v5;
    v6 = (v2 + 1);
    if (*(v2 + 56) == v5)
    {
      if (&v57 != v6 && *(v2 + 56))
      {
        v54 = v3;
        *v6 = v57;
        v7 = v2 + 3;
        v8 = v59;
        v9 = v2[4];
        if (v59 != &v58 && v9 != v7)
        {
          v56 = v2 + 3;
          v55 = v2;
          do
          {
            v10 = *(v8 + 1);
            *(v9 + 32) = v8[4];
            *(v9 + 16) = v10;
            v12 = v8[5];
            v11 = v8[6];
            if (v11)
            {
              atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
            }

            v13 = *(v9 + 48);
            *(v9 + 40) = v12;
            *(v9 + 48) = v11;
            if (v13)
            {
              std::__shared_weak_count::__release_weak(v13);
            }

            v14 = *(v8 + 7);
            *(v9 + 72) = *(v8 + 9);
            *(v9 + 56) = v14;
            if (v9 != v8)
            {
              v15 = v8[11];
              v16 = v8 + 12;
              if (*(v9 + 104))
              {
                v18 = (v9 + 96);
                v17 = *(v9 + 96);
                v19 = *(v9 + 88);
                *(v9 + 88) = v9 + 96;
                *(v17 + 16) = 0;
                *(v9 + 96) = 0;
                *(v9 + 104) = 0;
                if (*(v19 + 8))
                {
                  v20 = *(v19 + 8);
                }

                else
                {
                  v20 = v19;
                }

                if (v20)
                {
                  v21 = sub_1658B4(v20);
                  if (v15 == v16)
                  {
                    v23 = v20;
                  }

                  else
                  {
                    v22 = v15;
                    do
                    {
                      v23 = v21;
                      v24 = *(v22 + 8);
                      *(v20 + 32) = v24;
                      *(v20 + 40) = v22[5];
                      v25 = *v18;
                      v26 = (v9 + 96);
                      v27 = (v9 + 96);
                      if (*v18)
                      {
                        do
                        {
                          while (1)
                          {
                            v26 = v25;
                            if (v24 >= *(v25 + 8))
                            {
                              break;
                            }

                            v25 = *v25;
                            v27 = v26;
                            if (!*v26)
                            {
                              goto LABEL_29;
                            }
                          }

                          v25 = v25[1];
                        }

                        while (v25);
                        v27 = v26 + 1;
                      }

LABEL_29:
                      sub_46B44((v9 + 88), v26, v27, v20);
                      if (v21)
                      {
                        v21 = sub_1658B4(v21);
                      }

                      else
                      {
                        v21 = 0;
                      }

                      v28 = v22[1];
                      if (v28)
                      {
                        do
                        {
                          v15 = v28;
                          v28 = *v28;
                        }

                        while (v28);
                      }

                      else
                      {
                        do
                        {
                          v15 = v22[2];
                          v29 = *v15 == v22;
                          v22 = v15;
                        }

                        while (!v29);
                      }

                      if (!v23)
                      {
                        break;
                      }

                      v20 = v23;
                      v22 = v15;
                    }

                    while (v15 != v16);
                  }

                  sub_477A0(v23);
                  if (v21)
                  {
                    for (i = v21[2]; i; i = i[2])
                    {
                      v21 = i;
                    }

                    sub_477A0(v21);
                    v2 = v55;
                  }

                  else
                  {
                    v2 = v55;
                  }
                }

                else
                {
                  sub_477A0(0);
                }
              }

              if (v15 != v16)
              {
                operator new();
              }

              v31 = *(v9 + 112);
              v32 = v8[14];
              v33 = v8[15];
              v34 = v33 - v32;
              v35 = *(v9 + 128);
              if (v35 - v31 < (v33 - v32))
              {
                if (v31)
                {
                  *(v9 + 120) = v31;
                  operator delete(v31);
                  v35 = 0;
                  *(v9 + 112) = 0;
                  *(v9 + 120) = 0;
                  *(v9 + 128) = 0;
                }

                v36 = v34 >> 4;
                if (!((v34 >> 4) >> 60))
                {
                  if (v35 >> 3 > v36)
                  {
                    v36 = v35 >> 3;
                  }

                  if (v35 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v37 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v37 = v36;
                  }

                  sub_203290((v9 + 112), v37);
                }

                sub_189A00();
              }

              v38 = *(v9 + 120);
              v7 = v56;
              if (v38 - v31 >= v34)
              {
                while (v32 != v33)
                {
                  *v31 = *v32;
                  *(v31 + 1) = *(v32 + 8);
                  v32 += 16;
                  v31 += 16;
                }

                *(v9 + 120) = v31;
              }

              else
              {
                if (v38 != v31)
                {
                  v39 = v32 + v38 - v31;
                  do
                  {
                    *v31 = *v32;
                    *(v31 + 1) = *(v32 + 8);
                    v32 += 16;
                    v31 += 16;
                  }

                  while (v32 != v39);
                  v32 = v39;
                }

                while (v32 != v33)
                {
                  *v38 = *v32;
                  *(v38 + 1) = *(v32 + 8);
                  v32 += 16;
                  v38 += 16;
                }

                *(v9 + 120) = v38;
              }
            }

            v40 = *(v8 + 34);
            *(v9 + 140) = *(v8 + 140);
            *(v9 + 136) = v40;
            v42 = v8[18];
            v41 = v8[19];
            if (v41)
            {
              atomic_fetch_add_explicit((v41 + 16), 1uLL, memory_order_relaxed);
            }

            v43 = *(v9 + 152);
            *(v9 + 144) = v42;
            *(v9 + 152) = v41;
            if (v43)
            {
              std::__shared_weak_count::__release_weak(v43);
            }

            if (v9 != v8)
            {
              sub_136004((v9 + 160), v8[21], v8 + 20);
            }

            v8 = v8[1];
            v9 = *(v9 + 8);
          }

          while (v8 != &v58 && v9 != v7);
        }

        if (v9 == v7)
        {
          if (v8 != &v58)
          {
            sub_203118(0, (v8 + 2));
          }
        }

        else
        {
          v44 = *(v2[3] + 8);
          v45 = *v9;
          *(v45 + 8) = v44;
          *v44 = v45;
          do
          {
            v46 = *(v9 + 8);
            --v2[5];
            sub_256ECC(v9);
            v9 = v46;
          }

          while (v46 != v7);
        }

        *(v2 + 24) = v61;
        v3 = v54;
      }
    }

    else if (*(v2 + 56))
    {
      sub_175F78(v2 + 3);
      *(v2 + 56) = 0;
    }

    else
    {
      *v6 = v57;
      v2[3] = v2 + 3;
      v2[4] = v2 + 3;
      v2[5] = 0;
      v47 = v60;
      if (v60)
      {
        v48 = v58;
        v4 = v59;
        v49 = *(v58 + 8);
        v50 = *v59;
        *(v50 + 8) = v49;
        *v49 = v50;
        v51 = v2[3];
        *(v51 + 8) = v4;
        *v4 = v51;
        v2[3] = v48;
        *(v48 + 8) = v2 + 3;
        v2[5] = v47;
        v60 = 0;
        LOWORD(v4) = v61;
      }

      *(v2 + 24) = v4;
      *(v2 + 56) = 1;
    }

    if (v62 == 1)
    {
      sub_175F78(&v58);
    }

    v52 = *(v3 + 64);
    *(v2 + 72) = *(v3 + 72);
    v2[8] = v52;
  }

  return v2;
}

void sub_256E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  __cxa_end_catch();
  if (a19 == 1)
  {
    sub_175F78(a11);
  }

  _Unwind_Resume(a1);
}

void sub_256ECC(uint64_t a1)
{
  sub_65310((a1 + 160));
  v2 = *(a1 + 152);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  sub_477A0(*(a1 + 96));
  v4 = *(a1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_256F38(uint64_t a1)
{
  sub_D169C(*(a1 + 24));

  operator delete();
}

void sub_256FB0(uint64_t *a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  sub_26C0(a2);
  v9 = *a3;
  v8 = a3[1];
  if (v8 - *a3 == 4)
  {
    v20 = *v9;
    *buf = &v20;
    v10 = sub_DB6B0((a2 + 352), v20, buf) + 3;
    v9 = *a3;
    v8 = a3[1];
  }

  else
  {
    v10 = (a2 + 288);
  }

  if (v8 - v9 == 4)
  {
    v11 = sub_DB3D4(a3);
  }

  else
  {
    v11 = sub_462D0(a3);
  }

  v12 = v11;
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  for (i = v10[1]; i != v10; i = i[1])
  {
    v14 = i[2];
    if (!v14)
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "PortManager.cpp";
        v22 = 1024;
        v23 = 692;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if (v12 || sub_46398(i[2], a3))
    {
      v15 = *(a4 + 24);
      if (!v15)
      {
        sub_46A74();
      }

      if ((*(*v15 + 48))(v15, v14))
      {
        v16 = *(v14 + 88);
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
        }

        operator new();
      }
    }
  }

  sub_3174(a2);
}

void sub_25721C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2185D4(va);
  _Unwind_Resume(a1);
}

void sub_257280(void *result, uint64_t *a2, void *a3, void *a4)
{
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_25739C(void *a1)
{
  __cxa_begin_catch(a1);
  while (1)
  {
    v2 = *v1;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    v1 = v2;
    if (!v2)
    {
      __cxa_rethrow();
    }
  }
}

void sub_25746C(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void sub_2574C4(uint64_t *a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  sub_26C0(a2);
  v9 = *a3;
  v8 = a3[1];
  if (v8 - *a3 == 4)
  {
    v22 = *v9;
    *buf = &v22;
    v10 = sub_DB6B0((a2 + 352), v22, buf) + 3;
    v9 = *a3;
    v8 = a3[1];
  }

  else
  {
    v10 = (a2 + 288);
  }

  if (v8 - v9 == 4)
  {
    v11 = sub_DB3D4(a3);
  }

  else
  {
    v11 = sub_462D0(a3);
  }

  v12 = v11;
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  for (i = v10[1]; i != v10; i = i[1])
  {
    v14 = i[2];
    if (!v14)
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "PortManager.cpp";
        v24 = 1024;
        v25 = 692;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if (v12 || sub_46398(i[2], a3))
    {
      v15 = *(a4 + 24);
      if (!v15)
      {
        sub_46A74();
      }

      if ((*(*v15 + 48))(v15, v14))
      {
        v16 = *(v14 + 88);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v17 = std::__shared_weak_count::lock(v16);
          v18 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_weak(v16);
            sub_1A8C0(v18);
          }

          else
          {
            std::__shared_weak_count::__release_weak(v16);
          }
        }

        operator new();
      }
    }
  }

  sub_3174(a2);
}

void sub_257778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2185D4(va);
  _Unwind_Resume(a1);
}

BOOL sub_2577DC(uint64_t a1)
{
  if (a1 <= 1919904884)
  {
    if (a1 == 1919184754)
    {
      return 0;
    }

    if (a1 == 1919842148)
    {
      return 1;
    }
  }

  else if (a1 == 1919904885 || a1 == 1920168053 || a1 == 1919971701)
  {
    return 0;
  }

  v3 = sub_5544(14);
  v4 = *v3;
  if (*v3)
  {
    result = os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_22170(__p, a1);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315650;
    v9 = "PortManager.cpp";
    v10 = 1024;
    v11 = 75;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unhandled route change reason: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_257950(uint64_t a1)
{
  sub_65310((a1 + 72));
  sub_65310((a1 + 48));
  sub_D169C(*(a1 + 32));
  return a1;
}

uint64_t sub_25799C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6BBCB0;
  a2[1] = v2;
  return result;
}

uint64_t sub_257A38(uint64_t a1)
{
  sub_24EA34(a1);
  *(a1 + 584) = 1;
  return 1;
}

void sub_257A68(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

void sub_257ACC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BBCF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_257B40(void *a1)
{
  sub_257B7C((a1 + 8));
  sub_DDE50((a1 + 3));
  sub_4E0BC(a1);
  return a1;
}

uint64_t sub_257B7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_4E0BC(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_257BDC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_477A0(*(a1 + 56));
  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_257C34(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    if (*(a2 + 135) < 0)
    {
      operator delete(*(a2 + 112));
    }

    sub_477A0(*(a2 + 88));
    v4 = *(a2 + 32);
    if (v4)
    {
      *(a2 + 40) = v4;
      operator delete(v4);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

std::logic_error *sub_257CB4(std::logic_error *a1, const char *a2, ...)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_257CE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_25704(&v8, a2, "", 569);
  if ((*(v8 + 184) & 2) != 0)
  {
    v6 = 1717793397;
  }

  else
  {
    v6 = 1852011125;
  }

  sub_257DAC(a1, v6, *a2, a2[1], 0, a3);
  v7 = v9;
  if (v9)
  {

    sub_1A8C0(v7);
  }
}

void sub_257D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_257DAC(uint64_t a1, unsigned int a2, uint64_t a3, std::__shared_weak_count *a4, int a5, uint64_t a6)
{
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v24 = a3;
  v25 = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_22ED54(&v16, &v24, 1);
  v19 = a2;
  v20[0] = v20;
  v20[1] = v20;
  v21 = 0;
  v10 = v18;
  if (v18)
  {
    v12 = v16;
    v11 = v17;
    v13 = *(v16 + 8);
    v14 = *v17;
    *(v14 + 8) = v13;
    *v13 = v14;
    v15 = v20[0];
    *(v20[0] + 8) = v11;
    *v11 = v15;
    *(v12 + 8) = v20;
    v20[0] = v12;
    v21 = v10;
    v18 = 0;
    a2 = v19;
  }

  sub_1165C0(&v22, a2, &v19);
  sub_65310(v20);
  sub_65310(&v16);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  sub_11ABFC(a1, &v22, a5, a6);
  sub_D169C(v23[0]);
}

uint64_t ***sub_257F28(uint64_t ***a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_2585A8(a1, v4, (v6 + 16), (v6 + 16));
      v6 = *(v6 + 8);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t *sub_257FA8(uint64_t *a1, unsigned int a2)
{
  if (!a1)
  {
LABEL_7:
    sub_DE7DC("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 8);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

double sub_257FF4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  v16 = a2;
  *&v14 = a6;
  *(&v14 + 1) = a7;
  for (i = 0; v15 != a5; a4 = v15)
  {
    v10 = v16;
    v16 = sub_258248(v16, a3, a4 + 4);
    sub_25846C((v16 == v10), &v16, &v15, &v14, &i);
    if (v16 == a3)
    {
      break;
    }

    v11 = v15;
    v15 = sub_258248(v15, a5, v16 + 4);
    sub_25846C((v15 == v11), &v16, &v15, &v14, &i);
  }

  *a1 = a3;
  *(a1 + 8) = a5;
  result = *&v14;
  *(a1 + 16) = v14;
  return result;
}

uint64_t sub_2580CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    sub_85034(a1, (a1 + 8), (a2 + 16));
  }

  return a1;
}

double sub_258148(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v12 = a4;
  *(&v12 + 1) = a5;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_2581DC(&v12, v7 + 4);
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != a3);
  }

  *a1 = a3;
  result = *&v12;
  *(a1 + 8) = v12;
  return result;
}

uint64_t sub_2581DC(uint64_t a1, unint64_t *a2)
{
  v3 = sub_8470C(*a1, *(a1 + 8), a2, a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

void *sub_258248(void *a1, void *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a2;
  }

  v4 = a1;
  if (sub_16B7FC(a1 + 4, a3))
  {
    v6 = 1;
LABEL_5:
    if (v6)
    {
      v7 = 0;
      v8 = v4;
      while (v8 != a2)
      {
        v9 = v8[1];
        v10 = v8;
        if (v9)
        {
          do
          {
            v8 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (!v11);
        }

        if (++v7 == v6)
        {
          v12 = v6;
          v7 = v6;
          goto LABEL_27;
        }
      }

      v12 = v6;
    }

    else
    {
      v12 = 0;
      v7 = 0;
      v8 = v4;
    }

LABEL_27:
    while (v8 != a2)
    {
      if (!sub_16B7FC(v8 + 4, a3))
      {
        goto LABEL_32;
      }

      v6 *= 2;
      v4 = v8;
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = 0;
      v12 = -v6;
      if (-v6 > 1)
      {
        v13 = -v6;
      }

      else
      {
        v13 = 1;
      }

      while (v8 != a2)
      {
        v14 = *v8;
        v15 = v8;
        if (*v8)
        {
          do
          {
            v8 = v14;
            v14 = v14[1];
          }

          while (v14);
        }

        else
        {
          do
          {
            v8 = v15[2];
            v11 = *v8 == v15;
            v15 = v8;
          }

          while (v11);
        }

        if (++v7 == v13)
        {
          v7 = v13;
          goto LABEL_27;
        }
      }
    }

    v8 = a2;
LABEL_32:
    v16 = v7 - v12 + v6;
    if (v16)
    {
      if (v16 == 1)
      {
        return v8;
      }

      else
      {
        do
        {
          v17 = v16 >> 1;
          v18 = v4;
          if (v16 >= 2)
          {
            v19 = v16 >> 1;
            v20 = v4;
            do
            {
              v21 = v20[1];
              if (v21)
              {
                do
                {
                  v18 = v21;
                  v21 = *v21;
                }

                while (v21);
              }

              else
              {
                do
                {
                  v18 = v20[2];
                  v11 = *v18 == v20;
                  v20 = v18;
                }

                while (!v11);
              }

              v20 = v18;
            }

            while (v19-- > 1);
          }

          if (sub_16B7FC(v18 + 4, a3))
          {
            v23 = v18[1];
            if (v23)
            {
              do
              {
                v4 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v4 = v18[2];
                v11 = *v4 == v18;
                v18 = v4;
              }

              while (!v11);
            }

            v17 = v16 + ~v17;
          }

          v16 = v17;
        }

        while (v17);
      }
    }
  }

  return v4;
}

uint64_t ****sub_25846C(uint64_t ****result, uint64_t a2, uint64_t a3, uint64_t ****a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_25853C(a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

uint64_t ****sub_25853C(uint64_t ****a1, unint64_t *a2)
{
  v3 = sub_2585A8(*a1, a1[1], a2, a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t **sub_2585A8(uint64_t ***a1, uint64_t ***a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  v7 = (a1 + 1);
  if (a1 + 1 == a2 || sub_16B7FC(a3, a2 + 4))
  {
    if (*a1 == v5)
    {
      v9 = v5;
LABEL_16:
      if (!*v5)
      {
        v18 = v5;
        goto LABEL_31;
      }

      v18 = v9;
      v11 = v9 + 1;
LABEL_30:
      v5 = *v11;
      if (!*v11)
      {
        goto LABEL_31;
      }

      return v5;
    }

    v8 = *v5;
    if (*v5)
    {
      do
      {
        v9 = v8;
        v8 = *(v8 + 8);
      }

      while (v8);
    }

    else
    {
      v14 = v5;
      do
      {
        v9 = v14[2];
        v15 = *v9 == v14;
        v14 = v9;
      }

      while (v15);
    }

    if (sub_16B7FC(v9 + 4, a3))
    {
      goto LABEL_16;
    }

LABEL_29:
    v11 = sub_86818(a1, &v18, a3);
    goto LABEL_30;
  }

  if (sub_16B7FC(v5 + 4, a3))
  {
    v11 = (v5 + 1);
    v10 = v5[1];
    if (v10)
    {
      v12 = v5[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v16 = v5;
      do
      {
        v13 = v16[2];
        v15 = *v13 == v16;
        v16 = v13;
      }

      while (!v15);
    }

    if (v13 != v7)
    {
      if (!sub_16B7FC(a3, v13 + 4))
      {
        goto LABEL_29;
      }

      v10 = *v11;
    }

    if (v10)
    {
      v18 = v13;
      v11 = v13;
    }

    else
    {
      v18 = v5;
    }

    goto LABEL_30;
  }

  v18 = v5;
  if (!v5)
  {
LABEL_31:
    operator new();
  }

  return v5;
}

void sub_258778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = sub_2577DC(a3);
    sub_1150D4(a1, a2, v6, 0);
  }

  sub_116190(v7, a1, a2);
  if (v7[2])
  {
    sub_11ABFC(a1, v7, 0, a3 | 0x100000000);
  }

  sub_D169C(v7[1]);
}

void sub_258830(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a2 + 8;
  v4 = *a1 + 16;
  for (i = *(*a1 + 24); i != v4; i = i[1])
  {
    sub_25704(&v14, i + 2, "", 748);
    v6 = *(v14 + 144);
    if (v15)
    {
      sub_1A8C0(v15);
    }

    sub_25704(&v14, i + 4, "", 749);
    v7 = *(v14 + 144);
    if (v15)
    {
      sub_1A8C0(v15);
    }

    v8 = v2 & 0xFFFFFF00;
    if (v7 == 1885888867)
    {
      v9 = 3;
    }

    else
    {
      v9 = 6;
    }

    if (v6 != 1885629550)
    {
      v9 = v2 & 0xFFFFFF00;
    }

    v10 = v6 == 1885629550;
    if (v6 == 1886613618)
    {
      v9 = 4;
      v10 = 1;
    }

    if (v6 == 1885433888)
    {
      v8 = 7;
    }

    v11 = v6 == 1885433888;
    if (v6 == 1885433443)
    {
      v8 = 2;
      v11 = 1;
    }

    if (v6 <= 1885629549)
    {
      v2 = v8;
    }

    else
    {
      v2 = v9;
    }

    if (v6 <= 1885629549)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = sub_108CA8(v6);
    if (v7 == 1886743662)
    {
      v2 = 5;
    }

    else
    {
      if (v13)
      {
        v2 = 9;
      }

      if (!v12 && !v13)
      {
        continue;
      }
    }

    sub_14BB28(a2, v2, (i + 2));
  }
}

void sub_2589F0(void *a1, uint64_t a2, __n128 **a3, os_unfair_lock_s *a4, uint64_t a5, unsigned int **a6)
{
  if (!(*(*&a4->_os_unfair_lock_opaque + 328))(a4))
  {
    v12 = (*(*&a4->_os_unfair_lock_opaque + 88))(a4, 0);
    if ((v12 + (((*(*&a4->_os_unfair_lock_opaque + 312))(a4) >> 1) >> 31)) >= 2)
    {
      if ((*(*&a4->_os_unfair_lock_opaque + 88))(a4, 0) > 1)
      {
        sub_25704(&v21, ((*a3)[1].n128_u64[1] + 16), "", 313);
        v13 = v21;
        *buf = *(v21 + 144);
        sub_4BA00(v20, buf, 1);
        v14 = *&a4[20]._os_unfair_lock_opaque;
        v15 = *&a4[22]._os_unfair_lock_opaque;
        v22[0] = v14;
        v22[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_3172E4(buf, v22, v13);
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

        sub_102CA8(v22, buf);
        memset(v19, 0, sizeof(v19));
        sub_F91E4(v19, v22, buf, 1uLL);
      }

      v16 = sub_5544(14);
      v17 = *v16;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "RoutingHandler.cpp";
        v25 = 1024;
        v26 = 310;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }
  }

  sub_258E8C(a1, a2, a3, a4, a5, a6);
}

void sub_258E8C(void *a1, uint64_t a2, __n128 **a3, os_unfair_lock_s *a4, uint64_t a5, unsigned int **a6)
{
  sub_300E78(v68, a3);
  if (v69 != 1)
  {
    sub_25704(&v71, ((*a3)[1].n128_u64[1] + 16), "", 414);
    v14 = v71.__r_.__value_.__r.__words[0];
    *buf = *(v71.__r_.__value_.__r.__words[0] + 144);
    sub_4BA00(v92, buf, 1);
    v15 = *&a4[22]._os_unfair_lock_opaque;
    __p[0] = *&a4[20]._os_unfair_lock_opaque;
    __p[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
    }

    sub_317060(buf, __p, v14, 0, a5);
  }

  sub_25704(buf, v68, "", 291);
  v11 = *(*buf + 200);
  if (v11)
  {
    v12 = *(*buf + 192);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (std::__shared_weak_count::lock(v11))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    std::__shared_weak_count::__release_weak(v11);
  }

  else
  {
    v13 = 0;
  }

  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v13 != a4)
  {
    v16 = sub_5544(20);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_23148(__p, a4 + 2);
      v18 = v78;
      v19 = __p[0];
      sub_23148(v92, v13 + 2);
      v20 = __p;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((v92[23] & 0x80u) == 0)
      {
        v21 = v92;
      }

      else
      {
        v21 = *v92;
      }

      *buf = 136315906;
      *&buf[4] = "RoutingHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 335;
      *&buf[18] = 2080;
      *&buf[20] = v20;
      *&buf[28] = 2080;
      *&buf[30] = v21;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Input Device: %s, Aux Input Device: %s", buf, 0x26u);
      if (v92[23] < 0)
      {
        operator delete(*v92);
      }

      if (v78 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((*(*&a4->_os_unfair_lock_opaque + 88))(a4, 0) < 3)
    {
      v22 = (*a3)[1].n128_u64[1];
      sub_300E78(v83, a3);
      if (v85)
      {
        sub_25704(&v82, (v22 + 16), "", 342);
        if (v85)
        {
          v23 = a4;
          sub_25704(v81, v83, "", 343);
          v24 = *(v81[0] + 144);
          v25 = v82;
          *buf = *(v82 + 144);
          *&buf[4] = v24;
          sub_4BA00(&v80, buf, 2);
          if (sub_108CA8(v24))
          {
            if (((*(*&v13->_os_unfair_lock_opaque + 312))(v13) & 0x100000000) != 0)
            {
              v26 = *(v23 + 88);
              *buf = *(v23 + 80);
              *&buf[8] = v26;
              if (v26)
              {
                atomic_fetch_add_explicit((v26 + 16), 1uLL, memory_order_relaxed);
              }

              sub_317060(__p, buf, v25, 0, a5);
            }

            v58 = sub_5544(14);
            v59 = *v58;
            if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "RoutingHandler.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 348;
              _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          else
          {
            v56 = sub_5544(14);
            v57 = *v56;
            if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "RoutingHandler.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 347;
              _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Precondition failure.");
        }

        sub_1EC054();
      }

      v53 = sub_5544(14);
      v54 = *v53;
      if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 341;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v55 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v55, "Precondition failure.");
    }

    v50 = sub_5544(14);
    v51 = *v50;
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 337;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v52 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v52, "Precondition failure.");
  }

  v27 = (*a3)[1].n128_u64[1];
  sub_300E78(__p, a3);
  if ((v79 & 1) == 0)
  {
    v61 = sub_5544(14);
    v62 = *v61;
    if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 385;
      _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v63 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v63, "Precondition failure.");
  }

  sub_25704(v81, (v27 + 16), "", 386);
  if ((v79 & 1) == 0)
  {
    sub_1EC054();
  }

  sub_25704(&v74, __p, "", 387);
  v28 = v74;
  v29 = *(v74 + 144);
  v30 = v81[0];
  *buf = *(v81[0] + 144);
  *&buf[4] = v29;
  sub_4BA00(v76, buf, 2);
  if (((*(*&a4->_os_unfair_lock_opaque + 312))(a4) & 0x100000000) == 0 || !sub_108CA8(v29))
  {
    v47 = sub_5544(14);
    v48 = *v47;
    if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v49 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v49, "Precondition failure.");
  }

  sub_25AFA4(v92, v30, v81[1], a5);
  *buf = 0;
  *&buf[8] = *v92;
  *&buf[16] = *&v92[8];
  if (*&v92[8])
  {
    atomic_fetch_add_explicit((*&v92[8] + 16), 1uLL, memory_order_relaxed);
  }

  *&buf[24] = *&v92[16];
  v87 = v93;
  *&v92[24] = 0;
  v93 = 0;
  *&v92[16] = 0;
  v31 = v75;
  v71.__r_.__value_.__r.__words[0] = v28;
  v71.__r_.__value_.__l.__size_ = v75;
  v67 = a6;
  v65 = v75;
  v66 = a2;
  v64 = a4;
  if (v75)
  {
    atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
    v71.__r_.__value_.__r.__words[2] = 0;
    v72 = 0;
    v73 = 0;
    v88 = 1;
    v89 = v28;
    v90 = v31;
    atomic_fetch_add_explicit((v31 + 16), 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v71.__r_.__value_.__r.__words[1] = 0uLL;
    v72 = 0;
    v73 = 0;
    v88 = 1;
    v89 = v28;
    v90 = 0;
  }

  v32 = 0;
  memset(v91, 0, sizeof(v91));
  v72 = 0;
  v73 = 0;
  v71.__r_.__value_.__r.__words[2] = 0;
  v84 = 1065353216;
  memset(v83, 0, sizeof(v83));
  while (1)
  {
    v33 = *&buf[v32];
    if (!v83[1])
    {
      goto LABEL_59;
    }

    v34 = vcnt_s8(v83[1]);
    v34.i16[0] = vaddlv_u8(v34);
    if (v34.u32[0] > 1uLL)
    {
      v35 = *&buf[v32];
      if (v83[1] <= v33)
      {
        v35 = v33 % LODWORD(v83[1]);
      }
    }

    else
    {
      v35 = (LODWORD(v83[1]) - 1) & v33;
    }

    v36 = *(v83[0] + 8 * v35);
    if (!v36 || (v37 = *v36) == 0)
    {
LABEL_59:
      operator new();
    }

    while (1)
    {
      v38 = v37[1];
      if (v38 == v33)
      {
        break;
      }

      if (v34.u32[0] > 1uLL)
      {
        if (v38 >= v83[1])
        {
          v38 %= v83[1];
        }
      }

      else
      {
        v38 &= v83[1] - 1;
      }

      if (v38 != v35)
      {
        goto LABEL_59;
      }

LABEL_58:
      v37 = *v37;
      if (!v37)
      {
        goto LABEL_59;
      }
    }

    if (*(v37 + 4) != v33)
    {
      goto LABEL_58;
    }

    v32 += 48;
    if (v32 == 96)
    {
      v39 = 0;
      while (1)
      {
        v40 = &buf[v39 * 8];
        v41 = v91[v39];
        if (v41)
        {
          *(v40 + 10) = v41;
          operator delete(v41);
        }

        v42 = *(v40 + 8);
        if (v42)
        {
          std::__shared_weak_count::__release_weak(v42);
        }

        v39 -= 6;
        if (v39 == -12)
        {
          if (v65)
          {
            sub_1A8C0(v65);
          }

          if (*&v92[16])
          {
            *&v92[24] = *&v92[16];
            operator delete(*&v92[16]);
          }

          if (*&v92[8])
          {
            sub_1A8C0(*&v92[8]);
          }

          v43 = *(v64 + 88);
          v71.__r_.__value_.__r.__words[0] = *(v64 + 80);
          v71.__r_.__value_.__l.__size_ = v43;
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          memset(v92, 0, sizeof(v92));
          LODWORD(v93) = 1065353216;
          sub_F8204(buf, &v71, v83, v92);
          sub_167DD4(v92);
          if (v43)
          {
            std::__shared_weak_count::__release_weak(v43);
          }

          v44 = sub_5544(20);
          v45 = *v44;
          if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
          {
            sub_F89AC(&v71, buf);
            v46 = (v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v71 : v71.__r_.__value_.__r.__words[0];
            *v92 = 136315650;
            *&v92[4] = "RoutingHandler.cpp";
            *&v92[12] = 1024;
            *&v92[14] = 400;
            *&v92[18] = 2080;
            *&v92[20] = v46;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device description for creating aggregate with auxiliary input: %s", v92, 0x1Cu);
            if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v71.__r_.__value_.__l.__data_);
            }
          }

          sub_103670(&v70, *(v66 + 8), a3, v67);
          operator new();
        }
      }
    }
  }
}

void sub_25A88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    sub_1A8C0(a65);
  }

  operator delete();
}

uint64_t sub_25AE44(uint64_t a1)
{
  sub_C31F4(*(a1 + 96));
  sub_C31F4(*(a1 + 72));
  v4 = (a1 + 40);
  sub_1084A8(&v4);
  v4 = (a1 + 16);
  sub_1084A8(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_25AEAC(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_25AF08(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_25AFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_46980(a1 + 2, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  return a1;
}

void sub_25AFF8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_25B010(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_25B050(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return a1;
}

uint64_t *sub_25B090(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a3)
  {
    sub_119E04(a2);
  }

  return a1;
}

void sub_25B1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_1E6088(va);
  _Unwind_Resume(a1);
}

void sub_25B214(std::string *a1, void *a2)
{
  sub_261E2C(&v31, *a2, a2 + 1);
  v4 = std::string::insert(&v31, 0, " { Global : ", 0xCuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  sub_53E8(&v24, " [ ");
  v6 = a2[3];
  if (v6 != a2 + 4)
  {
    while (1)
    {
      sub_22170(&v29, *(v6 + 8));
      v7 = std::string::append(&v29, " : ", 3uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      sub_261E2C(&__p, v6[5], v6 + 6);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v11 = std::string::append(&v30, p_p, size);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v31;
      }

      else
      {
        v13 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v31.__r_.__value_.__l.__size_;
      }

      std::string::append(&v24, v13, v14);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      if (v16 == a2 + 4)
      {
        break;
      }

      std::string::append(&v24, "; ", 2uLL);
      v6 = v16;
    }
  }

  std::string::append(&v24, " ]", 2uLL);
  v18 = std::string::insert(&v24, 0, " VAD Specific Ports :", 0x15uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v25, " }", 2uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v27 = v20->__r_.__value_.__r.__words[2];
  *v26 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v22 = v26;
  }

  else
  {
    v22 = v26[0];
  }

  if (v27 >= 0)
  {
    v23 = HIBYTE(v27);
  }

  else
  {
    v23 = v26[1];
  }

  std::string::append(a1, v22, v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_25B4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v47 + 23) < 0)
  {
    operator delete(*v47);
  }

  _Unwind_Resume(exception_object);
}

void sub_25B5B8(void *a1, uint64_t a2, uint64_t *a3, unsigned int **a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9, unsigned int *a10, uint64_t a11, char a12, uint64_t *a13, unsigned int a14, const std::string *a15, char a16, uint64_t *a17)
{
  sub_20301C(a1, 1);
  v167[0] = 0;
  v167[1] = 0;
  v166 = v167;
  v164 = a3;
  v19 = *a3;
  v20 = a3[1];
  while (v19 != v20)
  {
    if ((*(v19 + 324) & 1) == 0)
    {
      v157 = sub_5544(14);
      v158 = *v157;
      if (*v157 && os_log_type_enabled(*v157, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1106;
        _os_log_impl(&dword_0, v158, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if ((*(v19 + 80) - 5) <= 0xFFFFFFFD)
    {
      sub_147938(&v166, **v19, (*v19)[1], *v19);
    }

    v19 += 41;
  }

  v22 = *a4;
  v21 = a4[1];
  while (v22 != v21)
  {
    sub_147938(&v166, *v22, v22[1], v22);
    v22 += 36;
  }

  v23 = sub_5544(8);
  if (*(v23 + 8))
  {
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
      {
        sub_238844(&__p, v166, v167);
        v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1119;
        v171 = 2080;
        v172 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resultant Device Contexts %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  (*(**(a2 + 16) + 16))(*(a2 + 16), v164, &v166);
  v26 = sub_8703C();
  v163 = a2;
  if ((*(*v26 + 264))(v26))
  {
    v27 = *v164;
    v28 = v164[1];
    while (1)
    {
      if (v27 == v28)
      {
        v33 = 0;
        goto LABEL_33;
      }

      v29 = *v27;
      v30 = *v27 + 16;
      v31 = *(*v27 + 24);
      if (v31 != v30)
      {
        break;
      }

LABEL_25:
      v32 = v29 + 16;
      while (v31 != v32)
      {
        if (sub_9C4E4(1885433971, (v31 + 16)))
        {
          goto LABEL_31;
        }

        v31 = *(v31 + 8);
      }

      v27 += 328;
    }

    while (!sub_9C4E4(1885433953, (v31 + 16)))
    {
      v31 = *(v31 + 8);
      if (v31 == v30)
      {
        v29 = *v27;
        v31 = *(*v27 + 24);
        goto LABEL_25;
      }
    }

LABEL_31:
    v33 = 1;
LABEL_33:
    if (sub_144444((a2 + 480), 1885433953))
    {
      v34 = 1;
    }

    else
    {
      v34 = sub_144444((a2 + 480), 1885433971);
    }

    v35 = *a5;
    if (*a5 == a5 + 1)
    {
LABEL_47:
      v40 = 1;
    }

    else
    {
      while (1)
      {
        v36 = *(v35 + 7);
        v37 = v36 == 1885433953 || v36 == 1885433971;
        if (v37)
        {
          break;
        }

        v38 = v35[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v35[2];
            v37 = *v39 == v35;
            v35 = v39;
          }

          while (!v37);
        }

        v35 = v39;
        if (v39 == a5 + 1)
        {
          goto LABEL_47;
        }
      }

      v40 = 0;
    }

    v162 = v33 & v40 | v34;
  }

  else
  {
    v162 = 0;
  }

  v42 = *v164;
  v41 = v164[1];
  if (*v164 != v41)
  {
    while (*(*v42 + 4) || **v42 != 1986291046)
    {
      v42 += 328;
      if (v42 == v41)
      {
        goto LABEL_54;
      }
    }
  }

  if (v41 == v42)
  {
LABEL_54:
    v43 = sub_5544(14);
    v44 = *v43;
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3407;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v45 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v45, "Precondition failure.");
  }

  if (v162)
  {
    v46 = sub_5544(8);
    v47 = sub_5544(35);
    v48 = 0;
    *buf = 0x100000002;
    v49 = *(v46 + 8);
    while (1)
    {
      v50 = *&buf[v48];
      if (((v49 & v50) != 0) != ((*(v47 + 8) & v50) != 0))
      {
        break;
      }

      v48 += 4;
      if (v48 == 8)
      {
        goto LABEL_70;
      }
    }

    if ((v49 & v50) == 0)
    {
      v46 = v47;
    }

LABEL_70:
    v56 = *v46;
    if (v56 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3412;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "%25s:%-5d >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>", buf, 0x12u);
    }

    v57 = sub_5544(8);
    v58 = sub_5544(35);
    v59 = 0;
    *buf = 0x100000002;
    v60 = *(v57 + 8);
    while (1)
    {
      v61 = *&buf[v59];
      if (((v60 & v61) != 0) != ((*(v58 + 8) & v61) != 0))
      {
        break;
      }

      v59 += 4;
      if (v59 == 8)
      {
        goto LABEL_88;
      }
    }

    if ((v60 & v61) == 0)
    {
      v57 = v58;
    }

LABEL_88:
    v68 = sub_5544(28);
    v69 = 0;
    *buf = 0x100000002;
    v70 = *(v57 + 8);
    while (1)
    {
      v71 = *&buf[v69];
      if (((v70 & v71) != 0) != ((*(v68 + 8) & v71) != 0))
      {
        break;
      }

      v69 += 4;
      if (v69 == 8)
      {
        goto LABEL_117;
      }
    }

    if ((v70 & v71) == 0)
    {
      v57 = v68;
    }

LABEL_117:
    v87 = *v57;
    if (v87 && os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3413;
      _os_log_impl(&dword_0, v87, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] Calling routing handler to process route using MultiRouteProcessingInfo:", buf, 0x12u);
    }

    v88 = *v164;
    v89 = v164[1];
    if (*v164 != v89)
    {
      do
      {
        v90 = sub_5544(8);
        v91 = sub_5544(35);
        v92 = 0;
        *buf = 0x100000002;
        v93 = *(v90 + 8);
        while (1)
        {
          v94 = *&buf[v92];
          if (((v93 & v94) != 0) != ((*(v91 + 8) & v94) != 0))
          {
            break;
          }

          v92 += 4;
          if (v92 == 8)
          {
            goto LABEL_127;
          }
        }

        if ((v93 & v94) == 0)
        {
          v90 = v91;
        }

LABEL_127:
        v95 = sub_5544(28);
        v96 = 0;
        *buf = 0x100000002;
        v97 = *(v90 + 8);
        while (1)
        {
          v98 = *&buf[v96];
          if (((v97 & v98) != 0) != ((*(v95 + 8) & v98) != 0))
          {
            break;
          }

          v96 += 4;
          if (v96 == 8)
          {
            goto LABEL_133;
          }
        }

        if ((v97 & v98) == 0)
        {
          v90 = v95;
        }

LABEL_133:
        v99 = *v90;
        if (v99 && os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          sub_144548(&__p, v88);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3416;
          v171 = 2080;
          v172 = p_p;
          _os_log_impl(&dword_0, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] - %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v88 += 328;
      }

      while (v88 != v89);
    }

    v101 = sub_5544(8);
    v102 = sub_5544(35);
    v103 = 0;
    *buf = 0x100000002;
    v104 = *(v101 + 8);
    while (1)
    {
      v105 = *&buf[v103];
      if (((v104 & v105) != 0) != ((*(v102 + 8) & v105) != 0))
      {
        break;
      }

      v103 += 4;
      if (v103 == 8)
      {
        goto LABEL_170;
      }
    }

    if ((v104 & v105) == 0)
    {
      v101 = v102;
    }

LABEL_170:
    v116 = sub_5544(28);
    v117 = 0;
    *buf = 0x100000002;
    v118 = *(v101 + 8);
    while (1)
    {
      v119 = *&buf[v117];
      if (((v118 & v119) != 0) != ((*(v116 + 8) & v119) != 0))
      {
        break;
      }

      v117 += 4;
      if (v117 == 8)
      {
        goto LABEL_176;
      }
    }

    if ((v118 & v119) == 0)
    {
      v101 = v116;
    }

LABEL_176:
    v120 = *v101;
    if (v120 && os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      sub_1446C8(&__p, a4);
      v121 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3418;
      v171 = 2080;
      v172 = v121;
      _os_log_impl(&dword_0, v120, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] Routes to be destroyed %s.", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v122 = sub_5544(8);
    v123 = sub_5544(35);
    v124 = 0;
    *buf = 0x100000002;
    v125 = *(v122 + 8);
    while (1)
    {
      v126 = *&buf[v124];
      if (((v125 & v126) != 0) != ((*(v123 + 8) & v126) != 0))
      {
        break;
      }

      v124 += 4;
      if (v124 == 8)
      {
        goto LABEL_189;
      }
    }

    if ((v125 & v126) == 0)
    {
      v122 = v123;
    }

LABEL_189:
    v127 = sub_5544(28);
    v128 = 0;
    *buf = 0x100000002;
    v129 = *(v122 + 8);
    while (1)
    {
      v130 = *&buf[v128];
      if (((v129 & v130) != 0) != ((*(v127 + 8) & v130) != 0))
      {
        break;
      }

      v128 += 4;
      if (v128 == 8)
      {
        goto LABEL_195;
      }
    }

    if ((v129 & v130) == 0)
    {
      v122 = v127;
    }

LABEL_195:
    v131 = *v122;
    if (v131 && os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v42 + 8) != *(v163 + 32) || *(v42 + 12) != *(v163 + 36))
      {
        goto LABEL_221;
      }

      v132 = *(v42 + 20);
      v133 = *(v163 + 44);
      if (v132 == v133 && *(v42 + 20))
      {
        v132 = *(v42 + 16);
        v133 = *(v163 + 40);
      }

      if (v132 == v133)
      {
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3419;
        v171 = 2080;
        v172 = "identical";
        _os_log_impl(&dword_0, v131, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] The previous default device category/mode was: %s.", buf, 0x1Cu);
      }

      else
      {
LABEL_221:
        sub_879F8(&__p, (v163 + 32));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v145 = &__p;
        }

        else
        {
          v145 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3419;
        v171 = 2080;
        v172 = v145;
        _os_log_impl(&dword_0, v131, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] The previous default device category/mode was: %s.", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    v146 = sub_5544(8);
    v147 = sub_5544(35);
    v148 = 0;
    *buf = 0x100000002;
    v149 = *(v146 + 8);
    while (1)
    {
      v150 = *&buf[v148];
      if (((v149 & v150) != 0) != ((*(v147 + 8) & v150) != 0))
      {
        break;
      }

      v148 += 4;
      if (v148 == 8)
      {
        goto LABEL_232;
      }
    }

    if ((v149 & v150) == 0)
    {
      v146 = v147;
    }

LABEL_232:
    v151 = sub_5544(28);
    v152 = 0;
    *buf = 0x100000002;
    v153 = *(v146 + 8);
    while (1)
    {
      v154 = *&buf[v152];
      if (((v153 & v154) != 0) != ((*(v151 + 8) & v154) != 0))
      {
        break;
      }

      v152 += 4;
      if (v152 == 8)
      {
        goto LABEL_238;
      }
    }

    if ((v153 & v154) == 0)
    {
      v146 = v151;
    }

LABEL_238:
    v155 = *v146;
    if (v155 && os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(&__p, a14);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v156 = &__p;
      }

      else
      {
        v156 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3420;
      v171 = 2080;
      v172 = v156;
      v142 = "%25s:%-5d [AirPlay route change] The route change will use reason %s.";
      v143 = v155;
      v144 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_244;
    }
  }

  else
  {
    v51 = sub_5544(8);
    v52 = sub_5544(35);
    v53 = 0;
    *buf = 0x100000002;
    v54 = *(v51 + 8);
    while (1)
    {
      v55 = *&buf[v53];
      if (((v54 & v55) != 0) != ((*(v52 + 8) & v55) != 0))
      {
        break;
      }

      v53 += 4;
      if (v53 == 8)
      {
        goto LABEL_79;
      }
    }

    if ((v54 & v55) == 0)
    {
      v51 = v52;
    }

LABEL_79:
    v62 = *v51;
    if (v62 && os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3424;
      _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "%25s:%-5d >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>", buf, 0x12u);
    }

    v63 = sub_5544(8);
    v64 = sub_5544(35);
    v65 = 0;
    *buf = 0x100000002;
    v66 = *(v63 + 8);
    while (1)
    {
      v67 = *&buf[v65];
      if (((v66 & v67) != 0) != ((*(v64 + 8) & v67) != 0))
      {
        break;
      }

      v65 += 4;
      if (v65 == 8)
      {
        goto LABEL_94;
      }
    }

    if ((v66 & v67) == 0)
    {
      v63 = v64;
    }

LABEL_94:
    v72 = *v63;
    if (v72 && os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3425;
      _os_log_impl(&dword_0, v72, OS_LOG_TYPE_INFO, "%25s:%-5d Calling routing handler to process route using MultiRouteProcessingInfo:", buf, 0x12u);
    }

    v73 = *v164;
    v74 = v164[1];
    if (*v164 != v74)
    {
      do
      {
        v75 = sub_5544(8);
        v76 = sub_5544(35);
        v77 = 0;
        *buf = 0x100000002;
        v78 = *(v75 + 8);
        while (1)
        {
          v79 = *&buf[v77];
          if (((v78 & v79) != 0) != ((*(v76 + 8) & v79) != 0))
          {
            break;
          }

          v77 += 4;
          if (v77 == 8)
          {
            goto LABEL_104;
          }
        }

        if ((v78 & v79) == 0)
        {
          v75 = v76;
        }

LABEL_104:
        v80 = *v75;
        if (v80 && os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          sub_144548(&__p, v73);
          v81 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v81 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3428;
          v171 = 2080;
          v172 = v81;
          _os_log_impl(&dword_0, v80, OS_LOG_TYPE_INFO, "%25s:%-5d - %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v73 += 328;
      }

      while (v73 != v74);
    }

    v82 = sub_5544(8);
    v83 = sub_5544(35);
    v84 = 0;
    *buf = 0x100000002;
    v85 = *(v82 + 8);
    while (1)
    {
      v86 = *&buf[v84];
      if (((v85 & v86) != 0) != ((*(v83 + 8) & v86) != 0))
      {
        break;
      }

      v84 += 4;
      if (v84 == 8)
      {
        goto LABEL_146;
      }
    }

    if ((v85 & v86) == 0)
    {
      v82 = v83;
    }

LABEL_146:
    v106 = *v82;
    if (v106 && os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      sub_1446C8(&__p, a4);
      v107 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3430;
      v171 = 2080;
      v172 = v107;
      _os_log_impl(&dword_0, v106, OS_LOG_TYPE_INFO, "%25s:%-5d Routes to be destroyed %s.", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v108 = sub_5544(8);
    v109 = sub_5544(35);
    v110 = 0;
    *buf = 0x100000002;
    v111 = *(v108 + 8);
    while (1)
    {
      v112 = *&buf[v110];
      if (((v111 & v112) != 0) != ((*(v109 + 8) & v112) != 0))
      {
        break;
      }

      v110 += 4;
      if (v110 == 8)
      {
        goto LABEL_159;
      }
    }

    if ((v111 & v112) == 0)
    {
      v108 = v109;
    }

LABEL_159:
    v113 = *v108;
    if (v113 && os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
    {
      if (*(v42 + 8) != *(v163 + 32) || *(v42 + 12) != *(v163 + 36))
      {
        goto LABEL_204;
      }

      v114 = *(v42 + 20);
      v115 = *(v163 + 44);
      if (v114 == v115 && *(v42 + 20))
      {
        v114 = *(v42 + 16);
        v115 = *(v163 + 40);
      }

      if (v114 == v115)
      {
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3431;
        v171 = 2080;
        v172 = "identical";
        _os_log_impl(&dword_0, v113, OS_LOG_TYPE_INFO, "%25s:%-5d The previous default device category/mode was: %s.", buf, 0x1Cu);
      }

      else
      {
LABEL_204:
        sub_879F8(&__p, (v163 + 32));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v134 = &__p;
        }

        else
        {
          v134 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3431;
        v171 = 2080;
        v172 = v134;
        _os_log_impl(&dword_0, v113, OS_LOG_TYPE_INFO, "%25s:%-5d The previous default device category/mode was: %s.", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    v135 = sub_5544(8);
    v136 = sub_5544(35);
    v137 = 0;
    *buf = 0x100000002;
    v138 = *(v135 + 8);
    while (1)
    {
      v139 = *&buf[v137];
      if (((v138 & v139) != 0) != ((*(v136 + 8) & v139) != 0))
      {
        break;
      }

      v137 += 4;
      if (v137 == 8)
      {
        goto LABEL_215;
      }
    }

    if ((v138 & v139) == 0)
    {
      v135 = v136;
    }

LABEL_215:
    v140 = *v135;
    if (v140 && os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
    {
      sub_22170(&__p, a14);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v141 = &__p;
      }

      else
      {
        v141 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3432;
      v171 = 2080;
      v172 = v141;
      v142 = "%25s:%-5d The route change will use reason %s.";
      v143 = v140;
      v144 = OS_LOG_TYPE_INFO;
LABEL_244:
      _os_log_impl(&dword_0, v143, v144, v142, buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_144968(v165, &v166);
  v165[3] = v163;
  v168 = 0;
  operator new();
}

void sub_25FF68(void *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_1CC130(a1);
  }

  JUMPOUT(0x260170);
}

void sub_26000C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (LOBYTE(STACK[0x318]) == 1)
    {
      sub_175F78(&STACK[0x2F8]);
    }

    sub_175F78((v2 + 16));
    JUMPOUT(0x25F3C4);
  }

  JUMPOUT(0x260170);
}

void sub_26004C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x260170);
  }

  JUMPOUT(0x25F3C4);
}

void sub_260074(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a66 < 0)
    {
      operator delete(__p);
    }

    sub_175F78((v67 - 152));
    STACK[0x2E0] = &a34;
    sub_D02B4(&STACK[0x2E0]);
    sub_260730(&a37);
    sub_53BA4(&a67);
    if (a2 == 3)
    {
      v70 = __cxa_begin_catch(a1);
      v71 = sub_5544(8);
      v72 = *v71;
      if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&a67, v70[2]);
        if (SLOBYTE(STACK[0x20F]) >= 0)
        {
          v73 = &a67;
        }

        else
        {
          v73 = a67;
        }

        LODWORD(STACK[0x220]) = 136315650;
        STACK[0x224] = "RoutingManager.cpp";
        LOWORD(STACK[0x22C]) = 1024;
        LODWORD(STACK[0x22E]) = 3512;
        LOWORD(STACK[0x232]) = 2080;
        STACK[0x234] = v73;
        _os_log_impl(&dword_0, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException thrown during mRoutingHandlerDispatcher->ProcessRoute: '%s'.", &STACK[0x220], 0x1Cu);
        if (SLOBYTE(STACK[0x20F]) < 0)
        {
          operator delete(a67);
        }
      }
    }

    else
    {
      v74 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v75 = v74;
        v76 = sub_5544(8);
        v77 = *v76;
        if (*v76 && os_log_type_enabled(*v76, OS_LOG_TYPE_ERROR))
        {
          v78 = (*(*v75 + 16))(v75);
          LODWORD(STACK[0x220]) = 136315650;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3517;
          LOWORD(STACK[0x232]) = 2080;
          STACK[0x234] = v78;
          _os_log_impl(&dword_0, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception thrown during mRoutingHandlerDispatcher->ProcessRoute: %s.", &STACK[0x220], 0x1Cu);
        }
      }

      else
      {
        v79 = sub_5544(8);
        v80 = *v79;
        if (*v79 && os_log_type_enabled(*v79, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x220]) = 136315394;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3519;
          _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown during mRoutingHandlerDispatcher->ProcessRoute.", &STACK[0x220], 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x25FE9CLL);
  }

  JUMPOUT(0x260170);
}

void sub_260084(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x237]) < 0)
    {
      operator delete(STACK[0x220]);
    }

    if (a66 < 0)
    {
      operator delete(a65);
    }

    JUMPOUT(0x2601B4);
  }

  JUMPOUT(0x260170);
}

void sub_2600BC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sub_175F78((v65 - 152));
    STACK[0x2E0] = &a34;
    sub_D02B4(&STACK[0x2E0]);
    sub_260730(&a37);
    sub_53BA4(&a65);
    if (a2 == 3)
    {
      v68 = __cxa_begin_catch(a1);
      v69 = sub_5544(8);
      v70 = *v69;
      if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&a65, v68[2]);
        if (SLOBYTE(STACK[0x20F]) >= 0)
        {
          v71 = &a65;
        }

        else
        {
          v71 = a65;
        }

        LODWORD(STACK[0x220]) = 136315650;
        STACK[0x224] = "RoutingManager.cpp";
        LOWORD(STACK[0x22C]) = 1024;
        LODWORD(STACK[0x22E]) = 3512;
        LOWORD(STACK[0x232]) = 2080;
        STACK[0x234] = v71;
        _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException thrown during mRoutingHandlerDispatcher->ProcessRoute: '%s'.", &STACK[0x220], 0x1Cu);
        if (SLOBYTE(STACK[0x20F]) < 0)
        {
          operator delete(a65);
        }
      }
    }

    else
    {
      v72 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v73 = v72;
        v74 = sub_5544(8);
        v75 = *v74;
        if (*v74 && os_log_type_enabled(*v74, OS_LOG_TYPE_ERROR))
        {
          v76 = (*(*v73 + 16))(v73);
          LODWORD(STACK[0x220]) = 136315650;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3517;
          LOWORD(STACK[0x232]) = 2080;
          STACK[0x234] = v76;
          _os_log_impl(&dword_0, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception thrown during mRoutingHandlerDispatcher->ProcessRoute: %s.", &STACK[0x220], 0x1Cu);
        }
      }

      else
      {
        v77 = sub_5544(8);
        v78 = *v77;
        if (*v77 && os_log_type_enabled(*v77, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x220]) = 136315394;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3519;
          _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown during mRoutingHandlerDispatcher->ProcessRoute.", &STACK[0x220], 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x25FE9CLL);
  }

  JUMPOUT(0x260170);
}

void sub_2600CC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sub_65310(&STACK[0x2E0]);
    sub_175F78((v65 - 152));
    STACK[0x2E0] = &a34;
    sub_D02B4(&STACK[0x2E0]);
    sub_260730(&a37);
    sub_53BA4(&a65);
    if (a2 == 3)
    {
      v68 = __cxa_begin_catch(a1);
      v69 = sub_5544(8);
      v70 = *v69;
      if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&a65, v68[2]);
        if (SLOBYTE(STACK[0x20F]) >= 0)
        {
          v71 = &a65;
        }

        else
        {
          v71 = a65;
        }

        LODWORD(STACK[0x220]) = 136315650;
        STACK[0x224] = "RoutingManager.cpp";
        LOWORD(STACK[0x22C]) = 1024;
        LODWORD(STACK[0x22E]) = 3512;
        LOWORD(STACK[0x232]) = 2080;
        STACK[0x234] = v71;
        _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException thrown during mRoutingHandlerDispatcher->ProcessRoute: '%s'.", &STACK[0x220], 0x1Cu);
        if (SLOBYTE(STACK[0x20F]) < 0)
        {
          operator delete(a65);
        }
      }
    }

    else
    {
      v72 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v73 = v72;
        v74 = sub_5544(8);
        v75 = *v74;
        if (*v74 && os_log_type_enabled(*v74, OS_LOG_TYPE_ERROR))
        {
          v76 = (*(*v73 + 16))(v73);
          LODWORD(STACK[0x220]) = 136315650;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3517;
          LOWORD(STACK[0x232]) = 2080;
          STACK[0x234] = v76;
          _os_log_impl(&dword_0, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception thrown during mRoutingHandlerDispatcher->ProcessRoute: %s.", &STACK[0x220], 0x1Cu);
        }
      }

      else
      {
        v77 = sub_5544(8);
        v78 = *v77;
        if (*v77 && os_log_type_enabled(*v77, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x220]) = 136315394;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3519;
          _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown during mRoutingHandlerDispatcher->ProcessRoute.", &STACK[0x220], 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x25FE9CLL);
  }

  JUMPOUT(0x260170);
}

void sub_2600E4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2600F0);
  }

  JUMPOUT(0x260170);
}

void sub_260100(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    JUMPOUT(0x2601E0);
  }

  JUMPOUT(0x260170);
}

void sub_260118(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_477A0(v2);
    if (v3)
    {
      operator delete(v3);
    }

    JUMPOUT(0x2601D0);
  }

  JUMPOUT(0x260170);
}

void sub_260148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  sub_477A0(a47);
  if (*(a24 + 56) == 1)
  {
    sub_175F78((a24 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_26017C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2601E0);
  }

  JUMPOUT(0x260170);
}

void sub_260190(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    __cxa_free_exception(v65);
    sub_175F78((v66 - 152));
    STACK[0x2E0] = &a34;
    sub_D02B4(&STACK[0x2E0]);
    sub_260730(&a37);
    sub_53BA4(&a65);
    if (a2 == 3)
    {
      v69 = __cxa_begin_catch(a1);
      v70 = sub_5544(8);
      v71 = *v70;
      if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&a65, v69[2]);
        if (SLOBYTE(STACK[0x20F]) >= 0)
        {
          v72 = &a65;
        }

        else
        {
          v72 = a65;
        }

        LODWORD(STACK[0x220]) = 136315650;
        STACK[0x224] = "RoutingManager.cpp";
        LOWORD(STACK[0x22C]) = 1024;
        LODWORD(STACK[0x22E]) = 3512;
        LOWORD(STACK[0x232]) = 2080;
        STACK[0x234] = v72;
        _os_log_impl(&dword_0, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException thrown during mRoutingHandlerDispatcher->ProcessRoute: '%s'.", &STACK[0x220], 0x1Cu);
        if (SLOBYTE(STACK[0x20F]) < 0)
        {
          operator delete(a65);
        }
      }
    }

    else
    {
      v73 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v74 = v73;
        v75 = sub_5544(8);
        v76 = *v75;
        if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
        {
          v77 = (*(*v74 + 16))(v74);
          LODWORD(STACK[0x220]) = 136315650;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3517;
          LOWORD(STACK[0x232]) = 2080;
          STACK[0x234] = v77;
          _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception thrown during mRoutingHandlerDispatcher->ProcessRoute: %s.", &STACK[0x220], 0x1Cu);
        }
      }

      else
      {
        v78 = sub_5544(8);
        v79 = *v78;
        if (*v78 && os_log_type_enabled(*v78, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x220]) = 136315394;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3519;
          _os_log_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown during mRoutingHandlerDispatcher->ProcessRoute.", &STACK[0x220], 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x25FE9CLL);
  }

  JUMPOUT(0x260170);
}

void sub_2601A8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2601B4);
  }

  JUMPOUT(0x260170);
}

void sub_260414(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_35;
  }

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
    v12 = 0;
LABEL_34:
    sub_4B0F4(v12);
    goto LABEL_35;
  }

  v10 = sub_1658B4(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v15 = v13[4];
      v14 = v13[5];
      if (v14)
      {
        atomic_fetch_add_explicit(v14 + 2, 1uLL, memory_order_relaxed);
      }

      v16 = v9[5];
      v9[4] = v15;
      v9[5] = v14;
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      v17 = *v8;
      v18 = (a1 + 8);
      v19 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v18 = v17;
            if (!sub_16B7FC(v9 + 4, v17 + 4))
            {
              break;
            }

            v17 = *v18;
            v19 = v18;
            if (!*v18)
            {
              goto LABEL_20;
            }
          }

          v17 = v18[1];
        }

        while (v17);
        v19 = v18 + 1;
      }

LABEL_20:
      sub_46B44(a1, v18, v19, v9);
      if (v10)
      {
        v10 = sub_1658B4(v10);
      }

      else
      {
        v10 = 0;
      }

      v20 = v13[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v21 = *a2 == v13;
          v13 = a2;
        }

        while (!v21);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  sub_4B0F4(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_34;
  }

LABEL_35:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_260684(uint64_t a1, int a2, __int128 *a3)
{
  v6 = *a3;
  sub_175EEC(v7, (a3 + 1));
  v8 = *(a3 + 20);
  v9 = 1;
  *a1 = 0;
  *(a1 + 4) = a2;
  sub_20309C(a1 + 8, &v6);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v9 == 1)
  {
    sub_175F78(v7);
  }
}

void sub_260710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    sub_175F78((v15 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_260730(uint64_t a1)
{
  if (std::uncaught_exceptions() > *a1)
  {
    (*(**(*(a1 + 8) + 24) + 16))(*(*(a1 + 8) + 24), a1 + 16);
  }

  sub_477A0(*(a1 + 24));
  return a1;
}

uint64_t sub_2607A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    v13 = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 56) = v13;
  }

  else
  {
    sub_16B928((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_4ABC8((a1 + 32), *(a2 + 32), (a2 + 40));
    v4 = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 56) = v4;
    v5 = a2 + 72;
    v6 = (a1 + 72);
    v7 = *(a2 + 80);
    v8 = *(a1 + 80);
    if (v7 != a2 + 72 && v8 != v6)
    {
      do
      {
        v8[4] = *(v7 + 16);
        v7 = *(v7 + 8);
        v8 = *(v8 + 1);
      }

      while (v7 != v5 && v8 != v6);
    }

    if (v8 == v6)
    {
      if (v7 != v5)
      {
        operator new();
      }
    }

    else
    {
      v10 = *(*(a1 + 72) + 8);
      v11 = *v8;
      *(v11 + 8) = v10;
      *v10 = v11;
      do
      {
        v12 = *(v8 + 1);
        --*(a1 + 88);
        operator delete(v8);
        v8 = v12;
      }

      while (v12 != v6);
    }
  }

  *(a1 + 96) = *(a2 + 96);
  sub_1F2EE0(v31, a2 + 104);
  v14 = a1 + 104;
  if ((a1 + 104) != v31)
  {
    v15 = v32;
    v16 = *(a1 + 128);
    if (v32 == v31)
    {
      if (v16 == v14)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 128) + 24))(*(a1 + 128), v31);
        (*(**(a1 + 128) + 32))(*(a1 + 128));
        *(a1 + 128) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 104);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 128);
      }

      *(a1 + 128) = v14;
    }

    else if (v16 == v14)
    {
      (*(*v16 + 24))(*(a1 + 128), v31);
      (*(**(a1 + 128) + 32))(*(a1 + 128));
      *(a1 + 128) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 128);
      *(a1 + 128) = v15;
    }
  }

  sub_1F375C(v31);
  sub_1F2F78(v31, a2 + 136);
  v17 = a1 + 136;
  if ((a1 + 136) != v31)
  {
    v18 = v32;
    v19 = *(a1 + 160);
    if (v32 == v31)
    {
      if (v19 == v17)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 160) + 24))(*(a1 + 160), v31);
        (*(**(a1 + 160) + 32))(*(a1 + 160));
        *(a1 + 160) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 136);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 160);
      }

      *(a1 + 160) = v17;
    }

    else if (v19 == v17)
    {
      (*(*v19 + 24))(*(a1 + 160), v31);
      (*(**(a1 + 160) + 32))(*(a1 + 160));
      *(a1 + 160) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 160);
      *(a1 + 160) = v18;
    }
  }

  sub_1F36DC(v31);
  sub_1F3010(v31, a2 + 168);
  v20 = a1 + 168;
  if ((a1 + 168) != v31)
  {
    v21 = v32;
    v22 = *(a1 + 192);
    if (v32 == v31)
    {
      if (v22 == v20)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 192) + 24))(*(a1 + 192), v31);
        (*(**(a1 + 192) + 32))(*(a1 + 192));
        *(a1 + 192) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 168);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 192);
      }

      *(a1 + 192) = v20;
    }

    else if (v22 == v20)
    {
      (*(*v22 + 24))(*(a1 + 192), v31);
      (*(**(a1 + 192) + 32))(*(a1 + 192));
      *(a1 + 192) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 192);
      *(a1 + 192) = v21;
    }
  }

  sub_1F365C(v31);
  sub_1F30A8(v31, a2 + 200);
  v23 = a1 + 200;
  if ((a1 + 200) != v31)
  {
    v24 = v32;
    v25 = *(a1 + 224);
    if (v32 == v31)
    {
      if (v25 == v23)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 224) + 24))(*(a1 + 224), v31);
        (*(**(a1 + 224) + 32))(*(a1 + 224));
        *(a1 + 224) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 200);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 224);
      }

      *(a1 + 224) = v23;
    }

    else if (v25 == v23)
    {
      (*(*v25 + 24))(*(a1 + 224), v31);
      (*(**(a1 + 224) + 32))(*(a1 + 224));
      *(a1 + 224) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 224);
      *(a1 + 224) = v24;
    }
  }

  sub_1F35DC(v31);
  sub_1F3140(v31, a2 + 232);
  v26 = a1 + 232;
  if ((a1 + 232) != v31)
  {
    v27 = v32;
    v28 = *(a1 + 256);
    if (v32 == v31)
    {
      if (v28 == v26)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 256) + 24))(*(a1 + 256), v31);
        (*(**(a1 + 256) + 32))(*(a1 + 256));
        *(a1 + 256) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 232);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 256);
      }

      *(a1 + 256) = v26;
    }

    else if (v28 == v26)
    {
      (*(*v28 + 24))(*(a1 + 256), v31);
      (*(**(a1 + 256) + 32))(*(a1 + 256));
      *(a1 + 256) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 256);
      *(a1 + 256) = v27;
    }
  }

  sub_1F355C(v31);
  if (a1 != a2)
  {
    sub_D03B8((a1 + 264), *(a2 + 264), *(a2 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 272) - *(a2 + 264)) >> 3));
    sub_D03B8((a1 + 288), *(a2 + 288), *(a2 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 3));
    *(a1 + 344) = *(a2 + 344);
    sub_D055C((a1 + 312), *(a2 + 328));
    *(a1 + 384) = *(a2 + 384);
    sub_D055C((a1 + 352), *(a2 + 368));
    *(a1 + 424) = *(a2 + 424);
    sub_D055C((a1 + 392), *(a2 + 408));
  }

  v29 = *(a2 + 432);
  *(a1 + 436) = *(a2 + 436);
  *(a1 + 432) = v29;
  sub_1789EC((a1 + 440), (a2 + 440));
  return a1;
}

void sub_26152C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  v6 = a3;
  do
  {
    sub_261684(v6, v4);
    v4 += 472;
    v6 += 472;
    v5 -= 472;
  }

  while (v4 != a2);
  return v6;
}

void sub_261630(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x8AD8F2FBA93869)
  {
    sub_1F3B44(a2);
  }

  sub_189A00();
}

uint64_t sub_261684(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_46980((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  sub_44E44((a1 + 32), (a2 + 32));
  v4 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  sub_1F3BA0((a1 + 72), a2 + 72);
  *(a1 + 96) = *(a2 + 96);
  sub_1F2EE0(a1 + 104, a2 + 104);
  sub_1F2F78(a1 + 136, a2 + 136);
  sub_1F3010(a1 + 168, a2 + 168);
  sub_1F30A8(a1 + 200, a2 + 200);
  sub_1F3140(a1 + 232, a2 + 232);
  sub_7FF98((a1 + 264), (a2 + 264));
  *(a1 + 432) = *(a2 + 432);
  sub_80534((a1 + 440), (a2 + 440));
  return a1;
}

void sub_26176C(_Unwind_Exception *a1)
{
  sub_1F1DE0((v1 + 264));
  sub_1F355C(v1 + 232);
  sub_1F35DC(v1 + 200);
  sub_1F365C(v1 + 168);
  sub_1F36DC(v1 + 136);
  sub_1F375C(v1 + 104);
  sub_4E0BC((v1 + 72));
  sub_477A0(*(v1 + 40));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_261808(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 60;
  v4 = sub_5544(8);
  v5 = sub_5544(35);
  v6 = 0;
  *buf = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&buf[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

  if (*(v4 + 8))
  {
LABEL_9:
    v9 = *v4;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_238844(&__p, *(a1 + 8), (a1 + 16));
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RouteCache.cpp";
      v36 = 1024;
      v37 = 523;
      v38 = 2080;
      v39 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Clearing %s from Route Cache", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_16:
  v11 = *(a1 + 8);
  if (v11 != (a1 + 16))
  {
    do
    {
      v12 = *(v11 + 28);
      v33 = v12;
      v13 = v2[61];
      if (v13 != v3)
      {
        while (v13[2] != v12)
        {
          v13 = v13[1];
          if (v13 == v3)
          {
            goto LABEL_23;
          }
        }
      }

      if (v13 == v3)
      {
LABEL_23:
        v16 = sub_5544(8);
        v17 = sub_5544(35);
        v18 = 0;
        *buf = 0x100000002;
        v19 = *(v16 + 8);
        while (1)
        {
          v20 = *&buf[v18];
          if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
          {
            break;
          }

          v18 += 4;
          if (v18 == 8)
          {
            if ((v19 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_31;
          }
        }

        if ((v19 & v20) == 0)
        {
          v16 = v17;
        }

        if (*(v16 + 8))
        {
LABEL_31:
          v21 = *v16;
          if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            sub_68108(&__p, &v33);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "RouteCache.cpp";
            v36 = 1024;
            v37 = 527;
            v38 = 2080;
            v39 = p_p;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to find device type %s within route cache", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      else
      {
        v15 = *v13;
        v14 = v13[1];
        *(v15 + 8) = v14;
        *v14 = v15;
        --v2[62];
        sub_15B570(v13);
      }

LABEL_37:
      v23 = v11[1];
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
          v24 = v11[2];
          v25 = *v24 == v11;
          v11 = v24;
        }

        while (!v25);
      }

      v11 = v24;
    }

    while (v24 != (a1 + 16));
  }

  v26 = sub_5544(8);
  v27 = sub_5544(35);
  v28 = 0;
  *buf = 0x100000002;
  v29 = *(v26 + 8);
  while (1)
  {
    v30 = *&buf[v28];
    if (((v29 & v30) != 0) != ((*(v27 + 8) & v30) != 0))
    {
      break;
    }

    v28 += 4;
    if (v28 == 8)
    {
      if ((v29 & 1) == 0)
      {
        return;
      }

      goto LABEL_51;
    }
  }

  if ((v29 & v30) == 0)
  {
    v26 = v27;
  }

  if (*(v26 + 8))
  {
LABEL_51:
    v31 = *v26;
    if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_238988(&__p, (v2 + 60));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &__p;
      }

      else
      {
        v32 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "RouteCache.cpp";
      v36 = 1024;
      v37 = 533;
      v38 = 2080;
      v39 = v32;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updated Route Cache: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_261C64(void **a1)
{
  sub_477A0(a1[2]);

  operator delete(a1);
}

uint64_t ***sub_261CA8(uint64_t a1, uint64_t ***a2)
{
  *a2 = off_6BC570;
  result = sub_144968(a2 + 1, (a1 + 8));
  a2[4] = *(a1 + 32);
  return result;
}

void sub_261D7C(uint64_t a1)
{
  *a1 = off_6BC570;
  sub_477A0(*(a1 + 16));

  operator delete();
}

uint64_t sub_261DE4(uint64_t a1)
{
  *a1 = off_6BC570;
  sub_477A0(*(a1 + 16));
  return a1;
}

std::string *sub_261E2C(std::string *a1, void *a2, void *a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      v7 = *(a2 + 55);
      v8 = v7 >= 0 ? (a2 + 4) : a2[4];
      v9 = v7 >= 0 ? *(a2 + 55) : a2[5];
      std::string::append(a1, v8, v9);
      v10 = a2[1];
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
        do
        {
          v11 = a2[2];
          v12 = *v11 == a2;
          a2 = v11;
        }

        while (!v12);
      }

      if (v11 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v11;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_261F14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261F34(uint64_t a1)
{
  sub_178A90(*(a1 + 32));
  sub_98A08(*(a1 + 8));
  return a1;
}

void *sub_261F68(uint64_t **a1, void ***a2, uint64_t a3)
{
  result = sub_6F86C(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_262018(uint64_t a1)
{
  if (*(a1 + 304) == 1 && *(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 248) == 1)
  {
    v2 = *(a1 + 240);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 224);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  if (*(a1 + 176) == 1 && *(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  sub_C31F4(*(a1 + 80));
  v4 = *(a1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

BOOL sub_2620B0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    v10 = v9;
    if (v9)
    {
      v11 = *a2;
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v9);
      if (!v6)
      {
LABEL_16:
        v7 = 0;
        v12 = 0;
        if (!v10)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v11 = 0;
      if (!v6)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  v12 = std::__shared_weak_count::lock(v6);
  if (!v12)
  {
    v7 = 0;
  }

  if (!v10)
  {
LABEL_20:
    v14 = v7 == 0;
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_17:
  v13 = std::__shared_weak_count::lock(v10);
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v7 == v11;
  sub_1A8C0(v13);
  if (v12)
  {
LABEL_21:
    sub_1A8C0(v12);
  }

LABEL_22:
  if (!v14)
  {
    v15 = 0;
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v15 = sub_CBFB4(a1[2], a1[3], a2[2], a2[3]);
  if (v10)
  {
LABEL_26:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_27:
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return v15;
}

uint64_t sub_26220C(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_4B0F4(*(a1 + 64));
  sub_4B0F4(*(a1 + 40));
  sub_CC3DC((a1 + 8));
  return a1;
}

void sub_262264(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2622C0(unint64_t a1)
{
  if (a1 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_26231C(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_262384(unsigned int **a1, unsigned int **a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      if (*v3[1] - 5 >= 0xFFFFFFFE)
      {
        v4 = sub_5544(8);
        if (*(v4 + 8))
        {
          v5 = *v4;
          if (*v4)
          {
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
            {
              sub_109694(&__p, *v3);
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315650;
              v9 = "RoutingManager.cpp";
              v10 = 1024;
              v11 = 3620;
              v12 = 2080;
              v13 = p_p;
              _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Changing Reconfiguration Context to Change for %s.", buf, 0x1Cu);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        *v3[1] = 2;
      }

      v3 += 2;
    }

    while (v3 != a2);
  }
}

uint64_t sub_2624F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_262530(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  return a1;
}

uint64_t sub_2626B0(uint64_t a1)
{
  sub_4B14C(*(a1 + 32));
  sub_4B0F4(*(a1 + 8));
  return a1;
}

void sub_2626E4(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_65310(v2 + 6);
        sub_65310(v2 + 3);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_262760(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_27A4();
  v8 = atomic_load(&qword_6E9558);
  if (v8 != pthread_self())
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2892;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (!*(a3 + 16))
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2893;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v21, "Precondition failure.");
  }

  v9 = sub_5544(8);
  if (*(v9 + 8))
  {
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        sub_FC33C(__p, a5);
        v11 = v27[6] >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2896;
        *&buf[18] = 2080;
        v32 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Activating for category kVirtualAudioPlugInRoutingCategoryMulti.  Override port: %s", buf, 0x1Cu);
        if ((v27[6] & 0x80000000) != 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_20301C(a1, 1);
  v12 = a5[1];
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      sub_1A8C0(v13);
    }
  }

  memset(v30, 0, sizeof(v30));
  v14 = *(a3 + 32) == 1668510820;
  *&buf[3] = *(a4 + 8);
  v26 = v14;
  *v27 = *buf;
  *&v27[15] = *&buf[15];
  __p[0] = a3;
  __p[1] = (a4 + 24);
  v28 = 0;
  v29 = 0;
  v15 = sub_456B8(__p);
  if (__p[0] != v15)
  {
    sub_7D234(&v24, a2, v15 + 16, a3, a4);
  }

  sub_7C94C(v30, (a2 + 132));
  *buf = v30;
  sub_86D0C(buf);
}

void sub_263A98(uint64_t *a1, uint64_t *a2, void *a3, unsigned int a4, uint64_t *a5, unsigned int ***a6, const void **a7)
{
  v12 = a4;
  v13 = a3[1] - *a3;
  v14 = sub_5544(8);
  v15 = *(v14 + 8);
  if (v12 >= v13 >> 3)
  {
    if (v15)
    {
      v50 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5748;
          v105 = 1024;
          *v106 = a4;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to activate after reviewing and successfully building concrete route for %u alternate device specifications...", buf, 0x18u);
        }
      }
    }

    v51 = sub_5544(8);
    if (*(v51 + 8))
    {
      v52 = *v51;
      if (*v51)
      {
        if (os_log_type_enabled(*v51, OS_LOG_TYPE_DEBUG))
        {
          sub_3FE8E8(&v90, a6);
          v53 = (v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v90 : v90.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5749;
          v105 = 2080;
          *v106 = v53;
          _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route(s): %s.", buf, 0x1Cu);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    (*(*a5 + 16))(a5, a6);
    if (*a1)
    {
      v54 = *a6;
      v55 = a6[1];
      if (*a6 != v55)
      {
        do
        {
          v56 = (*v54 + 4);
          for (i = *(*v54 + 3); i != v56; i = i[1])
          {
            sub_25704(buf, i + 2, "", 115);
            v58 = (*(**buf + 160))(*buf);
            if (*&buf[8])
            {
              sub_1A8C0(*&buf[8]);
            }

            if ((v58 & 1) == 0)
            {
              sub_B0148(a7, i + 1);
            }

            sub_25704(buf, i + 4, "", 119);
            v59 = (*(**buf + 160))(*buf);
            if (*&buf[8])
            {
              sub_1A8C0(*&buf[8]);
            }

            if ((v59 & 1) == 0)
            {
              sub_B0148(a7, i + 2);
            }
          }

          ++v54;
        }

        while (v54 != v55);
      }
    }

    v60 = sub_5544(8);
    if (*(v60 + 8))
    {
      v61 = *v60;
      if (*v60)
      {
        if (os_log_type_enabled(*v60, OS_LOG_TYPE_DEBUG))
        {
          v62 = "failed";
          v63 = *a1;
          *&buf[4] = "RoutingManager.cpp";
          *buf = 136315650;
          if (!v63)
          {
            v62 = "succeeded";
          }

          *&buf[12] = 1024;
          *&buf[14] = 5755;
          v105 = 2080;
          *v106 = v62;
          _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d Activation %s...", buf, 0x1Cu);
        }
      }
    }

    if (*a1)
    {
      v64 = sub_5544(8);
      v65 = *v64;
      if (*v64)
      {
        if (os_log_type_enabled(*v64, OS_LOG_TYPE_DEFAULT))
        {
          sub_3FE8E8(&v90, a6);
          v66 = (v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v90 : v90.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5757;
          v105 = 2080;
          *v106 = v66;
          _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Activation failed for route %s", buf, 0x1Cu);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  else
  {
    if (v15)
    {
      v16 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          v17 = (a3[1] - *a3) >> 3;
          *buf = 136315906;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5634;
          v105 = 1024;
          *v106 = a4;
          *&v106[4] = 2048;
          *&v106[6] = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Reviewing alternate device specification %u of %lu...", buf, 0x22u);
        }
      }
    }

    v80 = a3;
    if (v12 >= (a3[1] - *a3) >> 3)
    {
      sub_269EF8();
    }

    v18 = *(*a3 + 8 * v12);
    v19 = a2 + 70;
    v20 = a2[70];
    if (!v20)
    {
      goto LABEL_14;
    }

    v21 = *(v18 + 4);
    v22 = a2 + 70;
    do
    {
      if (*(v20 + 28) >= v21)
      {
        v22 = v20;
      }

      v20 = *(v20 + 8 * (*(v20 + 28) < v21));
    }

    while (v20);
    if (v22 == v19 || v21 < *(v22 + 7))
    {
LABEL_14:
      v22 = a2 + 70;
    }

    v84 = a1;
    if (((v22 == v19) & sub_99B90(v18, (a5 + 19), a6, (a5 + 1))) != 0)
    {
      v85 = sub_99D18(a2, v18);
      v23 = sub_5544(8);
      if (*(v23 + 8))
      {
        v24 = *v23;
        if (*v23)
        {
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(&v90, *(v18 + 60));
            v25 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
            v26 = v90.__r_.__value_.__r.__words[0];
            sub_10898C(&__p, *(v18 + 8), *(v18 + 16));
            v27 = &v90;
            if (v25 < 0)
            {
              v27 = v26;
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v29 = *(v18 + 56);
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *buf = 136316162;
            *&buf[14] = 5648;
            if (v29)
            {
              v30 = "Optional";
            }

            else
            {
              v30 = "Mandatory";
            }

            v105 = 2080;
            *v106 = v27;
            *&v106[8] = 2080;
            *&v106[10] = p_p;
            v107 = 2080;
            v108 = v30;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alternate device specification is for VAD type %s and uses port types %s. VAD is %s", buf, 0x30u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v82 = sub_805C8(*a2, *(v18 + 64));
      v31 = *(v18 + 64);
      v90.__r_.__value_.__s.__data_[16] = *(v82 + 32) == 1668510820;
      HIDWORD(v90.__r_.__value_.__r.__words[2]) = v31;
      v91 = v85;
      v92 = 0;
      v93 = 0;
      v90.__r_.__value_.__r.__words[0] = v82;
      v90.__r_.__value_.__l.__size_ = (a5 + 3);
      v94 = 0;
      v95 = 0;
      v33 = sub_456B8(&v90);
      v86 = v90.__r_.__value_.__r.__words[0];
      if (v90.__r_.__value_.__r.__words[0] != v33)
      {
        v34 = v32;
        do
        {
          v35 = sub_5544(8);
          if (*(v35 + 8))
          {
            v36 = *v35;
            if (*v35)
            {
              if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
              {
                sub_22170(&__p, *(v18 + 60));
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v37 = &__p;
                }

                else
                {
                  v37 = __p.__r_.__value_.__r.__words[0];
                }

                sub_3FEB1C(&v109, v33 + 16);
                v38 = SHIBYTE(v109.__r_.__value_.__r.__words[2]);
                v39 = v109.__r_.__value_.__r.__words[0];
                *v101 = *(v18 + 64);
                *&v101[4] = v85;
                v102 = 0;
                v103 = 0;
                sub_879F8(&v100, v101);
                v40 = &v109;
                if (v38 < 0)
                {
                  v40 = v39;
                }

                v41 = &v100;
                if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v41 = v100.__r_.__value_.__r.__words[0];
                }

                *buf = 136316162;
                *&buf[4] = "RoutingManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 5657;
                v105 = 2080;
                *v106 = v37;
                *&v106[8] = 2080;
                *&v106[10] = v40;
                v107 = 2080;
                v108 = v41;
                _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Checking whether the alternate device specification for %s allows abstract route %s for category/mode %s...", buf, 0x30u);
                if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v100.__r_.__value_.__l.__data_);
                }

                a1 = v84;
                if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v109.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          if (sub_9B594(v18, v33 + 16))
          {
            v42 = sub_5544(8);
            if (*(v42 + 8))
            {
              v43 = *v42;
              if (*v42)
              {
                if (os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
                {
                  sub_22170(&__p, *(v18 + 60));
                  v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                  v45 = __p.__r_.__value_.__r.__words[0];
                  sub_3FEB1C(&v109, v33 + 16);
                  v46 = &__p;
                  if (v44 < 0)
                  {
                    v46 = v45;
                  }

                  v47 = &v109;
                  if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v47 = v109.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315906;
                  *&buf[4] = "RoutingManager.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 5660;
                  v105 = 2080;
                  *v106 = v46;
                  *&v106[8] = 2080;
                  *&v106[10] = v47;
                  _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alternate device specification for %s allows abstract route %s... Building concrete route...", buf, 0x26u);
                  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v109.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }
            }

            v48 = *(v18 + 60);
            v89[0] = 0;
            v89[1] = 0;
            v88 = v89;
            sub_84C38(buf, a5 + 6, v48);
            sub_7FE64(&v88, *buf, &buf[8]);
            sub_4B0F4(*&buf[8]);
            sub_9B6B8(*(v18 + 192), a5[1], a5[2]);
            v96 = *(v18 + 64);
            v97 = v85;
            v98 = 0;
            v99 = 0;
            operator new();
          }

          v49 = *(v33 + 8);
          v33 = *v34;
          while (v49 != v33)
          {
            if (sub_4B65C((v34 + 1), v49 + 16))
            {
              v33 = v49;
              break;
            }

            v49 = *(v49 + 8);
          }
        }

        while (v33 != v86);
      }
    }

    else
    {
      v67 = sub_5544(8);
      if (*(v67 + 8))
      {
        v68 = *v67;
        if (*v67)
        {
          if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(&v90, *(v18 + 60));
            v69 = (v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v90 : v90.__r_.__value_.__r.__words[0];
            v70 = *(v18 + 56) ? "not " : "";
            *buf = 136315906;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5643;
            v105 = 2080;
            *v106 = v69;
            *&v106[8] = 2080;
            *&v106[10] = v70;
            _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEBUG, "%25s:%-5d VirtualAudioDeviceType %s is currently disabled, and is %s mandatory", buf, 0x26u);
            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    if (*(v18 + 56) != 1)
    {
      goto LABEL_139;
    }

    v71 = sub_5544(8);
    if (*(v71 + 8))
    {
      v72 = *v71;
      if (*v71)
      {
        if (os_log_type_enabled(*v71, OS_LOG_TYPE_DEBUG))
        {
          v73 = *(v18 + 4);
          v74 = v73 > 0x1E ? "????" : off_6CFB08[v73];
          sub_53E8(&v90, v74);
          v75 = (v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v90 : v90.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5730;
          v105 = 2080;
          *v106 = v75;
          _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to build an alternate concrete route for an optional alternate VAD %s; skipping and attempting to recurse...", buf, 0x1Cu);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    sub_263A98(a1, a2, v80, a4 + 1, a5, a6, a7);
    if (*a1)
    {
      v76 = sub_5544(8);
      if (*(v76 + 8))
      {
        v77 = *v76;
        if (*v76)
        {
          if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5736;
            _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d Recursion failed after skipping optional alternate VAD.", buf, 0x12u);
          }
        }
      }

      if (*(a1 + 56) == 1)
      {
        sub_175F78(a1 + 3);
      }

LABEL_139:
      sub_20301C(a1, 1);
      return;
    }

    v78 = sub_5544(8);
    if (*(v78 + 8))
    {
      v79 = *v78;
      if (*v78)
      {
        if (os_log_type_enabled(*v78, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5740;
          _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEBUG, "%25s:%-5d Recursion succeeded; returning.", buf, 0x12u);
        }
      }
    }
  }
}

void sub_265020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, void *a44)
{
  if (*(a33 + 56) == 1)
  {
    sub_175F78((a33 + 24));
  }

  if (a42 == 1)
  {
    sub_86BF8(&a38);
  }

  sub_4B0F4(a44);
  _Unwind_Resume(a1);
}

void sub_265244(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = *(v5 + 16);
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  sub_75234(v7, a2);
  if (*(a2 + 88) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  operator delete(a2);
}

void sub_2652EC(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 88) == 1 && *(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::string *sub_265354(std::string *a1, void *a2, void *a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_FC33C(__p, (a2 + 4));
      if ((v13 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v8 = v13;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a1, v7, v8);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = a2[1];
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
          v10 = a2[2];
          v11 = *v10 == a2;
          a2 = v10;
        }

        while (!v11);
      }

      if (v10 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v10;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_26545C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_265480(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x265468);
}

uint64_t sub_265498(uint64_t a1)
{
  sub_85148(a1 + 216);
  sub_4B0F4(*(a1 + 200));
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4B064(a1 + 128);
  sub_4B064(a1 + 88);
  sub_4B064(a1 + 48);
  v4 = (a1 + 24);
  sub_11C50(&v4);
  v4 = a1;
  sub_11C50(&v4);
  return a1;
}

void sub_265514(std::string *a1, uint64_t a2)
{
  sub_265354(&v14, *a2, (a2 + 8));
  v4 = std::string::insert(&v14, 0, " { Global : ", 0xCuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_265948(&v12, (a2 + 24));
  v6 = std::string::insert(&v12, 0, " VAD Specific Ports :", 0x15uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v13, " }", 2uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v14;
  }

  else
  {
    v10 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v10, size);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_26564C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_2656C4(const void **a1, unint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (v5 - *a1) >> 4;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = &v4[16 * a2];
      while (v5 != v12)
      {
        v13 = *(v5 - 1);
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        v5 -= 16;
      }

      a1[1] = v12;
    }
  }

  else
  {
    v7 = a2 - v6;
    v8 = a1[2];
    if (v7 > (v8 - v5) >> 4)
    {
      if (!(a2 >> 60))
      {
        v16 = a1;
        v9 = v8 - v4;
        v10 = v9 >> 3;
        if (v9 >> 3 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        sub_1DC690(v11);
      }

      sub_189A00();
    }

    v14 = &v5[16 * v7];
    do
    {
      v15 = a3[1];
      *v5 = *a3;
      *(v5 + 1) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
      }

      v5 += 16;
    }

    while (v5 != v14);
    a1[1] = v14;
  }
}

std::string *sub_265830(std::string *a1, uint64_t a2, uint64_t a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_14B79C(__p, (a2 + 16));
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

void sub_26590C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_265930(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x265918);
}

std::string *sub_265948(std::string *a1, void *a2)
{
  sub_53E8(a1, " [ ");
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    while (1)
    {
      sub_22170(&v20, *(v5 + 8));
      v7 = std::string::append(&v20, " : ", 3uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      sub_265354(&v19, v5[5], v5 + 6);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v19;
      }

      else
      {
        v9 = v19.__r_.__value_.__r.__words[0];
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      v11 = std::string::append(&v21, v9, size);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v23 = v11->__r_.__value_.__r.__words[2];
      *__p = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (v23 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v23 >= 0)
      {
        v14 = HIBYTE(v23);
      }

      else
      {
        v14 = __p[1];
      }

      std::string::append(a1, v13, v14);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      v15 = v5[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v17 = *v16 == v5;
          v5 = v16;
        }

        while (!v17);
      }

      if (v16 == v4)
      {
        break;
      }

      std::string::append(a1, "; ", 2uLL);
      v5 = v16;
    }
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_265AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_265B84(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC408;
  *(a2 + 8) = *(a1 + 8);
  return sub_83FDC(a2 + 16, a1 + 16);
}

void sub_265BB8(void *a1)
{
  *a1 = off_6BC408;
  sub_85148((a1 + 2));

  operator delete();
}

void *sub_265C1C(void *a1)
{
  *a1 = off_6BC408;
  sub_85148((a1 + 2));
  return a1;
}

void sub_265C60(uint64_t a1)
{
  sub_85148(a1 + 224);
  sub_4B0F4(*(a1 + 208));
  v2 = *(a1 + 184);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4B064(a1 + 136);
  sub_4B064(a1 + 96);
  sub_4B064(a1 + 56);
  v3 = (a1 + 32);
  sub_11C50(&v3);
  v3 = (a1 + 8);
  sub_11C50(&v3);
}

uint64_t sub_265CDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC3C0;
  sub_7FF98((a2 + 8), (a1 + 8));
  v4 = *(a1 + 184);
  *(a2 + 176) = *(a1 + 176);
  *(a2 + 184) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 192) = *(a1 + 192);
  sub_7FE10((a2 + 200), (a1 + 200));
  result = sub_83FDC(a2 + 224, a1 + 224);
  *(a2 + 256) = *(a1 + 256);
  return result;
}

void sub_265D6C(_Unwind_Exception *a1)
{
  sub_4B0F4(*(v1 + 208));
  v3 = *(v1 + 184);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_1F1DE0((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_265E54(_Unwind_Exception *a1)
{
  sub_4B0F4(*(v1 + 208));
  v4 = *(v1 + 184);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_1F1DE0(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_265E94(uint64_t a1)
{
  *a1 = off_6BC3C0;
  sub_85148(a1 + 224);
  sub_4B0F4(*(a1 + 208));
  v2 = *(a1 + 184);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4B064(a1 + 136);
  sub_4B064(a1 + 96);
  sub_4B064(a1 + 56);
  v3 = (a1 + 32);
  sub_11C50(&v3);
  v3 = (a1 + 8);
  sub_11C50(&v3);

  operator delete();
}

uint64_t sub_265F4C(uint64_t a1)
{
  *a1 = off_6BC3C0;
  sub_85148(a1 + 224);
  sub_4B0F4(*(a1 + 208));
  v2 = *(a1 + 184);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4B064(a1 + 136);
  sub_4B064(a1 + 96);
  sub_4B064(a1 + 56);
  v4 = (a1 + 32);
  sub_11C50(&v4);
  v4 = (a1 + 8);
  sub_11C50(&v4);
  return a1;
}

uint64_t sub_265FE4(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 152))(a2);
  if (result)
  {
    v4 = *(*(a1 + 8) + 128);
    if (!v4)
    {
      sub_46A74();
    }

    v5 = *(*v4 + 48);

    return v5();
  }

  return result;
}

__n128 sub_266098(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC450;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_266144(void *a1, unsigned int a2, _DWORD *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }
}

__n128 sub_266368(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC498;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2663B0(uint64_t *a1)
{
  sub_25704(&v21, a1, "", 1223);
  sub_25704(&v19, a1 + 2, "", 1224);
  v2 = v21;
  if ((*(v21 + 184) & 8) != 0 || (*(v19 + 184) & 8) != 0)
  {
    v4 = sub_5544(8);
    v5 = sub_5544(35);
    v6 = 0;
    *buf = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&buf[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_10;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_10:
    v9 = *v4;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v17, *(v2 + 144));
      v10 = v18;
      v11 = v17[0];
      sub_22170(__p, *(v19 + 144));
      v12 = v17;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v16 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      v24 = 1024;
      v25 = 1230;
      v26 = 2080;
      v27 = v12;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Culling route connection because silent mode is enabled. Source port type = '%s', Destination port type = '%s'", buf, 0x26u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if (v20)
  {
    sub_1A8C0(v20);
  }

  if (v22)
  {
    sub_1A8C0(v22);
  }

  return v3;
}

void sub_2665BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_266608(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a2[2];
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v9 = *(a1 + 40);
  *(a1 + 32) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  *(a1 + 48) = a2[3];
  return a1;
}

uint64_t sub_266680(uint64_t *a1)
{
  sub_25704(&v13, a1, "", 1272);
  sub_25704(&v11, a1 + 2, "", 1273);
  v2 = v11;
  if (((*(*v11 + 112))(v11) & 0x100000000) != 0 && (*(*v2 + 112))(v2) == 1701869160)
  {
    v3 = sub_5544(8);
    v4 = sub_5544(35);
    v5 = 0;
    *buf = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&buf[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_10:
    v9 = *v3;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      v16 = 1024;
      v17 = 1278;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Culling route connection because CarKit BT port is not allowed in emergency alert routes.", buf, 0x12u);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    sub_1A8C0(v12);
  }

  if (v14)
  {
    sub_1A8C0(v14);
  }

  return v8;
}

void sub_26685C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_266898(uint64_t a1)
{
  sub_25704(&v13, (a1 + 16), "", 1323);
  v1 = v13;
  if ((v13[36] & 0xFFFFFFDF) == 0x70687042 && (*(*v13 + 112))(v13) != 1701865584)
  {
    v3 = sub_5544(8);
    v4 = sub_5544(35);
    v5 = 0;
    *buf = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&buf[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_10:
    v8 = *v3;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (*(v1 + 303) < 0)
      {
        sub_54A0(__p, *(v1 + 35), *(v1 + 36));
      }

      else
      {
        *__p = *(v1 + 70);
        v12 = *(v1 + 37);
      }

      v9 = __p;
      if (v12 < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      v16 = 1024;
      v17 = 1334;
      v18 = 2080;
      v19 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Culling route connection because port %s is not allowed for kVirtualAudioPlugInRoutingCategoryAlarm, Destination port is not headphones", buf, 0x1Cu);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if (v14)
  {
    sub_1A8C0(v14);
  }

  return v2;
}

void sub_266A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_266B50(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, void *a5, void *a6, int a7, void *a8, uint64_t a9, void *a10, char a11, uint64_t *a12, char a13, uint64_t a14, void *a15)
{
  *a1 = off_6BC228;
  *(a1 + 8) = *a3;
  sub_44E44((a1 + 24), a4);
  sub_7FE10((a1 + 48), a5);
  sub_7FEEC((a1 + 72), a5 + 3);
  sub_44E44((a1 + 96), a6);
  *(a1 + 120) = a7;
  sub_7FD64((a1 + 128), a8);
  *(a1 + 152) = *a9;
  if (*(a9 + 31) < 0)
  {
    sub_54A0((a1 + 160), *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v22 = *(a9 + 8);
    *(a1 + 176) = *(a9 + 24);
    *(a1 + 160) = v22;
  }

  *(a1 + 184) = *(a9 + 32);
  sub_7FF98((a1 + 192), a10);
  *(a1 + 360) = a11;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  sub_78B6C((a1 + 368), *a12, a12[1], 0xCBEEA4E1A08AD8F3 * ((a12[1] - *a12) >> 3));
  *(a1 + 392) = a13;
  *(a1 + 400) = *a14;
  v23 = *(a14 + 8);
  *(a1 + 408) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 416) = *(a14 + 16);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 424) = a2;
  *(a1 + 432) = a1 + 440;
  *(a1 + 456) = *a15;
  v24 = *a3;
  v25 = 0;
  v26 = 0;
  LOBYTE(__p) = 0;
  v28 = 0;
  sub_78A5C((a1 + 432), &v24);
}

void sub_266D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  sub_4B0F4(v20[17]);
  sub_477A0(v20[13]);
  sub_2626B0((v20 + 6));
  sub_477A0(v20[4]);
  _Unwind_Resume(a1);
}

void sub_266E50(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (*a2 == v4)
  {
    v5 = *a2;
  }

  else
  {
    v5 = *a2;
    while (**v5 != 1986291046)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }
  }

  if (v5 != v4)
  {
    if ((v4 - *a2) >= 9)
    {
      v9 = sub_5544(8);
      if (*(v9 + 8))
      {
        v10 = *v9;
        if (*v9)
        {
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
          {
            v11 = (a2[1] - *a2) >> 3;
            *v25 = 136315650;
            *&v25[4] = "RoutingManager.cpp";
            *&v25[12] = 1024;
            *&v25[14] = 1984;
            v26 = 2048;
            v27 = v11;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Located concrete route in a %lu item concrete route pointer list.", v25, 0x1Cu);
          }
        }
      }
    }

    if (*(*v5 + 32) == 1)
    {
      sub_25704(v25, (*(*v5 + 24) + 16), "", 1988);
      v12 = *(*v25 + 144);
      if (*&v25[8])
      {
        sub_1A8C0(*&v25[8]);
      }

      if (v12 == 1885433888)
      {
        sub_25704(v25, (*(*v5 + 24) + 32), "", 1990);
        v13 = *(*v25 + 144);
        if (*&v25[8])
        {
          sub_1A8C0(*&v25[8]);
        }

        if (v13 != 1885433888)
        {
          v14 = *(*(*v5 + 24) + 40);
          if (v14)
          {
            v15 = std::__shared_weak_count::lock(v14);
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v15);
            }
          }

          operator new();
        }

        v22 = sub_5544(14);
        v23 = *v22;
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          *v25 = 136315394;
          *&v25[4] = "RoutingManager.cpp";
          *&v25[12] = 1024;
          *&v25[14] = 1991;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v25, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *v25 = 136315394;
        *&v25[4] = "RoutingManager.cpp";
        *&v25[12] = 1024;
        *&v25[14] = 1989;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v25, 0x12u);
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v21, "Precondition failure.");
    }

    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      *&v25[4] = "RoutingManager.cpp";
      *&v25[12] = 1024;
      *&v25[14] = 1987;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v25, 0x12u);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v18, "Precondition failure.");
  }

LABEL_5:
  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6)
  {
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      *&v25[4] = "RoutingManager.cpp";
      *&v25[12] = 1024;
      *&v25[14] = 1982;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate a concrete route for device type kVirtualAudioDeviceTypeDefault.", v25, 0x12u);
    }
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v8, "Unable to locate a concrete route for device type kVirtualAudioDeviceTypeDefault.");
}

void sub_267388(uint64_t a1)
{
  sub_9DB70(a1);

  operator delete();
}

uint64_t *sub_2673C4(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = sub_26746C(a1, a2, &v6, &v5, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t *sub_26746C(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *(a2 + 8), v6 > a5))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_17:
      if (v7)
      {
        *a3 = v9;
        return v9 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = *(v8 + 8);
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    if (*(v9 + 8) < a5)
    {
      goto LABEL_17;
    }

    v14 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v14;
          v16 = *(v14 + 32);
          if (v16 <= a5)
          {
            break;
          }

          v14 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v16 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v14 = v15[1];
      }

      while (v14);
      goto LABEL_43;
    }

LABEL_42:
    v15 = (a1 + 1);
LABEL_43:
    *a3 = v15;
    return v5;
  }

  if (v6 >= a5)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = a2[1];
    do
    {
      a4 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v17 = a2;
    do
    {
      a4 = v17[2];
      v13 = *a4 == v17;
      v17 = a4;
    }

    while (!v13);
  }

  if (a4 != v5 && *(a4 + 8) <= a5)
  {
    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v18;
          v19 = *(v18 + 32);
          if (v19 <= a5)
          {
            break;
          }

          v18 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v19 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v18 = v15[1];
      }

      while (v18);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v10)
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

void sub_2675F4(uint64_t a1)
{
  sub_D0710(a1);

  operator delete();
}

uint64_t sub_267630(uint64_t a1)
{
  *a1 = off_6BC288;
  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  sub_477A0(*(a1 + 520));
  v2 = *(a1 + 464);
  if (v2)
  {
    *(a1 + 472) = v2;
    operator delete(v2);
  }

  return sub_9DB70(a1);
}

void sub_2676A8(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v22[0] = *a2;
  v22[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_11AB44(&v23, v22);
  v5 = std::string::insert(&v23, 0, "[ Port: ", 8uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v24, ", output selection overrode input: ", 0x23uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v21, *(a2 + 17));
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v21;
  }

  else
  {
    v9 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v25, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v26, ", input selection overrode output: ", 0x23uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v20, *(a2 + 16));
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v20;
  }

  else
  {
    v15 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v20.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&v27, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v28, " ]", 2uLL);
  *a1 = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_2678DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v43 - 57) < 0)
  {
    operator delete(*(v43 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
  }

  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2679B4(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  v2 = (result + 8);
  *(result + 16) = 0;
  *result = result + 8;
  v5 = *(a2 + 8);
  v3 = a2 + 8;
  v4 = v5;
  if (v5)
  {
    v6 = result;
    v7 = v3;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= 0x63736176;
      v10 = v8 < 0x63736176;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != v3 && *(v7 + 32) < 0x63736177u)
    {
      v11 = v7 + 40;
      v12 = *(v7 + 48);
      if (v12 != v7 + 40)
      {
        v13 = *(v7 + 56);
        do
        {
          result = sub_4B1A0(v12 + 16, 0x696D646663736176uLL);
          if (result)
          {
            for (i = *(v12 + 24); i != v12 + 16; i = *(i + 8))
            {
              v15 = *(i + 20);
              v23 = v15;
              v16 = *v2;
              if (*v2)
              {
                v17 = v2;
                do
                {
                  v18 = *(v16 + 32);
                  v9 = v18 >= v15;
                  v19 = v18 < v15;
                  if (v9)
                  {
                    v17 = v16;
                  }

                  v16 = *(v16 + 8 * v19);
                }

                while (v16);
                if (v17 != v2 && v15 >= *(v17 + 8))
                {
                  v20 = sub_5544(14);
                  v21 = *v20;
                  if (*v20)
                  {
                    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      *&buf[4] = "RoutingManager.cpp";
                      v25 = 1024;
                      v26 = 908;
                      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unexpected port type duplication in connection list", buf, 0x12u);
                    }
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Unexpected port type duplication in connection list");
                }
              }

              *buf = &v23;
              result = sub_916FC(v6, v15, buf);
              *(result + 40) = v13--;
            }
          }

          v12 = *(v12 + 8);
        }

        while (v12 != v11);
      }
    }
  }

  return result;
}

uint64_t *sub_267C0C(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      v9 = *(*a2 + 24);
      v54[0] = *(*a2 + 16);
      v54[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(a1 + 24);
      v53[0] = *(a1 + 16);
      v53[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = sub_268040(a4, v54, v53);
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      if (v11)
      {
        v13 = *v8;
        v12 = v8[1];
        *(v13 + 8) = v12;
        *v12 = v13;
        v14 = *v4;
        *(v14 + 8) = v8;
        *v8 = v14;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v16 = a3 >> 1;
      v17 = (a3 >> 1) + 1;
      v18 = a1;
      do
      {
        v18 = v18[1];
        --v17;
      }

      while (v17 > 1);
      v19 = sub_267C0C(a1, v18, a3 >> 1, a4);
      v4 = sub_267C0C(v18, a2, a3 - v16, a4);
      v20 = v4[3];
      v52[0] = v4[2];
      v52[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v19[3];
      v51[0] = v19[2];
      v51[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = sub_268040(a4, v52, v51);
      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      if (v22)
      {
        for (i = v4[1]; i != a2; i = i[1])
        {
          v24 = i[3];
          v50[0] = i[2];
          v50[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = v19[3];
          v49[0] = v19[2];
          v49[1] = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = sub_268040(a4, v50, v49);
          if (v25)
          {
            std::__shared_weak_count::__release_weak(v25);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
            if (!v26)
            {
              break;
            }
          }

          else if (!v26)
          {
            break;
          }
        }

        v27 = *i;
        v28 = *(*i + 8);
        v29 = *v4;
        *(v29 + 8) = v28;
        *v28 = v29;
        v30 = *v19;
        v31 = v19[1];
        *(v30 + 8) = v4;
        *v4 = v30;
        *v19 = v27;
        *(v27 + 8) = v19;
      }

      else
      {
        v31 = v19[1];
        i = v4;
        v4 = v19;
      }

      if (v31 != i && i != a2)
      {
        v32 = i;
        do
        {
          v33 = i[3];
          v48[0] = i[2];
          v48[1] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = v31[3];
          v47[0] = v31[2];
          v47[1] = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v35 = sub_268040(a4, v48, v47);
          if (v34)
          {
            std::__shared_weak_count::__release_weak(v34);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_weak(v33);
          }

          if (v35)
          {
            for (j = i[1]; j != a2; j = j[1])
            {
              v37 = j[3];
              v46[0] = j[2];
              v46[1] = v37;
              if (v37)
              {
                atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v38 = v31[3];
              v45[0] = v31[2];
              v45[1] = v38;
              if (v38)
              {
                atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v39 = sub_268040(a4, v46, v45);
              if (v38)
              {
                std::__shared_weak_count::__release_weak(v38);
              }

              if (v37)
              {
                std::__shared_weak_count::__release_weak(v37);
                if (!v39)
                {
                  break;
                }
              }

              else if (!v39)
              {
                break;
              }
            }

            v40 = *j;
            v41 = *(*j + 8);
            v42 = *i;
            *(v42 + 8) = v41;
            *v41 = v42;
            if (v32 == i)
            {
              v32 = j;
            }

            v44 = *v31;
            v43 = v31[1];
            *(v44 + 8) = i;
            *i = v44;
            *v31 = v40;
            *(v40 + 8) = v31;
            v31 = v43;
            i = j;
          }

          else
          {
            v31 = v31[1];
          }
        }

        while (v31 != v32 && i != a2);
      }
    }
  }

  return v4;
}

void sub_267F9C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_267FE8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_15B370(*(v1 + 32));
    sub_24A81C(v1);
    operator delete();
  }

  return a1;
}

BOOL sub_268040(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v21 = 0;
  v22 = 0;
  v6 = a2[1];
  if (v6)
  {
    v8 = std::__shared_weak_count::lock(v6);
    v9 = v8;
    if (v8)
    {
      v10 = *a2;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v21 = v10;
      v22 = v8;
      sub_1A8C0(v8);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_26817C(v5, &v21);
  v12 = *a1;
  v19 = 0;
  v20 = 0;
  v13 = a3[1];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    v15 = v14;
    if (v14)
    {
      v16 = *a3;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v19 = v16;
      v20 = v14;
      sub_1A8C0(v14);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = sub_26817C(v12, &v19);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return v11 < v17;
}

void sub_268150(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26817C(uint64_t a1, uint64_t *a2)
{
  sub_88A00(&v25, a2, "", 923);
  if (*(v25 + 184))
  {
    sub_250A70(v22, v25);
    sub_76388(&v23, v22);
    v12 = v24;
    if (v24 == &v23)
    {
      goto LABEL_24;
    }

    v15 = *(a1 + 8);
    v14 = a1 + 8;
    v13 = v15;
    while (1)
    {
      v16 = v12[2];
      if ((*(v16 + 184) & 1) == 0)
      {
        break;
      }

      v12 = v12[1];
      if (v12 == &v23)
      {
        goto LABEL_24;
      }
    }

    if (!v13)
    {
      goto LABEL_24;
    }

    v17 = *(v16 + 144);
    v18 = v14;
    do
    {
      v19 = *(v13 + 32);
      v9 = v19 >= v17;
      v20 = v19 < v17;
      if (v9)
      {
        v18 = v13;
      }

      v13 = *(v13 + 8 * v20);
    }

    while (v13);
    if (v18 == v14 || v17 < *(v18 + 32))
    {
LABEL_24:
      v11 = 0;
    }

    else
    {
      v11 = *(v18 + 40);
    }

    sub_87980(&v23);
    sub_65310(v22);
  }

  else
  {
    v5 = *(a1 + 8);
    v4 = a1 + 8;
    v3 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = *(v25 + 144);
    v7 = v4;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != v4 && v6 >= *(v7 + 32))
    {
      v11 = *(v7 + 40);
    }

    else
    {
LABEL_10:
      v11 = 0;
    }
  }

  if (v26)
  {
    sub_1A8C0(v26);
  }

  return v11;
}

void sub_2682BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_65310(&a9);
  v11 = *(v9 - 24);
  if (v11)
  {
    sub_1A8C0(v11);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_2682E4(uint64_t *a1, void **a2)
{
  sub_27A4();
  v14 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "RoutingManager.cpp";
      v17 = 1024;
      v18 = 2051;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v5 = *a2 + 1;
  v6 = **a2;
  if (v6 != v5)
  {
    do
    {
      if ((v6[16] & 1) == 0)
      {
        operator new();
      }

      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != v5);
  }

  return sub_210C50(&v14);
}

void sub_2684DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

void sub_268524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = 0;
  v75 = 0;
  v6 = *(a3 + 144);
  if (!v6)
  {
    *a1 = *(a3 + 136);
    *(a1 + 8) = 0;
    goto LABEL_12;
  }

  v75 = std::__shared_weak_count::lock(v6);
  v9 = *(a3 + 136);
  if (!v75 || (v74 = *(a3 + 136), !v9))
  {
    v12 = *(a3 + 144);
    *a1 = v9;
    *(a1 + 8) = v12;
    if (v12)
    {
      v13 = (v12 + 16);
LABEL_10:
      atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
    }

LABEL_12:
    *(a1 + 16) = 0;
    goto LABEL_153;
  }

  v10 = *a3;
  if (*a3 > 1668313714)
  {
    if (v10 != 1668313715 && v10 != 1668576377)
    {
      v11 = 1668703084;
      goto LABEL_16;
    }
  }

  else if (v10 != 1668301427 && v10 != 1668309362)
  {
    v11 = 1668313666;
LABEL_16:
    if (v10 == v11 || *(a2 + 32) == 1668114797)
    {
      goto LABEL_18;
    }

    v70 = sub_5544(8);
    v71 = *v70;
    if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2079;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating user preferred input usage: Not a play-And-record or VoiceCall route. returning early", buf, 0x12u);
    }

    v72 = *(a3 + 144);
    *a1 = *(a3 + 136);
    *(a1 + 8) = v72;
    if (v72)
    {
      v13 = (v72 + 16);
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_18:
  v73 = 0;
  if (*(a4 + 16))
  {
    v14 = a4 + 8;
    v15 = *(a4 + 8);
    if (v15)
    {
      v16 = a4 + 8;
      do
      {
        v17 = *(v15 + 32);
        v18 = v17 >= 0x66637275;
        v19 = v17 < 0x66637275;
        if (v18)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v16 != v14 && *(v16 + 32) <= 0x66637275u)
      {
        for (i = *(v16 + 48); i != (v16 + 40); i = i[1])
        {
          v21 = i[3];
          if (v21)
          {
            v22 = std::__shared_weak_count::lock(v21);
            if (v22)
            {
              v23 = v22;
              v24 = i[2];
              if (v24 && v24[36] == 1886745449)
              {
                v25 = (*(*v24 + 160))(v24);
                sub_1A8C0(v23);
                if (v25)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                sub_1A8C0(v23);
              }
            }
          }
        }

        v14 = v16;
      }
    }

    v26 = (v14 + 40);
    for (j = *(v14 + 48); ; j = j[1])
    {
      if (j == v26)
      {
        v33 = 1;
        goto LABEL_49;
      }

      v28 = j[3];
      if (!v28)
      {
        break;
      }

      v29 = std::__shared_weak_count::lock(v28);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      v31 = j[2];
      if (!v31 || ((*(*v31 + 160))(j[2]) & 1) != 0)
      {
        sub_1A8C0(v30);
        break;
      }

      v32 = v31[92];
      sub_1A8C0(v30);
      if (v32)
      {
        break;
      }
    }

    v33 = 0;
LABEL_49:
    v73 = v33;
  }

  v34 = sub_5544(8);
  v35 = *v34;
  if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2108;
    *&buf[18] = 1024;
    *&buf[20] = v73;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PortUpdate has unroutable output ports only: %d", buf, 0x18u);
  }

  v36 = sub_5544(8);
  v37 = *v36;
  if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
  {
    atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_23148(v96, v74 + 2);
    if (v96[23] >= 0)
    {
      v38 = v96;
    }

    else
    {
      v38 = *v96;
    }

    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2118;
    *&buf[18] = 2080;
    *&buf[20] = v38;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating usage of user preferred input: %s", buf, 0x1Cu);
    if ((v96[23] & 0x80000000) != 0)
    {
      operator delete(*v96);
    }

    sub_1A8C0(v75);
  }

  *buf = buf;
  *&buf[8] = buf;
  *&buf[16] = 0;
  sub_269208(&v88, a2, a3, buf, 0, (a2 + 472));
  sub_76304(buf);
  v39 = sub_5544(8);
  v40 = *v39;
  if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v96;
    sub_BCD50(v96, a3);
    if (v96[23] < 0)
    {
      v41 = *v96;
    }

    v42 = v91;
    sub_11AB44(v91, a3 + 136);
    if (v91[23] < 0)
    {
      v42 = *v91;
    }

    if (*(&v89 + 1) == v89)
    {
      sub_269EF8();
    }

    sub_3FEC0C(&v87, v89);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v87;
    }

    else
    {
      v43 = v87.__r_.__value_.__r.__words[0];
    }

    *buf = 136316162;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2153;
    *&buf[18] = 2080;
    *&buf[20] = v41;
    v99 = 2080;
    v100 = v42;
    v101 = 2080;
    v102 = v43;
    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Active ports for route configuration (%s), user preferred input: (%s) returned: %s", buf, 0x30u);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }

    if ((v96[23] & 0x80000000) != 0)
    {
      operator delete(*v96);
    }
  }

  sub_269F10(&v85, v89, *(&v89 + 1), 1);
  sub_269F10(&v83, v89, *(&v89 + 1), 0);
  sub_7FB94(buf, a3);
  v44 = v104;
  v103 = 0;
  v104 = 0;
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  *v91 = v91;
  *&v91[8] = v91;
  *&v91[16] = 0;
  sub_269208(v96, a2, buf, v91, 0, (a2 + 472));
  v88 = *v96;
  sub_DF1AC(&v89);
  v89 = *&v96[8];
  v90 = *&v96[24];
  memset(&v96[8], 0, 24);
  v87.__r_.__value_.__r.__words[0] = &v96[8];
  sub_847A8(&v87);
  sub_76304(v91);
  v45 = sub_5544(8);
  v46 = *v45;
  if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_DEFAULT))
  {
    v47 = v91;
    sub_BCD50(v91, buf);
    if (v91[23] < 0)
    {
      v47 = *v91;
    }

    sub_11AB44(&v87, &v103);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v87;
    }

    else
    {
      v48 = v87.__r_.__value_.__r.__words[0];
    }

    if (*(&v89 + 1) == v89)
    {
      sub_269EF8();
    }

    sub_3FEC0C(&__p, v89);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *v96 = 136316162;
    *&v96[4] = "RoutingManager.cpp";
    *&v96[12] = 1024;
    *&v96[14] = 2162;
    *&v96[18] = 2080;
    *&v96[20] = v47;
    *&v96[28] = 2080;
    *&v96[30] = v48;
    *&v96[38] = 2080;
    v97 = p_p;
    _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Active ports for route configuration (%s), user preferred input: (%s) returned: %s", v96, 0x30u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }
  }

  sub_269F10(&v80, v89, *(&v89 + 1), 1);
  sub_269F10(&v78, v89, *(&v89 + 1), 0);
  v50 = v85;
  if (v85 && v80)
  {
    *v96 = &v74;
    *&v96[8] = a4;
    *&v96[16] = &v83;
    *&v96[24] = &v78;
    *&v96[32] = &v80;
    v97 = &v73;
    os_unfair_lock_opaque = v85[36]._os_unfair_lock_opaque;
    v52 = v80[36]._os_unfair_lock_opaque;
    v53 = (v52 & 0xFFFFFFDF) == 0x70687042 && (os_unfair_lock_opaque & 0xFFFFFFDF) == 1885892674;
    if (!v53 && os_unfair_lock_opaque != v52)
    {
      goto LABEL_105;
    }

    if (sub_26A1EC(v96))
    {
      os_unfair_lock_opaque = v50[36]._os_unfair_lock_opaque;
      v52 = v80[36]._os_unfair_lock_opaque;
LABEL_105:
      if (os_unfair_lock_opaque != v52)
      {
        v54 = sub_5544(8);
        v55 = *v54;
        if (*v54)
        {
          if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEFAULT))
          {
            sub_23148(&v87, v50 + 2);
            if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = &v87;
            }

            else
            {
              v56 = v87.__r_.__value_.__r.__words[0];
            }

            sub_23148(&__p, v80 + 2);
            v57 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v58 = __p.__r_.__value_.__r.__words[0];
            sub_11AB44(v76, a3 + 136);
            v59 = &__p;
            if (v57 < 0)
            {
              v59 = v58;
            }

            if (v77 >= 0)
            {
              v60 = v76;
            }

            else
            {
              v60 = v76[0];
            }

            *v91 = 136316162;
            *&v91[4] = "RoutingManager.cpp";
            *&v91[12] = 1024;
            *&v91[14] = 2244;
            *&v91[18] = 2080;
            *&v91[20] = v56;
            v92 = 2080;
            v93 = v59;
            v94 = 2080;
            v95 = v60;
            _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Output ports are different (with user preferred input honored: %s vs not honored: %s), user-preferred-input (%s) to be ignored", v91, 0x30u);
            if (v77 < 0)
            {
              operator delete(v76[0]);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      if (sub_26A1EC(v96))
      {
        v61 = sub_5544(8);
        v62 = *v61;
        if (*v61)
        {
          if (os_log_type_enabled(*v61, OS_LOG_TYPE_DEFAULT))
          {
            sub_11AB44(&v87, a3 + 136);
            v63 = (v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v87 : v87.__r_.__value_.__r.__words[0];
            *v91 = 136315650;
            *&v91[4] = "RoutingManager.cpp";
            *&v91[12] = 1024;
            *&v91[14] = 2247;
            *&v91[18] = 2080;
            *&v91[20] = v63;
            _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "%25s:%-5d User preferred input is BT/carplay like. user-preferred-input (%s) to be ignored", v91, 0x1Cu);
            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v64 = 1;
      goto LABEL_132;
    }
  }

  v64 = 0;
LABEL_132:
  if (v79)
  {
    sub_1A8C0(v79);
  }

  if (v81)
  {
    sub_1A8C0(v81);
  }

  sub_4AF90(buf);
  if (v84)
  {
    sub_1A8C0(v84);
  }

  if (v86)
  {
    sub_1A8C0(v86);
  }

  *buf = &v89;
  sub_847A8(buf);
  if (v64)
  {
    v65 = sub_5544(8);
    v66 = *v65;
    if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_DEFAULT))
    {
      sub_11AB44(v96, a3 + 136);
      v67 = v96[23] >= 0 ? v96 : *v96;
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2258;
      *&buf[18] = 2080;
      *&buf[20] = v67;
      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Output ports incompatible with user preferred input, clearing user preferred input : %s", buf, 0x1Cu);
      if ((v96[23] & 0x80000000) != 0)
      {
        operator delete(*v96);
      }
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    v68 = 1;
    *(a1 + 16) = 0;
  }

  else
  {
LABEL_149:
    v69 = *(a3 + 144);
    *a1 = *(a3 + 136);
    *(a1 + 8) = v69;
    if (v69)
    {
      atomic_fetch_add_explicit((v69 + 16), 1uLL, memory_order_relaxed);
    }

    v68 = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 17) = v68;
LABEL_153:
  if (v75)
  {
    sub_1A8C0(v75);
  }
}

void sub_26907C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void **a57)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(*v58);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  sub_4AF90(&a57);
  if (a26)
  {
    sub_1A8C0(a26);
  }

  if (a28)
  {
    sub_1A8C0(a28);
  }

  *(v58 + 152) = v57;
  sub_847A8(&a57);
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_269208(int *a1, _BYTE *a2, unsigned int *a3, uint64_t a4, int a5, void *a6)
{
  sub_27A4();
  v41 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v11 = atomic_load(&qword_6E9558);
  if (v11 != pthread_self())
  {
    v35 = sub_5544(14);
    v36 = *v35;
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      *v53 = 136315394;
      v54 = "RoutingManager.cpp";
      v55 = 1024;
      v56 = 2393;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", v53, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *a1 = 2;
  sub_7EDC8(v53, a2, a3);
  sub_764E0(&v40, a4);
  v12 = *(*a2 + 8);
  if (v12)
  {
    v13 = *a2 + 8;
    do
    {
      v14 = *(v12 + 32);
      v15 = v14 >= *v53;
      v16 = v14 < *v53;
      if (v15)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * v16);
    }

    while (v12);
    if (v13 != *a2 + 8 && *v53 >= *(v13 + 32))
    {
      memset(&v39, 0, sizeof(v39));
      memset(buf, 0, 24);
      strcpy(&buf[24], "cwdv");
      BYTE2(v45) = 0;
      data = 3;
      *(&v47 + 1) = 0;
      v48 = 0;
      *&v47 = &v47 + 8;
      v49 = 44739242;
      v51 = 0;
      v52 = 0;
      v50 = 0;
      if (a5)
      {
        if (a5 == 1)
        {
          LODWORD(v38.__r_.__value_.__l.__data_) = 1885544823;
          LODWORD(v42.__r_.__value_.__l.__data_) = 3;
          sub_4BA00(&v42.__r_.__value_.__l.__size_, &v38, 1);
          data = v42.__r_.__value_.__l.__data_;
          sub_477A0(*(&v47 + 1));
          v17 = v42.__r_.__value_.__r.__words[2];
          v47 = *&v42.__r_.__value_.__r.__words[1];
          v48 = __p;
          if (__p)
          {
            *(v42.__r_.__value_.__r.__words[2] + 16) = &v47 + 8;
            v42.__r_.__value_.__l.__size_ = &v42.__r_.__value_.__r.__words[2];
            v42.__r_.__value_.__r.__words[2] = 0;
            __p = 0;
            v17 = 0;
          }

          else
          {
            *&v47 = &v47 + 8;
          }

          sub_477A0(v17);
        }

        else
        {
          v49 = 44673706;
        }
      }

      operator new();
    }
  }

  if (*a1)
  {
    goto LABEL_43;
  }

  v18 = sub_5544(8);
  if (*(v18 + 8))
  {
    v19 = *v18;
    if (*v18)
    {
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
      {
        sub_BCD50(&v38, v53);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v38;
        }

        else
        {
          v20 = v38.__r_.__value_.__r.__words[0];
        }

        memset(&v39, 0, sizeof(v39));
        std::string::append(&v39, "{ ", 2uLL);
        v21 = *(a1 + 1);
        for (i = *(a1 + 2); v21 != i; v21 += 14)
        {
          sub_3FEC0C(&v42, v21);
          if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v42;
          }

          else
          {
            v23 = v42.__r_.__value_.__r.__words[0];
          }

          if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v42.__r_.__value_.__l.__size_;
          }

          std::string::append(&v39, v23, size);
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }
        }

        std::string::append(&v39, " }", 2uLL);
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v39;
        }

        else
        {
          v25 = v39.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2435;
        *&buf[18] = 2080;
        *&buf[20] = v20;
        *&buf[28] = 2080;
        v45 = v25;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d For %s: %s", buf, 0x26u);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (*a1)
  {
LABEL_43:
    v26 = sub_5544(8);
    v27 = sub_5544(35);
    v28 = 0;
    *buf = 0x100000002;
    v29 = *(v26 + 8);
    while (1)
    {
      v30 = *&buf[v28];
      if (((v29 & v30) != 0) != ((*(v27 + 8) & v30) != 0))
      {
        break;
      }

      v28 += 4;
      if (v28 == 8)
      {
        goto LABEL_49;
      }
    }

    if ((v29 & v30) == 0)
    {
      v26 = v27;
    }

LABEL_49:
    v31 = *v26;
    if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_BCD50(&v42, v53);
      v32 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
      v33 = *a1;
      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2437;
      *&buf[18] = 2080;
      *&buf[20] = v32;
      *&buf[28] = 1024;
      LODWORD(v45) = v33;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d For %s: failed with result %d", buf, 0x22u);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }
  }

  *buf = &v40;
  sub_9DD40(buf);
  sub_4AF90(v53);
  return sub_210C50(&v41);
}

void sub_269C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_46934(v54 + 464);
  sub_9DB70(v54);
  operator delete();
}

void sub_269F10(void *a1, _DWORD *a2, _DWORD *a3, char a4)
{
  if (a2 == a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    while (v6[1] || *v6 != 1986291046)
    {
      v6 += 14;
      if (v6 == a3)
      {
        v6 = a3;
        break;
      }
    }

    while (a2[1] || *a2 != 1986291305)
    {
      a2 += 14;
      if (a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  if (v6 == a3)
  {
    v16 = sub_5544(8);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "RoutingManager.cpp";
      v25 = 1024;
      v26 = 2129;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No device info for vdef found", &v23, 0x12u);
    }

    goto LABEL_39;
  }

  if ((a4 & 1) != 0 || a2 == a3)
  {
    a2 = v6;
  }

  if (a2[1] || *a2 != 1986291046 && *a2 != 1986291305)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "RoutingManager.cpp";
      v25 = 1024;
      v26 = 2136;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v23, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

  v9 = a2 + 2;
  v10 = *(a2 + 2);
  if (v10 == a2 + 2)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v11 = *(v10 + 24);
    if (!v11)
    {
      goto LABEL_34;
    }

    v12 = std::__shared_weak_count::lock(v11);
    if (!v12)
    {
      goto LABEL_34;
    }

    v13 = *(v10 + 16);
    if (!v13)
    {
LABEL_33:
      sub_1A8C0(v12);
      goto LABEL_34;
    }

    v14 = *(v13 + 184);
    if (a4)
    {
      sub_1A8C0(v12);
      if ((v14 & 1) == 0)
      {
        break;
      }

      goto LABEL_34;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

    v15 = *(v13 + 144);
    sub_1A8C0(v12);
    if (v15 == 1886216820)
    {
      break;
    }

LABEL_34:
    v10 = *(v10 + 8);
    if (v10 == v9)
    {
      goto LABEL_39;
    }
  }

  if (v10 == v9)
  {
LABEL_39:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  *a1 = 0;
  a1[1] = 0;
  v18 = *(v10 + 24);
  if (v18)
  {
    v19 = std::__shared_weak_count::lock(v18);
    a1[1] = v19;
    if (v19)
    {
      *a1 = *(v10 + 16);
    }
  }
}

uint64_t sub_26A1EC(uint64_t **a1)
{
  v2 = **a1;
  if (*(v2 + 148) == 1885544823 || *(v2 + 144) == 1886614633)
  {
    v3 = a1[1];
    if (v3[2])
    {
      v6 = v3[1];
      v4 = v3 + 1;
      v5 = v6;
      if (!v6)
      {
        goto LABEL_31;
      }

      v7 = a1[2];
      v8 = a1[3];
      v9 = v4;
      do
      {
        v10 = *(v5 + 32);
        v11 = v10 >= 0x66637275;
        v12 = v10 < 0x66637275;
        if (v11)
        {
          v9 = v5;
        }

        v5 = *(v5 + 8 * v12);
      }

      while (v5);
      if (v9 != v4 && *(v9 + 8) <= 0x66637275u && *v7 && *v8 && *(*v7 + 144) == 1886216820 && (v13 = sub_A82E4(*v8), v13 != sub_A82E4(*v7)) && (v14 = v9 + 5, v15 = v9[6], v15 != v9 + 5))
      {
        while (1)
        {
          v16 = v15[3];
          if (v16)
          {
            v17 = std::__shared_weak_count::lock(v16);
            if (v17)
            {
              v18 = v15[2];
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
            v17 = 0;
          }

          if (v18[36] == 1885892706 && (*(*v18 + 160))(v18) && (v19 = sub_A82E4(v18), v19 == sub_A82E4(*v8)))
          {
            v20 = sub_A82E4(v18);
            v21 = v20 != sub_A82E4(*v7);
          }

          else
          {
            v21 = 0;
          }

          if (v17)
          {
            sub_1A8C0(v17);
          }

          if (v21)
          {
            break;
          }

          v15 = v15[1];
          if (v15 == v14)
          {
            goto LABEL_31;
          }
        }

        v24 = 1;
      }

      else
      {
LABEL_31:
        if (*a1[5] == 1)
        {
          v22 = sub_5544(8);
          v23 = *v22;
          if (*v22)
          {
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
            {
              v26 = 136315394;
              v27 = "RoutingManager.cpp";
              v28 = 1024;
              v29 = 2224;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Port update is all unroutable outputs. Dropping user preferred input.", &v26, 0x12u);
            }
          }
        }

        v24 = *a1[5];
      }
    }

    else
    {
      v24 = *(*a1[4] + 144) == 1886614639;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}