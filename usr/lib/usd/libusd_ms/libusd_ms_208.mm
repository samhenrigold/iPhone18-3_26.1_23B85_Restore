uint64_t sub_29B230BCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_29B242018(a4, a2, a3);
  if ((result & 1) == 0)
  {

    return sub_29B241F68(a4, a2, a3, 1);
  }

  return result;
}

uint64_t sub_29B230C5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a2 + 264);
  v6 = *(a2 + 272);
  if (v5 != v6)
  {
    v10 = result;
    do
    {
      v11 = *v5;
      if (!a5 || (a5 & ~*(v11 + 40)) == 0)
      {
        result = (*(*v10 + 128))(v10, v11, a3, a4);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_29B230CF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  if (v5 != v6)
  {
    v10 = result;
    do
    {
      result = sub_29B23C5B0(*v5);
      if (result && (!a5 || (a5 & ~*(result + 40)) == 0))
      {
        result = (*(*v10 + 128))(v10, result, a3, a4);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_29B230DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 40))(a1, a4, 0, 1);
  v6 = *(*a1 + 64);

  return v6(a1, a4);
}

std::string *sub_29B230E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  while (v5 != v6)
  {
    v7 = *v5;
    if ((*(*v5 + 127) & 0x8000000000000000) == 0)
    {
      if (!*(*v5 + 127))
      {
        goto LABEL_6;
      }

LABEL_5:
      sub_29B241494(a3, v7 + 104, 0);
      goto LABEL_6;
    }

    if (*(v7 + 112))
    {
      goto LABEL_5;
    }

LABEL_6:
    v5 += 2;
  }

  return sub_29B241400(a3);
}

void sub_29B230ED0(uint64_t a1, void *a2, const void **a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a3 + 23) >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  if (v10)
  {
    p_dst = &__dst;
    sub_29A022DE0(&__dst, v10 + 1);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    memmove(p_dst, v13, v10);
    *(&p_dst->__r_.__value_.__l.__data_ + v10) = 32;
  }

  else
  {
    v14 = sub_29B1F31FC(a1, a2);
    if (v14[23] < 0)
    {
      sub_29A008D14(&__dst, *v14, *(v14 + 1));
    }

    else
    {
      v15 = *v14;
      __dst.__r_.__value_.__r.__words[2] = *(v14 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v15;
    }
  }

  v16 = sub_29B2438AC(*(a1 + 8), a2[3]);
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = *v16;
  }

  if (v17 >= 0)
  {
    v19 = *(v16 + 23);
  }

  else
  {
    v19 = *(v16 + 8);
  }

  std::string::append(&__dst, v18, v19);
  if (*(a2[3] + 32))
  {
    goto LABEL_21;
  }

  v22 = a2[16];
  v21 = a2[17];
  if (!v21)
  {
    if (v22)
    {
      v23 = 0;
      v24 = *(a1 + 8);
      goto LABEL_28;
    }

LABEL_21:
    v20 = 0;
    goto LABEL_40;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_29A014BEC(v21);
  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = a2[17];
  v24 = *(a1 + 8);
  if (!v23)
  {
LABEL_28:
    v25 = 1;
    goto LABEL_29;
  }

  v25 = 0;
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_29:
  (*(*v24 + 152))(__p);
  if (SHIBYTE(v49) >= 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  if (SHIBYTE(v49) >= 0)
  {
    v27 = HIBYTE(v49);
  }

  else
  {
    v27 = __p[1];
  }

  std::string::append(&__dst, v26, v27);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v25 & 1) == 0)
  {
    sub_29A014BEC(v23);
  }

  v20 = 1;
LABEL_40:
  std::operator+<char>();
  if (SHIBYTE(v49) >= 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if (SHIBYTE(v49) >= 0)
  {
    v29 = HIBYTE(v49);
  }

  else
  {
    v29 = __p[1];
  }

  std::string::append(&__dst, v28, v29);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
    if (!v20)
    {
      goto LABEL_62;
    }
  }

  else if (!v20)
  {
    goto LABEL_62;
  }

  v30 = *(a1 + 8);
  v31 = a2[17];
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v30 + 160))(__p);
  if (SHIBYTE(v49) >= 0)
  {
    v32 = __p;
  }

  else
  {
    v32 = __p[0];
  }

  if (SHIBYTE(v49) >= 0)
  {
    v33 = HIBYTE(v49);
  }

  else
  {
    v33 = __p[1];
  }

  std::string::append(&__dst, v32, v33);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  if (v31)
  {
    sub_29A014BEC(v31);
  }

LABEL_62:
  if (a6)
  {
    v34 = a2[16];
    v35 = a2[17];
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = *(a1 + 8);
    if (v34)
    {
      v37 = a2[17];
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = (*(*v36 + 24))(__p);
      if (v37)
      {
        sub_29A014BEC(v37);
      }
    }

    else
    {
      v38 = sub_29B243874(v36, a2[3], 1);
      if (*(v38 + 23) < 0)
      {
        v38 = sub_29A008D14(__p, *v38, v38[1]);
      }

      else
      {
        v40 = *v38;
        v49 = v38[2];
        *__p = v40;
      }
    }

    if (v35)
    {
      sub_29A014BEC(v35);
    }

    v41 = HIBYTE(v49);
    if (SHIBYTE(v49) < 0)
    {
      v41 = __p[1];
    }

    if (v41)
    {
      std::operator+<char>();
    }

    else
    {
      v42 = sub_29B1F31FC(v38, v39);
      if (v42[23] < 0)
      {
        sub_29A008D14(v46, *v42, *(v42 + 1));
      }

      else
      {
        v43 = *v42;
        v47 = *(v42 + 2);
        *v46 = v43;
      }
    }

    if (v47 >= 0)
    {
      v44 = v46;
    }

    else
    {
      v44 = v46[0];
    }

    if (v47 >= 0)
    {
      v45 = HIBYTE(v47);
    }

    else
    {
      v45 = v46[1];
    }

    std::string::append(&__dst, v44, v45);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29B241474(a5, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29B2312F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if ((v29 & 1) == 0)
  {
    sub_29A014BEC(v28);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2313C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a2 + 96) != *(a2 + 88))
  {
    v13 = result;
    v14 = 0;
    do
    {
      (*(*v13 + 48))(v13, a6);
      (*(*v13 + 208))(v13, *(*(a2 + 88) + 8 * v14), a3, a5, a6, a7);
      (*(*v13 + 72))(v13, a4, a6);
      result = (*(*v13 + 56))(v13, a6, 0);
      ++v14;
    }

    while (v14 < (*(a2 + 96) - *(a2 + 88)) >> 3);
  }

  return result;
}

void sub_29B231504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 224))(__p);
  sub_29B241474(a4, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B231570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23158C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v12 = sub_29B2438AC(*(a1 + 8), *(a2 + 24));
    v13 = v12;
    if (*(v12 + 23) >= 0)
    {
      v14 = *(v12 + 23);
    }

    else
    {
      v14 = *(v12 + 8);
    }

    v15 = &v27;
    sub_29A022DE0(&v27, v14 + 1);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v27.__r_.__value_.__r.__words[0];
    }

    if (v14)
    {
      if (v13[23] >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = *v13;
      }

      memmove(v15, v16, v14);
    }

    *(&v15->__r_.__value_.__l.__data_ + v14) = 32;
    v17 = *(a2 + 127);
    if (v17 >= 0)
    {
      v18 = (a2 + 104);
    }

    else
    {
      v18 = *(a2 + 104);
    }

    if (v17 >= 0)
    {
      v19 = *(a2 + 127);
    }

    else
    {
      v19 = *(a2 + 112);
    }

    v20 = std::string::append(&v27, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v29 = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
  }

  else if (*(a2 + 127) < 0)
  {
    sub_29A008D14(__p, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    *__p = *(a2 + 104);
    v29 = *(a2 + 120);
  }

  sub_29B241474(a6, __p);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if (!a3)
    {
      goto LABEL_28;
    }
  }

  else if (!a3)
  {
    goto LABEL_28;
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

LABEL_28:
  __p[0] = 0;
  __p[1] = 0;
  v29 = 0;
  sub_29B20D254(a5, a2, __p);
  v22 = HIBYTE(v29);
  if (v29 < 0)
  {
    v22 = __p[1];
  }

  if (v22)
  {
    sub_29B241474(a6, __p);
  }

  if (a4)
  {
    v23 = sub_29B243874(*(a1 + 8), *(a2 + 24), 0);
    v24 = *(v23 + 23);
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v23 + 8);
    }

    if (v24)
    {
      std::operator+<char>();
      sub_29B241474(a6, &v25);
      if (v26 < 0)
      {
        operator delete(v25);
      }
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B2317A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B231814(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 240);
  if (v7)
  {
    if (*(v7 + 127) < 0)
    {
      sub_29A008D14(a4, *(v7 + 104), *(v7 + 112));
    }

    else
    {
      v9 = *(v7 + 104);
      *(a4 + 16) = *(v7 + 120);
      *a4 = v9;
    }

    if ((*(a2 + 271) & 0x8000000000000000) != 0)
    {
      if (!*(a2 + 256))
      {
LABEL_19:
        __p[0] = 0;
        __p[1] = 0;
        v22 = 0;
        sub_29B20D164(a3, a2, __p);
        v16 = HIBYTE(v22);
        if (v22 >= 0)
        {
          v17 = HIBYTE(v22);
        }

        else
        {
          v17 = __p[1];
        }

        if (v17)
        {
          if (v22 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          std::string::append(a4, v18, v17);
          v16 = HIBYTE(v22);
        }

        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        return;
      }
    }

    else if (!*(a2 + 271))
    {
      goto LABEL_19;
    }

    (*(**(a1 + 8) + 40))(__p);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *__p;
    *(a4 + 16) = v22;
    goto LABEL_19;
  }

  v10 = *(a2 + 128);
  v11 = *(a2 + 136);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 8);
  v13 = *(a2 + 24);
  if (v10)
  {
    v14 = *(a2 + 128);
    v15 = *(a2 + 136);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 24))(v12, v13, v14, 0);
    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  else
  {
    v19 = sub_29B243874(v12, v13, 0);
    if (*(v19 + 23) < 0)
    {
      sub_29A008D14(a4, *v19, *(v19 + 8));
    }

    else
    {
      v20 = *v19;
      *(a4 + 16) = *(v19 + 16);
      *a4 = v20;
    }
  }

  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29B231A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B231A7C(uint64_t a1, __int128 *a2, const void *a3)
{
  v6 = a2;
  result = sub_29B2339D8(a1 + 24, a2, &unk_29B769375, &v6, &v5);
  result[5] = a3;
  return result;
}

const void **sub_29B231AC4(const void **result, __int128 **a2, const void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      v8 = v3;
      result = sub_29B2339D8((v6 + 3), v3, &unk_29B769375, &v8, &v7);
      result[5] = a3;
      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29B231B40(void *a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = (*(*a1 + 16))(a1);
  sub_29B1C5CA8(a2, v8, &v36);
  v9 = v36;
  if (!v36)
  {
    *a4 = 0;
    *(a4 + 1) = 0;
    goto LABEL_24;
  }

  sub_29B20D090(a3, (v36 + 48), &v35);
  if (v35)
  {
    v10 = *(&v35 + 1);
    *a4 = v35;
    *(a4 + 1) = v10;
    goto LABEL_24;
  }

  sub_29B1EAB28(a2, v34);
  if (v34[0] == v34[1])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v28 = std::string::append(&v31, "' has no outputs defined");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v33 = v28->__r_.__value_.__r.__words[2];
    v32 = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v32);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v11 = (*(**v34[0] + 64))();
  v13 = sub_29B246738(v11, v12);
  v14 = v36;
  v16 = sub_29B1F31FC(v13, v15);
  v17 = sub_29AAC05D4(v14, v16);
  if (v17)
  {
    if (*(v13 + 25) - 5 > 2)
    {
      sub_29B21D784(&v32);
    }

    else
    {
      sub_29B216EF4(&v32);
    }
  }

  else
  {
    v19 = v36;
    v20 = sub_29B1F31FC(v17, v18);
    if (!sub_29B22CFC0(v19, v20))
    {
      goto LABEL_16;
    }

    v21 = sub_29A8877BC(a1 + 3, (v9 + 48));
    if (v21)
    {
      (v21[5])(&v32);
      v22 = v32;
    }

    else
    {
      v22 = 0uLL;
    }

    v32 = 0uLL;
    v26 = *(&v35 + 1);
    v35 = v22;
    if (v26)
    {
      sub_29A014BEC(v26);
      if (*(&v32 + 1))
      {
        sub_29A014BEC(*(&v32 + 1));
      }

      v25 = v35;
      if (v35)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = v22;
      if (v22)
      {
        goto LABEL_17;
      }
    }

    if (*(v13 + 25) - 5 > 2)
    {
      sub_29B22C640(&v32);
    }

    else
    {
      sub_29B21B7BC(&v32);
    }
  }

  v23 = v32;
  v32 = 0uLL;
  v24 = *(&v35 + 1);
  v35 = v23;
  if (v24)
  {
    sub_29A014BEC(v24);
    if (*(&v32 + 1))
    {
      sub_29A014BEC(*(&v32 + 1));
    }
  }

LABEL_16:
  v25 = v35;
  if (v35)
  {
LABEL_17:
    (*(*v25 + 24))(v25, v36, a3);
    v30 = v35;
    if (*(&v35 + 1))
    {
      atomic_fetch_add_explicit((*(&v35 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_29B20D024(a3, (v9 + 48), &v30);
    if (*(&v30 + 1))
    {
      sub_29A014BEC(*(&v30 + 1));
    }

    *a4 = v35;
    a4 = &v35;
  }

  *a4 = 0;
  *(a4 + 1) = 0;
  *&v32 = v34;
  sub_29A0176E4(&v32);
  if (*(&v35 + 1))
  {
    sub_29A014BEC(*(&v35 + 1));
  }

LABEL_24:
  if (v37)
  {
    sub_29A014BEC(v37);
  }
}

void sub_29B231E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  __p = &a24;
  sub_29A0176E4(&__p);
  v26 = *(v24 - 72);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  _Unwind_Resume(a1);
}

void sub_29B231F34(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v118 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, off_2A14FE690[0]);
  sub_29B2328AC(a3, __p, &v64);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v64)
  {
    sub_29B233DB0(__p);
    v5 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v6 = *(&v64 + 1);
    v64 = v5;
    if (v6)
    {
      sub_29A014BEC(v6);
      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }
    }

    sub_29A008E78(__p, off_2A14FE690[0]);
    v63 = v64;
    if (*(&v64 + 1))
    {
      atomic_fetch_add_explicit((*(&v64 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE19BF4(a3, __p, &v63);
    if (*(&v63 + 1))
    {
      sub_29A014BEC(*(&v63 + 1));
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29A008E78(__dst, off_2A14FDC90[0]);
  v7 = sub_29B247F60();
  if (SHIBYTE(v40) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v66 = v40;
  }

  v67[1] = 0;
  v68 = 0;
  v67[0] = v7;
  sub_29A008E78(&v61, off_2A14FDC98[0]);
  v8 = sub_29B247F60();
  if (SHIBYTE(v62) < 0)
  {
    sub_29A008D14(&v69, v61, *(&v61 + 1));
  }

  else
  {
    v69 = v61;
    v70 = v62;
  }

  v72 = 0;
  v73 = 0;
  v71 = v8;
  sub_29A008E78(v59, off_2A14FDCA0[0]);
  if (SHIBYTE(v60) < 0)
  {
    sub_29A008D14(&v74, v59[0], v59[1]);
  }

  else
  {
    v74 = *v59;
    v75 = v60;
  }

  v76 = 0;
  v77 = 0;
  v78 = 0;
  sub_29A008E78(&v57, off_2A14FDCA8[0]);
  if (SHIBYTE(v58) < 0)
  {
    sub_29A008D14(&v79, v57, *(&v57 + 1));
  }

  else
  {
    v79 = v57;
    v80 = v58;
  }

  v82 = 0;
  v81 = 0;
  v83 = 0;
  sub_29A008E78(v55, off_2A14FDCB0[0]);
  if (SHIBYTE(v56) < 0)
  {
    sub_29A008D14(&v84, v55[0], v55[1]);
  }

  else
  {
    v84 = *v55;
    v85 = v56;
  }

  v87 = 0;
  v86 = 0;
  v88 = 0;
  sub_29A008E78(&v53, off_2A14FDCB8[0]);
  if (SHIBYTE(v54) < 0)
  {
    sub_29A008D14(&v89, v53, *(&v53 + 1));
  }

  else
  {
    v89 = v53;
    v90 = v54;
  }

  v92 = 0;
  v91 = 0;
  v93 = 0;
  sub_29A008E78(v51, off_2A14FDCC0[0]);
  if (SHIBYTE(v52) < 0)
  {
    sub_29A008D14(&v94, v51[0], v51[1]);
  }

  else
  {
    v94 = *v51;
    v95 = v52;
  }

  v97 = 0;
  v96 = 0;
  v98 = 0;
  sub_29A008E78(&v49, off_2A14FDCC8[0]);
  v9 = sub_29B24696C();
  if (SHIBYTE(v50) < 0)
  {
    sub_29A008D14(&v99, v49, *(&v49 + 1));
  }

  else
  {
    v99 = v49;
    v100 = v50;
  }

  v103 = 0;
  v101 = v9;
  v102 = 0;
  sub_29A008E78(v47, off_2A14FDC68[0]);
  v10 = sub_29B247F60();
  if (SHIBYTE(v48) < 0)
  {
    sub_29A008D14(&v104, v47[0], v47[1]);
  }

  else
  {
    v104 = *v47;
    v105 = v48;
  }

  v108 = 0;
  v106 = v10;
  v107 = 0;
  sub_29A008E78(v45, off_2A14FDCD0[0]);
  v11 = sub_29B247F60();
  if (SHIBYTE(v46) < 0)
  {
    sub_29A008D14(&v109, v45[0], v45[1]);
  }

  else
  {
    v109 = *v45;
    v110 = v46;
  }

  v113 = 0;
  v111 = v11;
  v112 = 0;
  sub_29A008E78(v43, off_2A14FDC50[0]);
  v12 = sub_29B247F60();
  v13 = v12;
  if (SHIBYTE(v44) < 0)
  {
    sub_29A008D14(&v114, v43[0], v43[1]);
    v116 = v13;
    v117 = 0u;
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }
  }

  else
  {
    v114 = *v43;
    v115 = v44;
    v116 = v12;
    v117 = 0u;
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst[0]);
  }

  for (i = 0; i != 66; i += 6)
  {
    v15 = &__p[i];
    if (*(&v66 + i * 8 + 7) < 0)
    {
      sub_29A008D14(__dst, *v15, v15[1]);
    }

    else
    {
      *__dst = *v15;
      v40 = v15[2];
    }

    v16 = *&v67[i];
    v41 = v16;
    v17 = *(&v68 + i * 8);
    v42 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v41;
    }

    else
    {
      v18 = v16;
    }

    v37 = 0;
    v38 = 0;
    sub_29B23294C(v64, __dst, v18, &v37);
    if (v38)
    {
      sub_29A014BEC(v38);
    }

    v20 = v42;
    if (v42)
    {
      sub_29A014BEC(v42);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  v21 = *a2;
  v22 = sub_29B1F31FC(v20, v19);
  sub_29B233790(v21, v22, __dst);
  v23 = __dst[0];
  v24 = __dst[1];
  while (v23 != v24)
  {
    if (sub_29B232A2C(*v23))
    {
      v25 = sub_29B232AA8(*v23);
      v26 = (*(**v23 + 64))();
      v28 = sub_29B246738(v26, v27);
      v29 = v28;
      v30 = v25[23];
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v25 + 1);
      }

      if (v30)
      {
        v31 = v28 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (!v31)
      {
        v32 = v64;
        sub_29B232B34(*v23, &v36);
        sub_29B23294C(v32, v25, v29, &v36);
        if (*(&v36 + 1))
        {
          sub_29A014BEC(*(&v36 + 1));
        }
      }
    }

    v23 += 2;
  }

  *&v61 = __dst;
  sub_29A0176E4(&v61);
  v33 = 66;
  do
  {
    v34 = &__p[v33];
    v35 = __p[v33 - 1];
    if (v35)
    {
      sub_29A014BEC(v35);
    }

    if (*(v34 - 25) < 0)
    {
      operator delete(*(v34 - 6));
    }

    v33 -= 6;
  }

  while (v33 * 8);
  if (*(&v64 + 1))
  {
    sub_29A014BEC(*(&v64 + 1));
  }
}

void sub_29B232660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a65 < 0)
  {
    operator delete(a64);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  while (v71 != &a71)
  {
    v71 -= 6;
    sub_29B23290C(v71);
  }

  if (a70)
  {
    sub_29A014BEC(a70);
  }

  _Unwind_Resume(a1);
}

void sub_29B2328AC(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A5DAB7C((a1 + 240), a2);
  if (!v4 || (v5 = v4[6], v4[5] == v5))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(v5 - 2);

    sub_29B233D00(v6, a3);
  }
}

uint64_t sub_29B23290C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_29B23294C(char **a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v10 = a3;
  result = sub_29A8877BC(a1 + 6, a2);
  if (!result)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 4);
    v12 = a2;
    sub_29B23307C((a1 + 6), a2, &unk_29B769375, &v12, &v11)[5] = v8;
    v9 = a1[4];
    if (v9 >= a1[5])
    {
      result = sub_29B2333A4(a1 + 3, a2, &v10, a4);
    }

    else
    {
      sub_29B2334F0(a1 + 24, a1[4], a2, &v10, a4);
      result = (v9 + 48);
      a1[4] = v9 + 48;
    }

    a1[4] = result;
  }

  return result;
}

const void **sub_29B232A2C(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC30[0]);
  v2 = sub_29AAC9C84(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29B232A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B232AA8(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC20[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B232B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B232B34(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  if (sub_29B2338CC(a1))
  {
    v4 = sub_29B23394C(a1);
    v5 = (*(*a1 + 64))(a1);

    sub_29B1FB24C(v4, v5, a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
  }
}

void sub_29B232BCC(int a1, void *a2, uint64_t a3)
{
  sub_29B24B500(a2, (a3 + 400));
  v5 = *(a3 + 256);
  if (*(a3 + 264) != v5)
  {
    v6 = 0;
    do
    {
      sub_29B232D08(a2, *(v5 + 8 * v6++));
      v5 = *(a3 + 256);
    }

    while (v6 < (*(a3 + 264) - v5) >> 3);
  }

  for (i = *(a3 + 296); i; i = *i)
  {
    v8 = i[5];
    v9 = *(v8 + 88);
    if (*(v8 + 96) != v9)
    {
      v10 = 0;
      do
      {
        sub_29B232D08(a2, *(v9 + 8 * v10++));
        v9 = *(v8 + 88);
      }

      while (v10 < (*(v8 + 96) - v9) >> 3);
    }
  }

  for (j = *(a3 + 336); j; j = *j)
  {
    v12 = j[5];
    v13 = *(v12 + 88);
    if (*(v12 + 96) != v13)
    {
      v14 = 0;
      do
      {
        sub_29B232D08(a2, *(v13 + 8 * v14++));
        v13 = *(v12 + 88);
      }

      while (v14 < (*(v12 + 96) - v13) >> 3);
    }
  }

  for (k = *(a3 + 376); k; k = *k)
  {
    v16 = k[5];
    v17 = *(v16 + 88);
    if (*(v16 + 96) != v17)
    {
      v18 = 0;
      do
      {
        sub_29B232D08(a2, *(v17 + 8 * v18++));
        v17 = *(v16 + 88);
      }

      while (v18 < (*(v16 + 96) - v17) >> 3);
    }
  }
}

void sub_29B232D08(void *a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_29A008D14(&__str, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    __str = *(a2 + 32);
  }

  sub_29B24B500(a1, &__str);
  std::string::operator=((a2 + 32), &__str);
  if (*(a2 + 127) < 0)
  {
    sub_29A008D14(&__p, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    __p = *(a2 + 104);
  }

  sub_29B24B500(a1, &__p);
  std::string::operator=((a2 + 104), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29B232DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B232E0C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B230144(a3, a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B232E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B232E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  sub_29AE1443C(v11, a3 + 408);
  v7 = *(*a2 + 264);
  v8 = *(*a2 + 272);
  while (v7 != v8)
  {
    v9 = *v7;
    if (v12)
    {
      sub_29B232F80(v11, *v7);
    }

    (*(**(v9 + 176) + 56))(*(v9 + 176), v9, a3, a4);
    ++v7;
  }

  return sub_29AE1467C(v11);
}

uint64_t sub_29B232F80(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_29B232FD8(uint64_t a1)
{
  v1 = sub_29AE1D49C(a1);

  operator delete(v1);
}

void *sub_29B233000(void *__dst, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v7;
  }

  v9 = *a4;
  v8 = a4[1];
  __dst[3] = a3;
  __dst[4] = v9;
  __dst[5] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

const void **sub_29B23307C(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v9 = sub_29A12A708(a1, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v5 = v9;
      if (v9 >= v11)
      {
        v5 = v9 % v11;
      }
    }

    else
    {
      v5 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v5);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v5)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B2332F4(a1, v10, a4, v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v5 = v10 % v11;
      }

      else
      {
        v5 = v10;
      }
    }

    else
    {
      v5 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v5);
  if (v24)
  {
    i = v28[0];
    *v28[0] = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28[0];
    *v28[0] = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v5) = a1 + 16;
    i = v28[0];
    if (*v28[0])
    {
      v26 = *(*v28[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28[0];
      i = v28[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B2332D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B2332F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  a4[1] = a1;
  *a4 = result;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B233388(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2333A4(char **a1, __int128 *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v10 = 0x555555555555555;
  }

  else
  {
    v10 = v5;
  }

  v21 = a1;
  if (v10)
  {
    v11 = sub_29A08E058(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v18 = v11;
  v19 = &v11[3 * v4];
  *(&v20 + 1) = &v11[3 * v10];
  sub_29B2334F0(a1, v19, a2, a3, a4);
  *&v20 = v19 + 3;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  sub_29B233568(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29B233714(&v18);
  return v17;
}

void sub_29B2334DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B233714(va);
  _Unwind_Resume(a1);
}

void sub_29B2334F0(int a1, void *__dst, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a4;
  v7 = a5[1];
  v8 = *a5;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B233000(__dst, a3, v6, &v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29B233550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B233568(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 5);
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      v7 += 3;
      a4 += 48;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29B233634(a1, v5);
      v5 += 3;
    }
  }

  return sub_29B233688(v10);
}

void sub_29B233634(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t sub_29B233688(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B2336C0(a1);
  }

  return a1;
}

void sub_29B2336C0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_29B233634(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29B233714(void **a1)
{
  sub_29B233748(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29B233748(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_29B233634(v4, i - 48);
  }
}

void sub_29B233790(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D7770(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29B233894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_29B2338CC(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC28[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B233930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B23394C(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC28[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B2339BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B2339D8(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v9 = sub_29A12A708(a1, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v5 = v9;
      if (v9 >= v11)
      {
        v5 = v9 % v11;
      }
    }

    else
    {
      v5 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v5);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v5)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B233C50(a1, v10, a4, v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v5 = v10 % v11;
      }

      else
      {
        v5 = v10;
      }
    }

    else
    {
      v5 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v5);
  if (v24)
  {
    i = v28[0];
    *v28[0] = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28[0];
    *v28[0] = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v5) = a1 + 16;
    i = v28[0];
    if (*v28[0])
    {
      v26 = *(*v28[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28[0];
      i = v28[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B233C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B233C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  a4[1] = a1;
  *a4 = result;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B233CE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29B233D00(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20958E0, &unk_2A20CAD20, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B233DB0(void *a1@<X8>)
{
  v2 = operator new(0x70uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20CAD48;
  v2[3] = &unk_2A20CAD98;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  v2[12] = 0;
  *(v2 + 26) = 1065353216;
  *a1 = v2 + 3;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B233E70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAD48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B233EDC(uint64_t a1)
{
  *a1 = &unk_2A20CAD98;
  sub_29A0EB4E8((a1 + 48));
  v4 = (a1 + 24);
  sub_29B233FB0(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B233F44(void **a1)
{
  *a1 = &unk_2A20CAD98;
  sub_29A0EB4E8(a1 + 6);
  v3 = a1 + 3;
  sub_29B233FB0(&v3);
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_29B233FB0(void ***a1)
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
        v4 -= 48;
        sub_29B233634(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29B234038(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5)
{
  v8 = sub_29B23CA70(a1, a2, a3);
  *v8 = &unk_2A20CADB8;
  v9 = a4[1];
  v8[26] = *a4;
  v8[27] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 1065353216;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1065353216;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1065353216;
  v12 = *a5;
  v10 = a5 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      v18 = (v11 + 4);
      sub_29B23307C(a1 + 288, v11 + 4, &unk_29B769442, &v18, &v17)[5] = 1;
      v13 = v11[1];
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
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v11 = v14;
    }

    while (v14 != v10);
  }

  return a1;
}

void sub_29B234198(_Unwind_Exception *a1)
{
  sub_29B23A5AC(v2 + 224);
  sub_29B23A570(v5);
  sub_29B23A5AC(v4);
  sub_29B23A570(v3);
  sub_29A0EB4E8((v2 + 64));
  v8 = *v6;
  if (*v6)
  {
    *(v1 + 272) = v8;
    operator delete(v8);
  }

  sub_29AD97000(v2);
  v9 = *(v1 + 216);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29B2341F8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2341F8(uint64_t a1)
{
  *a1 = &unk_2A20CAE08;
  v2 = *(a1 + 200);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    *(a1 + 160) = v4;
    operator delete(v4);
  }

  sub_29AD97000(a1 + 112);
  v5 = *(a1 + 88);
  if (v5)
  {
    *(a1 + 96) = v5;
    operator delete(v5);
  }

  sub_29AD97000(a1 + 48);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29B234290(std::string::size_type a1, uint64_t a2, uint64_t a3)
{
  sub_29B1EA6E8(a2, &v34);
  v5 = v34;
  v6 = v35;
  while (v5 != v6)
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = 0;
    v32 = 0;
    sub_29B2345F4(v8, &v31, &v33);
    if (v32)
    {
      sub_29A014BEC(v32);
    }

    if (v33)
    {
      (*(*v33 + 32))(__dst);
    }

    else
    {
      v10 = sub_29B1F31FC(0, v9);
      if (v10[23] < 0)
      {
        sub_29A008D14(__dst, *v10, *(v10 + 1));
      }

      else
      {
        v11 = *v10;
        v30 = *(v10 + 2);
        *__dst = v11;
      }
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_29A008E78(&__p, off_2A14FDC88[0]);
    v12 = sub_29A8877BC(v8 + 20, &__p);
    if (v12)
    {
      v14 = (v12 + 5);
    }

    else
    {
      v14 = sub_29B1F31FC(0, v13);
    }

    if (v25 < 0)
    {
      operator delete(__p);
    }

    v15 = (*(*v8 + 64))(v8);
    v17 = sub_29B246738(v15, v16);
    if ((*(**(*a3 + 8) + 200))(*(*a3 + 8), __dst, v17, v14, &v26))
    {
      v18 = sub_29B23D768(a1, v8 + 6, v26);
      v19 = v27;
      v20 = v28;
      if (v28)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v18 = sub_29B23D768(a1, v8 + 6, v17);
      v22 = HIBYTE(v30);
      if (v30 < 0)
      {
        v22 = __dst[1];
      }

      if (!v22)
      {
        goto LABEL_28;
      }

      v20 = *(&v33 + 1);
      v19 = v33;
      if (*(&v33 + 1))
      {
LABEL_18:
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v21 = *(v18 + 136);
    *(v18 + 128) = v19;
    *(v18 + 136) = v20;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

LABEL_28:
    if (sub_29B2346E8(v8))
    {
      *(v18 + 232) |= 1u;
    }

    sub_29B1E9AA4(v8, &__p);
    if (__p)
    {
      std::string::operator=((v18 + 192), __p + 2);
    }

    if (v24)
    {
      sub_29A014BEC(v24);
    }

    if (v28)
    {
      sub_29A014BEC(v28);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__dst[0]);
    }

    if (*(&v33 + 1))
    {
      sub_29A014BEC(*(&v33 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }

    v5 += 16;
  }

  __dst[0] = &v34;
  sub_29A0176E4(__dst);
}

void sub_29B234558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, char a28)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    sub_29A014BEC(a27);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  a15 = &a28;
  sub_29A0176E4(&a15);
  _Unwind_Resume(a1);
}

void sub_29B2345F4(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X8>)
{
  if (sub_29B1D41D0(a1))
  {
    v6 = a2[1];
    v8 = *a2;
    v9 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1DB034(a1, &v8, &__p);
    v7 = (*(*a1 + 64))(a1);
    sub_29B1FB24C(&__p, v7, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 1) = 0;
  }
}

void sub_29B2346B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B2346E8(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDCE0[0]);
  v2 = sub_29AAC9C84(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29B234748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B234764(std::string::size_type a1, uint64_t a2)
{
  sub_29B1EAB28(a2, __p);
  v4 = __p[0];
  v5 = __p[1];
  while (v4 != v5)
  {
    v6 = (*v4 + 48);
    v7 = (*(**v4 + 64))();
    v9 = sub_29B246738(v7, v8);
    v10 = sub_29B23D9F0(a1, v6, v9);
    v11 = sub_29B1D22C0(*v4);
    std::string::operator=((v10 + 248), v11);
    v4 += 2;
  }

  v17 = __p;
  sub_29A0176E4(&v17);
  if (*(a1 + 96) == *(a1 + 88))
  {
    sub_29A008E78(__p, "out");
    v12 = (*(*a2 + 64))(a2);
    v14 = sub_29B246738(v12, v13);
    sub_29B23D9F0(a1, __p, v14);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B234890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2348C4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_29B1D7E50(*a3, &v65);
  if (!v65)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v29 = std::string::append(&v62, "'");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v64 = v29->__r_.__value_.__r.__words[2];
    v63 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v63);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v9 = sub_29A5DAB7C((a1 + 224), (v65 + 48));
  if (!v9 || (v11 = *(v9 + 40)) == 0)
  {
    v12 = v66;
    v61[0] = v65;
    v61[1] = v66;
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_29B235098(a1, v61, a5);
    v11 = v9;
    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }

  v13 = *a4;
  if (*a4)
  {
    goto LABEL_14;
  }

  v14 = *a2;
  v15 = sub_29B1F31FC(v9, v10);
  if (sub_29B1D18A4(v14, v15))
  {
    sub_29B1D8060(*a2, &v63);
    v16 = v63;
    v63 = 0uLL;
    v17 = a4[1];
    *a4 = v16;
    if (v17)
    {
      sub_29A014BEC(v17);
      if (*(&v63 + 1))
      {
        sub_29A014BEC(*(&v63 + 1));
      }
    }
  }

  v13 = *a4;
  if (*a4)
  {
LABEL_14:
    v18 = v65;
    v19 = a4[1];
    v57 = v13;
    v58 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1EDBDC(v18, &v57, &v59);
    if (v58)
    {
      sub_29A014BEC(v58);
    }

    if (v59)
    {
      v20 = sub_29B23EC14(v11, (v59 + 48));
      if (v20)
      {
        goto LABEL_20;
      }

LABEL_37:
      v24 = __cxa_allocate_exception(0x20uLL);
      if (v59)
      {
        if (*(v59 + 71) < 0)
        {
          sub_29A008D14(&v53, *(v59 + 48), *(v59 + 56));
        }

        else
        {
          v53 = *(v59 + 48);
          v54 = *(v59 + 64);
        }
      }

      else
      {
        sub_29A008E78(&v53, "out");
      }

      std::operator+<char>();
      v44 = std::string::append(&v55, "' on upstream node '");
      v45 = *&v44->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      v46 = *(v65 + 71);
      if (v46 >= 0)
      {
        v47 = (v65 + 48);
      }

      else
      {
        v47 = *(v65 + 48);
      }

      if (v46 >= 0)
      {
        v48 = *(v65 + 71);
      }

      else
      {
        v48 = *(v65 + 56);
      }

      v49 = std::string::append(&v56, v47, v48);
      v50 = *&v49->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      v51 = std::string::append(&v62, "'");
      v52 = *&v51->__r_.__value_.__l.__data_;
      v64 = v51->__r_.__value_.__r.__words[2];
      v63 = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(v24, &v63);
      *v24 = &unk_2A20C8F68;
      __cxa_throw(v24, &unk_2A20C8EF8, sub_29B20BED4);
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v20 = **(v11 + 152);
  if (!v20)
  {
    goto LABEL_37;
  }

LABEL_20:
  sub_29B1D7E50(*a2, &v53);
  if (v53)
  {
    v21 = sub_29A5DAB7C((a1 + 224), (v53 + 48));
    if (!v21 || (v22 = v21[5]) == 0 || !*a4)
    {
      v25 = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v26 = std::string::append(&v62, "'");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v64 = v26->__r_.__value_.__r.__words[2];
      v63 = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(v25, &v63);
      *v25 = &unk_2A20C8F68;
      __cxa_throw(v25, &unk_2A20C8EF8, sub_29B20BED4);
    }

    v23 = sub_29B23EB84(v21[5], (*a4 + 48));
    if (!v23)
    {
      v31 = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v32 = std::string::append(&v55, "' on downstream node '");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v36 = v22[2];
      v35 = (v22 + 2);
      v34 = v36;
      v37 = v35[23];
      if (v37 >= 0)
      {
        v38 = v35;
      }

      else
      {
        v38 = v34;
      }

      if (v37 >= 0)
      {
        v39 = v35[23];
      }

      else
      {
        v39 = *(v35 + 1);
      }

      v40 = std::string::append(&v56, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v62, "'");
      v43 = *&v42->__r_.__value_.__l.__data_;
      v64 = v42->__r_.__value_.__r.__words[2];
      v63 = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(v31, &v63);
      *v31 = &unk_2A20C8F68;
      __cxa_throw(v31, &unk_2A20C8EF8, sub_29B20BED4);
    }
  }

  else
  {
    v23 = sub_29B23EB84(a1, (*a2 + 48));
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  sub_29B23C4CC(v23, v20);
LABEL_28:
  if (*(&v53 + 1))
  {
    sub_29A014BEC(*(&v53 + 1));
  }

  if (v60)
  {
    sub_29A014BEC(v60);
  }

  if (v66)
  {
    sub_29A014BEC(v66);
  }
}

void sub_29B234E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v41 - 89) < 0)
  {
    operator delete(*(v41 - 112));
  }

  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v40 & 1) == 0)
    {
LABEL_12:
      if (a10)
      {
        sub_29A014BEC(a10);
      }

      if (a31)
      {
        sub_29A014BEC(a31);
      }

      v43 = *(v41 - 72);
      if (v43)
      {
        sub_29A014BEC(v43);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v39);
  goto LABEL_12;
}

std::string::size_type sub_29B235098(char *a1, std::string **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = sub_29B1F31FC(a1, a2);
  sub_29B1ED628(v6, v7, 0, &v49);
  if (!v49)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v37 = std::string::append(&v46, "'");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v48 = v37->__r_.__value_.__r.__words[2];
    v47 = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v47);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v8 = a2[1];
  *&v45 = *a2;
  *(&v45 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A017F80((a3 + 384), &v45);
  if (*(&v45 + 1))
  {
    sub_29A014BEC(*(&v45 + 1));
  }

  sub_29B23CB10(a1, &(*a2)[2], v49, a3, &v46);
  sub_29B23E2B8(v46.__r_.__value_.__l.__data_, *a2, v49, a3);
  *&v47 = *a2 + 2;
  v9 = sub_29B23AA28((a1 + 224), v47, &unk_29B769442, &v47, &v43);
  size = v46.__r_.__value_.__l.__size_;
  v10 = v46.__r_.__value_.__r.__words[0];
  if (v46.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v46.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v9[6];
  v9[5] = v10;
  v9[6] = size;
  if (v12)
  {
    sub_29A014BEC(v12);
    v10 = v46.__r_.__value_.__r.__words[0];
  }

  *&v47 = v10;
  sub_29A0A71C8((a1 + 264), &v47);
  v14 = *(a3 + 392);
  v15 = *(v14 - 8);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  *(a3 + 392) = v14 - 16;
  v16 = *a2;
  v17 = sub_29B1F31FC(v15, v13);
  sub_29B1D2AF8(v16, v17, &v47);
  v19 = *(&v47 + 1);
  for (i = v47; i != v19; i += 2)
  {
    v21 = *i;
    v20 = i[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = sub_29AE15164(v21);
    v23 = v22[23];
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v22 + 1);
    }

    if (v23)
    {
      v24 = sub_29B23EC14(a1, v22);
      if (v24)
      {
        v25 = sub_29B23EB84(v46.__r_.__value_.__l.__data_, (v21 + 48));
        if (v25)
        {
          sub_29B23C4CC(v25, v24);
        }
      }
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }

  v43 = &v47;
  sub_29A0176E4(&v43);
  sub_29B1EA6E8(v49, &v47);
  v27 = *(&v47 + 1);
  for (j = v47; j != v27; j += 2)
  {
    v28 = sub_29B23EB84(v46.__r_.__value_.__l.__data_, (*j + 48));
    sub_29AAC1E24(*a2, (*j + 48), &v43);
    if (v43)
    {
      v30 = sub_29B1D2C34(v43);
    }

    else
    {
      v30 = sub_29B1F31FC(0, v29);
    }

    if ((v30[23] & 0x8000000000000000) != 0)
    {
      if (*(v30 + 1))
      {
        goto LABEL_38;
      }
    }

    else if (v30[23])
    {
      goto LABEL_38;
    }

    if (!v28[30])
    {
      sub_29B1E9AA4(*j, &v41);
      if (v41)
      {
        sub_29B23599C(a1, v28, v41, a3);
      }

      if (v42)
      {
        sub_29A014BEC(v42);
      }
    }

LABEL_38:
    if (v44)
    {
      sub_29A014BEC(v44);
    }
  }

  v43 = &v47;
  sub_29A0176E4(&v43);
  v31 = *a2;
  v32 = a2[1];
  v40[0] = v31;
  v40[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v46.__r_.__value_.__l.__size_;
  v39 = *&v46.__r_.__value_.__l.__data_;
  if (v46.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v46.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B2385F4(a1, v40, &v39, a3);
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  if (v32)
  {
    sub_29A014BEC(v32);
  }

  v34 = v46.__r_.__value_.__r.__words[0];
  if (v46.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v46.__r_.__value_.__l.__size_);
  }

  if (*(&v49 + 1))
  {
    sub_29A014BEC(*(&v49 + 1));
  }

  return v34;
}

void sub_29B235470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    if ((v32 & 1) == 0)
    {
LABEL_8:
      v35 = *(v33 - 88);
      if (v35)
      {
        sub_29A014BEC(v35);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v31);
  goto LABEL_8;
}

void sub_29B2355A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48[0] = 0;
  v48[1] = 0;
  v47 = v48;
  sub_29B1DA55C(a2, &v39);
  if (v44 == v45)
  {
    sub_29B1F1C6C(&v39);
  }

  *(&v46 + 1) = 0;
  v35[0] = v39;
  v35[1] = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(v40 + 1, 1uLL, memory_order_relaxed);
  }

  v35[2] = v41;
  v35[3] = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(v42 + 1, 1uLL, memory_order_relaxed);
  }

  sub_29B1EBF20(v36, &v43);
  memset(v37, 0, sizeof(v37));
  sub_29B1D3464(v37, v44, v45, 0xAAAAAAAAAAAAAAABLL * (v45 - v44));
  v38 = v46;
  v5 = sub_29B1F1C4C();
  v6 = v5;
  v7 = v5[1];
  v31[0] = *v5;
  v31[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v5[3];
  v31[2] = v5[2];
  v31[3] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1EBF20(v32, (v5 + 4));
  memset(v33, 0, sizeof(v33));
  sub_29B1D3464(v33, v6[7], v6[8], 0xAAAAAAAAAAAAAAABLL * ((v6[8] - v6[7]) >> 3));
  v34 = *(v6 + 5);
  while (!sub_29B1EBF78(v35, v31))
  {
    sub_29B1EA37C(v35, &v26);
    v11 = v30;
    v25 = v30;
    if (*(&v30 + 1))
    {
      atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v12 = v26;
      v13 = v27;
      v24[0] = v26;
      v24[1] = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      for (i = v48[0]; i; i = *i)
      {
        v15 = i[4];
        if (v12 >= v15)
        {
          if (v15 >= v12)
          {
            goto LABEL_34;
          }

          ++i;
        }
      }

      v16 = sub_29B1F31FC(v9, v10);
      if (!sub_29B1D18A4(v11, v16))
      {
        goto LABEL_30;
      }

      sub_29A42F734(&v47, &v25, &v25);
      sub_29B1D8060(v25, &v21);
      (*(*v21 + 80))(&v23);
      v17 = v23;
      v23 = 0uLL;
      v18 = *(&v25 + 1);
      v25 = v17;
      if (v18)
      {
        sub_29A014BEC(v18);
        if (*(&v23 + 1))
        {
          sub_29A014BEC(*(&v23 + 1));
        }
      }

      if (v22)
      {
        sub_29A014BEC(v22);
      }

      if (v25)
      {
LABEL_30:
        v19 = v28;
        v20 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B2348C4(a1, v24, &v25, &v19, a3);
        if (v20)
        {
          sub_29A014BEC(v20);
        }
      }

LABEL_34:
      if (v13)
      {
        sub_29A014BEC(v13);
      }
    }

    if (*(&v25 + 1))
    {
      sub_29A014BEC(*(&v25 + 1));
    }

    sub_29ABF2F5C(&v26);
    sub_29B1F1C6C(v35);
  }

  sub_29B1EBFEC(v31);
  sub_29B1EBFEC(v35);
  sub_29B1EBFEC(&v39);
  sub_29A42FCE0(&v47, v48[0]);
}

void sub_29B235898(_Unwind_Exception *a1)
{
  sub_29B1EBFEC(v1 - 168);
  sub_29A42FCE0(v1 - 72, *(v1 - 64));
  _Unwind_Resume(a1);
}

void sub_29B23599C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  std::operator+<char>();
  v8 = sub_29A5DAB7C((a1 + 224), &v75);
  if (v8)
  {
    v9 = v8[5];
    if (v9)
    {
      goto LABEL_89;
    }
  }

  sub_29B1EE5C0(a3);
  std::operator+<char>();
  v10 = std::string::append(&v71, "_");
  v11 = *&v10->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = a2[3];
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = a2[3];
  }

  else
  {
    v14 = *v12;
  }

  if (v13 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = std::string::append(&__str, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v74 = v16->__r_.__value_.__r.__words[2];
  v73 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  sub_29AAC0094(*(a1 + 208), &v73, &v69);
  if (!v69)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v55 = std::string::append(&v67, "' for defaultgeomprop on input '");
    v56 = *&v55->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    sub_29B23C2B4(a2, &v66);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v66;
    }

    else
    {
      v57 = v66.__r_.__value_.__r.__words[0];
    }

    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v66.__r_.__value_.__l.__size_;
    }

    v59 = std::string::append(&__p, v57, size);
    v60 = *&v59->__r_.__value_.__l.__data_;
    v71.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&v71.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    v61 = std::string::append(&v71, "'");
    v62 = *&v61->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &__str);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B23CB10(a1, &v75, v69, a4, &v67);
  v18 = v67.__r_.__value_.__l.__size_;
  v65 = *&v67.__r_.__value_.__l.__data_;
  if (v67.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v67.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B236264(a1, &v65);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v63 = 0;
  v64 = 0;
  sub_29B1D8824(a3, &v63, &__str);
  if (v64)
  {
    sub_29A014BEC(v64);
  }

  v19 = sub_29B2362F0(a3);
  v20 = v19;
  v21 = v19[23];
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(v19 + 1);
  }

  if (v21)
  {
    v22 = v67.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v71, off_2A14FDE38[0]);
    v23 = sub_29B23EB84(v22, &v71);
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    v24 = v69;
    sub_29A008E78(&v71, off_2A14FDE38[0]);
    sub_29B1EAF90(v24, &v66, &v71);
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
      if (!v23)
      {
        goto LABEL_47;
      }
    }

    else if (!v23)
    {
LABEL_47:
      if (v66.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v66.__r_.__value_.__l.__size_);
      }

      goto LABEL_49;
    }

    v25 = v66.__r_.__value_.__r.__words[0];
    if (!v66.__r_.__value_.__r.__words[0])
    {
      goto LABEL_47;
    }

    memset(&v71, 0, sizeof(v71));
    sub_29A008E78(&__p, off_2A14FDC88[0]);
    v26 = sub_29A8877BC((v25 + 160), &__p);
    if (v26)
    {
      v28 = (v26 + 5);
    }

    else
    {
      v28 = sub_29B1F31FC(0, v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v29 = (*(*v66.__r_.__value_.__l.__data_ + 64))(v66.__r_.__value_.__r.__words[0]);
    v31 = sub_29B246738(v29, v30);
    if ((*(**(*a4 + 8) + 200))(*(*a4 + 8), v20, v31, v28, &v71))
    {
      v33 = v71.__r_.__value_.__r.__words[2];
      v32 = v71.__r_.__value_.__l.__size_;
      if (v71.__r_.__value_.__r.__words[2])
      {
        v34 = (v71.__r_.__value_.__r.__words[2] + 8);
        atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
LABEL_40:
        atomic_fetch_add_explicit(v34, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      sub_29B201354(v20, &__p);
      v33 = __p.__r_.__value_.__l.__size_;
      v32 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_)
      {
        v34 = (__p.__r_.__value_.__l.__size_ + 8);
        goto LABEL_40;
      }
    }

    v35 = v23[17];
    v23[16] = v32;
    v23[17] = v33;
    if (v35)
    {
      sub_29A014BEC(v35);
    }

    if (v33)
    {
      sub_29A014BEC(v33);
    }

    std::string::operator=((v23 + 7), &__str);
    if (v71.__r_.__value_.__r.__words[2])
    {
      sub_29A014BEC(v71.__r_.__value_.__r.__words[2]);
    }

    goto LABEL_47;
  }

LABEL_49:
  v36 = sub_29B23637C(a3);
  v37 = v36;
  v38 = v36[23];
  if ((v38 & 0x80u) != 0)
  {
    v38 = *(v36 + 1);
  }

  if (v38)
  {
    v39 = v67.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v71, "index");
    v40 = sub_29B23EB84(v39, &v71);
    v41 = v40;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
      if (!v41)
      {
        goto LABEL_63;
      }
    }

    else if (!v40)
    {
      goto LABEL_63;
    }

    sub_29B201354(v37, &v71);
    v42 = *&v71.__r_.__value_.__l.__data_;
    if (v71.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v71.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v43 = v41[17];
    *(v41 + 8) = v42;
    if (v43)
    {
      sub_29A014BEC(v43);
    }

    if (*(&v42 + 1))
    {
      sub_29A014BEC(*(&v42 + 1));
    }

    std::string::operator=((v41 + 7), &__str);
  }

LABEL_63:
  v44 = sub_29B1EE5C0(a3);
  v45 = v44;
  v46 = v44[23];
  if ((v46 & 0x80u) != 0)
  {
    v46 = *(v44 + 1);
  }

  if (!v46)
  {
    goto LABEL_77;
  }

  v47 = v67.__r_.__value_.__r.__words[0];
  sub_29A008E78(&v71, off_2A14FDE30[0]);
  v48 = sub_29B23EB84(v47, &v71);
  v49 = v48;
  if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v48)
    {
      goto LABEL_77;
    }

LABEL_70:
    sub_29B201354(v45, &v71);
    v50 = *&v71.__r_.__value_.__l.__data_;
    if (v71.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v71.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v51 = v49[17];
    *(v49 + 8) = v50;
    if (v51)
    {
      sub_29A014BEC(v51);
    }

    if (*(&v50 + 1))
    {
      sub_29A014BEC(*(&v50 + 1));
    }

    std::string::operator=((v49 + 7), &__str);
    goto LABEL_77;
  }

  operator delete(v71.__r_.__value_.__l.__data_);
  if (v49)
  {
    goto LABEL_70;
  }

LABEL_77:
  v9 = v67.__r_.__value_.__r.__words[0];
  v52 = *(*a4 + 8);
  v53 = **(v67.__r_.__value_.__r.__words[0] + 152);
  sub_29B23C2B4(v53, &v71);
  (*(*v52 + 192))(&__p, v52, &v71, *(v53 + 24), a1 + 288);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v71 = __p;
  std::string::operator=((v53 + 104), &v71);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v67.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v67.__r_.__value_.__l.__size_);
  }

  if (v70)
  {
    sub_29A014BEC(v70);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

LABEL_89:
  sub_29B23C4CC(a2, **(v9 + 152));
  if (v76 < 0)
  {
    operator delete(v75);
  }
}

void sub_29B236068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v47 & 1) == 0)
    {
LABEL_14:
      if (a33)
      {
        sub_29A014BEC(a33);
      }

      if (*(v48 - 121) < 0)
      {
        operator delete(*(v48 - 144));
      }

      if (*(v48 - 89) < 0)
      {
        operator delete(*(v48 - 112));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v47)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v46);
  goto LABEL_14;
}

void sub_29B236264(uint64_t a1, uint64_t *a2)
{
  v9 = (*a2 + 16);
  v4 = sub_29B23AA28(a1 + 224, v9, &unk_29B769442, &v9, &v8);
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v9 = *a2;
  sub_29A0A71C8(a1 + 264, &v9);
}

char *sub_29B2362F0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE38[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B236360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B23637C(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE40[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B2363EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236408(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!*(a2 + 240) || (*(a2 + 232) & 4) != 0)
  {
    v9 = *(*a4 + 64);
    v8 = *(*a4 + 72);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      sub_29B23C2B4(a2, &__str);
      v10 = std::string::append(&__str, "_cm");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v26 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      sub_29B20C044(v9, a1, a3, __p, a4, &v22);
      if (v22)
      {
        v12 = v23;
        v21[0] = v22;
        v21[1] = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B236264(a1, v21);
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        v13 = **(v22 + 152);
        v14 = **(v22 + 88);
        sub_29B23C2B4(a2, &__str);
        std::string::operator=((v14 + 104), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v15 = *(a2 + 128);
        v16 = *(a2 + 136);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(v14 + 136);
        *(v14 + 128) = v15;
        *(v14 + 136) = v16;
        if (v17)
        {
          sub_29A014BEC(v17);
        }

        if (v16)
        {
          sub_29A014BEC(v16);
        }

        v18 = std::string::operator=((v14 + 56), (a2 + 56));
        v20 = sub_29B1F31FC(v18, v19);
        std::string::operator=((v14 + 144), v20);
        if ((*(a2 + 232) & 4) != 0)
        {
          sub_29B23C4CC(v14, *(a2 + 240));
        }

        sub_29B23C4CC(a2, v13);
      }

      if (v23)
      {
        sub_29A014BEC(v23);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

void sub_29B2365E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236670(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(*a4 + 64);
  v8 = *(*a4 + 72);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    sub_29B23C2B4(a2, &v21);
    v10 = std::string::append(&v21, "_cm");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v23 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    sub_29B20C044(v9, a1, a3, __p, a4, &v19);
    if (v19)
    {
      v12 = v20;
      v18[0] = v19;
      v18[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B236264(a1, v18);
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      v13 = v19;
      v14 = **(v19 + 152);
      memset(&v21, 0, sizeof(v21));
      sub_29B214228(&v21, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 3);
      size = v21.__r_.__value_.__l.__size_;
      for (i = v21.__r_.__value_.__r.__words[0]; i != size; ++i)
      {
        v17 = *i;
        sub_29B23C524(*i);
        sub_29B23C4CC(v17, v14);
      }

      sub_29B23C4CC(**(v13 + 88), a2);
      if (v21.__r_.__value_.__r.__words[0])
      {
        v21.__r_.__value_.__l.__size_ = v21.__r_.__value_.__r.__words[0];
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B23680C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236894(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (!*(a2 + 240) || (*(a2 + 232) & 4) != 0)
  {
    v9 = *(*a4 + 80);
    v8 = *(*a4 + 88);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      sub_29B23C2B4(a2, &__str);
      v10 = std::string::append(&__str, "_unit");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v23 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      sub_29B249238(v9, a1, a3, __p, a4, &v19);
      if (v19)
      {
        v12 = v20;
        v18[0] = v19;
        v18[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B236264(a1, v18);
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        v13 = **(v19 + 152);
        v14 = **(v19 + 88);
        sub_29B23C2B4(a2, &__str);
        std::string::operator=((v14 + 104), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v15 = *(a2 + 128);
        v16 = *(a2 + 136);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(v14 + 136);
        *(v14 + 128) = v15;
        *(v14 + 136) = v16;
        if (v17)
        {
          sub_29A014BEC(v17);
        }

        if (v16)
        {
          sub_29A014BEC(v16);
        }

        std::string::operator=((v14 + 56), (a2 + 56));
        std::string::operator=((v14 + 144), (a2 + 144));
        std::string::operator=((v14 + 168), (a2 + 168));
        if ((*(a2 + 232) & 4) != 0)
        {
          sub_29B23C4CC(v14, *(a2 + 240));
        }

        sub_29B23C4CC(a2, v13);
      }

      if (v20)
      {
        sub_29A014BEC(v20);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

void sub_29B236A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236B04(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v9 = *(*a4 + 80);
  v8 = *(*a4 + 88);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    sub_29B23C2B4(a2, &v21);
    v10 = std::string::append(&v21, "_unit");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v23 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    sub_29B249238(v9, a1, a3, __p, a4, &v19);
    if (v19)
    {
      v12 = v20;
      v18[0] = v19;
      v18[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B236264(a1, v18);
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      v13 = v19;
      v14 = **(v19 + 152);
      memset(&v21, 0, sizeof(v21));
      sub_29B214228(&v21, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 3);
      size = v21.__r_.__value_.__l.__size_;
      for (i = v21.__r_.__value_.__r.__words[0]; i != size; ++i)
      {
        v17 = *i;
        sub_29B23C524(*i);
        sub_29B23C4CC(v17, v14);
      }

      sub_29B23C4CC(**(v13 + 88), a2);
      if (v21.__r_.__value_.__r.__words[0])
      {
        v21.__r_.__value_.__l.__size_ = v21.__r_.__value_.__r.__words[0];
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B236CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236D28(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, std::string::size_type *a4@<X8>)
{
  v32 = a1;
  sub_29B1EE8F4(a2, &v30);
  if (!v30)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29AAD84E0(a2);
    std::operator+<char>();
    v13 = std::string::append(&v25, "' referenced by nodegraph '");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v17 = *(a2 + 48);
    v16 = a2 + 48;
    v15 = v17;
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    if (v18 >= 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = *(v16 + 8);
    }

    v21 = std::string::append(&v26, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v27, "'");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v29 = v23->__r_.__value_.__r.__words[2];
    *__p = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  if (*(a2 + 71) < 0)
  {
    sub_29A008D14(__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    *__p = *(a2 + 48);
    v29 = *(a2 + 64);
  }

  (*(**(*a3 + 8) + 176))(*(*a3 + 8), __p);
  sub_29B1D8ACC(a2, &v27);
  sub_29B23A694(&v32, __p, &v27, a3 + 22, a4);
  if (v27.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v27.__r_.__value_.__l.__size_);
  }

  v7 = *a4;
  *(v7 + 40) = 0;
  sub_29B234290(v7, v30, a3);
  sub_29B234764(*a4, a2);
  sub_29B1EAB28(a2, &v27);
  size = v27.__r_.__value_.__l.__size_;
  for (i = v27.__r_.__value_.__r.__words[0]; i != size; i += 2)
  {
    v10 = *i;
    v11 = i[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B2355A8(*a4, v10, a3);
    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  v26.__r_.__value_.__r.__words[0] = &v27;
  sub_29A0176E4(&v26);
  sub_29B2370D0(*a4, a3);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (v31)
  {
    sub_29A014BEC(v31);
  }
}

void sub_29B236FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v36 & 1) == 0)
    {
LABEL_12:
      v39 = *(v37 - 64);
      if (v39)
      {
        sub_29A014BEC(v39);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v35);
  goto LABEL_12;
}

void sub_29B2370D0(std::string::size_type a1, uint64_t a2)
{
  v4 = *(a1 + 264);
  v5 = *(a1 + 272);
  while (v4 != v5)
  {
    v6 = *v4++;
    (*(**(v6 + 176) + 48))(*(v6 + 176));
  }

  v7 = *(**(a1 + 88) + 240);
  if (v7)
  {
    *(a1 + 40) |= *(*(v7 + 16) + 40);
  }

  if (*(a2 + 148) == 1)
  {
    for (i = *(a1 + 344); i; i = *i)
    {
      sub_29B236408(a1, i[2], (i + 3), a2);
    }

    for (j = *(a1 + 424); j; j = *j)
    {
      sub_29B236670(a1, j[2], (j + 3), a2);
    }
  }

  sub_29B23AD38(a1 + 328);
  sub_29B23AD38(a1 + 408);
  for (k = *(a1 + 384); k; k = *k)
  {
    sub_29B236894(a1, k[2], k + 3, a2);
  }

  for (m = *(a1 + 464); m; m = *m)
  {
    sub_29B236B04(a1, m[2], m + 3, a2);
  }

  sub_29B23AD94(a1 + 368);
  sub_29B23AD94(a1 + 448);
  sub_29B23915C(a1, a2);
  sub_29B2394FC(a1);
  if (!*(a2 + 24))
  {
    v13 = *(a1 + 264);
    v12 = *(a1 + 272);
    v34 = v12;
    while (v13 != v12)
    {
      v14 = *v13;
      v15 = *(*v13 + 88);
      for (n = *(*v13 + 96); v15 != n; ++v15)
      {
        v17 = *v15;
        if (!*(*v15 + 240) && *(*(v17 + 24) + 40) == 1)
        {
          v18 = *(v14 + 176);
          if (!v18 || (*(*v18 + 96))(v18, *v15))
          {
            if (*(v14 + 39) >= 0)
            {
              v19 = *(v14 + 39);
            }

            else
            {
              v19 = *(v14 + 24);
            }

            sub_29A022DE0(&v35, v19 + 1);
            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v20 = &v35;
            }

            else
            {
              v20 = v35.__r_.__value_.__r.__words[0];
            }

            if (v19)
            {
              if (*(v14 + 39) >= 0)
              {
                v21 = (v14 + 16);
              }

              else
              {
                v21 = *(v14 + 16);
              }

              memmove(v20, v21, v19);
            }

            *(&v20->__r_.__value_.__l.__data_ + v19) = 95;
            v22 = *(v17 + 55);
            if (v22 >= 0)
            {
              v23 = (v17 + 32);
            }

            else
            {
              v23 = *(v17 + 32);
            }

            if (v22 >= 0)
            {
              v24 = *(v17 + 55);
            }

            else
            {
              v24 = *(v17 + 40);
            }

            v25 = std::string::append(&v35, v23, v24);
            v26 = *&v25->__r_.__value_.__l.__data_;
            v37 = v25->__r_.__value_.__r.__words[2];
            *__p = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }

            v27 = sub_29B23EC14(a1, __p);
            if (!v27)
            {
              v27 = sub_29B23D768(a1, __p, *(v17 + 24));
              std::string::operator=((v27 + 56), (v17 + 56));
              v28 = *(v17 + 128);
              v29 = *(v17 + 136);
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v30 = *(v27 + 136);
              *(v27 + 128) = v28;
              *(v27 + 136) = v29;
              if (v30)
              {
                sub_29A014BEC(v30);
              }

              if (v29)
              {
                sub_29A014BEC(v29);
              }

              std::string::operator=((v27 + 144), (v17 + 144));
              std::string::operator=((v27 + 168), (v17 + 168));
              if (*(v17 + 232))
              {
                *(v27 + 232) |= 1u;
              }
            }

            sub_29B23C5DC(v27, v17);
            v31 = *(v17 + 216);
            v32 = *(v17 + 224);
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v33 = *(v27 + 224);
            *(v27 + 216) = v31;
            *(v27 + 224) = v32;
            if (v33)
            {
              sub_29A014BEC(v33);
            }

            if (v32)
            {
              sub_29A014BEC(v32);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      ++v13;
      v12 = v34;
    }
  }

  sub_29B239740(a1, a2);
}

void sub_29B237480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2374B0(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, std::string::size_type *a5@<X8>)
{
  v6 = a3;
  v136[0] = a1;
  *a5 = 0;
  a5[1] = 0;
  v9 = *a3;
  v10 = sub_29B1F31FC(a1, a2);
  v11 = sub_29B1D18A4(v9, v10);
  if (v11)
  {
    sub_29B1D8060(*v6, &v123);
    v14 = v123.__r_.__value_.__r.__words[0];
    v15 = *(v123.__r_.__value_.__r.__words[0] + 232);
    if (v15)
    {
      v15 = std::__shared_weak_count::lock(v15);
      v16 = v15;
      if (v15)
      {
        v17 = *(v14 + 224);
        goto LABEL_99;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = 0;
LABEL_99:
    v63 = sub_29B1F31FC(v15, v13);
    v64 = sub_29AAC05D4(v17, v63);
    if (!v64)
    {
      v68 = sub_29B1F31FC(v64, v65);
      if (!sub_29B238548(v17, v68))
      {
        goto LABEL_163;
      }

      (*(*v123.__r_.__value_.__l.__data_ + 80))(&__str);
      size = __str.__r_.__value_.__l.__size_;
      v67 = __str.__r_.__value_.__r.__words[0];
      *&__str.__r_.__value_.__l.__data_ = 0uLL;
      if (v16)
      {
        sub_29A014BEC(v16);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(__str.__r_.__value_.__l.__size_);
        }
      }

      if (v67)
      {
        sub_29B1D74B0(v67, &__str);
        v67 = __str.__r_.__value_.__l.__size_;
        v66 = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        v66 = 0;
      }

      v16 = size;
LABEL_117:
      if (v66)
      {
        sub_29B1D87A8(&v134, *v6);
        sub_29B23A8A4(v136, a2, &v134, a4 + 22, &__str);
        v70 = *&__str.__r_.__value_.__l.__data_;
        *&__str.__r_.__value_.__l.__data_ = 0uLL;
        *a5 = v70;
        if (v134.__r_.__value_.__l.__size_)
        {
          v113 = v70;
          sub_29A014BEC(v134.__r_.__value_.__l.__size_);
          *&v70 = v113;
        }

        *(v70 + 40) = 0;
        sub_29B234290(v70, v66, a4);
        v71 = *a5;
        v72 = (v123.__r_.__value_.__r.__words[0] + 48);
        v73 = (*(*v123.__r_.__value_.__l.__data_ + 64))(v123.__r_.__value_.__r.__words[0]);
        v75 = sub_29B246738(v73, v74);
        v76 = sub_29B23D9F0(v71, v72, v75);
        v132 = 0;
        v133 = 0;
        sub_29B1D8824(v123.__r_.__value_.__l.__data_, &v132, &__str);
        std::string::operator=((v76 + 56), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v133)
        {
          sub_29A014BEC(v133);
        }

        v77 = sub_29B1D22C0(v123.__r_.__value_.__l.__data_);
        std::string::operator=((v76 + 248), v77);
        v78 = sub_29B1DB728(v123.__r_.__value_.__l.__data_);
        v79 = v78[23];
        if ((v79 & 0x80u) != 0)
        {
          v79 = *(v78 + 1);
        }

        if (v79)
        {
          std::string::operator=((v76 + 144), v78);
        }

        v80 = sub_29AAC1F6C(v123.__r_.__value_.__l.__data_);
        v81 = v80[23];
        if ((v81 & 0x80u) != 0)
        {
          v81 = *(v80 + 1);
        }

        if (v81)
        {
          std::string::operator=((v76 + 168), v80);
        }

        v62 = v123.__r_.__value_.__l.__size_;
        v61 = v123.__r_.__value_.__r.__words[0];
        if (v123.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v123.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        if (v67)
        {
          sub_29A014BEC(v67);
        }

        if (v16)
        {
          sub_29A014BEC(v16);
        }

        if (v123.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v123.__r_.__value_.__l.__size_);
        }

        v25 = *a5;
        goto LABEL_141;
      }

LABEL_163:
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v109 = std::string::append(&v134, "' has no interface valid for shader generation");
      v110 = *&v109->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v110;
      v109->__r_.__value_.__l.__size_ = 0;
      v109->__r_.__value_.__r.__words[2] = 0;
      v109->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &__str);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    sub_29B1D7FB0(v17, &__str);
    sub_29B1EE8F4(__str.__r_.__value_.__l.__data_, &v134);
    v66 = v134.__r_.__value_.__r.__words[0];
    if (v134.__r_.__value_.__r.__words[0])
    {
      v67 = v134.__r_.__value_.__l.__size_;
      if (!v134.__r_.__value_.__l.__size_)
      {
LABEL_103:
        if (v134.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v134.__r_.__value_.__l.__size_);
        }

        if (__str.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(__str.__r_.__value_.__l.__size_);
        }

        goto LABEL_117;
      }
    }

    else
    {
      v67 = __str.__r_.__value_.__l.__size_;
      v66 = __str.__r_.__value_.__r.__words[0];
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_103;
      }
    }

    atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_103;
  }

  v18 = *v6;
  v19 = sub_29B1F31FC(v11, v12);
  if (!sub_29AAD7980(v18, v19))
  {
    goto LABEL_155;
  }

  sub_29B1D7E50(*v6, &v130);
  v20 = v130;
  v23 = sub_29B1F31FC(v21, v22);
  sub_29B1ED628(v20, v23, 0, &v129);
  if (!v129)
  {
    v105 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v106 = std::string::append(&v134, "'");
    v107 = *&v106->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(v105, &__str);
    *v105 = &unk_2A20C8F68;
    __cxa_throw(v105, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B1D87A8(&v134, *v6);
  sub_29B23A8A4(v136, a2, &v134, a4 + 22, &__str);
  v24 = *&__str.__r_.__value_.__l.__data_;
  *&__str.__r_.__value_.__l.__data_ = 0uLL;
  *a5 = v24;
  if (v134.__r_.__value_.__l.__size_)
  {
    v112 = v24;
    sub_29A014BEC(v134.__r_.__value_.__l.__size_);
    *&v24 = v112;
  }

  v25 = v24;
  sub_29B234290(v24, v129, a4);
  sub_29B234764(v25, v129);
  sub_29B23CB10(v25, (v130 + 48), v129, a4, &v127);
  v26 = v128;
  v126[0] = v127;
  v126[1] = v128;
  if (v128)
  {
    atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B236264(v25, v126);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = v127[24];
  v28 = v127[25];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *(v25 + 200);
  *(v25 + 192) = v27;
  *(v25 + 200) = v28;
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  v30 = v127[19];
  if (v127[20] != v30)
  {
    v31 = 0;
    do
    {
      v32 = *(*(v25 + 88) + 8 * v31);
      sub_29B23C4CC(v32, *(v30 + 8 * v31));
      v124 = 0;
      v125 = 0;
      sub_29B1D8824(v130, &v124, &__str);
      std::string::operator=((v32 + 56), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v125)
      {
        sub_29A014BEC(v125);
      }

      ++v31;
      v30 = v127[19];
    }

    while (v31 < (v127[20] - v30) >> 3);
  }

  v111 = v6;
  sub_29B1EA6E8(v129, &__str);
  v33 = __str.__r_.__value_.__l.__size_;
  v34 = __str.__r_.__value_.__r.__words[0];
  if (__str.__r_.__value_.__r.__words[0] != __str.__r_.__value_.__l.__size_)
  {
    while (1)
    {
      v35 = sub_29B23EC14(v25, (*v34 + 48));
      v36 = sub_29B23EB84(v127, (*v34 + 48));
      v37 = v36;
      if (v35)
      {
        v38 = v36 == 0;
      }

      else
      {
        v38 = 1;
      }

      if (v38)
      {
        v82 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v83 = std::string::append(&v121, "' doesn't match an existing input on graph '");
        v84 = *&v83->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        v87 = *(v25 + 16);
        v86 = v25 + 16;
        v85 = v87;
        v88 = *(v86 + 23);
        if (v88 >= 0)
        {
          v89 = v86;
        }

        else
        {
          v89 = v85;
        }

        if (v88 >= 0)
        {
          v90 = *(v86 + 23);
        }

        else
        {
          v90 = *(v86 + 8);
        }

        v91 = std::string::append(&__p, v89, v90);
        v92 = *&v91->__r_.__value_.__l.__data_;
        v123.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v123.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        v93 = std::string::append(&v123, "'");
        v94 = *&v93->__r_.__value_.__l.__data_;
        v134.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
        *&v134.__r_.__value_.__l.__data_ = v94;
        v93->__r_.__value_.__l.__size_ = 0;
        v93->__r_.__value_.__r.__words[2] = 0;
        v93->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(v82, &v134);
        *v82 = &unk_2A20C8F68;
        __cxa_throw(v82, &unk_2A20C8EF8, sub_29B20BED4);
      }

      sub_29AAC1E24(v130, (*v34 + 48), &v121);
      if (!v121.__r_.__value_.__r.__words[0])
      {
        goto LABEL_69;
      }

      v118 = 0;
      v119 = 0;
      sub_29B2345F4(v121.__r_.__value_.__l.__data_, &v118, &v120);
      if (v119)
      {
        sub_29A014BEC(v119);
      }

      if (v120)
      {
        break;
      }

LABEL_51:
      *(v37 + 58) |= 4u;
      v116 = 0;
      v117 = 0;
      sub_29B1D8824(v121.__r_.__value_.__l.__data_, &v116, &v134);
      if (v117)
      {
        sub_29A014BEC(v117);
      }

      v49 = HIBYTE(v134.__r_.__value_.__r.__words[2]);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v49 = v134.__r_.__value_.__l.__size_;
      }

      if (v49)
      {
        std::string::operator=((v35 + 7), &v134);
        std::string::operator=((v37 + 7), &v134);
      }

      v50 = sub_29B1DB728(v121.__r_.__value_.__l.__data_);
      v51 = v50;
      v52 = v50[23];
      if ((v52 & 0x80u) != 0)
      {
        v52 = *(v50 + 1);
      }

      if (v52)
      {
        std::string::operator=(v35 + 6, v50);
        std::string::operator=(v37 + 6, v51);
      }

      v53 = sub_29AAC1F6C(v121.__r_.__value_.__l.__data_);
      v54 = v53;
      v55 = v53[23];
      if ((v55 & 0x80u) != 0)
      {
        v55 = *(v53 + 1);
      }

      if (v55)
      {
        std::string::operator=(v35 + 7, v53);
        std::string::operator=(v37 + 7, v54);
      }

      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if (*(&v120 + 1))
      {
        sub_29A014BEC(*(&v120 + 1));
      }

LABEL_69:
      sub_29B23C5DC(v35, v37);
      v56 = v37[27];
      v57 = v37[28];
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = v35[28];
      v35[27] = v56;
      v35[28] = v57;
      if (v58)
      {
        sub_29A014BEC(v58);
      }

      if (v57)
      {
        sub_29A014BEC(v57);
      }

      if (v121.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v121.__r_.__value_.__l.__size_);
      }

      v34 += 16;
      if (v34 == v33)
      {
        goto LABEL_81;
      }
    }

    (*(*v120 + 32))(&v134);
    memset(&v123, 0, sizeof(v123));
    v39 = (*(**v34 + 64))();
    v41 = sub_29B246738(v39, v40);
    v42 = *v34;
    sub_29A008E78(&__p, off_2A14FDC88[0]);
    v43 = sub_29A8877BC((v42 + 160), &__p);
    if (v43)
    {
      v45 = (v43 + 5);
    }

    else
    {
      v45 = sub_29B1F31FC(0, v44);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((*(**(*a4 + 8) + 200))(*(*a4 + 8), &v134, v41, v45, &v123))
    {
      v47 = v123.__r_.__value_.__r.__words[2];
      v46 = v123.__r_.__value_.__l.__size_;
      if (!v123.__r_.__value_.__r.__words[2])
      {
LABEL_43:
        v48 = v35[17];
        v35[16] = v46;
        v35[17] = v47;
        if (v48)
        {
          sub_29A014BEC(v48);
        }

        if (v47)
        {
          sub_29A014BEC(v47);
        }

        if (v123.__r_.__value_.__r.__words[2])
        {
          sub_29A014BEC(v123.__r_.__value_.__r.__words[2]);
        }

        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v134.__r_.__value_.__l.__data_);
        }

        goto LABEL_51;
      }
    }

    else
    {
      v47 = *(&v120 + 1);
      v46 = v120;
      if (!*(&v120 + 1))
      {
        goto LABEL_43;
      }
    }

    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_43;
  }

LABEL_81:
  v134.__r_.__value_.__r.__words[0] = &__str;
  sub_29A0176E4(&v134);
  v59 = v131;
  v115[0] = v130;
  v115[1] = v131;
  if (v131)
  {
    atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v60 = v128;
  v114[0] = v127;
  v114[1] = v128;
  v6 = v111;
  if (v128)
  {
    atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B2385F4(v25, v115, v114, a4);
  if (v60)
  {
    sub_29A014BEC(v60);
  }

  if (v59)
  {
    sub_29A014BEC(v59);
  }

  v61 = v130;
  v62 = v131;
  if (v131)
  {
    atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v128)
  {
    sub_29A014BEC(v128);
  }

  if (*(&v129 + 1))
  {
    sub_29A014BEC(*(&v129 + 1));
  }

  if (v131)
  {
    sub_29A014BEC(v131);
  }

LABEL_141:
  if (!v25)
  {
LABEL_155:
    v95 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v96 = std::string::append(&__p, "' of type '");
    v97 = *&v96->__r_.__value_.__l.__data_;
    v123.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
    *&v123.__r_.__value_.__l.__data_ = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    v98 = *(*v6 + 47);
    if (v98 >= 0)
    {
      v99 = (*v6 + 24);
    }

    else
    {
      v99 = *(*v6 + 24);
    }

    if (v98 >= 0)
    {
      v100 = *(*v6 + 47);
    }

    else
    {
      v100 = *(*v6 + 32);
    }

    v101 = std::string::append(&v123, v99, v100);
    v102 = *&v101->__r_.__value_.__l.__data_;
    v134.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
    *&v134.__r_.__value_.__l.__data_ = v102;
    v101->__r_.__value_.__l.__size_ = 0;
    v101->__r_.__value_.__r.__words[2] = 0;
    v101->__r_.__value_.__r.__words[0] = 0;
    v103 = std::string::append(&v134, "' is not supported");
    v104 = *&v103->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v104;
    v103->__r_.__value_.__l.__size_ = 0;
    v103->__r_.__value_.__r.__words[2] = 0;
    v103->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(v95, &__str);
    *v95 = &unk_2A20C8F68;
    __cxa_throw(v95, &unk_2A20C8EF8, sub_29B20BED4);
  }

  if (v61 && a4[80] == 1)
  {
    sub_29B2355A8(v25, v61, a4);
  }

  sub_29B2370D0(v25, a4);
  if (v62)
  {
    sub_29A014BEC(v62);
  }
}

void sub_29B238124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (*(v49 - 137) < 0)
  {
    operator delete(*(v49 - 160));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
    if ((v45 & 1) == 0)
    {
LABEL_12:
      if (v47)
      {
        sub_29A014BEC(v47);
      }

      v51 = *(v48 + 8);
      if (v51)
      {
        sub_29A014BEC(v51);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v46);
  goto LABEL_12;
}

uint64_t sub_29B238548(uint64_t a1, const void **a2)
{
  sub_29B1D78D0(a1, &v15);
  v4 = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_29B2385F4(char *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v39 = a1;
  v6 = *a4;
  v7 = *(*a4 + 72);
  v37 = *(*a4 + 64);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a4;
  }

  v8 = *(v6 + 88);
  v35 = *(v6 + 80);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 55);
  if ((v9 & 0x80u) != 0)
  {
    v9 = a4[5];
  }

  if (v9)
  {
    v36 = (a4 + 4);
  }

  else
  {
    a1 = sub_29AAC1FF8(*(a1 + 26));
    v36 = a1;
  }

  v10 = *a2;
  v11 = sub_29B1F31FC(a1, a2);
  sub_29AAD5940(v10, v11, &v50);
  v12 = v50;
  v38 = v51;
  if (v50 != v51)
  {
    v32 = a3;
    v33 = v4;
    do
    {
      v14 = *v12;
      v13 = *(v12 + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!sub_29B1D41D0(v14) && !sub_29AE150E4(v14))
      {
        goto LABEL_64;
      }

      v15 = sub_29AAC1FF8(v14);
      if (v15[23] < 0)
      {
        sub_29A008D14(&__dst, *v15, *(v15 + 1));
      }

      else
      {
        v16 = *v15;
        __dst.__r_.__value_.__r.__words[2] = *(v15 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v16;
      }

      v17 = (*(*v14 + 64))(v14);
      v18 = strlen(off_2A14FDEC0[0]);
      v19 = *(v17 + 23);
      if (v19 < 0)
      {
        if (v18 != v17[1])
        {
          goto LABEL_50;
        }

        if (v18 == -1)
        {
          sub_29A0F26CC();
        }

        v17 = *v17;
      }

      else if (v18 != v19)
      {
        goto LABEL_50;
      }

      if (memcmp(v17, off_2A14FDEC0[0], v18) || !sub_29B238B44(*a2))
      {
LABEL_50:
        v30 = sub_29B23EB84(*a3, v14 + 6);
        v42[0] = v37;
        v42[1] = &v7->__vftable;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B238C48(v39, v42, v30, &__dst, v36, 1);
        if (v7)
        {
          sub_29A014BEC(v7);
        }

        v41[0] = v35;
        v41[1] = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v40[0] = v14;
        v40[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B238EC4(v39, v41, v30, v40, (v4 + 7), 1);
        goto LABEL_59;
      }

      if (sub_29AE150E4(v14))
      {
        v21 = v33[48];
        v20 = v33[49];
        while (v21 != v20)
        {
          v22 = *v21;
          v23 = v21[1];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!sub_29B238B44(v22))
          {
            v24 = sub_29AE15164(v14);
            sub_29AAC1E24(v22, v24, &v47);
            if (v47)
            {
              v26 = sub_29AAC1FF8(v47);
            }

            else
            {
              v26 = sub_29B1F31FC(0, v25);
            }

            if (v26[23] < 0)
            {
              sub_29A008D14(&__str, *v26, *(v26 + 1));
            }

            else
            {
              v27 = *v26;
              __str.__r_.__value_.__r.__words[2] = *(v26 + 2);
              *&__str.__r_.__value_.__l.__data_ = v27;
            }

            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            v29 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              std::string::operator=(&__dst, &__str);
              v29 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            if (v29 < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (v48)
            {
              sub_29A014BEC(v48);
            }
          }

          if (v23)
          {
            sub_29A014BEC(v23);
          }

          v21 += 2;
        }
      }

      a3 = v32;
      v31 = **(*v32 + 152);
      v45[0] = v37;
      v45[1] = &v7->__vftable;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B238C48(v39, v45, v31, &__dst, v36, 0);
      v4 = v33;
      if (v7)
      {
        sub_29A014BEC(v7);
      }

      v44[0] = v35;
      v44[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v43[0] = v14;
      v43[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B238EC4(v39, v44, v31, v43, (v33 + 7), 0);
LABEL_59:
      if (v13)
      {
        sub_29A014BEC(v13);
      }

      if (v8)
      {
        sub_29A014BEC(v8);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (!v13)
        {
          goto LABEL_66;
        }

LABEL_65:
        sub_29A014BEC(v13);
        goto LABEL_66;
      }

LABEL_64:
      if (v13)
      {
        goto LABEL_65;
      }

LABEL_66:
      v12 += 16;
    }

    while (v12 != v38);
  }

  __dst.__r_.__value_.__r.__words[0] = &v50;
  sub_29A0176E4(&__dst);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29B238A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v35)
  {
    sub_29A014BEC(v35);
  }

  if (v34)
  {
    sub_29A014BEC(v34);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B238B44(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8) != 6)
    {
      goto LABEL_10;
    }

    v2 = *v2;
  }

  else if (v3 != 6)
  {
    goto LABEL_10;
  }

  if (*v2 == 1869377379 && *(v2 + 4) == 13170)
  {
    return 1;
  }

LABEL_10:
  v5 = (*(*a1 + 64))(a1);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (*(v5 + 8) != 6)
    {
      return 0;
    }

    v5 = *v5;
  }

  else if (v6 != 6)
  {
    return 0;
  }

  return *v5 == 1869377379 && *(v5 + 4) == 13426;
}

void sub_29B238C48(uint64_t a1, void **a2, std::string *a3, std::string *a4, __int128 *a5, int a6)
{
  if (a3)
  {
    v8 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    v9 = v8 >= 0 ? HIBYTE(a4->__r_.__value_.__r.__words[2]) : a4->__r_.__value_.__l.__size_;
    if (v9)
    {
      v11 = *(a5 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a5 + 1);
      }

      if (v11)
      {
        if (v9 != v11 || (v8 >= 0 ? (v16 = a4) : (v16 = a4->__r_.__value_.__r.__words[0]), v12 >= 0 ? (v17 = a5) : (v17 = *a5), memcmp(v16, v17, v9)))
        {
          data = a3[1].__r_.__value_.__l.__data_;
          v19 = sub_29B247ADC();
          if (sub_29A1B00DC(data, v19) || (v20 = a3[1].__r_.__value_.__l.__data_, v21 = sub_29B247C28(), sub_29A1B00DC(v20, v21)))
          {
            std::string::operator=(a3 + 7, a4);
            if (*a2)
            {
              sub_29B20BED8(v33, a4, a5, a3[1].__r_.__value_.__l.__data_);
              if (sub_29B20BF2C(*a2))
              {
                v37.__locale_ = a3;
                if (a6)
                {
                  sub_29B23B200(a1 + 328, &v37, &v37, v33);
                }

                else
                {
                  sub_29B23B588(a1 + 408, &v37, &v37, v33);
                }
              }

              else
              {
                v22 = sub_29A00911C(MEMORY[0x29EDC93C0], "Unsupported color space transform from ", 39);
                v23 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
                if (v23 >= 0)
                {
                  v24 = a4;
                }

                else
                {
                  v24 = a4->__r_.__value_.__r.__words[0];
                }

                if (v23 >= 0)
                {
                  size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = a4->__r_.__value_.__l.__size_;
                }

                v26 = sub_29A00911C(v22, v24, size);
                v27 = sub_29A00911C(v26, " to ", 4);
                v28 = *(a5 + 23);
                if (v28 >= 0)
                {
                  v29 = a5;
                }

                else
                {
                  v29 = *a5;
                }

                if (v28 >= 0)
                {
                  v30 = *(a5 + 23);
                }

                else
                {
                  v30 = *(a5 + 1);
                }

                v31 = sub_29A00911C(v27, v29, v30);
                std::ios_base::getloc((v31 + *(*v31 - 24)));
                v32 = std::locale::use_facet(&v37, MEMORY[0x29EDC93D0]);
                (v32->__vftable[2].~facet_0)(v32, 10);
                std::locale::~locale(&v37);
                std::ostream::put();
                std::ostream::flush();
              }

              if (v36 < 0)
              {
                operator delete(__p);
              }

              if (v34 < 0)
              {
                operator delete(v33[0]);
              }
            }
          }
        }
      }
    }
  }
}

void sub_29B238EC4(uint64_t a1, uint64_t *a2, std::string *a3, uint64_t *a4, uint64_t a5, int a6)
{
  if (*a2)
  {
    v7 = *(a5 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a5 + 8);
    }

    if (v7)
    {
      v13 = sub_29B1DB728(*a4);
      if (a3)
      {
        v14 = v13;
        v15 = v13[23];
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v13 + 1);
        }

        if (v15)
        {
          v16 = sub_29B1DC058(*a4);
          sub_29B1D87A8(&__dst, *a4);
          sub_29B1DDDC4(__dst.__r_.__value_.__l.__data_, v16, v32);
          v18 = v32[0];
          if (v32[1])
          {
            sub_29A014BEC(v32[1]);
          }

          if (__dst.__r_.__value_.__l.__size_)
          {
            sub_29A014BEC(__dst.__r_.__value_.__l.__size_);
          }

          if (v18)
          {
            v19 = sub_29B1DB5B4(*a4, v17);
            if (v19[23] < 0)
            {
              sub_29A008D14(&__dst, *v19, *(v19 + 1));
            }

            else
            {
              v20 = *v19;
              __dst.__r_.__value_.__r.__words[2] = *(v19 + 2);
              *&__dst.__r_.__value_.__l.__data_ = v20;
            }

            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            if (!size)
            {
              std::string::operator=(&__dst, a5);
            }

            data = a3[1].__r_.__value_.__l.__data_;
            v23 = sub_29B246C60();
            v24 = sub_29A1B00DC(data, v23);
            if (v24 || (v25 = a3[1].__r_.__value_.__l.__data_, Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v24), sub_29A1B00DC(v25, Vector2Name)) || (v27 = a3[1].__r_.__value_.__l.__data_, v28 = sub_29B2470A0(), sub_29A1B00DC(v27, v28)) || (v29 = a3[1].__r_.__value_.__l.__data_, v30 = sub_29B2471EC(), sub_29A1B00DC(v29, v30)))
            {
              sub_29B2491D4(v32, v14, &__dst, a3[1].__r_.__value_.__l.__data_, v16);
              if (sub_29B2491D8(*a2))
              {
                std::string::operator=(a3 + 6, v14);
                v31 = a3;
                if (a6)
                {
                  sub_29B23B910(a1 + 368, &v31, &v31, v32);
                }

                else
                {
                  sub_29B23BD34(a1 + 448, &v31, &v31, v32);
                }
              }

              if (v37 < 0)
              {
                operator delete(__p);
              }

              if (v35 < 0)
              {
                operator delete(v34);
              }

              if (v33 < 0)
              {
                operator delete(v32[0]);
              }
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }
}

void sub_29B23910C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_29B239FD0(&a11);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29B23915C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  if (v2 == v3)
  {
    return;
  }

  v5 = a1;
  v6 = 0;
  v7 = (a1 + 264);
  do
  {
    v8 = *v2;
    v9 = *(*v2 + 40);
    if ((v9 & 0x40) != 0)
    {
      goto LABEL_12;
    }

    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    sub_29A008E78(__p, "in");
    a1 = sub_29B23EB84(v8, __p);
    v10 = a1;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if ((*(v10 + 271) & 0x8000000000000000) != 0)
    {
      if (v10[32])
      {
        goto LABEL_13;
      }
    }

    else if (*(v10 + 271))
    {
      goto LABEL_13;
    }

    v11 = v10[3];
    v12 = sub_29B24805C();
    a1 = sub_29A1B00DC(v11, v12);
    if (a1)
    {
LABEL_12:
      sub_29B239A30(a1, a2, v8, 0, 0);
      ++v6;
    }

LABEL_13:
    ++v2;
  }

  while (v2 != v3);
  if (v6)
  {
    v43[0] = 0;
    v43[1] = 0;
    v41 = 0;
    v42 = v43;
    v39 = 0;
    v40 = 0;
    v13 = v5[11];
    for (i = v5[12]; v13 != i; v13 += 8)
    {
      v15 = *(*v13 + 240);
      if (v15 && *(v15 + 16) != v5)
      {
        v38[0] = 0;
        v38[1] = 0;
        *&__p[8] = 0u;
        v36 = 0u;
        *__p = v15;
        v37 = v38;
        v32 = *__p;
        memset(v33, 0, sizeof(v33));
        sub_29B23A1FC(v33, 0, 0, 0);
        v16 = sub_29B23A270(&v34, &v37);
        sub_29B239CC0(v16, v17);
        v29 = xmmword_2A1787298;
        memset(v30, 0, sizeof(v30));
        sub_29B23A1FC(v30, qword_2A17872A8, qword_2A17872B0, (qword_2A17872B0 - qword_2A17872A8) >> 4);
        sub_29B23A270(&v31, &qword_2A17872C0);
        while (!sub_29B23A2C8(&v32, &v29))
        {
          v19 = *(v32 + 16);
          v28 = v19;
          for (j = v43[0]; j; j = *j)
          {
            v21 = j[4];
            if (v19 >= v21)
            {
              if (v21 >= v19)
              {
                goto LABEL_26;
              }

              ++j;
            }
          }

          sub_29A0F2BE4(&v42, &v28, &v28);
          sub_29A0A71C8(&v39, &v28);
LABEL_26:
          sub_29B239CF8(&v32, v18);
        }

        sub_29B23A33C(&v29);
        sub_29B23A33C(&v32);
        a1 = sub_29B23A33C(__p);
      }
    }

    v22 = v5[33];
    v23 = v5[34];
    while (v22 != v23)
    {
      v24 = *v22;
      for (k = v43[0]; k; k = *k)
      {
        v26 = k[4];
        if (v24 >= v26)
        {
          if (v26 >= v24)
          {
            goto LABEL_37;
          }

          ++k;
        }
      }

      sub_29B2399D8(a1, *v22);
      a1 = sub_29B1E5270(v5 + 28, (v24 + 16));
LABEL_37:
      ++v22;
    }

    v27 = v39;
    if (v7 != &v39)
    {
      sub_29A00CB24(v7, v39, v40, (v40 - v39) >> 3);
      v27 = v39;
    }

    if (v27)
    {
      v40 = v27;
      operator delete(v27);
    }

    sub_29A082B84(&v42, v43[0]);
  }
}

void sub_29B239454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 136);
  if (v35)
  {
    *(v33 - 128) = v35;
    operator delete(v35);
  }

  sub_29A082B84(v33 - 112, *(v33 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_29B2394FC(void *a1)
{
  v2 = a1[31];
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  sub_29A019AA0(v24, v2);
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v3 = a1[33];
  for (i = a1[34]; v3 != i; ++v3)
  {
    v21 = *v3;
    v5 = v21[11];
    v6 = v21[12];
    if (v5 == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = *(*v5 + 240);
        if (v8 && *(v8 + 16) != a1)
        {
          ++v7;
        }

        v5 += 8;
      }

      while (v5 != v6);
    }

    v26 = &v21;
    *(sub_29B23ADF0(v24, &v21, &unk_29B769442, &v26) + 6) = v7;
    if (!v7)
    {
      sub_29B239F48(v22, &v21);
    }
  }

  v9 = a1[31];
  v26 = 0;
  sub_29ABB7A3C(a1 + 33, v9, &v26);
  v10 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    v11 = 0;
    do
    {
      v12 = *(*(*(&v22[0] + 1) + ((v23 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v23 & 0x1FF));
      *&v23 = v23 + 1;
      *(&v23 + 1) = v10 - 1;
      if (v23 >= 0x400)
      {
        operator delete(**(&v22[0] + 1));
        *(&v22[0] + 1) += 8;
        *&v23 = v23 - 512;
      }

      *(a1[33] + 8 * v11) = v12;
      v13 = *(v12 + 152);
      v14 = *(v12 + 160);
      while (v13 != v14)
      {
        v15 = *(*v13 + 240);
        v16 = *(*v13 + 248);
        while (v15 != v16)
        {
          v21 = *(*v15 + 16);
          if (v21 != a1)
          {
            v26 = &v21;
            v17 = sub_29B23ADF0(v24, &v21, &unk_29B769442, &v26);
            v18 = *(v17 + 6);
            v19 = __OFSUB__(v18--, 1);
            *(v17 + 6) = v18;
            if ((v18 < 0) ^ v19 | (v18 == 0))
            {
              sub_29B239F48(v22, &v21);
            }
          }

          v15 += 8;
        }

        v13 += 8;
      }

      ++v11;
      v10 = *(&v23 + 1);
    }

    while (*(&v23 + 1));
  }

  sub_29A10C468(v22);
  return sub_29A0EB570(v24);
}

void sub_29B239714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A10C468(va);
  sub_29A0EB570(va1);
  _Unwind_Resume(a1);
}

void sub_29B239740(void *a1, uint64_t a2)
{
  v3 = *(*a2 + 8);
  v4 = a1[19];
  v5 = a1[20];
  while (v4 != v5)
  {
    v6 = *v4;
    (*(*v3 + 192))(&__str, v3, *v4 + 32, *(*v4 + 24), a1 + 36);
    std::string::operator=((v6 + 104), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    ++v4;
  }

  v7 = a1[11];
  v8 = a1[12];
  while (v7 != v8)
  {
    v9 = *v7;
    (*(*v3 + 192))(&__str, v3, *v7 + 32, *(*v7 + 24), a1 + 36);
    std::string::operator=((v9 + 104), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    ++v7;
  }

  v10 = a1[33];
  v11 = a1[34];
  while (v10 != v11)
  {
    v12 = *v10;
    v13 = *(*v10 + 88);
    v14 = *(*v10 + 96);
    while (v13 != v14)
    {
      v15 = *v13;
      sub_29B23C2B4(*v13, &__str);
      (*(*v3 + 192))(&v19, v3, &__str, *(v15 + 24), a1 + 36);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v19;
      std::string::operator=((v15 + 104), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v13;
    }

    v17 = *(v12 + 152);
    v16 = *(v12 + 160);
    while (v17 != v16)
    {
      v18 = *v17;
      sub_29B23C2B4(*v17, &__str);
      (*(*v3 + 192))(&v19, v3, &__str, *(v18 + 24), a1 + 36);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v19;
      std::string::operator=((v18 + 104), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v17;
    }

    ++v10;
  }
}

void sub_29B2399A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2399D8(uint64_t a1, void *a2)
{
  v3 = a2[11];
  v4 = a2[12];
  while (v3 != v4)
  {
    v5 = *v3++;
    sub_29B23C524(v5);
  }

  v7 = a2[19];
  v6 = a2[20];
  while (v7 != v6)
  {
    v8 = *v7++;
    sub_29B23C81C(v8);
  }
}

void sub_29B239A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a3 + 88) + 8 * a4);
  v6 = *(*(a3 + 152) + 8 * a5);
  v7 = *(v5 + 240);
  if (v7)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_29B214228(&v30, *(v6 + 240), *(v6 + 248), (*(v6 + 248) - *(v6 + 240)) >> 3);
    v8 = v30;
    v9 = v31;
    if (v30 != v31)
    {
      do
      {
        v10 = *v8;
        sub_29B23C5EC(v6, *v8);
        sub_29B23C4CC(v10, v7);
        ++v8;
      }

      while (v8 != v9);
      v8 = v30;
    }

    if (v8)
    {
      v31 = v8;
      v11 = v8;
      goto LABEL_43;
    }

    return;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_29B214228(&v30, *(v6 + 240), *(v6 + 248), (*(v6 + 248) - *(v6 + 240)) >> 3);
  v13 = v30;
  v14 = v31;
  if (v30 == v31)
  {
    goto LABEL_41;
  }

  do
  {
    v15 = *v13;
    sub_29B23C5EC(v6, *v13);
    v16 = *(v5 + 128);
    v17 = *(v5 + 136);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(v15 + 136);
    *(v15 + 128) = v16;
    *(v15 + 136) = v17;
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    std::string::operator=((v15 + 56), (v5 + 56));
    if ((*(v5 + 167) & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 152))
      {
        goto LABEL_19;
      }

LABEL_18:
      std::string::operator=((v15 + 144), (v5 + 144));
      goto LABEL_19;
    }

    if (*(v5 + 167))
    {
      goto LABEL_18;
    }

LABEL_19:
    if ((*(v5 + 191) & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 176))
      {
        goto LABEL_24;
      }

LABEL_23:
      std::string::operator=((v15 + 168), (v5 + 168));
      goto LABEL_24;
    }

    if (*(v5 + 191))
    {
      goto LABEL_23;
    }

LABEL_24:
    if ((*(v15 + 271) & 0x8000000000000000) != 0)
    {
      if (!*(v15 + 256))
      {
        goto LABEL_39;
      }
    }

    else if (!*(v15 + 271))
    {
      goto LABEL_39;
    }

    v19 = *(*a2 + 8);
    v20 = *(v5 + 136);
    v27 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v19 + 48))(&v28);
    v23 = v28;
    v22 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(v15 + 136);
    *(v15 + 128) = v23;
    *(v15 + 136) = v22;
    if (v24)
    {
      sub_29A014BEC(v24);
    }

    if (v29)
    {
      sub_29A014BEC(v29);
    }

    v25 = v27;
    if (v27)
    {
      sub_29A014BEC(v27);
    }

    v26 = sub_29B1F31FC(v25, v21);
    std::string::operator=((v15 + 248), v26);
LABEL_39:
    ++v13;
  }

  while (v13 != v14);
  v13 = v30;
LABEL_41:
  if (v13)
  {
    v31 = v13;
    v11 = v13;
LABEL_43:
    operator delete(v11);
  }
}

void sub_29B239C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B239CC0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2A1787290, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D1BA0();
  }

  return &xmmword_2A1787298;
}

__int128 *sub_29B239CF8(__int128 *a1, uint64_t a2)
{
  v2 = a1;
  v3 = *a1;
  if (*a1 && *(*(v3 + 16) + 96) != *(*(v3 + 16) + 88))
  {
    v5 = *(a1 + 3);
    v4 = *(a1 + 4);
    if (v5 >= v4)
    {
      v7 = *(a1 + 2);
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        sub_29A00C9A4();
      }

      v11 = v4 - v7;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFF0;
      v13 = 0xFFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      if (v13)
      {
        v14 = sub_29A017BD4((a1 + 1), v13);
        v13 = v15;
        v7 = *(v2 + 2);
        v8 = *(v2 + 3) - v7;
        v16 = v8 >> 4;
        v3 = *v2;
      }

      else
      {
        v14 = 0;
        v16 = v9;
      }

      v17 = &v14[16 * v9];
      v18 = &v14[16 * v13];
      *v17 = v3;
      v17[1] = 0;
      v6 = v17 + 2;
      v19 = &v17[-2 * v16];
      memcpy(v19, v7, v8);
      a1 = *(v2 + 2);
      *(v2 + 2) = v19;
      *(v2 + 3) = v6;
      *(v2 + 4) = v18;
      if (a1)
      {
        operator delete(a1);
      }
    }

    else
    {
      *v5 = v3;
      v5[1] = 0;
      v6 = v5 + 2;
    }

    *(v2 + 3) = v6;
    v3 = *v2;
    v20 = *(*(*v2 + 16) + 88);
    v21 = *v20;
    v22 = *(*v20 + 240);
    if (v22)
    {
      a1 = (*(**(v22 + 16) + 16))(*(v22 + 16), a2);
      if (!a1)
      {
LABEL_29:
        sub_29B23A024(v2, v22, v21);
        return v2;
      }

      v3 = *v2;
    }
  }

LABEL_24:
  if (v3)
  {
    v28 = v3;
    a1 = sub_29A479190(v2 + 5, &v28);
    *v2 = 0;
    *(v2 + 1) = 0;
  }

  v26 = *(v2 + 3);
  if (*(v2 + 2) != v26)
  {
    while (2)
    {
      v23 = *(v26 - 16);
      v24 = *(v26 - 8);
      do
      {
        ++v24;
        v25 = *(*(v23 + 16) + 88);
        if (v24 >= (*(*(v23 + 16) + 96) - v25) >> 3)
        {
          v28 = v23;
          a1 = sub_29A479190(v2 + 5, &v28);
          v3 = 0;
          *v2 = 0;
          *(v2 + 1) = 0;
          *(v2 + 3) -= 16;
          goto LABEL_24;
        }

        *(v26 - 8) = v24;
        v21 = *(v25 + 8 * v24);
        v22 = *(v21 + 240);
      }

      while (!v22);
      if ((*(**(v22 + 16) + 16))(*(v22 + 16)))
      {
        continue;
      }

      goto LABEL_29;
    }
  }

  sub_29B239CC0(a1, a2);
  *v2 = xmmword_2A1787298;
  if (v2 != &xmmword_2A1787298)
  {
    sub_29A0D7024(v2 + 2, qword_2A17872A8, qword_2A17872B0, (qword_2A17872B0 - qword_2A17872A8) >> 4);
    sub_29B23A37C(v2 + 5, qword_2A17872C0, &qword_2A17872C8);
  }

  return v2;
}

void sub_29B239F48(void **result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = result[4] + v7;
  if (v6 == v8)
  {
    sub_29B23B04C(result);
    v5 = result[1];
    v7 = result[5];
    v8 = &v7[result[4]];
  }

  *(*&v5[(v8 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

uint64_t sub_29B239FD0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
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

uint64_t *sub_29B23A024(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v15 = a2;
  for (i = a1[6]; i; i = *i)
  {
    v7 = i[4];
    if (v7 <= a2)
    {
      if (v7 >= a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_29B23C2B4(a2, &v12);
        v10 = std::string::insert(&v12, 0, "Encountered cycle at element: ");
        v11 = *&v10->__r_.__value_.__l.__data_;
        v14 = v10->__r_.__value_.__r.__words[2];
        v13 = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(exception, &v13);
        *exception = &unk_2A20C79E8;
        __cxa_throw(exception, &unk_2A2070D20, sub_29AAD6B10);
      }

      ++i;
    }
  }

  result = sub_29A0F2BE4((a1 + 5), &v15, &v15);
  *a1 = v15;
  a1[1] = a3;
  return result;
}

void sub_29B23A134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_29B23A198(uint64_t a1)
{
  v1 = sub_29B23C0FC(a1);

  operator delete(v1);
}

void sub_29B23A1CC(uint64_t a1)
{
  v1 = sub_29B2341F8(a1);

  operator delete(v1);
}

char *sub_29B23A1FC(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0D0518(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29B23A254(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B23A270(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  sub_29B226FB8(a1, *a2, (a2 + 8));
  return a1;
}

BOOL sub_29B23A2C8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v4 = a2[2];
  if (v2 - v3 != a2[3] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    v5 = *v3;
    v6 = *(v3 + 1);
    v3 += 16;
    v7 = *v4;
    v8 = v4[1];
    v4 += 2;
    result = v5 == v7 && v6 == v8;
  }

  while (result && v3 != v2);
  return result;
}

uint64_t sub_29B23A33C(uint64_t a1)
{
  sub_29A082B84(a1 + 40, *(a1 + 48));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_29B23A37C(void *result, void *a2, void *a3)
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
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          sub_29B1F278C(v5, v8);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = sub_29A028760(v15);
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

    result = sub_29A08623C(&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29B23A4E0(v5, a2 + 4);
      v12 = a2[1];
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
          v13 = a2[2];
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_29B23A4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A08623C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B23A4E0(uint64_t a1, unint64_t *a2)
{
  v4 = operator new(0x28uLL);
  v5 = *a2;
  v4[4] = *a2;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (v5 >= v7[4])
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_8:
  sub_29A00B204(a1, v6, v8, v4);
  return v4;
}

uint64_t sub_29B23A570(uint64_t a1)
{
  sub_29AA9DEE4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29B23A5AC(uint64_t a1)
{
  sub_29B23A5E8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B23A5E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B23A62C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29B23A62C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void *sub_29B23A694@<X0>(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x200uLL);
  result = sub_29B23A710(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29B23A710(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CAE30;
  sub_29B23A818(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_29B23A7AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAE30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B23A818(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, void *a5, void *a6)
{
  v7 = *a3;
  v8 = a5[1];
  v9[0] = *a5;
  v9[1] = v8;
  *a5 = 0;
  a5[1] = 0;
  sub_29B234038(a2, v7, a4, v9, a6);
  if (v8)
  {

    sub_29A014BEC(v8);
  }
}

void sub_29B23A88C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B23A8A4@<X0>(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x200uLL);
  result = sub_29B23A920(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29B23A920(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CAE30;
  sub_29B23A99C(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_29B23A99C(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, void *a5, void *a6)
{
  v7 = *a3;
  v8 = a5[1];
  v9[0] = *a5;
  v9[1] = v8;
  *a5 = 0;
  a5[1] = 0;
  sub_29B234038(a2, v7, a4, v9, a6);
  if (v8)
  {

    sub_29A014BEC(v8);
  }
}

void sub_29B23AA10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B23AA28(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v9 = sub_29A12A708(a1, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v5 = v9;
      if (v9 >= v11)
      {
        v5 = v9 % v11;
      }
    }

    else
    {
      v5 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v5);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v5)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B23AC94(a1, v10, a4, v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v5 = v10 % v11;
      }

      else
      {
        v5 = v10;
      }
    }

    else
    {
      v5 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v5);
  if (v24)
  {
    i = v28[0];
    *v28[0] = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28[0];
    *v28[0] = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v5) = a1 + 16;
    i = v28[0];
    if (*v28[0])
    {
      v26 = *(*v28[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28[0];
      i = v28[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B23AC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B23AC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B23AD38(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AA9DEE4(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29B23AD94(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29B23A5E8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_29B23ADF0(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v9)
          {
            if (v13[2] == *a2)
            {
              return v13;
            }
          }

          else
          {
            if (v11.u32[0] > 1uLL)
            {
              if (v14 >= v10)
              {
                v14 %= v10;
              }
            }

            else
            {
              v14 &= v10 - 1;
            }

            if (v14 != v4)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v13 = operator new(0x20uLL);
  *v13 = 0;
  v13[1] = v9;
  v13[2] = **a4;
  *(v13 + 6) = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *v13 = *v22;
LABEL_38:
    *v22 = v13;
    goto LABEL_39;
  }

  *v13 = *(a1 + 16);
  *(a1 + 16) = v13;
  *(v21 + 8 * v4) = a1 + 16;
  if (*v13)
  {
    v23 = *(*v13 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v13;
}

void sub_29B23B04C(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0x1000uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0x1000uLL);
    sub_29A0D671C(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    sub_29A0D6614(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = sub_29A00C9BC(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0x1000uLL);
  sub_29A0D6828(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    sub_29A0D6930(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_29B23B1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_29B23B200(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      for (result = *v11; result; result = *result)
      {
        v13 = result[1];
        if (v13 == v8)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B23B458(a1, v8, a3, a4, &v24);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    result = v24;
    *v24 = *v21;
    *v21 = result;
  }

  else
  {
    v22 = v24;
    *v24 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    result = v24;
    if (*v24)
    {
      v23 = *(*v24 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v23 >= v9)
        {
          v23 %= v9;
        }
      }

      else
      {
        v23 &= v9 - 1;
      }

      *(*a1 + 8 * v23) = v24;
      result = v24;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B23B440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A892918(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B23B458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29B23B4D8((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29B23B4D8(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = *(a3 + 6);
  return a1;
}

void sub_29B23B56C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B23B588(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      for (result = *v11; result; result = *result)
      {
        v13 = result[1];
        if (v13 == v8)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B23B7E0(a1, v8, a3, a4, &v24);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    result = v24;
    *v24 = *v21;
    *v21 = result;
  }

  else
  {
    v22 = v24;
    *v24 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    result = v24;
    if (*v24)
    {
      v23 = *(*v24 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v23 >= v9)
        {
          v23 %= v9;
        }
      }

      else
      {
        v23 &= v9 - 1;
      }

      *(*a1 + 8 * v23) = v24;
      result = v24;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B23B7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A892918(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B23B7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29B23B860((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29B23B860(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = *(a3 + 6);
  return a1;
}

void sub_29B23B8F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B23B910(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      for (result = *v11; result; result = *result)
      {
        v13 = result[1];
        if (v13 == v8)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B23BB68(a1, v8, a3, a4, &v24);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    result = v24;
    *v24 = *v21;
    *v21 = result;
  }

  else
  {
    v22 = v24;
    *v24 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    result = v24;
    if (*v24)
    {
      v23 = *(*v24 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v23 >= v9)
        {
          v23 %= v9;
        }
      }

      else
      {
        v23 &= v9 - 1;
      }

      *(*a1 + 8 * v23) = v24;
      result = v24;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B23BB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B23BCD8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B23BB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x68uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29B23BBE8((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29B23BBE8(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = *(a3 + 6);
  if (*(a3 + 79) < 0)
  {
    sub_29A008D14((a1 + 64), *(a3 + 7), *(a3 + 8));
  }

  else
  {
    v7 = *(a3 + 56);
    *(a1 + 80) = *(a3 + 9);
    *(a1 + 64) = v7;
  }

  return a1;
}

void sub_29B23BCA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23BCD8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B23A62C(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29B23BD34(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      for (result = *v11; result; result = *result)
      {
        v13 = result[1];
        if (v13 == v8)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B23BF8C(a1, v8, a3, a4, &v24);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    result = v24;
    *v24 = *v21;
    *v21 = result;
  }

  else
  {
    v22 = v24;
    *v24 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    result = v24;
    if (*v24)
    {
      v23 = *(*v24 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v23 >= v9)
        {
          v23 %= v9;
        }
      }

      else
      {
        v23 &= v9 - 1;
      }

      *(*a1 + 8 * v23) = v24;
      result = v24;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B23BF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B23BCD8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B23BF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x68uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29B23C00C((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29B23C00C(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = *(a3 + 6);
  if (*(a3 + 79) < 0)
  {
    sub_29A008D14((a1 + 64), *(a3 + 7), *(a3 + 8));
  }

  else
  {
    v7 = *(a3 + 56);
    *(a1 + 80) = *(a3 + 9);
    *(a1 + 64) = v7;
  }

  return a1;
}

void sub_29B23C0C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B23C0FC(uint64_t a1)
{
  *a1 = &unk_2A20CADB8;
  sub_29B23A5AC(a1 + 448);
  sub_29B23A570(a1 + 408);
  sub_29B23A5AC(a1 + 368);
  sub_29B23A570(a1 + 328);
  sub_29A0EB4E8((a1 + 288));
  v2 = *(a1 + 264);
  if (v2)
  {
    *(a1 + 272) = v2;
    operator delete(v2);
  }

  sub_29AD97000(a1 + 224);
  v3 = *(a1 + 216);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return sub_29B2341F8(a1);
}

uint64_t sub_29B23C198(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v8;
  }

  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 104), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 120) = *(a4 + 2);
    *(a1 + 104) = v9;
  }

  v10 = a5[1];
  *(a1 + 128) = *a5;
  *(a1 + 136) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 220) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  return a1;
}

void sub_29B23C260(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23C2B4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (*(v4 + 39) >= 0)
  {
    v5 = *(v4 + 39);
  }

  else
  {
    v5 = *(v4 + 24);
  }

  p_p = &__p;
  sub_29A022DE0(&__p, v5 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v9 = *(v4 + 16);
    v8 = (v4 + 16);
    v7 = v9;
    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    memmove(p_p, v10, v5);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v5) = 95;
  v13 = *(a1 + 32);
  v12 = a1 + 32;
  v11 = v13;
  v14 = *(v12 + 23);
  if (v14 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v14 >= 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = *(v12 + 8);
  }

  v17 = std::string::append(&__p, v15, v16);
  *a2 = *v17;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29B23C3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23C3BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    v7 = *(a1 + 128);
    v8 = *(a1 + 136);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 32))(v7, a2);
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  else
  {
    v9 = sub_29B1F31FC(a1, a2);
    if (v9[23] < 0)
    {
      sub_29A008D14(a3, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      *(a3 + 16) = *(v9 + 2);
      *a3 = v10;
    }
  }

  if (v6)
  {

    sub_29A014BEC(v6);
  }
}

void sub_29B23C4A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23C4CC(void *a1, uint64_t a2)
{
  if (a1[30] != a2)
  {
    v6[3] = v2;
    v6[4] = v3;
    sub_29B23C524(a1);
    if (a2)
    {
      a1[30] = a2;
      v6[0] = a1;
      sub_29A0A71C8(a2 + 240, v6);
    }
  }
}

void *sub_29B23C524(void *result)
{
  v1 = result[30];
  if (v1)
  {
    v2 = result;
    v4 = *(v1 + 240);
    v3 = *(v1 + 248);
    if (v4 != v3)
    {
      v5 = *(v1 + 240);
      while (*v5 != result)
      {
        v5 += 8;
        v4 += 8;
        if (v5 == v3)
        {
          v4 = *(v1 + 248);
          break;
        }
      }
    }

    if (v3 != v4)
    {
      v6 = (v3 - (v4 + 8));
      if (v3 != v4 + 8)
      {
        result = memmove(v4, v4 + 8, v3 - (v4 + 8));
      }

      *(v1 + 248) = &v6[v4];
    }

    v2[30] = 0;
  }

  return result;
}

uint64_t sub_29B23C5B0(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (*(v2 + 8) == *(*(a1 + 16) + 8))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void *sub_29B23C5EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 240);
  v4 = *(a1 + 248);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        goto LABEL_4;
      }
    }
  }

  if (v3 == v4)
  {
LABEL_4:
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29B23C2B4(a1, &v17);
    v7 = std::string::insert(&v17, 0, "Cannot break non-existent connection from output: ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v18, " to input: ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29B23C2B4(a2, &v16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v16;
    }

    else
    {
      v11 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v19, v11, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21 = v13->__r_.__value_.__r.__words[2];
    v20 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v20);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  return sub_29B23C524(a2);
}

void sub_29B23C768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

void sub_29B23C81C(uint64_t a1)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_29B214228(&v20, *(a1 + 240), *(a1 + 248), (*(a1 + 248) - *(a1 + 240)) >> 3);
  v2 = v20;
  v3 = v21;
  while (v2 != v3)
  {
    v4 = *v2++;
    sub_29B23C524(v4);
  }

  if (*(a1 + 240) != *(a1 + 248))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::to_string(&v15, (*(a1 + 248) - *(a1 + 240)) >> 3);
    v6 = std::string::insert(&v15, 0, "Number of output connections not broken properly'");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v16, " for output: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29B23C2B4(a1, &v14);
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

    v12 = std::string::append(&v17, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v19 = v12->__r_.__value_.__r.__words[2];
    v18 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v18);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_29B23C9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      v37 = *(v35 - 56);
      if (v37)
      {
        *(v35 - 48) = v37;
        operator delete(v37);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

uint64_t sub_29B23CA70(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_2A20CAE08;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return a1;
}

void sub_29B23CB10(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t **a3@<X2>, void *a4@<X3>, std::string::size_type *a5@<X8>)
{
  v126 = a1;
  sub_29B23ECE8(&v126, a2, a5);
  v8 = *a4;
  (*(**a4 + 232))(&v124, *a4, a3, a4);
  v9 = *a5;
  v10 = v124;
  v124 = 0uLL;
  v11 = *(v9 + 184);
  *(v9 + 176) = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
    if (*(&v124 + 1))
    {
      sub_29A014BEC(*(&v124 + 1));
    }
  }

  if (!*(*a5 + 176))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29AABE2F0(a3);
    std::operator+<char>();
    v106 = std::string::append(&__p, "' matching target '");
    v107 = *&v106->__r_.__value_.__l.__data_;
    v122.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&v122.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    v108 = (*(*v8 + 16))(v8);
    v109 = *(v108 + 23);
    if (v109 >= 0)
    {
      v110 = v108;
    }

    else
    {
      v110 = *v108;
    }

    if (v109 >= 0)
    {
      v111 = *(v108 + 23);
    }

    else
    {
      v111 = *(v108 + 8);
    }

    v112 = std::string::append(&v122, v110, v111);
    v113 = *&v112->__r_.__value_.__l.__data_;
    v123.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
    *&v123.__r_.__value_.__l.__data_ = v113;
    v112->__r_.__value_.__l.__size_ = 0;
    v112->__r_.__value_.__r.__words[2] = 0;
    v112->__r_.__value_.__r.__words[0] = 0;
    v114 = std::string::append(&v123, "'");
    v115 = *&v114->__r_.__value_.__l.__data_;
    v125 = v114->__r_.__value_.__r.__words[2];
    v124 = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v124);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B1EB1E0(a3, &v124);
  v13 = *(&v124 + 1);
  for (i = v124; i != v13; i += 2)
  {
    v14 = (*(**i + 64))();
    v16 = sub_29B246738(v14, v15);
    v17 = *i;
    v19 = sub_29B1F31FC(v16, v18);
    v20 = sub_29B1D18A4(v17, v19);
    if (v20)
    {
      sub_29B23D768(*a5, (*i + 48), v16);
    }

    else
    {
      v22 = *i;
      v23 = sub_29B1F31FC(v20, v21);
      if (sub_29AAC1EC0(v22, v23))
      {
        v24 = *i;
        v119 = 0;
        v120 = 0;
        sub_29B1DB034(v24, &v119, &v123);
        if (v120)
        {
          sub_29A014BEC(v120);
        }

        memset(&v122, 0, sizeof(v122));
        v25 = *i;
        sub_29A008E78(&__p, off_2A14FDC88[0]);
        v26 = sub_29A8877BC((v25 + 160), &__p);
        if (v26)
        {
          v28 = (v26 + 5);
        }

        else
        {
          v28 = sub_29B1F31FC(0, v27);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v29 = (*(**(*a4 + 8) + 200))(*(*a4 + 8), &v123, v16, v28, &v122);
        v30 = *a5;
        v31 = *i;
        if (v29)
        {
          v32 = sub_29B23D9F0(v30, (v31 + 48), v122.__r_.__value_.__l.__data_);
          v33 = v32;
          v35 = v122.__r_.__value_.__r.__words[2];
          size = v122.__r_.__value_.__l.__size_;
          if (v122.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v122.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v36 = *(v32 + 136);
          *(v33 + 128) = size;
          *(v33 + 136) = v35;
          if (v36)
          {
            sub_29A014BEC(v36);
          }

          if (!v35)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v33 = sub_29B23D9F0(v30, (v31 + 48), v16);
          v37 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
          if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v37 = v123.__r_.__value_.__l.__size_;
          }

          if (!v37)
          {
            goto LABEL_34;
          }

          v38 = *i;
          v116 = 0;
          v117 = 0;
          sub_29B2345F4(v38, &v116, &v118);
          v39 = v118;
          if (*(&v118 + 1))
          {
            atomic_fetch_add_explicit((*(&v118 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v40 = *(v33 + 136);
          *(v33 + 128) = v39;
          if (v40)
          {
            sub_29A014BEC(v40);
          }

          if (*(&v118 + 1))
          {
            sub_29A014BEC(*(&v118 + 1));
          }

          v35 = v117;
          if (!v117)
          {
            goto LABEL_34;
          }
        }

        sub_29A014BEC(v35);
LABEL_34:
        if (sub_29B2346E8(*i))
        {
          *(v33 + 232) |= 1u;
        }

        if (v122.__r_.__value_.__r.__words[2])
        {
          sub_29A014BEC(v122.__r_.__value_.__r.__words[2]);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v123.__r_.__value_.__r.__words[0] = &v124;
  sub_29A0176E4(&v123);
  (*(**(*a5 + 176) + 32))(*(*a5 + 176), *a5, a4);
  v41 = *a5;
  if (*(*a5 + 160) == *(*a5 + 152))
  {
    sub_29A008E78(&v124, "out");
    v42 = ((*a3)[8])(a3);
    v44 = sub_29B246738(v42, v43);
    sub_29B23D768(v41, &v124, v44);
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124);
    }
  }

  v45 = sub_29B1EE708(a3);
  v46 = *a5;
  *(v46 + 40) = 1;
  v47 = *(v46 + 152);
  v48 = *v47;
  v49 = *(*v47 + 24);
  v50 = sub_29B24883C();
  if (sub_29A1B00DC(v49, v50))
  {
    v51 = *a5;
    v52 = 8;
LABEL_69:
    *(v51 + 40) = v52;
    goto LABEL_70;
  }

  v53 = *(v48 + 24);
  v54 = sub_29B24844C();
  v55 = sub_29A1B00DC(v53, v54);
  v56 = a3 + 6;
  if (v55)
  {
    v57 = *(a3 + 71);
    if (v57 < 0)
    {
      if (a3[7] != 16)
      {
        goto LABEL_60;
      }

      v58 = *v56;
    }

    else
    {
      v58 = (a3 + 6);
      if (v57 != 16)
      {
        goto LABEL_60;
      }
    }

    v64 = *v58;
    v63 = v58[1];
    if (v64 == 0x61667275735F444ELL && v63 == 0x74696C6E755F6563)
    {
      goto LABEL_66;
    }

LABEL_60:
    sub_29A008E78(&v124, "ND_convert_");
    if (sub_29B1F3958(a3 + 6, &v124))
    {
      sub_29A008E78(&v123, "_surfaceshader");
      v66 = sub_29B1F39FC(a3 + 6, &v123);
      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v66 = 0;
    }

    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124);
      if (v66)
      {
        goto LABEL_66;
      }
    }

    else if (v66)
    {
LABEL_66:
      v51 = *a5;
      v52 = 147460;
      goto LABEL_69;
    }

    v51 = *a5;
    v52 = 16390;
    goto LABEL_69;
  }

  v59 = *(v48 + 24);
  v60 = sub_29B248548();
  if (sub_29A1B00DC(v59, v60))
  {
    v51 = *a5;
    v52 = 32774;
    goto LABEL_69;
  }

  v61 = *(v48 + 24);
  v62 = sub_29B248740();
  if (sub_29A1B00DC(v61, v62))
  {
    v51 = *a5;
    v52 = 65542;
    goto LABEL_69;
  }

  v82 = *(v48 + 24);
  v83 = sub_29B248158();
  if (!sub_29A1B00DC(v82, v83))
  {
    v87 = *(v48 + 24);
    v88 = sub_29B248254();
    if (sub_29A1B00DC(v87, v88))
    {
      v51 = *a5;
      v52 = 1026;
      goto LABEL_69;
    }

    v89 = *(v48 + 24);
    v90 = sub_29B248350();
    if (sub_29A1B00DC(v89, v90))
    {
      v51 = *a5;
      v52 = 2050;
      goto LABEL_69;
    }

    v98 = sub_29AABE2F0(a3);
    if (sub_29A0F2648(v98, qword_2A14FE698))
    {
      v51 = *a5;
      v52 = 65;
      goto LABEL_69;
    }

    v104 = sub_29AABE2F0(a3);
    if (sub_29A0F2648(v104, qword_2A14FE6A0))
    {
      v51 = *a5;
      v52 = 2097153;
      goto LABEL_69;
    }

    if (sub_29A0F2648(v45, qword_2A14FE6D0) || sub_29A0F2648(v45, qword_2A14FE6D8))
    {
      v51 = *a5;
      v52 = 17;
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  *(*a5 + 40) = 130;
  sub_29A008E78(&v124, "bsdf");
  v84 = sub_29A8877BC(a3 + 20, &v124);
  if (v84)
  {
    v86 = (v84 + 5);
  }

  else
  {
    v86 = sub_29B1F31FC(0, v85);
  }

  if (SHIBYTE(v125) < 0)
  {
    operator delete(v124);
  }

  v91 = strlen(qword_2A14FE6C0);
  v92 = v91;
  v93 = v86[23];
  if (v93 < 0)
  {
    if (v91 != *(v86 + 1))
    {
      goto LABEL_127;
    }

    if (v91 == -1)
    {
      sub_29A0F26CC();
    }

    v94 = *v86;
  }

  else
  {
    v94 = v86;
    if (v92 != v93)
    {
      goto LABEL_127;
    }
  }

  if (!memcmp(v94, qword_2A14FE6C0, v92))
  {
    v51 = *a5;
    v97 = *(*a5 + 40) | 0x100;
    goto LABEL_133;
  }

LABEL_127:
  v95 = sub_29A0F2648(v86, qword_2A14FE6C8);
  v51 = *a5;
  v96 = *(*a5 + 40);
  if (v95)
  {
    v97 = v96 | 0x200;
  }

  else
  {
    v97 = v96 | 0x300;
  }

LABEL_133:
  *(v51 + 40) = v97;
  v99 = *(a3 + 71);
  if ((v99 & 0x80000000) == 0)
  {
    v100 = (a3 + 6);
    if (v99 != 13)
    {
      goto LABEL_142;
    }

LABEL_138:
    v101 = *v100;
    v102 = *(v100 + 5);
    if (v101 == 0x726579616C5F444ELL && v102 == 0x666473625F726579)
    {
      goto LABEL_144;
    }

    goto LABEL_142;
  }

  if (a3[7] == 13)
  {
    v100 = *v56;
    goto LABEL_138;
  }

LABEL_142:
  if (sub_29A0F2648(a3 + 6, "ND_layer_vdf"))
  {
    v51 = *a5;
LABEL_144:
    v52 = *(v51 + 40) | 0x1000;
    goto LABEL_69;
  }

  if (sub_29A0F2648(a3 + 6, "ND_thin_film_bsdf"))
  {
    v51 = *a5;
    v52 = *(*a5 + 40) | 0x2000;
    goto LABEL_69;
  }

LABEL_70:
  v67 = strlen(qword_2A14FE6D0);
  v68 = v67;
  v69 = v45[23];
  if (v69 < 0)
  {
    if (v67 != *(v45 + 1))
    {
      goto LABEL_77;
    }

    if (v67 == -1)
    {
      sub_29A0F26CC();
    }

    v70 = *v45;
  }

  else
  {
    v70 = v45;
    if (v68 != v69)
    {
      goto LABEL_77;
    }
  }

  if (!memcmp(v70, qword_2A14FE6D0, v68))
  {
    goto LABEL_87;
  }

LABEL_77:
  v71 = strlen(qword_2A14FE6E0);
  v72 = v71;
  if ((v69 & 0x80000000) != 0)
  {
    if (v71 != *(v45 + 1))
    {
      goto LABEL_84;
    }

    if (v71 == -1)
    {
      sub_29A0F26CC();
    }

    v73 = *v45;
LABEL_83:
    if (memcmp(v73, qword_2A14FE6E0, v72))
    {
      goto LABEL_84;
    }

LABEL_87:
    v77 = 0x40000;
LABEL_108:
    *(*a5 + 40) |= v77;
    goto LABEL_109;
  }

  v73 = v45;
  if (v72 == v69)
  {
    goto LABEL_83;
  }

LABEL_84:
  v74 = strlen(qword_2A14FE6D8);
  v75 = v74;
  if ((v69 & 0x80000000) != 0)
  {
    if (v74 != *(v45 + 1))
    {
      goto LABEL_92;
    }

    if (v74 == -1)
    {
      sub_29A0F26CC();
    }

    v76 = *v45;
  }

  else
  {
    v76 = v45;
    if (v75 != v69)
    {
      goto LABEL_92;
    }
  }

  if (!memcmp(v76, qword_2A14FE6D8, v75))
  {
LABEL_102:
    v77 = 0x80000;
    goto LABEL_108;
  }

LABEL_92:
  v78 = strlen(qword_2A14FE6E8);
  v79 = v78;
  if ((v69 & 0x80000000) != 0)
  {
    if (v78 != *(v45 + 1))
    {
      goto LABEL_99;
    }

    if (v78 == -1)
    {
      sub_29A0F26CC();
    }

    v80 = *v45;
LABEL_98:
    if (memcmp(v80, qword_2A14FE6E8, v79))
    {
      goto LABEL_99;
    }

    goto LABEL_102;
  }

  v80 = v45;
  if (v79 == v69)
  {
    goto LABEL_98;
  }

LABEL_99:
  v81 = strlen(qword_2A14FE6F0);
  if ((v69 & 0x80000000) != 0)
  {
    if (v81 != *(v45 + 1))
    {
      goto LABEL_109;
    }

    if (v81 == -1)
    {
      sub_29A0F26CC();
    }

    v45 = *v45;
  }

  else if (v81 != v69)
  {
    goto LABEL_109;
  }

  if (!memcmp(v45, qword_2A14FE6F0, v81))
  {
    v77 = 0x100000;
    goto LABEL_108;
  }

LABEL_109:
  sub_29B23DC78(*a5, a3, a4);
}