void sub_271360ECC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB7CC(&v31, __p);
        }

        v31 = a1;
        v32 = 3 * a2;
        sub_2711EB698(&v31, __p);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB900(&v31, __p);
        case 0xB:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EBA34(&v31, __p);
        case 0xC:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EBB68(&v31, __p);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = 3 * a2;
        sub_2711E8CC0(&v31, __p);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = 3 * a2;
        sub_2711EB1C4(&v31, __p);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB310(&v31, __p);
        case 3:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB444(&v31, __p);
        case 5:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB578(&v31, __p);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_2711BD50C("data pointer is null but num_points is ", &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(10, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271361910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 48);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271361950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271361990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713619F0()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0uLL;
  v4 = 0;
  sub_27175B3E8();
}

void sub_2713625D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271362694(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27136268CLL);
}

void sub_2713626B0()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0uLL;
  v4 = 0;
  sub_27175B98C();
}

void sub_271363308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713633CC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 96);
  if (v3)
  {
    *(v1 - 88) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2713633C4);
}

void sub_2713633E8(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 440);
  v4 = *(a1 + 448);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = __dynamic_cast(v3, &unk_28811D1B0, &unk_28811DC48, 0) != 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v22 = v7;
        v23 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v12 = 0uLL;
          v24[0] = v7;
          v24[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v22 = *(a1 + 440);
        v23 = 0;
        if (v7)
        {
          v12 = 0uLL;
          v24[0] = v7;
          v24[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v25 = &v12;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271366078;
                operator new();
              }

              sub_271759D80(v9, 6);
              v28 = v7;
              *&v29 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v27 = sub_271366078;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271366078;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271366078;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271366078;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271366078;
                operator new();
              }

              sub_271759D80(v9, 0);
              v28 = v7;
              *&v29 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v27 = sub_271366078;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271366078;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271366078;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271366078;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v24 = *"cv3d.viz";
      v25 = 0x800000000000000;
      v26 = 3;
      sub_2711BE814(&v21, v24, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v18, *a1, *(a1 + 8));
      }

      else
      {
        *v18 = *a1;
        v19 = *(a1 + 16);
      }

      v20 = *(a1 + 24);
      LODWORD(v12) = 2;
      sub_27136484C(v13, &v12);
      *__p = *v13;
      v16 = v14;
      v13[1] = 0;
      v14 = 0;
      v13[0] = 0;
      v17 = 1;
      sub_271369E70(&v21, v18, __p);
    }

LABEL_13:
    v22 = 0;
    v23 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_2713646DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27136484C(uint64_t a1, unsigned int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = "cannot return data as VZPoints";
  v9 = v4;
  v10 = "cannot return data as VZPoints";
  v11 = "cannot return data as VZPoints";
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_2711FE8BC(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_288130EB8[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_288130ED0[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_288130EA0[v5])(&v7, v4);
  }

  return result;
}

void sub_27136496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271364988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271364978);
}

void sub_2713649AC(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 440);
  v4 = *(a1 + 448);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = __dynamic_cast(v3, &unk_28811D1B0, &unk_28811DC30, 0) != 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v22 = v7;
        v23 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v12 = 0uLL;
          v24[0] = v7;
          v24[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v22 = *(a1 + 440);
        v23 = 0;
        if (v7)
        {
          v12 = 0uLL;
          v24[0] = v7;
          v24[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v25 = &v12;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713663C0;
                operator new();
              }

              sub_271759D80(v9, 6);
              v28 = v7;
              *&v29 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v27 = sub_2713663C0;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713663C0;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713663C0;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713663C0;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713663C0;
                operator new();
              }

              sub_271759D80(v9, 0);
              v28 = v7;
              *&v29 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v27 = sub_2713663C0;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713663C0;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713663C0;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713663C0;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v24 = *"cv3d.viz";
      v25 = 0x800000000000000;
      v26 = 4;
      sub_2711BE814(&v21, v24, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v18, *a1, *(a1 + 8));
      }

      else
      {
        *v18 = *a1;
        v19 = *(a1 + 16);
      }

      v20 = *(a1 + 24);
      LODWORD(v12) = 3;
      sub_27136484C(v13, &v12);
      *__p = *v13;
      v16 = v14;
      v13[1] = 0;
      v14 = 0;
      v13[0] = 0;
      v17 = 1;
      sub_271369E70(&v21, v18, __p);
    }

LABEL_13:
    v22 = 0;
    v23 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_271365D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271365EB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271365F04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271365FA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881068F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271365FF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_271366078(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271366078;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271366078;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7D8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj2EEENS3_7PackageELj3EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj2EEENS3_7PackageELj3EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj2EEENS3_7PackageELj3EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj2EEENS3_7PackageELj3EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C274)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_27136621C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27136621C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27136621C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B838;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj2EEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj2EEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C2AC)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_2713663C0(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_2713663C0;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_2713663C0;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7C8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj3EEENS3_7PackageELj4EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj3EEENS3_7PackageELj4EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj3EEENS3_7PackageELj4EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj3EEENS3_7PackageELj4EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C310)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_271366564(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271366564;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271366564;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B828;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj3EEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj3EEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C348)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_271366938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271366BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271366C20(__int128 *a1, char a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) != 0 && *(a1 + 8) == 1)
  {
    LOBYTE(v5[0]) = 0;
    v7 = 0;
    if (*(a3 + 32) == 1)
    {
      v4 = *(a3 + 24);
      if (v4)
      {
        if (v4 == a3)
        {
          v6 = v5;
          (*(*v4 + 24))(v4, v5);
        }

        else
        {
          v6 = *(a3 + 24);
          *(a3 + 24) = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v7 = 1;
      LOBYTE(v9) = 0;
      v11 = 0;
      if (v6)
      {
        if (v6 == v5)
        {
          v10 = &v9;
          (*(*v6 + 3))();
        }

        else
        {
          v10 = v6;
          v6 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = 1;
    }

    else
    {
      LOBYTE(v9) = 0;
      v11 = 0;
    }

    v8 = 0;
    operator new();
  }

  v9 = &unk_288132EF0;
  operator new();
}

void sub_271367374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713674D8(_OWORD *a1, __int128 *a2, char a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v9 = 0;
  if (*(a4 + 32) == 1)
  {
    v5 = *(a4 + 24);
    if (v5)
    {
      if (v5 == a4)
      {
        v8 = v7;
        v6 = a2;
        (*(*v5 + 24))(v5, v7);
        a2 = v6;
      }

      else
      {
        v8 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 1;
  }

  sub_271366C20(a2, a3, v7);
}

void sub_271367640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271367664(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(**(*a1 + 8) + 48))(v9);
  v3 = v10;
  v4 = v11;
  v13 = &unk_288131488;
  v14 = v10;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v14;
    v4 = v15;
  }

  *a2 = &unk_288131488;
  a2[1] = v3;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v14;
    v5 = v15;
  }

  else
  {
    v5 = 0;
  }

  a2[3] = &unk_28812D848;
  a2[4] = &unk_288131488;
  a2[5] = v3;
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v15;
    *a2 = &unk_288130A18;
    a2[3] = &unk_288130A38;
    v13 = &unk_288131488;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a2 = &unk_288130A18;
    a2[3] = &unk_288130A38;
    v13 = &unk_288131488;
  }

  v9[0] = &unk_288132DC8;
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v9[1] = &unk_288131488;
  v8 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271367938(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(**(*a1 + 8) + 56))(v9);
  v3 = v10;
  v4 = v11;
  v13 = &unk_288131488;
  v14 = v10;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v14;
    v4 = v15;
  }

  *a2 = &unk_288131488;
  a2[1] = v3;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v14;
    v5 = v15;
  }

  else
  {
    v5 = 0;
  }

  a2[3] = &unk_28812D848;
  a2[4] = &unk_288131488;
  a2[5] = v3;
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v15;
    *a2 = &unk_288130A18;
    a2[3] = &unk_288130A38;
    v13 = &unk_288131488;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a2 = &unk_288130A18;
    a2[3] = &unk_288130A38;
    v13 = &unk_288131488;
  }

  v9[0] = &unk_288132DC8;
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v9[1] = &unk_288131488;
  v8 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271367C0C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3[6] = 0;
  sub_271368C80(&v4, v3, v2);
}

void sub_271367CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271367D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271367D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271367D38(unint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_271367E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_27112F828(&a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271367EA0(uint64_t result)
{
  *result = &unk_288130EF8;
  if (*(result + 40) == 1)
  {
    v1 = *(result + 32);
    if (v1 == result + 8)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 32));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 32));
    }

    return v2;
  }

  return result;
}

void sub_271367F58(uint64_t a1)
{
  *a1 = &unk_288130EF8;
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    if (v1 == a1 + 8)
    {
      (*(*v1 + 32))(*(a1 + 32));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 32));
    }
  }

  JUMPOUT(0x2743BF050);
}

void sub_271368130(_Unwind_Exception *a1)
{
  sub_271144524(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27136814C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288130EF8;
  *(a2 + 8) = 0;
  *(a2 + 40) = 0;
  if (*(result + 40) == 1)
  {
    v2 = *(result + 32);
    if (v2)
    {
      if (v2 == result + 8)
      {
        *(a2 + 32) = a2 + 8;
        v4 = a2;
        result = (*(**(result + 32) + 24))(*(result + 32), a2 + 8);
        a2 = v4;
        goto LABEL_8;
      }

      v3 = a2;
      result = (*(*v2 + 16))(*(result + 32));
      a2 = v3;
    }

    else
    {
      result = 0;
    }

    *(a2 + 32) = result;
LABEL_8:
    *(a2 + 40) = 1;
  }

  return result;
}

uint64_t sub_271368244(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result + 8;
    result = *(result + 32);
    if (result == v1)
    {
      return (*(*result + 32))();
    }

    else if (result)
    {
      return (*(*result + 40))();
    }
  }

  return result;
}

void sub_2713682B0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    if (v1 == a1 + 8)
    {
      v2 = a1;
      (*(*v1 + 32))(*(a1 + 32));
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(*(a1 + 32));
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void sub_27136835C(uint64_t a1, uint64_t ***a2, __int128 *a3)
{
  if (*(a1 + 40) == 1)
  {
    v7 = *a3;
    LOBYTE(v8) = 0;
    v9 = 0;
    if (*(a3 + 112) == 1)
    {
      sub_27112F6CC(&v8, a3 + 1);
      v9 = 1;
    }

    sub_27123BC74(&v7, v10);
    sub_2714FCC00((a2 + 2));
    v4 = **a2;
    v12 = 0;
    v16 = v11;
    v17 = "while recording data of type ";
    v18 = v11;
    v19 = "while recording data of type ";
    v20 = "while recording data of type ";
    v13[0] = &v16;
    sub_2712390A4(v13);
    v13[0] = &v5;
    v13[1] = &v6;
    v16 = v11;
    v17 = "{";
    v18 = v11;
    v19 = "{";
    v20 = "{";
    if (v12 != -1)
    {
      v15 = &v16;
      (*(&off_288130FE0 + v12))(&v15, v11);
      LOBYTE(v16) = 1;
      v17 = v11;
      v18 = &v14;
      sub_2712B32E4(v13, &v16);
      v16 = v11;
      v17 = "}";
      v18 = v11;
      v19 = "}";
      v20 = "}";
      if (v12 != -1)
      {
        v15 = &v16;
        (*(&off_288130FE0 + v12))(&v15, v11);
        v16 = v11;
        v17 = " to context ";
        v18 = v11;
        v19 = " to context ";
        v20 = " to context ";
        if (v12 != -1)
        {
          v13[0] = &v16;
          (*(&off_288131010 + v12))(v13, v11);
          sub_27136892C(&v16, v11, v4);
        }

        sub_2711308D4();
      }
    }

    sub_2711308D4();
  }
}

void sub_271368724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_27112D71C(&a38);
  sub_27112D71C(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_2713687C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d2vl13visual_logger14SharedRecorder12ForwardErrorE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d2vl13visual_logger14SharedRecorder12ForwardErrorE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d2vl13visual_logger14SharedRecorder12ForwardErrorE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d2vl13visual_logger14SharedRecorder12ForwardErrorE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271368858(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288130F88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713688AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271368B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271368BD8(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    MEMORY[0x2743BF050](v2, 0xA1C409BE6959DLL);
    return v3;
  }

  return v1;
}

void sub_271368ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(exception_object);
}

_UNKNOWN **sub_271368F48()
{
  if (atomic_load_explicit(&qword_28087B738, memory_order_acquire))
  {
    return &off_2815984B0;
  }

  if (__cxa_guard_acquire(&qword_28087B738))
  {
    __cxa_atexit(std::error_category::~error_category, &off_2815984B0, &dword_27111A000);
    __cxa_guard_release(&qword_28087B738);
  }

  return &off_2815984B0;
}

__n128 sub_271368FD4@<Q0>(int a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 8;
      strcpy(a2, "no error");
      return v7;
    case 1:
      *(a2 + 23) = 13;
      strcpy(a2, "unknown error");
      return v7;
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      *(a2 + 23) = 9;
      strcpy(a2, "I/O error");
      return v7;
    case 10:
      *(a2 + 23) = 16;
      v8 = "invalid argument";
      goto LABEL_32;
    case 11:
      operator new();
    case 12:
      operator new();
    case 13:
      operator new();
    case 14:
      *(a2 + 23) = 16;
      v8 = "filesystem error";
LABEL_32:
      v7 = *v8;
      *a2 = *v8;
      *(a2 + 16) = 0;
      return v7;
    case 15:
      *(a2 + 23) = 17;
      *(a2 + 16) = 112;
      v4 = "invalid timestamp";
      goto LABEL_11;
    case 16:
      v6 = "inconsistent timestamp";
      goto LABEL_36;
    case 17:
      *(a2 + 23) = 18;
      *(a2 + 16) = 25959;
      v9 = "index out of range";
      goto LABEL_42;
    case 18:
      operator new();
    case 19:
      operator new();
    case 20:
      operator new();
    case 21:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1635017060;
      v5 = "failed to load data";
      goto LABEL_39;
    case 22:
      *(a2 + 23) = 11;
      strcpy(a2, "invalid key");
      return v7;
    case 30:
      operator new();
    case 31:
      v6 = "data export queue full";
LABEL_36:
      *(a2 + 23) = 22;
      v7 = *v6;
      *a2 = *v6;
      *(a2 + 14) = *(v6 + 14);
      *(a2 + 22) = 0;
      return v7;
    case 32:
      *(a2 + 23) = 17;
      *(a2 + 16) = 104;
      v4 = "inconsistent mesh";
LABEL_11:
      v7 = *v4;
      *a2 = *v4;
      *(a2 + 17) = 0;
      return v7;
    case 33:
      operator new();
    case 35:
      operator new();
    case 36:
      operator new();
    case 37:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1701999980;
      v5 = "client send failure";
      goto LABEL_39;
    case 38:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1701999980;
      v5 = "server send failure";
LABEL_39:
      v7 = *v5;
      *a2 = *v5;
      *(a2 + 19) = 0;
      break;
    case 39:
      operator new();
    case 40:
      operator new();
    case 41:
      operator new();
    case 42:
      operator new();
    case 43:
      operator new();
    case 44:
      operator new();
    case 45:
      *(a2 + 23) = 15;
      strcpy(a2, "invalid peer ID");
      break;
    case 46:
      operator new();
    default:
      *(a2 + 23) = 18;
      *(a2 + 16) = 25956;
      v9 = "unknown error code";
LABEL_42:
      v7 = *v9;
      *a2 = *v9;
      *(a2 + 18) = 0;
      break;
  }

  return v7;
}

BOOL sub_27136987C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087B740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B740))
  {
    sub_271368F48();
    v6 = (*(off_2815984B0 + 2))();
    sub_27112B400(&qword_28087B748, v6);
    __cxa_atexit(MEMORY[0x277D82640], &qword_28087B748, &dword_27111A000);
    __cxa_guard_release(&qword_28087B740);
  }

  v2 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v3 = strlen(v2);
  if ((byte_28087B75F & 0x8000000000000000) != 0)
  {
    if (v3 == qword_28087B750)
    {
      if (v3 == -1)
      {
        sub_271127FEC();
      }

      if (!memcmp(qword_28087B748, v2, v3))
      {
        return *a1 == 31 || *a1 == 41;
      }
    }

    return 0;
  }

  if (v3 != byte_28087B75F || memcmp(&qword_28087B748, v2, v3))
  {
    return 0;
  }

  return *a1 == 31 || *a1 == 41;
}

void sub_271369A00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(1, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_271369B1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(11, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_271369C38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(4, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_271369D54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(10, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_271369E70(__int128 **a1, __int128 *a2, uint64_t *a3)
{
  sub_2711218C8(v14);
  if (*(a3 + 24) == 1)
  {
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    if (v7 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = a3[1];
    }

    v10 = sub_271120E64(&v15, v8, v9);
    sub_271120E64(v10, ", ", 2);
  }

  v13 = v14;
  sub_271120E64(&v15, "required data id = ", 19);
  if (a1[1] - *a1 == 32)
  {
    sub_27136A3CC(&v13, *a1);
  }

  sub_271120E64(&v15, "any of {", 8);
  v11 = *a1;
  if (*a1 != a1[1])
  {
    if (*(v11 + 23) < 0)
    {
      sub_271127178(&__dst, *v11, *(v11 + 1));
    }

    else
    {
      v12 = *v11;
      v17 = *(v11 + 2);
      __dst = v12;
    }

    v18 = *(v11 + 6);
    sub_27136A3CC(&v13, &__dst);
  }

  sub_271120E64(&v15, "}", 1);
  sub_271120E64(&v15, ", actual data id = ", 19);
  sub_27136A3CC(&v13, a2);
}

void sub_27136A34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  sub_2711DC948(&a24, MEMORY[0x277D82818]);
  MEMORY[0x2743BEF20](&a40);
  _Unwind_Resume(a1);
}

void sub_27136A7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136A868(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(14, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_27136AAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136AAD4(const char **a1, const char *a2, uint64_t a3, const char *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = 0;
  if (*a1)
  {
    sub_271131BB4(v5, a1);
  }

  else
  {
    v8 = v5;
    v9 = "nullptr";
    v10 = v5;
    v11 = "nullptr";
    v12 = "nullptr";
    __dst = &v8;
    sub_2711316E8(&__dst);
  }

  v8 = v5;
  v9 = a2;
  v10 = v5;
  v11 = a2;
  v12 = a2;
  if (v6 != -1)
  {
    __dst = &v8;
    (*(&off_288131058 + v6))(&__dst, v5);
    operator new();
  }

  sub_2711308D4();
}

void sub_27136AE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136AE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = a16;
  a16 = 0;
  if (v16)
  {
    sub_27184D728(&a16, v16);
  }

  JUMPOUT(0x27136AE7CLL);
}

void sub_27136AEA8(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27136B014(int a1@<W0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>, __int128 a5@<Q1>, __int128 a6@<Q2>, __n128 _Q3@<Q3>)
{
  if (!a1)
  {
    LODWORD(v11) = *a2;
    DWORD1(v11) = a2[4];
    *(&v11 + 1) = a2[8];
    LODWORD(a5) = a2[1];
    DWORD1(a5) = a2[5];
    DWORD2(a5) = a2[9];
    LODWORD(a6) = a2[2];
    DWORD1(a6) = a2[6];
    DWORD2(a6) = a2[10];
    __asm { FMOV            V3.4S, #1.0 }

    _Q3.n128_u32[0] = a2[3];
    _Q3.n128_u32[1] = a2[7];
    _Q3.n128_u32[2] = a2[11];
    v45 = v11;
    v46 = a5;
    v47 = a6;
    v48 = _Q3;
    if (a3 <= 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        sub_27153B100(&v34, &v45);
      }

      operator new();
    }

    operator new();
  }

  if (a1 != 1)
  {
    v45 = xmmword_27188C570;
    v46 = unk_27188C580;
    v47 = xmmword_27188C590;
    v48 = unk_27188C5A0;
    operator new();
  }

  a5 = *a2;
  v8 = *(a2 + 9);
  _Q3.n128_u32[0] = a2[11];
  v9.n128_u32[3] = 0;
  v9.n128_u32[0] = HIDWORD(*a2);
  HIDWORD(a5) = 0;
  *(v9.n128_u64 + 4) = *(a2 + 2);
  *&v10 = *(a2 + 3);
  *(&v10 + 1) = a2[8];
  v46 = v9;
  v47 = v10;
  v45 = a5;
  v48.n128_u64[0] = v8;
  v48.n128_u64[1] = _Q3.n128_u32[0] | 0x3F80000000000000;
  if (a3 > 1)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_27153743C(&v45, flt_271897988, &v34, *&a5, _Q3.n128_f64[0]);
  if (v44)
  {
    sub_2715391C4(&v23, &v45, flt_271897988);
  }

  v16 = __p;
  if (!v43)
  {
    v16 = &unk_2718BB850;
  }

  LOBYTE(v20[0]) = 0;
  v22 = 0;
  if (v43 && (v37 & 1) != 0)
  {
    if (v36 < 0)
    {
      sub_271127178(v20, *v16, __p[1]);
    }

    else
    {
      *v20 = *v16;
      v21 = v16[2];
    }

    v22 = 1;
  }

  sub_271369D54(v20, &v23);
  *a4 = v23;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v33 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_32;
  }

  *(a4 + 40) = 0;
  v17 = v26;
  if (v26 != 1)
  {
    *(a4 + 48) = 0;
    v18 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_29:
    v19 = v29;
    *(v18 + 16) = v28;
    *v18 = v27;
    v27 = 0uLL;
    *(a4 + 72) = v19;
    *(a4 + 80) = v30;
    *(a4 + 96) = v31;
    v28 = 0;
    v30 = 0uLL;
    v31 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v17)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  *(a4 + 16) = v24;
  *(a4 + 32) = v25;
  v25 = 0;
  v24 = 0uLL;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  v18 = a4 + 48;
  *(a4 + 104) = 0;
  if (v32)
  {
    goto LABEL_29;
  }

LABEL_25:
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v17)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

LABEL_32:
  if (v22 == 1 && SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if ((v44 & 1) == 0 && v43 == 1)
  {
    if (v42 == 1)
    {
      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_27136B6C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
    sub_271120E50(a1);
  }

  sub_271120E50(a1);
}

void sub_27136B6F4(int a1@<W0>, int64x2_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>, __n128 a5@<Q4>, __n128 a6@<Q5>, __n128 a7@<Q6>)
{
  if (!a1)
  {
    *&v15 = a2->i64[0];
    *&v16 = a2->i64[1];
    v17.i64[0] = a2[1].i64[0];
    *&v18 = a2[1].i64[1];
    *(&v15 + 1) = a2[2].i64[0];
    *(&v16 + 1) = a2[2].i64[1];
    a5.n128_u64[0] = a2[4].u64[0];
    a6.n128_u64[0] = a2[4].u64[1];
    v17.i64[1] = a2[3].i64[0];
    *(&v18 + 1) = a2[3].i64[1];
    a7.n128_u64[0] = a2[5].u64[0];
    __asm { FMOV            V7.2D, #1.0 }

    *&_Q7 = a2[5].i64[1];
    v53 = v15;
    v54 = a5;
    v55 = v16;
    v56 = a6;
    v57 = v17;
    v58 = a7;
    v59 = v18;
    v60 = _Q7;
    if (a3 <= 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        sub_27153B49C(&v42, &v53);
      }

      operator new();
    }

    operator new();
  }

  if (a1 != 1)
  {
    v57 = xmmword_27188C5F0;
    v58 = unk_27188C600;
    v59 = xmmword_27188C610;
    v60 = unk_27188C620;
    v53 = xmmword_27188C5B0;
    v54 = unk_27188C5C0;
    v55 = xmmword_27188C5D0;
    v56 = unk_27188C5E0;
    operator new();
  }

  v8 = *a2;
  v9 = a2[5].i64[1];
  v10 = *(&a2[4] + 8);
  v11 = a2[1].i64[0];
  v12 = vdupq_laneq_s64(a2[1], 1);
  v13 = a2[2].i64[1];
  v14 = vzip1q_s64(v12, a2[2]);
  v12.i64[0] = a2[4].i64[0];
  v57 = a2[3];
  v58 = v12;
  v53 = v8;
  v54 = v11;
  v55 = v14;
  v56 = v13;
  v59 = v10;
  *&v60 = v9;
  *(&v60 + 1) = 0x3FF0000000000000;
  if (a3 > 1)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_2715382F4(&v53, dbl_271897998, &v42);
  if (v52)
  {
    sub_27153A014(&v31, &v53, dbl_271897998);
  }

  v24 = __p;
  if (!v51)
  {
    v24 = &unk_2718BB850;
  }

  LOBYTE(v28[0]) = 0;
  v30 = 0;
  if (v51 && (v45 & 1) != 0)
  {
    if (v44 < 0)
    {
      sub_271127178(v28, *v24, __p[1]);
    }

    else
    {
      *v28 = *v24;
      v29 = v24[2];
    }

    v30 = 1;
  }

  sub_271369D54(v28, &v31);
  *a4 = v31;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v41 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_32;
  }

  *(a4 + 40) = 0;
  v25 = v34;
  if (v34 != 1)
  {
    *(a4 + 48) = 0;
    v26 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v40 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_29:
    v27 = v37;
    *(v26 + 16) = v36;
    *v26 = v35;
    v35 = 0uLL;
    *(a4 + 72) = v27;
    *(a4 + 80) = v38;
    *(a4 + 96) = v39;
    v36 = 0;
    v38 = 0uLL;
    v39 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v25)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  *(a4 + 16) = v32;
  *(a4 + 32) = v33;
  v33 = 0;
  v32 = 0uLL;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  v26 = a4 + 48;
  *(a4 + 104) = 0;
  if (v40)
  {
    goto LABEL_29;
  }

LABEL_25:
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v25)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

LABEL_32:
  if (v30 == 1 && SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if ((v52 & 1) == 0 && v51 == 1)
  {
    if (v50 == 1)
    {
      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46[0]);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_27136BDB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
    sub_271120E50(a1);
  }

  sub_271120E50(a1);
}

void sub_27136BDEC(int32x4_t **a1@<X0>, int a2@<W1>, int32x4_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D3>)
{
  if (!a2)
  {
    if (a3)
    {
      sub_27153BE9C(a1, &v20, a5);
      v13.i64[0] = vzip1q_s32(v20, *__p).u64[0];
      v13.i64[1] = __PAIR64__(v23.u32[0], v22.u32[0]);
      v14.i64[0] = vtrn2q_s32(v20, *__p).u64[0];
      v14.i64[1] = __PAIR64__(v23.u32[1], v22.u32[1]);
      v15.i64[0] = vzip2q_s32(v20, *__p).u64[0];
      v15.i64[1] = __PAIR64__(v23.u32[2], v22.u32[2]);
      v16.i64[0] = vuzp2q_s32(vuzp2q_s32(v20, *__p), v20).u64[0];
      v16.i64[1] = __PAIR64__(v23.u32[3], v22.u32[3]);
      *a3 = v13;
      a3[1] = v14;
      a3[2] = v15;
      a3[3] = v16;
    }

    goto LABEL_10;
  }

  if (a2 != 1)
  {
    operator new();
  }

  v7 = *a1;
  v8 = (*a1)[8].u8[8];
  if (v8 == 5 || (v8 & 0xFE) != 4)
  {
    sub_27153BE9C(a1, &v20, a5);
    v10 = v20;
    v11 = *__p;
    v12 = v23;
    a3[2] = v22;
    a3[3] = v12;
    *a3 = v10;
    a3[1] = v11;
LABEL_10:
    *a4 = 0;
    goto LABEL_16;
  }

  if (*(v7 + 128))
  {
    sub_2711308D4();
  }

  if (a3)
  {
    v18 = *v7;
    v17 = *(v7 + 16);
    v19 = *(v7 + 48);
    a3[2] = *(v7 + 32);
    a3[3] = v19;
    *a3 = v18;
    a3[1] = v17;
  }

  *a4 = v7;
LABEL_16:
  *(a4 + 120) = 1;
}

void sub_27136C054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136C07C(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int64x2_t *a4@<X8>, float64x2_t a5@<Q0>, float64x2_t a6@<Q5>)
{
  if (!a2)
  {
    if (a3)
    {
      sub_27153C318(a1, &v30, a5, a6);
      v16 = vzip1q_s64(v34, v36);
      *&v17 = vdupq_laneq_s64(v34, 1).u64[0];
      v18 = vzip2q_s64(v30, v32);
      *(&v17 + 1) = v36.i64[1];
      v19 = vzip1q_s64(*__p, v33);
      v20 = vzip1q_s64(v35, v37);
      v21 = vzip2q_s64(*__p, v33);
      *&v22 = vdupq_laneq_s64(v35, 1).u64[0];
      *(&v22 + 1) = v37.i64[1];
      *a3 = vzip1q_s64(v30, v32);
      *(a3 + 16) = v16;
      *(a3 + 32) = v18;
      *(a3 + 48) = v17;
      *(a3 + 64) = v19;
      *(a3 + 80) = v20;
      *(a3 + 96) = v21;
      *(a3 + 112) = v22;
    }

    goto LABEL_12;
  }

  if (a2 != 1)
  {
    operator new();
  }

  v8 = *a1;
  if (*(*a1 + 136) != 5)
  {
    sub_27153C318(a1, &v30, a5, a6);
    v23 = v30;
    v24 = *__p;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v37;
    *(a3 + 96) = v36;
    *(a3 + 112) = v29;
    *(a3 + 64) = v27;
    *(a3 + 80) = v28;
    *(a3 + 32) = v25;
    *(a3 + 48) = v26;
    *a3 = v23;
    *(a3 + 16) = v24;
LABEL_12:
    a4->i64[0] = 0;
    goto LABEL_13;
  }

  if (*(v8 + 128) != 1)
  {
    sub_2711308D4();
  }

  if (a3)
  {
    v10 = *v8;
    v9 = *(v8 + 16);
    v12 = *(v8 + 32);
    v11 = *(v8 + 48);
    v14 = *(v8 + 64);
    v13 = *(v8 + 80);
    v15 = *(v8 + 112);
    *(a3 + 96) = *(v8 + 96);
    *(a3 + 112) = v15;
    *(a3 + 64) = v14;
    *(a3 + 80) = v13;
    *(a3 + 32) = v12;
    *(a3 + 48) = v11;
    *a3 = v10;
    *(a3 + 16) = v9;
  }

  a4->i64[0] = v8;
LABEL_13:
  a4[7].i8[8] = 1;
}

void sub_27136C304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136C32C(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X0>, double a5@<D3>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      operator new();
    }

    if (a2)
    {
      sub_27153BE9C(a4, &v14, a5);
      v7 = v14;
      v8 = *__p;
      v9 = v17;
      v10 = v18;
      *(a2 + 8) = v15;
      *a2 = v7;
      *(a2 + 20) = DWORD2(v8);
      *(a2 + 32) = DWORD2(v9);
      *(a2 + 12) = v8;
      *(a2 + 24) = v9;
      *(a2 + 44) = DWORD2(v10);
      *(a2 + 36) = v10;
    }
  }

  else if (a2)
  {
    sub_27153BE9C(a4, &v14, a5);
    *&v11 = __PAIR64__(__p[0], v14.u32[0]);
    LODWORD(v12) = vdupq_lane_s32(v14, 1).u32[0];
    *(&v11 + 1) = __PAIR64__(v18, v17);
    DWORD1(v12) = HIDWORD(__p[0]);
    *(&v12 + 1) = __PAIR64__(DWORD1(v18), DWORD1(v17));
    *&v13 = __PAIR64__(__p[1], v15);
    *(&v13 + 1) = __PAIR64__(DWORD2(v18), DWORD2(v17));
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *a2 = v11;
  }

  *(a3 + 120) = 1;
}

void sub_27136C5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136C5CC(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X0>, float64x2_t a5@<Q0>, float64x2_t a6@<Q5>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      operator new();
    }

    if (a2)
    {
      sub_27153C318(a4, &v21, a5, a6);
      v8 = v21;
      v9 = v23;
      v10 = v24;
      v11 = v25;
      v12 = v26;
      v13 = v27;
      v14 = v28;
      *(a2 + 16) = __p;
      *a2 = v8;
      *(a2 + 40) = v10;
      *(a2 + 24) = v9;
      *(a2 + 64) = v12;
      *(a2 + 48) = v11;
      *(a2 + 88) = v14;
      *(a2 + 72) = v13;
    }
  }

  else if (a2)
  {
    sub_27153C318(a4, &v21, a5, a6);
    *&v16 = *(&v21 + 1);
    *&v15 = v21;
    *(&v15 + 1) = v23;
    *&v18 = *(&v25 + 1);
    *&v17 = v25;
    *&v19 = __p;
    *(&v17 + 1) = v27;
    *(&v16 + 1) = *(&v23 + 1);
    *&v20 = v26;
    *(&v18 + 1) = *(&v27 + 1);
    *(&v19 + 1) = v24;
    *(&v20 + 1) = v28;
    *(a2 + 64) = v19;
    *(a2 + 80) = v20;
    *(a2 + 32) = v16;
    *(a2 + 48) = v18;
    *a2 = v15;
    *(a2 + 16) = v17;
  }

  *(a3 + 120) = 1;
}

void sub_27136C83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27136C864(uint64_t a1)
{
  LOBYTE(v8) = 0;
  v9 = 0;
  v10 = 1;
  if ((atomic_load_explicit(&qword_28087B760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B760))
  {
    v7 = sub_27139B104(1);
    sub_27136FD58(v7);
    __cxa_atexit(sub_271233D2C, &qword_28087B780, &dword_27111A000);
    __cxa_guard_release(&qword_28087B760);
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  p_p = &__p;
  v17 = 0;
  if (qword_28087B788 != qword_28087B780)
  {
    if (((qword_28087B788 - qword_28087B780) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v14 = 1;
  v15 = 0;
  sub_27136CA7C(a1, &v8);
  if (v14 == 1)
  {
    v2 = __p;
    if (__p)
    {
      v3 = v12;
      v4 = __p;
      if (v12 != __p)
      {
        do
        {
          v5 = *(v3 - 1);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = __p;
      }

      v12 = v2;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_27136CA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2711B0820(va);
  _Unwind_Resume(a1);
}

void sub_27136CA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2711B5360(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27136CA7C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v2;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v3 = a2[2];
    v4 = a2[3];
    if (v4 != v3)
    {
      if (((v4 - v3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_271135560();
    }

    *(a1 + 40) = 1;
  }

  *(a1 + 48) = *(a2 + 12);
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_27136CB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2711B5360(&a9);
  sub_2711B08E0(v9);
  _Unwind_Resume(a1);
}

void sub_27136CBA0(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a1 + 12) = a2;
  if (a2 < 3)
  {
    *(a3 + 120) = 1;
    return;
  }

  v7 = a2;
  sub_2711D3B40("invalid VZServerSyncType ", &v7);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(10, v10, &v19);
  *a3 = v19;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v29 == 1)
  {
    *(a3 + 40) = 0;
    v4 = v22;
    if (v22 == 1)
    {
      *(a3 + 16) = v20;
      *(a3 + 32) = v21;
      v21 = 0;
      v20 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v5 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v28 & 1) == 0)
      {
LABEL_10:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v4)
        {
          goto LABEL_17;
        }

LABEL_15:
        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20);
        }

        goto LABEL_17;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v5 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v6 = v25;
    *(v5 + 16) = v24;
    *v5 = v23;
    v24 = 0;
    v23 = 0uLL;
    *(a3 + 72) = v6;
    *(a3 + 80) = v26;
    *(a3 + 96) = v27;
    v26 = 0uLL;
    v27 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_17:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_27136CDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_27136CDE4(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 56);
  if (*(a1 + 88) == 1)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        v10 = v9;
        (*(*v4 + 24))(v4, v9);
      }

      else
      {
        v10 = (*(*v4 + 16))(v4);
      }
    }

    else
    {
      v10 = 0;
    }

    if (v3 != v9)
    {
      v6 = v10;
      v7 = *(a1 + 80);
      if (v10 == v9)
      {
        if (v7 != v3)
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = *(a1 + 80);
          v8 = v10;
          *(a1 + 80) = v3;
          result = v8;
          if (v8 == v9)
          {
            return (*(*result + 32))(result);
          }

          goto LABEL_23;
        }

        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = 0;
        (*(**(a1 + 80) + 24))(*(a1 + 80), v9);
        (*(**(a1 + 80) + 32))(*(a1 + 80));
        *(a1 + 80) = 0;
        v10 = v9;
        (*(v11[0] + 24))(v11, v3);
        (*(v11[0] + 32))(v11);
        *(a1 + 80) = v3;
        result = v10;
        if (v10 != v9)
        {
LABEL_23:
          if (result)
          {
            return (*(*result + 40))(result);
          }

          return result;
        }

        return (*(*result + 32))(result);
      }

      if (v7 != v3)
      {
        v10 = *(a1 + 80);
        *(a1 + 80) = v6;
        result = v7;
        if (v7 == v9)
        {
          return (*(*result + 32))(result);
        }

        goto LABEL_23;
      }

      (*(*v7 + 24))(*(a1 + 80), v9);
      (*(**(a1 + 80) + 32))(*(a1 + 80));
      *(a1 + 80) = v10;
      v10 = v9;
    }

    result = v10;
    if (v10 != v9)
    {
      goto LABEL_23;
    }

    return (*(*result + 32))(result);
  }

  result = *(a2 + 24);
  if (result)
  {
    if (result == a2)
    {
      *(a1 + 80) = v3;
      result = (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 80) = result;
    }
  }

  else
  {
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 1;
  return result;
}

void sub_27136D1E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

_BYTE *sub_27136D1EC(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 96);
  if (*(a1 + 128) == 1)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        v10 = v9;
        (*(*v4 + 24))(v4, v9);
      }

      else
      {
        v10 = (*(*v4 + 16))(v4);
      }
    }

    else
    {
      v10 = 0;
    }

    if (v3 != v9)
    {
      v6 = v10;
      v7 = *(a1 + 120);
      if (v10 == v9)
      {
        if (v7 != v3)
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = *(a1 + 120);
          v8 = v10;
          *(a1 + 120) = v3;
          result = v8;
          if (v8 == v9)
          {
            return (*(*result + 32))(result);
          }

          goto LABEL_23;
        }

        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = 0;
        (*(**(a1 + 120) + 24))(*(a1 + 120), v9);
        (*(**(a1 + 120) + 32))(*(a1 + 120));
        *(a1 + 120) = 0;
        v10 = v9;
        (*(v11[0] + 24))(v11, v3);
        (*(v11[0] + 32))(v11);
        *(a1 + 120) = v3;
        result = v10;
        if (v10 != v9)
        {
LABEL_23:
          if (result)
          {
            return (*(*result + 40))(result);
          }

          return result;
        }

        return (*(*result + 32))(result);
      }

      if (v7 != v3)
      {
        v10 = *(a1 + 120);
        *(a1 + 120) = v6;
        result = v7;
        if (v7 == v9)
        {
          return (*(*result + 32))(result);
        }

        goto LABEL_23;
      }

      (*(*v7 + 24))(*(a1 + 120), v9);
      (*(**(a1 + 120) + 32))(*(a1 + 120));
      *(a1 + 120) = v10;
      v10 = v9;
    }

    result = v10;
    if (v10 != v9)
    {
      goto LABEL_23;
    }

    return (*(*result + 32))(result);
  }

  result = *(a2 + 24);
  if (result)
  {
    if (result == a2)
    {
      *(a1 + 120) = v3;
      result = (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 120) = result;
    }
  }

  else
  {
    *(a1 + 120) = 0;
  }

  *(a1 + 128) = 1;
  return result;
}

void sub_27136D5E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

void sub_27136D5F4(void *a1, unsigned __int16 *a2)
{
  v5 = a1;
  sub_271120E64(a1, "{", 1);
  v4[0] = a2;
  v4[1] = a2 + 28;
  v4[2] = a2 + 48;
  sub_271120E64(a1, "{", 1);
  v7[0] = 1;
  v8 = &v5;
  v9 = &v6;
  sub_271372F74(v4, v7);
}

void sub_27136D710(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 16) + 16))(v27);
  if (v36 == 1)
  {
    *(a2 + 120) = 1;
    return;
  }

  sub_2711D40C8(v27, &v6);
  v16 = v6;
  LOBYTE(__p) = 0;
  v26 = 0;
  if (v15 == 1)
  {
    sub_27112F6CC(&__p, &v7);
    v26 = 1;
    *a2 = v16;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v3 = v19;
    if (v19 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v18;
      v18 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
LABEL_7:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v3)
        {
          goto LABEL_14;
        }

LABEL_12:
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_14;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = v22;
    *(v4 + 16) = v21;
    *v4 = v20;
    v20 = 0uLL;
    *(a2 + 72) = v5;
    *(a2 + 80) = v23;
    *(a2 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

LABEL_14:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if ((v36 & 1) == 0 && v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27[2]);
    }
  }
}

void sub_27136D974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(v3 + 16);
  sub_27112D71C(va);
  sub_27112E024(v4 - 160);
  _Unwind_Resume(a1);
}

void sub_27136D9AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 16) + 24))(v27);
  if (v36 == 1)
  {
    *(a2 + 120) = 1;
    return;
  }

  sub_2711D40C8(v27, &v6);
  v16 = v6;
  LOBYTE(__p) = 0;
  v26 = 0;
  if (v15 == 1)
  {
    sub_27112F6CC(&__p, &v7);
    v26 = 1;
    *a2 = v16;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v3 = v19;
    if (v19 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v18;
      v18 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
LABEL_7:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v3)
        {
          goto LABEL_14;
        }

LABEL_12:
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_14;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = v22;
    *(v4 + 16) = v21;
    *v4 = v20;
    v20 = 0uLL;
    *(a2 + 72) = v5;
    *(a2 + 80) = v23;
    *(a2 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

LABEL_14:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if ((v36 & 1) == 0 && v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27[2]);
    }
  }
}

void sub_27136DC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(v3 + 16);
  sub_27112D71C(va);
  sub_27112E024(v4 - 160);
  _Unwind_Resume(a1);
}

void sub_27136DC48()
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  v3 = 0;
  v4 = 0;
  v7 = &unk_28810BD10;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v2 = &unk_28810C368;
  operator new();
}

void sub_27136E074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27136E0E4(void *a1, uint64_t *a2)
{
  v3 = sub_271120E64(a1, "SyncControl{server: ", 20);
  v9 = *a2;
  v13 = 0;
  sub_271136C48(&v15, v12, &v9);
  if (v13 == -1)
  {
    sub_2711308D4();
  }

  v15 = &v14;
  (off_2881310E8[v13])(__p, &v15, v12);
  if (v13 != -1)
  {
    (off_2881310B8[v13])(&v15, v12);
  }

  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_271120E64(v3, v4, v5);
  result = sub_271120E64(v6, "}", 1);
  if (v11 < 0)
  {
    v8 = result;
    operator delete(__p[0]);
    return v8;
  }

  return result;
}

void sub_27136E1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27136E210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136E22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27136E240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[0] = a2;
  v28[1] = a1;
  v28[2] = a3;
  LOBYTE(v63) = 0;
  v74 = 0;
  v62[0] = &unk_288116998;
  v62[1] = &v63;
  v62[2] = v28;
  sub_27184A384(v62, &v51);
  if (v61 != 1)
  {
    v40 = v51;
    LOBYTE(__p) = 0;
    v50 = 0;
    if (v60 == 1)
    {
      sub_27112F6CC(&__p, &v52);
      v50 = 1;
      v29 = v40;
      LOBYTE(v30) = 0;
      BYTE8(v31) = 0;
      if (v43 == 1)
      {
        v30 = __p;
        *&v31 = v42;
        v42 = 0;
        __p = 0uLL;
        BYTE8(v31) = 1;
        LOBYTE(v32) = 0;
        v37 = 0;
        if ((v49 & 1) == 0)
        {
LABEL_8:
          v38 = 1;
          v39 = 0;
          if (!v43)
          {
            goto LABEL_21;
          }

LABEL_19:
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v32) = 0;
        v37 = 0;
        if ((v49 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v33 = v45;
      v32 = v44;
      v44 = 0uLL;
      v34 = v46;
      v35 = v47;
      v36 = v48;
      v45 = 0;
      v47 = 0uLL;
      v48 = 0;
      v37 = 1;
      v38 = 1;
      v39 = 0;
      if (v43)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v29 = v51;
      LOBYTE(v30) = 0;
      v38 = 0;
      v39 = 0;
    }

LABEL_21:
    if ((v61 & 1) == 0 && v60 == 1)
    {
      if (v59 == 1)
      {
        if (v58 < 0)
        {
          operator delete(v57);
        }

        if (v56 < 0)
        {
          operator delete(v55);
        }
      }

      if (v54 == 1 && v53 < 0)
      {
        operator delete(v52);
      }
    }

    goto LABEL_31;
  }

  v39 = v73;
  if (v73 == 1)
  {
    v29 = v63;
    v63 = 0uLL;
    LOBYTE(v30) = 0;
    LOBYTE(v32) = 0;
    if (v66 != 1)
    {
      goto LABEL_31;
    }

    v5 = &v32;
    v6 = v64;
    v64 = 0uLL;
    v30 = v6;
    v31 = v65;
  }

  else
  {
    v29 = v63;
    LOBYTE(v30) = 0;
    v38 = 0;
    if (v72 != 1)
    {
      goto LABEL_31;
    }

    v5 = &v38;
    BYTE8(v31) = 0;
    if (BYTE8(v65) == 1)
    {
      v30 = v64;
      *&v31 = v65;
      *&v65 = 0;
      v64 = 0uLL;
      BYTE8(v31) = 1;
    }

    LOBYTE(v32) = 0;
    v37 = 0;
    if (v71 == 1)
    {
      v33 = v67;
      v32 = v66;
      v66 = 0uLL;
      v34 = v68;
      v35 = v69;
      v36 = v70;
      v67 = 0;
      v69 = 0uLL;
      v70 = 0;
      v37 = 1;
    }
  }

  *v5 = 1;
LABEL_31:
  if (v74 == 1)
  {
    sub_2711B5C44(&v63);
  }

  v7 = v39;
  if (v39)
  {
    goto LABEL_34;
  }

  if ((atomic_load_explicit(&qword_28087B768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B768))
  {
    v17 = std::generic_category();
    qword_28087B770 = 22;
    qword_28087B778 = v17;
    __cxa_guard_release(&qword_28087B768);
  }

  v7 = v39;
  if (v39 == 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  if (*(&v29 + 1) != qword_28087B778 || v29 != qword_28087B770)
  {
LABEL_34:
    *a4 = 0;
    *(a4 + 120) = v7;
    if (v7)
    {
      *a4 = v29;
      v29 = 0uLL;
      *(a4 + 16) = 0;
      *(a4 + 48) = 0;
      v8 = (a4 + 48);
      if (v32 != 1)
      {
        return sub_2711B5C44(&v29);
      }

      v9 = v30;
      v10 = v31;
      v30 = 0uLL;
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
    }

    else
    {
      v13 = v29;
      *(a4 + 16) = 0;
      *a4 = v13;
      *(a4 + 112) = 0;
      v8 = (a4 + 112);
      if (v38 != 1)
      {
        return sub_2711B5C44(&v29);
      }

      *(a4 + 40) = 0;
      if (BYTE8(v31) == 1)
      {
        *(a4 + 16) = v30;
        *(a4 + 32) = v31;
        *&v31 = 0;
        v30 = 0uLL;
        *(a4 + 40) = 1;
      }

      *(a4 + 48) = 0;
      *(a4 + 104) = 0;
      if (v37 == 1)
      {
        v14 = v34;
        *(a4 + 64) = v33;
        *(a4 + 48) = v32;
        v32 = 0uLL;
        *(a4 + 72) = v14;
        *(a4 + 80) = v35;
        *(a4 + 96) = v36;
        v33 = 0;
        v35 = 0uLL;
        v36 = 0;
        *(a4 + 104) = 1;
      }
    }

    *v8 = 1;
    return sub_2711B5C44(&v29);
  }

  LOBYTE(v19[0]) = 0;
  v27 = 0;
  if (v38 == 1)
  {
    sub_27112F6CC(v19, &v30);
    v27 = 1;
  }

  sub_27112D480(10, v19, &v63);
  *a4 = v63;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v72 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_59;
  }

  *(a4 + 40) = 0;
  v11 = BYTE8(v65);
  if (BYTE8(v65) != 1)
  {
    *(a4 + 48) = 0;
    v12 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v71 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_56:
    v15 = v68;
    *(v12 + 16) = v67;
    *v12 = v66;
    v66 = 0uLL;
    *(a4 + 72) = v15;
    *(a4 + 80) = v69;
    *(a4 + 96) = v70;
    v67 = 0;
    v69 = 0uLL;
    v70 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v11)
    {
      goto LABEL_59;
    }

LABEL_57:
    if (SBYTE7(v65) < 0)
    {
      operator delete(v64);
    }

    goto LABEL_59;
  }

  *(a4 + 16) = v64;
  *(a4 + 32) = v65;
  *&v65 = 0;
  v64 = 0uLL;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  v12 = a4 + 48;
  *(a4 + 104) = 0;
  if (v71)
  {
    goto LABEL_56;
  }

LABEL_46:
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (v11)
  {
    goto LABEL_57;
  }

LABEL_59:
  if (v27 == 1)
  {
    if (v26 == 1)
    {
      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }
    }

    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  return sub_2711B5C44(&v29);
}

void sub_27136E894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_27112D66C(&a9);
  sub_2711B5C44(&a25);
  _Unwind_Resume(a1);
}

void sub_27136E900(uint64_t *__return_ptr a1@<X8>, char *__s@<X2>, uint64_t *a3@<X0>, unsigned __int8 *a4@<X1>)
{
  v6 = *a3;
  if (__s)
  {
    v8 = strlen(__s);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v13 = v8;
    if (v8)
    {
      memcpy(&__dst, __s, v8);
    }

    *(&__dst + v9) = 0;
  }

  else
  {
    v13 = 0;
    LOBYTE(__dst) = 0;
  }

  v10 = sub_27152F1A4(*(v6 + 8), a4, &__dst);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(__dst);
    LOBYTE(v10) = v11;
    if ((v11 & 0x100) == 0)
    {
LABEL_12:
      sub_27136A984(a4, "client");
    }
  }

  else if ((v10 & 0x100) == 0)
  {
    goto LABEL_12;
  }

  *a1 = v10;
  *(a1 + 120) = 1;
}

void sub_27136EB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136EB44(uint64_t *__return_ptr a1@<X8>, char *__s@<X2>, uint64_t *a3@<X0>, unsigned __int8 *a4@<X1>)
{
  v6 = *a3;
  if (__s)
  {
    v8 = strlen(__s);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v13 = v8;
    if (v8)
    {
      memcpy(&__dst, __s, v8);
    }

    *(&__dst + v9) = 0;
  }

  else
  {
    v13 = 0;
    LOBYTE(__dst) = 0;
  }

  v10 = sub_27152F34C(*(v6 + 8), a4, &__dst);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(__dst);
    LOBYTE(v10) = v11;
    if ((v11 & 0x100) == 0)
    {
LABEL_12:
      sub_27136A984(a4, "client");
    }
  }

  else if ((v10 & 0x100) == 0)
  {
    goto LABEL_12;
  }

  *a1 = v10;
  *(a1 + 120) = 1;
}

void sub_27136ED6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136ED88(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_27152F514(*(*a1 + 8), a2, &v13);
  if (v16 != 1)
  {
    sub_27136A984(a2, "client");
  }

  v6 = v13;
  v5 = v14;
  v7 = v15;
  v11 = v14;
  v12 = v15;
  if (v15)
  {
    v13 = &v14;
    v14 = 0;
    v15 = 0;
    v10 = &v11;
    v11 = 0;
    v12 = 0;
    *(a3 + 8) = v5;
    *(v5 + 2) = a3 + 8;
    v8 = &v8 + 8;
    *&__p = 0;
    v5 = 0;
  }

  else
  {
    v10 = &v11;
    *(&v8 + 1) = v14;
    *&__p = 0;
    *&v8 = &v8 + 8;
    *(a3 + 8) = v14;
    v6 = (a3 + 8);
  }

  *(a3 + 16) = v7;
  *a3 = v6;
  *(a3 + 120) = 1;
  sub_271167834(&v8, v5);
  sub_271167834(&v10, v11);
  if (v16 == 1)
  {
    sub_271167834(&v13, v14);
  }
}

void sub_27136EF90(_Unwind_Exception *exception_object)
{
  if (*(v1 - 40))
  {
    sub_271167834(v1 - 64, *(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_27136EFB0(uint64_t **a3, uint64_t a4, char *__s)
{
  v4 = *a3;
  v5 = *(a4 + 16);
  if (v5)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  if (__s)
  {
    v8 = strlen(__s);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    BYTE7(__p) = v8;
    if (v8)
    {
      memcpy(&__dst, __s, v8);
    }

    *(&__dst + v9) = 0;
  }

  else
  {
    BYTE7(__p) = 0;
    LOBYTE(__dst) = 0;
  }

  sub_2715318B8(v4, v6, v5, &__dst);
}

void sub_27136F2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(v3 + 16);
  sub_27112D71C(va);
  sub_27112E024(v4 - 208);
  _Unwind_Resume(a1);
}

void sub_27136F2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136F30C(uint64_t **a3, uint64_t a4, char *__s)
{
  v4 = *a3;
  v5 = *(a4 + 16);
  if (v5)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  if (__s)
  {
    v8 = strlen(__s);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    BYTE7(__p) = v8;
    if (v8)
    {
      memcpy(&__dst, __s, v8);
    }

    *(&__dst + v9) = 0;
  }

  else
  {
    BYTE7(__p) = 0;
    LOBYTE(__dst) = 0;
  }

  sub_271531D98(v4, v6, v5, &__dst);
}

void sub_27136F620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(v3 + 16);
  sub_27112D71C(va);
  sub_27112E024(v4 - 208);
  _Unwind_Resume(a1);
}

void sub_27136F64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136F668(uint64_t *__return_ptr a1@<X8>, char *__s@<X2>, uint64_t **a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X3>)
{
  v5 = a5;
  if (a5 < 3)
  {
    v7 = *a3;
    v8 = *(a4 + 16);
    if (v8)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    if (__s)
    {
      v11 = strlen(__s);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      BYTE7(__p) = v11;
      if (v11)
      {
        memcpy(&__dst, __s, v11);
      }

      *(&__dst + v12) = 0;
    }

    else
    {
      BYTE7(__p) = 0;
      LOBYTE(__dst) = 0;
    }

    sub_271531EB4(v7, v9, v8, &__dst, v5);
  }

  sub_271239198(a5, &v18);
  *a1 = v18;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v28 != 1)
  {
    *(a1 + 120) = 0;
    return;
  }

  *(a1 + 40) = 0;
  v13 = v21;
  if (v21 == 1)
  {
    *(a1 + 1) = v19;
    a1[4] = v20;
    v20 = 0;
    v19 = 0uLL;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    v14 = a1 + 6;
    *(a1 + 104) = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    v15 = v24;
    v14[2] = v23;
    *v14 = v22;
    v22 = 0uLL;
    a1[9] = v15;
    *(a1 + 5) = v25;
    a1[12] = v26;
    v23 = 0;
    v25 = 0uLL;
    v26 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v13)
    {
      return;
    }

    goto LABEL_24;
  }

  *(a1 + 48) = 0;
  v14 = a1 + 6;
  *(a1 + 104) = 0;
  if (v27)
  {
    goto LABEL_17;
  }

LABEL_13:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (!v13)
  {
    return;
  }

LABEL_24:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }
}

void sub_27136FA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(v3 + 16);
  sub_27112D71C(va);
  sub_27112E024(v4 - 224);
  _Unwind_Resume(a1);
}

void sub_27136FAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136FACC(uint64_t **a1, uint64_t a2, const void ***x2_0)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  if (!v6)
  {
    a2 = 0;
  }

  sub_2715319D4(v5, a2, v6, x2_0);
}

void sub_27136FD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(v3 + 16);
  sub_27112D71C(va);
  sub_27112E024(v4 - 160);
  _Unwind_Resume(a1);
}

void *sub_27136FD58(void *result)
{
  qword_28087B780 = 0;
  qword_28087B788 = 0;
  qword_28087B790 = 0;
  v1 = result[1];
  if (v1 != *result)
  {
    if (((v1 - *result) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

uint64_t sub_27136FE24(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_27136FEBC(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void sub_27136FF6C(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v2 = *v1;
  LOBYTE(v34) = 0;
  v35 = 0;
  v36 = 1;
  if ((atomic_load_explicit(&qword_28087B760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B760))
  {
    v15 = sub_27139B104(1);
    sub_27136FD58(v15);
    __cxa_atexit(sub_271233D2C, &qword_28087B780, &dword_27111A000);
    __cxa_guard_release(&qword_28087B760);
  }

  __p = 0;
  v38 = 0;
  v39 = 0;
  if (qword_28087B788 != qword_28087B780)
  {
    if (((qword_28087B788 - qword_28087B780) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v40 = 1;
  v41 = 0;
  sub_27136CA7C(v42, &v34);
  if (v40 == 1)
  {
    v3 = __p;
    if (__p)
    {
      v4 = v38;
      v5 = __p;
      if (v38 != __p)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 2;
        }

        while (v4 != v3);
        v5 = __p;
      }

      v38 = v3;
      operator delete(v5);
    }
  }

  if (*(v2 + 136) == 1)
  {
    sub_2711B50EC(v53, v2);
  }

  else
  {
    *v53 = *v42;
    *&v53[5] = *&v42[5];
    LOBYTE(v54) = 0;
    v56 = 0;
    if (v45 == 1)
    {
      v54 = v43;
      v55 = v44;
      v44 = 0;
      v43 = 0uLL;
      v56 = 1;
    }

    v57 = v46;
    v58 = 0;
    v60 = 0;
    if (v49 == 1)
    {
      if (v48)
      {
        if (v48 == &v47)
        {
          v59 = &v58;
          (*(*v48 + 24))();
        }

        else
        {
          v59 = v48;
          v48 = 0;
        }
      }

      else
      {
        v59 = 0;
      }

      v60 = 1;
    }

    v61 = 0;
    v63 = 0;
    if (v52 == 1)
    {
      if (v51)
      {
        if (v51 == &v50)
        {
          v62 = &v61;
          (*(*v51 + 24))();
        }

        else
        {
          v62 = v51;
          v51 = 0;
        }
      }

      else
      {
        v62 = 0;
      }

      v63 = 1;
    }
  }

  LOBYTE(v16[0]) = 0;
  v17 = 0;
  if (v56 == 1)
  {
    memset(v16, 0, sizeof(v16));
    v34 = v16;
    v35 = 0;
    if (*(&v54 + 1) != v54)
    {
      if (((*(&v54 + 1) - v54) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_271135560();
    }

    v17 = 1;
  }

  v18 = v57;
  v7 = v1[1];
  if (*(v7 + 32))
  {
    v8 = *(v7 + 24);
    if (v8)
    {
      if (v8 == v7)
      {
        v38 = &v34;
        (*(*v8 + 24))(v8, &v34);
        v8 = v38;
        if (!v38)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v8 = (*(*v8 + 16))(v8);
        v38 = v8;
        if (!v8)
        {
          goto LABEL_49;
        }
      }

      if (v8 == &v34)
      {
        v31 = &v30;
        (*(*v8 + 24))(v8, &v30);
LABEL_50:
        operator new();
      }

      v8 = (*(*v8 + 16))(v8);
    }

    else
    {
      v38 = 0;
    }

LABEL_49:
    v31 = v8;
    goto LABEL_50;
  }

  v33[0] = 0;
  v33[32] = 0;
  v30 = 0;
  v32 = 0;
  v9 = *v1;
  if (*(*v1 + 136) != 1)
  {
    v28[0] = 0;
    v29 = 0;
    goto LABEL_69;
  }

  if (*(v9 + 88) == 1)
  {
    v10 = *(v9 + 80);
    if (v10)
    {
      if (v10 == (v9 + 56))
      {
        v38 = &v34;
        (*(*v10 + 24))(v10, &v34);
        v10 = v38;
        if (!v38)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v10 = (*(*v10 + 16))(v10);
        v38 = v10;
        if (!v10)
        {
          goto LABEL_62;
        }
      }

      if (v10 == &v34)
      {
        v26 = v25;
        (*(*v10 + 24))(v10, v25);
LABEL_63:
        operator new();
      }

      v10 = (*(*v10 + 16))(v10);
    }

    else
    {
      v38 = 0;
    }

LABEL_62:
    v26 = v10;
    goto LABEL_63;
  }

  v28[0] = 0;
  v29 = 0;
  if ((*(v9 + 128) & 1) == 0)
  {
LABEL_69:
    v25[0] = 0;
    v27 = 0;
    sub_271371FB4(&v34, v33, &v30, v28, v25);
    v12 = v1[2];
    if ((*(v12 + 32) & 1) == 0)
    {
      v22[0] = 0;
      v24 = 0;
      v19[0] = 0;
      v21 = 0;
      sub_27152F708();
    }

    v13 = *(v12 + 24);
    if (v13)
    {
      if (v13 != v12)
      {
        v14 = (*(*v13 + 16))(v13);
        v65 = v14;
        if (!v14)
        {
          goto LABEL_76;
        }

LABEL_78:
        if (v14 == &v64)
        {
          v20 = v19;
          (*(*v14 + 24))(v14, v19);
        }

        else
        {
          v20 = v14;
          v65 = 0;
        }

LABEL_81:
        v23 = 0;
        operator new();
      }

      v65 = &v64;
      (*(*v13 + 24))(v13, &v64);
      v14 = v65;
      if (v65)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v65 = 0;
    }

LABEL_76:
    v20 = 0;
    goto LABEL_81;
  }

  v11 = *(v9 + 120);
  if (v11)
  {
    if (v11 == (v9 + 96))
    {
      v38 = &v34;
      (*(*v11 + 24))(v11, &v34);
      v11 = v38;
      if (!v38)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v11 = (*(*v11 + 16))(v11);
      v38 = v11;
      if (!v11)
      {
        goto LABEL_86;
      }
    }

    if (v11 == &v34)
    {
      v23 = v22;
      (*(*v11 + 24))(v11, v22);
LABEL_87:
      operator new();
    }

    v11 = (*(*v11 + 16))(v11);
  }

  else
  {
    v38 = 0;
  }

LABEL_86:
  v23 = v11;
  goto LABEL_87;
}

void sub_2713714DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2713716E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137175C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *sub_2713717E8(void *a1)
{
  *a1 = &unk_2881088B8;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_271371894(void *a1)
{
  *a1 = &unk_2881088B8;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271371A3C(uint64_t result, void *a2)
{
  *a2 = &unk_2881088B8;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_271371B0C(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_271371B6C(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void sub_271371C1C(uint64_t a1, char *a2, uint64_t *a3)
{
  v17[0] = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 6);
  LOBYTE(v20) = 0;
  v22 = 0;
  if (a2[56] == 1)
  {
    if (a2[55] < 0)
    {
      sub_271127178(&v20, *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v20 = *(a2 + 2);
      v21 = *(a2 + 6);
    }

    v22 = 1;
  }

  LOBYTE(v23) = 0;
  v35 = 0;
  if (a2[208] == 1)
  {
    sub_2711B0ED4(&v23, a2 + 4);
    v35 = 1;
  }

  v36 = *(a2 + 216);
  v37 = *(a2 + 29);
  v6 = a3[1];
  v12 = *a3;
  v13 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a3[3];
  v7 = a3[4];
  v14 = off_28810C940;
  v15 = v8;
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    sub_27112AFFC();
  }

  (*(*v9 + 48))(v9, v17, &v12);
  v10 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v13;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v35 != 1)
    {
      goto LABEL_34;
    }

LABEL_19:
    if (v34 < 0)
    {
      operator delete(__p);
      if ((v32 & 0x80000000) == 0)
      {
LABEL_21:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }

LABEL_30:
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

LABEL_31:
    operator delete(v27);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_33:
      operator delete(v23);
      goto LABEL_34;
    }

LABEL_32:
    operator delete(v25);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (v35 == 1)
  {
    goto LABEL_19;
  }

LABEL_34:
  if (v22 == 1 && SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }
}

void sub_271371EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a25 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271371F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271396310(va);
  sub_2711B039C(v3 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_271371F3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2vl13visual_logger22ForwardReceivedMessageINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS1_10LogMessageEEEEEENS3_8optionalINS4_IFvS9_RKNS6_11ContextDataEEEEEERNSF_IT_EEEUlS9_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2vl13visual_logger22ForwardReceivedMessageINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS1_10LogMessageEEEEEENS3_8optionalINS4_IFvS9_RKNS6_11ContextDataEEEEEERNSF_IT_EEEUlS9_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2vl13visual_logger22ForwardReceivedMessageINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS1_10LogMessageEEEEEENS3_8optionalINS4_IFvS9_RKNS6_11ContextDataEEEEEERNSF_IT_EEEUlS9_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2vl13visual_logger22ForwardReceivedMessageINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS1_10LogMessageEEEEEENS3_8optionalINS4_IFvS9_RKNS6_11ContextDataEEEEEERNSF_IT_EEEUlS9_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271371FB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v5 = (a2 + 24);
    v6 = *(a2 + 24);
    if (v6)
    {
      if (v6 == a2)
      {
        *(result + 24) = result;
        v7 = result;
        v8 = a5;
        v9 = a4;
        v10 = a3;
        (*(**v5 + 24))(*v5, result);
        a3 = v10;
        a4 = v9;
        a5 = v8;
        result = v7;
        goto LABEL_8;
      }

      *(result + 24) = v6;
    }

    else
    {
      v5 = (result + 24);
    }

    *v5 = 0;
LABEL_8:
    *(result + 32) = 1;
  }

  *(result + 40) = 0;
  *(result + 72) = 0;
  if (*(a3 + 32) != 1)
  {
    goto LABEL_17;
  }

  v11 = (a3 + 24);
  v12 = *(a3 + 24);
  if (v12)
  {
    if (v12 == a3)
    {
      *(result + 64) = result + 40;
      v13 = result;
      v14 = a5;
      v15 = a4;
      (*(**v11 + 24))(*v11);
      a4 = v15;
      a5 = v14;
      result = v13;
      goto LABEL_16;
    }

    *(result + 64) = v12;
  }

  else
  {
    v11 = (result + 64);
  }

  *v11 = 0;
LABEL_16:
  *(result + 72) = 1;
LABEL_17:
  *(result + 80) = 0;
  *(result + 112) = 0;
  if (*(a4 + 32) != 1)
  {
    goto LABEL_25;
  }

  v16 = (a4 + 24);
  v17 = *(a4 + 24);
  if (v17)
  {
    if (v17 == a4)
    {
      *(result + 104) = result + 80;
      v18 = result;
      v19 = a5;
      (*(**v16 + 24))(*v16);
      a5 = v19;
      result = v18;
      goto LABEL_24;
    }

    *(result + 104) = v17;
  }

  else
  {
    v16 = (result + 104);
  }

  *v16 = 0;
LABEL_24:
  *(result + 112) = 1;
LABEL_25:
  *(result + 120) = 0;
  *(result + 152) = 0;
  if (*(a5 + 32) != 1)
  {
    return result;
  }

  v20 = (a5 + 24);
  v21 = *(a5 + 24);
  if (v21)
  {
    if (v21 == a5)
    {
      *(result + 144) = result + 120;
      v22 = result;
      (*(**v20 + 24))(*v20);
      result = v22;
      goto LABEL_32;
    }

    *(result + 144) = v21;
  }

  else
  {
    v20 = (result + 144);
  }

  *v20 = 0;
LABEL_32:
  *(result + 152) = 1;
  return result;
}

void *sub_271372218(void *a1)
{
  *a1 = &unk_288108910;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_2713722C4(void *a1)
{
  *a1 = &unk_288108910;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137246C(uint64_t result, void *a2)
{
  *a2 = &unk_288108910;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_27137253C(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_27137259C(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void sub_27137264C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_2711D40C8(a3, v3);
  v5 = 0;
  v7[0] = v4;
  v7[1] = "in client connection ";
  v7[2] = v4;
  v7[3] = "in client connection ";
  v7[4] = "in client connection ";
  __dst = v7;
  sub_2712B31F0(&__dst);
  operator new();
}

void sub_2713729F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_27112D71C(&a30);
    _Unwind_Resume(a1);
  }

  sub_27112D71C(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_271372AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2vl13visual_logger18ForwardServerErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalINS4_IFvRKNS_3kit3viz14ConnectionInfoES8_EEEEERNSB_IT_EEEUlSG_S8_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2vl13visual_logger18ForwardServerErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalINS4_IFvRKNS_3kit3viz14ConnectionInfoES8_EEEEERNSB_IT_EEEUlSG_S8_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2vl13visual_logger18ForwardServerErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalINS4_IFvRKNS_3kit3viz14ConnectionInfoES8_EEEEERNSB_IT_EEEUlSG_S8_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2vl13visual_logger18ForwardServerErrorINSt3__18functionIFvRKNS_3esn5ErrorEEEEEENS3_8optionalINS4_IFvRKNS_3kit3viz14ConnectionInfoES8_EEEEERNSB_IT_EEEUlSG_S8_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271372B20(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_271372BB8(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_271372C50(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 144);
    if (v2 == a1 + 120)
    {
      (*(*v2 + 32))(v2);
      if (*(a1 + 112) != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  v3 = *(a1 + 104);
  if (v3 == a1 + 80)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

LABEL_12:
  if (*(a1 + 72) != 1)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 64);
  if (v4 != a1 + 40)
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

LABEL_16:
    if (*(a1 + 32) == 1)
    {
      goto LABEL_17;
    }

    return a1;
  }

  (*(*v4 + 32))(v4);
  if (*(a1 + 32) != 1)
  {
    return a1;
  }

LABEL_17:
  v5 = *(a1 + 24);
  if (v5 != a1)
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    return a1;
  }

  (*(*v5 + 32))(v5);
  return a1;
}

uint64_t sub_271372E44(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_271372EDC(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void sub_271372F74(unsigned __int16 **a1, uint64_t a2)
{
  v3 = *a1;
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v4 = *(a2 + 8);
  v5[0] = v3;
  v5[1] = v3 + 6;
  v5[2] = v3 + 8;
  v5[3] = v3 + 24;
  sub_271120E64(*v4, "{", 1);
  v7[0] = 1;
  v8 = v4;
  v9 = &v6;
  sub_271373138(v5, v7);
}

void sub_271373138(unsigned __int16 **a1, uint64_t a2)
{
  v3 = *a1;
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v4 = *(a2 + 8);
  if (*(v3 + 8) == 1)
  {
    sub_271120E64(*v4, "{", 1);
    v6 = *v3;
    v5 = (v3 + 2);
    std::to_string(&__p, v6);
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

    sub_271120E64(*v4, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_271120E64(*v4, ",", 1);
    sub_2713737C0(&__p, v4, v5);
  }

  sub_271120E64(*v4, "nullopt", 7);
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  sub_271120E64(**(a2 + 8), "{", 1);
  operator new();
}

void sub_271373740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713739D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271373BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271373C58(void *a1)
{
  *a1 = &unk_288108808;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_271373D04(void *a1)
{
  *a1 = &unk_288108808;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271373EAC(uint64_t result, void *a2)
{
  *a2 = &unk_288108808;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_271373F7C(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_271373FDC(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void sub_27137408C(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  v7[0] = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  LOBYTE(__p) = 0;
  v12 = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      sub_271127178(&__p, *(a2 + 32), *(a2 + 40));
    }

    else
    {
      __p = *(a2 + 32);
      v11 = *(a2 + 48);
    }

    v12 = 1;
  }

  LOBYTE(v13) = 0;
  v25 = 0;
  if (*(a2 + 208) == 1)
  {
    sub_2711B0ED4(&v13, (a2 + 64));
    v25 = 1;
  }

  v26 = *(a2 + 216);
  v27 = *(a2 + 232);
  v28 = v5;
  v6 = *(a1 + 32);
  if (!v6)
  {
    sub_27112AFFC();
  }

  (*(*v6 + 48))(v6, v7, &v28);
  if (v25 != 1)
  {
    goto LABEL_16;
  }

  if (v24 < 0)
  {
    operator delete(v23);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_12:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v21);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    operator delete(v17);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      operator delete(v13);
      if (v12 != 1)
      {
        return;
      }

      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_22:
  operator delete(v19);
  if (v18 < 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_24:
  operator delete(v15);
  if (v14 < 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v12 != 1)
  {
    return;
  }

LABEL_17:
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_271374264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a20 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713742BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2vl13visual_logger30ForwardConnectionStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoENS6_16ConnectionStatusEEEEEENS3_8optionalISC_EERNSD_IT_EEEUlS9_SA_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2vl13visual_logger30ForwardConnectionStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoENS6_16ConnectionStatusEEEEEENS3_8optionalISC_EERNSD_IT_EEEUlS9_SA_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2vl13visual_logger30ForwardConnectionStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoENS6_16ConnectionStatusEEEEEENS3_8optionalISC_EERNSD_IT_EEEUlS9_SA_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2vl13visual_logger30ForwardConnectionStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoENS6_16ConnectionStatusEEEEEENS3_8optionalISC_EERNSD_IT_EEEUlS9_SA_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_271374334(void *a1)
{
  *a1 = &unk_288108860;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_2713743E0(void *a1)
{
  *a1 = &unk_288108860;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271374588(uint64_t result, void *a2)
{
  *a2 = &unk_288108860;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_271374658(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_2713746B8(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void sub_271374768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  LOBYTE(__p[0]) = 0;
  v12 = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      sub_271127178(__p, *(a2 + 32), *(a2 + 40));
    }

    else
    {
      *__p = *(a2 + 32);
      v11 = *(a2 + 48);
    }

    v12 = 1;
  }

  LOBYTE(v13) = 0;
  v25 = 0;
  if (*(a2 + 208) == 1)
  {
    sub_2711B0ED4(&v13, (a2 + 64));
    v25 = 1;
  }

  v26 = *(a2 + 216);
  v27 = *(a2 + 232);
  v6 = *(a1 + 32);
  if (!v6)
  {
    sub_27112AFFC();
  }

  (*(*v6 + 48))(v6, v7, a3);
  if (v25 != 1)
  {
    goto LABEL_16;
  }

  if (v24 < 0)
  {
    operator delete(v23);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_12:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v21);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    operator delete(v17);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      operator delete(v13);
      if (v12 != 1)
      {
        return;
      }

      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_22:
  operator delete(v19);
  if (v18 < 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_24:
  operator delete(v15);
  if (v14 < 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v12 != 1)
  {
    return;
  }

LABEL_17:
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_27137493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271374994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d2vl13visual_logger27ForwardContextStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS6_21UpdateEnabledContextsEEEEEENS3_8optionalISE_EERNSF_IT_EEEUlS9_SC_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d2vl13visual_logger27ForwardContextStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS6_21UpdateEnabledContextsEEEEEENS3_8optionalISE_EERNSF_IT_EEEUlS9_SC_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d2vl13visual_logger27ForwardContextStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS6_21UpdateEnabledContextsEEEEEENS3_8optionalISE_EERNSF_IT_EEEUlS9_SC_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d2vl13visual_logger27ForwardContextStatusChangedINSt3__18functionIFvRKNS_3kit3viz14ConnectionInfoERKNS6_21UpdateEnabledContextsEEEEEENS3_8optionalISE_EERNSF_IT_EEEUlS9_SC_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

unint64_t sub_271374A58(unint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087C368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087C368))
  {
    sub_271815770();
    v3 = qword_28087C350;
    sub_271815770();
    LODWORD(v4) = HIDWORD(qword_28087C350);
    *&qword_28087C360 = v3 / v4;
    __cxa_guard_release(&qword_28087C368);
  }

  return llround(*&qword_28087C360 * a1);
}

void sub_271374C1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  v6 = *v1;
  *v1 = 0;
  if (v6)
  {
    MEMORY[0x2743BF050](v6, v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_271374C7C(uint64_t a1, _OWORD **a2, char *__s, char *a4)
{
  if (__s)
  {
    v6 = strlen(__s);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v13 = v6;
    if (v6)
    {
      memcpy(&__dst, __s, v6);
    }

    *(&__dst + v7) = 0;
    v14 = 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v14 = 0;
    if (a4)
    {
LABEL_11:
      v8 = strlen(a4);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      v9 = v8;
      if (v8 >= 0x17)
      {
        operator new();
      }

      v11 = v8;
      if (v8)
      {
        memcpy(&v10, a4, v8);
      }

      *(&v10 + v9) = 0;
LABEL_18:
      operator new();
    }
  }

  LOBYTE(v10) = 0;
  goto LABEL_18;
}

void sub_271374EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271374EF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) == 1)
  {
    if (*(a2 + 16) == 1)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      if (*(a2 + 56) != 1)
      {
LABEL_14:
        v26 = v5;
        v27 = v6;
        sub_27113523C(&v28, (a2 + 32));
        v44 = &unk_288131188;
        v45 = &unk_2881311D0;
        sub_271374B08(&v46, a1);
      }
    }

    else
    {
      v44 = &unk_28810A440;
      v5 = sub_271815924();
      v6 = 2;
      if (*(a2 + 56) != 1)
      {
        goto LABEL_14;
      }
    }

    sub_2711DAE40((a2 + 32), 1000000000);
    goto LABEL_14;
  }

  LOBYTE(v14) = 0;
  LOBYTE(v15) = 0;
  LOBYTE(v16) = 0;
  v17 = 0;
  v18 = v14;
  v19 = v15;
  LOBYTE(v20) = 0;
  v21 = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  sub_27113523C(&v47, &v16);
  v26 = sub_271815924();
  v27 = 2;
  LOBYTE(v28) = 0;
  v30 = 0;
  if (v49 == 1)
  {
    v28 = v47;
    v29 = v48;
    v48 = 0;
    v47 = 0uLL;
    v30 = 1;
  }

  v31 = v50;
  v32 = v51;
  LOBYTE(v33) = 0;
  v35 = 0;
  if (v54 == 1)
  {
    v33 = v52;
    v34 = v53;
    v53 = 0;
    v52 = 0uLL;
    v35 = 1;
    LOBYTE(v36) = 0;
    v40 = 0;
    if (v57 != 1)
    {
LABEL_9:
      LOBYTE(v41) = 0;
      v43 = 0;
      if ((v60 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v36) = 0;
    v40 = 0;
    if (v57 != 1)
    {
      goto LABEL_9;
    }
  }

  _X0 = 0;
  _X1 = 0;
  v37 = v56;
  v36 = __p;
  v56 = 0;
  __p = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v38 = _X0;
  v39 = 0;
  v40 = 1;
  LOBYTE(v41) = 0;
  v43 = 0;
  if ((v60 & 1) == 0)
  {
LABEL_10:
    if (v57 != 1)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p);
    }

LABEL_20:
    if (v54 == 1 && SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if (v49 == 1 && SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    v44 = &unk_288131188;
    v45 = &unk_2881311D0;
    sub_271374B08(&v46, a1);
  }

LABEL_17:
  v41 = v58;
  v42 = v59;
  v59 = 0;
  v58 = 0uLL;
  v43 = 1;
  if (v57 != 1)
  {
    goto LABEL_20;
  }

  goto LABEL_18;
}

void sub_271375DD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271375FA0(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 440);
  v4 = *(a1 + 448);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = __dynamic_cast(v3, &unk_28811D1B0, &unk_28811DBE8, 0) != 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
LABEL_9:
    v6 = *(a1 + 440);
    v7 = *(a1 + 448);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v6;
    v13 = v7;
    if (v6)
    {
      sub_271374B08(&v14, v6 + 16);
    }

LABEL_15:
    v14 = *"cv3d.viz";
    v15 = 0x800000000000000;
    v16 = 11;
    sub_2711BE814(&v11, &v14, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(v8, *a1, *(a1 + 8));
    }

    else
    {
      *v8 = *a1;
      v9 = *(a1 + 16);
    }

    v10 = *(a1 + 24);
    operator new();
  }

LABEL_14:
  v12 = 0;
  v13 = 0;
  goto LABEL_15;
}

void sub_2713764C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void **a23)
{
  sub_2711BEA2C(&a23);
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  sub_27112F828(v23 - 144);
  _Unwind_Resume(a1);
}

uint64_t *sub_271376568(uint64_t *a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(a1[5]);
    if (*(a1 + 32) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

LABEL_7:
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

uint64_t sub_2713765F4(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

void sub_2713766C0(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2713767BC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808786F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808786F0))
    {
      sub_271377B54();
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(&xmmword_2808786D8, "{", __p, ",", v2 + 88, "}");
}

void sub_2713768BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713768D8(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 11;
}

uint64_t sub_271376954(uint64_t a1)
{
  *a1 = &unk_2881311D0;
  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_7:
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

uint64_t sub_2713769FC(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

void sub_271376AC8(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271376BB4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808786D0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808786D0))
    {
      sub_2713778C0();
    }
  }

  sub_271377374(qword_2808786B8, "{", a1 + 8, ",", a1 + 96, "}");
}

void sub_271376C68(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_271376C94(uint64_t a1)
{
  *a1 = &unk_2881311D0;
  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_7:
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271376D5C(char *a1, char *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_2881311F0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_27153D1BC((a1 + 8), result + 8);
    }
  }

  return result;
}

void sub_271376DFC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808786B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808786B0))
  {
    sub_2718519B4(qword_280878698, "cv3d::kit::viz::Transform3]", 0x1AuLL);
    __cxa_guard_release(&qword_2808786B0);
  }

  sub_271376EB0(qword_280878698, "{", a1 + 8, "}");
}

void sub_271376EB0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v7, *a1, *(a1 + 1));
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  v9 = 1;
  v10 = &v7;
  v11 = a2;
  v12[0] = &v7;
  v12[1] = a2;
  v12[2] = a2;
  sub_271136F58(v12, &v7);
  sub_27137705C(&v6, &v7, a3);
}

void sub_271376FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27137700C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713772A8(uint64_t a1)
{
  *a1 = &unk_288131188;
  sub_271134CBC(a1 + 112);
  *(a1 + 8) = &unk_2881311D0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

void sub_271377374(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14[0] = &v9;
  v14[1] = a2;
  v14[2] = a2;
  sub_271136F58(v14, &v9);
  sub_2713775A4(&v8, &v9, a3);
}

void sub_271377514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27137752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27137757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271377838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2808786B0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_271377994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271377B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271377B54()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_271377D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

__n128 sub_271377E40(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131188;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = &unk_2881311D0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v3;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(a1 + 80) = 1;
  }

  v5 = *(a2 + 96);
  *(a1 + 112) = 0;
  *(a1 + 96) = v5;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = 1;
  }

  result = *(a2 + 144);
  v8 = *(a2 + 160);
  *(a1 + 168) = 0;
  *(a1 + 160) = v8;
  *(a1 + 144) = result;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    result = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = result;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    *(a1 + 192) = 1;
    *(a1 + 208) = 0;
    v9 = (a1 + 208);
    *(a1 + 256) = 0;
    if (*(a2 + 256) != 1)
    {
LABEL_9:
      *(a1 + 272) = 0;
      *(a1 + 296) = 0;
      if (*(a2 + 296) != 1)
      {
        return result;
      }

LABEL_13:
      *(a1 + 272) = 0;
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      result = *(a2 + 272);
      *(a1 + 272) = result;
      *(a1 + 288) = *(a2 + 288);
      *(a2 + 272) = 0;
      *(a2 + 280) = 0;
      *(a2 + 288) = 0;
      *(a1 + 296) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 208) = 0;
    v9 = (a1 + 208);
    *(a1 + 256) = 0;
    if (*(a2 + 256) != 1)
    {
      goto LABEL_9;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 208);
  v9[1].n128_u64[0] = *(a2 + 224);
  *v9 = result;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 208) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 240) = _X2;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_27137803C(uint64_t a1)
{
  if (*a1)
  {
    v2 = ***a1;
    std::recursive_mutex::lock(v2);
    v3 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    std::recursive_mutex::unlock(v2);
  }

  v4 = *(a1 + 8);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_271378134(uint64_t *a1)
{
  sub_271379E78(*(*a1 + 88), (*a1 + 152));
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 96);
  sub_271124B40(v3);
  sub_271124FDC(v3, 6);
  sub_271125930(v3, v8);
  v7 = v2;
  sub_27137A798(&v7, v8);
  sub_27137A6F8(v12);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v8[0]);
LABEL_3:
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 104);
  sub_271124B40(v5);
  sub_271124FDC(v5, 6);
  sub_271125930(v5, v8);
  v7 = v4;
  sub_27137A798(&v7, v8);
  sub_27137A6F8(v12);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v8[0]);
LABEL_5:
  sub_271379E78(*(*a1 + 88), (*a1 + 152));
  sub_271124FDC(*(*a1 + 88), *(*a1 + 136));
  sub_271124FDC(*(*a1 + 96), *(*a1 + 140));
  v6 = *a1;
  if (*(*a1 + 148) == 1)
  {
    sub_271124FDC(*(v6 + 104), *(v6 + 144));
  }

  else
  {
    sub_271125528(*(v6 + 104));
  }
}

void sub_2713782C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271121DBC(va);
  _Unwind_Resume(a1);
}

void sub_2713782D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271121DBC(va);
  _Unwind_Resume(a1);
}

void sub_2713782EC(uint64_t *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_28087B7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B7B8))
  {
    sub_27137A818();
  }

  v2 = xmmword_28087B7A8;
  if (*(&xmmword_28087B7A8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_28087B7A8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  std::recursive_mutex::lock(v2);
  if (*(&v2 + 1) && !atomic_fetch_add((*(&v2 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v2 + 1) + 16))(*(&v2 + 1));
    std::__shared_weak_count::__release_weak(*(&v2 + 1));
    v3 = qword_28087B7A0;
    if (!qword_28087B7A0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = qword_28087B7A0;
    if (!qword_28087B7A0)
    {
      goto LABEL_11;
    }
  }

  v4 = std::__shared_weak_count::lock(v3);
  v7 = v4;
  if (!v4 || (v6 = qword_28087B798) == 0)
  {
LABEL_11:
    operator new();
  }

  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v5 = qword_28087B7A0;
  qword_28087B798 = v6;
  qword_28087B7A0 = v7;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    a1[1] = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    *a1 = v6;
    a1[1] = 0;
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  std::recursive_mutex::unlock(v2);
}

void sub_27137948C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::recursive_mutex *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  __cxa_guard_abort(&qword_28087C1B0);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_271379638(v34);
  sub_271379638(v33);
  sub_27112F828(v32);
  sub_271379638(&a32);
  sub_271379638(v35 - 176);
  MEMORY[0x2743BF050](v32, 0x1060C406F83F42DLL);
  sub_271379638(&a24);
  sub_271379638(&a28);
  MEMORY[0x2743BF050](a14, 0x20C4093837F09);
  sub_27112F828(&a15);
  std::recursive_mutex::unlock(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_271379638(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_2713796C4(std::recursive_mutex ***a1, int a2)
{
  v4 = **a1;
  std::recursive_mutex::lock(v4);
  sub_271124BE8((*a1)[11], &__p);
  v5 = *a1;
  v7 = (*a1)[22];
  v6 = (*a1)[23];
  v8 = __p;
  if (v6 - v7 != v18 - __p)
  {
    goto LABEL_7;
  }

  if (v7 != v6)
  {
    while (v7->__m_.__sig == *v8)
    {
      v7 = (v7 + 16);
      v8 += 2;
      if (v7 == v6)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Log/src/APILogging.cpp", 425, "priv().initialized_root_appenders_ == current_root_appenders", 0x3CuLL, "root appenders have been illegally modified between Initialize() and Enable() of APILogging", 0x5BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_14;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_28;
      }
    }

    do
    {
      (*v9)(*(v9 + 8), "priv().initialized_root_appenders_ == current_root_appenders", 60, "root appenders have been illegally modified between Initialize() and Enable() of APILogging", 91);
      v9 += 16;
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_14:
      qword_28087C420(*algn_28087C428, "priv().initialized_root_appenders_ == current_root_appenders", 60, "root appenders have been illegally modified between Initialize() and Enable() of APILogging", 91);
      v5 = *a1;
      if (*(*a1 + 28) != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_28:
    abort();
  }

LABEL_5:
  if (*(v5 + 28) == 2)
  {
LABEL_15:
    sub_2713799AC(a1);
    v5 = *a1;
  }

LABEL_16:
  v19 = v5[12];
  v11 = v5[5];
  if (!v11)
  {
    sub_27112AFFC();
  }

  (*(v11->__m_.__sig + 48))(v11, &v19);
  sub_271124FDC((*a1)[12], a2);
  v12 = *a1;
  *(v12 + 30) = a2;
  *(v12 + 124) = 1;
  *(*a1 + 28) = 2;
  v13 = __p;
  if (__p)
  {
    v14 = v18;
    v15 = __p;
    if (v18 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = __p;
    }

    v18 = v13;
    operator delete(v15);
  }

  std::recursive_mutex::unlock(v4);
}

void sub_27137998C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_271347F18(&a9);
  std::recursive_mutex::unlock(v9);
  _Unwind_Resume(a1);
}

void sub_2713799AC(std::recursive_mutex ***a1)
{
  v2 = **a1;
  std::recursive_mutex::lock(v2);
  v3 = (*a1)[10];
  v4 = (*a1)[12];
  sub_271124B40(v4);
  sub_271124FDC(v4, 6);
  sub_271125930(&v4->__m_.__sig, v7);
  v6 = v3;
  sub_27137A798(&v6, v7);
  sub_27137A6F8(&v11);
  if ((v10 & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(v7[0]);
    v5 = *a1;
    if (*(*a1 + 124) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(__p);
  if (v8 < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *a1;
  if (*(*a1 + 124) == 1)
  {
LABEL_4:
    *(v5 + 124) = 0;
  }

LABEL_5:
  *(v5 + 28) = 1;
  std::recursive_mutex::unlock(v2);
}

void sub_271379A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271121DBC(va);
  std::recursive_mutex::unlock(v5);
  _Unwind_Resume(a1);
}

void sub_271379AC4(std::recursive_mutex ***a1)
{
  v2 = **a1;
  std::recursive_mutex::lock(v2);
  sub_271124BE8((*a1)[11], &__p);
  v3 = *a1;
  v5 = (*a1)[22];
  v4 = (*a1)[23];
  v6 = __p;
  if (v4 - v5 != v14 - __p)
  {
    goto LABEL_7;
  }

  if (v5 != v4)
  {
    while (v5->__m_.__sig == *v6)
    {
      v5 = (v5 + 16);
      v6 += 2;
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Log/src/APILogging.cpp", 443, "priv().initialized_root_appenders_ == current_root_appenders", 0x3CuLL, "root appenders have been illegally modified between Initialize() and EnableInternal() of APILogging", 0x63uLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_14;
      }

      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      (*v7)(*(v7 + 8), "priv().initialized_root_appenders_ == current_root_appenders", 60, "root appenders have been illegally modified between Initialize() and EnableInternal() of APILogging", 99);
      v7 += 16;
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
LABEL_14:
      qword_28087C420(*algn_28087C428, "priv().initialized_root_appenders_ == current_root_appenders", 60, "root appenders have been illegally modified between Initialize() and EnableInternal() of APILogging", 99);
      v3 = *a1;
      if (*(*a1 + 29) != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_26:
    abort();
  }

LABEL_5:
  if (*(v3 + 29) == 2)
  {
LABEL_15:
    sub_271379D60(a1);
    v3 = *a1;
  }

LABEL_16:
  *(v3 + 32) = **&v3[13]->__m_.__opaque[40];
  *(v3 + 132) = 1;
  *(*a1 + 29) = 2;
  v9 = __p;
  if (__p)
  {
    v10 = v14;
    v11 = __p;
    if (v14 != __p)
    {
      do
      {
        v12 = *(v10 - 1);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 -= 16;
      }

      while (v10 != v9);
      v11 = __p;
    }

    v14 = v9;
    operator delete(v11);
  }

  std::recursive_mutex::unlock(v2);
}

void sub_271379D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271347F18(va);
  std::recursive_mutex::unlock(v3);
  _Unwind_Resume(a1);
}

void sub_271379D60(std::recursive_mutex ***a1)
{
  v2 = **a1;
  std::recursive_mutex::lock(v2);
  v3 = (*a1)[10];
  v4 = (*a1)[13];
  sub_271124B40(v4);
  sub_271124FDC(v4, 6);
  sub_271125930(&v4->__m_.__sig, v7);
  v6 = v3;
  sub_27137A798(&v6, v7);
  sub_27137A6F8(&v11);
  if ((v10 & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(v7[0]);
    v5 = *a1;
    if (*(*a1 + 132) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(__p);
  if (v8 < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *a1;
  if (*(*a1 + 132) == 1)
  {
LABEL_4:
    *(v5 + 132) = 0;
  }

LABEL_5:
  *(v5 + 29) = 1;
  std::recursive_mutex::unlock(v2);
}

void sub_271379E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271121DBC(va);
  std::recursive_mutex::unlock(v5);
  _Unwind_Resume(a1);
}

void sub_271379E78(void *a1, std::__shared_weak_count ***a2)
{
  sub_271124B40(a1);
  v4 = *a2;
  if (*a2 != a2[1])
  {
    v5 = v4[1];
    v6[0] = *v4;
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271124498(a1, v6);
  }

  sub_271124FDC(a1, 6);
}

uint64_t sub_271379F64(std::recursive_mutex ***a1, uint64_t a2, uint64_t a3)
{
  v6 = **a1;
  std::recursive_mutex::lock(v6);
  v7 = *a1;
  if (*(*a1 + 28) != 2)
  {
    goto LABEL_35;
  }

  v34 = a3;
  v35 = v7[10];
  v8 = v7[12];
  v9 = v8->__m_.__opaque[23];
  v10 = *&v8->__m_.__opaque[8];
  if ((v9 & 0x80u) == 0)
  {
    v11 = v8->__m_.__opaque[23];
  }

  else
  {
    v11 = *&v8->__m_.__opaque[8];
  }

  v12 = *(a2 + 23);
  v13 = *a2;
  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  opaque = v8->__m_.__opaque;
  if (v11 == v14)
  {
    if ((v9 & 0x80u) == 0)
    {
      v16 = v8->__m_.__opaque;
    }

    else
    {
      v16 = *opaque;
    }

    if (v12 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (!memcmp(v16, v17, v11))
    {
      goto LABEL_45;
    }

    v18 = v8->__m_.__opaque;
    v19 = v9;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    v18 = *opaque;
    v19 = v10;
    if (v14 >= v10)
    {
      v21 = v10;
    }

    else
    {
      v21 = v14;
    }

    if (v14 < v21)
    {
      v21 = v14;
    }

    if (v21 != v10)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v12 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  v18 = v8->__m_.__opaque;
  v19 = v8->__m_.__opaque[23];
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (v14 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v14;
  }

  if (v14 < v20)
  {
    v20 = v14;
  }

  if (v20 != v19)
  {
    goto LABEL_35;
  }

LABEL_34:
  if (!memcmp(v17, v18, v19))
  {
    if ((v9 & 0x80) != 0)
    {
      if (v14 <= v10)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = v9;
      if (v14 <= v9)
      {
        goto LABEL_35;
      }
    }

    if (v12 >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = v13;
    }

    if (*(v24 + v10) != 46)
    {
      goto LABEL_35;
    }

LABEL_45:
    v36 = v35;
    v25 = sub_271122514(&v36, a2);
    if ((v34 & 0x100000000) != 0)
    {
      sub_271124FDC(v25, v34);
    }

    else
    {
      v26 = v8->__m_.__opaque[23];
      if (v26 >= 0)
      {
        v27 = v8->__m_.__opaque[23];
      }

      else
      {
        v27 = *&v8->__m_.__opaque[8];
      }

      v28 = *(a2 + 23);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(a2 + 8);
      }

      if (v27 == v28)
      {
        v30 = v26 >= 0 ? v8->__m_.__opaque : *opaque;
        v31 = v29 >= 0 ? a2 : *a2;
        v32 = v25;
        v33 = memcmp(v30, v31, v27);
        v25 = v32;
        if (!v33)
        {
          goto LABEL_35;
        }
      }

      sub_271125528(v25);
    }

    v22 = 1;
    goto LABEL_36;
  }

LABEL_35:
  v22 = 0;
LABEL_36:
  std::recursive_mutex::unlock(v6);
  return v22;
}

uint64_t sub_27137A184(std::recursive_mutex ***a1, std::__shared_weak_count **a2)
{
  v4 = **a1;
  std::recursive_mutex::lock(v4);
  if (*(*a1 + 28) == 2)
  {
    v5 = (*a1)[12];
    v6 = a2[1];
    v8[0] = *a2;
    v8[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271124498(v5, v8);
  }

  std::recursive_mutex::unlock(v4);
  return 0;
}

void sub_27137A25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::recursive_mutex::unlock(v9);
  _Unwind_Resume(a1);
}

void sub_27137A278(std::recursive_mutex ***a1@<X0>, void *a2@<X8>)
{
  v4 = **a1;
  std::recursive_mutex::lock(v4);
  if (*(*a1 + 28) == 2)
  {
    sub_271124BE8((*a1)[12], &__p);
    v5 = __p;
    v6 = v11;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v12 = a2;
    v13 = 0;
    if (v6 != v5)
    {
      if (((v6 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_271135560();
    }

    if (v5)
    {
      v7 = v11;
      v8 = v5;
      if (v11 != v5)
      {
        do
        {
          v9 = *(v7 - 1);
          if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v7 -= 16;
        }

        while (v7 != v5);
        v8 = __p;
      }

      v11 = v5;
      operator delete(v8);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  std::recursive_mutex::unlock(v4);
}

void sub_27137A408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, char *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2711B5360(va1);
  sub_271347F18(va);
  std::recursive_mutex::unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_27137A42C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_27137A480(v2);
    MEMORY[0x2743BF050](v4, 0x1060C406F83F42DLL);
    return v3;
  }

  return v1;
}

uint64_t sub_27137A480(uint64_t a1)
{
  std::mutex::~mutex((a1 + 216));
  v2 = *(a1 + 208);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    v4 = *(a1 + 184);
    v5 = *(a1 + 176);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 8);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v3);
      v5 = *(a1 + 176);
    }

    *(a1 + 184) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 8);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v8 -= 16;
      }

      while (v8 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  v11 = *(a1 + 72);
  if (v11 == a1 + 48)
  {
    (*(*v11 + 32))(v11);
    v12 = *(a1 + 40);
    if (v12 != a1 + 16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    v12 = *(a1 + 40);
    if (v12 != a1 + 16)
    {
LABEL_25:
      if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      v13 = *(a1 + 8);
      if (!v13)
      {
        return a1;
      }

      goto LABEL_31;
    }
  }

  (*(*v12 + 32))(v12);
  v13 = *(a1 + 8);
  if (!v13)
  {
    return a1;
  }

LABEL_31:
  if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  return a1;
}

void ***sub_27137A6F8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      sub_27137A6F8(v3 - 3);
      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
        v5 = v3 - 10;
        if (*(v3 - 57) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 10;
        if (*(v3 - 57) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

void sub_27137A798(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  for (i = *(a2 + 64); v2 != i; v2 += 10)
  {
    v6 = *a1;
    sub_27137A798(&v6, v2);
    v6 = *a1;
    v5 = sub_271125D80(&v6, v2);
    sub_271125528(v5);
    sub_271124B40(v5);
  }
}

void sub_27137A880(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27137A8B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27137A938(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137AA0C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288108E38;
  *(a2 + 8) = *(result + 8);
  return result;
}

void sub_27137AA3C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(a1 + 8) - 1 <= 1)
  {
    sub_2713782EC(&v7);
    v3 = *v7;
    std::mutex::lock((*v7 + 216));
    v9 = 0;
    v10 = 0;
    v4 = *(v3 + 208);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      v10 = v5;
      if (v5)
      {
        v6 = *(v3 + 200);
        v9 = v6;
        if (v6)
        {
          v8[0] = v6;
          v8[1] = v5;
          std::mutex::unlock((v3 + 216));
          sub_271124498(v2, v8);
        }
      }
    }

    operator new();
  }

  operator new();
}

void sub_27137ACFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v15);
  sub_27112F828(va);
  std::mutex::unlock((v13 + 216));
  sub_27137803C(&a9);
  _Unwind_Resume(a1);
}

void sub_27137AD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27137803C(&a9);
  _Unwind_Resume(a1);
}

void sub_27137AD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27137AD6C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_27137AD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn4elog10APILogging20DefaultSetupFunctionE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn4elog10APILogging20DefaultSetupFunctionE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn4elog10APILogging20DefaultSetupFunctionE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn4elog10APILogging20DefaultSetupFunctionE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27137AE84(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288108DE0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_27137AEB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn4elog10APILogging28DefaultInternalSetupFunctionE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn4elog10APILogging28DefaultInternalSetupFunctionE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn4elog10APILogging28DefaultInternalSetupFunctionE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn4elog10APILogging28DefaultInternalSetupFunctionE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27137AF34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137AF6C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    sub_271378134(*(result + 24));
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      v3 = sub_27137A480(v2);
      MEMORY[0x2743BF050](v3, 0x1060C406F83F42DLL);
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27137AFF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4cv3d3esn4elog10APILoggingEE27__shared_ptr_default_deleteIS4_S4_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4cv3d3esn4elog10APILoggingEE27__shared_ptr_default_deleteIS4_S4_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4cv3d3esn4elog10APILoggingEE27__shared_ptr_default_deleteIS4_S4_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4cv3d3esn4elog10APILoggingEE27__shared_ptr_default_deleteIS4_S4_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_27137B050(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_271378134(v2);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      v4 = sub_27137A480(v3);
      MEMORY[0x2743BF050](v4, 0x1060C406F83F42DLL);
    }

    MEMORY[0x2743BF050](v2, 0x20C4093837F09);
  }

  return a1;
}

void sub_27137B0C8(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_28087C1B0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087C1B0))
  {
    *a1 = qword_28087C1A8;
  }

  else
  {
    sub_271120C4C(&qword_28087C1A8);
    __cxa_guard_release(&qword_28087C1B0);
    *a1 = qword_28087C1A8;
  }
}

uint64_t sub_27137B15C()
{
  if ((atomic_load_explicit(&qword_28087C1C0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087C1C0))
  {
    return qword_28087C1B8;
  }

  sub_27137B0C8(&v3);
  sub_27112B400(__p, "cv3d");
  qword_28087C1B8 = sub_271125D80(&v3, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_guard_release(&qword_28087C1C0);
  return qword_28087C1B8;
}

void sub_27137B200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_28087C1C0);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_28087C1C0);
  _Unwind_Resume(a1);
}

uint64_t sub_27137B258()
{
  if ((atomic_load_explicit(&qword_28087C1D0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087C1D0))
  {
    return qword_28087C1C8;
  }

  sub_27137B0C8(&v3);
  sub_27112B400(__p, "cv3dapi");
  qword_28087C1C8 = sub_271125D80(&v3, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_guard_release(&qword_28087C1D0);
  return qword_28087C1C8;
}

void sub_27137B2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_28087C1D0);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_28087C1D0);
  _Unwind_Resume(a1);
}

void sub_27137B354(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

void *sub_27137B3EC(void *result)
{
  v1 = result[1];
  *result = &unk_288116B20;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881166A0;
    v3 = v1[1];
    if (v3)
    {
      v1[1] = 0;
      (*(*v3 + 8))(v3);
      v4 = v1[1];
      v1[1] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    MEMORY[0x2743BF050](v1, 0xA1C40BD48D6D6);
    return v2;
  }

  return result;
}

void *sub_27137B4C8(void *result)
{
  v1 = result[1];
  *result = &unk_288116B20;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881166A0;
    v3 = v1[1];
    if (v3)
    {
      v1[1] = 0;
      (*(*v3 + 8))(v3);
      v4 = v1[1];
      v1[1] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    MEMORY[0x2743BF050](v1, 0xA1C40BD48D6D6);
    return v2;
  }

  return result;
}

void sub_27137B5A4(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_288116B20;
  a1[1] = 0;
  if (v1)
  {
    *v1 = &unk_2881166A0;
    v2 = v1[1];
    if (v2)
    {
      v1[1] = 0;
      (*(*v2 + 8))(v2);
      v3 = v1[1];
      v1[1] = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }
    }

    MEMORY[0x2743BF050](v1, 0xA1C40BD48D6D6);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27137B6A0(void *a1)
{
  *a1 = &unk_2881166A0;
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void sub_27137B740(void *a1)
{
  *a1 = &unk_2881166A0;
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

void sub_27137B8C8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137B920()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137B9A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}