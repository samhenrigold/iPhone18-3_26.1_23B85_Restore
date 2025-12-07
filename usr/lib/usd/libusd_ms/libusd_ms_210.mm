void sub_29B24ACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char a26)
{
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  if (v27)
  {
    sub_29A014BEC(v27);
  }

  *(v29 - 88) = &a26;
  sub_29A0176E4((v29 - 88));
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }

  sub_29B1EBFEC(v29 - 184);
  _Unwind_Resume(a1);
}

void sub_29B24ADB4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29AADADD4(*a1, &v18);
  v3 = v18;
  for (i = v19; v3 != i; v3 += 16)
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v15 = 0;
    }

    v14 = v6;
    v7 = sub_29A008E78(__p, off_2A14FDEF0[0]);
    v9 = sub_29B1F31FC(v7, v8);
    sub_29B1ECB8C(&v14, __p, v9, &v16);
    v10 = v16;
    v11 = v17;
    v20 = &v16;
    sub_29A0176E4(&v20);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v10 != v11)
    {
      v16 = v6;
      v17 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A01729C(a2, &v16);
      if (v17)
      {
        sub_29A014BEC(v17);
      }
    }

    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  v16 = &v18;
  sub_29A0176E4(&v16);
}

void sub_29B24AF68(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60[3] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v55[0] = *a1;
  v55[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B24ADB4(v55, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (*a2 == *(a2 + 8))
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v7 = *a1;
    v8 = sub_29B1F31FC(v5, v6);
    sub_29AAD2C74(v7, v8, &v56);
    v11 = v56;
    v12 = v57;
    if (v56 != v57)
    {
      do
      {
        v14 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = sub_29B1F31FC(v9, v10);
        sub_29AAD856C(v14, v15, &v51);
        v17 = *(&v51 + 1);
        for (i = v51; i != v17; i += 2)
        {
          v18 = *i;
          v19 = i[1];
          *&v50 = *i;
          *(&v50 + 1) = v19;
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }

          v20 = sub_29B22D06C(v18);
          v21 = sub_29B22D06C(*a1);
          v22 = v20[23];
          if (v22 >= 0)
          {
            v23 = v20[23];
          }

          else
          {
            v23 = *(v20 + 1);
          }

          v24 = v21[23];
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(v21 + 1);
          }

          if (v23 == v24)
          {
            v26 = v22 >= 0 ? v20 : *v20;
            v27 = v25 >= 0 ? v21 : *v21;
            if (!memcmp(v26, v27, v23))
            {
              sub_29A017F80(&v52, &v50);
            }
          }

          if (*(&v50 + 1))
          {
            sub_29A014BEC(*(&v50 + 1));
          }
        }

        *&v50 = &v51;
        sub_29A0176E4(&v50);
        if (v13)
        {
          sub_29A014BEC(v13);
        }

        v11 += 2;
      }

      while (v11 != v12);
    }

    *&v51 = &v56;
    sub_29A0176E4(&v51);
    v28 = *a1;
    v31 = sub_29B1F31FC(v29, v30);
    sub_29AAD856C(v28, v31, &v56);
    v32 = v56;
    v33 = v57;
    if (v56 != v57)
    {
      do
      {
        v34 = *v32;
        v35 = v32[1];
        *&v51 = *v32;
        *(&v51 + 1) = v35;
        if (v35)
        {
          atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
        }

        v36 = sub_29B22D06C(v34);
        v37 = sub_29B22D06C(*a1);
        v38 = v36[23];
        if (v38 >= 0)
        {
          v39 = v36[23];
        }

        else
        {
          v39 = *(v36 + 1);
        }

        v40 = v37[23];
        v41 = v40;
        if ((v40 & 0x80u) != 0)
        {
          v40 = *(v37 + 1);
        }

        if (v39 == v40)
        {
          v42 = v38 >= 0 ? v36 : *v36;
          v43 = v41 >= 0 ? v37 : *v37;
          if (!memcmp(v42, v43, v39))
          {
            sub_29A017F80(&v52, &v51);
          }
        }

        if (*(&v51 + 1))
        {
          sub_29A014BEC(*(&v51 + 1));
        }

        v32 += 2;
      }

      while (v32 != v33);
    }

    *&v51 = &v56;
    sub_29A0176E4(&v51);
    sub_29A008E78(&v56, off_2A14FDED8[0]);
    sub_29A008E78(v58, off_2A14FDEE0[0]);
    sub_29A008E78(v59, off_2A14FDEE8[0]);
    sub_29A008E78(v60, off_2A14FDF08[0]);
    sub_29A9FDE68(&v51, &v56, 4);
    for (j = 0; j != -12; j -= 3)
    {
      if (SHIBYTE(v60[j + 2]) < 0)
      {
        operator delete(v60[j]);
      }
    }

    v45 = v52;
    for (k = v53; v45 != k; v45 += 2)
    {
      v47 = *v45;
      v48 = v45[1];
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v47 + 80))(&v56, v47);
      if (v56)
      {
        v49 = (v56->__vftable[1].__get_deleter)(v56);
        if (!sub_29A00AF58(&v51, v49))
        {
          *&v50 = v47;
          *(&v50 + 1) = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29A01729C(a2, &v50);
          if (*(&v50 + 1))
          {
            sub_29A014BEC(*(&v50 + 1));
          }
        }
      }

      if (v57)
      {
        sub_29A014BEC(v57);
      }

      if (v48)
      {
        sub_29A014BEC(v48);
      }
    }

    sub_29A019EE8(&v51, *(&v51 + 1));
    v56 = &v52;
    sub_29A0176E4(&v56);
  }
}

void sub_29B24B3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  v16 = (v14 + 95);
  v17 = -96;
  v18 = v16;
  while (1)
  {
    v19 = *v18;
    v18 -= 24;
    if (v19 < 0)
    {
      operator delete(*(v16 - 23));
    }

    v16 = v18;
    v17 += 24;
    if (!v17)
    {
      a9 = &a14;
      sub_29A0176E4(&a9);
      sub_29A0176E4(&a14);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29B24B500(void *a1, std::string *this)
{
  memset(&__str, 0, sizeof(__str));
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    i = 0;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = std::string::find(this, 36, i);
      v8 = v7 + 1;
      if (v7 == -1 || v8 >= size)
      {
        break;
      }

      std::string::basic_string(&v26, this, i, v7 - i, &v28);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v26;
      }

      else
      {
        v10 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = v26.__r_.__value_.__l.__size_;
      }

      std::string::append(&__str, v10, v11);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      *(&v26.__r_.__value_.__s + 23) = 1;
      LOWORD(v26.__r_.__value_.__l.__data_) = 36;
      for (i = v8; i < size; ++i)
      {
        v12 = (this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? this : this->__r_.__value_.__r.__words[0];
        v13 = v12->__r_.__value_.__s.__data_[i];
        if (!((v13 & 0x80000000) != 0 ? __maskrune(v13, 0x500uLL) : *(v6 + 4 * v13 + 60) & 0x500))
        {
          break;
        }

        if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = this;
        }

        else
        {
          v15 = this->__r_.__value_.__r.__words[0];
        }

        std::string::push_back(&v26, v15->__r_.__value_.__s.__data_[i]);
      }

      v16 = sub_29A8877BC(a1, &v26);
      v17 = (v16 + 5);
      if (!v16)
      {
        v17 = &v26;
      }

      v18 = v16 + 63;
      if (!v16)
      {
        v18 = &v26.__r_.__value_.__r.__words[2] + 7;
      }

      v19 = *v18;
      p_size = (v16 + 6);
      if (!v16)
      {
        p_size = &v26.__r_.__value_.__l.__size_;
      }

      v21 = *p_size;
      if ((v19 & 0x80u) == 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = v17->__r_.__value_.__r.__words[0];
      }

      if ((v19 & 0x80u) == 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      std::string::append(&__str, v22, v23);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (i >= size)
      {
        goto LABEL_55;
      }
    }

    std::string::basic_string(&v26, this, i, 0xFFFFFFFFFFFFFFFFLL, &v28);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v26;
    }

    else
    {
      v24 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(&__str, v24, v25);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

LABEL_55:
  std::string::operator=(this, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29B24B738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B24B784(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      if ((*(v2 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v2 + 8))
        {
LABEL_6:
          v5 = std::stoi(v2, 0, 10);
          if ((v5 - 2000) <= 0xFFFFFC18)
          {
            exception = __cxa_allocate_exception(0x20uLL);
            std::operator+<char>();
            sub_29AAD6B14(exception, &v23);
            __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
          }

          if ((v5 - 1000) == 10 * ((v5 - 1000) / 0xAu))
          {
            v6 = 9;
          }

          else
          {
            v6 = (v5 - 1000) % 0xAu - 1;
          }

          v7 = v6;
          v8 = ((((26215 * (v5 - 1000 + ~v6)) >> 16) >> 2) + (((26215 * (v5 - 1000 + ~v6)) >> 16) >> 15));
          v10 = *(a2 + 8);
          v9 = *(a2 + 16);
          if (v10 >= v9)
          {
            v12 = (v10 - *a2) >> 3;
            v13 = v12 + 1;
            if ((v12 + 1) >> 61)
            {
              sub_29A00C9A4();
            }

            v14 = v9 - *a2;
            if (v14 >> 2 > v13)
            {
              v13 = v14 >> 2;
            }

            if (v14 >= 0x7FFFFFFFFFFFFFF8)
            {
              v15 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              v16 = sub_29A00C9BC(a2, v15);
            }

            else
            {
              v16 = 0;
            }

            v17 = &v16[8 * v12];
            v18 = &v16[8 * v15];
            *v17 = v7;
            v17[1] = v8;
            v11 = v17 + 2;
            v19 = *(a2 + 8) - *a2;
            v20 = v17 - v19;
            memcpy(v17 - v19, *a2, v19);
            v21 = *a2;
            *a2 = v20;
            *(a2 + 8) = v11;
            *(a2 + 16) = v18;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v10 = v7;
            v10[1] = v8;
            v11 = v10 + 2;
          }

          *(a2 + 8) = v11;
        }
      }

      else if (*(v2 + 23))
      {
        goto LABEL_6;
      }

      v2 += 24;
    }

    while (v2 != v3);
  }
}

void sub_29B24B988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t sub_29B24B9E0(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float32x2_t result)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (*a1 != v4)
  {
    v6 = *v5;
    v7 = (v4 - v5) >> 3;
    if (v7 < 2)
    {
      v10 = *v5;
    }

    else
    {
      v8 = v7 - 1;
      v9 = v5 + 1;
      v10 = v6;
      do
      {
        v11 = *v9++;
        v10 = vbsl_s8(vcgt_f32(v10, v11), v11, v10);
        v6 = vbsl_s8(vcgt_f32(v11, v6), v11, v6);
        --v8;
      }

      while (v8);
    }

    __asm { FMOV            V2.2S, #1.0 }

    *a2 = vdiv_f32(_D2, vsub_f32(vadd_f32(v6, _D2), v10));
    result = vneg_f32(v10);
    *a3 = result;
  }

  return result;
}

void sub_29B24BA50(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4[0] = *a1;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B24AF68(v4, &v5);
  sub_29A03AF64(a2);
  *a2 = v5;
  a2[2] = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  sub_29A0176E4(&v7);
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29B24BAE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B24BAF8()
{
  *&v9 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787680))
  {
    sub_29A008E78(v1, "opacity");
    v2 = 1065353216;
    sub_29A008E78(v3, "existence");
    v4 = 1065353216;
    sub_29A008E78(v5, "alpha");
    v6 = 1065353216;
    sub_29A008E78(v7, "transmission");
    v8 = 0;
    qword_2A1787670 = 0;
    unk_2A1787678 = 0;
    qword_2A1787668 = 0;
    sub_29B24BE7C(&qword_2A1787668, v1, &v9, 4uLL);
    for (i = 0; i != -16; i -= 4)
    {
      if (SHIBYTE(v7[i + 2]) < 0)
      {
        operator delete(v7[i]);
      }
    }

    __cxa_guard_release(&qword_2A1787680);
  }
}

void sub_29B24BC34(_Unwind_Exception *a1)
{
  v3 = (v1 + 119);
  v4 = -128;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A1787680);
      _Unwind_Resume(a1);
    }
  }
}

const void **sub_29B24BCAC(const void **result, __int128 *a2)
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
      sub_29A00C9A4();
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

    v20[4] = result;
    if (v11)
    {
      v12 = sub_29A10CB10(result, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[32 * v8];
    v14 = &v12[32 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v13 + 6) = *(a2 + 6);
    v7 = v13 + 32;
    v16 = v3[1] - *v3;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *v3, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v7;
    v19 = v3[2];
    v3[2] = v14;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_29A10CC84(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v4 + 6) = *(a2 + 6);
    v7 = v4 + 32;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_29B24BDCC(const void **a1, float a2)
{
  if (sub_29B1F4818(*a1) && vabds_f32(*sub_29B1F487C(*a1), a2) < 0.00001)
  {
    return 1;
  }

  result = sub_29B1F5894(*a1);
  if (result)
  {
    v5 = sub_29B1F58F8(*a1);
    return vabds_f32(*v5, a2) < 0.00001 && vabds_f32(v5[1], a2) < 0.00001 && vabds_f32(v5[2], a2) < 0.00001;
  }

  return result;
}

void *sub_29B24BE7C(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29B24BF04(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29B24BEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A10C99C(&a9);
  _Unwind_Resume(a1);
}

void *sub_29B24BF04(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29A008D14(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      *(v4 + 6) = *(v6 + 6);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_29B24BFD0(v10);
  return v4;
}

uint64_t sub_29B24BFD0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A10CC3C(a1);
  }

  return a1;
}

void sub_29B24C008(std::__shared_weak_count *a1@<X0>, std::string ***a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 1;
    do
    {
      v7 = *v4;
      v8 = sub_29B1F31FC(a1, a2);
      sub_29B1ED628(v7, v8, 0, &v10);
      if (v10)
      {
        v9 = (v10 + 48);
        if (!sub_29A8877BC(a3, (v10 + 48)))
        {
          v12 = v9;
          *(sub_29B24C304(a3, v9, &unk_29B76993C, &v12, &v11) + 10) = v6++;
        }
      }

      a1 = *(&v10 + 1);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void sub_29B24C0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A0EB4E8(v10);
  _Unwind_Resume(a1);
}

void sub_29B24C104(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_29A017738(a3);
  v5 = *a2;
  v8 = sub_29B1F31FC(v6, v7);
  sub_29AAC1CE8(v5, v8, &v18);
  v9 = v18;
  for (i = v19; v9 != i; v9 += 2)
  {
    v11 = *v9;
    v12 = v9[1];
    *&v17 = *v9;
    *(&v17 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = (*(*v11 + 64))(v11);
    v15 = sub_29B246738(v13, v14);
    v16 = sub_29B248740();
    if (sub_29A1B00DC(v15, v16))
    {
      sub_29A017F80(a3, &v17);
    }

    if (*(&v17 + 1))
    {
      sub_29A014BEC(*(&v17 + 1));
    }
  }

  *&v17 = &v18;
  sub_29A0176E4(&v17);
}

void sub_29B24C1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  a10 = &a12;
  sub_29A0176E4(&a10);
  _Unwind_Resume(a1);
}

void sub_29B24C220(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_29B212780(a4);
  if (*a3 != *(a3 + 8))
  {
    sub_29B24C008(v8, a3, &v11);
    sub_29A465EE4(a1 + 184, &v11);
    sub_29A0EB4E8(&v11);
    for (i = *(a1 + 200); i; i = *i)
    {
      sub_29AAC0094(*a2, i + 2, &v11);
      if (v11)
      {
        sub_29B2121F8(v11, *(i + 10), a4);
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }
    }
  }

  v10 = (*(a3 + 8) - *a3) >> 4;
  if (*(a4 + 140) < v10)
  {
    *(a4 + 140) = v10;
  }
}

void sub_29B24C2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B24C304(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4, uint64_t a5)
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

  sub_29B24C57C(a1, v10, a4, v28);
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

void sub_29B24C558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B24C57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
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

  *(v9 + 10) = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B24C610(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29B24C62C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a3[1];
  v7 = *a3;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 24))(v5, a1, &v7);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B24C6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B24C6C0(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B24C914(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
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
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B24C8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B24C914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A151A98(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

const void **sub_29B24C984(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B24CBD8(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
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
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B24CBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E759C(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B24CBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29AE13E90(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

void *sub_29B24CC48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      for (result = *v10; result; result = *result)
      {
        v12 = result[1];
        if (v12 == v7)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B24CEAC(a1, v7, a3, &v23);
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v3);
  if (v20)
  {
    result = v23;
    *v23 = *v20;
    *v20 = result;
  }

  else
  {
    v21 = v23;
    *v23 = *(a1 + 16);
    *(a1 + 16) = v21;
    *(v19 + 8 * v3) = a1 + 16;
    result = v23;
    if (*v23)
    {
      v22 = *(*v23 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v22 >= v8)
        {
          v22 %= v8;
        }
      }

      else
      {
        v22 &= v8 - 1;
      }

      *(*a1 + 8 * v22) = v23;
      result = v23;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B24CE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29AE14114(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B24CEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  *(result + 1) = a2;
  *(result + 2) = *a3;
  if (*(a3 + 31) < 0)
  {
    result = sub_29A008D14(result + 24, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *(result + 24) = *(a3 + 8);
    *(result + 5) = *(a3 + 24);
  }

  *(a4 + 16) = 1;
  return result;
}

void sub_29B24CF40(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29AE14114(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29B24CF5C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      for (result = *v10; result; result = *result)
      {
        v12 = result[1];
        if (v12 == v7)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B24D1C0(a1, v7, a3, &v23);
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v3);
  if (v20)
  {
    result = v23;
    *v23 = *v20;
    *v20 = result;
  }

  else
  {
    v21 = v23;
    *v23 = *(a1 + 16);
    *(a1 + 16) = v21;
    *(v19 + 8 * v3) = a1 + 16;
    result = v23;
    if (*v23)
    {
      v22 = *(*v23 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v22 >= v8)
        {
          v22 %= v8;
        }
      }

      else
      {
        v22 &= v8 - 1;
      }

      *(*a1 + 8 * v22) = v23;
      result = v23;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B24D19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29AE14114(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B24D1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  *(result + 1) = a2;
  *(result + 2) = *a3;
  if (*(a3 + 31) < 0)
  {
    result = sub_29A008D14(result + 24, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *(result + 24) = *(a3 + 8);
    *(result + 5) = *(a3 + 24);
  }

  *(a4 + 16) = 1;
  return result;
}

void sub_29B24D254(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29AE14114(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24D270(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2A20CB400;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = a3;
  *(result + 56) = 0;
  return result;
}

void *sub_29B24D2A0(void *result)
{
  result[3] = result[4];
  result[5] = result[6];
  return result;
}

uint64_t sub_29B24D2B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a3 + 88);
  v7 = *(a3 + 96);
  if (v6 != v7)
  {
    while (1)
    {
      v10 = *(*v6 + 24);
      if (v10 != sub_29B24805C())
      {
        break;
      }

      v6 += 8;
      if (v6 == v7)
      {
        return (*(*v5 + 64))(v5, a4);
      }
    }

    std::operator+<char>();
    (*(*v5 + 80))(v5, &__p, a4, 0);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    (*(*v5 + 32))(v5, a4, 1);
    v11 = *(a3 + 88);
    v12 = *(a3 + 96);
    while (v11 != v12)
    {
      v13 = *v11;
      v14 = *(*v11 + 24);
      if (v14 != sub_29B24805C())
      {
        v15 = (*(*v5 + 48))(v5, a4);
        v17 = sub_29B1F31FC(v15, v16);
        (*(*v5 + 208))(v5, v13, v17, a2, a4, 0);
        v18 = sub_29B242ED8();
        (*(*v5 + 72))(v5, v18, a4);
        (*(*v5 + 56))(v5, a4, 0);
      }

      ++v11;
    }

    (*(*v5 + 40))(v5, a4, 1, 1);
  }

  return (*(*v5 + 64))(v5, a4);
}

void sub_29B24D514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B24D530(uint64_t a1, uint64_t *a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = *MEMORY[0x29EDCA608];
  v11 = *a2;
  v61 = sub_29B246C60();
  v62 = 4;
  v63 = sub_29B246A68();
  v64 = 4;
  v65 = sub_29B24696C();
  v66 = 4;
  v67 = sub_29B247ADC();
  v68 = 16;
  v69 = sub_29B247C28();
  v70 = 16;
  Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v69);
  v72 = 8;
  v73 = sub_29B2470A0();
  v74 = 16;
  v75 = sub_29B2471EC();
  v76 = 16;
  v77 = sub_29B247D68();
  v78 = 64;
  v79 = sub_29B247E64();
  v80 = 64;
  sub_29B24DD6C(v60, &v61, 10);
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v12 = a3[11];
  if (a3[12] == v12)
  {
    v18 = 0;
    v17 = 0;
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      __p[0] = *(v12[v14] + 24);
      v15 = sub_29AC246C0(v60, __p);
      if (v15)
      {
        __p[0] = v15[3];
        v16 = __p[0];
        __p[1] = v14;
        sub_29A03A998(&v61, __p);
        v13 += v16;
      }

      else
      {
        __p[0] = 16;
        __p[1] = v14;
        sub_29A03A998(&v61, __p);
        v13 += 16;
      }

      ++v14;
      v12 = a3[11];
    }

    while (v14 < (a3[12] - v12) >> 3);
    v17 = v61;
    v18 = v62;
  }

  v19 = 126 - 2 * __clz((v18 - v17) >> 4);
  if (v18 == v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  sub_29B24E038(v17, v18, v20, 1);
  std::operator+<char>();
  (*(*v11 + 80))(v11, __p, a4, 0);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v11 + 32))(v11, a4, 1);
  if (a3[12] != a3[11])
  {
    v21 = 0;
    v22 = 8;
    do
    {
      v23 = *(v61 + v22);
      v24 = (*(*v11 + 48))(v11, a4);
      v25 = *(a3[11] + v23);
      v27 = sub_29B1F31FC(v24, v26);
      (*(*v11 + 208))(v11, v25, v27, a2, a4, 0);
      v28 = sub_29B242ED8();
      (*(*v11 + 72))(v11, v28, a4);
      (*(*v11 + 56))(v11, a4, 0);
      ++v21;
      v22 += 16;
    }

    while (v21 < (a3[12] - a3[11]) >> 3);
  }

  v29 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - v13;
  if (v29 >= 4)
  {
    v30 = 0;
    v31 = v29 >> 2;
    if (v31 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

    do
    {
      std::to_string(&v57, v30);
      v33 = std::string::insert(&v57, 0, "float pad");
      v34 = *&v33->__r_.__value_.__l.__data_;
      v59 = v33->__r_.__value_.__r.__words[2];
      *__p = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      (*(*v11 + 80))(v11, __p, a4, 1);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      ++v30;
    }

    while (v32 != v30);
  }

  (*(*v11 + 40))(v11, a4, 1, 1);
  (*(*v11 + 64))(v11, a4);
  std::operator+<char>();
  v35 = std::string::append(&v56, "_");
  v36 = *&v35->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = *(a4 + 23);
  if (v37 >= 0)
  {
    v38 = a4;
  }

  else
  {
    v38 = *a4;
  }

  if (v37 >= 0)
  {
    v39 = *(a4 + 23);
  }

  else
  {
    v39 = *(a4 + 8);
  }

  v40 = std::string::append(&v57, v38, v39);
  v41 = *&v40->__r_.__value_.__l.__data_;
  v59 = v40->__r_.__value_.__r.__words[2];
  *__p = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  (*(*v11 + 80))(v11, __p, a4, 0);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  (*(*v11 + 32))(v11, a4, 1);
  if (*(a3 + 23) >= 0)
  {
    v42 = *(a3 + 23);
  }

  else
  {
    v42 = a3[1];
  }

  v43 = &v56;
  sub_29A022DE0(&v56, v42 + 1);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v43 = v56.__r_.__value_.__r.__words[0];
  }

  if (v42)
  {
    if (*(a3 + 23) >= 0)
    {
      v44 = a3;
    }

    else
    {
      v44 = *a3;
    }

    memmove(v43, v44, v42);
  }

  *(&v43->__r_.__value_.__l.__data_ + v42) = 32;
  v45 = *(a5 + 23);
  if (v45 >= 0)
  {
    v46 = a5;
  }

  else
  {
    v46 = *a5;
  }

  if (v45 >= 0)
  {
    v47 = *(a5 + 23);
  }

  else
  {
    v47 = *(a5 + 8);
  }

  v48 = std::string::append(&v56, v46, v47);
  v49 = *&v48->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  v50 = *(a6 + 23);
  if (v50 >= 0)
  {
    v51 = a6;
  }

  else
  {
    v51 = *a6;
  }

  if (v50 >= 0)
  {
    v52 = *(a6 + 23);
  }

  else
  {
    v52 = *(a6 + 8);
  }

  v53 = std::string::append(&v57, v51, v52);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v59 = v53->__r_.__value_.__r.__words[2];
  *__p = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  (*(*v11 + 80))(v11, __p, a4, 1);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  (*(*v11 + 40))(v11, a4, 1, 1);
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  return sub_29A0EB570(v60);
}

void sub_29B24DC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
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

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  sub_29A0EB570(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24DCFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B24DD2C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_29B24DD6C(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_29B24DDE4(a1, a2, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *sub_29B24DDE4(uint64_t a1, void *a2, _OWORD *a3)
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
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == *a2)
          {
            return i;
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

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v8;
  *(i + 1) = *a3;
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
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    *i = *v21;
LABEL_38:
    *v21 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v20 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v22 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v22 >= v9)
      {
        v22 %= v9;
      }
    }

    else
    {
      v22 &= v9 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

unint64_t sub_29B24E038(unint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 8;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 4;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v96 = v9[2];
                v97 = *v9;
                v98 = *(a2 - 2);
                if (v96 <= *v9)
                {
                  if (v98 <= v96)
                  {
                    return result;
                  }

                  v9[2] = v98;
                  *(a2 - 2) = v96;
                  v8 = (v9 + 3);
                  v149 = v9[3];
                  v9[3] = *(a2 - 1);
                  *(a2 - 1) = v149;
                  v150 = v9[2];
                  v151 = *v9;
                  if (v150 <= *v9)
                  {
                    return result;
                  }

                  *v9 = v150;
                  v9[2] = v151;
                  v99 = (v9 + 1);
                }

                else
                {
                  if (v98 <= v96)
                  {
                    v99 = (v9 + 3);
                    v163 = v9[3];
                    v164 = v9[1];
                    *v9 = v96;
                    v9[1] = v163;
                    v9[2] = v97;
                    v9[3] = v164;
                    v165 = *(a2 - 2);
                    if (v165 <= v97)
                    {
                      return result;
                    }

                    v9[2] = v165;
                  }

                  else
                  {
                    v99 = (v9 + 1);
                    *v9 = v98;
                  }

                  *(a2 - 2) = v97;
                }

                v166 = *v99;
                *v99 = *v8;
                *v8 = v166;
                return result;
              case 4:
                v100 = v9[2];
                v101 = *v9;
                v102 = v9[4];
                if (v100 <= *v9)
                {
                  if (v102 > v100)
                  {
                    v152 = (v9 + 3);
                    v153 = v9[3];
                    v154 = v9[5];
                    v9[2] = v102;
                    v9[3] = v154;
                    v9[4] = v100;
                    v9[5] = v153;
                    if (v102 > v101)
                    {
                      *v9 = v102;
                      v9[2] = v101;
                      v103 = (v9 + 1);
                      goto LABEL_204;
                    }

LABEL_206:
                    v170 = *(a2 - 2);
                    if (v170 > v100)
                    {
                      v9[4] = v170;
                      *(a2 - 2) = v100;
                      v171 = v9[5];
                      v9[5] = *(a2 - 1);
                      *(a2 - 1) = v171;
                      v172 = v9[4];
                      v173 = v9[2];
                      if (v172 > v173)
                      {
                        v174 = v9[3];
                        v175 = v9[5];
                        v9[2] = v172;
                        v9[3] = v175;
                        v9[4] = v173;
                        v9[5] = v174;
                        v176 = *v9;
                        if (v172 > *v9)
                        {
                          v177 = v9[1];
                          *v9 = v172;
                          v9[1] = v175;
                          v9[2] = v176;
                          v9[3] = v177;
                        }
                      }
                    }

                    return result;
                  }
                }

                else
                {
                  if (v102 > v100)
                  {
                    v103 = (v9 + 1);
                    *v9 = v102;
                    goto LABEL_203;
                  }

                  v103 = (v9 + 3);
                  v167 = v9[3];
                  v168 = v9[1];
                  *v9 = v100;
                  v9[1] = v167;
                  v9[2] = v101;
                  v9[3] = v168;
                  if (v102 > v101)
                  {
                    v9[2] = v102;
LABEL_203:
                    v9[4] = v101;
                    v152 = (v9 + 5);
LABEL_204:
                    v169 = *v103;
                    *v103 = *v152;
                    *v152 = v169;
                    v100 = v9[4];
                    goto LABEL_206;
                  }
                }

                v100 = v102;
                goto LABEL_206;
              case 5:

                return sub_29B24EB64(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v93 = *(a2 - 2);
              v94 = *v9;
              if (v93 > *v9)
              {
                *v9 = v93;
                *(a2 - 2) = v94;
                v95 = v9[1];
                v9[1] = *(a2 - 1);
                *(a2 - 1) = v95;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v104 = (v9 + 2);
            v106 = v9 == a2 || v104 == a2;
            if (a4)
            {
              if (!v106)
              {
                v107 = 0;
                v108 = v9;
                do
                {
                  v109 = v104;
                  v110 = *(v108 + 2);
                  v111 = *v108;
                  if (v110 > *v108)
                  {
                    v112 = *(v108 + 3);
                    v113 = v107;
                    while (1)
                    {
                      v114 = v9 + v113;
                      v115 = *(v9 + v113 + 8);
                      *(v114 + 2) = v111;
                      *(v114 + 3) = v115;
                      if (!v113)
                      {
                        break;
                      }

                      v111 = *(v114 - 2);
                      v113 -= 16;
                      if (v110 <= v111)
                      {
                        v116 = (v9 + v113 + 16);
                        goto LABEL_137;
                      }
                    }

                    v116 = v9;
LABEL_137:
                    *v116 = v110;
                    v116[1] = v112;
                  }

                  v104 = v109 + 16;
                  v107 += 16;
                  v108 = v109;
                }

                while (v109 + 16 != a2);
              }
            }

            else if (!v106)
            {
              v155 = v9 + 3;
              do
              {
                v156 = v104;
                v157 = v7[2];
                v158 = *v7;
                if (v157 > *v7)
                {
                  v159 = v7[3];
                  v160 = v155;
                  do
                  {
                    v161 = v160;
                    v162 = *(v160 - 2);
                    v160 -= 2;
                    *(v161 - 1) = v158;
                    *v161 = v162;
                    v158 = *(v161 - 5);
                  }

                  while (v157 > v158);
                  *(v160 - 1) = v157;
                  *v160 = v159;
                }

                v104 = v156 + 16;
                v155 += 2;
                v7 = v156;
              }

              while (v156 + 16 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v117 = (v10 - 2) >> 1;
              v118 = v117;
              do
              {
                v119 = v118;
                if (v117 >= v118)
                {
                  v120 = (2 * v118) | 1;
                  v121 = &v9[2 * v120];
                  if (2 * v119 + 2 >= v10)
                  {
                    v122 = *v121;
                  }

                  else
                  {
                    v122 = v121[2];
                    v123 = *v121 > v122;
                    if (*v121 < v122)
                    {
                      v122 = *v121;
                    }

                    if (v123)
                    {
                      v121 += 2;
                      v120 = 2 * v119 + 2;
                    }
                  }

                  v124 = &v9[2 * v119];
                  v125 = *v124;
                  if (v122 <= *v124)
                  {
                    v126 = v124[1];
                    do
                    {
                      v127 = v124;
                      v124 = v121;
                      *v127 = v122;
                      v127[1] = v121[1];
                      if (v117 < v120)
                      {
                        break;
                      }

                      v128 = (2 * v120) | 1;
                      v121 = &v9[2 * v128];
                      v120 = 2 * v120 + 2;
                      if (v120 >= v10)
                      {
                        v122 = *v121;
                        v120 = v128;
                      }

                      else
                      {
                        v122 = *v121;
                        result = (v121 + 2);
                        v129 = v121[2];
                        if (*v121 >= v129)
                        {
                          v122 = v121[2];
                        }

                        if (*v121 <= v129)
                        {
                          v120 = v128;
                        }

                        else
                        {
                          v121 += 2;
                        }
                      }
                    }

                    while (v122 <= v125);
                    *v124 = v125;
                    v124[1] = v126;
                  }
                }

                v118 = v119 - 1;
              }

              while (v119);
              do
              {
                v130 = 0;
                v131 = *v9;
                v132 = v9[1];
                v133 = v9;
                do
                {
                  v134 = &v133[2 * v130];
                  v135 = v134 + 2;
                  v136 = (2 * v130) | 1;
                  v130 = 2 * v130 + 2;
                  if (v130 >= v10)
                  {
                    v137 = *v135;
                    v130 = v136;
                  }

                  else
                  {
                    v139 = v134[4];
                    v138 = v134 + 4;
                    v137 = v139;
                    result = *(v138 - 2);
                    v140 = result > v139;
                    if (result < v139)
                    {
                      v137 = *(v138 - 2);
                    }

                    if (v140)
                    {
                      v135 = v138;
                    }

                    else
                    {
                      v130 = v136;
                    }
                  }

                  *v133 = v137;
                  v133[1] = v135[1];
                  v133 = v135;
                }

                while (v130 <= ((v10 - 2) >> 1));
                if (v135 == (a2 - 16))
                {
                  *v135 = v131;
                  v135[1] = v132;
                }

                else
                {
                  *v135 = *(a2 - 2);
                  v135[1] = *(a2 - 1);
                  *(a2 - 2) = v131;
                  *(a2 - 1) = v132;
                  v141 = (v135 - v9 + 16) >> 4;
                  v123 = v141 < 2;
                  v142 = v141 - 2;
                  if (!v123)
                  {
                    v143 = v142 >> 1;
                    v144 = &v9[2 * v143];
                    v145 = *v144;
                    v146 = *v135;
                    if (*v144 > *v135)
                    {
                      v147 = v135[1];
                      do
                      {
                        v148 = v135;
                        v135 = v144;
                        *v148 = v145;
                        v148[1] = v144[1];
                        if (!v143)
                        {
                          break;
                        }

                        v143 = (v143 - 1) >> 1;
                        v144 = &v9[2 * v143];
                        v145 = *v144;
                      }

                      while (*v144 > v146);
                      *v135 = v146;
                      v135[1] = v147;
                    }
                  }
                }

                a2 -= 16;
                v123 = v10-- <= 2;
              }

              while (!v123);
            }

            return result;
          }

          v11 = &v9[2 * (v10 >> 1)];
          v12 = v11;
          v13 = *(a2 - 2);
          if (v10 >= 0x81)
          {
            v14 = *v11;
            v15 = *v9;
            if (*v11 <= *v9)
            {
              if (v13 <= v14 || (*v11 = v13, *(a2 - 2) = v14, v21 = (v11 + 1), v20 = v11[1], v11[1] = *(a2 - 1), *(a2 - 1) = v20, v22 = *v9, *v11 <= *v9))
              {
LABEL_29:
                v30 = v11 - 2;
                v31 = *(v11 - 2);
                v32 = v9[2];
                v33 = *(a2 - 4);
                if (v31 <= v32)
                {
                  if (v33 <= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = (v11 - 1), v35 = *(v11 - 1), *(v11 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v9[2], *v30 <= v37))
                  {
LABEL_42:
                    v47 = v11[2];
                    v45 = v11 + 2;
                    v46 = v47;
                    v48 = v9[4];
                    v49 = *(a2 - 6);
                    if (v47 <= v48)
                    {
                      if (v49 > v46)
                      {
                        *v45 = v49;
                        *(a2 - 6) = v46;
                        v52 = (v45 + 1);
                        v51 = v45[1];
                        v45[1] = *(a2 - 5);
                        *(a2 - 5) = v51;
                        v46 = *v45;
                        v53 = v9[4];
                        if (*v45 > v53)
                        {
                          v9[4] = v46;
                          *v45 = v53;
                          v50 = (v9 + 5);
LABEL_51:
                          v57 = *v50;
                          *v50 = *v52;
                          *v52 = v57;
                          v46 = *v45;
                        }
                      }
                    }

                    else
                    {
                      if (v49 > v46)
                      {
                        v50 = (v9 + 5);
                        v9[4] = v49;
LABEL_50:
                        *(a2 - 6) = v48;
                        v52 = a2 - 40;
                        goto LABEL_51;
                      }

                      v50 = (v45 + 1);
                      v54 = v45[1];
                      v55 = v9[5];
                      v9[4] = v46;
                      v9[5] = v54;
                      *v45 = v48;
                      v45[1] = v55;
                      v56 = *(a2 - 6);
                      if (v56 > v48)
                      {
                        *v45 = v56;
                        goto LABEL_50;
                      }

                      v46 = v48;
                    }

                    v58 = *v12;
                    v59 = *v30;
                    if (*v12 <= *v30)
                    {
                      if (v46 <= v58)
                      {
LABEL_62:
                        v67 = *v9;
                        *v9 = v58;
                        v19 = (v9 + 1);
                        *v12 = v67;
                        v25 = (v12 + 1);
                        goto LABEL_63;
                      }

                      v62 = (v12 + 1);
                      v63 = v12[1];
                      *v12 = v46;
                      v12[1] = v45[1];
                      *v45 = v58;
                      v45[1] = v63;
                      if (v46 <= v59)
                      {
                        v58 = v46;
                        goto LABEL_62;
                      }

                      *v30 = v46;
                      v60 = (v30 + 1);
                      *v12 = v59;
                    }

                    else
                    {
                      if (v46 <= v58)
                      {
                        v64 = v12[1];
                        *v12 = v59;
                        v65 = v30[1];
                        *v30 = v58;
                        v30[1] = v64;
                        v12[1] = v65;
                        if (v46 <= v59)
                        {
                          v58 = v59;
                          goto LABEL_62;
                        }

                        *v12 = v46;
                        *v45 = v59;
                        v61 = (v45 + 1);
                        v60 = (v12 + 1);
                      }

                      else
                      {
                        *v30 = v46;
                        v60 = (v30 + 1);
                        *v45 = v59;
                        v61 = (v45 + 1);
                      }

                      v62 = v61;
                    }

                    v66 = *v60;
                    *v60 = *v62;
                    *v62 = v66;
                    v58 = *v12;
                    goto LABEL_62;
                  }

                  v9[2] = *v30;
                  *v30 = v37;
                  v34 = v9 + 3;
                }

                else
                {
                  if (v33 <= v31)
                  {
                    v34 = v11 - 1;
                    v41 = *(v11 - 1);
                    v42 = v9[3];
                    v9[2] = v31;
                    v9[3] = v41;
                    *v30 = v32;
                    *(v11 - 1) = v42;
                    v43 = *(a2 - 4);
                    if (v43 <= v32)
                    {
                      goto LABEL_42;
                    }

                    *v30 = v43;
                  }

                  else
                  {
                    v34 = v9 + 3;
                    v9[2] = v33;
                  }

                  *(a2 - 4) = v32;
                  v36 = a2 - 24;
                }

                v44 = *v34;
                *v34 = *v36;
                *v36 = v44;
                goto LABEL_42;
              }

              *v9 = *v11;
              v16 = (v9 + 1);
              *v11 = v22;
            }

            else
            {
              if (v13 <= v14)
              {
                v16 = (v11 + 1);
                v26 = v11[1];
                v27 = v9[1];
                *v9 = v14;
                v9[1] = v26;
                *v11 = v15;
                v11[1] = v27;
                v28 = *(a2 - 2);
                if (v28 <= v15)
                {
                  goto LABEL_29;
                }

                *v11 = v28;
              }

              else
              {
                v16 = (v9 + 1);
                *v9 = v13;
              }

              *(a2 - 2) = v15;
              v21 = a2 - 8;
            }

            v29 = *v16;
            *v16 = *v21;
            *v21 = v29;
            goto LABEL_29;
          }

          v17 = *v9;
          v18 = *v11;
          if (*v9 <= *v11)
          {
            if (v13 > v17)
            {
              *v9 = v13;
              *(a2 - 2) = v17;
              v23 = v9[1];
              v9[1] = *(a2 - 1);
              *(a2 - 1) = v23;
              v24 = *v12;
              if (*v9 > *v12)
              {
                *v12 = *v9;
                *v9 = v24;
                v19 = (v12 + 1);
                v25 = (v9 + 1);
LABEL_63:
                v68 = *v19;
                *v19 = *v25;
                *v25 = v68;
              }
            }
          }

          else
          {
            if (v13 > v17)
            {
              v19 = (v11 + 1);
              *v12 = v13;
LABEL_37:
              *(a2 - 2) = v18;
              v25 = a2 - 8;
              goto LABEL_63;
            }

            v19 = (v9 + 1);
            v38 = v9[1];
            v39 = v12[1];
            *v12 = v17;
            v12[1] = v38;
            *v9 = v18;
            v9[1] = v39;
            v40 = *(a2 - 2);
            if (v40 > v18)
            {
              *v9 = v40;
              goto LABEL_37;
            }
          }

          --a3;
          v69 = *v9;
          if ((a4 & 1) != 0 || *(v9 - 2) > v69)
          {
            break;
          }

          if (v69 <= *(a2 - 2))
          {
            v84 = (v9 + 2);
            do
            {
              v9 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 16;
            }

            while (v69 <= *v9);
          }

          else
          {
            do
            {
              v83 = v9[2];
              v9 += 2;
            }

            while (v69 <= v83);
          }

          v85 = a2;
          if (v9 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 16;
            }

            while (v69 > v86);
          }

          v87 = v7[1];
          if (v9 < v85)
          {
            v88 = *v9;
            v89 = *v85;
            do
            {
              *v9 = v89;
              *v85 = v88;
              v90 = v9[1];
              v9[1] = *(v85 + 1);
              *(v85 + 1) = v90;
              do
              {
                v91 = v9[2];
                v9 += 2;
                v88 = v91;
              }

              while (v69 <= v91);
              do
              {
                v92 = *(v85 - 2);
                v85 -= 16;
                v89 = v92;
              }

              while (v69 > v92);
            }

            while (v9 < v85);
          }

          if (v9 - 2 != v7)
          {
            *v7 = *(v9 - 2);
            v7[1] = *(v9 - 1);
          }

          a4 = 0;
          *(v9 - 2) = v69;
          *(v9 - 1) = v87;
        }

        v70 = 0;
        v71 = v9[1];
        do
        {
          v72 = v9[v70 + 2];
          v70 += 2;
        }

        while (v72 > v69);
        v73 = &v9[v70];
        v74 = a2;
        if (v70 == 2)
        {
          v74 = a2;
          do
          {
            if (v73 >= v74)
            {
              break;
            }

            v76 = *(v74 - 2);
            v74 -= 16;
          }

          while (v76 <= v69);
        }

        else
        {
          do
          {
            v75 = *(v74 - 2);
            v74 -= 16;
          }

          while (v75 <= v69);
        }

        if (v73 >= v74)
        {
          v9 = (v9 + v70 * 8);
        }

        else
        {
          v77 = *v74;
          v9 = (v9 + v70 * 8);
          v78 = v74;
          do
          {
            *v9 = v77;
            *v78 = v72;
            v79 = v9[1];
            v9[1] = *(v78 + 1);
            *(v78 + 1) = v79;
            do
            {
              v80 = v9[2];
              v9 += 2;
              v72 = v80;
            }

            while (v80 > v69);
            do
            {
              v81 = *(v78 - 2);
              v78 -= 16;
              v77 = v81;
            }

            while (v81 <= v69);
          }

          while (v9 < v78);
        }

        if (v9 - 2 != v7)
        {
          *v7 = *(v9 - 2);
          v7[1] = *(v9 - 1);
        }

        *(v9 - 2) = v69;
        *(v9 - 1) = v71;
        if (v73 >= v74)
        {
          break;
        }

LABEL_87:
        result = sub_29B24E038(v7, v9 - 16, a3, a4 & 1);
        a4 = 0;
      }

      v82 = sub_29B24ED34(v7, v9 - 16);
      result = sub_29B24ED34(v9, a2);
      if (result)
      {
        break;
      }

      if (!v82)
      {
        goto LABEL_87;
      }
    }

    a2 = (v9 - 2);
    if (!v82)
    {
      continue;
    }

    return result;
  }
}

unint64_t *sub_29B24EB64(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 <= *result)
  {
    if (v7 > v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = a2 + 1;
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 > *result)
      {
        *result = *a2;
        v8 = (result + 1);
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 > v5)
    {
      v8 = (result + 1);
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = a3 + 1;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 > *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 > *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 > *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 > *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 > *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 > *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 > *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 > *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_29B24ED34(unint64_t *a1, char *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 <= *a1)
      {
        if (v8 <= v6)
        {
          return 1;
        }

        a1[2] = v8;
        *(a2 - 2) = v6;
        v20 = a1 + 3;
        v19 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v19;
        v21 = a1[2];
        v22 = *a1;
        if (v21 <= *a1)
        {
          return 1;
        }

        *a1 = v21;
        a1[2] = v22;
        v9 = a1 + 1;
      }

      else
      {
        if (v8 <= v6)
        {
          v9 = a1 + 3;
          v29 = a1[3];
          v30 = a1[1];
          *a1 = v6;
          a1[1] = v29;
          a1[2] = v7;
          a1[3] = v30;
          v31 = *(a2 - 2);
          if (v31 <= v7)
          {
            return 1;
          }

          a1[2] = v31;
        }

        else
        {
          v9 = a1 + 1;
          *a1 = v8;
        }

        *(a2 - 2) = v7;
        v20 = (a2 - 8);
      }

      v32 = *v9;
      *v9 = *v20;
      *v20 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_29B24EB64(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v15 = a1[2];
    v16 = *a1;
    v17 = a1[4];
    if (v15 <= *a1)
    {
      if (v17 > v15)
      {
        v27 = a1 + 3;
        v26 = a1[3];
        v28 = a1[5];
        a1[2] = v17;
        a1[3] = v28;
        a1[4] = v15;
        a1[5] = v26;
        if (v17 <= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        a1[2] = v16;
        v18 = a1 + 1;
LABEL_50:
        v48 = *v18;
        *v18 = *v27;
        *v27 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 > v15)
      {
        v18 = a1 + 1;
        *a1 = v17;
LABEL_49:
        a1[4] = v16;
        v27 = a1 + 5;
        v15 = v16;
        goto LABEL_50;
      }

      v18 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v15;
      a1[1] = v46;
      a1[2] = v16;
      a1[3] = v47;
      if (v17 > v16)
      {
        a1[2] = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 2);
    if (v49 > v17)
    {
      a1[4] = v49;
      *(a2 - 2) = v17;
      v50 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v50;
      v51 = a1[4];
      v52 = a1[2];
      if (v51 > v52)
      {
        v53 = a1[3];
        v54 = a1[5];
        a1[2] = v51;
        a1[3] = v54;
        a1[4] = v52;
        a1[5] = v53;
        v55 = *a1;
        if (v51 > *a1)
        {
          v56 = a1[1];
          *a1 = v51;
          a1[1] = v54;
          a1[2] = v55;
          a1[3] = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 > *a1)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v5 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = a1 + 4;
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 > *a1)
  {
    if (v11 <= v12)
    {
      v14 = a1 + 3;
      v33 = a1[3];
      v34 = a1[1];
      *a1 = v12;
      a1[1] = v33;
      a1[2] = v13;
      a1[3] = v34;
      if (v11 <= v13)
      {
        goto LABEL_36;
      }

      a1[2] = v11;
    }

    else
    {
      v14 = a1 + 1;
      *a1 = v11;
    }

    a1[4] = v13;
    v24 = a1 + 5;
    goto LABEL_35;
  }

  if (v11 > v12)
  {
    v24 = a1 + 3;
    v23 = a1[3];
    v25 = a1[5];
    a1[2] = v11;
    a1[3] = v25;
    a1[4] = v12;
    a1[5] = v23;
    if (v11 > v13)
    {
      *a1 = v11;
      a1[2] = v13;
      v14 = a1 + 1;
LABEL_35:
      v35 = *v14;
      *v14 = *v24;
      *v24 = v35;
    }
  }

LABEL_36:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v36;
    v40 = *v10;
    if (*v36 > *v10)
    {
      v41 = v36[1];
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 40);
        v43[6] = v40;
        v43[7] = v44;
        if (v42 == -32)
        {
          break;
        }

        v40 = v43[2];
        v42 -= 16;
        if (v39 <= v40)
        {
          v45 = (a1 + v42 + 48);
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v39;
      v45[1] = v41;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v10 = v36;
    v37 += 16;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void *sub_29B24F0A8()
{
  if ((atomic_load_explicit(&qword_2A17876A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17876A0))
  {
    sub_29A008E78(qword_2A1787688, "genmsl");
    __cxa_guard_release(&qword_2A17876A0);
  }

  return qword_2A1787688;
}

void *sub_29B24F128()
{
  if ((atomic_load_explicit(&qword_2A17876C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17876C0))
  {
    sub_29A008E78(qword_2A17876A8, "2.3");
    __cxa_guard_release(&qword_2A17876C0);
  }

  return qword_2A17876A8;
}

uint64_t sub_29B24F1A8(uint64_t a1)
{
  *&v25 = *MEMORY[0x29EDCA608];
  sub_29B25B784(__p);
  v17 = *&__p[0].__r_.__value_.__l.__data_;
  sub_29B20E6C0(a1, &v17);
  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  *a1 = &unk_2A20CB458;
  *(a1 + 776) = 0;
  *(a1 + 792) = 0;
  *(a1 + 784) = 0;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v23, 0xCuLL);
  v2 = 12;
  do
  {
    if (SHIBYTE(__p[v2 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*(&v16 + v2 * 24));
    }

    --v2;
  }

  while (v2 * 24);
  sub_29B231AC4(a1, v15, sub_29B22E9CC);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, &v25, 0x2DuLL);
  v3 = 45;
  do
  {
    if (SHIBYTE(__p[v3 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*(&v16 + v3 * 24));
    }

    --v3;
  }

  while (v3 * 24);
  sub_29B231AC4(a1, v15, sub_29B22F344);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v24, 0x23uLL);
  v4 = 35;
  do
  {
    if (SHIBYTE(__p[v4 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*(&v16 + v4 * 24));
    }

    --v4;
  }

  while (v4 * 24);
  sub_29B231AC4(a1, v15, sub_29B21E93C);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v22, 8uLL);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v21[i + 2]) < 0)
    {
      operator delete(v21[i]);
    }
  }

  sub_29B231AC4(a1, v15, sub_29B21C35C);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B225BC8);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B224CE4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B227A64);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B222424);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B228988);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B228988);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B260FE4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B260FE4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B260FE4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v21, 7uLL);
  for (j = 0; j != -21; j -= 3)
  {
    if (SHIBYTE(v20[j + 2]) < 0)
    {
      operator delete(v20[j]);
    }
  }

  sub_29B231AC4(a1, v15, sub_29B261EA4);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B262C38);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B262C38);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B223E7C);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B229828);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22B560);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B268428);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B26B838);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B2658E4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B266F08);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B266F08);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B266F08);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B263908);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v20, 6uLL);
  for (k = 0; k != -144; k -= 24)
  {
    if (*(&v19[2] + k + 15) < 0)
    {
      operator delete(*(&v19[1] + k + 8));
    }
  }

  sub_29B231AC4(a1, v15, sub_29B260CC8);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22AE68);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22AE2C);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22AEA4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v20, 6uLL);
  for (m = 0; m != -144; m -= 24)
  {
    if (*(&v19[2] + m + 15) < 0)
    {
      operator delete(*(&v19[1] + m + 8));
    }
  }

  sub_29B231AC4(a1, v15, sub_29B2243F0);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B218784);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B218784);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B219A44);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B219A44);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B216294);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B216294);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B25B8B8(v15, __p, v19, 4uLL);
  for (n = 0; n != -96; n -= 24)
  {
    if (SHIBYTE(__p[n / 0x18 + 3].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[n / 0x18 + 3].__r_.__value_.__l.__data_);
    }
  }

  sub_29B231AC4(a1, v15, sub_29B21A96C);
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B23FB50);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, __p, sub_29B22BFF8);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(__p, "numActiveLightSources");
  sub_29B267838(&v12);
  sub_29B23E23C(0, __p, &v12, 1, &v13);
  sub_29A01729C((a1 + 776), &v13);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(__p, "sampleLightSource");
  sub_29B266618(&v11);
  sub_29B23E23C(0, __p, &v11, 1, &v13);
  sub_29A01729C((a1 + 776), &v13);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  __p[0].__r_.__value_.__r.__words[0] = v15;
  sub_29A012C90(__p);
  return a1;
}

void sub_29B251008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  sub_29A012C90(&__p);
  sub_29A0176E4(&__p);
  sub_29AE1D3D0(v26);
  _Unwind_Resume(a1);
}

int *sub_29B2514A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a3[1];
  v23 = *a3;
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 272))(a1, a2, &v23, a4);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  sub_29B1FB384(&v22, 1, -1);
  (*(*a1 + 368))(&v21, a1, a4);
  v9 = v21;
  if (v21)
  {
    goto LABEL_18;
  }

  sub_29A008E78(__p, off_2A14FE548[0]);
  v25 = 0;
  v26 = 0;
  sub_29AE1D758(&v26, &v25, &v17);
  v18 = v17;
  v17 = 0uLL;
  sub_29AE19BF4(a4, __p, &v18);
  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE548[0]);
  sub_29AE19D1C(a4, __p, &v17);
  v10 = v17;
  v17 = 0uLL;
  v11 = *(&v21 + 1);
  v21 = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
    if (*(&v17 + 1))
    {
      sub_29A014BEC(*(&v17 + 1));
    }
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v21;
  if (v21)
  {
LABEL_18:
    (*(*v9 + 16))(v9);
  }

  v12 = *a5;
  sub_29A008E78(__p, off_2A14FE550[0]);
  v13 = sub_29B22FF64(v12, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 288))(a1, *(*a5 + 32), a4, v13);
  sub_29B232BCC(a1, a1 + 12, v13);
  v14 = *a5;
  sub_29A008E78(__p, off_2A14FE6F8);
  v15 = sub_29B22FF64(v14, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 296))(a1, *(*a5 + 32), a4, v15);
  sub_29B232BCC(a1, a1 + 12, v15);
  (*(*a1 + 360))(a1, v15);
  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  return sub_29B1FB3A8(&v22);
}

void sub_29B2517D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, int a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  sub_29B1FB3A8(&a22);
  v24 = *(v22 + 8);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  _Unwind_Resume(a1);
}

void sub_29B251878(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 423) < 0)
  {
    sub_29A008D14(&__str, *(a2 + 400), *(a2 + 408));
  }

  else
  {
    __str = *(a2 + 400);
  }

  sub_29A008E78(&v125, "out");
  v114 = a2;
  sub_29A008E78(&v126 + 1, "inout");
  v3 = 0;
  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  size = __str.__r_.__value_.__l.__size_;
  v5 = __str.__r_.__value_.__r.__words[0];
  do
  {
    v119 = v3;
    v7 = &v125 + v3;
    if ((v4 & 0x80u) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = v5;
    }

    if ((v4 & 0x80u) == 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = size;
    }

    v10 = v7[23];
    v11 = *(v7 + 1);
    v117 = v7;
    if ((v10 & 0x80u) == 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if ((v10 & 0x80u) == 0)
    {
      v13 = v7[23];
    }

    else
    {
      v13 = *(v7 + 1);
    }

    if (v13)
    {
      if (v9 >= v13)
      {
        v115 = size;
        v116 = v5;
        v14 = p_str + v9;
        v15 = *v12;
        v16 = p_str;
        do
        {
          v17 = v9 - v13;
          if (v17 == -1)
          {
            break;
          }

          v18 = memchr(v16, v15, v17 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v12, v13))
          {
            size = v115;
            v5 = v116;
            if (v19 != v14)
            {
              v20 = v19 - p_str;
              if (v19 - p_str != -1)
              {
                goto LABEL_28;
              }
            }

            goto LABEL_25;
          }

          v16 = (v19 + 1);
          v9 = v14 - (v19 + 1);
        }

        while (v9 >= v13);
LABEL_24:
        size = v115;
        v5 = v116;
      }
    }

    else
    {
      v20 = 0;
      do
      {
LABEL_28:
        if ((v4 & 0x80u) == 0)
        {
          v21 = &__str;
        }

        else
        {
          v21 = v5;
        }

        v22 = v21 + v20;
        v23 = *(v22 - 1);
        if ((v10 & 0x80u) == 0)
        {
          v24 = v10;
        }

        else
        {
          v24 = v11;
        }

        v25 = v22[v24];
        v26 = MEMORY[0x29EDCA600];
        if ((v23 & 0xFFFFFFFB) == 0x28 || ((v23 & 0x80000000) != 0 ? (v27 = __maskrune(v23, 0x4000uLL)) : (v27 = *(MEMORY[0x29EDCA600] + 4 * v23 + 60) & 0x4000), v27))
        {
          if ((v25 & 0x80000000) != 0)
          {
            v28 = __maskrune(v25, 0x4000uLL);
          }

          else
          {
            v28 = *(v26 + 4 * v25 + 60) & 0x4000;
          }

          if (v28)
          {
            v29 = v25 == 10;
          }

          else
          {
            v29 = 1;
          }

          v30 = !v29;
        }

        else
        {
          v30 = 0;
        }

        v10 = v117[23];
        v31 = v10;
        if (v117[23] < 0)
        {
          v31 = *(v117 + 1);
        }

        v32 = v31 + v20;
        if (v30)
        {
          while (1)
          {
            v33 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            v34 = v33->__r_.__value_.__s.__data_[v32];
            if (!((v34 & 0x80000000) != 0 ? __maskrune(v34, 0x4000uLL) : *(v26 + 4 * v34 + 60) & 0x4000))
            {
              break;
            }

            ++v32;
          }

          for (i = v32; ; ++i)
          {
            v37 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            v38 = v37->__r_.__value_.__s.__data_[i];
            if ((v38 & 0x80000000) != 0 ? __maskrune(v38, 0x4000uLL) : *(v26 + 4 * v38 + 60) & 0x4000)
            {
              break;
            }
          }

          std::string::basic_string(&v124, &__str, v32, i - v32, __p);
          std::operator+<char>();
          v40 = std::string::append(&v121, "&");
          v41 = *&v40->__r_.__value_.__l.__data_;
          v123 = v40->__r_.__value_.__r.__words[2];
          *__p = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          if (v123 >= 0)
          {
            v42 = __p;
          }

          else
          {
            v42 = __p[0];
          }

          if (v123 >= 0)
          {
            v43 = HIBYTE(v123);
          }

          else
          {
            v43 = __p[1];
          }

          std::string::replace(&__str, v20, i - v20, v42, v43);
          if (SHIBYTE(v123) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          v10 = v117[23];
        }

        else
        {
          i = v31 + v20;
        }

        v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        size = __str.__r_.__value_.__l.__size_;
        v5 = __str.__r_.__value_.__r.__words[0];
        v44 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
        v45 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : __str.__r_.__value_.__l.__size_;
        v11 = *(v117 + 1);
        v46 = (v10 & 0x80u) == 0 ? v117 : *v117;
        v47 = (v10 & 0x80u) == 0 ? v10 : *(v117 + 1);
        v48 = v45 - i;
        if (v45 < i)
        {
          break;
        }

        if (v47)
        {
          if (v48 < v47)
          {
            break;
          }

          v115 = __str.__r_.__value_.__l.__size_;
          v116 = __str.__r_.__value_.__r.__words[0];
          v49 = v44 + v45;
          v50 = v44 + i;
          v51 = *v46;
          while (1)
          {
            v52 = v48 - v47;
            if (v52 == -1)
            {
              goto LABEL_24;
            }

            v53 = memchr(v50, v51, v52 + 1);
            if (!v53)
            {
              goto LABEL_24;
            }

            v54 = v53;
            if (!memcmp(v53, v46, v47))
            {
              size = v115;
              v5 = v116;
              if (v54 == v49)
              {
                goto LABEL_25;
              }

              i = v54 - v44;
              break;
            }

            v50 = v54 + 1;
            v48 = v49 - (v54 + 1);
            if (v48 < v47)
            {
              goto LABEL_24;
            }
          }
        }

        v20 = i;
      }

      while (i != -1);
    }

LABEL_25:
    v3 = v119 + 24;
  }

  while (v119 != 24);
  for (j = 0; j != -48; j -= 24)
  {
    if (*(&v128 + j) < 0)
    {
      operator delete(*(&v126 + j + 8));
    }
  }

  v125 = 0u;
  v126 = 0u;
  v127 = 1065353216;
  sub_29A008E78(&v124, "sampler2D");
  __p[0] = &v124;
  v56 = sub_29B1D6E60(&v125, &v124, &unk_29B769A0C, __p);
  MEMORY[0x29C2C1A60](v56 + 40, "MetalTexture");
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v124, "dFdy");
  __p[0] = &v124;
  v57 = sub_29B1D6E60(&v125, &v124, &unk_29B769A0C, __p);
  MEMORY[0x29C2C1A60](v57 + 40, "dfdy");
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v124, "dFdx");
  __p[0] = &v124;
  v58 = sub_29B1D6E60(&v125, &v124, &unk_29B769A0C, __p);
  MEMORY[0x29C2C1A60](v58 + 40, "dfdx");
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  v59 = v126;
  if (v126)
  {
    v60 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v62 = __str.__r_.__value_.__l.__size_;
    v61 = __str.__r_.__value_.__r.__words[0];
    while (1)
    {
      v63 = (v60 & 0x80u) == 0 ? &__str : v61;
      v64 = (v60 & 0x80u) == 0 ? v60 : v62;
      v65 = *(v59 + 39);
      v66 = (v65 & 0x80u) == 0 ? (v59 + 2) : v59[2];
      v67 = (v65 & 0x80u) == 0 ? *(v59 + 39) : v59[3];
      if (!v67)
      {
        break;
      }

      if (v64 >= v67)
      {
        v118 = v62;
        v120 = v61;
        v68 = v63 + v64;
        v69 = *v66;
        v70 = v63;
        while (1)
        {
          v71 = v64 - v67;
          if (v71 == -1)
          {
            goto LABEL_232;
          }

          v72 = memchr(v70, v69, v71 + 1);
          if (!v72)
          {
            goto LABEL_232;
          }

          v73 = v72;
          if (!memcmp(v72, v66, v67))
          {
            break;
          }

          v70 = (v73 + 1);
          v64 = v68 - (v73 + 1);
          if (v64 < v67)
          {
            goto LABEL_232;
          }
        }

        if (v73 == v68)
        {
          goto LABEL_232;
        }

        v74 = v73 - v63;
        v62 = v118;
        v61 = v120;
        if (v73 - v63 != -1)
        {
          goto LABEL_143;
        }
      }

LABEL_233:
      v59 = *v59;
      if (!v59)
      {
        goto LABEL_234;
      }
    }

    v74 = 0;
LABEL_143:
    v75 = (v59 + 5);
    while (1)
    {
      if ((v60 & 0x80u) == 0)
      {
        v76 = &__str;
      }

      else
      {
        v76 = v61;
      }

      v77 = v76 + v74;
      v78 = *(v77 - 1);
      if ((v78 & 0x80000000) != 0)
      {
        v80 = __maskrune(*(v77 - 1), 0x4000uLL);
        v79 = MEMORY[0x29EDCA600];
        v65 = *(v59 + 39);
      }

      else
      {
        v79 = MEMORY[0x29EDCA600];
        v80 = *(MEMORY[0x29EDCA600] + 4 * v78 + 60) & 0x4000;
      }

      v82 = (v78 & 0xFFFFFFFB) == 0x28 || v80 != 0;
      if ((v65 & 0x80) != 0)
      {
        v65 = v59[3];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = &__str;
      }

      else
      {
        v83 = __str.__r_.__value_.__r.__words[0];
      }

      v84 = v83 + v65;
      v85 = v84[v74];
      if ((v85 & 0x80000000) != 0)
      {
        v86 = __maskrune(v84[v74], 0x4000uLL);
      }

      else
      {
        v86 = *(v79 + 4 * v85 + 60) & 0x4000;
      }

      v89 = ((v85 & 0xFFFFFFFE) == 0x28 || v85 == 44 || v86 != 0) && v82;
      v90 = *(v59 + 39);
      v65 = *(v59 + 39);
      if (v89)
      {
        if (v90 < 0)
        {
          v65 = v59[3];
        }

        v91 = *(v59 + 63);
        if (v91 >= 0)
        {
          v92 = v75;
        }

        else
        {
          v92 = v59[5];
        }

        if (v91 >= 0)
        {
          v93 = *(v59 + 63);
        }

        else
        {
          v93 = v59[6];
        }

        std::string::replace(&__str, v74, v65, v92, v93);
        v94 = *(v59 + 63);
        if (v94 < 0)
        {
          v94 = v59[6];
        }

        v74 += v94;
        v60 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v62 = __str.__r_.__value_.__l.__size_;
        v61 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &__str;
        }

        else
        {
          v95 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v96 = __str.__r_.__value_.__l.__size_;
        }

        v65 = *(v59 + 39);
        if ((v65 & 0x80u) == 0)
        {
          v97 = (v59 + 2);
        }

        else
        {
          v97 = v59[2];
        }

        if ((v65 & 0x80u) == 0)
        {
          v98 = *(v59 + 39);
        }

        else
        {
          v98 = v59[3];
        }

        v99 = v96 - v74;
        if (v96 < v74)
        {
          goto LABEL_233;
        }

        if (v98)
        {
          if (v99 < v98)
          {
            goto LABEL_233;
          }

          v118 = __str.__r_.__value_.__l.__size_;
          v120 = __str.__r_.__value_.__r.__words[0];
          v100 = v95 + v96;
          v101 = v95 + v74;
          v102 = *v97;
          do
          {
            v103 = v99 - v98;
            if (v103 == -1)
            {
              break;
            }

            v104 = memchr(v101, v102, v103 + 1);
            if (!v104)
            {
              break;
            }

            v105 = v104;
            if (!memcmp(v104, v97, v98))
            {
              goto LABEL_225;
            }

            v101 = v105 + 1;
            v99 = v100 - (v105 + 1);
          }

          while (v99 >= v98);
          goto LABEL_232;
        }
      }

      else
      {
        v106 = *(v59 + 39);
        if (v90 < 0)
        {
          v106 = v59[3];
        }

        v74 += v106;
        v60 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v62 = __str.__r_.__value_.__l.__size_;
        v61 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &__str;
        }

        else
        {
          v95 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v107 = __str.__r_.__value_.__l.__size_;
        }

        if (v90 >= 0)
        {
          v108 = (v59 + 2);
        }

        else
        {
          v108 = v59[2];
        }

        v109 = v107 - v74;
        if (v107 < v74)
        {
          goto LABEL_233;
        }

        if (v106)
        {
          if (v109 < v106)
          {
            goto LABEL_233;
          }

          v118 = __str.__r_.__value_.__l.__size_;
          v120 = __str.__r_.__value_.__r.__words[0];
          v100 = v95 + v107;
          v110 = v95 + v74;
          v111 = *v108;
          do
          {
            v112 = v109 - v106;
            if (v112 == -1)
            {
              break;
            }

            v113 = memchr(v110, v111, v112 + 1);
            if (!v113)
            {
              break;
            }

            v105 = v113;
            if (!memcmp(v113, v108, v106))
            {
LABEL_225:
              if (v105 == v100)
              {
                break;
              }

              v74 = v105 - v95;
              v62 = v118;
              v61 = v120;
              v75 = (v59 + 5);
              goto LABEL_227;
            }

            v110 = v105 + 1;
            v109 = v100 - (v105 + 1);
          }

          while (v109 >= v106);
LABEL_232:
          v62 = v118;
          v61 = v120;
          goto LABEL_233;
        }
      }

LABEL_227:
      if (v74 == -1)
      {
        goto LABEL_233;
      }
    }
  }

LABEL_234:
  std::string::operator=((v114 + 400), &__str);
  sub_29A89AD9C(&v125);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29B252108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_29A89AD9C(&__p);
  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_29B252208(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, char a6)
{
  if (a5)
  {
    sub_29A008E78(&v326, off_2A14FE4E0[0]);
    v10 = sub_29B240AA4(a3, &v326);
    v11 = ((v10[12] - v10[11]) >> 3) & ~(((v10[12] - v10[11]) >> 3) >> 31);
    if (SHIBYTE(v327) < 0)
    {
      operator delete(v326);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_29A008E78(v336, "");
  v12 = strlen(off_2A14FE6F8);
  v13 = v12;
  v14 = *(a3 + 23);
  if (v14 < 0)
  {
    if (v12 != *(a3 + 8))
    {
      goto LABEL_12;
    }

    if (v12 == -1)
    {
      sub_29A0F26CC();
    }

    v15 = *a3;
  }

  else
  {
    v15 = a3;
    if (v13 != v14)
    {
      goto LABEL_12;
    }
  }

  if (!memcmp(v15, off_2A14FE6F8, v13))
  {
    if (a4 == 2)
    {
      sub_29A008E78(&v326, "vec4 gl_FragCoord");
      (*(*a1 + 80))(a1, &v326, a3, 1);
      if (SHIBYTE(v327) < 0)
      {
        operator delete(v326);
      }
    }

    else if (a4 == 4)
    {
      sub_29A008E78(&v326, "gl_FragCoord(");
      (*(*a1 + 72))(a1, &v326, a3);
      if (SHIBYTE(v327) < 0)
      {
        operator delete(v326);
      }

      sub_29A008E78(v334, off_2A14FE4E8[0]);
      v297 = sub_29B240AA4(a3, v334);
      v298 = v297;
      if (*(v297 + 47) >= 0)
      {
        v299 = *(v297 + 47);
      }

      else
      {
        v299 = v297[4];
      }

      v300 = &v326;
      sub_29A022DE0(&v326, v299 + 5);
      if (v327 < 0)
      {
        v300 = v326;
      }

      if (v299)
      {
        if (*(v298 + 47) >= 0)
        {
          v301 = v298 + 3;
        }

        else
        {
          v301 = v298[3];
        }

        memmove(v300, v301, v299);
      }

      strcpy(v300 + v299, ".pos)");
      (*(*a1 + 80))(a1, &v326, a3, 0);
      if (SHIBYTE(v327) < 0)
      {
        operator delete(v326);
      }

      if (v335 < 0)
      {
        operator delete(v334[0]);
      }

      MEMORY[0x29C2C1A60](v336, ",");
    }
  }

LABEL_12:
  if (a5)
  {
    sub_29A008E78(v334, off_2A14FE4E0[0]);
  }

  else
  {
    sub_29A008E78(v334, off_2A14FE4E8[0]);
  }

  v16 = sub_29B240AA4(a3, v334);
  sub_29B227040(&v326, v16);
  v309 = a5;
  v310 = v11;
  if (a5)
  {
    if ((v335 & 0x80000000) == 0)
    {
      if (!a4)
      {
        goto LABEL_110;
      }

      goto LABEL_26;
    }

    operator delete(v334[0]);
    if (a4)
    {
LABEL_26:
      v17 = v332;
      v18 = v333;
      if (v332 == v333)
      {
        goto LABEL_135;
      }

      v19 = a4 == 3 || a4 == 2;
      v20 = "\n";
      if (a4 == 3)
      {
        v20 = ", ";
      }

      __s = v20;
      while (1)
      {
        (*(*a1 + 72))(a1, v336, a3);
        if (a4 == 1)
        {
          break;
        }

        if (v19)
        {
          v30 = sub_29B2438AC(a1[1], *(*v17 + 24));
          v31 = v30;
          if (*(v30 + 23) >= 0)
          {
            v32 = *(v30 + 23);
          }

          else
          {
            v32 = *(v30 + 8);
          }

          sub_29A022DE0(&__dst, v32 + 1);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if (v32)
          {
            if (v31[23] >= 0)
            {
              v34 = v31;
            }

            else
            {
              v34 = *v31;
            }

            memmove(p_dst, v34, v32);
          }

          *(&p_dst->__r_.__value_.__l.__data_ + v32) = 32;
          v35 = *(*v17 + 55);
          if (v35 >= 0)
          {
            v36 = (*v17 + 32);
          }

          else
          {
            v36 = *(*v17 + 32);
          }

          if (v35 >= 0)
          {
            v37 = *(*v17 + 55);
          }

          else
          {
            v37 = *(*v17 + 40);
          }

          v38 = std::string::append(&__dst, v36, v37);
          v39 = *&v38->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &__p, a3, a4 != 3);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v40 = __s;
          goto LABEL_103;
        }

        if (a4 == 4)
        {
          v41 = *v17;
          if (*(*v17 + 55) >= 0)
          {
            v42 = *(*v17 + 55);
          }

          else
          {
            v42 = *(*v17 + 40);
          }

          sub_29A022DE0(&v323, v42 + 1);
          if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v323;
          }

          else
          {
            v43 = v323.__r_.__value_.__r.__words[0];
          }

          if (v42)
          {
            if (*(v41 + 55) >= 0)
            {
              v44 = (v41 + 32);
            }

            else
            {
              v44 = *(v41 + 32);
            }

            memmove(v43, v44, v42);
          }

          *(&v43->__r_.__value_.__l.__data_ + v42) = 40;
          v45 = *(*v17 + 55);
          if (v45 >= 0)
          {
            v46 = (*v17 + 32);
          }

          else
          {
            v46 = *(*v17 + 32);
          }

          if (v45 >= 0)
          {
            v47 = *(*v17 + 55);
          }

          else
          {
            v47 = *(*v17 + 40);
          }

          v48 = std::string::append(&v323, v46, v47);
          v49 = *&v48->__r_.__value_.__l.__data_;
          __dst.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
          *&__dst.__r_.__value_.__l.__data_ = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          v50 = std::string::append(&__dst, ")");
          v51 = *&v50->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &__p, a3, 0);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v323.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_102:
            v40 = ", ";
LABEL_103:
            MEMORY[0x29C2C1A60](v336, v40);
            goto LABEL_104;
          }

          v29 = v323.__r_.__value_.__r.__words[0];
LABEL_55:
          operator delete(v29);
          goto LABEL_102;
        }

LABEL_104:
        v17 += 8;
        if (v17 == v18)
        {
          goto LABEL_135;
        }
      }

      if ((v330 & 0x80u) == 0)
      {
        v21 = v330;
      }

      else
      {
        v21 = v329;
      }

      sub_29A022DE0(&__dst, v21 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__dst;
      }

      else
      {
        v22 = __dst.__r_.__value_.__r.__words[0];
      }

      if (v21)
      {
        if ((v330 & 0x80u) == 0)
        {
          v23 = &v328;
        }

        else
        {
          v23 = v328;
        }

        memmove(v22, v23, v21);
      }

      *(&v22->__r_.__value_.__l.__data_ + v21) = 46;
      v24 = *(*v17 + 55);
      if (v24 >= 0)
      {
        v25 = (*v17 + 32);
      }

      else
      {
        v25 = *(*v17 + 32);
      }

      if (v24 >= 0)
      {
        v26 = *(*v17 + 55);
      }

      else
      {
        v26 = *(*v17 + 40);
      }

      v27 = std::string::append(&__dst, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 72))(a1, &__p, a3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      v29 = __dst.__r_.__value_.__r.__words[0];
      goto LABEL_55;
    }

LABEL_110:
    if (v327 >= 0)
    {
      v52 = HIBYTE(v327);
    }

    else
    {
      v52 = *(&v326 + 1);
    }

    v53 = &v323;
    sub_29A022DE0(&v323, v52 + 1);
    if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v323.__r_.__value_.__r.__words[0];
    }

    if (v52)
    {
      if (v327 >= 0)
      {
        v54 = &v326;
      }

      else
      {
        v54 = v326;
      }

      memmove(v53, v54, v52);
    }

    *(&v53->__r_.__value_.__l.__data_ + v52) = 32;
    if ((v330 & 0x80u) == 0)
    {
      v55 = &v328;
    }

    else
    {
      v55 = v328;
    }

    if ((v330 & 0x80u) == 0)
    {
      v56 = v330;
    }

    else
    {
      v56 = v329;
    }

    v57 = std::string::append(&v323, v55, v56);
    v58 = *&v57->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = std::string::append(&__dst, " [[ stage_in ]]");
    v60 = *&v59->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 72))(a1, &__p, a3);
LABEL_127:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v323.__r_.__value_.__l.__data_);
    }

    goto LABEL_133;
  }

  if (v335 < 0)
  {
    operator delete(v334[0]);
    if (!a4)
    {
      goto LABEL_110;
    }
  }

  else if (!a4)
  {
    goto LABEL_110;
  }

  (*(*a1 + 72))(a1, v336, a3);
  switch(a4)
  {
    case 1u:
      (*(*a1 + 72))(a1, &v328, a3);
LABEL_133:
      v61 = ", ";
LABEL_134:
      MEMORY[0x29C2C1A60](v336, v61);
      break;
    case 2u:
    case 3u:
      if (v327 >= 0)
      {
        v302 = HIBYTE(v327);
      }

      else
      {
        v302 = *(&v326 + 1);
      }

      v303 = &__dst;
      sub_29A022DE0(&__dst, v302 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v303 = __dst.__r_.__value_.__r.__words[0];
      }

      if (v302)
      {
        if (v327 >= 0)
        {
          v304 = &v326;
        }

        else
        {
          v304 = v326;
        }

        memmove(v303, v304, v302);
      }

      *(&v303->__r_.__value_.__l.__data_ + v302) = 32;
      if ((v330 & 0x80u) == 0)
      {
        v305 = &v328;
      }

      else
      {
        v305 = v328;
      }

      if ((v330 & 0x80u) == 0)
      {
        v306 = v330;
      }

      else
      {
        v306 = v329;
      }

      v307 = std::string::append(&__dst, v305, v306);
      v308 = *&v307->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v307->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v308;
      v307->__r_.__value_.__l.__size_ = 0;
      v307->__r_.__value_.__r.__words[2] = 0;
      v307->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 80))(a1, &__p, a3, a4 != 3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (a4 == 3)
      {
        v61 = ", ";
      }

      else
      {
        v61 = "\n";
      }

      goto LABEL_134;
    case 4u:
      if ((v330 & 0x80u) == 0)
      {
        v288 = v330;
      }

      else
      {
        v288 = v329;
      }

      v289 = &v323;
      sub_29A022DE0(&v323, v288 + 1);
      if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v289 = v323.__r_.__value_.__r.__words[0];
      }

      if (v288)
      {
        if ((v330 & 0x80u) == 0)
        {
          v290 = &v328;
        }

        else
        {
          v290 = v328;
        }

        memmove(v289, v290, v288);
      }

      *(&v289->__r_.__value_.__l.__data_ + v288) = 40;
      if ((v330 & 0x80u) == 0)
      {
        v291 = &v328;
      }

      else
      {
        v291 = v328;
      }

      if ((v330 & 0x80u) == 0)
      {
        v292 = v330;
      }

      else
      {
        v292 = v329;
      }

      v293 = std::string::append(&v323, v291, v292);
      v294 = *&v293->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v293->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v294;
      v293->__r_.__value_.__l.__size_ = 0;
      v293->__r_.__value_.__r.__words[2] = 0;
      v293->__r_.__value_.__r.__words[0] = 0;
      v295 = std::string::append(&__dst, ")");
      v296 = *&v295->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v295->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v296;
      v295->__r_.__value_.__l.__size_ = 0;
      v295->__r_.__value_.__r.__words[2] = 0;
      v295->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 80))(a1, &__p, a3, 0);
      goto LABEL_127;
  }

LABEL_135:
  if (v332)
  {
    v333 = v332;
    operator delete(v332);
  }

  sub_29AD97000(&v331);
  if (v330 < 0)
  {
    operator delete(v328);
  }

  if (SHIBYTE(v327) < 0)
  {
    operator delete(v326);
  }

  v62 = *(a3 + 296);
  if (v62)
  {
    __val = 0;
    v63 = a4 == 2;
    if (a4 == 3)
    {
      v63 = 1;
    }

    v316 = v63;
    v64 = ";";
    if (a4 == 3)
    {
      v64 = "";
    }

    __sa = v64;
    while (1)
    {
      v65 = v62[5];
      v66 = strlen(off_2A14FE500[0]);
      v67 = v66;
      v68 = *(v65 + 23);
      if (v68 < 0)
      {
        if (v66 != *(v65 + 8))
        {
          break;
        }

        if (v66 == -1)
        {
          sub_29A0F26CC();
        }

        v69 = *v65;
      }

      else
      {
        v69 = v62[5];
        if (v67 != v68)
        {
          break;
        }
      }

      v70 = memcmp(v69, off_2A14FE500[0], v67);
      if ((a6 & 1) == 0 && !v70)
      {
        goto LABEL_534;
      }

      if (v70)
      {
        break;
      }

      (*(*a1 + 72))(a1, v336, a3);
      if (!a4)
      {
        v199 = (*(*a1[1] + 80))(a1[1]);
        v200 = v199;
        if (*(v199 + 23) >= 0)
        {
          v201 = *(v199 + 23);
        }

        else
        {
          v201 = *(v199 + 8);
        }

        sub_29A022DE0(&v318, v201 + 1);
        if ((v318.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v202 = &v318;
        }

        else
        {
          v202 = v318.__r_.__value_.__r.__words[0];
        }

        if (v201)
        {
          if (v200[23] >= 0)
          {
            v203 = v200;
          }

          else
          {
            v203 = *v200;
          }

          memmove(v202, v203, v201);
        }

        *(&v202->__r_.__value_.__l.__data_ + v201) = 32;
        v204 = *(v65 + 23);
        if (v204 >= 0)
        {
          v205 = v65;
        }

        else
        {
          v205 = *v65;
        }

        if (v204 >= 0)
        {
          v206 = *(v65 + 23);
        }

        else
        {
          v206 = *(v65 + 8);
        }

        v207 = std::string::append(&v318, v205, v206);
        v208 = *&v207->__r_.__value_.__l.__data_;
        v319.__r_.__value_.__r.__words[2] = v207->__r_.__value_.__r.__words[2];
        *&v319.__r_.__value_.__l.__data_ = v208;
        v207->__r_.__value_.__l.__size_ = 0;
        v207->__r_.__value_.__r.__words[2] = 0;
        v207->__r_.__value_.__r.__words[0] = 0;
        v209 = std::string::append(&v319, "_");
        v210 = *&v209->__r_.__value_.__l.__data_;
        v320.__r_.__value_.__r.__words[2] = v209->__r_.__value_.__r.__words[2];
        *&v320.__r_.__value_.__l.__data_ = v210;
        v209->__r_.__value_.__l.__size_ = 0;
        v209->__r_.__value_.__r.__words[2] = 0;
        v209->__r_.__value_.__r.__words[0] = 0;
        v211 = *(a3 + 23);
        if (v211 >= 0)
        {
          v212 = a3;
        }

        else
        {
          v212 = *a3;
        }

        if (v211 >= 0)
        {
          v213 = *(a3 + 23);
        }

        else
        {
          v213 = *(a3 + 8);
        }

        v214 = std::string::append(&v320, v212, v213);
        v215 = *&v214->__r_.__value_.__l.__data_;
        v321.__r_.__value_.__r.__words[2] = v214->__r_.__value_.__r.__words[2];
        *&v321.__r_.__value_.__l.__data_ = v215;
        v214->__r_.__value_.__l.__size_ = 0;
        v214->__r_.__value_.__r.__words[2] = 0;
        v214->__r_.__value_.__r.__words[0] = 0;
        v216 = std::string::append(&v321, "& ");
        v217 = *&v216->__r_.__value_.__l.__data_;
        v322.__r_.__value_.__r.__words[2] = v216->__r_.__value_.__r.__words[2];
        *&v322.__r_.__value_.__l.__data_ = v217;
        v216->__r_.__value_.__l.__size_ = 0;
        v216->__r_.__value_.__r.__words[2] = 0;
        v216->__r_.__value_.__r.__words[0] = 0;
        v220 = *(v65 + 24);
        v219 = v65 + 24;
        v218 = v220;
        v221 = *(v219 + 23);
        if (v221 >= 0)
        {
          v222 = v219;
        }

        else
        {
          v222 = v218;
        }

        if (v221 >= 0)
        {
          v223 = *(v219 + 23);
        }

        else
        {
          v223 = *(v219 + 8);
        }

        v224 = std::string::append(&v322, v222, v223);
        v225 = *&v224->__r_.__value_.__l.__data_;
        v323.__r_.__value_.__r.__words[2] = v224->__r_.__value_.__r.__words[2];
        *&v323.__r_.__value_.__l.__data_ = v225;
        v224->__r_.__value_.__l.__size_ = 0;
        v224->__r_.__value_.__r.__words[2] = 0;
        v224->__r_.__value_.__r.__words[0] = 0;
        v226 = std::string::append(&v323, "[[ buffer(");
        v227 = *&v226->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v226->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v227;
        v226->__r_.__value_.__l.__size_ = 0;
        v226->__r_.__value_.__r.__words[2] = 0;
        v226->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v317, v310);
        if ((v317.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v228 = &v317;
        }

        else
        {
          v228 = v317.__r_.__value_.__r.__words[0];
        }

        if ((v317.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v317.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v317.__r_.__value_.__l.__size_;
        }

        v230 = std::string::append(&__dst, v228, size);
        v231 = *&v230->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v230->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v231;
        v230->__r_.__value_.__l.__size_ = 0;
        v230->__r_.__value_.__r.__words[2] = 0;
        v230->__r_.__value_.__r.__words[0] = 0;
        v232 = std::string::append(&__p, ") ]]");
        v233 = *&v232->__r_.__value_.__l.__data_;
        v327 = v232->__r_.__value_.__r.__words[2];
        v326 = v233;
        v232->__r_.__value_.__l.__size_ = 0;
        v232->__r_.__value_.__r.__words[2] = 0;
        v232->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v326, a3);
        if (SHIBYTE(v327) < 0)
        {
          operator delete(v326);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v317.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v323.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v322.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v321.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v320.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v319.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v318.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v318.__r_.__value_.__l.__data_);
        }

        ++v310;
        goto LABEL_533;
      }

      if (a4 == 1)
      {
        if (*(v65 + 47) >= 0)
        {
          v191 = *(v65 + 47);
        }

        else
        {
          v191 = *(v65 + 32);
        }

        sub_29A022DE0(&__p, v191 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v191)
        {
          if (*(v65 + 47) >= 0)
          {
            v193 = (v65 + 24);
          }

          else
          {
            v193 = *(v65 + 24);
          }

          memmove(p_p, v193, v191);
        }

        *(&p_p->__r_.__value_.__l.__data_ + v191) = 46;
        v194 = *(v65 + 47);
        if (v194 >= 0)
        {
          v195 = (v65 + 24);
        }

        else
        {
          v195 = *(v65 + 24);
        }

        if (v194 >= 0)
        {
          v196 = *(v65 + 47);
        }

        else
        {
          v196 = *(v65 + 32);
        }

        v197 = std::string::append(&__p, v195, v196);
        v198 = *&v197->__r_.__value_.__l.__data_;
        v327 = v197->__r_.__value_.__r.__words[2];
        v326 = v198;
        v197->__r_.__value_.__l.__size_ = 0;
        v197->__r_.__value_.__r.__words[2] = 0;
        v197->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &v326, a3, 0);
        if (SHIBYTE(v327) < 0)
        {
          operator delete(v326);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_533;
      }

      if (v316)
      {
        sub_29A008E78(&__dst, off_2A14FE4D8[0]);
        v234 = std::string::insert(&__dst, 0, "[");
        v235 = *&v234->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v234->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v235;
        v234->__r_.__value_.__l.__size_ = 0;
        v234->__r_.__value_.__r.__words[2] = 0;
        v234->__r_.__value_.__r.__words[0] = 0;
        v236 = std::string::append(&__p, "]");
        v237 = *&v236->__r_.__value_.__l.__data_;
        v327 = v236->__r_.__value_.__r.__words[2];
        v326 = v237;
        v236->__r_.__value_.__l.__size_ = 0;
        v236->__r_.__value_.__r.__words[2] = 0;
        v236->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (a4 == 3)
        {
          v251 = (*(*a1[1] + 80))(a1[1]);
          v252 = v251;
          if (*(v251 + 23) >= 0)
          {
            v253 = *(v251 + 23);
          }

          else
          {
            v253 = *(v251 + 8);
          }

          sub_29A022DE0(&v321, v253 + 1);
          if ((v321.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v254 = &v321;
          }

          else
          {
            v254 = v321.__r_.__value_.__r.__words[0];
          }

          if (v253)
          {
            if (v252[23] >= 0)
            {
              v255 = v252;
            }

            else
            {
              v255 = *v252;
            }

            memmove(v254, v255, v253);
          }

          *(&v254->__r_.__value_.__l.__data_ + v253) = 32;
        }

        else
        {
          memset(&v321, 0, sizeof(v321));
        }

        v256 = *(v65 + 23);
        if (v256 >= 0)
        {
          v257 = v65;
        }

        else
        {
          v257 = *v65;
        }

        if (v256 >= 0)
        {
          v258 = *(v65 + 23);
        }

        else
        {
          v258 = *(v65 + 8);
        }

        v259 = std::string::append(&v321, v257, v258);
        v260 = *&v259->__r_.__value_.__l.__data_;
        v322.__r_.__value_.__r.__words[2] = v259->__r_.__value_.__r.__words[2];
        *&v322.__r_.__value_.__l.__data_ = v260;
        v259->__r_.__value_.__l.__size_ = 0;
        v259->__r_.__value_.__r.__words[2] = 0;
        v259->__r_.__value_.__r.__words[0] = 0;
        v261 = std::string::append(&v322, " ");
        v262 = *&v261->__r_.__value_.__l.__data_;
        v323.__r_.__value_.__r.__words[2] = v261->__r_.__value_.__r.__words[2];
        *&v323.__r_.__value_.__l.__data_ = v262;
        v261->__r_.__value_.__l.__size_ = 0;
        v261->__r_.__value_.__r.__words[2] = 0;
        v261->__r_.__value_.__r.__words[0] = 0;
        v265 = *(v65 + 24);
        v264 = v65 + 24;
        v263 = v265;
        v266 = *(v264 + 23);
        if (v266 >= 0)
        {
          v267 = v264;
        }

        else
        {
          v267 = v263;
        }

        if (v266 >= 0)
        {
          v268 = *(v264 + 23);
        }

        else
        {
          v268 = *(v264 + 8);
        }

        v269 = std::string::append(&v323, v267, v268);
        v270 = *&v269->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v269->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v270;
        v269->__r_.__value_.__l.__size_ = 0;
        v269->__r_.__value_.__r.__words[2] = 0;
        v269->__r_.__value_.__r.__words[0] = 0;
        if (v327 >= 0)
        {
          v271 = &v326;
        }

        else
        {
          v271 = v326;
        }

        if (v327 >= 0)
        {
          v272 = HIBYTE(v327);
        }

        else
        {
          v272 = *(&v326 + 1);
        }

        v273 = std::string::append(&__dst, v271, v272);
        v274 = *&v273->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v273->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v274;
        v273->__r_.__value_.__l.__size_ = 0;
        v273->__r_.__value_.__r.__words[2] = 0;
        v273->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &__p, a3, a4 != 3);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v323.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v322.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v321.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v327) < 0)
        {
          operator delete(v326);
        }

        goto LABEL_530;
      }

      if (a4 == 4)
      {
        v238 = *(a2 + 140);
        (*(*a1 + 80))(a1, v65 + 24, a3, 0);
        (*(*a1 + 32))(a1, a3, 1);
        v239 = 0;
        if (v238 <= 1)
        {
          v240 = 1;
        }

        else
        {
          v240 = v238;
        }

        do
        {
          if (v239)
          {
            v241 = ", ";
          }

          else
          {
            v241 = "";
          }

          sub_29A008E78(&v326, v241);
          (*(*a1 + 72))(a1, &v326, a3);
          if (SHIBYTE(v327) < 0)
          {
            operator delete(v326);
          }

          if (*(v65 + 47) >= 0)
          {
            v242 = *(v65 + 47);
          }

          else
          {
            v242 = *(v65 + 32);
          }

          sub_29A022DE0(&__dst, v242 + 1);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v243 = &__dst;
          }

          else
          {
            v243 = __dst.__r_.__value_.__r.__words[0];
          }

          if (v242)
          {
            if (*(v65 + 47) >= 0)
            {
              v244 = (v65 + 24);
            }

            else
            {
              v244 = *(v65 + 24);
            }

            memmove(v243, v244, v242);
          }

          *(&v243->__r_.__value_.__l.__data_ + v242) = 91;
          std::to_string(&v323, v239);
          if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v245 = &v323;
          }

          else
          {
            v245 = v323.__r_.__value_.__r.__words[0];
          }

          if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v246 = HIBYTE(v323.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v246 = v323.__r_.__value_.__l.__size_;
          }

          v247 = std::string::append(&__dst, v245, v246);
          v248 = *&v247->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v247->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v248;
          v247->__r_.__value_.__l.__size_ = 0;
          v247->__r_.__value_.__r.__words[2] = 0;
          v247->__r_.__value_.__r.__words[0] = 0;
          v249 = std::string::append(&__p, "]");
          v250 = *&v249->__r_.__value_.__l.__data_;
          v327 = v249->__r_.__value_.__r.__words[2];
          v326 = v250;
          v249->__r_.__value_.__l.__size_ = 0;
          v249->__r_.__value_.__r.__words[2] = 0;
          v249->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &v326, a3, 0);
          if (SHIBYTE(v327) < 0)
          {
            operator delete(v326);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v323.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          ++v239;
        }

        while (v240 != v239);
        (*(*a1 + 40))(a1, a3, 0, 1);
        goto LABEL_530;
      }

LABEL_531:
      if (a4 > 4 || ((1 << a4) & 0x13) == 0)
      {
        MEMORY[0x29C2C1A60](v336, "\n");
        goto LABEL_534;
      }

LABEL_533:
      MEMORY[0x29C2C1A60](v336, ", ");
LABEL_534:
      v62 = *v62;
      if (!v62)
      {
        goto LABEL_537;
      }
    }

    v71 = *(v65 + 88);
    v72 = *(v65 + 96);
    if (a4)
    {
      if (v71 != v72)
      {
        v73 = 0;
        while (1)
        {
          v74 = *(v71[v73] + 24);
          if (v74 != sub_29B24805C())
          {
            break;
          }

          if (a4 == 1)
          {
            (*(*a1 + 72))(a1, v336, a3);
            sub_29A008E78(&v326, "MetalTexture");
            (*(*a1 + 72))(a1, &v326, a3);
            if (SHIBYTE(v327) < 0)
            {
              operator delete(v326);
            }

            (*(*a1 + 32))(a1, a3, 1);
            v87 = *(*(v65 + 88) + 8 * v73);
            if (*(v87 + 127) < 0)
            {
              sub_29A008D14(&__p, *(v87 + 104), *(v87 + 112));
            }

            else
            {
              __p = *(v87 + 104);
            }

            v138 = std::string::append(&__p, "_tex");
            v139 = *&v138->__r_.__value_.__l.__data_;
            v327 = v138->__r_.__value_.__r.__words[2];
            v326 = v139;
            v138->__r_.__value_.__l.__size_ = 0;
            v138->__r_.__value_.__r.__words[2] = 0;
            v138->__r_.__value_.__r.__words[0] = 0;
            (*(*a1 + 72))(a1, &v326, a3);
            if (SHIBYTE(v327) < 0)
            {
              operator delete(v326);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            (*(*a1 + 72))(a1, v336, a3);
            v140 = *(*(v65 + 88) + 8 * v73);
            if (*(v140 + 127) < 0)
            {
              sub_29A008D14(&__p, *(v140 + 104), *(v140 + 112));
            }

            else
            {
              __p = *(v140 + 104);
            }

            v141 = std::string::append(&__p, "_sampler");
            v142 = *&v141->__r_.__value_.__l.__data_;
            v327 = v141->__r_.__value_.__r.__words[2];
            v326 = v142;
            v141->__r_.__value_.__l.__size_ = 0;
            v141->__r_.__value_.__r.__words[2] = 0;
            v141->__r_.__value_.__r.__words[0] = 0;
            (*(*a1 + 72))(a1, &v326, a3);
            if (SHIBYTE(v327) < 0)
            {
              operator delete(v326);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            (*(*a1 + 40))(a1, a3, 0, 1);
            goto LABEL_277;
          }

          if (v316)
          {
            v103 = (*(*a1 + 72))(a1, v336, a3);
            v104 = *(*(v65 + 88) + 8 * v73);
            v106 = sub_29B1F31FC(v103, v105);
            (*(*a1 + 208))(a1, v104, v106, a2, a3, 0);
            sub_29A008E78(&v326, __sa);
            (*(*a1 + 72))(a1, &v326, a3);
            if (SHIBYTE(v327) < 0)
            {
              operator delete(v326);
            }

LABEL_235:
            if (a4 == 3)
            {
              goto LABEL_277;
            }

            goto LABEL_236;
          }

          if (a4 == 4)
          {
            (*(*a1 + 72))(a1, v336, a3);
            v123 = *(*(v65 + 88) + 8 * v73);
            if (*(v123 + 127) >= 0)
            {
              v124 = *(v123 + 127);
            }

            else
            {
              v124 = *(v123 + 112);
            }

            sub_29A022DE0(&__dst, v124 + 1);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v125 = &__dst;
            }

            else
            {
              v125 = __dst.__r_.__value_.__r.__words[0];
            }

            if (v124)
            {
              if (*(v123 + 127) >= 0)
              {
                v126 = (v123 + 104);
              }

              else
              {
                v126 = *(v123 + 104);
              }

              memmove(v125, v126, v124);
            }

            *(&v125->__r_.__value_.__l.__data_ + v124) = 40;
            v127 = *(*(v65 + 88) + 8 * v73);
            v130 = *(v127 + 104);
            v128 = v127 + 104;
            v129 = v130;
            v131 = *(v128 + 23);
            if (v131 >= 0)
            {
              v132 = v128;
            }

            else
            {
              v132 = v129;
            }

            if (v131 >= 0)
            {
              v133 = *(v128 + 23);
            }

            else
            {
              v133 = *(v128 + 8);
            }

            v134 = std::string::append(&__dst, v132, v133);
            v135 = *&v134->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v135;
            v134->__r_.__value_.__l.__size_ = 0;
            v134->__r_.__value_.__r.__words[2] = 0;
            v134->__r_.__value_.__r.__words[0] = 0;
            v136 = std::string::append(&__p, ")");
            v137 = *&v136->__r_.__value_.__l.__data_;
            v327 = v136->__r_.__value_.__r.__words[2];
            v326 = v137;
            v136->__r_.__value_.__l.__size_ = 0;
            v136->__r_.__value_.__r.__words[2] = 0;
            v136->__r_.__value_.__r.__words[0] = 0;
            (*(*a1 + 80))(a1, &v326, a3, 0);
            if (SHIBYTE(v327) < 0)
            {
              operator delete(v326);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            goto LABEL_277;
          }

LABEL_236:
          if (a4 != 1)
          {
            v122 = ", ";
            if (a4 != 4)
            {
              v122 = "\n";
              if (a4 != 2)
              {
                goto LABEL_279;
              }
            }

            goto LABEL_278;
          }

LABEL_277:
          v122 = ", ";
LABEL_278:
          MEMORY[0x29C2C1A60](v336, v122);
LABEL_279:
          ++v73;
          v71 = *(v65 + 88);
          if (v73 >= (*(v65 + 96) - v71) >> 3)
          {
            goto LABEL_530;
          }
        }

        (*(*a1 + 48))(a1, a3);
        (*(*a1 + 72))(a1, v336, a3);
        if (a4 == 1)
        {
          if (*(v65 + 47) >= 0)
          {
            v75 = *(v65 + 47);
          }

          else
          {
            v75 = *(v65 + 32);
          }

          sub_29A022DE0(&__p, v75 + 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = &__p;
          }

          else
          {
            v76 = __p.__r_.__value_.__r.__words[0];
          }

          if (v75)
          {
            if (*(v65 + 47) >= 0)
            {
              v77 = (v65 + 24);
            }

            else
            {
              v77 = *(v65 + 24);
            }

            memmove(v76, v77, v75);
          }

          *(&v76->__r_.__value_.__l.__data_ + v75) = 46;
          v78 = *(*(v65 + 88) + 8 * v73);
          v81 = *(v78 + 104);
          v79 = v78 + 104;
          v80 = v81;
          v82 = *(v79 + 23);
          if (v82 >= 0)
          {
            v83 = v79;
          }

          else
          {
            v83 = v80;
          }

          if (v82 >= 0)
          {
            v84 = *(v79 + 23);
          }

          else
          {
            v84 = *(v79 + 8);
          }

          v85 = std::string::append(&__p, v83, v84);
          v86 = *&v85->__r_.__value_.__l.__data_;
          v327 = v85->__r_.__value_.__r.__words[2];
          v326 = v86;
          v85->__r_.__value_.__l.__size_ = 0;
          v85->__r_.__value_.__r.__words[2] = 0;
          v85->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 72))(a1, &v326, a3);
          goto LABEL_203;
        }

        if (v316)
        {
          v88 = sub_29B2438AC(a1[1], *(*(*(v65 + 88) + 8 * v73) + 24));
          v89 = v88;
          if (*(v88 + 23) >= 0)
          {
            v90 = *(v88 + 23);
          }

          else
          {
            v90 = *(v88 + 8);
          }

          sub_29A022DE0(&__p, v90 + 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v91 = &__p;
          }

          else
          {
            v91 = __p.__r_.__value_.__r.__words[0];
          }

          if (v90)
          {
            if (v89[23] >= 0)
            {
              v92 = v89;
            }

            else
            {
              v92 = *v89;
            }

            memmove(v91, v92, v90);
          }

          *(&v91->__r_.__value_.__l.__data_ + v90) = 32;
          v93 = *(*(v65 + 88) + 8 * v73);
          v96 = *(v93 + 104);
          v94 = v93 + 104;
          v95 = v96;
          v97 = *(v94 + 23);
          if (v97 >= 0)
          {
            v98 = v94;
          }

          else
          {
            v98 = v95;
          }

          if (v97 >= 0)
          {
            v99 = *(v94 + 23);
          }

          else
          {
            v99 = *(v94 + 8);
          }

          v100 = std::string::append(&__p, v98, v99);
          v101 = *&v100->__r_.__value_.__l.__data_;
          v327 = v100->__r_.__value_.__r.__words[2];
          v326 = v101;
          v100->__r_.__value_.__l.__size_ = 0;
          v100->__r_.__value_.__r.__words[2] = 0;
          v100->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &v326, a3, a4 != 3);
LABEL_203:
          if (SHIBYTE(v327) < 0)
          {
            operator delete(v326);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            v102 = __p.__r_.__value_.__r.__words[0];
            goto LABEL_207;
          }
        }

        else if (a4 == 4)
        {
          v107 = *(*(v65 + 88) + 8 * v73);
          if (*(v107 + 127) >= 0)
          {
            v108 = *(v107 + 127);
          }

          else
          {
            v108 = *(v107 + 112);
          }

          sub_29A022DE0(&__dst, v108 + 1);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v109 = &__dst;
          }

          else
          {
            v109 = __dst.__r_.__value_.__r.__words[0];
          }

          if (v108)
          {
            if (*(v107 + 127) >= 0)
            {
              v110 = (v107 + 104);
            }

            else
            {
              v110 = *(v107 + 104);
            }

            memmove(v109, v110, v108);
          }

          *(&v109->__r_.__value_.__l.__data_ + v108) = 40;
          v111 = *(*(v65 + 88) + 8 * v73);
          v114 = *(v111 + 104);
          v112 = v111 + 104;
          v113 = v114;
          v115 = *(v112 + 23);
          if (v115 >= 0)
          {
            v116 = v112;
          }

          else
          {
            v116 = v113;
          }

          if (v115 >= 0)
          {
            v117 = *(v112 + 23);
          }

          else
          {
            v117 = *(v112 + 8);
          }

          v118 = std::string::append(&__dst, v116, v117);
          v119 = *&v118->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v119;
          v118->__r_.__value_.__l.__size_ = 0;
          v118->__r_.__value_.__r.__words[2] = 0;
          v118->__r_.__value_.__r.__words[0] = 0;
          v120 = std::string::append(&__p, ")");
          v121 = *&v120->__r_.__value_.__l.__data_;
          v327 = v120->__r_.__value_.__r.__words[2];
          v326 = v121;
          v120->__r_.__value_.__l.__size_ = 0;
          v120->__r_.__value_.__r.__words[2] = 0;
          v120->__r_.__value_.__r.__words[0] = 0;
          (*(*a1 + 80))(a1, &v326, a3, 0);
          if (SHIBYTE(v327) < 0)
          {
            operator delete(v326);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            v102 = __dst.__r_.__value_.__r.__words[0];
LABEL_207:
            operator delete(v102);
          }
        }

        (*(*a1 + 56))(a1, a3, 0);
        goto LABEL_235;
      }
    }

    else
    {
      if (v71 == v72)
      {
        goto LABEL_533;
      }

      v143 = 0;
      do
      {
        while (1)
        {
          v144 = *v71;
          v145 = *(*v71 + 24);
          v146 = sub_29B24805C();
          if (sub_29A1B00DC(v145, v146))
          {
            break;
          }

          ++v71;
          v143 = 1;
          if (v71 == v72)
          {
            goto LABEL_319;
          }
        }

        (*(*a1 + 72))(a1, v336, a3);
        if (*(v144 + 127) < 0)
        {
          sub_29A008D14(&__dst, *(v144 + 104), *(v144 + 112));
        }

        else
        {
          __dst = *(v144 + 104);
        }

        v147 = std::string::append(&__dst, "_tex");
        v148 = *&v147->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v147->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v148;
        v147->__r_.__value_.__l.__size_ = 0;
        v147->__r_.__value_.__r.__words[2] = 0;
        v147->__r_.__value_.__r.__words[0] = 0;
        v149 = std::string::insert(&__p, 0, "texture2d<float> ");
        v150 = *&v149->__r_.__value_.__l.__data_;
        v327 = v149->__r_.__value_.__r.__words[2];
        v326 = v150;
        v149->__r_.__value_.__l.__size_ = 0;
        v149->__r_.__value_.__r.__words[2] = 0;
        v149->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v326, a3);
        if (SHIBYTE(v327) < 0)
        {
          operator delete(v326);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        std::to_string(&__dst, __val);
        v151 = std::string::insert(&__dst, 0, " [[texture(");
        v152 = *&v151->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v151->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v152;
        v151->__r_.__value_.__l.__size_ = 0;
        v151->__r_.__value_.__r.__words[2] = 0;
        v151->__r_.__value_.__r.__words[0] = 0;
        v153 = std::string::append(&__p, ")]], ");
        v154 = *&v153->__r_.__value_.__l.__data_;
        v327 = v153->__r_.__value_.__r.__words[2];
        v326 = v154;
        v153->__r_.__value_.__l.__size_ = 0;
        v153->__r_.__value_.__r.__words[2] = 0;
        v153->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v326, a3);
        if (SHIBYTE(v327) < 0)
        {
          operator delete(v326);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (*(v144 + 127) < 0)
        {
          sub_29A008D14(&__dst, *(v144 + 104), *(v144 + 112));
        }

        else
        {
          __dst = *(v144 + 104);
        }

        v155 = std::string::append(&__dst, "_sampler");
        v156 = *&v155->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v155->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v156;
        v155->__r_.__value_.__l.__size_ = 0;
        v155->__r_.__value_.__r.__words[2] = 0;
        v155->__r_.__value_.__r.__words[0] = 0;
        v157 = std::string::insert(&__p, 0, "sampler ");
        v158 = *&v157->__r_.__value_.__l.__data_;
        v327 = v157->__r_.__value_.__r.__words[2];
        v326 = v158;
        v157->__r_.__value_.__l.__size_ = 0;
        v157->__r_.__value_.__r.__words[2] = 0;
        v157->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v326, a3);
        if (SHIBYTE(v327) < 0)
        {
          operator delete(v326);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        std::to_string(&__dst, __val);
        v159 = std::string::insert(&__dst, 0, " [[sampler(");
        v160 = *&v159->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v159->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v160;
        v159->__r_.__value_.__l.__size_ = 0;
        v159->__r_.__value_.__r.__words[2] = 0;
        v159->__r_.__value_.__r.__words[0] = 0;
        v161 = std::string::append(&__p, ")]]");
        v162 = *&v161->__r_.__value_.__l.__data_;
        v327 = v161->__r_.__value_.__r.__words[2];
        v326 = v162;
        v161->__r_.__value_.__l.__size_ = 0;
        v161->__r_.__value_.__r.__words[2] = 0;
        v161->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 72))(a1, &v326, a3);
        if (SHIBYTE(v327) < 0)
        {
          operator delete(v326);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        (*(*a1 + 56))(a1, a3, 0);
        ++__val;
        ++v71;
      }

      while (v71 != v72);
      if ((v143 & 1) == 0)
      {
        goto LABEL_530;
      }

LABEL_319:
      (*(*a1 + 72))(a1, v336, a3);
      v163 = (*(*a1[1] + 80))(a1[1]);
      v164 = v163;
      if (*(v163 + 23) >= 0)
      {
        v165 = *(v163 + 23);
      }

      else
      {
        v165 = *(v163 + 8);
      }

      sub_29A022DE0(&v320, v165 + 1);
      if ((v320.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v166 = &v320;
      }

      else
      {
        v166 = v320.__r_.__value_.__r.__words[0];
      }

      if (v165)
      {
        if (v164[23] >= 0)
        {
          v167 = v164;
        }

        else
        {
          v167 = *v164;
        }

        memmove(v166, v167, v165);
      }

      *(&v166->__r_.__value_.__l.__data_ + v165) = 32;
      v168 = *(v65 + 23);
      if (v168 >= 0)
      {
        v169 = v65;
      }

      else
      {
        v169 = *v65;
      }

      if (v168 >= 0)
      {
        v170 = *(v65 + 23);
      }

      else
      {
        v170 = *(v65 + 8);
      }

      v171 = std::string::append(&v320, v169, v170);
      v172 = *&v171->__r_.__value_.__l.__data_;
      v321.__r_.__value_.__r.__words[2] = v171->__r_.__value_.__r.__words[2];
      *&v321.__r_.__value_.__l.__data_ = v172;
      v171->__r_.__value_.__l.__size_ = 0;
      v171->__r_.__value_.__r.__words[2] = 0;
      v171->__r_.__value_.__r.__words[0] = 0;
      v173 = std::string::append(&v321, "& ");
      v174 = *&v173->__r_.__value_.__l.__data_;
      v322.__r_.__value_.__r.__words[2] = v173->__r_.__value_.__r.__words[2];
      *&v322.__r_.__value_.__l.__data_ = v174;
      v173->__r_.__value_.__l.__size_ = 0;
      v173->__r_.__value_.__r.__words[2] = 0;
      v173->__r_.__value_.__r.__words[0] = 0;
      v177 = *(v65 + 24);
      v176 = v65 + 24;
      v175 = v177;
      v178 = *(v176 + 23);
      if (v178 >= 0)
      {
        v179 = v176;
      }

      else
      {
        v179 = v175;
      }

      if (v178 >= 0)
      {
        v180 = *(v176 + 23);
      }

      else
      {
        v180 = *(v176 + 8);
      }

      v181 = std::string::append(&v322, v179, v180);
      v182 = *&v181->__r_.__value_.__l.__data_;
      v323.__r_.__value_.__r.__words[2] = v181->__r_.__value_.__r.__words[2];
      *&v323.__r_.__value_.__l.__data_ = v182;
      v181->__r_.__value_.__l.__size_ = 0;
      v181->__r_.__value_.__r.__words[2] = 0;
      v181->__r_.__value_.__r.__words[0] = 0;
      v183 = std::string::append(&v323, "[[ buffer(");
      v184 = *&v183->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v183->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v184;
      v183->__r_.__value_.__l.__size_ = 0;
      v183->__r_.__value_.__r.__words[2] = 0;
      v183->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v319, v310);
      if ((v319.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v185 = &v319;
      }

      else
      {
        v185 = v319.__r_.__value_.__r.__words[0];
      }

      if ((v319.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v186 = HIBYTE(v319.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v186 = v319.__r_.__value_.__l.__size_;
      }

      v187 = std::string::append(&__dst, v185, v186);
      v188 = *&v187->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v187->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v188;
      v187->__r_.__value_.__l.__size_ = 0;
      v187->__r_.__value_.__r.__words[2] = 0;
      v187->__r_.__value_.__r.__words[0] = 0;
      v189 = std::string::append(&__p, ") ]]");
      v190 = *&v189->__r_.__value_.__l.__data_;
      v327 = v189->__r_.__value_.__r.__words[2];
      v326 = v190;
      v189->__r_.__value_.__l.__size_ = 0;
      v189->__r_.__value_.__r.__words[2] = 0;
      v189->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 72))(a1, &v326, a3);
      if (SHIBYTE(v327) < 0)
      {
        operator delete(v326);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v319.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v323.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v322.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v321.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v320.__r_.__value_.__l.__data_);
      }

      ++v310;
    }

LABEL_530:
    if (a4 == 3)
    {
      goto LABEL_533;
    }

    goto LABEL_531;
  }

LABEL_537:
  if ((v309 & 1) == 0)
  {
    sub_29A008E78(&v326, off_2A14FE508[0]);
    v275 = sub_29B240C7C(a3, &v326);
    if (SHIBYTE(v327) < 0)
    {
      operator delete(v326);
    }

    v276 = v275[11];
    for (i = v275[12]; v276 != i; v276 += 8)
    {
      if (a4 == 2)
      {
        v278 = sub_29B2438AC(a1[1], *(*v276 + 24));
        v279 = v278;
        if (*(v278 + 23) >= 0)
        {
          v280 = *(v278 + 23);
        }

        else
        {
          v280 = *(v278 + 8);
        }

        sub_29A022DE0(&__p, v280 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v281 = &__p;
        }

        else
        {
          v281 = __p.__r_.__value_.__r.__words[0];
        }

        if (v280)
        {
          if (v279[23] >= 0)
          {
            v282 = v279;
          }

          else
          {
            v282 = *v279;
          }

          memmove(v281, v282, v280);
        }

        *(&v281->__r_.__value_.__l.__data_ + v280) = 32;
        v283 = *(*v276 + 127);
        if (v283 >= 0)
        {
          v284 = (*v276 + 104);
        }

        else
        {
          v284 = *(*v276 + 104);
        }

        if (v283 >= 0)
        {
          v285 = *(*v276 + 127);
        }

        else
        {
          v285 = *(*v276 + 112);
        }

        v286 = std::string::append(&__p, v284, v285);
        v287 = *&v286->__r_.__value_.__l.__data_;
        v327 = v286->__r_.__value_.__r.__words[2];
        v326 = v287;
        v286->__r_.__value_.__l.__size_ = 0;
        v286->__r_.__value_.__r.__words[2] = 0;
        v286->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &v326, a3, 1);
        if (SHIBYTE(v327) < 0)
        {
          operator delete(v326);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (v337 < 0)
  {
    operator delete(v336[0]);
  }
}

void sub_29B254938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  sub_29B22698C(v56 - 256);
  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_29B254E60(uint64_t *a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  (*(*a1 + 368))(&v53);
  (*(*a1 + 312))(a1, a3, a4);
  if (v53)
  {
    (*(*v53 + 24))(v53, a3, a4);
  }

  (*(*a1 + 64))(a1, a4);
  v8 = v54;
  v52[0] = v53;
  v52[1] = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B255E1C(a1, a3, v52, a4);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  (*(*a1 + 336))(a1, a3, a4);
  (*(*a1 + 344))(a1, a3, a4);
  sub_29A008E78(&__p, "struct GlobalContext");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a4, 1);
  sub_29A008E78(&__p, "GlobalContext(");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 3u, 1, 0);
  sub_29A008E78(&__p, ") : ");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 4u, 1, 0);
  sub_29A008E78(&__p, "{}");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 2u, 1, 0);
  (*(*a1 + 120))(a1, a2, a3, a4);
  sub_29A008E78(&__p, off_2A14FE4E8[0]);
  v9 = sub_29B240C7C(a4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v9[23] & 0x80u) == 0)
  {
    v10 = v9[23];
  }

  else
  {
    v10 = *(v9 + 1);
  }

  p_p = &__p;
  sub_29A022DE0(&__p, v10 + 13);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if ((v9[23] & 0x80u) == 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = *v9;
    }

    memmove(p_p, v12, v10);
  }

  strcpy(p_p + v10, " VertexMain()");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a4, 1);
  if ((v9[23] & 0x80u) == 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  v14 = &v50;
  sub_29A022DE0(&v50, v13 + 1);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v50.__r_.__value_.__r.__words[0];
  }

  if (v13)
  {
    if ((v9[23] & 0x80u) == 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = *v9;
    }

    memmove(v14, v15, v13);
  }

  *(&v14->__r_.__value_.__l.__data_ + v13) = 32;
  v16 = v9[47];
  if (v16 >= 0)
  {
    v17 = (v9 + 24);
  }

  else
  {
    v17 = *(v9 + 3);
  }

  if (v16 >= 0)
  {
    v18 = v9[47];
  }

  else
  {
    v18 = *(v9 + 4);
  }

  v19 = std::string::append(&v50, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  sub_29B20E488();
  std::operator+<char>();
  v21 = std::string::append(&v48, " * float4(");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  sub_29A008E78(v46, off_2A14FE188[0]);
  if ((v47 & 0x80u) == 0)
  {
    v23 = v46;
  }

  else
  {
    v23 = v46[0];
  }

  if ((v47 & 0x80u) == 0)
  {
    v24 = v47;
  }

  else
  {
    v24 = v46[1];
  }

  v25 = std::string::append(&v49, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v50, ", 1.0)");
  v28 = *&v27->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if ((v9[47] & 0x80u) == 0)
  {
    v29 = v9[47];
  }

  else
  {
    v29 = *(v9 + 4);
  }

  v30 = &v48;
  sub_29A022DE0(&v48, v29 + 4);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = v48.__r_.__value_.__r.__words[0];
  }

  if (v29)
  {
    if ((v9[47] & 0x80u) == 0)
    {
      v31 = v9 + 24;
    }

    else
    {
      v31 = *(v9 + 3);
    }

    memmove(v30, v31, v29);
  }

  strcpy(v30 + v29, ".pos");
  v32 = std::string::append(&v48, " = ");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v49, off_2A14FE258[0]);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v50, " * hPositionWorld");
  v37 = *&v36->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 144))(a1, a2, a3, a4, 0);
  (*(*a1 + 64))(a1, a4);
  std::operator+<char>();
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v38 = *(a2 + 264);
  v39 = *(a2 + 272);
  while (v38 != v39)
  {
    (*(*a1 + 128))(a1, *v38++, a3, a4);
  }

  (*(*a1 + 168))(a1, a2, a3, a4);
  (*(*a1 + 40))(a1, a4, 1, 1);
  sub_29A008E78(&__p, "VertexMain");
  std::string::operator=(a4 + 1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, off_2A14FE4E8[0]);
  v40 = sub_29B240C7C(a4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v41 = std::string::append(&v50, " VertexMain(");
  v42 = *&v41->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 0, 1, 0);
  sub_29A008E78(&__p, ")");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a4, 1);
  sub_29A008E78(&__p, "\tGlobalContext ctx {");
  (*(*a1 + 72))(a1, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 1u, 1, 0);
  sub_29A008E78(&__p, "}");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v40 + 23) >= 0)
  {
    v43 = *(v40 + 23);
  }

  else
  {
    v43 = v40[1];
  }

  v44 = &__p;
  sub_29A022DE0(&__p, v43 + 23);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v44 = __p.__r_.__value_.__r.__words[0];
  }

  if (v43)
  {
    if (*(v40 + 23) >= 0)
    {
      v45 = v40;
    }

    else
    {
      v45 = *v40;
    }

    memmove(v44, v45, v43);
  }

  strcpy(v44 + v43, " out = ctx.VertexMain()");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "out.pos.y = -out.pos.y");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "return out");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 40))(a1, a4, 0, 1);
  (*(*a1 + 64))(a1, a4);
  if (v54)
  {
    sub_29A014BEC(v54);
  }
}

void sub_29B255C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  v42 = *(v40 - 88);
  if (v42)
  {
    sub_29A014BEC(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B255E1C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a4 + 296);
  if (v4)
  {
    v8 = result;
    do
    {
      v9 = v4[5];
      if (*(v9 + 88) != *(v9 + 96))
      {
        v10 = strlen(off_2A14FE500[0]);
        v11 = v10;
        v12 = *(v9 + 23);
        if (v12 < 0)
        {
          if (v10 != *(v9 + 8))
          {
            goto LABEL_11;
          }

          if (v10 == -1)
          {
            sub_29A0F26CC();
          }

          v13 = *v9;
        }

        else
        {
          v13 = v4[5];
          if (v11 != v12)
          {
            goto LABEL_11;
          }
        }

        result = memcmp(v13, off_2A14FE500[0], v11);
        if (result)
        {
LABEL_11:
          std::operator+<char>();
          ((*v8)[11])(v8, &__p, a4);
          if (v17 < 0)
          {
            operator delete(__p);
          }

          if (*a3)
          {
            result = (*(**a3 + 32))(*a3, a2, v9, a4);
          }

          else
          {
            v14 = (*(*v8[1] + 80))(v8[1]);
            v15 = sub_29B242ED8();
            ((*v8)[25])(v8, v9, v14, v15, a2, a4, 1);
            result = ((*v8)[8])(v8, a4);
          }
        }
      }

      v4 = *v4;
    }

    while (v4);
  }

  return result;
}

void sub_29B256020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B25603C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 124);
  if (v6)
  {
    if (v6 == 2)
    {
      sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_environment_prefilter.glsl");
      (*(*a1 + 104))(a1, &v16, a2, a3);
    }

    else
    {
      if (v6 != 1)
      {
        v8 = *(a2 + 124);
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v14, v8);
        v10 = std::string::insert(&v14, 0, "Invalid hardware specular environment method specified: '");
        v11 = *&v10->__r_.__value_.__l.__data_;
        v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
        *&v15.__r_.__value_.__l.__data_ = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        v12 = std::string::append(&v15, "'");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v17 = v12->__r_.__value_.__r.__words[2];
        v16 = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(exception, &v16);
        *exception = &unk_2A20C8F68;
        __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
      }

      sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_environment_fis.glsl");
      (*(*a1 + 104))(a1, &v16, a2, a3);
    }
  }

  else
  {
    sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_environment_none.glsl");
    (*(*a1 + 104))(a1, &v16, a2, a3);
  }

  v15.__r_.__value_.__r.__words[0] = &v16;
  sub_29A012C90(&v15);
  return (*(*a1 + 64))(a1, a3);
}

void sub_29B256268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

uint64_t sub_29B256300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 132);
  if (v6 == 1)
  {
    sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_transmission_opacity.glsl");
    (*(*a1 + 104))(a1, &v16, a2, a3);
  }

  else
  {
    if (v6)
    {
      v8 = *(a2 + 132);
      exception = __cxa_allocate_exception(0x20uLL);
      std::to_string(&v14, v8);
      v10 = std::string::insert(&v14, 0, "Invalid transmission render specified: '");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v15.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v15, "'");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v17 = v12->__r_.__value_.__r.__words[2];
      v16 = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &v16);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_transmission_refract.glsl");
    (*(*a1 + 104))(a1, &v16, a2, a3);
  }

  v15.__r_.__value_.__r.__words[0] = &v16;
  sub_29A012C90(&v15);
  return (*(*a1 + 64))(a1, a3);
}

void sub_29B2564D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

uint64_t sub_29B25656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 280))(a1, a2);
  std::operator+<char>();
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define __METAL__ ");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#include <metal_stdlib>");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#include <simd/simd.h>");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "using namespace metal;");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define vec2 float2");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define vec3 float3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define vec4 float4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define ivec2 int2");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define ivec3 int3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define ivec4 int4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define uvec2 uint2");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define uvec3 uint3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define uvec4 uint4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define bvec2 BOOL2");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define bvec3 BOOL3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define bvec4 BOOL4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define mat3 float3x3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define mat4 float4x4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a1 + 64))(a1, a3);
}

void sub_29B256C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B256C94(void **a1, uint64_t a2, uint64_t a3)
{
  result = sub_29B240E54(a3);
  if (*(result + 88) != *(result + 96))
  {
    v7 = result;
    v8 = (*(*a1[1] + 80))(a1[1]);
    v9 = sub_29B242ED8();
    ((*a1)[25])(a1, v7, v8, v9, a2, a3, 1);
    v10 = (*a1)[8];

    return v10(a1, a3);
  }

  return result;
}

void sub_29B256DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29AE1D8C4(v6, "stdlib/genmsl/lib/mx_texture.metal");
  (*(*a1 + 104))(a1, v6, a2, a3);
  v7 = v6;
  sub_29A012C90(&v7);
}

void sub_29B256E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void sub_29B256E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A008E78(&v32, off_2A14FE500[0]);
  v6 = sub_29B2408C8(a3, &v32);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A008E78(&v30, off_2A14FE4D8[0]);
  v7 = std::string::insert(&v30, 0, "[");
  v8 = *&v7->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&__dst, "]");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v33 = v9->__r_.__value_.__r.__words[2];
  v32 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v6[47] < 0)
  {
    sub_29A008D14(&__dst, *(v6 + 3), *(v6 + 4));
  }

  else
  {
    __dst = *(v6 + 1);
  }

  (*(*a1 + 368))(&v28, a1, a2);
  if (v28)
  {
    (*(*v28 + 40))(v28, a2, v6, a3, &__dst, &v32);
  }

  else
  {
    std::operator+<char>();
    (*(*a1 + 80))(a1, &v30, a3, 0);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v11 = (*(*a1 + 32))(a1, a3, 1);
    v13 = sub_29B1F31FC(v11, v12);
    v14 = sub_29B242ED8();
    (*(*a1 + 200))(a1, v6, v13, v14, a2, a3, 0);
    (*(*a1 + 40))(a1, a3, 1, 1);
    (*(*a1 + 64))(a1, a3);
    std::operator+<char>();
    v15 = std::string::append(&v25, " ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v26, p_dst, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v33 >= 0)
    {
      v21 = &v32;
    }

    else
    {
      v21 = v32;
    }

    if (v33 >= 0)
    {
      v22 = HIBYTE(v33);
    }

    else
    {
      v22 = *(&v32 + 1);
    }

    v23 = std::string::append(&v27, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &v30, a3, 1);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  (*(*a1 + 64))(a1, a3);
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }
}

void sub_29B25729C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
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
  }

  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B257390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::operator+<char>();
  (*(*a1 + 88))(a1, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  (*(*a1 + 80))(a1, &__p, a3, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a3, 1);
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a3 + 23);
  if (v10 < 0)
  {
    if (v8 != *(a3 + 8))
    {
      goto LABEL_14;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a3;
  }

  else
  {
    v11 = a3;
    if (v9 != v10)
    {
      goto LABEL_14;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    sub_29A008E78(&__p, "float4 pos [[position]]");
    (*(*a1 + 80))(a1, &__p, a3, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_14:
  if (*(a4 + 96) != *(a4 + 88))
  {
    for (i = 0; i < (*(a4 + 96) - *(a4 + 88)) >> 3; ++i)
    {
      sub_29A008E78(&__p, "");
      v13 = sub_29B2438AC(*(*a2 + 8), *(*(*(a4 + 88) + 8 * i) + 24));
      v14 = *(v13 + 23);
      if (v14 >= 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = *v13;
      }

      if (v14 >= 0)
      {
        v16 = *(v13 + 23);
      }

      else
      {
        v16 = *(v13 + 8);
      }

      std::string::append(&__p, v15, v16);
      std::operator+<char>();
      v17 = std::string::append(&v28, " ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v29;
      }

      else
      {
        v19 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v29.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v19, size);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v21 = strlen(off_2A14FE550[0]);
      v22 = v21;
      v23 = *(a3 + 23);
      if (v23 < 0)
      {
        if (v21 == *(a3 + 8))
        {
          if (v21 == -1)
          {
            sub_29A0F26CC();
          }

          v24 = *a3;
LABEL_38:
          if (!memcmp(v24, off_2A14FE550[0], v22))
          {
            std::string::append(&__p, "[[attribute(");
            std::to_string(&v29, i);
            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v29;
            }

            else
            {
              v25 = v29.__r_.__value_.__r.__words[0];
            }

            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = v29.__r_.__value_.__l.__size_;
            }

            std::string::append(&__p, v25, v26);
            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }

            std::string::append(&__p, ")]]");
          }
        }
      }

      else
      {
        v24 = a3;
        if (v22 == v23)
        {
          goto LABEL_38;
        }
      }

      (*(*a1 + 80))(a1, &__p, a3, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  (*(*a1 + 40))(a1, a3, 1, 0);
  return (*(*a1 + 64))(a1, a3);
}

void sub_29B2577C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B257840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = strlen(off_2A14FE550[0]);
  v7 = v6;
  v8 = *(a3 + 23);
  if (v8 < 0)
  {
    if (v6 != *(a3 + 8))
    {
      goto LABEL_11;
    }

    if (v6 == -1)
    {
      sub_29A0F26CC();
    }

    v9 = *a3;
  }

  else
  {
    v9 = a3;
    if (v7 != v8)
    {
      goto LABEL_11;
    }
  }

  if (!memcmp(v9, off_2A14FE550[0], v7))
  {
    sub_29A008E78(__p, off_2A14FE4E0[0]);
    v10 = sub_29B240AA4(a3, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B257390(a1, a2, a3, v10);
    LOBYTE(v8) = *(a3 + 23);
  }

LABEL_11:
  result = strlen(off_2A14FE6F8);
  v12 = result;
  if ((v8 & 0x80) != 0)
  {
    if (result != *(a3 + 8))
    {
      return result;
    }

    if (result == -1)
    {
      sub_29A0F26CC();
    }

    result = *a3;
  }

  else
  {
    result = a3;
    if (v12 != v8)
    {
      return result;
    }
  }

  result = memcmp(result, off_2A14FE6F8, v12);
  if (!result)
  {
    sub_29A008E78(__p, off_2A14FE4E8[0]);
    v13 = sub_29B240AA4(a3, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_29B257390(a1, a2, a3, v13);
  }

  return result;
}

void sub_29B2579C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2579F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a1;
  v15[1] = a3;
  v15[2] = a2;
  v5 = strlen(off_2A14FE550[0]);
  v6 = v5;
  v7 = *(a3 + 23);
  if (v7 < 0)
  {
    if (v5 != *(a3 + 8))
    {
      goto LABEL_11;
    }

    if (v5 == -1)
    {
      sub_29A0F26CC();
    }

    v8 = *a3;
  }

  else
  {
    v8 = a3;
    if (v6 != v7)
    {
      goto LABEL_11;
    }
  }

  if (!memcmp(v8, off_2A14FE550[0], v6))
  {
    sub_29A008E78(__p, off_2A14FE4E8[0]);
    v9 = sub_29B240C7C(a3, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B257BE0(v15, v9);
    LOBYTE(v7) = *(a3 + 23);
  }

LABEL_11:
  result = strlen(off_2A14FE6F8);
  v11 = result;
  if ((v7 & 0x80) != 0)
  {
    if (result != *(a3 + 8))
    {
      return result;
    }

    if (result == -1)
    {
      sub_29A0F26CC();
    }

    result = *a3;
  }

  else
  {
    result = a3;
    if (v11 != v7)
    {
      return result;
    }
  }

  result = memcmp(result, off_2A14FE6F8, v11);
  if (!result)
  {
    sub_29A008E78(__p, "Pixel shader outputs");
    (*(*a1 + 88))(a1, __p, a3);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, off_2A14FE508[0]);
    v12 = sub_29B240C7C(a3, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_29B257BE0(v15, v12);
  }

  return result;
}

void sub_29B257BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B257BE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a2 + 88) != *(a2 + 96))
  {
    std::operator+<char>();
    (*(*v3 + 80))(v3, __p, a1[1], 0);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    (*(*v3 + 32))(v3, a1[1], 1);
    v5 = a1[1];
    v6 = strlen(off_2A14FE550[0]);
    v8 = *(v5 + 23);
    if (v8 < 0)
    {
      if (v6 != v5[1])
      {
LABEL_17:
        v9 = sub_29B1F31FC(v6, v7);
        v10 = sub_29B242ED8();
        (*(*v3 + 200))(v3, a2, v9, v10, a1[2], a1[1], 0);
        goto LABEL_18;
      }

      if (v6 == -1)
      {
        sub_29A0F26CC();
      }

      v5 = *v5;
    }

    else if (v6 != v8)
    {
      goto LABEL_17;
    }

    v6 = memcmp(v5, off_2A14FE550[0], v6);
    if (!v6)
    {
      sub_29A008E78(__p, "float4 pos [[position]]");
      v6 = (*(*v3 + 80))(v3, __p, a1[1], 1);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_17;
  }

  sub_29A008E78(__p, "struct VertexData");
  (*(*v3 + 80))(v3, __p, a1[1], 0);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v3 + 32))(v3, a1[1], 1);
  sub_29A008E78(__p, "float4 pos [[position]]");
  (*(*v3 + 80))(v3, __p, a1[1], 1);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_18:
  (*(*v3 + 40))(v3, a1[1], 1, 0);
  (*(*v3 + 64))(v3, a1[1]);
  return (*(*v3 + 64))(v3, a1[1]);
}

void sub_29B257F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B257F34(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_29A008E78(__p, off_2A14FE548[0]);
  sub_29AE19D1C(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B257F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B257FB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 47) >= 0)
  {
    v3 = *(a1 + 47);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  result = sub_29A022DE0(a2, v3 + 1);
  if (result[23] >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  if (v3)
  {
    v8 = *(a1 + 24);
    v7 = (a1 + 24);
    v6 = v8;
    if (v7[23] >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    result = memmove(v5, v9, v3);
  }

  *&v5[v3] = 46;
  return result;
}